function jsoncol(n,on) {
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
function jsonrow(n,on) {
	var row = document.getElementById('table-row' + n);
	var object = document.getElementById('json-row' + n);
	if (on) {
		if (n) {
			row.style.backgroundColor = '#9BBCE1';
			row.style.color = '#FFFFFF';
			object.style.backgroundColor = '#4B70A2';
		} else {
			row.style.backgroundColor = '#9BBCE1 ';
		}
	} else {
		row.style.backgroundColor = null;
		row.style.color = null;
		object.style.backgroundColor = null;
	}
}