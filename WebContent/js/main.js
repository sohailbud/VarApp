/**
 * 
 */

$(function(){

	$('.ui.dropdown')
	.dropdown()
	;

	$('#search-select')
	  .dropdown()
	;
	
	$('.ui.checkbox')
	.checkbox()
	;

	$('.submitForm').click(function () {
		$("form").submit();
	});

	var rel = $('body[rel]').attr('rel');
	
	$('#menu a:eq('+ rel +')').addClass('active');
		
	$('.chzn-select').chosen({
		allow_single_deselect: true
	});
	
});

function switchbutton(el){
	el.className="ui small loading button";
};

function showModal(){
	$('.small.modal').modal('show');
};

