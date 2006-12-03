all: cpscm.so alexpander-cpscm.so

FLAGS := -v -R syntax-case -run-time-macros -prologue danm/chicken-prelude.scm \
-Os -lambda-lift -inline -optimize-leaf-routines \
-I. -L. -d2

%.so: %.scm
	csc -s $(FLAGS) -o $@ $<

danm/scheme-util.so: danm/scheme-macros.so danm/combinators.so
analysis.so: danm/scheme-util.so
cpscm.so: analysis.so
