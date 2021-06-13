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
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require chartkick
//= require Chart.bundle
//= require_tree .

 /* global $*/
$(document).on('turbolinks:load', function() {
    $(".graph1-button").click(function () {
        $(".graph1").toggle();
    });
    $(".graph2-button").click(function () {
        $(".graph2").toggle();
    });
    $(".graph3-button").click(function () {
        $(".graph3").toggle();
    });
    $(".graph4-button").click(function () {
        $(".graph4").toggle();
    });
    $(".graph5-button").click(function () {
        $(".graph5").toggle();
    });
    $(".graph6-button").click(function () {
        $(".graph6").toggle();
    });
    $(".graph7-button").click(function () {
        $(".graph7").toggle();
    });
    $(".graph8-button").click(function () {
        $(".graph8").toggle();
    });
});
