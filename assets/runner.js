$$('datepicker').each(function(element) {
	new DatePicker({
		relative  : element,
	    language  : element.lang || $$("meta[name='lang']").first
	});
});