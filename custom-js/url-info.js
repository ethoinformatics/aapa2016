var urlHighlightColor = 'blue';



var urlinformation = {
	'wikiProtocol':'The <span style="color:'+urlHighlightColor+'; font-weight:bold;">protocol</span> specifies how the webpage is retrieved',
	'wikiDomain':'The <span style="color:'+urlHighlightColor+'; font-weight:bold;">domain name</span> specifies which server to contact',
	'wikiPath':'The <span style="color:'+urlHighlightColor+'; font-weight:bold;">path</span> passes data to the recipient server',
};


function url(n,on) {
	var urlInfo = document.getElementById('urlInfo');
	var highlight = document.getElementById(n);
	if (on) {
		highlight.style.color = urlHighlightColor;
		urlInfo.innerHTML = urlinformation[n];
	} else {
		highlight.style.color = null;
		urlInfo.innerHTML = '&nbsp;';
	}
}