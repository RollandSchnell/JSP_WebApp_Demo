
$(document).ready(function() {
	
	
	$("#searchButton").click(function() {
		

		var food = $("#searchField").val();
	    var macros = "";

		$("#error").html( "" );
		$( "#foodName" ).html( "" );
        $( "#foodCalorie" ).html( "" );
     	$( "#foodProtein" ).html( "" );
        $( "#foodCarbs" ).html( "" );
     	$( "#foodFat" ).html( "" );
		
		$.ajax({
			
			  method: "POST",
			  url: "ProductServlet",
			  dataType: 'json',
			  data: { food: food }
			})
			  .done(function( json ) {
				
				  
				if(!checkForError( json.error )) {
				

			    $( "#foodName" ).html( food );
                $( "#foodCalorie" ).html( json.calories );
	         	$( "#foodProtein" ).html( json.protein );
		        $( "#foodCarbs" ).html( json.carbs );
	         	$( "#foodFat" ).html( json.fat );
			    
			  }
				
			  });
		
 

	});
	
	
	function checkForError(msg) {
		
		if(msg == "No such food found") {
			
			$("#error").html( "No such food found !!" );
			return true;
		}
		
	}
});