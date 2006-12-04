all: cpscm.so

FLAGS := -v -R syntax-case -prologue danm/chicken-prelude.scm \
-Os -lambda-lift -inline -optimize-leaf-routines \
-I. -L. -d2

%.so: %.scm
	csc -s $(FLAGS) -o $@ $<

danm/scheme-util.so: danm/scheme-macros.so danm/combinators.so
analysis.so: danm/scheme-util.so
cpscm.so: analysis.so alexpander-cpscm.so r5rs-bootstrap.so
