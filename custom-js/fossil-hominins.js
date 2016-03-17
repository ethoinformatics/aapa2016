var columndata = [
	'ID = [\n  <span style="color:#8CCFD2;">1</span> , <span style="color:#8CCFD2;">2</span> , <span style="color:#8CCFD2;">3</span> , <span style="color:#8CCFD2;">4</span> , <span style="color:#8CCFD2;">5</span>\n]',
	'Nickname = [\n  <span style="color:#CC9393;">"Lucy"</span> , <span style="color:#CC9393;">"Taung Child"</span> , <span style="color:#CC9393;">"Zinj"</span> , <span style="color:#CC9393;">"Nariokotome Boy"</span> , <span style="color:#CC9393;">"The Old Man"</span>\n]',
	'ScientificName = [\n  <span style="color:#CC9393;">"Australopithecus afarensis"</span> , <span style="color:#CC9393;">"Australopithecus africanus"</span> ,\n  <span style="color:#CC9393;">"Paranthropus boisei"</span> , <span style="color:#CC9393;">"Homo ergaster"</span> , <span style="color:#CC9393;">"Homo neanderthalensis"</span>\n]'
];
var rowdata = [
	'+----------------+-----------+\n| Attribute      | Type      |\n+----------------+-----------+\n| ID             | <span style="color:#8CCFD2;">integer</span>   |\n| Nickname       | <span style="color:#CC9393;">character</span> |\n| ScientificName | <span style="color:#CC9393;">character</span> |\n+----------------+-----------+',
	'{\n  <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">1</span> ,\n  <span style="color:#CC9393;">"Nickname"</span> : <span style="color:#CC9393;">"Lucy"</span> ,\n  <span style="color:#CC9393;">"ScientificName"</span> : <span style="color:#CC9393;">"Australopithecus afarensis"</span>\n}',
	'{\n  <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">2</span> ,\n  <span style="color:#CC9393;">"Nickname"</span> : <span style="color:#CC9393;">"Taung Child"</span> ,\n  <span style="color:#CC9393;">"ScientificName"</span> : <span style="color:#CC9393;">"Australopithecus africanus"</span>\n}',
	'{\n  <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">3</span> ,\n  <span style="color:#CC9393;">"Nickname"</span> : <span style="color:#CC9393;">"Zinj"</span> ,\n  <span style="color:#CC9393;">"ScientificName"</span> : <span style="color:#CC9393;">"Paranthropus boisei"</span>\n}',
	'{\n  <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">4</span> ,\n  <span style="color:#CC9393;">"Nickname"</span> : <span style="color:#CC9393;">"Nariokotome Boy"</span> ,\n  <span style="color:#CC9393;">"ScientificName"</span> : <span style="color:#CC9393;">"Homo ergaster"</span>\n}',
	'{\n  <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">5</span> ,\n  <span style="color:#CC9393;">"Nickname"</span> : <span style="color:#CC9393;">"The Old Man"</span> ,\n  <span style="color:#CC9393;">"ScientificName"</span> : <span style="color:#CC9393;">"Homo neanderthalensis"</span>\n}',
]
function col(n,on) {
	var columns = document.getElementsByClassName('col' + n);
	var arrayView = document.getElementById('array-view');
	var arrayCode = document.getElementById('array-code');
	for (i=0; i<columns.length; i++) {
		if (on) {
			columns[i].style.backgroundColor = 'orange';
			arrayView.style.display = 'block';
			arrayCode.innerHTML = columndata[n-1];
		} else {
			columns[i].style.backgroundColor = null;
			arrayView.style.display = 'none';
			arrayCode.innerHTML = '';
		}
	}
}
function row(n,on) {
	var rows = document.getElementsByClassName('row' + n);
	var arrayView = document.getElementById('array-view');
	var arrayCode = document.getElementById('array-code');
	if (on) {
		if (n) {
			rows[0].style.backgroundColor = 'lime';
		} else {
			rows[0].style.backgroundColor = 'yellow ';
		}
		arrayView.style.display = 'block';
		arrayCode.innerHTML = rowdata[n];
	} else {
		rows[0].style.backgroundColor = null;
		arrayView.style.display = 'none';
		arrayCode.innerHTML = '';
	}
}