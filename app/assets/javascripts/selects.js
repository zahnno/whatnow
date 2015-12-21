$(document).ready(function(){
	$('#user').on('click', function(){ 
		var value = $(this).prop('checked');
		if (value === true){
			if('geolocation' in navigator) {
				navigator.geolocation.getCurrentPosition(success, error);
					//$('.location-div #bar').fadeOut(1500);
			}
			
		}
	});
	
	

	function success(position){

		var userLat = position.coords.latitude
		var userLong = position.coords.longitude

		$('#select_latitude').val(userLat);
		$('#select_longitude').val(userLong);

		$.ajax({
			url: '/selects/location',
			method: 'get',
			dataType: 'html',
			success: function(d){
				$('.location-div #select_location').val(d);
			},
			data: {latitude: userLat, longitude: userLong}

		})
	}

	function error(err){
		console.log("It didn't work");
	}

	

	});