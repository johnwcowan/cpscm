(define-record-type
  :cpscm__trampoline
  (cpscm__trampoline-create thunk)
  cpscm__trampoline?
  (text cpscm__trampoline-text cpscm__trampoline-set-text!)
  (thunk cpscm__trampoline-thunk))
(define-record-type
  :cpscm__delay
  (cpscm__delay-create thunk)
  cpscm__delay?
  (thunk cpscm__delay-thunk))
(define-syntax
  cpscm__trampoline
  (syntax-rules
    ()
    ((_ . rest)
     (let ((tr (cpscm__trampoline-create (lambda () . rest))))
       (cpscm__trampoline-set-text! tr 'rest)
       tr))))
(define (cpscm__drive sexp)
  (cpscm__reduce-trampoline (cpscm__trampoline sexp)))
(define (cpscm__reduce-trampoline sexp)
  (let loop ((cc sexp))
    (if (cpscm__trampoline? cc) (loop ((cpscm__trampoline-thunk cc))) cc)))
(define (cpscm_20_boolean->combinator test)
  (if test
    (lambda (kk then else) (then kk))
    (lambda (kk then else) (else kk))))
(define (cpscm_20_delay k thunk) (k (cpscm__delay-create thunk)))
(define (cpscmpromise? k x) (k (cpscm__delay? x)))
(define (cpscmforce k p) ((cpscm__delay-thunk p) k))
(define cpscm__normal-apply apply)
(define cpscm* (lambda (k . args) (k (apply * args))))
(define cpscm+ (lambda (k . args) (k (apply + args))))
(define cpscm- (lambda (k . args) (k (apply - args))))
(define cpscm/ (lambda (k . args) (k (apply / args))))
(define cpscm< (lambda (k . args) (k (apply < args))))
(define cpscm<= (lambda (k . args) (k (apply <= args))))
(define cpscm= (lambda (k . args) (k (apply = args))))
(define cpscm> (lambda (k . args) (k (apply > args))))
(define cpscm>= (lambda (k . args) (k (apply >= args))))
(define cpscmabs (lambda (k . args) (k (apply abs args))))
(define cpscmacos (lambda (k . args) (k (apply acos args))))
(define cpscmangle (lambda (k . args) (k (apply angle args))))
(define cpscmappend (lambda (k . args) (k (apply append args))))
(define cpscmasin (lambda (k . args) (k (apply asin args))))
(define cpscmatan (lambda (k . args) (k (apply atan args))))
(define cpscmcall-with-input-file
  (lambda (k . args) (k (apply call-with-input-file args))))
(define cpscmcall-with-output-file
  (lambda (k . args) (k (apply call-with-output-file args))))
(define cpscmcar (lambda (k . args) (k (apply car args))))
(define cpscmcdr (lambda (k . args) (k (apply cdr args))))
(define cpscmcaar (lambda (k . args) (k (apply caar args))))
(define cpscmcadr (lambda (k . args) (k (apply cadr args))))
(define cpscmcdar (lambda (k . args) (k (apply cdar args))))
(define cpscmcddr (lambda (k . args) (k (apply cddr args))))
(define cpscmcaaar (lambda (k . args) (k (apply caaar args))))
(define cpscmcaadr (lambda (k . args) (k (apply caadr args))))
(define cpscmcadar (lambda (k . args) (k (apply cadar args))))
(define cpscmcaddr (lambda (k . args) (k (apply caddr args))))
(define cpscmcdaar (lambda (k . args) (k (apply cdaar args))))
(define cpscmcdadr (lambda (k . args) (k (apply cdadr args))))
(define cpscmcddar (lambda (k . args) (k (apply cddar args))))
(define cpscmcdddr (lambda (k . args) (k (apply cdddr args))))
(define cpscmcaaaar (lambda (k . args) (k (apply caaaar args))))
(define cpscmcaaadr (lambda (k . args) (k (apply caaadr args))))
(define cpscmcaadar (lambda (k . args) (k (apply caadar args))))
(define cpscmcaaddr (lambda (k . args) (k (apply caaddr args))))
(define cpscmcadaar (lambda (k . args) (k (apply cadaar args))))
(define cpscmcadadr (lambda (k . args) (k (apply cadadr args))))
(define cpscmcaddar (lambda (k . args) (k (apply caddar args))))
(define cpscmcadddr (lambda (k . args) (k (apply cadddr args))))
(define cpscmcdaaar (lambda (k . args) (k (apply cdaaar args))))
(define cpscmcdaadr (lambda (k . args) (k (apply cdaadr args))))
(define cpscmcdadar (lambda (k . args) (k (apply cdadar args))))
(define cpscmcdaddr (lambda (k . args) (k (apply cdaddr args))))
(define cpscmcddaar (lambda (k . args) (k (apply cddaar args))))
(define cpscmcddadr (lambda (k . args) (k (apply cddadr args))))
(define cpscmcdddar (lambda (k . args) (k (apply cdddar args))))
(define cpscmcddddr (lambda (k . args) (k (apply cddddr args))))
(define cpscmceiling (lambda (k . args) (k (apply ceiling args))))
(define cpscmchar->integer (lambda (k . args) (k (apply char->integer args))))
(define cpscmchar-alphabetic?
  (lambda (k . args) (k (apply char-alphabetic? args))))
(define cpscmchar-ci<=? (lambda (k . args) (k (apply char-ci<=? args))))
(define cpscmchar-ci<? (lambda (k . args) (k (apply char-ci<? args))))
(define cpscmchar-ci=? (lambda (k . args) (k (apply char-ci=? args))))
(define cpscmchar-ci>=? (lambda (k . args) (k (apply char-ci>=? args))))
(define cpscmchar-ci>? (lambda (k . args) (k (apply char-ci>? args))))
(define cpscmchar-downcase (lambda (k . args) (k (apply char-downcase args))))
(define cpscmchar-lower-case?
  (lambda (k . args) (k (apply char-lower-case? args))))
(define cpscmchar-numeric? (lambda (k . args) (k (apply char-numeric? args))))
(define cpscmchar-ready? (lambda (k . args) (k (apply char-ready? args))))
(define cpscmchar-upcase (lambda (k . args) (k (apply char-upcase args))))
(define cpscmchar-upper-case?
  (lambda (k . args) (k (apply char-upper-case? args))))
(define cpscmchar-whitespace?
  (lambda (k . args) (k (apply char-whitespace? args))))
(define cpscmchar<=? (lambda (k . args) (k (apply char<=? args))))
(define cpscmchar<? (lambda (k . args) (k (apply char<? args))))
(define cpscmchar=? (lambda (k . args) (k (apply char=? args))))
(define cpscmchar>=? (lambda (k . args) (k (apply char>=? args))))
(define cpscmchar>? (lambda (k . args) (k (apply char>? args))))
(define cpscmclose-input-port
  (lambda (k . args) (k (apply close-input-port args))))
(define cpscmclose-output-port
  (lambda (k . args) (k (apply close-output-port args))))
(define cpscmcomplex? (lambda (k . args) (k (apply complex? args))))
(define cpscmcons (lambda (k . args) (k (apply cons args))))
(define cpscmcos (lambda (k . args) (k (apply cos args))))
(define cpscmcurrent-input-port
  (lambda (k . args) (k (apply current-input-port args))))
(define cpscmcurrent-output-port
  (lambda (k . args) (k (apply current-output-port args))))
(define cpscmdenominator (lambda (k . args) (k (apply denominator args))))
(define cpscmdisplay (lambda (k . args) (k (apply display args))))
(define cpscmeof-object? (lambda (k . args) (k (apply eof-object? args))))
(define cpscmeq? (lambda (k . args) (k (apply eq? args))))
(define cpscmequal? (lambda (k . args) (k (apply equal? args))))
(define cpscmeqv? (lambda (k . args) (k (apply eqv? args))))
(define cpscmeval (lambda (k . args) (k (apply eval args))))
(define cpscmeven? (lambda (k . args) (k (apply even? args))))
(define cpscmexact->inexact
  (lambda (k . args) (k (apply exact->inexact args))))
(define cpscmexact? (lambda (k . args) (k (apply exact? args))))
(define cpscmexp (lambda (k . args) (k (apply exp args))))
(define cpscmexpt (lambda (k . args) (k (apply expt args))))
(define cpscmfloor (lambda (k . args) (k (apply floor args))))
(define cpscmgcd (lambda (k . args) (k (apply gcd args))))
(define cpscmimag-part (lambda (k . args) (k (apply imag-part args))))
(define cpscminexact->exact
  (lambda (k . args) (k (apply inexact->exact args))))
(define cpscminexact? (lambda (k . args) (k (apply inexact? args))))
(define cpscminput-port? (lambda (k . args) (k (apply input-port? args))))
(define cpscminteger->char (lambda (k . args) (k (apply integer->char args))))
(define cpscminteger? (lambda (k . args) (k (apply integer? args))))
(define cpscminteraction-environment
  (lambda (k . args) (k (apply interaction-environment args))))
(define cpscmlcm (lambda (k . args) (k (apply lcm args))))
(define cpscmlength (lambda (k . args) (k (apply length args))))
(define cpscmlist (lambda (k . args) (k (apply list args))))
(define cpscmlist->string (lambda (k . args) (k (apply list->string args))))
(define cpscmlist->vector (lambda (k . args) (k (apply list->vector args))))
(define cpscmlist-ref (lambda (k . args) (k (apply list-ref args))))
(define cpscmlist-tail (lambda (k . args) (k (apply list-tail args))))
(define cpscmlist? (lambda (k . args) (k (apply list? args))))
(define cpscmload (lambda (k . args) (k (apply load args))))
(define cpscmlog (lambda (k . args) (k (apply log args))))
(define cpscmmagnitude (lambda (k . args) (k (apply magnitude args))))
(define cpscmmake-polar (lambda (k . args) (k (apply make-polar args))))
(define cpscmmake-rectangular
  (lambda (k . args) (k (apply make-rectangular args))))
(define cpscmmake-string (lambda (k . args) (k (apply make-string args))))
(define cpscmmake-vector (lambda (k . args) (k (apply make-vector args))))
(define cpscmmax (lambda (k . args) (k (apply max args))))
(define cpscmmin (lambda (k . args) (k (apply min args))))
(define cpscmmodulo (lambda (k . args) (k (apply modulo args))))
(define cpscmnegative? (lambda (k . args) (k (apply negative? args))))
(define cpscmnewline (lambda (k . args) (k (apply newline args))))
(define cpscmnot (lambda (k . args) (k (apply not args))))
(define cpscmnull-environment
  (lambda (k . args) (k (apply null-environment args))))
(define cpscmnull? (lambda (k . args) (k (apply null? args))))
(define cpscmnumber->string
  (lambda (k . args) (k (apply number->string args))))
(define cpscmnumerator (lambda (k . args) (k (apply numerator args))))
(define cpscmodd? (lambda (k . args) (k (apply odd? args))))
(define cpscmopen-input-file
  (lambda (k . args) (k (apply open-input-file args))))
(define cpscmopen-output-file
  (lambda (k . args) (k (apply open-output-file args))))
(define cpscmoutput-port? (lambda (k . args) (k (apply output-port? args))))
(define cpscmpeek-char (lambda (k . args) (k (apply peek-char args))))
(define cpscmpositive? (lambda (k . args) (k (apply positive? args))))
(define cpscmquotient (lambda (k . args) (k (apply quotient args))))
(define cpscmrational? (lambda (k . args) (k (apply rational? args))))
(define cpscmrationalize (lambda (k . args) (k (apply rationalize args))))
(define cpscmread (lambda (k . args) (k (apply read args))))
(define cpscmread-char (lambda (k . args) (k (apply read-char args))))
(define cpscmreal-part (lambda (k . args) (k (apply real-part args))))
(define cpscmreal? (lambda (k . args) (k (apply real? args))))
(define cpscmremainder (lambda (k . args) (k (apply remainder args))))
(define cpscmreverse (lambda (k . args) (k (apply reverse args))))
(define cpscmround (lambda (k . args) (k (apply round args))))
(define cpscmscheme-report-environment
  (lambda (k . args) (k (apply scheme-report-environment args))))
(define cpscmset-car! (lambda (k . args) (k (apply set-car! args))))
(define cpscmset-cdr! (lambda (k . args) (k (apply set-cdr! args))))
(define cpscmsin (lambda (k . args) (k (apply sin args))))
(define cpscmsqrt (lambda (k . args) (k (apply sqrt args))))
(define cpscmstring (lambda (k . args) (k (apply string args))))
(define cpscmstring->list (lambda (k . args) (k (apply string->list args))))
(define cpscmstring->number
  (lambda (k . args) (k (apply string->number args))))
(define cpscmstring->symbol
  (lambda (k . args) (k (apply string->symbol args))))
(define cpscmstring-append (lambda (k . args) (k (apply string-append args))))
(define cpscmstring-ci<=? (lambda (k . args) (k (apply string-ci<=? args))))
(define cpscmstring-ci<? (lambda (k . args) (k (apply string-ci<? args))))
(define cpscmstring-ci=? (lambda (k . args) (k (apply string-ci=? args))))
(define cpscmstring-ci>=? (lambda (k . args) (k (apply string-ci>=? args))))
(define cpscmstring-ci>? (lambda (k . args) (k (apply string-ci>? args))))
(define cpscmstring-copy (lambda (k . args) (k (apply string-copy args))))
(define cpscmstring-fill! (lambda (k . args) (k (apply string-fill! args))))
(define cpscmstring-length (lambda (k . args) (k (apply string-length args))))
(define cpscmstring-ref (lambda (k . args) (k (apply string-ref args))))
(define cpscmstring-set! (lambda (k . args) (k (apply string-set! args))))
(define cpscmstring<=? (lambda (k . args) (k (apply string<=? args))))
(define cpscmstring<? (lambda (k . args) (k (apply string<? args))))
(define cpscmstring=? (lambda (k . args) (k (apply string=? args))))
(define cpscmstring>=? (lambda (k . args) (k (apply string>=? args))))
(define cpscmstring>? (lambda (k . args) (k (apply string>? args))))
(define cpscmsubstring (lambda (k . args) (k (apply substring args))))
(define cpscmsymbol->string
  (lambda (k . args) (k (apply symbol->string args))))
(define cpscmtan (lambda (k . args) (k (apply tan args))))
(define cpscmtranscript-off
  (lambda (k . args) (k (apply transcript-off args))))
(define cpscmtranscript-on (lambda (k . args) (k (apply transcript-on args))))
(define cpscmtruncate (lambda (k . args) (k (apply truncate args))))
(define cpscmvector (lambda (k . args) (k (apply vector args))))
(define cpscmvector->list (lambda (k . args) (k (apply vector->list args))))
(define cpscmvector-fill! (lambda (k . args) (k (apply vector-fill! args))))
(define cpscmvector-length (lambda (k . args) (k (apply vector-length args))))
(define cpscmvector-ref (lambda (k . args) (k (apply vector-ref args))))
(define cpscmvector-set! (lambda (k . args) (k (apply vector-set! args))))
(define cpscmwith-input-from-file
  (lambda (k . args) (k (apply with-input-from-file args))))
(define cpscmwith-output-to-file
  (lambda (k . args) (k (apply with-output-to-file args))))
(define cpscmwrite (lambda (k . args) (k (apply write args))))
(define cpscmwrite-char (lambda (k . args) (k (apply write-char args))))
(define cpscmzero? (lambda (k . args) (k (apply zero? args))))
(define cpscmboolean? (lambda (k . args) (k (apply boolean? args))))
(define cpscmchar? (lambda (k . args) (k (apply char? args))))
(define cpscmnumber? (lambda (k . args) (k (apply number? args))))
(define cpscmpair? (lambda (k . args) (k (apply pair? args))))
(define cpscmport? (lambda (k . args) (k (apply port? args))))
(define cpscmprocedure? (lambda (k . args) (k (apply procedure? args))))
(define cpscmstring? (lambda (k . args) (k (apply string? args))))
(define cpscmsymbol? (lambda (k . args) (k (apply symbol? args))))
(define cpscmvector? (lambda (k . args) (k (apply vector? args))))
(define cpscm__vals-marker #f)
(define cpscm__winders '())
(define cpscm__err-hnd #f)
(define cpscm__debug-trampolines? #f)
(define cpscm__err-cont #f)
(define cpscmcall-with-current-continuation
  (lambda (cpscmk cpscmf)
    (cpscm__trampoline
      ((lambda (cpscmccwinders)
         (cpscm__trampoline
           (begin
             (cpscm__reduce-trampoline
               ((lambda (g:ccwinders:1) (set! cpscmccwinders g:ccwinders:1))
                cpscm__winders))
             (cpscm__reduce-trampoline
               (cpscmf
                 cpscmk
                 (lambda (cpscm_ . cpscmxs)
                   (cpscm__trampoline
                     (cpscm__switch-winders
                       (lambda (cpscm_)
                         (cpscm__trampoline (cpscm__pack-vals cpscmk cpscmxs)))
                       cpscmccwinders))))))))
       'undefined))))
(define cpscmapply
  (lambda (cpscmk cpscmf . cpscmargs)
    (cpscm__trampoline
      (cpscm__normal-apply cpscm__normal-apply cpscmf cpscmk cpscmargs))))
(define cpscmcall-with-values
  (lambda (cpscmk cpscmproducer cpscmconsummer)
    (cpscm__trampoline
      (cpscmproducer
        (lambda (cpscmvals)
          (cpscm__trampoline
            (cpscm__unpack-vals
              (lambda (cpscmvs)
                (cpscm__trampoline (cpscmapply cpscmk cpscmconsummer cpscmvs)))
              cpscmvals)))))))
(define cpscmvalues
  (lambda (cpscmk . cpscmthings)
    (cpscm__trampoline (cpscm__pack-vals cpscmk cpscmthings))))
(define cpscmmap
  (lambda (g:k2 cpscm_f_41 cpscm_l_42)
    (cpscm__trampoline
      ((lambda (g:k5 cpscm_loop_43)
         (cpscm__trampoline
           ((lambda (g:k9 cpscm_loop_43_tmp)
              (cpscm__trampoline
                ((lambda (g:ret-set!:10)
                   (cpscm__trampoline (g:k9 g:ret-set!:10)))
                 (set! cpscm_loop_43 cpscm_loop_43_tmp))))
            (lambda (g6)
              (cpscm__trampoline
                (cpscm_loop_43
                  (lambda (g:ret-_loop_43:7)
                    (cpscm__trampoline (g:k5 g:ret-_loop_43:7)))
                  cpscm_l_42
                  '())))
            (lambda (g:k12 cpscm_l_44 cpscm_res_45)
              (cpscm__trampoline
                (cpscmnull?
                  (lambda (g:ret-null?:15)
                    (cpscm__trampoline
                      ((lambda (g:ret-_20_boolean->combinator:14)
                         (cpscm__trampoline
                           (g:ret-_20_boolean->combinator:14
                             (lambda (g:ret-apply:13)
                               (cpscm__trampoline (g:k12 g:ret-apply:13)))
                             (lambda (g:k17)
                               (cpscm__trampoline
                                 (cpscmreverse!
                                   (lambda (g:ret-reverse!:18)
                                     (cpscm__trampoline (g:k17 g:ret-reverse!:18)))
                                   cpscm_res_45)))
                             (lambda (g:k20)
                               (cpscm__trampoline
                                 (cpscmcdr
                                   (lambda (g:ret-cdr:22)
                                     (cpscm__trampoline
                                       (cpscmcar
                                         (lambda (g:ret-car:25)
                                           (cpscm__trampoline
                                             (cpscm_f_41
                                               (lambda (g:ret-_f_41:24)
                                                 (cpscm__trampoline
                                                   (cpscmcons
                                                     (lambda (g:ret-cons:23)
                                                       (cpscm__trampoline
                                                         (cpscm_loop_43
                                                           (lambda (g:ret-_loop_43:21)
                                                             (cpscm__trampoline (g:k20 g:ret-_loop_43:21)))
                                                           g:ret-cdr:22
                                                           g:ret-cons:23)))
                                                     g:ret-_f_41:24
                                                     cpscm_res_45)))
                                               g:ret-car:25)))
                                         cpscm_l_44)))
                                   cpscm_l_44))))))
                       (cpscm_20_boolean->combinator g:ret-null?:15))))
                  cpscm_l_44))))))
       (lambda (g3) (cpscm__trampoline (g:k2 g3)))
       'undefined))))
(define cpscmfor-each
  (lambda (g:k27 cpscm_f_42 cpscm_l_43)
    (cpscm__trampoline
      ((lambda (g:k30 cpscm_loop_44)
         (cpscm__trampoline
           ((lambda (g:k34 cpscm_loop_44_tmp)
              (cpscm__trampoline
                ((lambda (g:ret-set!:35)
                   (cpscm__trampoline (g:k34 g:ret-set!:35)))
                 (set! cpscm_loop_44 cpscm_loop_44_tmp))))
            (lambda (g31)
              (cpscm__trampoline
                (cpscm_loop_44
                  (lambda (g:ret-_loop_44:32)
                    (cpscm__trampoline (g:k30 g:ret-_loop_44:32)))
                  cpscm_l_43
                  '())))
            (lambda (g:k37 cpscm_l_45)
              (cpscm__trampoline
                (cpscmnull?
                  (lambda (g:ret-null?:40)
                    (cpscm__trampoline
                      ((lambda (g:ret-_20_boolean->combinator:39)
                         (cpscm__trampoline
                           (g:ret-_20_boolean->combinator:39
                             (lambda (g:ret-apply:38)
                               (cpscm__trampoline (g:k37 g:ret-apply:38)))
                             (lambda (g:k42) (cpscm__trampoline (g:k42 #t)))
                             (lambda (g:k44)
                               (cpscm__trampoline
                                 (cpscmcar
                                   (lambda (g:ret-car:46)
                                     (cpscm__trampoline
                                       (cpscm_f_42
                                         (lambda (g:ret-_f_42:45)
                                           (cpscm__trampoline
                                             (cpscmcdr
                                               (lambda (g:ret-cdr:48)
                                                 (cpscm__trampoline
                                                   (cpscm_loop_44
                                                     (lambda (g:ret-_loop_44:47)
                                                       (cpscm__trampoline (g:k44 g:ret-_loop_44:47)))
                                                     g:ret-cdr:48)))
                                               cpscm_l_45)))
                                         g:ret-car:46)))
                                   cpscm_l_45))))))
                       (cpscm_20_boolean->combinator g:ret-null?:40))))
                  cpscm_l_45))))))
       (lambda (g28) (cpscm__trampoline (g:k27 g28)))
       'undefined))))
(define cpscmassoc
  (lambda (g:k50 cpscm_x_41 cpscm_lis_42 . cpscm_maybe-=_43)
    (cpscm__trampoline
      (cpscmnull?
        (lambda (g:ret-null?:54)
          (cpscm__trampoline
            ((lambda (g:ret-_20_boolean->combinator:53)
               (cpscm__trampoline
                 (g:ret-_20_boolean->combinator:53
                   (lambda (g:ret-apply:52)
                     (cpscm__trampoline
                       ((lambda (g:k56)
                          (cpscm__trampoline
                            (cpscmfind
                              (lambda (g:ret-find:57)
                                (cpscm__trampoline (g:k56 g:ret-find:57)))
                              (lambda (g:k59 cpscm_entry_45)
                                (cpscm__trampoline
                                  (cpscmcar
                                    (lambda (g:ret-car:61)
                                      (cpscm__trampoline
                                        (g:ret-apply:52
                                          (lambda (g:ret-_e_44:60)
                                            (cpscm__trampoline (g:k59 g:ret-_e_44:60)))
                                          cpscm_x_41
                                          g:ret-car:61)))
                                    cpscm_entry_45)))
                              cpscm_lis_42)))
                        (lambda (g51) (cpscm__trampoline (g:k50 g51))))))
                   (lambda (g:k63) (cpscm__trampoline (g:k63 cpscmequal?)))
                   (lambda (g:k65)
                     (cpscm__trampoline
                       (cpscmcar
                         (lambda (g:ret-car:66)
                           (cpscm__trampoline (g:k65 g:ret-car:66)))
                         cpscm_maybe-=_43))))))
             (cpscm_20_boolean->combinator g:ret-null?:54))))
        cpscm_maybe-=_43))))
(define cpscmassq
  (lambda (g:k68 cpscm_x_41 cpscm_l_42)
    (cpscm__trampoline
      (cpscmassoc
        (lambda (g:ret-assoc:69) (cpscm__trampoline (g:k68 g:ret-assoc:69)))
        cpscm_x_41
        cpscm_l_42
        cpscmeq?))))
(define cpscmassv
  (lambda (g:k71 cpscm_x_41 cpscm_l_42)
    (cpscm__trampoline
      (cpscmassoc
        (lambda (g:ret-assoc:72) (cpscm__trampoline (g:k71 g:ret-assoc:72)))
        cpscm_x_41
        cpscm_l_42
        cpscmeqv?))))
(define cpscmmember
  (lambda (g:k74 cpscm_x_41 cpscm_lis_42 . cpscm_maybe-=_43)
    (cpscm__trampoline
      (cpscmnull?
        (lambda (g:ret-null?:78)
          (cpscm__trampoline
            ((lambda (g:ret-_20_boolean->combinator:77)
               (cpscm__trampoline
                 (g:ret-_20_boolean->combinator:77
                   (lambda (g:ret-apply:76)
                     (cpscm__trampoline
                       ((lambda (g:k80)
                          (cpscm__trampoline
                            (cpscmfind-tail
                              (lambda (g:ret-find-tail:81)
                                (cpscm__trampoline (g:k80 g:ret-find-tail:81)))
                              (lambda (g:k83 cpscm_y_45)
                                (cpscm__trampoline
                                  (g:ret-apply:76
                                    (lambda (g:ret-_e_44:84)
                                      (cpscm__trampoline (g:k83 g:ret-_e_44:84)))
                                    cpscm_x_41
                                    cpscm_y_45)))
                              cpscm_lis_42)))
                        (lambda (g75) (cpscm__trampoline (g:k74 g75))))))
                   (lambda (g:k86) (cpscm__trampoline (g:k86 cpscmequal?)))
                   (lambda (g:k88)
                     (cpscm__trampoline
                       (cpscmcar
                         (lambda (g:ret-car:89)
                           (cpscm__trampoline (g:k88 g:ret-car:89)))
                         cpscm_maybe-=_43))))))
             (cpscm_20_boolean->combinator g:ret-null?:78))))
        cpscm_maybe-=_43))))
(define cpscmmemq
  (lambda (g:k91 cpscm_x_41 cpscm_l_42)
    (cpscm__trampoline
      (cpscmmember
        (lambda (g:ret-member:92) (cpscm__trampoline (g:k91 g:ret-member:92)))
        cpscm_x_41
        cpscm_l_42
        cpscmeq?))))
(define cpscmmemv
  (lambda (g:k94 cpscm_x_41 cpscm_l_42)
    (cpscm__trampoline
      (cpscmmember
        (lambda (g:ret-member:95) (cpscm__trampoline (g:k94 g:ret-member:95)))
        cpscm_x_41
        cpscm_l_42
        cpscmeqv?))))
(define cpscmappend! cpscmappend)
(define cpscmappend-reverse
  (lambda (g:k97 cpscm_rev-head_41 cpscm_tail_42)
    (cpscm__trampoline
      (cpscmreverse
        (lambda (g:ret-reverse:99)
          (cpscm__trampoline
            (cpscmappend
              (lambda (g:ret-append:98)
                (cpscm__trampoline (g:k97 g:ret-append:98)))
              g:ret-reverse:99
              cpscm_tail_42)))
        cpscm_rev-head_41))))
(define cpscmappend-reverse! cpscmappend-reverse)
(define cpscmreverse!
  (lambda (g:k101 cpscm_l_41)
    (cpscm__trampoline
      (cpscmreverse
        (lambda (g:ret-reverse:102)
          (cpscm__trampoline (g:k101 g:ret-reverse:102)))
        cpscm_l_41))))
(define cpscm_20_make-promise
  (lambda (g:k104 cpscm_proc_41)
    (cpscm__trampoline
      ((lambda (g:k107 cpscm_result-ready?_42 cpscm_result_43)
         (cpscm__trampoline
           (g:k107
             (lambda (g:k109)
               (cpscm__trampoline
                 ((lambda (g:ret-_20_boolean->combinator:111)
                    (cpscm__trampoline
                      (g:ret-_20_boolean->combinator:111
                        (lambda (g:ret-apply:110)
                          (cpscm__trampoline (g:k109 g:ret-apply:110)))
                        (lambda (g:k113)
                          (cpscm__trampoline (g:k113 cpscm_result_43)))
                        (lambda (g:k115)
                          (cpscm__trampoline
                            (cpscm_proc_41
                              (lambda (g:ret-_proc_41:117)
                                (cpscm__trampoline
                                  ((lambda (g:k119)
                                     (cpscm__trampoline
                                       ((lambda (g:ret-_20_boolean->combinator:121)
                                          (cpscm__trampoline
                                            (g:ret-_20_boolean->combinator:121
                                              (lambda (g:ret-apply:120)
                                                (cpscm__trampoline (g:k119 g:ret-apply:120)))
                                              (lambda (g:k123)
                                                (cpscm__trampoline (g:k123 cpscm_result_43)))
                                              (lambda (g:k125)
                                                (cpscm__trampoline
                                                  (begin
                                                    (set! cpscm_result-ready?_42 #t)
                                                    (set! cpscm_result_43 g:ret-_proc_41:117)
                                                    (cpscm__reduce-trampoline
                                                      (g:k125 cpscm_result_43))))))))
                                        (cpscm_20_boolean->combinator
                                          cpscm_result-ready?_42))))
                                   (lambda (g116) (cpscm__trampoline (g:k115 g116))))))))))))
                  (cpscm_20_boolean->combinator cpscm_result-ready?_42)))))))
       (lambda (g105) (cpscm__trampoline (g:k104 g105)))
       #f
       #f))))
(cpscm__drive
  ((lambda (g:k129)
     (cpscm__trampoline
       (cpscmlist
         (lambda (g:ret-list:131)
           (cpscm__trampoline
             ((lambda (g:ret-set!:130)
                (cpscm__trampoline (g:k129 g:ret-set!:130)))
              (set! cpscm__vals-marker g:ret-list:131))))
         'values)))
   (lambda (cpscmx) cpscmx)))
(define cpscm__pack-vals
  (lambda (g:k133 cpscm_things_41)
    (cpscm__trampoline
      (cpscmnull?
        (lambda (g:ret-null?:137)
          (cpscm__trampoline
            ((lambda (g:k145)
               (cpscm__trampoline
                 ((lambda (g:ret-_20_boolean->combinator:147)
                    (cpscm__trampoline
                      (g:ret-_20_boolean->combinator:147
                        (lambda (g:ret-apply:146)
                          (cpscm__trampoline (g:k145 g:ret-apply:146)))
                        (lambda (g:k149)
                          (cpscm__trampoline (g:k149 g:ret-null?:137)))
                        (lambda (g:k151)
                          (cpscm__trampoline
                            (cpscmcdr
                              (lambda (g:ret-cdr:154)
                                (cpscm__trampoline
                                  (cpscmnull?
                                    (lambda (g:ret-null?:153)
                                      (cpscm__trampoline
                                        (cpscmnot
                                          (lambda (g:ret-not:152)
                                            (cpscm__trampoline (g:k151 g:ret-not:152)))
                                          g:ret-null?:153)))
                                    g:ret-cdr:154)))
                              cpscm_things_41))))))
                  (cpscm_20_boolean->combinator g:ret-null?:137))))
             (lambda (g136)
               (cpscm__trampoline
                 ((lambda (g:ret-_20_boolean->combinator:135)
                    (cpscm__trampoline
                      (g:ret-_20_boolean->combinator:135
                        (lambda (g:ret-apply:134)
                          (cpscm__trampoline (g:k133 g:ret-apply:134)))
                        (lambda (g:k139)
                          (cpscm__trampoline
                            (cpscmcons
                              (lambda (g:ret-cons:140)
                                (cpscm__trampoline (g:k139 g:ret-cons:140)))
                              cpscm__vals-marker
                              cpscm_things_41)))
                        (lambda (g:k142)
                          (cpscm__trampoline
                            (cpscmcar
                              (lambda (g:ret-car:143)
                                (cpscm__trampoline (g:k142 g:ret-car:143)))
                              cpscm_things_41))))))
                  (cpscm_20_boolean->combinator g136)))))))
        cpscm_things_41))))
(define cpscm__unpack-vals
  (lambda (g:k156 cpscm_vals_41)
    (cpscm__trampoline
      (cpscmpair?
        (lambda (g:ret-pair?:161)
          (cpscm__trampoline
            ((lambda (g:ret-_20_boolean->combinator:160)
               (cpscm__trampoline
                 (g:ret-_20_boolean->combinator:160
                   (lambda (g:ret-apply:159)
                     (cpscm__trampoline
                       ((lambda (g:ret-_20_boolean->combinator:158)
                          (cpscm__trampoline
                            (g:ret-_20_boolean->combinator:158
                              (lambda (g:ret-apply:157)
                                (cpscm__trampoline (g:k156 g:ret-apply:157)))
                              (lambda (g:k163)
                                (cpscm__trampoline
                                  (cpscmcdr
                                    (lambda (g:ret-cdr:164)
                                      (cpscm__trampoline (g:k163 g:ret-cdr:164)))
                                    cpscm_vals_41)))
                              (lambda (g:k166)
                                (cpscm__trampoline
                                  (cpscmlist
                                    (lambda (g:ret-list:167)
                                      (cpscm__trampoline (g:k166 g:ret-list:167)))
                                    cpscm_vals_41))))))
                        (cpscm_20_boolean->combinator g:ret-apply:159))))
                   (lambda (g:k169)
                     (cpscm__trampoline
                       (cpscmcar
                         (lambda (g:ret-car:171)
                           (cpscm__trampoline
                             (cpscmeq?
                               (lambda (g:ret-eq?:170)
                                 (cpscm__trampoline (g:k169 g:ret-eq?:170)))
                               g:ret-car:171
                               cpscm__vals-marker)))
                         cpscm_vals_41)))
                   (lambda (g:k173) (cpscm__trampoline (g:k173 #f))))))
             (cpscm_20_boolean->combinator g:ret-pair?:161))))
        cpscm_vals_41))))
(define cpscm__switch-winders
  (lambda (g:k175 cpscm_ccwinders_41)
    (cpscm__trampoline
      ((lambda (g:k178 cpscm_switch_42 cpscm_loop_43)
         (cpscm__trampoline
           ((lambda (g:k184 cpscm_switch_42_tmp cpscm_loop_43_tmp)
              (cpscm__trampoline
                (begin
                  (set! cpscm_switch_42 cpscm_switch_42_tmp)
                  (cpscm__reduce-trampoline
                    ((lambda (g:ret-set!:186)
                       (cpscm__trampoline (g:k184 g:ret-set!:186)))
                     (set! cpscm_loop_43 cpscm_loop_43_tmp))))))
            (lambda (g179)
              (cpscm__trampoline
                (cpscmreverse
                  (lambda (g:ret-reverse:181)
                    (cpscm__trampoline
                      (cpscmreverse
                        (lambda (g:ret-reverse:182)
                          (cpscm__trampoline
                            (cpscm_loop_43
                              (lambda (g:ret-_loop_43:180)
                                (cpscm__trampoline (g:k178 g:ret-_loop_43:180)))
                              g:ret-reverse:181
                              g:ret-reverse:182)))
                        cpscm_ccwinders_41)))
                  cpscm__winders)))
            (lambda (g:k188 cpscm_a_44 cpscm_b_45)
              (cpscm__trampoline
                ((lambda (g:k191 cpscm_run-all_46)
                   (cpscm__trampoline
                     ((lambda (g:k199 cpscm_run-all_46_tmp)
                        (cpscm__trampoline
                          ((lambda (g:ret-set!:200)
                             (cpscm__trampoline (g:k199 g:ret-set!:200)))
                           (set! cpscm_run-all_46 cpscm_run-all_46_tmp))))
                      (lambda (g192)
                        (cpscm__trampoline
                          (cpscmmap
                            (lambda (g:ret-map:195)
                              (cpscm__trampoline
                                (cpscmmap
                                  (lambda (g:ret-map:196)
                                    (cpscm__trampoline
                                      (cpscmappend-reverse!
                                        (lambda (g:ret-append-reverse!:194)
                                          (cpscm__trampoline
                                            (cpscm_run-all_46
                                              (lambda (g:ret-_run-all_46:193)
                                                (cpscm__trampoline
                                                  ((lambda (g:ret-set!:197)
                                                     (cpscm__trampoline (g:k191 g:ret-set!:197)))
                                                   (set! cpscm__winders cpscm_ccwinders_41))))
                                              g:ret-append-reverse!:194)))
                                        g:ret-map:195
                                        g:ret-map:196)))
                                  cpscmcar
                                  cpscm_b_45)))
                            cpscmcdr
                            cpscm_a_44)))
                      (lambda (g:k202 cpscm_to-apply_47)
                        (cpscm__trampoline
                          (cpscmnull?
                            (lambda (g:ret-null?:205)
                              (cpscm__trampoline
                                ((lambda (g:ret-_20_boolean->combinator:204)
                                   (cpscm__trampoline
                                     (g:ret-_20_boolean->combinator:204
                                       (lambda (g:ret-apply:203)
                                         (cpscm__trampoline (g:k202 g:ret-apply:203)))
                                       (lambda (g:k207) (cpscm__trampoline (g:k207 #t)))
                                       (lambda (g:k209)
                                         (cpscm__trampoline
                                           (cpscmcar
                                             (lambda (g:ret-car:211)
                                               (cpscm__trampoline
                                                 (g:ret-car:211
                                                   (lambda (g:ret-apply:210)
                                                     (cpscm__trampoline
                                                       (cpscmcdr
                                                         (lambda (g:ret-cdr:213)
                                                           (cpscm__trampoline
                                                             (cpscm_run-all_46
                                                               (lambda (g:ret-_run-all_46:212)
                                                                 (cpscm__trampoline
                                                                   (g:k209 g:ret-_run-all_46:212)))
                                                               g:ret-cdr:213)))
                                                         cpscm_to-apply_47))))))
                                             cpscm_to-apply_47))))))
                                 (cpscm_20_boolean->combinator g:ret-null?:205))))
                            cpscm_to-apply_47))))))
                 (lambda (g189) (cpscm__trampoline (g:k188 g189)))
                 'undefined)))
            (lambda (g:k215 cpscm_a_44 cpscm_b_45)
              (cpscm__trampoline
                (cpscmnull?
                  (lambda (g:ret-null?:219)
                    (cpscm__trampoline
                      ((lambda (g:k229)
                         (cpscm__trampoline
                           ((lambda (g:ret-_20_boolean->combinator:231)
                              (cpscm__trampoline
                                (g:ret-_20_boolean->combinator:231
                                  (lambda (g:ret-apply:230)
                                    (cpscm__trampoline (g:k229 g:ret-apply:230)))
                                  (lambda (g:k233)
                                    (cpscm__trampoline (g:k233 g:ret-null?:219)))
                                  (lambda (g:k235)
                                    (cpscm__trampoline
                                      (cpscmnull?
                                        (lambda (g:ret-null?:237)
                                          (cpscm__trampoline
                                            ((lambda (g:k239)
                                               (cpscm__trampoline
                                                 ((lambda (g:ret-_20_boolean->combinator:241)
                                                    (cpscm__trampoline
                                                      (g:ret-_20_boolean->combinator:241
                                                        (lambda (g:ret-apply:240)
                                                          (cpscm__trampoline (g:k239 g:ret-apply:240)))
                                                        (lambda (g:k243)
                                                          (cpscm__trampoline (g:k243 g:ret-null?:237)))
                                                        (lambda (g:k245)
                                                          (cpscm__trampoline
                                                            (cpscmcar
                                                              (lambda (g:ret-car:248)
                                                                (cpscm__trampoline
                                                                  (cpscmcar
                                                                    (lambda (g:ret-car:249)
                                                                      (cpscm__trampoline
                                                                        (cpscmeq?
                                                                          (lambda (g:ret-eq?:247)
                                                                            (cpscm__trampoline
                                                                              (cpscmnot
                                                                                (lambda (g:ret-not:246)
                                                                                  (cpscm__trampoline (g:k245 g:ret-not:246)))
                                                                                g:ret-eq?:247)))
                                                                          g:ret-car:248
                                                                          g:ret-car:249)))
                                                                    cpscm_b_45)))
                                                              cpscm_a_44))))))
                                                  (cpscm_20_boolean->combinator g:ret-null?:237))))
                                             (lambda (g236) (cpscm__trampoline (g:k235 g236))))))
                                        cpscm_b_45))))))
                            (cpscm_20_boolean->combinator g:ret-null?:219))))
                       (lambda (g218)
                         (cpscm__trampoline
                           ((lambda (g:ret-_20_boolean->combinator:217)
                              (cpscm__trampoline
                                (g:ret-_20_boolean->combinator:217
                                  (lambda (g:ret-apply:216)
                                    (cpscm__trampoline (g:k215 g:ret-apply:216)))
                                  (lambda (g:k221)
                                    (cpscm__trampoline
                                      (cpscm_switch_42
                                        (lambda (g:ret-_switch_42:222)
                                          (cpscm__trampoline (g:k221 g:ret-_switch_42:222)))
                                        cpscm_a_44
                                        cpscm_b_45)))
                                  (lambda (g:k224)
                                    (cpscm__trampoline
                                      (cpscmcdr
                                        (lambda (g:ret-cdr:226)
                                          (cpscm__trampoline
                                            (cpscmcdr
                                              (lambda (g:ret-cdr:227)
                                                (cpscm__trampoline
                                                  (cpscm_loop_43
                                                    (lambda (g:ret-_loop_43:225)
                                                      (cpscm__trampoline (g:k224 g:ret-_loop_43:225)))
                                                    g:ret-cdr:226
                                                    g:ret-cdr:227)))
                                              cpscm_b_45)))
                                        cpscm_a_44))))))
                            (cpscm_20_boolean->combinator g218)))))))
                  cpscm_a_44))))))
       (lambda (g176) (cpscm__trampoline (g:k175 g176)))
       'undefined
       'undefined))))
(define cpscmdynamic-wind
  (lambda (g:k251 cpscm_before_41 cpscm_thunk_42 cpscm_after_43)
    (cpscm__trampoline
      ((lambda (g:k254 cpscm_result_44)
         (cpscm__trampoline
           (begin
             (set! cpscm_result_44 #f)
             (cpscm__reduce-trampoline
               (cpscm_before_41
                 (lambda (g:ret-_before_41:256)
                   (cpscm__trampoline
                     (cpscmcons
                       (lambda (g:ret-cons:259)
                         (cpscm__trampoline
                           (cpscmcons
                             (lambda (g:ret-cons:258)
                               (cpscm__trampoline
                                 (begin
                                   (set! cpscm__winders g:ret-cons:258)
                                   (cpscm__reduce-trampoline
                                     (cpscm_thunk_42
                                       (lambda (g:ret-_thunk_42:261)
                                         (cpscm__trampoline
                                           (begin
                                             (set! cpscm_result_44 g:ret-_thunk_42:261)
                                             (cpscm__reduce-trampoline
                                               (cpscmcdr
                                                 (lambda (g:ret-cdr:263)
                                                   (cpscm__trampoline
                                                     (begin
                                                       (set! cpscm__winders g:ret-cdr:263)
                                                       (cpscm__reduce-trampoline
                                                         (cpscm_after_43
                                                           (lambda (g:ret-_after_43:264)
                                                             (cpscm__trampoline (g:k254 cpscm_result_44))))))))
                                                 cpscm__winders))))))))))
                             g:ret-cons:259
                             cpscm__winders)))
                       cpscm_before_41
                       cpscm_after_43))))))))
       (lambda (g252) (cpscm__trampoline (g:k251 g252)))
       'undefined))))
(define cpscmwith-failure-continuation
  (lambda (g:k266 cpscm_hnd_41 cpscm_thunk_42)
    (cpscm__trampoline
      ((lambda (g:k269 cpscm_old-hnd_43 cpscm_new-hnd_44)
         (cpscm__trampoline
           (cpscmcurrent-error-handler
             (lambda (g:ret-current-error-handler:271)
               (cpscm__trampoline
                 ((lambda (g:k275 cpscm_new-hnd_44_tmp)
                    (cpscm__trampoline
                      (begin
                        (set! cpscm_old-hnd_43 g:ret-current-error-handler:271)
                        (cpscm__reduce-trampoline
                          ((lambda (g:ret-set!:277)
                             (cpscm__trampoline (g:k275 g:ret-set!:277)))
                           (set! cpscm_new-hnd_44 cpscm_new-hnd_44_tmp))))))
                  (lambda (g270)
                    (cpscm__trampoline
                      (cpscmcurrent-error-handler
                        (lambda (g:ret-current-error-handler:272)
                          (cpscm__trampoline
                            (cpscm_thunk_42
                              (lambda (g:ret-_thunk_42:273)
                                (cpscm__trampoline (g:k269 g:ret-_thunk_42:273))))))
                        cpscm_new-hnd_44)))
                  (lambda (g:k279 cpscm_e_45 cpscm_ek_46)
                    (cpscm__trampoline
                      (cpscmcurrent-error-handler
                        (lambda (g:ret-current-error-handler:280)
                          (cpscm__trampoline
                            (cpscm_hnd_41
                              (lambda (g:ret-_hnd_41:281)
                                (cpscm__trampoline (g:k279 g:ret-_hnd_41:281)))
                              cpscm_e_45
                              cpscm_ek_46)))
                        cpscm_old-hnd_43)))))))))
       (lambda (g267) (cpscm__trampoline (g:k266 g267)))
       'undefined
       'undefined))))
(define cpscmwith/fc cpscmwith-failure-continuation)
(define cpscm__default-err-hnd
  (lambda (g:k283 cpscm_e_41 cpscm_ek_42)
    (cpscm__trampoline
      (cpscmdisplay
        (lambda (g:ret-display:284)
          (cpscm__trampoline
            (cpscmdisplay
              (lambda (g:ret-display:285)
                (cpscm__trampoline
                  (cpscmnewline
                    (lambda (g:ret-newline:286)
                      (cpscm__trampoline (g:k283 g:ret-newline:286))))))
              cpscm_e_41)))
        "Error: "))))
(cpscm__drive
  ((lambda (g:k288)
     (cpscm__trampoline
       ((lambda (g:ret-set!:289) (cpscm__trampoline (g:k288 g:ret-set!:289)))
        (set! cpscm__err-hnd cpscm__default-err-hnd))))
   (lambda (cpscmx) cpscmx)))
(define cpscmcurrent-error-handler
  (lambda (g:k291 . cpscm_hnd_41)
    (cpscm__trampoline
      (cpscmnull?
        (lambda (g:ret-null?:294)
          (cpscm__trampoline
            ((lambda (g:ret-_20_boolean->combinator:293)
               (cpscm__trampoline
                 (g:ret-_20_boolean->combinator:293
                   (lambda (g:ret-apply:292)
                     (cpscm__trampoline (g:k291 g:ret-apply:292)))
                   (lambda (g:k296)
                     (cpscm__trampoline (g:k296 cpscm__err-hnd)))
                   (lambda (g:k298)
                     (cpscm__trampoline
                       (cpscmcar
                         (lambda (g:ret-car:300)
                           (cpscm__trampoline
                             ((lambda (g:ret-set!:299)
                                (cpscm__trampoline (g:k298 g:ret-set!:299)))
                              (set! cpscm__err-hnd g:ret-car:300))))
                         cpscm_hnd_41))))))
             (cpscm_20_boolean->combinator g:ret-null?:294))))
        cpscm_hnd_41))))
(cpscm__drive
  ((lambda (g:k302)
     (cpscm__trampoline
       (cpscmcall-with-current-continuation
         (lambda (g:ret-call-with-current-continuation:303)
           (cpscm__trampoline
             (g:k302 g:ret-call-with-current-continuation:303)))
         (lambda (g:k305 cpscm_exit_41)
           (cpscm__trampoline
             (cpscmcall-with-values
               (lambda (g:ret-call-with-values:306)
                 (cpscm__trampoline (g:k305 g:ret-call-with-values:306)))
               (lambda (g:k308)
                 (cpscm__trampoline
                   (cpscmcall-with-current-continuation
                     (lambda (g:ret-call-with-current-continuation:309)
                       (cpscm__trampoline
                         (g:k308 g:ret-call-with-current-continuation:309)))
                     (lambda (g:k311 cpscm_cc_42)
                       (cpscm__trampoline
                         (begin
                           (set! cpscm__err-cont cpscm_cc_42)
                           (cpscm__reduce-trampoline
                             (cpscm_exit_41
                               (lambda (g:ret-_exit_41:313)
                                 (cpscm__trampoline (g:k311 g:ret-_exit_41:313)))
                               #t))))))))
               (lambda (g:k315 cpscm_e_42 cpscm_ek_43)
                 (cpscm__trampoline
                   (cpscmcurrent-error-handler
                     (lambda (g:ret-current-error-handler:317)
                       (cpscm__trampoline
                         (g:ret-current-error-handler:317
                           (lambda (g:ret-apply:316)
                             (cpscm__trampoline (g:k315 g:ret-apply:316)))
                           cpscm_e_42
                           cpscm_ek_43))))))))))))
   (lambda (cpscmx) cpscmx)))
(define cpscmerror
  (lambda (g:k319 cpscm_e_41)
    (cpscm__trampoline
      (cpscmcall-with-current-continuation
        (lambda (g:ret-call-with-current-continuation:320)
          (cpscm__trampoline
            (g:k319 g:ret-call-with-current-continuation:320)))
        (lambda (g:k322 cpscm_ek_42)
          (cpscm__trampoline
            (cpscm__err-cont
              (lambda (g:ret-%cpscm:err-cont:323)
                (cpscm__trampoline (g:k322 g:ret-%cpscm:err-cont:323)))
              cpscm_e_41
              cpscm_ek_42)))))))
(define cpscmcall/cc cpscmcall-with-current-continuation)
