// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
/* =================================
------------------------------------
	EndGam - Gaming Magazine Template
	Version: 1.0
 ------------------------------------
 ====================================*/


'use strict';


$(window).on('load', function() {
    /*------------------
        Preloder
    --------------------*/
    $(".loader").fadeOut();
    $("#preloder").delay(400).fadeOut("slow");

});

(function($) {
    /*------------------
        Navigation
    --------------------*/
    // $('.primary-menu').slicknav({
    //     appendTo:'.header-warp',
    //     closedSymbol: '<i class="fa fa-angle-down"></i>',
    //     openedSymbol: '<i class="fa fa-angle-up"></i>'
    // });


    /*------------------
        Background Set
    --------------------*/
    $('.set-bg').each(function() {
        var bg = $(this).data('setbg');
        $(this).css('background-image', 'url(' + bg + ')');
    });



    /*------------------
        Hero Slider
    --------------------*/
    // $('.hero-slider').owlCarousel({
    //     loop: true,
    //     nav: true,
    //     dots: true,
    //     navText: ['', '<img src="icons/solid-right-arrow.png">'],
    //     mouseDrag: false,
    //     animateOut: 'fadeOut',
    //     animateIn: 'fadeIn',
    //     items: 1,
    //     //autoplay: true,
    //     autoplayTimeout: 10000,
    // });
    //
    // var dot = $('.hero-slider .owl-dot');
    // dot.each(function() {
    //     var index = $(this).index() + 1;
    //     if(index < 10){
    //         $(this).html('0').append(index + '.');
    //     }else{
    //         $(this).html(index + '.');
    //     }
    // });
    //


    /*------------------
        Video Popup
    --------------------*/
    // $('.video-popup').magnificPopup({
    //     type: 'iframe'
    // });
    //
    // $('#stickySidebar').stickySidebar({
    //     topSpacing: 60,
    //     bottomSpacing: 60
    // });


})(jQuery);
