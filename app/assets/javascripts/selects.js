$(document).ready(function(){
	$('#user').on('click', function(){ 
		var value = $(this).prop('checked');
		if (value === true){
			if('geolocation' in navigator) {
				navigator.geolocation.getCurrentPosition(success, error);
					$('.location-div #bar').fadeOut(1500);
			}
			
		}
	});
	
	

	function success(position){

	var lat = position.coords.latitude
	var long = position.coords.longitude

		$('#select_latitude').val(lat);
		$('#select_longitude').val(long);
	}

	function error(err){
		console.log("It didn't work");
	}

	});