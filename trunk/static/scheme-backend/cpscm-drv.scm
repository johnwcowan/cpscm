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
               ((lambda (g_ccwinders1) (set! cpscmccwinders g_ccwinders1))
                cpscm__winders))
             (cpscmf
               cpscmk
               (lambda (cpscm_ . cpscmxs)
                 (cpscm__trampoline
                   (cpscm__switch-winders
                     (lambda (cpscm_)
                       (cpscm__trampoline (cpscm__pack-vals cpscmk cpscmxs)))
                     cpscmccwinders)))))))
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
  (lambda (gk2 cpscm_f_41 cpscm_l_42)
    (cpscm__trampoline
      ((lambda (gk5 cpscm_loop_43)
         (cpscm__trampoline
           ((lambda (gk9 cpscm_loop_43_tmp)
              (cpscm__trampoline
                ((lambda (gretset!_10) (cpscm__trampoline (gk9 gretset!_10)))
                 (set! cpscm_loop_43 cpscm_loop_43_tmp))))
            (lambda (g6)
              (cpscm__trampoline
                (cpscm_loop_43
                  (lambda (gret_loop_43_7)
                    (cpscm__trampoline (gk5 gret_loop_43_7)))
                  cpscm_l_42
                  '())))
            (lambda (gk12 cpscm_l_44 cpscm_res_45)
              (cpscm__trampoline
                (cpscmnull?
                  (lambda (gretnull?_15)
                    (cpscm__trampoline
                      ((lambda (gret_20_boolean->combinator_14)
                         (cpscm__trampoline
                           (gret_20_boolean->combinator_14
                             (lambda (gretapply_13)
                               (cpscm__trampoline (gk12 gretapply_13)))
                             (lambda (gk17)
                               (cpscm__trampoline
                                 (cpscmreverse!
                                   (lambda (gretreverse!_18)
                                     (cpscm__trampoline (gk17 gretreverse!_18)))
                                   cpscm_res_45)))
                             (lambda (gk20)
                               (cpscm__trampoline
                                 (cpscmcdr
                                   (lambda (gretcdr_22)
                                     (cpscm__trampoline
                                       (cpscmcar
                                         (lambda (gretcar_25)
                                           (cpscm__trampoline
                                             (cpscm_f_41
                                               (lambda (gret_f_41_24)
                                                 (cpscm__trampoline
                                                   (cpscmcons
                                                     (lambda (gretcons_23)
                                                       (cpscm__trampoline
                                                         (cpscm_loop_43
                                                           (lambda (gret_loop_43_21)
                                                             (cpscm__trampoline (gk20 gret_loop_43_21)))
                                                           gretcdr_22
                                                           gretcons_23)))
                                                     gret_f_41_24
                                                     cpscm_res_45)))
                                               gretcar_25)))
                                         cpscm_l_44)))
                                   cpscm_l_44))))))
                       (cpscm_20_boolean->combinator gretnull?_15))))
                  cpscm_l_44))))))
       (lambda (g3) (cpscm__trampoline (gk2 g3)))
       'undefined))))
(define cpscmfor-each
  (lambda (gk27 cpscm_f_41 cpscm_l_42)
    (cpscm__trampoline
      ((lambda (gk30 cpscm_loop_43)
         (cpscm__trampoline
           ((lambda (gk34 cpscm_loop_43_tmp)
              (cpscm__trampoline
                ((lambda (gretset!_35) (cpscm__trampoline (gk34 gretset!_35)))
                 (set! cpscm_loop_43 cpscm_loop_43_tmp))))
            (lambda (g31)
              (cpscm__trampoline
                (cpscm_loop_43
                  (lambda (gret_loop_43_32)
                    (cpscm__trampoline (gk30 gret_loop_43_32)))
                  cpscm_l_42)))
            (lambda (gk37 cpscm_l_44)
              (cpscm__trampoline
                (cpscmnull?
                  (lambda (gretnull?_40)
                    (cpscm__trampoline
                      ((lambda (gret_20_boolean->combinator_39)
                         (cpscm__trampoline
                           (gret_20_boolean->combinator_39
                             (lambda (gretapply_38)
                               (cpscm__trampoline (gk37 gretapply_38)))
                             (lambda (gk42) (cpscm__trampoline (gk42 #t)))
                             (lambda (gk44)
                               (cpscm__trampoline
                                 (cpscmcar
                                   (lambda (gretcar_46)
                                     (cpscm__trampoline
                                       (cpscm_f_41
                                         (lambda (gret_f_41_45)
                                           (cpscm__trampoline
                                             (cpscmcdr
                                               (lambda (gretcdr_48)
                                                 (cpscm__trampoline
                                                   (cpscm_loop_43
                                                     (lambda (gret_loop_43_47)
                                                       (cpscm__trampoline (gk44 gret_loop_43_47)))
                                                     gretcdr_48)))
                                               cpscm_l_44)))
                                         gretcar_46)))
                                   cpscm_l_44))))))
                       (cpscm_20_boolean->combinator gretnull?_40))))
                  cpscm_l_44))))))
       (lambda (g28) (cpscm__trampoline (gk27 g28)))
       'undefined))))
(define cpscmassoc
  (lambda (gk50 cpscm_x_41 cpscm_lis_42 . cpscm_maybe-=_43)
    (cpscm__trampoline
      (cpscmnull?
        (lambda (gretnull?_54)
          (cpscm__trampoline
            ((lambda (gret_20_boolean->combinator_53)
               (cpscm__trampoline
                 (gret_20_boolean->combinator_53
                   (lambda (gretapply_52)
                     (cpscm__trampoline
                       ((lambda (gk56 cpscm_e_44)
                          (cpscm__trampoline
                            (cpscmfind
                              (lambda (gretfind_57)
                                (cpscm__trampoline (gk56 gretfind_57)))
                              (lambda (gk59 cpscm_entry_45)
                                (cpscm__trampoline
                                  (cpscmcar
                                    (lambda (gretcar_61)
                                      (cpscm__trampoline
                                        (cpscm_e_44
                                          (lambda (gret_e_44_60)
                                            (cpscm__trampoline (gk59 gret_e_44_60)))
                                          cpscm_x_41
                                          gretcar_61)))
                                    cpscm_entry_45)))
                              cpscm_lis_42)))
                        (lambda (g51) (cpscm__trampoline (gk50 g51)))
                        gretapply_52)))
                   (lambda (gk63) (cpscm__trampoline (gk63 cpscmequal?)))
                   (lambda (gk65)
                     (cpscm__trampoline
                       (cpscmcar
                         (lambda (gretcar_66)
                           (cpscm__trampoline (gk65 gretcar_66)))
                         cpscm_maybe-=_43))))))
             (cpscm_20_boolean->combinator gretnull?_54))))
        cpscm_maybe-=_43))))
(define cpscmassq
  (lambda (gk68 cpscm_x_41 cpscm_l_42)
    (cpscm__trampoline
      (cpscmassoc
        (lambda (gretassoc_69) (cpscm__trampoline (gk68 gretassoc_69)))
        cpscm_x_41
        cpscm_l_42
        cpscmeq?))))
(define cpscmassv
  (lambda (gk71 cpscm_x_41 cpscm_l_42)
    (cpscm__trampoline
      (cpscmassoc
        (lambda (gretassoc_72) (cpscm__trampoline (gk71 gretassoc_72)))
        cpscm_x_41
        cpscm_l_42
        cpscmeqv?))))
(define cpscmmember
  (lambda (gk74 cpscm_x_41 cpscm_lis_42 . cpscm_maybe-=_43)
    (cpscm__trampoline
      (cpscmnull?
        (lambda (gretnull?_78)
          (cpscm__trampoline
            ((lambda (gret_20_boolean->combinator_77)
               (cpscm__trampoline
                 (gret_20_boolean->combinator_77
                   (lambda (gretapply_76)
                     (cpscm__trampoline
                       ((lambda (gk80 cpscm_e_44)
                          (cpscm__trampoline
                            (cpscmfind-tail
                              (lambda (gretfind-tail_81)
                                (cpscm__trampoline (gk80 gretfind-tail_81)))
                              (lambda (gk83 cpscm_y_45)
                                (cpscm__trampoline
                                  (cpscm_e_44
                                    (lambda (gret_e_44_84)
                                      (cpscm__trampoline (gk83 gret_e_44_84)))
                                    cpscm_x_41
                                    cpscm_y_45)))
                              cpscm_lis_42)))
                        (lambda (g75) (cpscm__trampoline (gk74 g75)))
                        gretapply_76)))
                   (lambda (gk86) (cpscm__trampoline (gk86 cpscmequal?)))
                   (lambda (gk88)
                     (cpscm__trampoline
                       (cpscmcar
                         (lambda (gretcar_89)
                           (cpscm__trampoline (gk88 gretcar_89)))
                         cpscm_maybe-=_43))))))
             (cpscm_20_boolean->combinator gretnull?_78))))
        cpscm_maybe-=_43))))
(define cpscmmemq
  (lambda (gk91 cpscm_x_41 cpscm_l_42)
    (cpscm__trampoline
      (cpscmmember
        (lambda (gretmember_92) (cpscm__trampoline (gk91 gretmember_92)))
        cpscm_x_41
        cpscm_l_42
        cpscmeq?))))
(define cpscmmemv
  (lambda (gk94 cpscm_x_41 cpscm_l_42)
    (cpscm__trampoline
      (cpscmmember
        (lambda (gretmember_95) (cpscm__trampoline (gk94 gretmember_95)))
        cpscm_x_41
        cpscm_l_42
        cpscmeqv?))))
(define cpscmappend! cpscmappend)
(define cpscmappend-reverse
  (lambda (gk97 cpscm_rev-head_41 cpscm_tail_42)
    (cpscm__trampoline
      (cpscmreverse
        (lambda (gretreverse_99)
          (cpscm__trampoline
            (cpscmappend
              (lambda (gretappend_98) (cpscm__trampoline (gk97 gretappend_98)))
              gretreverse_99
              cpscm_tail_42)))
        cpscm_rev-head_41))))
(define cpscmappend-reverse! cpscmappend-reverse)
(define cpscmreverse!
  (lambda (gk101 cpscm_l_41)
    (cpscm__trampoline
      (cpscmreverse
        (lambda (gretreverse_102) (cpscm__trampoline (gk101 gretreverse_102)))
        cpscm_l_41))))
(define cpscm_20_make-promise
  (lambda (gk104 cpscm_proc_41)
    (cpscm__trampoline
      ((lambda (gk107 cpscm_result-ready?_42 cpscm_result_43)
         (cpscm__trampoline
           (gk107 (lambda (gk109)
                    (cpscm__trampoline
                      ((lambda (gret_20_boolean->combinator_111)
                         (cpscm__trampoline
                           (gret_20_boolean->combinator_111
                             (lambda (gretapply_110)
                               (cpscm__trampoline (gk109 gretapply_110)))
                             (lambda (gk113)
                               (cpscm__trampoline (gk113 cpscm_result_43)))
                             (lambda (gk115)
                               (cpscm__trampoline
                                 (cpscm_proc_41
                                   (lambda (gret_proc_41_117)
                                     (cpscm__trampoline
                                       ((lambda (gk119 cpscm_x_44)
                                          (cpscm__trampoline
                                            ((lambda (gret_20_boolean->combinator_121)
                                               (cpscm__trampoline
                                                 (gret_20_boolean->combinator_121
                                                   (lambda (gretapply_120)
                                                     (cpscm__trampoline (gk119 gretapply_120)))
                                                   (lambda (gk123)
                                                     (cpscm__trampoline (gk123 cpscm_result_43)))
                                                   (lambda (gk125)
                                                     (cpscm__trampoline
                                                       (begin
                                                         (set! cpscm_result-ready?_42 #t)
                                                         (set! cpscm_result_43 cpscm_x_44)
                                                         (gk125 cpscm_result_43)))))))
                                             (cpscm_20_boolean->combinator
                                               cpscm_result-ready?_42))))
                                        (lambda (g116) (cpscm__trampoline (gk115 g116)))
                                        gret_proc_41_117)))))))))
                       (cpscm_20_boolean->combinator
                         cpscm_result-ready?_42)))))))
       (lambda (g105) (cpscm__trampoline (gk104 g105)))
       #f
       #f))))
(cpscm__drive
  ((lambda (gk129)
     (cpscm__trampoline
       (cpscmlist
         (lambda (gretlist_131)
           (cpscm__trampoline
             ((lambda (gretset!_130) (cpscm__trampoline (gk129 gretset!_130)))
              (set! cpscm__vals-marker gretlist_131))))
         'values)))
   (lambda (cpscmx) cpscmx)))
(define cpscm__pack-vals
  (lambda (gk133 cpscm_things_41)
    (cpscm__trampoline
      (cpscmnull?
        (lambda (gretnull?_137)
          (cpscm__trampoline
            ((lambda (gk145 cpscm_x_42)
               (cpscm__trampoline
                 ((lambda (gret_20_boolean->combinator_147)
                    (cpscm__trampoline
                      (gret_20_boolean->combinator_147
                        (lambda (gretapply_146)
                          (cpscm__trampoline (gk145 gretapply_146)))
                        (lambda (gk149) (cpscm__trampoline (gk149 cpscm_x_42)))
                        (lambda (gk151)
                          (cpscm__trampoline
                            (cpscmcdr
                              (lambda (gretcdr_154)
                                (cpscm__trampoline
                                  (cpscmnull?
                                    (lambda (gretnull?_153)
                                      (cpscm__trampoline
                                        (cpscmnot
                                          (lambda (gretnot_152)
                                            (cpscm__trampoline (gk151 gretnot_152)))
                                          gretnull?_153)))
                                    gretcdr_154)))
                              cpscm_things_41))))))
                  (cpscm_20_boolean->combinator cpscm_x_42))))
             (lambda (g136)
               (cpscm__trampoline
                 ((lambda (gret_20_boolean->combinator_135)
                    (cpscm__trampoline
                      (gret_20_boolean->combinator_135
                        (lambda (gretapply_134)
                          (cpscm__trampoline (gk133 gretapply_134)))
                        (lambda (gk139)
                          (cpscm__trampoline
                            (cpscmcons
                              (lambda (gretcons_140)
                                (cpscm__trampoline (gk139 gretcons_140)))
                              cpscm__vals-marker
                              cpscm_things_41)))
                        (lambda (gk142)
                          (cpscm__trampoline
                            (cpscmcar
                              (lambda (gretcar_143)
                                (cpscm__trampoline (gk142 gretcar_143)))
                              cpscm_things_41))))))
                  (cpscm_20_boolean->combinator g136))))
             gretnull?_137)))
        cpscm_things_41))))
(define cpscm__unpack-vals
  (lambda (gk156 cpscm_vals_41)
    (cpscm__trampoline
      (cpscmpair?
        (lambda (gretpair?_161)
          (cpscm__trampoline
            ((lambda (gret_20_boolean->combinator_160)
               (cpscm__trampoline
                 (gret_20_boolean->combinator_160
                   (lambda (gretapply_159)
                     (cpscm__trampoline
                       ((lambda (gret_20_boolean->combinator_158)
                          (cpscm__trampoline
                            (gret_20_boolean->combinator_158
                              (lambda (gretapply_157)
                                (cpscm__trampoline (gk156 gretapply_157)))
                              (lambda (gk163)
                                (cpscm__trampoline
                                  (cpscmcdr
                                    (lambda (gretcdr_164)
                                      (cpscm__trampoline (gk163 gretcdr_164)))
                                    cpscm_vals_41)))
                              (lambda (gk166)
                                (cpscm__trampoline
                                  (cpscmlist
                                    (lambda (gretlist_167)
                                      (cpscm__trampoline (gk166 gretlist_167)))
                                    cpscm_vals_41))))))
                        (cpscm_20_boolean->combinator gretapply_159))))
                   (lambda (gk169)
                     (cpscm__trampoline
                       (cpscmcar
                         (lambda (gretcar_171)
                           (cpscm__trampoline
                             (cpscmeq?
                               (lambda (greteq?_170)
                                 (cpscm__trampoline (gk169 greteq?_170)))
                               gretcar_171
                               cpscm__vals-marker)))
                         cpscm_vals_41)))
                   (lambda (gk173) (cpscm__trampoline (gk173 #f))))))
             (cpscm_20_boolean->combinator gretpair?_161))))
        cpscm_vals_41))))
(define cpscm__switch-winders
  (lambda (gk175 cpscm_ccwinders_41)
    (cpscm__trampoline
      ((lambda (gk178 cpscm_switch_42 cpscm_loop_43)
         (cpscm__trampoline
           ((lambda (gk184 cpscm_switch_42_tmp cpscm_loop_43_tmp)
              (cpscm__trampoline
                (begin
                  (set! cpscm_switch_42 cpscm_switch_42_tmp)
                  ((lambda (gretset!_186)
                     (cpscm__trampoline (gk184 gretset!_186)))
                   (set! cpscm_loop_43 cpscm_loop_43_tmp)))))
            (lambda (g179)
              (cpscm__trampoline
                (cpscmreverse
                  (lambda (gretreverse_181)
                    (cpscm__trampoline
                      (cpscmreverse
                        (lambda (gretreverse_182)
                          (cpscm__trampoline
                            (cpscm_loop_43
                              (lambda (gret_loop_43_180)
                                (cpscm__trampoline (gk178 gret_loop_43_180)))
                              gretreverse_181
                              gretreverse_182)))
                        cpscm_ccwinders_41)))
                  cpscm__winders)))
            (lambda (gk188 cpscm_a_44 cpscm_b_45)
              (cpscm__trampoline
                ((lambda (gk191 cpscm_run-all_46)
                   (cpscm__trampoline
                     ((lambda (gk199 cpscm_run-all_46_tmp)
                        (cpscm__trampoline
                          ((lambda (gretset!_200)
                             (cpscm__trampoline (gk199 gretset!_200)))
                           (set! cpscm_run-all_46 cpscm_run-all_46_tmp))))
                      (lambda (g192)
                        (cpscm__trampoline
                          (cpscmmap
                            (lambda (gretmap_195)
                              (cpscm__trampoline
                                (cpscmmap
                                  (lambda (gretmap_196)
                                    (cpscm__trampoline
                                      (cpscmappend-reverse!
                                        (lambda (gretappend-reverse!_194)
                                          (cpscm__trampoline
                                            (cpscm_run-all_46
                                              (lambda (gret_run-all_46_193)
                                                (cpscm__trampoline
                                                  ((lambda (gretset!_197)
                                                     (cpscm__trampoline (gk191 gretset!_197)))
                                                   (set! cpscm__winders cpscm_ccwinders_41))))
                                              gretappend-reverse!_194)))
                                        gretmap_195
                                        gretmap_196)))
                                  cpscmcar
                                  cpscm_b_45)))
                            cpscmcdr
                            cpscm_a_44)))
                      (lambda (gk202 cpscm_to-apply_47)
                        (cpscm__trampoline
                          (cpscmnull?
                            (lambda (gretnull?_205)
                              (cpscm__trampoline
                                ((lambda (gret_20_boolean->combinator_204)
                                   (cpscm__trampoline
                                     (gret_20_boolean->combinator_204
                                       (lambda (gretapply_203)
                                         (cpscm__trampoline (gk202 gretapply_203)))
                                       (lambda (gk207) (cpscm__trampoline (gk207 #t)))
                                       (lambda (gk209)
                                         (cpscm__trampoline
                                           (cpscmcar
                                             (lambda (gretcar_211)
                                               (cpscm__trampoline
                                                 (gretcar_211
                                                   (lambda (gretapply_210)
                                                     (cpscm__trampoline
                                                       (cpscmcdr
                                                         (lambda (gretcdr_213)
                                                           (cpscm__trampoline
                                                             (cpscm_run-all_46
                                                               (lambda (gret_run-all_46_212)
                                                                 (cpscm__trampoline (gk209 gret_run-all_46_212)))
                                                               gretcdr_213)))
                                                         cpscm_to-apply_47))))))
                                             cpscm_to-apply_47))))))
                                 (cpscm_20_boolean->combinator gretnull?_205))))
                            cpscm_to-apply_47))))))
                 (lambda (g189) (cpscm__trampoline (gk188 g189)))
                 'undefined)))
            (lambda (gk215 cpscm_a_44 cpscm_b_45)
              (cpscm__trampoline
                (cpscmnull?
                  (lambda (gretnull?_219)
                    (cpscm__trampoline
                      ((lambda (gk229 cpscm_x_46)
                         (cpscm__trampoline
                           ((lambda (gret_20_boolean->combinator_231)
                              (cpscm__trampoline
                                (gret_20_boolean->combinator_231
                                  (lambda (gretapply_230)
                                    (cpscm__trampoline (gk229 gretapply_230)))
                                  (lambda (gk233)
                                    (cpscm__trampoline (gk233 cpscm_x_46)))
                                  (lambda (gk235)
                                    (cpscm__trampoline
                                      (cpscmnull?
                                        (lambda (gretnull?_237)
                                          (cpscm__trampoline
                                            ((lambda (gk239 cpscm_x_47)
                                               (cpscm__trampoline
                                                 ((lambda (gret_20_boolean->combinator_241)
                                                    (cpscm__trampoline
                                                      (gret_20_boolean->combinator_241
                                                        (lambda (gretapply_240)
                                                          (cpscm__trampoline (gk239 gretapply_240)))
                                                        (lambda (gk243)
                                                          (cpscm__trampoline (gk243 cpscm_x_47)))
                                                        (lambda (gk245)
                                                          (cpscm__trampoline
                                                            (cpscmcar
                                                              (lambda (gretcar_248)
                                                                (cpscm__trampoline
                                                                  (cpscmcar
                                                                    (lambda (gretcar_249)
                                                                      (cpscm__trampoline
                                                                        (cpscmeq?
                                                                          (lambda (greteq?_247)
                                                                            (cpscm__trampoline
                                                                              (cpscmnot
                                                                                (lambda (gretnot_246)
                                                                                  (cpscm__trampoline (gk245 gretnot_246)))
                                                                                greteq?_247)))
                                                                          gretcar_248
                                                                          gretcar_249)))
                                                                    cpscm_b_45)))
                                                              cpscm_a_44))))))
                                                  (cpscm_20_boolean->combinator cpscm_x_47))))
                                             (lambda (g236) (cpscm__trampoline (gk235 g236)))
                                             gretnull?_237)))
                                        cpscm_b_45))))))
                            (cpscm_20_boolean->combinator cpscm_x_46))))
                       (lambda (g218)
                         (cpscm__trampoline
                           ((lambda (gret_20_boolean->combinator_217)
                              (cpscm__trampoline
                                (gret_20_boolean->combinator_217
                                  (lambda (gretapply_216)
                                    (cpscm__trampoline (gk215 gretapply_216)))
                                  (lambda (gk221)
                                    (cpscm__trampoline
                                      (cpscm_switch_42
                                        (lambda (gret_switch_42_222)
                                          (cpscm__trampoline (gk221 gret_switch_42_222)))
                                        cpscm_a_44
                                        cpscm_b_45)))
                                  (lambda (gk224)
                                    (cpscm__trampoline
                                      (cpscmcdr
                                        (lambda (gretcdr_226)
                                          (cpscm__trampoline
                                            (cpscmcdr
                                              (lambda (gretcdr_227)
                                                (cpscm__trampoline
                                                  (cpscm_loop_43
                                                    (lambda (gret_loop_43_225)
                                                      (cpscm__trampoline (gk224 gret_loop_43_225)))
                                                    gretcdr_226
                                                    gretcdr_227)))
                                              cpscm_b_45)))
                                        cpscm_a_44))))))
                            (cpscm_20_boolean->combinator g218))))
                       gretnull?_219)))
                  cpscm_a_44))))))
       (lambda (g176) (cpscm__trampoline (gk175 g176)))
       'undefined
       'undefined))))
(define cpscmdynamic-wind
  (lambda (gk251 cpscm_before_41 cpscm_thunk_42 cpscm_after_43)
    (cpscm__trampoline
      ((lambda (gk254 cpscm_result_44)
         (cpscm__trampoline
           (begin
             (set! cpscm_result_44 #f)
             (cpscm_before_41
               (lambda (gret_before_41_256)
                 (cpscm__trampoline
                   (cpscmcons
                     (lambda (gretcons_259)
                       (cpscm__trampoline
                         (cpscmcons
                           (lambda (gretcons_258)
                             (cpscm__trampoline
                               (begin
                                 (set! cpscm__winders gretcons_258)
                                 (cpscm_thunk_42
                                   (lambda (gret_thunk_42_261)
                                     (cpscm__trampoline
                                       (begin
                                         (set! cpscm_result_44 gret_thunk_42_261)
                                         (cpscmcdr
                                           (lambda (gretcdr_263)
                                             (cpscm__trampoline
                                               (begin
                                                 (set! cpscm__winders gretcdr_263)
                                                 (cpscm_after_43
                                                   (lambda (gret_after_43_264)
                                                     (cpscm__trampoline (gk254 cpscm_result_44)))))))
                                           cpscm__winders))))))))
                           gretcons_259
                           cpscm__winders)))
                     cpscm_before_41
                     cpscm_after_43)))))))
       (lambda (g252) (cpscm__trampoline (gk251 g252)))
       'undefined))))
(define cpscmwith-failure-continuation
  (lambda (gk266 cpscm_hnd_41 cpscm_thunk_42)
    (cpscm__trampoline
      ((lambda (gk269 cpscm_old-hnd_43 cpscm_new-hnd_44)
         (cpscm__trampoline
           (cpscmcurrent-error-handler
             (lambda (gretcurrent-error-handler_271)
               (cpscm__trampoline
                 ((lambda (gk275 cpscm_old-hnd_43_tmp cpscm_new-hnd_44_tmp)
                    (cpscm__trampoline
                      (begin
                        (set! cpscm_old-hnd_43 cpscm_old-hnd_43_tmp)
                        ((lambda (gretset!_277)
                           (cpscm__trampoline (gk275 gretset!_277)))
                         (set! cpscm_new-hnd_44 cpscm_new-hnd_44_tmp)))))
                  (lambda (g270)
                    (cpscm__trampoline
                      (cpscmcurrent-error-handler
                        (lambda (gretcurrent-error-handler_272)
                          (cpscm__trampoline
                            (cpscm_thunk_42
                              (lambda (gret_thunk_42_273)
                                (cpscm__trampoline (gk269 gret_thunk_42_273))))))
                        cpscm_new-hnd_44)))
                  gretcurrent-error-handler_271
                  (lambda (gk279 cpscm_e_45 cpscm_ek_46)
                    (cpscm__trampoline
                      (cpscmcurrent-error-handler
                        (lambda (gretcurrent-error-handler_280)
                          (cpscm__trampoline
                            (cpscm_hnd_41
                              (lambda (gret_hnd_41_281)
                                (cpscm__trampoline (gk279 gret_hnd_41_281)))
                              cpscm_e_45
                              cpscm_ek_46)))
                        cpscm_old-hnd_43)))))))))
       (lambda (g267) (cpscm__trampoline (gk266 g267)))
       'undefined
       'undefined))))
(define cpscmwith/fc cpscmwith-failure-continuation)
(define cpscm__default-err-hnd
  (lambda (gk283 cpscm_e_41 cpscm_ek_42)
    (cpscm__trampoline
      (cpscmdisplay
        (lambda (gretdisplay_284)
          (cpscm__trampoline
            (cpscmdisplay
              (lambda (gretdisplay_285)
                (cpscm__trampoline
                  (cpscmnewline
                    (lambda (gretnewline_286)
                      (cpscm__trampoline (gk283 gretnewline_286))))))
              cpscm_e_41)))
        "Error: "))))
(cpscm__drive
  ((lambda (gk288)
     (cpscm__trampoline
       ((lambda (gretset!_289) (cpscm__trampoline (gk288 gretset!_289)))
        (set! cpscm__err-hnd cpscm__default-err-hnd))))
   (lambda (cpscmx) cpscmx)))
(define cpscmcurrent-error-handler
  (lambda (gk291 . cpscm_hnd_41)
    (cpscm__trampoline
      (cpscmnull?
        (lambda (gretnull?_294)
          (cpscm__trampoline
            ((lambda (gret_20_boolean->combinator_293)
               (cpscm__trampoline
                 (gret_20_boolean->combinator_293
                   (lambda (gretapply_292)
                     (cpscm__trampoline (gk291 gretapply_292)))
                   (lambda (gk296) (cpscm__trampoline (gk296 cpscm__err-hnd)))
                   (lambda (gk298)
                     (cpscm__trampoline
                       (cpscmcar
                         (lambda (gretcar_300)
                           (cpscm__trampoline
                             ((lambda (gretset!_299)
                                (cpscm__trampoline (gk298 gretset!_299)))
                              (set! cpscm__err-hnd gretcar_300))))
                         cpscm_hnd_41))))))
             (cpscm_20_boolean->combinator gretnull?_294))))
        cpscm_hnd_41))))
(cpscm__drive
  ((lambda (gk302)
     (cpscm__trampoline
       (cpscmcall-with-current-continuation
         (lambda (gretcall-with-current-continuation_303)
           (cpscm__trampoline (gk302 gretcall-with-current-continuation_303)))
         (lambda (gk305 cpscm_exit_41)
           (cpscm__trampoline
             (cpscmcall-with-values
               (lambda (gretcall-with-values_306)
                 (cpscm__trampoline (gk305 gretcall-with-values_306)))
               (lambda (gk308)
                 (cpscm__trampoline
                   (cpscmcall-with-current-continuation
                     (lambda (gretcall-with-current-continuation_309)
                       (cpscm__trampoline
                         (gk308 gretcall-with-current-continuation_309)))
                     (lambda (gk311 cpscm_cc_42)
                       (cpscm__trampoline
                         (begin
                           (set! cpscm__err-cont cpscm_cc_42)
                           (cpscm_exit_41
                             (lambda (gret_exit_41_313)
                               (cpscm__trampoline (gk311 gret_exit_41_313)))
                             #t)))))))
               (lambda (gk315 cpscm_e_42 cpscm_ek_43)
                 (cpscm__trampoline
                   (cpscmcurrent-error-handler
                     (lambda (gretcurrent-error-handler_317)
                       (cpscm__trampoline
                         (gretcurrent-error-handler_317
                           (lambda (gretapply_316)
                             (cpscm__trampoline (gk315 gretapply_316)))
                           cpscm_e_42
                           cpscm_ek_43))))))))))))
   (lambda (cpscmx) cpscmx)))
(define cpscmerror
  (lambda (gk319 cpscm_e_41)
    (cpscm__trampoline
      (cpscmcall-with-current-continuation
        (lambda (gretcall-with-current-continuation_320)
          (cpscm__trampoline (gk319 gretcall-with-current-continuation_320)))
        (lambda (gk322 cpscm_ek_42)
          (cpscm__trampoline
            (cpscm__err-cont
              (lambda (gret%cpscm:err-cont_323)
                (cpscm__trampoline (gk322 gret%cpscm:err-cont_323)))
              cpscm_e_41
              cpscm_ek_42)))))))
(define cpscmcall/cc cpscmcall-with-current-continuation)
