// JavaScript Document
$(function() {
	$('a.lightbox').lightBox({fixedNavigation:false,
	overlayBgColor: '#FFF',
	overlayOpacity: 0.6,
	imageLoading: '/js/images/lightbox-ico-loading.gif',
	imageBtnClose: '/js/images/lightbox-btn-close.gif',
	imageBtnPrev:  '/js/images/lightbox-btn-prev.gif',          
    imageBtnNext:  '/js/images/lightbox-btn-next.gif',
	containerResizeSpeed: 350
	});
});