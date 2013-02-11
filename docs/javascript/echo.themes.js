$(document).ready(function() {
	$('#infoTabs ul').idTabs('infoTab1',function(id,list,set){ 
		$("a",set).removeClass("selected").filter("a[href='"+id+"']").addClass("selected"); 
		for(i in list)$(list[i]).hide();
		$(id).fadeIn('slow'); 
		return false; 
	});
});