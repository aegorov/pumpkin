$(document).ready ->
	init =->
		$.datepicker.regional['ru'] = {
 			 closeText: 'Закрыть',
 			 prevText: '&#x3c;Пред',
 			 nextText: 'След&#x3e;',
 			 currentText: 'Сегодня',
 			 monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь',
 			 'Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
 			 monthNamesShort: ['Янв','Фев','Мар','Апр','Май','Июн',
 			 'Июл','Авг','Сен','Окт','Ноя','Дек'],
 			 dayNames: ['воскресенье','понедельник','вторник','среда','четверг','пятница','суббота'],
 			 dayNamesShort: ['вск','пнд','втр','срд','чтв','птн','сбт'],
 			 dayNamesMin: ['Вс','Пн','Вт','Ср','Чт','Пт','Сб'],
 			 dateFormat: 'dd.mm.yy',
 			 firstDay: 1,
 			 isRTL: false
  		 };
		$.datepicker.setDefaults($.datepicker.regional['ru'])
		$("#search_created_at_lteq").datepicker()
		$("#search_created_at_gteq").datepicker()
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
	init()
	activate_menu()
	false
