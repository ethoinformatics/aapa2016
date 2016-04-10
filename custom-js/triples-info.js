/*var uris = [{
	"Subject" : "http://notrealdata.com/resources/record1",
	"Predicate" : "http://notrealterms.org/terms/isOrganism",
	"Object" : "http://dbpedia.org/resource/Bat"
},{
	"Subject" : "http://notrealdata.com/resources/record1",
	"Predicate" : "http://notrealterms.org/terms/hasWeight",
	"Object" : "&quot;0.04 kg&quot;"
},{
	"Subject" : "http://notrealdata.com/resources/record1",
	"Predicate" : "http://notrealterms.org/terms/maturesAt",
	"Object" : "&quot;2 years&quot;"
},{
	"Subject" : "http://notrealdata.com/resources/record1",
	"Predicate" : "http://notrealterms.org/terms/hasDailyPathLength",
	"Object" : "&quot;30 km&quot;"
},{
	"Subject" : "http://notrealdata.com/resources/record1",
	"Predicate" : "http://purl.org/dc/terms/publisher",
	"Object" : "http://sbdn.org/bat-database/"
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
*/