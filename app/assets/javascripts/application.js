// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

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

        function thelocation() {
        	$('.interest-div').fadeOut(1500, function() {
        		$('.location-div').trigger('interestfinished');
        	});
        };

       


		$(document).ready(function(){
		   	welcome();

		   //PREVENTING FORM SUBMISSION WHEN ENTER PRESSED
		   $(window).keydown(function(event){
    			if(event.keyCode == 13) {
      				event.preventDefault();
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

           $('.location-div').on('interestfinished', function(){
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
	      		'background-color': 'white'
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

            $('.interest-btns').css({
            	'background-color': '#333333'
            })
        
        
	      	$(this).css({
	      		'background-color': 'white'
	       	});

	       	thelocation();
	      
		  });

		});
