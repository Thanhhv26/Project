$(document).ready(function() {
	$('#teamTable').dataTable().fnDestroy();
//	var table = $('#tblCities').DataTable({
//		paging: false,
//	    searching: false,
//	    retrieve: true
//	}).fnDestroy();
	
	$('#btnRefresh').on('click', function(){		
		var ajaxOpt = ajaxCommon.newOption('', '/franchise/city/search-all', 'POST');
		$.ajax({
	        url: ajaxOpt.url,
	        type: ajaxOpt.type,
	        data: JSON.stringify(ajaxOpt.data),
	        contentType : ajaxOpt.contentType,
	        success: function(data, textStatus, jqXHR) {
	    		$('#tblCities').DataTable( {
	    			data: data
	    		});
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