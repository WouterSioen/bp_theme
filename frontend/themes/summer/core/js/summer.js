$(document).ready(function(){
	$('#navToggler').on("click", function(event){
		if($('#navigation ul').css('display') == 'none')
		{
			$('#navigation ul').slideDown(300);
			$('#navToggler a').addClass('rotate');
		}
		else
		{
			$('#navigation ul').slideUp(300);
			$('#navToggler a').removeClass('rotate');
		}
	});
});