$(document).ready ->	
	$('#boiler_rooms').tablesorter()
	$("#consumers").tablesorter()
	active_menu =->
		loc = window.location.pathname.match(/^\/?(\w+)\b/)[1]
		switch loc
			when "boiler_rooms" then $("ul.nav li#boiler_rooms").addClass "active"
			when "consumers" then $("ul.nav li#consumers").addClass "active"
	active_menu()	
	false
