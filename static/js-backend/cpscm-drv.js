// Copyright (C) 2006 Dan Muresan
//
// This file is part of cpscm (http://www.omnigia.com/scheme/cpscm/home).
//
// cpscm is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//
// cpscm is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with cpscm; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

// JS Utilities

function cpscm__copy_obj (src, dst) {
  for (x in src) dst [x] = src [x];
}

function cpscm__id (x) { return x; }

function cpscm__2bool (x) { return x || false; }

function cpscm__args2vector (a) {
  var args, i;
  for (i = 0, args = []; i < a.length; i++)
    args.push (a [i]);
  return args;
}

Array.prototype.cpscm__vec_for_each = function vec_for_each (f) {
  var i;
  for (i = 0; i < this.length; i++)
    f (this [i]);
}

Array.prototype.cpscm__vec_map = function vec_map (f) {
  var result = [];
  this.cpscm__vec_for_each (function (x) { result.push (f (x)); });
  return result;
}

Array.prototype.cpscm__vec_filter_map = function vec_filter_map (f) {
  var result = [];
  this.cpscm__vec_for_each (function (x) { var y = f (x); if (y !== undefined) result.push (y); });
  return result;
}

function cpscm__obj_properties (x) {
  var p, result = [];
  for (p in x) result.push (p);
  return result;
}

function cpscm__getRhinoStackTrace (e, noMsg) {
  var sw = new java.io.StringWriter ();
  var pw = new java.io.PrintWriter (sw);
  e.rhinoException.printStackTrace (pw);
  return (noMsg ? "" : (e.rhinoException.getMessage () + "\n"))
    + sw.toString ().split ("\n").cpscm__vec_filter_map (       
      function (s) { if (/at script/.test (s)) return s; }).join ("\n");
}

function cpscm__printRhinoException (e, noMsg) {
  if (Error !== undefined && e instanceof Error
      && e.rhinoException !== undefined)
    print (cpscm__getRhinoStackTrace (e, noMsg));
  else
    print ((noMsg ? "" : ("Error: " + e.toString () + "\n")) + "(no stack trace available)\n");
}

function cpscm__simException () {
  try {
    undefined.raise_error ();
  } catch (e) {
    return e;
  }
}

// Supporting types

cpscm__nil = {};
cpscm__unspec = {};
cpscm__syms = {};
cpscm__special_chars = [];
cpscm__chars = [];

function cpscm__Pair (car, cdr) {
  this.car = car;
  this.cdr = cdr;
}

function cpscm__Symbol (s) {
  this.s = s;
}

function cpscm__Character (code) {
  this.code = code;
}

function cpscm__Delay (t)
{ this.thunk = t; }

function cpscm__Port () {}

function cpscm__StrOutPort () {
  this.str = "";
}
cpscm__copy_obj (cpscm__Port.prototype, cpscm__StrOutPort.prototype);

function cpscm__Trampoline (thunk)
{ this.thunk = thunk; }

function cpscm__equal (x, y) { 
  return (x === y) || ((x.cpscm__equal != undefined) && x.cpscm__equal (y));
}

[ Number, String ].cpscm__vec_for_each (function (c) { var p = c.prototype; p.cpscm__str_method = function () { return this.toString (); }; });
Boolean.prototype.cpscm__str_method =
  function () { return this.valueOf () ? "#t" : "#f"; };
cpscm__Symbol.prototype.cpscm__str_method =
  function () { return this.s; };
cpscm__nil.cpscm__str_method = function () { return "()"; };
cpscm__unspec.cpscm__str_method = function () { return "#<unspecified>"; }
cpscm__Character.prototype.cpscm__str_method = function (write_p) {
  var c = String.fromCharCode (this.code);
  if (write_p) {
    var spec = cpscm__special_chars [this.code];
    if (spec) return "#\\" + spec;
    else if (this.code > 126) return "#\\0" + this.code.toString (8);
    else if (this.code < 0) throw ("invalid char code " + this.code);
    else return "#\\" + c;
  }
  else return c;
}
Function.prototype.cpscm__str_method = function () { 
  var name = this.name;
  if (! name || name === "")
    name = "?";
  return "#<procedure " + name + " arity " + this.arity + ">";
}

