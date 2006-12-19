// DOM NodeList of <td> elements containing numbers to be sorted.
var numbers;

// Reads contents of a cell.
var cpscmcref = cpscm__cpswrap (
  function cell_ref(i) { 
    return parseInt (numbers [i].innerHTML); 
  });

// Updates a cell
var cpscmcset = cpscm__cpswrap (
  function cell_set (i, x) {
    numbers [i].innerHTML = "" + x;
    return true;
  });

// Calls bubble-sort!
function do_sort () {
  cpscm__drive (
    cpscm__call_scm (
      cpscmbubble_2d_sort_21_, cpscm__id,
      numbers.length, $("asc").checked ? cpscm_3c_ : cpscm_3e_,
      cpscmcref, cpscmcset));
  return false;
}

// Reads numbers from text field "new_numbers", updates the <table>.
function change_nums () {
  var i, nums = $("new_numbers").value.split (",");
  var p = $("vec").parentNode;
  var row = document.createElement ("tr");
  row.id = "vec";
  for (i = 0; i < nums.length; i++) {
    var x = parseInt (nums [i]);
    if (isNaN (x) || ("" + x) != nums [i]) {
      alert ("Not a number: " + nums [i])
      return false;
    }
    var cell = document.createElement ("td");
    cell.appendChild (document.createTextNode ("" + x));
    row.appendChild (cell);
  }
  p.removeChild (p.childNodes [0]);  
  p.appendChild (row);
  numbers = row.getElementsByTagName("td");
  return false;
}

// Alerts the user on Scheme error.
var alert_err = cpscm__cpswrap (
  function alert_err (e, ek) {
    alert ("Javascript exception: " + e);
    return true;
  });

function initialize () {
  // calls (current-error-handler alert_err)
  cpscm__drive (
    cpscm__call_scm (cpscmcurrent_2d_error_2d_handler, cpscm__id, alert_err));
  numbers = $("vec").getElementsByTagName("td");
  $("sort").onclick = do_sort;
  $("change_nums").onclick = change_nums;
}
