function reveal_sources(id,what) {
	var cells = document.getElementsByClassName("sources"+id);
	if (what) {
		for (i=0; i<cells.length; i++) cells[i].style.backgroundColor = '#9BBCE1';
	} else {
		for (i=0; i<cells.length; i++) cells[i].style.backgroundColor = null;
	}
}

function reveal_providers(id,what) {
	var cells = document.getElementsByClassName("providers"+id);
	if (what) {
		for (i=0; i<cells.length; i++) cells[i].style.backgroundColor = '#4B70A2';
	} else {
		for (i=0; i<cells.length; i++) cells[i].style.backgroundColor = null;
	}
}