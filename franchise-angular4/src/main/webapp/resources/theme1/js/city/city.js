//$('body')
//    .hide()  // Hide it initially
//    .ajaxStart(function() {
//        $(this).show();
//    })
//    .ajaxStop(function() {
//        $(this).hide();
//    })
//;

var app = angular.module('myApp', []);
app.controller('cityCtrl', function($scope, $http) {
	$('#btnRefresh').on('click', function(){
		//var ajaxOpt = ajaxCommon.newOption('', '/franchise/city/search-all', 'POST');
		var ajaxOpt = ajaxCommon.newOption('', '/city/search-all/', 'POST');
		$.ajax({
	        url: ajaxOpt.url,
	        type: ajaxOpt.type,
	        data: JSON.stringify(ajaxOpt.data),
	        contentType : ajaxOpt.contentType,
	        success: function(data, textStatus, jqXHR) {
	    		$scope.cities = data;
	        },
	        error: function(jqXHR, status, error) {
	            console.log(status + ": " + error + jqXHR.responseText);
	        }
	    }).done(function(){
	    	console.log('done');
	    });
//	    e.preventDefault();
	});
});
