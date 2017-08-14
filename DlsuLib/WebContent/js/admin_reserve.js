$(document).ready(function(){
	var t = $('#reservationsTable').DataTable();
    var counter = 1; 
    $('#inputDate').change(function(){
    	  t.row.add( [
              counter +'.1',
              counter +'.2',
              counter +'.3',
              counter +'.4',
              counter +'.5'
          ] ).draw( false );
    });
    
});
