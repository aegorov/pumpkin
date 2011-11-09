$(document).ready ->	
	$("table").tablesorter()
	activate_menu =->
		loc = window.location.pathname.match(/^\/?(\w+)\b/)
		if loc != null
			switch loc[1]
				when "boiler_rooms" then $("ul.nav li#boiler_rooms").addClass "active"
				when "consumers" then $("ul.nav li#consumers").addClass "active"
				when "transactions" then $("ul.nav li#transactions").addClass "active"
		else 
			$("ul.nav li#transactions").addClass "active"
	activate_menu()	
	false
