/**
 * @param form
 * @returns
 */
function getAjaxOptFromForm(form){
	var dataForm = $(form).serializeArray();
	var result = {};
	$.each(dataForm, function(ind, obj){
		result[obj.name] = obj.value;
	});
	return result;
}

var formCommon = {
	getUrl: function(form){
		return $(form).attr("action");
	},
	getType: function(form){
		return $(form).attr("method");
	},
	getData: function(form){
		var dataForm = $(form).serializeArray();
		var result = {};
		$.each(dataForm, function(ind, obj){
			result[obj.name] = obj.value;
		});
		return result;
	}
};

var ajaxCommon = {
	getOptionByForm: function(form){
		var ajaxOpt = {
			data : formCommon.getData(form),
			url : formCommon.getUrl(form),
			type : formCommon.getType(form),
			contentType : 'application/json',
			dataType: 'json'
		};
		return ajaxOpt;
	},
	newOption: function(){
		var ajaxOpt = {
			data : '',
			url : '',
			type : '',
			contentType : 'application/json',
			dataType: 'json'
		};
		return ajaxOpt;
	},
	newOption: function(data, url, type){
		var ajaxOpt = {
			data : data,
			url : url,
			type : type,
			contentType : 'application/json',
			dataType: 'json'
		};
		return ajaxOpt;
	}
};