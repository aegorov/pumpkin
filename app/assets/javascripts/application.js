(function() {
  $(document).ready(function() {
    var activate_menu;
    $("table").tablesorter();
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
    activate_menu();
    return false;
  });
}).call(this);
