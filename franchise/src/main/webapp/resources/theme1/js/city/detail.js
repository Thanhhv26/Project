$('.btnDetail').on('click', function(e){
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
        	$('#formDetail')[0].reset();
        	$('#formDetail input[name=id]').val(data[0].id);
        	$('#formDetail input[name=name]').val(data[0].name);
        	$('#formDetail input[name=code]').val(data[0].code);
        	$('#formDetail input[name=status]').attr('checked', false);
        	if(data[0].status){
        		$($('#formDetail input[name=status]')[0]).attr('checked', true);
        	} else if(!data[0].status){
        		$($('#formDetail input[name=status]')[1]).attr('checked', true);
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