$(document).ready(function() {
	
	$('#btnCreate').on('click', function(){
		$('#formCreate')[0].reset();
	});
	
	$('#formCreate').on("submit", function(e){
		var ajaxOpt = {
			data : getAjaxOptFromForm(this),
			url : $(this).attr("action"),
			type : $(this).attr("method"),
			contentType : 'application/json',
			dataType: 'json'
		};
		
		console.log(ajaxOpt);
		
        $.ajax({
            url: ajaxOpt.url,
            type: ajaxOpt.type,
            data: JSON.stringify(ajaxOpt.data),
            contentType : ajaxOpt.contentType,
            success: function(data, textStatus, jqXHR) {
            	$('#modalCreate').modal('hide');
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
	
	$("#btnSubmitFormCreate").on('click', function() {
        $("#formCreate").submit();
    });
	
});