var fictionColData = [
	'<span style="color:#CC9393;">"ID"</span> : [\n  <span style="color:#8CCFD2;">1</span> , <span style="color:#8CCFD2;">2</span> , <span style="color:#8CCFD2;">3</span>\n]',
	'<span style="color:#CC9393;">"Name"</span> : [\n  <span style="color:#CC9393;">"Rafiki"</span> , <span style="color:#CC9393;">"Curious George"</span> , <span style="color:#CC9393;">"King Kong"</span>\n]',
	'<span style="color:#CC9393;">"Species"</span> : [\n  <span style="color:#CC9393;">"mandrill"</span> , <span style="color:#CC9393;">"chimpanzee"</span> , <span style="color:#CC9393;">"gorilla"</span>\n]'
];
var fictionRowData = [
	'+-----------+-----------+\n| Attribute | Type      |\n+-----------+-----------+\n| ID        | <span style="color:#8CCFD2;">integer</span>   |\n| Name      | <span style="color:#CC9393;">character</span> |\n| Species   | <span style="color:#CC9393;">character</span> |\n+-----------+-----------+',
	'{\n  <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">1</span> ,\n  <span style="color:#CC9393;">"Name"</span> : <span style="color:#CC9393;">"Rafiki"</span> ,\n  <span style="color:#CC9393;">"Species"</span> : <span style="color:#CC9393;">"mandrill"</span>\n}',
	'{\n  <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">2</span> ,\n  <span style="color:#CC9393;">"Name"</span> : <span style="color:#CC9393;">"Curious George"</span> ,\n  <span style="color:#CC9393;">"Species"</span> : <span style="color:#CC9393;">"chimpanzee"</span>\n}',
	'{\n  <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">3</span> ,\n  <span style="color:#CC9393;">"Name"</span> : <span style="color:#CC9393;">"King Kong"</span> ,\n  <span style="color:#CC9393;">"Species"</span> : <span style="color:#CC9393;">"gorilla"</span>\n}'
]

function fictionCol(n,on) {
	var fictionColumns = document.getElementsByClassName('fictionCol' + n);
	var arrayView = document.getElementById('array-view');
	var arrayCode = document.getElementById('array-code');
	for (i=0; i<fictionColumns.length; i++) {
		if (on) {
			fictionColumns[i].style.backgroundColor = 'orange';
			arrayView.style.display = 'block';
			arrayCode.innerHTML = fictionColData[n-1];
		} else {
			fictionColumns[i].style.backgroundColor = null;
			arrayView.style.display = 'none';
			arrayCode.innerHTML = '';
		}
	}
}
function fictionRow(n,on) {
	var fictionRows = document.getElementsByClassName('fictionRow' + n);
	var arrayView = document.getElementById('array-view');
	var arrayCode = document.getElementById('array-code');
	if (on) {
		if (n) {
			fictionRows[0].style.backgroundColor = 'lime';
		} else {
			fictionRows[0].style.backgroundColor = 'yellow ';
		}
		arrayView.style.display = 'block';
		arrayCode.innerHTML = fictionRowData[n];
	} else {
		fictionRows[0].style.backgroundColor = null;
		arrayView.style.display = 'none';
		arrayCode.innerHTML = '';
	}
}

function jsonCol(n,on) {
	var columns = document.getElementsByClassName('col' + n);
	var objects = document.getElementsByClassName('json-col' + n);
	for (i=0; i<columns.length; i++) {
		if (on) {
			columns[i].style.backgroundColor = '#9BBCE1';
			columns[i].style.color = '#FFFFFF';
		} else {
			columns[i].style.backgroundColor = null;
			columns[i].style.color = null;
			
		}
	}
	for (i=0; i<objects.length; i++) {
		if (on) {
			objects[i].style.backgroundColor = '#4B70A2';
		} else {
			objects[i].style.backgroundColor = null;
		}
	}
}
function jsonRow(n,on) {
	var rows = document.getElementsByClassName('table-row' + n);
	var objects = document.getElementsByClassName('json-row' + n);
	if (on) {
		if (n) {
			for (i=0; i<rows.length; i++) {
				rows[i].style.backgroundColor = '#9BBCE1';
				rows[i].style.color = '#FFFFFF';
			}
			for (i=0; i<objects.length; i++) {
				objects[i].style.backgroundColor = '#4B70A2';
			}
		} else {
			for (i=0; i<rows.length; i++) {
				rows[i].style.backgroundColor = '#9BBCE1';
			}
		}
	} else {
		for (i=0; i<rows.length; i++) {
			rows[i].style.backgroundColor = null;
			rows[i].style.color = null;
		}
		for (i=0; i<objects.length; i++) {
			objects[i].style.backgroundColor = null;
		}
	}
}

var uris = [{
	"Subject" : "http://example.org/Rafiki",
	"Predicate" : "http://purl.org/dc/terms/type",
	"Object" : "http://rs.tdwg.org/dwc/terms/Organism"
},{
	"Subject" : "http://example.org/Rafiki",
	"Predicate" : "http://rs.tdwg.org/dwc/terms/organismID",
	"Object" : "&quot;1&quot;"
},{
	"Subject" : "http://example.org/Rafiki",
	"Predicate" : "http://rs.tdwg.org/dwc/terms/organismName",
	"Object" : "&quot;Rafiki&quot;"
},{
	"Subject" : "http://example.org/Rafiki",
	"Predicate" : "http://example.org/hasTaxon",
	"Object" : "http://example.org/Mandrill"
},{
	"Subject" : "http://example.org/Mandrill",
	"Predicate" : "http://purl.org/dc/terms/type",
	"Object" : "http://rs.tdwg.org/dwc/terms/Taxon"
},{
	"Subject" : "http://example.org/Mandrill",
	"Predicate" : "http://rs.tdwg.org/dwc/terms/vernacularName",
	"Object" : "&quot;mandrill&quot;"
}]

function tripleInfo(id,what,which) {
	cell = document.getElementById('triple'+id+which);
	display = document.getElementById('tripleDisplay');
	if (what) {
		cell.style.backgroundColor = '#9BBCE1';
		display.innerHTML = uris[which][id];
	} else {
		cell.style.backgroundColor = null;
		display.innerHTML = '&nbsp;';
	}
}

function skipToClass(frame,id) {
	var frames = {
		'ethocore-frame' : 'sites/ethocore/ethocore.html',
		'dwc-frame' : 'sites/darwincore/quickreference.html'
	}

	window.frames[frame].location.hash = id;
}

