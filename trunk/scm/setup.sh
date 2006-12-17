#!/bin/sh
cp ../static/*-backend/* .

echo 'Compile CPSCM for Chicken Scheme (Y/n)?'
read in
if test "x$in" != "xn"; then
	make
fi

cat <<EOF


To run CPSCM in Chicken:
csi -q danm/chicken-prelude.scm <backend>.scm

To run from SISC:
sisc <backend>.scm
 
<backend> is one of scm2js, scm2lisp or scm2scm.

At the scheme REPL:
> (import <backend>)
> (<backend>:compile <source> <destination>)

where <backend> is your current backend. For example,

> (import scm2js)
> (scm2js:compile "../static/scheme-examples/fact.txt" "fact.js")

EOF
