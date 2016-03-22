var namespaces = {
	'BodyWeight':'morpho:',
	'BodyHeight':'morpho:',
	'BodyLength':'morpho:',
	'ChestCircumference':'morpho:',
	'WaistCircumference':'morpho:',
	'ArmCircumference':'morpho:',
	'ThighCircumference':'morpho:',
	'TrunkLength':'morpho:',
	'ArmLength':'morpho:',
	'ForearmLength':'morpho:',
	'ThighLength':'morpho:',
	'LegLength':'morpho:',
	'ForelimbLength':'morpho:',
	'HindlimbLength':'morpho:',
	'TailLength':'morpho:',
	'HandLength':'morpho:',
	'PalmLength':'morpho:',
	'FootLength':'morpho:',
	'SoleLength':'morpho:',
	'HeadCircumference':'morpho:',
	'CranialBreadth':'morpho:',
	'CranialLength':'morpho:',
	'CranialHeight':'morpho:',
	'NippleLength':'morpho:',
	'TesticularLength':'morpho:',
	'TesticularBreadth':'morpho:',
	'TesticularVolume':'morpho:'
}

function nav(id) {
	for (i=1;i<=4;i++) {
		var page = document.getElementById('page' + i);
		if (i===id) {
			page.style.display = 'block';
			if (id > 1) {
				var nav = document.getElementById('nav' + id);
				nav.style.backgroundColor = '#666666';
			}
		} else {
			page.style.display = 'none';
			var nav = document.getElementById('nav' + i);
			nav.style.backgroundColor = null;
		}
	}
}

function filter() {
	var input = document.getElementById('filter-input');
	if (input.value !== '')  {
		var filters = document.getElementById('filters');
		if (filters.innerHTML === '') {
			filters.innerHTML = '<p style="cursor:pointer; margin:0em;" onclick="remove()">' + namespaces[input.value] + input.value + '&nbsp;<img src="images/x.png" style="height:1em;"/></p>';
		} else {
			filters.innerHTML += '<p style="cursor:pointer; margin:0em;" onclick="remove()">' + namespaces[input.value] + input.value + '&nbsp;<img src="images/x.png" style="height:1em;"/></p>';
		}
	}
	input.value = '';
}

function enter(event) {
	if (event.keyCode == 13) {
		filter();
	}
}

function toggle() {
	var command = document.getElementById('show-hide');
	var fieldset = document.getElementById('search-form');
	if (command.innerHTML === '[Hide search]') {
		command.innerHTML ='[Show search]';
		fieldset.style.display = 'none';
	} else if (command.innerHTML === '[Show search]') {
		command.innerHTML = '[Hide search]';
		fieldset.style.display = 'block';
	}
}

function submit() {
	var search = document.getElementById('toggle-search');
	search.style.display = 'block';
	toggle();
	var results = document.getElementById('results-display');
	results.style.display = 'block';
}

function merge() {
	var publishers = document.getElementById('publishers');
	var records = document.getElementById('records');
	publishers.style.display = 'none';
	records.style.display = 'block';
}

function visualize() {
	var visualization = document.getElementById('results-visualization');
	var title = document.getElementById('results-title');
	var records = document.getElementById('merged-records');
	var level = document.getElementById('visualize-by');
	for (i=0; i<level.childNodes.length ; i++) {
		if (level.childNodes[i].selected == true) {
			var which = level.childNodes[i].value
		}
	}
	records.style.display = 'none';
	title.innerHTML = 'Body weight by ' + which + ' (mean)';
	visualization.style.display = 'block';

	if (which == 'species') {
		var data = {
		  labels: ['Papio hamadryas','Papio anubis', 'Papio cynocephalus','Papio kindae', 'Papio ursinus', 'Lagothrix poeppigii', 'Ateles belzebuth', 'Pithecia aequatorialis', 'Callicebus discolor'],
		  series: [
			[17.2, 15.6, 16.4, 12.1, 19.5, 9.2, 8.8, 4.6, 3.1]
		  ]
		};
	} else if (which == 'genus') {
		var data = {
		  labels: ['Papio', 'Lagothrix', 'Ateles', 'Pithecia', 'Callicebus'],
		  series: [
			[17.4, 9.2, 8.8, 4.6, 3.1]
		  ]
		};
	}

	var options = {
	  width: 960,
	  height: 320,
	  high: 30,
	  low: 0,
	  axisX: {
		labelInterpolationFnc: function(value, index) {
		  return index % 1 === 0 ? value : null;
		}
	  }
	};

	new Chartist.Bar('.ct-chart', data, options);
}
























