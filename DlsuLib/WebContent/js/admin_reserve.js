$(document).ready(function(){
	var t = $('#reservationsTable').DataTable();
    var counter = 1; 
    
    $('#inputDate').change(function(){
    	console.log(t)
    	console.log("test")
    	t.clear().draw();
    	var date = $('#inputDate').val()
    	console.log(date)
//    	  t.row.add( [
//              'roo',
//              '69',
//              'Randy',
//              'available'
//          ] ).draw( false );
    	 $.ajax({
				url: "AdminReserveServlet",
				type: "POST",
				 data: { 'date': date
				 },
				success: function(data) {
					if(data == "error") {
						swal(catalogTitle, "there was an error in your request", "error");
					} else {
						var reservations = jQuery.parseJSON(data);
		         		$.each(reservations, function(reservationID, reservation){
		         			t.row.add([
		         				reservation.reserveid,
		         				reservation.datereserved,
		         				reservation.username,
		         				rservation.statusid
		         			]);
		         		});
		         		t.draw();
					}
				}
			});
    });
    
});
