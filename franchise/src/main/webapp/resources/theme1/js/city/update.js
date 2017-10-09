$(document).ready(function() {
	
	$('.btnUpdate').on('click', function(e){
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
            	$('#formUpdate')[0].reset();
            	$('#formUpdate input[name=id]').val(data[0].id);
            	$('#formUpdate input[name=name]').val(data[0].name);
            	$('#formUpdate input[name=code]').val(data[0].code);
            	$('#formUpdate input[name=status]').attr('checked', false);
            	if(data[0].status){
            		$($('#formUpdate input[name=status]')[0]).attr('checked', true);
            	} else if(!data[0].status){
            		$($('#formUpdate input[name=status]')[1]).attr('checked', true);
            	}            	
            },
            error: function(jqXHR, status, error) {
                console.log(status + ": " + error + jqXHR.responseText);
            }
        }).done(function(){
        	console.log('done');
        });
        e.preventDefault();
        
	});
	
	$('#formUpdate').on("submit", function(e){
		var ajaxOpt = ajaxCommon.getOptionByForm(this);
        $.ajax({
            url: ajaxOpt.url,
            type: ajaxOpt.type,
            data: JSON.stringify(ajaxOpt.data),
            contentType : ajaxOpt.contentType,
            success: function(data, textStatus, jqXHR) {
            	$('#modalUpdate').modal('hide');
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
	
	$("#btnSubmitFormUpdate").on('click', function() {
        $("#formUpdate").submit();
    });
	
});