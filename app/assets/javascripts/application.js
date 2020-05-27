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
//= require jquery.turbolinks
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require popper
//= require bootstrap-sprockets
//= require chartkick
//= require Chart.bundle
//= require_tree .

 /* global $*/
///$(document).ready(function() {
    ///$("button").text("Hello JQuery on Rails");
 ///});
 
<script>
document.getElementById("budget").style.display ="block";

function onClick(){
	const budget = document.getElementById("budget");

	if(budget.style.display=="block"){
		// noneで非表示
		budget.style.display ="none";
	}else{
		// blockで表示
		budget.style.display ="block";
	}
}
</script>