cpscm__Pair.prototype.cpscm__str_method = function (write_p) {
  var p;
  var comps = [];
  for (p = this; p instanceof cpscm__Pair; p = p.cdr)
    comps.push (cpscm__str (p.car, write_p));
  if (p !== cpscm__nil)
    comps.push (". " + cpscm__str (p, write_p));
  return "(" + comps.join (" ") + ")";
}

Array.prototype.cpscm__str_method = function (write_p) {
  var comps = [];
  this.cpscm__vec_for_each (
    function (x) { comps.push (cpscm__str (x, write_p)); }
  );
  return "#(" + comps.join (" ") + ")";
}

cpscm__Trampoline.prototype.cpscm__str_method = 
  function () { return "#<trampoline>"; };

cpscm__Delay.prototype.cpscm__str_method =
  function () { return "#<promise>"; };

cpscm__Port.prototype.cpscm__str_method =
  function () { return "#<port>"; }

cpscm__StrOutPort.prototype.cpscm__str_method =
  function () { return "#<str-out-port:>"; }

function cpscm__str (x, write_p) {
  if (x === undefined)
    return "#<js:undefined>";
  if (x.cpscm__str_method)
    return x.cpscm__str_method (write_p);
  else
    return "#<js:" + cpscm__js_obj2str (x) + ">";
}

// Supporting functions

function cpscm__sym (s) {
  var ss = cpscm__syms [s];
  if (ss) return ss;
  return cpscm__syms [s] = new cpscm__Symbol (s);
}

function cpscm__char (c) {
  var c = cpscm__chars [c];
  if (c) return c;
  return new cpscm__Character (c);
}

function cpscm__js_obj2str (o) {
  var str = [ "t: " + (typeof o) ];
  var x;
  for (x in o) {
    val = o [x];
    str.push (x + ": " + ((val != undefined && val instanceof Object
                           && !(val instanceof Function))
                          ? cpscm__js_obj2str (val): val));
  }
  return "{ " + str.join (", ") + " }";
}

function cpscm__jstrace (f, name) {
  return function () {
    if (name === undefined) name = f.name;
    print ("In : " + name + " " + cpscm__str (cpscm__vec2list (cpscm__args2vector (arguments))));
    var r = f.apply (this, arguments);
    print ("Out: " + name + " -> " + cpscm__str (r));
    return r; };
}

function cpscm__list () {
  var args = arguments, i;
  var result = args [args.length - 1];
  for (i = args.length - 2; i >= 0; i--)
    result = new cpscm__Pair (args [i], result);
  return result;
}

function cpscm__singleton (x) {
  return cpscm__list (x, cpscm__nil);
}

function cpscm__list2vec (l) {
  var res;
  for (res = []; l instanceof cpscm__Pair; l = l.cdr)
    res.push (l.car);
  if (l != cpscm__nil)
    throw "improper list";
  return res;
}

function cpscm__vec2list (vec) {
  var vec2 = vec.cpscm__vec_map (cpscm__id);  // clone
  vec2.push (cpscm__nil);
  return cpscm__list.apply (this, vec2);
}

function cpscm__call_scm (f) {
  // arguments is not an array
  var args = cpscm__args2vector (arguments), i;

  args.shift ();
  args.push (cpscm__nil);
  return f (cpscm__list.apply (this, args));
}

function cpscm__cpswrap (f, var_arity) {
  var wf = function wrapped (largs) {
    try {
      var pargs = cpscm__largs2args (largs, f, var_arity ? -1 : undefined);
      var result = f.apply (this, pargs.args);
      if (result === undefined)
        throw (" returned undefined on " + cpscm__str (pargs.args));
      return pargs.k (cpscm__singleton (result));
    } catch (err) {
      var k = cpscm__id;
      if ((pargs !== undefined) && (pargs.k instanceof Function))
        k = pargs.k;
      return cpscmerror (
        cpscm__list (k, "cpswrap " + f.name + ": " + err, cpscm__nil));
    }
  };

  return wf;
}

