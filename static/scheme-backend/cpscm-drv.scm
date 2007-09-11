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
(define (cpscm_20_boolean-combinator k test then else)
  (if test (then k) (else k)))
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
           (begin
             (set! cpscm_loop_43
               (lambda (gk9 cpscm_l_44 cpscm_res_45)
                 (cpscm__trampoline
                   (cpscmnull?
                     (lambda (gretnull?_11)
                       (cpscm__trampoline
                         (cpscm_20_boolean-combinator
                           gk9
                           gretnull?_11
                           (lambda (gk13)
                             (cpscm__trampoline
                               (cpscmreverse! gk13 cpscm_res_45)))
                           (lambda (gk16)
                             (cpscm__trampoline
                               (cpscmcdr
                                 (lambda (gretcdr_18)
                                   (cpscm__trampoline
                                     (cpscmcar
                                       (lambda (gretcar_21)
                                         (cpscm__trampoline
                                           (cpscm_f_41
                                             (lambda (gret_f_41_20)
                                               (cpscm__trampoline
                                                 (cpscmcons
                                                   (lambda (gretcons_19)
                                                     (cpscm__trampoline
                                                       (cpscm_loop_43 gk16 gretcdr_18 gretcons_19)))
                                                   gret_f_41_20
                                                   cpscm_res_45)))
                                             gretcar_21)))
                                       cpscm_l_44)))
                                 cpscm_l_44))))))
                     cpscm_l_44))))
             (cpscm_loop_43 gk5 cpscm_l_42 '()))))
       gk2
       'undefined))))
(define cpscmfor-each
  (lambda (gk23 cpscm_f_41 cpscm_l_42)
    (cpscm__trampoline
      ((lambda (gk26 cpscm_loop_43)
         (cpscm__trampoline
           (begin
             (set! cpscm_loop_43
               (lambda (gk30 cpscm_l_44)
                 (cpscm__trampoline
                   (cpscmnull?
                     (lambda (gretnull?_32)
                       (cpscm__trampoline
                         (cpscm_20_boolean-combinator
                           gk30
                           gretnull?_32
                           (lambda (gk34) (cpscm__trampoline (gk34 #t)))
                           (lambda (gk36)
                             (cpscm__trampoline
                               (cpscmcar
                                 (lambda (gretcar_38)
                                   (cpscm__trampoline
                                     (cpscm_f_41
                                       (lambda (gret_f_41_37)
                                         (cpscm__trampoline
                                           (cpscmcdr
                                             (lambda (gretcdr_40)
                                               (cpscm__trampoline
                                                 (cpscm_loop_43 gk36 gretcdr_40)))
                                             cpscm_l_44)))
                                       gretcar_38)))
                                 cpscm_l_44))))))
                     cpscm_l_44))))
             (cpscm_loop_43 gk26 cpscm_l_42))))
       gk23
       'undefined))))
(define cpscmassoc
  (lambda (gk42 cpscm_x_41 cpscm_lis_42 . cpscm_maybe-=_43)
    (cpscm__trampoline
      (cpscmnull?
        (lambda (gretnull?_45)
          (cpscm__trampoline
            (cpscm_20_boolean-combinator
              (lambda (gret_20_boolean-combinator_44)
                (cpscm__trampoline
                  ((lambda (gk47 cpscm_e_44)
                     (cpscm__trampoline
                       (cpscmfind
                         gk47
                         (lambda (gk50 cpscm_entry_45)
                           (cpscm__trampoline
                             (cpscmcar
                               (lambda (gretcar_52)
                                 (cpscm__trampoline
                                   (cpscm_e_44 gk50 cpscm_x_41 gretcar_52)))
                               cpscm_entry_45)))
                         cpscm_lis_42)))
                   gk42
                   gret_20_boolean-combinator_44)))
              gretnull?_45
              (lambda (gk54) (cpscm__trampoline (gk54 cpscmequal?)))
              (lambda (gk56)
                (cpscm__trampoline (cpscmcar gk56 cpscm_maybe-=_43))))))
        cpscm_maybe-=_43))))
(define cpscmassq
  (lambda (gk59 cpscm_x_41 cpscm_l_42)
    (cpscm__trampoline (cpscmassoc gk59 cpscm_x_41 cpscm_l_42 cpscmeq?))))
(define cpscmassv
  (lambda (gk62 cpscm_x_41 cpscm_l_42)
    (cpscm__trampoline (cpscmassoc gk62 cpscm_x_41 cpscm_l_42 cpscmeqv?))))
(define cpscmmember
  (lambda (gk65 cpscm_x_41 cpscm_lis_42 . cpscm_maybe-=_43)
    (cpscm__trampoline
      (cpscmnull?
        (lambda (gretnull?_68)
          (cpscm__trampoline
            (cpscm_20_boolean-combinator
              (lambda (gret_20_boolean-combinator_67)
                (cpscm__trampoline
                  ((lambda (gk70 cpscm_e_44)
                     (cpscm__trampoline
                       (cpscmfind-tail
                         gk70
                         (lambda (gk73 cpscm_y_45)
                           (cpscm__trampoline
                             (cpscm_e_44 gk73 cpscm_x_41 cpscm_y_45)))
                         cpscm_lis_42)))
                   gk65
                   gret_20_boolean-combinator_67)))
              gretnull?_68
              (lambda (gk76) (cpscm__trampoline (gk76 cpscmequal?)))
              (lambda (gk78)
                (cpscm__trampoline (cpscmcar gk78 cpscm_maybe-=_43))))))
        cpscm_maybe-=_43))))
(define cpscmmemq
  (lambda (gk81 cpscm_x_41 cpscm_l_42)
    (cpscm__trampoline (cpscmmember gk81 cpscm_x_41 cpscm_l_42 cpscmeq?))))
(define cpscmmemv
  (lambda (gk84 cpscm_x_41 cpscm_l_42)
    (cpscm__trampoline (cpscmmember gk84 cpscm_x_41 cpscm_l_42 cpscmeqv?))))
(define cpscmappend! cpscmappend)
(define cpscmappend-reverse
  (lambda (gk87 cpscm_rev-head_41 cpscm_tail_42)
    (cpscm__trampoline
      (cpscmreverse
        (lambda (gretreverse_89)
          (cpscm__trampoline (cpscmappend gk87 gretreverse_89 cpscm_tail_42)))
        cpscm_rev-head_41))))
(define cpscmappend-reverse! cpscmappend-reverse)
(define cpscmreverse!
  (lambda (gk91 cpscm_l_41)
    (cpscm__trampoline (cpscmreverse gk91 cpscm_l_41))))
(define cpscm_20_make-promise
  (lambda (gk94 cpscm_proc_41)
    (cpscm__trampoline
      ((lambda (gk97 cpscm_result-ready?_42 cpscm_result_43)
         (cpscm__trampoline
           (gk97 (lambda (gk99)
                   (cpscm__trampoline
                     (cpscm_20_boolean-combinator
                       gk99
                       cpscm_result-ready?_42
                       (lambda (gk102)
                         (cpscm__trampoline (gk102 cpscm_result_43)))
                       (lambda (gk104)
                         (cpscm__trampoline
                           (cpscm_proc_41
                             (lambda (gret_proc_41_106)
                               (cpscm__trampoline
                                 ((lambda (gk108 cpscm_x_44)
                                    (cpscm__trampoline
                                      (cpscm_20_boolean-combinator
                                        gk108
                                        cpscm_result-ready?_42
                                        (lambda (gk111)
                                          (cpscm__trampoline (gk111 cpscm_result_43)))
                                        (lambda (gk113)
                                          (cpscm__trampoline
                                            (begin
                                              (set! cpscm_result-ready?_42 #t)
                                              (set! cpscm_result_43 cpscm_x_44)
                                              (gk113 cpscm_result_43)))))))
                                  gk104
                                  gret_proc_41_106))))))))))))
       gk94
       #f
       #f))))
(cpscm__drive
  ((lambda (gk117)
     (cpscm__trampoline
       (cpscmlist
         (lambda (gretlist_119)
           (cpscm__trampoline (gk117 (set! cpscm__vals-marker gretlist_119))))
         'values)))
   (lambda (cpscmx) cpscmx)))
(define cpscm__pack-vals
  (lambda (gk121 cpscm_things_41)
    (cpscm__trampoline
      (cpscmnull?
        (lambda (gretnull?_124)
          (cpscm__trampoline
            ((lambda (gk126 cpscm_x_42)
               (cpscm__trampoline
                 (cpscm_20_boolean-combinator
                   gk126
                   cpscm_x_42
                   (lambda (gk129) (cpscm__trampoline (gk129 cpscm_x_42)))
                   (lambda (gk131)
                     (cpscm__trampoline
                       (cpscmcdr
                         (lambda (gretcdr_134)
                           (cpscm__trampoline
                             (cpscmnull?
                               (lambda (gretnull?_133)
                                 (cpscm__trampoline
                                   (cpscmnot gk131 gretnull?_133)))
                               gretcdr_134)))
                         cpscm_things_41))))))
             (lambda (g123)
               (cpscm__trampoline
                 (cpscm_20_boolean-combinator
                   gk121
                   g123
                   (lambda (gk136)
                     (cpscm__trampoline
                       (cpscmcons gk136 cpscm__vals-marker cpscm_things_41)))
                   (lambda (gk139)
                     (cpscm__trampoline (cpscmcar gk139 cpscm_things_41))))))
             gretnull?_124)))
        cpscm_things_41))))
(define cpscm__unpack-vals
  (lambda (gk142 cpscm_vals_41)
    (cpscm__trampoline
      (cpscmpair?
        (lambda (gretpair?_145)
          (cpscm__trampoline
            (cpscm_20_boolean-combinator
              (lambda (gret_20_boolean-combinator_144)
                (cpscm__trampoline
                  (cpscm_20_boolean-combinator
                    gk142
                    gret_20_boolean-combinator_144
                    (lambda (gk147)
                      (cpscm__trampoline (cpscmcdr gk147 cpscm_vals_41)))
                    (lambda (gk150)
                      (cpscm__trampoline (cpscmlist gk150 cpscm_vals_41))))))
              gretpair?_145
              (lambda (gk153)
                (cpscm__trampoline
                  (cpscmcar
                    (lambda (gretcar_155)
                      (cpscm__trampoline
                        (cpscmeq? gk153 gretcar_155 cpscm__vals-marker)))
                    cpscm_vals_41)))
              (lambda (gk157) (cpscm__trampoline (gk157 #f))))))
        cpscm_vals_41))))
(define cpscm__switch-winders
  (lambda (gk159 cpscm_ccwinders_41)
    (cpscm__trampoline
      ((lambda (gk162 cpscm_switch_42 cpscm_loop_43)
         (cpscm__trampoline
           (begin
             (set! cpscm_switch_42
               (lambda (gk202 cpscm_a_44 cpscm_b_45)
                 (cpscm__trampoline
                   ((lambda (gk205 cpscm_run-all_46)
                      (cpscm__trampoline
                        (begin
                          (set! cpscm_run-all_46
                            (lambda (gk213 cpscm_to-apply_47)
                              (cpscm__trampoline
                                (cpscmnull?
                                  (lambda (gretnull?_215)
                                    (cpscm__trampoline
                                      (cpscm_20_boolean-combinator
                                        gk213
                                        gretnull?_215
                                        (lambda (gk217) (cpscm__trampoline (gk217 #t)))
                                        (lambda (gk219)
                                          (cpscm__trampoline
                                            (cpscmcar
                                              (lambda (gretcar_221)
                                                (cpscm__trampoline
                                                  (gretcar_221
                                                    (lambda (gretapply_220)
                                                      (cpscm__trampoline
                                                        (cpscmcdr
                                                          (lambda (gretcdr_223)
                                                            (cpscm__trampoline
                                                              (cpscm_run-all_46 gk219 gretcdr_223)))
                                                          cpscm_to-apply_47))))))
                                              cpscm_to-apply_47))))))
                                  cpscm_to-apply_47))))
                          (cpscmmap
                            (lambda (gretmap_209)
                              (cpscm__trampoline
                                (cpscmmap
                                  (lambda (gretmap_210)
                                    (cpscm__trampoline
                                      (cpscmappend-reverse!
                                        (lambda (gretappend-reverse!_208)
                                          (cpscm__trampoline
                                            (cpscm_run-all_46
                                              (lambda (gret_run-all_46_207)
                                                (cpscm__trampoline
                                                  (gk205 (set! cpscm__winders cpscm_ccwinders_41))))
                                              gretappend-reverse!_208)))
                                        gretmap_209
                                        gretmap_210)))
                                  cpscmcar
                                  cpscm_b_45)))
                            cpscmcdr
                            cpscm_a_44))))
                    gk202
                    'undefined))))
             (set! cpscm_loop_43
               (lambda (gk169 cpscm_a_44 cpscm_b_45)
                 (cpscm__trampoline
                   (cpscmnull?
                     (lambda (gretnull?_172)
                       (cpscm__trampoline
                         ((lambda (gk174 cpscm_x_46)
                            (cpscm__trampoline
                              (cpscm_20_boolean-combinator
                                gk174
                                cpscm_x_46
                                (lambda (gk177)
                                  (cpscm__trampoline (gk177 cpscm_x_46)))
                                (lambda (gk179)
                                  (cpscm__trampoline
                                    (cpscmnull?
                                      (lambda (gretnull?_181)
                                        (cpscm__trampoline
                                          ((lambda (gk183 cpscm_x_47)
                                             (cpscm__trampoline
                                               (cpscm_20_boolean-combinator
                                                 gk183
                                                 cpscm_x_47
                                                 (lambda (gk186)
                                                   (cpscm__trampoline (gk186 cpscm_x_47)))
                                                 (lambda (gk188)
                                                   (cpscm__trampoline
                                                     (cpscmcar
                                                       (lambda (gretcar_191)
                                                         (cpscm__trampoline
                                                           (cpscmcar
                                                             (lambda (gretcar_192)
                                                               (cpscm__trampoline
                                                                 (cpscmeq?
                                                                   (lambda (greteq?_190)
                                                                     (cpscm__trampoline (cpscmnot gk188 greteq?_190)))
                                                                   gretcar_191
                                                                   gretcar_192)))
                                                             cpscm_b_45)))
                                                       cpscm_a_44))))))
                                           gk179
                                           gretnull?_181)))
                                      cpscm_b_45))))))
                          (lambda (g171)
                            (cpscm__trampoline
                              (cpscm_20_boolean-combinator
                                gk169
                                g171
                                (lambda (gk194)
                                  (cpscm__trampoline
                                    (cpscm_switch_42 gk194 cpscm_a_44 cpscm_b_45)))
                                (lambda (gk197)
                                  (cpscm__trampoline
                                    (cpscmcdr
                                      (lambda (gretcdr_199)
                                        (cpscm__trampoline
                                          (cpscmcdr
                                            (lambda (gretcdr_200)
                                              (cpscm__trampoline
                                                (cpscm_loop_43 gk197 gretcdr_199 gretcdr_200)))
                                            cpscm_b_45)))
                                      cpscm_a_44))))))
                          gretnull?_172)))
                     cpscm_a_44))))
             (cpscmreverse
               (lambda (gretreverse_166)
                 (cpscm__trampoline
                   (cpscmreverse
                     (lambda (gretreverse_167)
                       (cpscm__trampoline
                         (cpscm_loop_43
                           gk162
                           gretreverse_166
                           gretreverse_167)))
                     cpscm_ccwinders_41)))
               cpscm__winders))))
       gk159
       'undefined
       'undefined))))
(define cpscmdynamic-wind
  (lambda (gk225 cpscm_before_41 cpscm_thunk_42 cpscm_after_43)
    (cpscm__trampoline
      ((lambda (gk228 cpscm_result_44)
         (cpscm__trampoline
           (begin
             (set! cpscm_result_44 #f)
             (cpscm_before_41
               (lambda (gret_before_41_230)
                 (cpscm__trampoline
                   (cpscmcons
                     (lambda (gretcons_233)
                       (cpscm__trampoline
                         (cpscmcons
                           (lambda (gretcons_232)
                             (cpscm__trampoline
                               (begin
                                 (set! cpscm__winders gretcons_232)
                                 (cpscm_thunk_42
                                   (lambda (gret_thunk_42_235)
                                     (cpscm__trampoline
                                       (begin
                                         (set! cpscm_result_44 gret_thunk_42_235)
                                         (cpscmcdr
                                           (lambda (gretcdr_237)
                                             (cpscm__trampoline
                                               (begin
                                                 (set! cpscm__winders gretcdr_237)
                                                 (cpscm_after_43
                                                   (lambda (gret_after_43_238)
                                                     (cpscm__trampoline (gk228 cpscm_result_44)))))))
                                           cpscm__winders))))))))
                           gretcons_233
                           cpscm__winders)))
                     cpscm_before_41
                     cpscm_after_43)))))))
       gk225
       'undefined))))
(define cpscmwith-failure-continuation
  (lambda (gk240 cpscm_hnd_41 cpscm_thunk_42)
    (cpscm__trampoline
      ((lambda (gk243 cpscm_old-hnd_43 cpscm_new-hnd_44)
         (cpscm__trampoline
           (cpscmcurrent-error-handler
             (lambda (gretcurrent-error-handler_245)
               (cpscm__trampoline
                 (begin
                   (set! cpscm_old-hnd_43 gretcurrent-error-handler_245)
                   (set! cpscm_new-hnd_44
                     (lambda (gk250 cpscm_e_45 cpscm_ek_46)
                       (cpscm__trampoline
                         (cpscmcurrent-error-handler
                           (lambda (gretcurrent-error-handler_251)
                             (cpscm__trampoline
                               (cpscm_hnd_41 gk250 cpscm_e_45 cpscm_ek_46)))
                           cpscm_old-hnd_43))))
                   (cpscmcurrent-error-handler
                     (lambda (gretcurrent-error-handler_247)
                       (cpscm__trampoline (cpscm_thunk_42 gk243)))
                     cpscm_new-hnd_44)))))))
       gk240
       'undefined
       'undefined))))
(define cpscmwith/fc cpscmwith-failure-continuation)
(define cpscm__default-err-hnd
  (lambda (gk254 cpscm_e_41 cpscm_ek_42)
    (cpscm__trampoline
      (cpscmdisplay
        (lambda (gretdisplay_255)
          (cpscm__trampoline
            (cpscmdisplay
              (lambda (gretdisplay_256)
                (cpscm__trampoline (cpscmnewline gk254)))
              cpscm_e_41)))
        "Error: "))))
(cpscm__drive
  ((lambda (gk259)
     (cpscm__trampoline (gk259 (set! cpscm__err-hnd cpscm__default-err-hnd))))
   (lambda (cpscmx) cpscmx)))
(define cpscmcurrent-error-handler
  (lambda (gk262 . cpscm_hnd_41)
    (cpscm__trampoline
      (cpscmnull?
        (lambda (gretnull?_264)
          (cpscm__trampoline
            (cpscm_20_boolean-combinator
              gk262
              gretnull?_264
              (lambda (gk266) (cpscm__trampoline (gk266 cpscm__err-hnd)))
              (lambda (gk268)
                (cpscm__trampoline
                  (cpscmcar
                    (lambda (gretcar_270)
                      (cpscm__trampoline
                        (gk268 (set! cpscm__err-hnd gretcar_270))))
                    cpscm_hnd_41))))))
        cpscm_hnd_41))))
(cpscm__drive
  ((lambda (gk272)
     (cpscm__trampoline
       (cpscmcall-with-current-continuation
         gk272
         (lambda (gk275 cpscm_exit_41)
           (cpscm__trampoline
             (cpscmcall-with-values
               gk275
               (lambda (gk278)
                 (cpscm__trampoline
                   (cpscmcall-with-current-continuation
                     gk278
                     (lambda (gk281 cpscm_cc_42)
                       (cpscm__trampoline
                         (begin
                           (set! cpscm__err-cont cpscm_cc_42)
                           (cpscm_exit_41 gk281 #t)))))))
               (lambda (gk285 cpscm_e_42 cpscm_ek_43)
                 (cpscm__trampoline
                   (cpscmcurrent-error-handler
                     (lambda (gretcurrent-error-handler_287)
                       (cpscm__trampoline
                         (gretcurrent-error-handler_287
                           gk285
                           cpscm_e_42
                           cpscm_ek_43))))))))))))
   (lambda (cpscmx) cpscmx)))
(define cpscmerror
  (lambda (gk289 cpscm_e_41)
    (cpscm__trampoline
      (cpscmcall-with-current-continuation
        gk289
        (lambda (gk292 cpscm_ek_42)
          (cpscm__trampoline
            (cpscm__err-cont gk292 cpscm_e_41 cpscm_ek_42)))))))
(define cpscmcall/cc cpscmcall-with-current-continuation)
