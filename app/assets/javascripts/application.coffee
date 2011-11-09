$(document).ready ->	
	$("table#boiler_rooms").tablesorter()
	$("table#consumers").tablesorter()
	activate_menu =->
		loc = window.location.pathname.match(/^\/?(\w+)\b/)[1]
		switch loc
			when "boiler_rooms" then $("ul.nav li#boiler_rooms").addClass "active"
			when "consumers" then $("ul.nav li#consumers").addClass "active"
	activate_menu()	
	false
