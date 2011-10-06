(function() {
  $(document).ready(function() {
    var active_menu;
    $('table#boiler_rooms').tablesorter();
    $("table#consumers").tablesorter();
    active_menu = function() {
      var loc;
      loc = window.location.pathname.match(/^\/?(\w+)\b/)[1];
      switch (loc) {
        case "boiler_rooms":
          return $("ul.nav li#boiler_rooms").addClass("active");
        case "consumers":
          return $("ul.nav li#consumers").addClass("active");
      }
    };
    active_menu();
    return false;
  });
}).call(this);
