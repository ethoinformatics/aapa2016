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
	for (i=1;i<=5;i++) {
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
	var submit = document.getElementById('submit');
	if (input.value !== '')  {
		var filters = document.getElementById('filters');
		if (filters.innerHTML === '') {
			filters.innerHTML = '<p style="cursor:pointer; margin:0em;" onclick="remove(); rm();">' + namespaces[input.value] + input.value + '&nbsp;<img src="images/x.png" style="height:1em;"/></p>';
		} else {
			filters.innerHTML += '<p style="cursor:pointer; margin:0em;" onclick="remove(); rm();">' + namespaces[input.value] + input.value + '&nbsp;<img src="images/x.png" style="height:1em;"/></p>';
		}
		submit.disabled = null;
	}
	input.value = '';
}

function enter(event) {
	if (event.keyCode == 13) {
		filter();
	}
}

function rm() {
	var filters = document.getElementById('filters');
	var submit = document.getElementById('submit');
	if (filters.innerHTML === '')  {
		submit.disabled = true;
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
	var sublevel = document.getElementById('visualize-and');
	var download_options = document.getElementById('download-options');

	download_options.innerHTML = '<a class="fake">SVG</a> &middot; <a class="fake">PNG</a> &middot; <a class="fake">GIF</a> &middot; <a class="fake">JPEG</a> &middot; <a class="fake">TIFF</a> &middot; <a class="fake">EPS</a> &middot; <a class="fake">PDF</a>';

	for (i=0; i<level.childNodes.length ; i++) {
		if (level.childNodes[i].selected == true) {
			var which = level.childNodes[i].value
		}
	}
	for (i=0; i<sublevel.childNodes.length ; i++) {
		if (sublevel.childNodes[i].selected == true) {
			var andwhich = sublevel.childNodes[i].value
		}
	}
	records.style.display = 'none';
	title.innerHTML = 'Body weight by ' + which;
	if (andwhich) title.innerHTML += ' and ' + andwhich;
	title.innerHTML += ' (mean)';
	visualization.style.display = 'block';

	if (which == 'species') {
		if (andwhich === '') {
			var data = {
			  labels: ['Papio hamadryas','Papio anubis', 'Papio cynocephalus','Papio kindae', 'Papio ursinus', 'Lagothrix poeppigii', 'Ateles belzebuth', 'Pithecia aequatorialis', 'Callicebus discolor'],
			  series: [
				[17.2, 15.6, 16.4, 12.1, 19.5, 7.7, 8.8, 1.6, 0.9]
			  ]
			};
		} else if (andwhich === 'sex') {
			var data = {
			  labels: ['Papio hamadryas','Papio anubis', 'Papio cynocephalus','Papio kindae', 'Papio ursinus', 'Lagothrix poeppigii', 'Ateles belzebuth', 'Pithecia aequatorialis', 'Callicebus discolor'],
			  series: [
				[20.2, 19.0, 20.8, 15.4, 23.1, 8.5, 10.1, 1.8, 1.1],
				[15.2, 14.5, 15.4, 11.1, 16.3, 6.6, 8.1, 1.3, 0.85]
			  ]
			};
		} else if (andwhich === 'life stage') {
			var data = {
			  labels: ['Papio hamadryas','Papio anubis', 'Papio cynocephalus','Papio kindae', 'Papio ursinus', 'Lagothrix poeppigii', 'Ateles belzebuth', 'Pithecia aequatorialis', 'Callicebus discolor'],
			  series: [
				[17.5, 15.8, 16.4, 12.6, 20.4, 7.8, 9.2, 1.6, 0.9],
				[11.5, 11.1, 10, 9.0, 12.0, 5.1, 5.4, null, null],
				[6.6, 6.6, null, 5.9, null, null, null, null, null],
				[1.4, 1.3, null, 1.0, null, null, null, null, null]
			  ]
			};
		}
	} else if (which == 'genus') {
		if (andwhich === '') {
			var data = {
			  labels: ['Papio', 'Lagothrix', 'Ateles', 'Pithecia', 'Callicebus'],
			  series: [
				[17.4, 7.7, 8.8, 1.6, 0.9]
			  ]
			};
		} else if (andwhich === 'sex') {
			var data = {
			  labels: ['Papio', 'Lagothrix', 'Ateles', 'Pithecia', 'Callicebus'],
			  series: [
				[21.3, 8.5, 9.1, 1.8, 0.95],
				[14.4, 6.9, 8.1, 1.3, 0.85]
			  ]
			};
		} else if (andwhich === 'life stage') {
			var data = {
			  labels: ['Papio', 'Lagothrix', 'Ateles', 'Pithecia', 'Callicebus'],
			  series: [
				[17.6, 7.8, 9.2, 1.6, 0.9],
				[11.0, 5.1, 5.4, null, null],
				[6.3 , null, null, null, null],
				[1.2 , null, null, null, null]
			  ]
			};
		}
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

function file() {
	var display = document.getElementById('file-display');
	display.innerHTML = 'grooming_data.csv';
	var upload = document.getElementById('upload');
	upload.disabled = null;
}

function upload() {
	var upload = document.getElementById('upload-data');
	upload.style.display = 'none';
	var data = document.getElementById('my-data');
	data.style.display = 'block';
}






















