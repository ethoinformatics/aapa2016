var check_specimens = true;
var check_taxa = true;
var check_join = true;

function sql() {
	var sql_input = document.getElementById('sql-input');
	if (check_specimens && sql_input.value.match(/select \* from specimens/gi)) {
		var specimens = document.getElementById('specimens');
		specimens.style.border = '4px solid #ffff00';
		/*
		var nickname = document.getElementsByClassName('nickname');
		for (i=0; i<nickname.length; i++) nickname[i].style.backgroundColor = '#00ffff';
		*/
		check_specimens = false;
	}
	if (check_taxa && (sql_input.value.match(/select \* from specimens join taxa/gi) || sql_input.value.match(/select \* from specimens left join taxa/gi))) {
		var taxa = document.getElementById('taxa');
		taxa.style.border = '4px solid #00ff00';
		/*
		var scientific_name = document.getElementsByClassName('scientific_name');
		for (i=0; i<scientific_name.length; i++) scientific_name[i].style.backgroundColor = '#00ff00';
		*/
		check_specimens = false;
	}
	if (check_join && (sql_input.value.match(/select \* from specimens join taxa using \(taxon_id\)/gi) || sql_input.value.match(/select \* from specimens left join taxa using \(taxon_id\)/gi))) {
		var id_one = document.getElementsByClassName('id_one');
		for (i=0; i<id_one.length; i++) id_one[i].style.backgroundColor = '#00ffff';
		var id_two = document.getElementsByClassName('id_two');
		for (i=0; i<id_two.length; i++) id_two[i].style.backgroundColor = '#ff00ff';
		var taxon_id = document.getElementsByClassName('taxon_id');
		/*
		for (i=0; i<taxon_id.length; i++) taxon_id[i].style.backgroundColor = '#fbb03b';
		check_join = false;
		*/
	}
}

function join() {
	var container = document.getElementById('join-container');
	container.style.display = 'none';
	var results = document.getElementById('join-results');
	results.style.display = 'block';
}

function enter(event) {
	if (event.keyCode == 13) {
		var sql_input = document.getElementById('sql-input');
		if ((sql_input.value.match(/select \* from specimens join taxa using \(taxon_id\)/gi) || sql_input.value.match(/select \* from specimens left join taxa using \(taxon_id\)/gi))) {
			join();
		}
	}
}
