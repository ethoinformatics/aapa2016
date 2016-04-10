var columndata = [
	'ID = [\n  <span style="color:#8CCFD2;">1</span> , <span style="color:#8CCFD2;">2</span> , <span style="color:#8CCFD2;">3</span> , <span style="color:#8CCFD2;">4</span> , <span style="color:#8CCFD2;">5</span> , <span style="color:#8CCFD2;">6</span>\n]',
	'CommonName = [\n  <span style="color:#CC9393;">"African elephant"</span> , <span style="color:#CC9393;">"Plains zebra"</span> , <span style="color:#CC9393;">"White rhinoceros"</span> , <span style="color:#CC9393;">"Bushpig"</span> ,\n  <span style="color:#CC9393;">"Hippopotamus"</span> , <span style="color:#CC9393;">"Bush hyrax"</span>\n]',
	'ScientificName = [\n  <span style="color:#CC9393;">"Loxodonta africana"</span> , <span style="color:#CC9393;">"Equus quagga"</span> , <span style="color:#CC9393;">"Ceratotherium simum"</span> ,\n  <span style="color:#CC9393;">"Potamochoerus larvatus"</span> , <span style="color:#CC9393;">"Hippopotamus amphibius"</span> ,\n  <span style="color:#CC9393;">"Heterohyrax brucei"</span>\n]',
	'Order = [\n  <span style="color:#CC9393;">"Proboscidea"</span> , <span style="color:#CC9393;">"Perissodactyla"</span> , <span style="color:#CC9393;">"Perissodactyla"</span> , <span style="color:#CC9393;">"Artiodactyla"</span> ,\n  <span style="color:#CC9393;">"Artiodactyla"</span> , <span style="color:#CC9393;">"Hyracoidea"</span>\n]'
];
var rowdata = [
	'+----------------+-----------+\n| Attribute      | Type      |\n+----------------+-----------+\n| ID             | <span style="color:#8CCFD2;">integer</span>   |\n| CommonName     | <span style="color:#CC9393;">character</span> |\n| ScientificName | <span style="color:#CC9393;">character</span> |\n| Order          | <span style="color:#CC9393;">character</span> |\n+----------------+-----------+',
	'{\n              <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">1</span> ,\n      <span style="color:#CC9393;">"CommonName"</span> : <span style="color:#CC9393;">"African elephant"</span> ,\n  <span style="color:#CC9393;">"ScientificName"</span> : <span style="color:#CC9393;">"Loxodonta africana"</span> ,\n           <span style="color:#CC9393;">"Order"</span> : <span style="color:#CC9393;">"Proboscidea"</span>\n}',
	'{\n              <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">2</span> ,\n      <span style="color:#CC9393;">"CommonName"</span> : <span style="color:#CC9393;">"Plains zebra"</span> ,\n  <span style="color:#CC9393;">"ScientificName"</span> : <span style="color:#CC9393;">"Equus quagga"</span> ,\n           <span style="color:#CC9393;">"Order"</span> : <span style="color:#CC9393;">"Perissodactyla"</span>\n}',
	'{\n              <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">3</span> ,\n      <span style="color:#CC9393;">"CommonName"</span> : <span style="color:#CC9393;">"White rhinoceros"</span> ,\n  <span style="color:#CC9393;">"ScientificName"</span> : <span style="color:#CC9393;">"Ceratotherium simum"</span> ,\n           <span style="color:#CC9393;">"Order"</span> : <span style="color:#CC9393;">"Perissodactyla"</span>\n}',
	'{\n              <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">4</span> ,\n      <span style="color:#CC9393;">"CommonName"</span> : <span style="color:#CC9393;">"Bushpig"</span> ,\n  <span style="color:#CC9393;">"ScientificName"</span> : <span style="color:#CC9393;">"Potamochoerus larvatus"</span> ,\n           <span style="color:#CC9393;">"Order"</span> : <span style="color:#CC9393;">"Artiodactyla"</span>\n}',
	'{\n              <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">5</span> ,\n      <span style="color:#CC9393;">"CommonName"</span> : <span style="color:#CC9393;">"Hippopotamus"</span> ,\n  <span style="color:#CC9393;">"ScientificName"</span> : <span style="color:#CC9393;">"Hippopotamus amphibius"</span> ,\n           <span style="color:#CC9393;">"Order"</span> : <span style="color:#CC9393;">"Artiodactyla"</span>\n}',
	'{\n              <span style="color:#CC9393;">"ID"</span> : <span style="color:#8CCFD2;">6</span> ,\n      <span style="color:#CC9393;">"CommonName"</span> : <span style="color:#CC9393;">"Bush hyrax"</span> ,\n  <span style="color:#CC9393;">"ScientificName"</span> : <span style="color:#CC9393;">"Heterohyrax brucei"</span> ,\n           <span style="color:#CC9393;">"Order"</span> : <span style="color:#CC9393;">"Hyracoidea"</span>\n}'
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


/*

					<!--
					<section>
						<script type="text/javascript" src="custom-js/pachyderms.js"></script>
						<h2>African pachyderms <span onmouseover="row(0,1)" onmouseout="row(0,0)">🐘</span></h2>
						<table id="afro-pachyderms" class="example-table">
							<tr class="row0"><th class="col1" onmouseover="col(1,1)" onmouseout="col(1,0)">ID</th><th class="col2" onmouseover="col(2,1)" onmouseout="col(2,0)">CommonName</th><th class="col3" onmouseover="col(3,1)" onmouseout="col(3,0)">ScientificName</th><th class="col4" onmouseover="col(4,1)" onmouseout="col(4,0)">Order</th></tr>
							<tr class="row1"><td class="col1" onmouseover="row(1,1)" onmouseout="row(1,0)">1</td><td class="col2">African elephant</td><td class="col3"><span class="scientific-name">Loxodonta africana</span></td><td class="col4">Proboscidea</td></tr>
							<tr class="row2"><td class="col1" onmouseover="row(2,1)" onmouseout="row(2,0)">2</td><td class="col2">Plains zebra</td><td class="col3"><span class="scientific-name">Equus quagga</span></td><td class="col4">Perissodactyla</td></tr>
							<tr class="row3"><td class="col1" onmouseover="row(3,1)" onmouseout="row(3,0)">3</td><td class="col2">White rhinoceros</td><td class="col3"><span class="scientific-name">Ceratotherium simum</span></td><td class="col4">Perissodactyla</td></tr>
							<tr class="row4"><td class="col1" onmouseover="row(4,1)" onmouseout="row(4,0)">4</td><td class="col2">Bushpig</td><td class="col3"><span class="scientific-name">Potamochoerus larvatus</span></td><td class="col4">Artiodactyla</td></tr>
							<tr class="row5"><td class="col1" onmouseover="row(5,1)" onmouseout="row(5,0)">5</td><td class="col2">Hippopotamus</td><td class="col3"><span class="scientific-name">Hippopotamus amphibius</span></td><td class="col4">Artiodactyla</td></tr>
							<tr class="row6"><td class="col1" onmouseover="row(6,1)" onmouseout="row(6,0)">6</td><td class="col2">Bush hyrax</td><td class="col3"><span class="scientific-name">Heterohyrax brucei</span><td class="col4">Hyracoidea</td></tr>
						</table>
						<pre id="array-view" style="display:none; word-wrap:break-word; white-space:pre-wrap;"><code id="array-code"></code></pre>
						<br><br>
					</section>
					-->
*/