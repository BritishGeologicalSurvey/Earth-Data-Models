// JavaScript Document
var edm = {};
edm.init = function () {
	var highlight = $("span#menuRowHighlightLink");
	var highlightUri = '';
	var highlightLinkSel = '';
	var highlightLink = {};
	var highlightPanel = {};
		if (highlight.length > 0) {
			highlightUri = highlight.attr('rel');
			highlightLinkSel = 'div#navLinks div.topLevel a[href="' + highlightUri + '"]';
			highlightLink = $(highlightLinkSel);
			if (highlightLink.length === 1) {
				highlightLink.addClass('menuHighlight');
				highlightLink.parent().addClass('menuRowHighlight');
		};
	}
}
$(document).ready(edm.init);