function cpscm__largs2args (largs, f, arity) {
  var name = f;
  if (f instanceof Function) {
    name = f.name;
    if (! arity)
      arity = f.arity;
  }
  if (! (largs instanceof cpscm__Pair))
    throw ("Bad argument for " + name + " (expecting list): " + cpscm__str (largs));
  var k = largs.car;
  var args = cpscm__list2vec (largs.cdr);
  if (arity >= 0 && args.length != arity)
    throw ("Arity error for " + name + ", expected " + arity + ", got " + args.length);
  if (! (k instanceof Function)) {
    cpscm__call_scm (
      cpscm__err_d_hnd,
      function () { throw ("Execution aborted -- shouldn't get here"); },
      "Bad continuation for " + name + ": " + cpscm__str (k),
      cpscm__id);
  }
  var i;
  for (i = 0; i < args.length; i++)
    if (args [i] === undefined)
      throw ("Undefined argument for " + name + ", args: " + cpscm__str (args));
  return ({ k: k, args: args });
}


// Main trampoline loop

function cpscm__reduce_d_trampoline (cc) {
  while (cc instanceof cpscm__Trampoline) {
    // print ("Executing " + cc.thunk);
    cc = (cc.thunk) ();
  }
  return cc;
}

function cpscm__drive (cc, excHnd) {
  if (excHnd === undefined)
    excHnd = function js_exc_hnd (e) { throw ("cpscm__drive error: " + e); }
  try {
    return cpscm__reduce_d_trampoline (cc);
  } catch (e) {
    return excHnd (e);
  }
}

// Procedures called from Scheme

function cpscm_x_boolean_d_combinator (args) {
  var kl = cpscm__singleton (args.car); args = args.cdr;
  var cond = args.car; args = args.cdr;
  return cond ? (args.car) (kl) : (args.cdr.car) (kl);
}

function cpscm__normal_d_apply (args) {
  var vargs2 = cpscm__list2vec (args.cdr);
  return args.car (cpscm__list.apply (cpscm__list, vargs2));
}

var cpscm_x_delay = cpscm__cpswrap (
  function (thunk) { return new cpscm__Delay (thunk); }
);
var cpscmpromise_p_ = cpscm__cpswrap (
  function (p) { return p instanceof cpscm__Delay; }
);
function cpscmforce (args) {
  return args.cdr.car.thunk (cpscm__singleton (args.car));
}

// Standard library

// Operators

var cpscm_r_ = cpscm__cpswrap (
  function greater_than (x, y) { return x > y; }
);
var cpscm_l_ = cpscm__cpswrap (
  function less_than (x, y) { return x < y; }
);
var cpscm_l__e_ = cpscm__cpswrap (
  function leq (x, y) { return x <= y; }
);
var cpscm_r__e_ = cpscm__cpswrap (
  function geq (x, y) { return x >= y; }
);
var cpscm_e_ = cpscm__cpswrap (
  function eq_p (x, y) { return x === y; }
);

function cpscm_2b_ (args) {  // +
  var s, k;
  for (s = 0, k = args.car, args = args.cdr;
       args != cpscm__nil;
       args = args.cdr)
    s += args.car;
  return k (cpscm__singleton (s));
}

function cpscm_d_ (args) {  // -
  var s, k;
  k = args.car, args = args.cdr;
  if (args === cpscm__nil) return 0;
  if (args.cdr === cpscm__nil) return (- args.car);
  for (s = args.car, args = args.cdr; args != cpscm__nil; args = args.cdr)
    s -= args.car;
  return k (cpscm__singleton (s));
}

function cpscm_2a_ (args) {  // *
  var s, k;
  for (s = 1, k = args.car, args = args.cdr;
       args != cpscm__nil;
       args = args.cdr)
    s *= args.car;
  return k (cpscm__singleton (s));
}

function cpscm_w_ (args) {  // /
  var s, k;
  for (s = args.cdr.car, k = args.car, args = args.cdr.cdr;
       args != cpscm__nil;
       args = args.cdr)
    s /= args.car;
  return k (cpscm__singleton (s));
}

// Type predicates

var cpscmeq_p_ = cpscm__cpswrap (
  function eq_p (x, y)
  { return cpscm__2bool ((x === y) || (x.cpscm__eq && x.cpscm__eq (y))); }
);
var cpscmeqv_p_ = cpscm__cpswrap (
  function eqv_p (x, y)
  { return cpscm__2bool ((x === y) || (x.cpscm__eqv && x.cpscm__eqv (y))); }
);
var cpscmequal_p_ = cpscm__cpswrap (cpscm__equal);

