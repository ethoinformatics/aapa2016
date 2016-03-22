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
	var filters = document.getElementById('filters');
	if (filters.innerHTML === '') {
		filters.innerHTML = '<p style="cursor:pointer; margin:0em;" onclick="remove()">' + namespaces[input.value] + input.value + '&nbsp;<img src="images/x.png" style="height:1em;"/></p>';
	} else {
		filters.innerHTML += '<p style="cursor:pointer; margin:0em;" onclick="remove()">' + namespaces[input.value] + input.value + '&nbsp;<img src="images/x.png" style="height:1em;"/></p>';
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