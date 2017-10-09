$(document).ready(function() {
	
	$('.btnDelete').on('click', function(e){
		$('#divDelete #id').text('');
    	$('#divDelete #name').text('');
    	$('#divDelete #code').text('');
    	$('#divDelete #status').text('');
		var data = {
			id: $($(this).parent().parent().find('td')[0]).text()
		};
		
		var ajaxOpt = ajaxCommon.newOption(data, '/franchise/city/search', 'POST');
		$.ajax({
            url: ajaxOpt.url,
            type: ajaxOpt.type,
            data: JSON.stringify(ajaxOpt.data),
            contentType : ajaxOpt.contentType,
            success: function(data, textStatus, jqXHR) {
            	//console.log(data);
            	$('#divDelete #id').text(data[0].id);
            	$('#divDelete #name').text(data[0].name);
            	$('#divDelete #code').text(data[0].code);
            	$('#divDelete #status').text(data[0].status);
            },
            error: function(jqXHR, status, error) {
                console.log(status + ": " + error + jqXHR.responseText);
            }
        }).done(function(){
        	console.log('done');
        });
        e.preventDefault();
        
	});
	
	$('#btnSubmitFormDelete').on("click", function(e){
		var data = {
			id: $('#divDelete #id').text()
		};
		var ajaxOpt = ajaxCommon.newOption(data, '/franchise/city/delete', 'POST');
        $.ajax({
            url: ajaxOpt.url,
            type: ajaxOpt.type,
            data: JSON.stringify(ajaxOpt.data),
            contentType : ajaxOpt.contentType,
            success: function(data, textStatus, jqXHR) {
            	$('#modalDelete').modal('hide');
            	$('#btnRefresh').click();
            },
            error: function(jqXHR, status, error) {
                console.log(status + ": " + error + jqXHR.responseText);
            }
        }).done(function(){
        	console.log('done');
        });
        e.preventDefault();
	});
	
});