var cpscmpair_p_ = cpscm__cpswrap (
  function pair_p (p) { return p instanceof cpscm__Pair; }
);
var cpscmprocedure_p_ = cpscm__cpswrap (
  function procedure_p (p) { return p instanceof Function; }
);
var cpscmsymbol_p_ = cpscm__cpswrap (
  function symbol_p (x) { return x instanceof cpscm__Symbol; }
);
var cpscmnull_p_ = cpscm__cpswrap (
  function null_p (l) { return l == cpscm__nil; }
);
var cpscmstring_p_ = cpscm__cpswrap (
  function string_p (x) { return (typeof x) === "string"; }
);
var cpscmboolean_p_ = cpscm__cpswrap (
  function boolean_p (x) { return (typeof x) === "boolean"; }
);
var cpscmvector_p_ = cpscm__cpswrap (
  function vector_p (x) { return x instanceof Array; }
);
var cpscmport_p_ = cpscm__cpswrap (
  function port_p (p) { return p instanceof cpscm__Port; }
);
var cpscmclose_d_input_d_port = cpscm__cpswrap (
  function close_port (p) { return p.close (); }
);
var cpscmclose_d_output_d_port = cpscmclose_d_input_d_port;
var cpscminput_d_port_p_ = cpscm__cpswrap (
  function input_port_p (p) { return p.isInput; }
);
var cpscmoutput_d_port_p_ = cpscm__cpswrap (
  function output_port_p (p) { return ! p.isInput; }
);
var cpscmchar_p_ = cpscm__cpswrap (
  function number_p (c) { return c instanceof cpscm__Character; }
);
var cpscmnumber_p_ = cpscm__cpswrap (
  function number_p (n) { return (typeof n) === "number"; }
);
var cpscmexact_p_ = cpscm__cpswrap (
  function exact_p (n) { return false; }
);
var cpscminexact_p_ = cpscm__cpswrap (
  function inexact_p (n) { return true; }
);
var cpscmexact_d__r_inexact = cpscm__cpswrap (
  function exact2inexact (n) { return n; }
);
var cpscminteger_p_ = cpscm__cpswrap (
  function integer_p (n) { return false; }
);
var cpscmeven_p_ = cpscm__cpswrap (
  function even_p (n) { return false; }
);
var cpscmodd_p_ = cpscm__cpswrap (
  function odd_p (n) { return false; }
);
var cpscmcomplex_p_ = cpscm__cpswrap (
  function complex_p (n) { return false; }
);
var cpscmrational_p_ = cpscm__cpswrap (
  function rational_p (n) { return false; }
);
var cpscmreal_p_ = cpscm__cpswrap (
  function real_p (n) { return true; }
);
var cpscmnegative_p_ = cpscm__cpswrap (
  function negative_p (n) { return n < 0; }
);
var cpscmpositive_p_ = cpscm__cpswrap (
  function positive_p (n) { return n > 0; }
);
var cpscmzero_p_ = cpscm__cpswrap (
  function zero_p (n) { return n === 0; }
);
// list? defined in Scheme

// Procedures

var cpscmcar = cpscm__cpswrap (function car (l) { return l.car; });
var cpscmcdr = cpscm__cpswrap (function cdr (l) { return l.cdr; });
var cpscmcons = cpscm__cpswrap (
  function cons (x, y) { return new cpscm__Pair (x, y); }
);
var cpscmset_d_car_b_ = cpscm__cpswrap (
  function set_car (p, x) { p.car = x; return cpscm__unspec; }
);
var cpscmset_d_cdr_b_ = cpscm__cpswrap (
  function set_cdr (p, x) { p.cdr = x; return cpscm__unspec; }
);

