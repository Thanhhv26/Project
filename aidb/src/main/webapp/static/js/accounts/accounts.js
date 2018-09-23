//angular.module('users', ['components'])
// 
//.controller('users', function($scope, $locale) {
//  $scope.beers = [0, 1, 2, 3, 4, 5, 6];
//  if ($locale.id == 'en-us') {
//    $scope.beerForms = {
//      0: 'no beers',
//      one: '{} beer',
//      other: '{} beers'
//    };
//  } else {
//    $scope.beerForms = {
//      0: 'žiadne pivo',
//      one: '{} pivo',
//      few: '{} pivá',
//      other: '{} pív'
//    };
//  }
//});

var app = angular.module('accountsModule', []);
app.controller('accountsController', function($scope, $http) {
	
	$('#btnRefresh').on('click', function(){
//		var ajaxOpt = ajaxCommon.newOption('', '/aidb/accounts/list', 'GET');
//		$.ajax({
//	        url: ajaxOpt.url,
//	        type: ajaxOpt.type,
//	        data: JSON.stringify(ajaxOpt.data),
//	        contentType : ajaxOpt.contentType,
//	        success: function(data, textStatus, jqXHR) {
//	    		$scope.accounts = [data[0]];
//	        },
//	        error: function(jqXHR, status, error) {
//	            console.log(status + ": " + error + jqXHR.responseText);
//	        }
//	    }).done(function(){
//	    	console.log('done');
//	    });
		
		$http({
	        method : "GET",
	        url : "/aidb/accounts/list"
	    }).then(function mySuccess(response) {
	    	$scope.accounts = response.data;
	    }, function myError(response) {
	        
	    });
	    // e.preventDefault();
	});
});
