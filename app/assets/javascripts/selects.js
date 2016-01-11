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
				$('.location-btn').css({'background-color' : '#333333'});
			},
			data: {latitude: userLat, longitude: userLong}

		})
	}

	function error(err){
		console.log("It didn't work");
	}

	

	});
 		function check()
            {
                var searchtext = document.getElementById("select_location").value;
                if(searchtext=='')
                {
                        $('.location-error').fadeIn(1500, function() {
                    	$('.location-error').fadeOut(1500);
                    });
                               
                    return false;
                }
                else if (searchtext.length != 0){
                	$('#select_location').val("");
					$.ajax({
						url: $('#new_select').attr('action'),
						method: $('#new_select').attr('method'),
						dataType: 'html',
						data: $('#new_select').serialize(),
						success: function(data){
							$('.location-div').fadeOut(1500, function(){
								$('#event').append(data).hide().fadeIn(1500);									
							});
						},
						error: function(){

							$('.no-match').fadeIn(1500, function(){
								$('.no-match').fadeOut(1500);
								$('.location-div').fadeOut(1500, function(){
									$('.btn-group').trigger('welcomefinished');

								});
								
							});
						}
					});
                }
            }

		//TRANSITION OF DIVISION CREATING TRIGGER
        function welcome() {
		  $('.intro').fadeIn(1500).fadeOut(1500, function() {
	        $('.btn-group').trigger('welcomefinished');
	      });
        };

        function interest() {
        	$('.btn-group').fadeOut(1500, function() {
        		$('.interest-div').trigger('sizefinished');
        	});
        };

        function thecost() {
        	$('.interest-div').fadeOut(1500, function() {
        		$('.cost-div').trigger('interestfinished');
        	});
        };

       function thelocation() {
       		$('.cost-div').fadeOut(1500, function() {
        		$('.location-div').trigger('costfinished');
        	});
       }


		$(document).ready(function(){
		   	welcome();

		   //PREVENTING FORM SUBMISSION WHEN ENTER PRESSED
		   $(window).keydown(function(event){
    			if(event.keyCode == 13) {
      				event.preventDefault();
      				check();
      			return false;
   				}
  			});

		   //TRANSITION OF DIVISION CALLED BY TRIGGER
           $('.btn-group').on('welcomefinished', function(){
        	 $(this).fadeIn(1500);
           });

           $('.interest-div').on('sizefinished', function(){
           	$(this).fadeIn(1500);
           });

           $('.cost-div').on('interestfinished', function(){
           	$(this).fadeIn(1500);
           });

           $('.location-div').on('costfinished', function(){
           	$(this).fadeIn(1500);
           });

	
         	//GROUP SIZE HOVER EFFECT
		   $('.btn-primary').mouseenter(function(){
            
            if ($(this).find("input[type='radio']:checked").val() === undefined) 
		   	$(this).css({
		   		'background-color': 'grey',
		   	})

		    .mouseleave(function() {


            if ($(this).find("input[type='radio']:checked").val() === undefined)
    			$(this).css({
		   			'background-color': '#333333'
		   		});
  			});
			});

		   //GROUP SIZE CLICK EFFECT
	      $('.btn-primary').on('click', function(){

            $('.btn-primary').css({
            	'background-color': '#333333'
            })
        
        
	      	$(this).css({
	      		'background-color': 'darkgrey'
	       	});

	       	interest();
	      
		  	});


	      	//INTEREST SELECT HOVER EFFECT
		    $('.interest-btn').mouseenter(function(){
            
            if ($(this).find("input[type='radio']:checked").val() === undefined) 
		   	$(this).css({
		   		'background-color': 'grey',
		   	})

		    .mouseleave(function() {


            if ($(this).find("input[type='radio']:checked").val() === undefined)
    			$(this).css({
		   			'background-color': '#333333'
		   		});
  			});
			});

		   //INTEREST SELECT CLICK EFFECT
	      $('.interest-btn').on('click', function(){

            $('.interest-btn').css({
            	'background-color': '#333333'
            })
            $(this).css({
	      		'background-color': 'darkgrey'
	       	});

	       	thecost();
	      
		  });

		  //COST SELECT HOVER EFFECT
		    $('.cost-btn').mouseenter(function(){
            
            if ($(this).find("input[type='radio']:checked").val() === undefined) 
		   	$(this).css({
		   		'background-color': 'grey',
		   	})

		    .mouseleave(function() {


            if ($(this).find("input[type='radio']:checked").val() === undefined)
    			$(this).css({
		   			'background-color': '#333333'
		   		});
  			});
			});

		   //COST SELECT CLICK EFFECT
	      $('.cost-btn').on('click', function(){

            $('.cost-btn').css({
            	'background-color': '#333333'
            })
            $(this).css({
	      		'background-color': 'darkgrey'
	       	});

	       	thelocation();
	      
		  });

	      	//LOCATION CLICK AND HOVER EFFECT
		  	$('.location-btn').mouseenter(function(){
            
            if ($(this).find("input[type='checkbox']:checked").val() === undefined) 
		   	$(this).css({
		   		'background-color': 'grey',
		   	})

		    .mouseleave(function() {


            if ($(this).find("input[type='checkbox']:checked").val() === undefined)
    			$(this).css({
		   			'background-color': '#262626'
		   		});
  			});
			});

		  $('.location-btn').on('click', function(){

            $('.location-btn').css({
            	'background-color': '#333333'
            })
            $(this).css({
	      		'background-color': 'darkgrey'
	       	});

		  });

		  if ($('.location-btn').find("input[type='radio']:checked").val() === "")
    			$(this).css({
		   			'background-color': '#262626'
		   		});

		});

		//CLICK THROUGH TO EVENT SHOW PAGE
		$('.event-name').on('click', function(){
			window.location.href = '/events/show';
		});
	
