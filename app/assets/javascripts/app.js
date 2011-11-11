(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
  $(document).ready(function() {
    var activate_menu, init;
    init = function() {
      $.datepicker.regional['ru'] = {
        closeText: 'Закрыть',
        prevText: '&#x3c;Пред',
        nextText: 'След&#x3e;',
        currentText: 'Сегодня',
        monthNames: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
        monthNamesShort: ['Янв', 'Фев', 'Мар', 'Апр', 'Май', 'Июн', 'Июл', 'Авг', 'Сен', 'Окт', 'Ноя', 'Дек'],
        dayNames: ['воскресенье', 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота'],
        dayNamesShort: ['вск', 'пнд', 'втр', 'срд', 'чтв', 'птн', 'сбт'],
        dayNamesMin: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
        dateFormat: 'dd.mm.yy',
        firstDay: 1,
        isRTL: false
      };
      $.datepicker.setDefaults($.datepicker.regional['ru']);
      $("#search_created_at_lteq").datepicker();
      $("#search_created_at_gteq").datepicker();
      return $("table").tablesorter();
    };
    activate_menu = function() {
      var loc;
      loc = window.location.pathname.match(/^\/?(\w+)\b/);
      if (loc !== null) {
        switch (loc[1]) {
          case "boiler_rooms":
            return $("ul.nav li#boiler_rooms").addClass("active");
          case "consumers":
            return $("ul.nav li#consumers").addClass("active");
          case "transactions":
            return $("ul.nav li#transactions").addClass("active");
        }
      } else {
        return $("ul.nav li#transactions").addClass("active");
      }
    };
    init();
    activate_menu();
    $('.label').click(__bind(function() {
      return console.log("res");
    }, this));
    return false;
  });
}).call(this);
