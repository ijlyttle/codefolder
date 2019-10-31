
  function codefolder(query) {

    var x = document.querySelectorAll(query);
    if (x.length === 0) return;

    function toggle_vis(o) {
      var d = o.style.display;
      o.style.display = (d === 'block' || d === '') ? 'none':'block';
    }

    for (i = 0; i < x.length; i++) {
      var y = x[i];
      toggle_vis(y);
    }

    var elem = document.getElementById("codefolder-button");
    if (elem.value === "Hide Code") elem.value = "Show Code";
    else elem.value = "Hide Code";
  }
