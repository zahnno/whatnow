$(document).ready(function(){
	
		if('geolocation' in navigator) {
			navigator.geolocation.getCurrentPosition(success, error);
		};
	
	

	function success(position){

	var lat = position.coords.latitude
	var long = position.coords.longitude

		console.log(lat, long);
	}

	function error(err){
		console.log("It didn't work");
	}

	

	});