var cpscmvector_d_length = cpscm__cpswrap (
  function vector_length (v) { return v.length; }
);
var cpscmvector_d_ref = cpscm__cpswrap (
  function vector_ref (v, i) { return v [i]; }
);
var cpscmvector_d_set_b_ = cpscm__cpswrap (
  function vector_set (v, i, x) { v [i] = x; return cpscm__unspec; }
);
var cpscmmake_d_vector = cpscm__cpswrap (
  function make_vector (n, x) {
    if (x === undefined) x = cpscm__unspec;
    var v = new Array (n), i;
    for (i = 0; i < n; i++)
      v [i] = x;
    return v;
  }, true);

var cpscmnot = cpscm__cpswrap (
  function not (x) { return x === false; }
);

var cpscmstring_e__p_ = cpscm__cpswrap (
  function string_eq(s1, s2) { return s1 === s2; }
);
// TODO: raise errors for non-strings
var cpscmstring_l__p_ = cpscm__cpswrap (
  function string_lt(s1, s2) { return s1 < s2; }
);
var cpscmstring_r__p_ = cpscm__cpswrap (
  function string_gt(s1, s2) { return s1 > s2; }
);
var cpscmstring_l__e__p_ = cpscm__cpswrap (
  function string_leq(s1, s2) { return s1 <= s2; }
);
var cpscmstring_r__e__p_ = cpscm__cpswrap (
  function string_geq(s1, s2) { return s1 >= s2; }
);

function cpscmstring_d_append (args) {
  var s = "";
  for (var p = args.cdr; p != cpscm__nil; p = p.cdr)
    s += p.car;
  return args.car (cpscm__singleton (s));
}

var cpscmsubstring = cpscm__cpswrap (
  function substring (s, start, end) { return s.substring (start, end); }
);

var cpscmsymbol_d__r_string = cpscm__cpswrap (
  function symbol2string (sym) { return sym.s; }
);
var cpscmstring_d__r_symbol = cpscm__cpswrap (cpscm__sym);

var cpscmnumber_d__r_string = cpscm__cpswrap (
  function number2string (x, r) {
    if (r === undefined) r = 10;
    return x.toString (r);
  }, true);
var cpscmstring_d__r_number = cpscm__cpswrap (
  function string2number (s, r) {
    if (r === undefined) r = 10;
    if (r != 10 && s.match (/[^0-9]/)) return false;
    return parseInt (s, r);
  }, true);

var cpscmabs = cpscm__cpswrap (
  function abs (x) { return Math.abs (x); }
);
var cpscmfloor = cpscm__cpswrap (
  function floor (x) { return Math.floor (x); }
);
var cpscmceiling = cpscm__cpswrap (
  function ceiling (x) { return 1 + Math.floor (x); }
);
var cpscmtruncate = cpscm__cpswrap (
  function truncate (x) { return Math.floor (x) + ((x < 0) ? 1 : 0); }
);
var cpscmround = cpscm__cpswrap (
  function round (x) { return Math.round (x); }
);
var cpscmsqrt = cpscm__cpswrap (
  function sqrt (x) { return Math.sqrt (x); }
);
var cpscmlog = cpscm__cpswrap (
  function log (x) { return Math.log (x); }
);
var cpscmexp = cpscm__cpswrap (
  function exp (x) { return Math.exp (x); }
);
var cpscmsin = cpscm__cpswrap (
  function sin (x) { return Math.sin (x); }
);
var cpscmcos = cpscm__cpswrap (
  function cos (x) { return Math.cos (x); }
);
var cpscmtan = cpscm__cpswrap (
  function tan (x) { return Math.tan (x); }
);
var cpscmasin = cpscm__cpswrap (
  function asin (x) { return Math.asin (x); }
);
var cpscmacos = cpscm__cpswrap (
  function acos (x) { return Math.acos (x); }
);
var cpscmatan = cpscm__cpswrap (
  function atan (x) { return Math.atan (x); }
);

var cpscmchar_d__r_integer = cpscm__cpswrap (
  function char2integer (c) { return c.code; }
);
var cpscminteger_d__r_char = cpscm__cpswrap (
  function integer2char (c) { return cpscm__char (c); }
);

var cpscmchar_l__p_ = cpscm__cpswrap (
  function char_lt (c1, c2) { return c1.code < c2.code; }
);
var cpscmchar_l__e__p_ = cpscm__cpswrap (
  function char_leq (c1, c2) { return c1.code <= c2.code; }
);
var cpscmchar_e__p_ = cpscm__cpswrap (
  function char_eq (c1, c2) { return c1.code == c2.code; }
);
var cpscmchar_r__e__p_ = cpscm__cpswrap (
  function char_geq (c1, c2) { return c1.code >= c2.code; }
);
var cpscmchar_r__p_ = cpscm__cpswrap (
  function char_gt (c1, c2) { return c1.code > c2.code; }
);

var cpscmstring_d_ref = cpscm__cpswrap (
  function string_ref (s, i) { return cpscm__char (s.charCodeAt (i)); }
);

var cpscmstring_d_length = cpscm__cpswrap (
  function string_length (s) { return s.length; }
);

function cpscm__init_eq () {
  var p;
  function upd (c) { p = c.prototype; }

  upd (cpscm__Symbol);
  p.cpscm__eqv = p.cpscm__equal = function eqv_p (other) { return (other instanceof cpscm__Symbol) && other.s === this.s; };
  upd (cpscm__Character);
  p.cpscm__eq = p.cpscm__eqv = p.cpscm__equal = function eqv_p (other) { return (other instanceof cpscm__Character) && other.code === this.code; };
  upd (cpscm__Pair);
  p.cpscm__equal = function equal_p (p2) { 
    var p1 = this; 
    if (! (p2 instanceof cpscm__Pair)) return false;
    return (p1 === p2) || (cpscm__equal (p1.car, p2.car)
                           && cpscm__equal (p1.cdr, p2.cdr));
  }
  upd (Array);
  p.cpscm__equal = function equal_p (v2) {
    var i, v1 = this;
    if (! (v2 instanceof Array) || v2.length != v1.length) return false;
    for (i = 0; i < v1.length; i++)
      if (! cpscm__equal (v1 [i], v2 [i]))
        return false;
    return true;
  }
}

var cpscmdisplay = cpscm__cpswrap (
  function display (x, port) {
    if (port === undefined)
      port = cpscm__output_port;
    port.write (cpscm__str (x, false));
    return cpscm__unspec;
  }, true);
var cpscmwrite = cpscm__cpswrap (
  function display (x, port) {
    if (port === undefined)
      port = cpscm__output_port;
    port.write (cpscm__str (x, true));
    return cpscm__unspec;
  }, true);
function cpscmnewline (args) {
  return cpscmdisplay (cpscm__list (args.car, "\n", args.cdr));
}

var cpscmget_d_output_d_string = cpscm__cpswrap (
  function get_output_string (p) { return p.str; }
);

var cpscmcurrent_d_output_d_port = cpscm__cpswrap (
  function current_output_port (newp) { 
    var oldp = cpscm__output_port;
    if (newp)
      cpscm__output_port = newp;
    return oldp;
  },
  true);

var cpscmopen_d_output_d_string = cpscm__cpswrap (
  function get_output_string () { return new cpscm__StrOutPort (""); }
);

// Initialization

function cpscm__port_unsupported_op () {};
cpscm__Port.prototype.write = cpscm__port_unsupported_op;
cpscm__Port.prototype.read = cpscm__port_unsupported_op;
cpscm__Port.prototype.close = function () {};
cpscm__Port.prototype.isInput = false;

var cpscm__rhino_output = new cpscm__Port;
cpscm__rhino_output.write = function rhino_write (x) {
  java.lang.System.out.print ("" + x);
}

cpscm__copy_obj (cpscm__Port.prototype, cpscm__StrOutPort.prototype);
cpscm__StrOutPort.prototype.write = function (x) {
  this.str = this.str + x;
}

var cpscm__output_port;

function cpscm__init_chars () {
  var i;
  for (i = 0; i < 32; i++) cpscm__special_chars [i] = "0" + i.toString (8);
  [ [ 10, "newline" ], [ 32, "space" ] ].cpscm__vec_for_each (
    function (p) { cpscm__special_chars [p [0]] = p [1]; }
  );
  for (i = 0; i < 256; i++) cpscm__chars.push (new cpscm__Character (i));
}

function cpscm__init () {
  cpscm__init_chars ();
  cpscm__init_eq ();
  cpscm__output_port = cpscm__rhino_output;
}

cpscm__init ();
