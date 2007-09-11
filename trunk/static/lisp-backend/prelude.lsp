(cpscm__global cpscm__vals-marker cpscm__false)


(cpscm__global cpscm__winders ())


(cpscm__global cpscm__err-hnd cpscm__false)


(cpscm__global cpscm__debug-trampolines? cpscm__false)


(cpscm__global cpscm__err-cont cpscm__false)


(cpscm__global
  cpscmcall-with-current-continuation
  (lambda (cpscmk cpscmf)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (cpscmccwinders)
            (cpscm__trampoline
              (lambda ()
                (progn (cpscm__reduce-trampoline
                         (funcall
                           (lambda (g__ccwinders1)
                             (cpscm__trampoline
                               (lambda () (setq cpscmccwinders g__ccwinders1))))
                           cpscm__winders))
                       (funcall
                         cpscmf
                         cpscmk
                         (lambda (cpscm__ &rest cpscmxs)
                           (cpscm__trampoline
                             (lambda ()
                               (funcall
                                 cpscm__switch-winders
                                 (lambda (cpscm__)
                                   (cpscm__trampoline
                                     (lambda ()
                                       (funcall cpscm__pack-vals cpscmk cpscmxs))))
                                 cpscmccwinders)))))))))
          'undefined)))))


(cpscm__global
  cpscmapply
  (lambda (cpscmk cpscmf &rest cpscmargs)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscm__normal-apply
          cpscm__normal-apply
          cpscmf
          cpscmk
          cpscmargs)))))


(cpscm__global
  cpscmcall-with-values
  (lambda (cpscmk cpscmproducer cpscmconsummer)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmproducer
          (lambda (cpscmvals)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscm__unpack-vals
                  (lambda (cpscmvs)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall cpscmapply cpscmk cpscmconsummer cpscmvs))))
                  cpscmvals)))))))))


(cpscm__global
  cpscmvalues
  (lambda (cpscmk &rest cpscmthings)
    (cpscm__trampoline
      (lambda () (funcall cpscm__pack-vals cpscmk cpscmthings)))))


(cpscm__global
  cpscmcaar
  (lambda (gk2 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__4)
            (cpscm__trampoline (lambda () (funcall cpscmcar gk2 gretcar__4))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcadr
  (lambda (gk6 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__8)
            (cpscm__trampoline (lambda () (funcall cpscmcar gk6 gretcdr__8))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcdar
  (lambda (gk10 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__12)
            (cpscm__trampoline
              (lambda () (funcall cpscmcdr gk10 gretcar__12))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcddr
  (lambda (gk14 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__16)
            (cpscm__trampoline
              (lambda () (funcall cpscmcdr gk14 gretcdr__16))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcaaar
  (lambda (gk18 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__21)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__20)
                    (cpscm__trampoline
                      (lambda () (funcall cpscmcar gk18 gretcar__20))))
                  gretcar__21))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcaadr
  (lambda (gk23 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__26)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__25)
                    (cpscm__trampoline
                      (lambda () (funcall cpscmcar gk23 gretcar__25))))
                  gretcdr__26))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcadar
  (lambda (gk28 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__31)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__30)
                    (cpscm__trampoline
                      (lambda () (funcall cpscmcar gk28 gretcdr__30))))
                  gretcar__31))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcaddr
  (lambda (gk33 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__36)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__35)
                    (cpscm__trampoline
                      (lambda () (funcall cpscmcar gk33 gretcdr__35))))
                  gretcdr__36))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcdaar
  (lambda (gk38 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__41)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__40)
                    (cpscm__trampoline
                      (lambda () (funcall cpscmcdr gk38 gretcar__40))))
                  gretcar__41))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcdadr
  (lambda (gk43 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__46)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__45)
                    (cpscm__trampoline
                      (lambda () (funcall cpscmcdr gk43 gretcar__45))))
                  gretcdr__46))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcddar
  (lambda (gk48 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__51)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__50)
                    (cpscm__trampoline
                      (lambda () (funcall cpscmcdr gk48 gretcdr__50))))
                  gretcar__51))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcdddr
  (lambda (gk53 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__56)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__55)
                    (cpscm__trampoline
                      (lambda () (funcall cpscmcdr gk53 gretcdr__55))))
                  gretcdr__56))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcaaaar
  (lambda (gk58 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__62)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__61)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__60)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcar gk58 gretcar__60))))
                          gretcar__61))))
                  gretcar__62))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcaaadr
  (lambda (gk64 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__68)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__67)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__66)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcar gk64 gretcar__66))))
                          gretcar__67))))
                  gretcdr__68))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcaadar
  (lambda (gk70 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__74)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__73)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__72)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcar gk70 gretcar__72))))
                          gretcdr__73))))
                  gretcar__74))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcaaddr
  (lambda (gk76 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__80)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__79)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__78)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcar gk76 gretcar__78))))
                          gretcdr__79))))
                  gretcdr__80))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcadaar
  (lambda (gk82 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__86)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__85)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__84)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcar gk82 gretcdr__84))))
                          gretcar__85))))
                  gretcar__86))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcadadr
  (lambda (gk88 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__92)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__91)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__90)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcar gk88 gretcdr__90))))
                          gretcar__91))))
                  gretcdr__92))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcaddar
  (lambda (gk94 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__98)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__97)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__96)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcar gk94 gretcdr__96))))
                          gretcdr__97))))
                  gretcar__98))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcadddr
  (lambda (gk100 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__104)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__103)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__102)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcar gk100 gretcdr__102))))
                          gretcdr__103))))
                  gretcdr__104))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcdaaar
  (lambda (gk106 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__110)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__109)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__108)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcdr gk106 gretcar__108))))
                          gretcar__109))))
                  gretcar__110))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcdaadr
  (lambda (gk112 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__116)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__115)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__114)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcdr gk112 gretcar__114))))
                          gretcar__115))))
                  gretcdr__116))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcdadar
  (lambda (gk118 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__122)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__121)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__120)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcdr gk118 gretcar__120))))
                          gretcdr__121))))
                  gretcar__122))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcdaddr
  (lambda (gk124 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__128)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__127)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__126)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcdr gk124 gretcar__126))))
                          gretcdr__127))))
                  gretcdr__128))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcddaar
  (lambda (gk130 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__134)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__133)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__132)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcdr gk130 gretcdr__132))))
                          gretcar__133))))
                  gretcar__134))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcddadr
  (lambda (gk136 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__140)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__139)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__138)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcdr gk136 gretcdr__138))))
                          gretcar__139))))
                  gretcdr__140))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcdddar
  (lambda (gk142 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (gretcar__146)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__145)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__144)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcdr gk142 gretcdr__144))))
                          gretcdr__145))))
                  gretcar__146))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcddddr
  (lambda (gk148 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__152)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__151)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__150)
                            (cpscm__trampoline
                              (lambda () (funcall cpscmcdr gk148 gretcdr__150))))
                          gretcdr__151))))
                  gretcdr__152))))
          cpscm__x__41)))))


(cpscm__global
  cpscmnot
  (lambda (gk154 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscm_x_boolean-combinator
          gk154
          cpscm__x__41
          (lambda (gk157)
            (cpscm__trampoline (lambda () (funcall gk157 cpscm__false))))
          (lambda (gk159)
            (cpscm__trampoline (lambda () (funcall gk159 t)))))))))


(cpscm__global
  cpscmlist
  (lambda (gk161 &rest cpscm__l__41)
    (cpscm__trampoline (lambda () (funcall gk161 cpscm__l__41)))))


(cpscm__global
  cpscmlength
  (lambda (gk163 cpscm__l__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk166 cpscm__loop__42)
            (cpscm__trampoline
              (lambda ()
                (progn (setq cpscm__loop__42
                             (lambda (gk170 cpscm__l__43 cpscm__res__44)
                               (cpscm__trampoline
                                 (lambda ()
                                   (funcall
                                     cpscmnull?
                                     (lambda (gretnull?__172)
                                       (cpscm__trampoline
                                         (lambda ()
                                           (funcall
                                             cpscm_x_boolean-combinator
                                             gk170
                                             gretnull?__172
                                             (lambda (gk174)
                                               (cpscm__trampoline
                                                 (lambda () (funcall gk174 cpscm__res__44))))
                                             (lambda (gk176)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     cpscmcdr
                                                     (lambda (gretcdr__178)
                                                       (cpscm__trampoline
                                                         (lambda ()
                                                           (funcall
                                                             cpscm+
                                                             (lambda (gret+__179)
                                                               (cpscm__trampoline
                                                                 (lambda ()
                                                                   (funcall
                                                                     cpscm__loop__42
                                                                     gk176
                                                                     gretcdr__178
                                                                     gret+__179))))
                                                             cpscm__res__44
                                                             1))))
                                                     cpscm__l__43))))))))
                                     cpscm__l__43)))))
                       (funcall cpscm__loop__42 gk166 cpscm__l__41 0)))))
          gk163
          'undefined)))))


(cpscm__global
  cpscmlist?
  (lambda (gk181 cpscm__l__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (gretnull?__183)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscm_x_boolean-combinator
                  gk181
                  gretnull?__183
                  (lambda (gk185)
                    (cpscm__trampoline (lambda () (funcall gk185 t))))
                  (lambda (gk187)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmpair?
                          (lambda (gretpair?__189)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm_x_boolean-combinator
                                  gk187
                                  gretpair?__189
                                  (lambda (gk191)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmcdr
                                          (lambda (gretcdr__193)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall cpscmlist? gk191 gretcdr__193))))
                                          cpscm__l__41))))
                                  (lambda (gk195)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk195 cpscm__false))))))))
                          cpscm__l__41))))))))
          cpscm__l__41)))))


(cpscm__global
  cpscmlist-tail
  (lambda (gk197 cpscm__x__41 cpscm__k__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmzero?
          (lambda (gretzero?__199)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscm_x_boolean-combinator
                  gk197
                  gretzero?__199
                  (lambda (gk201)
                    (cpscm__trampoline
                      (lambda () (funcall gk201 cpscm__x__41))))
                  (lambda (gk203)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__205)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm-
                                  (lambda (gret-__206)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmlist-tail
                                          gk203
                                          gretcdr__205
                                          gret-__206))))
                                  cpscm__k__42
                                  1))))
                          cpscm__x__41))))))))
          cpscm__k__42)))))


(cpscm__global
  cpscmlist-ref
  (lambda (gk208 cpscm__list__41 cpscm__k__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmlist-tail
          (lambda (gretlist-tail__210)
            (cpscm__trampoline
              (lambda () (funcall cpscmcar gk208 gretlist-tail__210))))
          cpscmx
          cpscm__k__42)))))


(cpscm__global
  cpscmreverse
  (lambda (gk212 cpscm__l__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk215 cpscm__loop__42)
            (cpscm__trampoline
              (lambda ()
                (progn (setq cpscm__loop__42
                             (lambda (gk219 cpscm__l__43 cpscm__res__44)
                               (cpscm__trampoline
                                 (lambda ()
                                   (funcall
                                     cpscmnull?
                                     (lambda (gretnull?__221)
                                       (cpscm__trampoline
                                         (lambda ()
                                           (funcall
                                             cpscm_x_boolean-combinator
                                             gk219
                                             gretnull?__221
                                             (lambda (gk223)
                                               (cpscm__trampoline
                                                 (lambda () (funcall gk223 cpscm__res__44))))
                                             (lambda (gk225)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     cpscmcdr
                                                     (lambda (gretcdr__227)
                                                       (cpscm__trampoline
                                                         (lambda ()
                                                           (funcall
                                                             cpscmcar
                                                             (lambda (gretcar__229)
                                                               (cpscm__trampoline
                                                                 (lambda ()
                                                                   (funcall
                                                                     cpscmcons
                                                                     (lambda (gretcons__228)
                                                                       (cpscm__trampoline
                                                                         (lambda ()
                                                                           (funcall
                                                                             cpscm__loop__42
                                                                             gk225
                                                                             gretcdr__227
                                                                             gretcons__228))))
                                                                     gretcar__229
                                                                     cpscm__res__44))))
                                                             cpscm__l__43))))
                                                     cpscm__l__43))))))))
                                     cpscm__l__43)))))
                       (funcall cpscm__loop__42 gk215 cpscm__l__41 ())))))
          gk212
          'undefined)))))


(cpscm__global
  cpscmappend
  (lambda (gk231 &rest cpscm__ls__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk234 cpscm__spill__42 cpscm__loop__43)
            (cpscm__trampoline
              (lambda ()
                (progn (setq cpscm__spill__42
                             (lambda (gk252 cpscm__l__44 cpscm__res__45)
                               (cpscm__trampoline
                                 (lambda ()
                                   (funcall
                                     cpscmnull?
                                     (lambda (gretnull?__254)
                                       (cpscm__trampoline
                                         (lambda ()
                                           (funcall
                                             cpscm_x_boolean-combinator
                                             gk252
                                             gretnull?__254
                                             (lambda (gk256)
                                               (cpscm__trampoline
                                                 (lambda () (funcall gk256 cpscm__res__45))))
                                             (lambda (gk258)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     cpscmcdr
                                                     (lambda (gretcdr__260)
                                                       (cpscm__trampoline
                                                         (lambda ()
                                                           (funcall
                                                             cpscmcar
                                                             (lambda (gretcar__262)
                                                               (cpscm__trampoline
                                                                 (lambda ()
                                                                   (funcall
                                                                     cpscmcons
                                                                     (lambda (gretcons__261)
                                                                       (cpscm__trampoline
                                                                         (lambda ()
                                                                           (funcall
                                                                             cpscm__spill__42
                                                                             gk258
                                                                             gretcdr__260
                                                                             gretcons__261))))
                                                                     gretcar__262
                                                                     cpscm__res__45))))
                                                             cpscm__l__44))))
                                                     cpscm__l__44))))))))
                                     cpscm__l__44)))))
                       (setq cpscm__loop__43
                             (lambda (gk239 cpscm__ls__44 cpscm__res__45)
                               (cpscm__trampoline
                                 (lambda ()
                                   (funcall
                                     cpscmnull?
                                     (lambda (gretnull?__241)
                                       (cpscm__trampoline
                                         (lambda ()
                                           (funcall
                                             cpscm_x_boolean-combinator
                                             gk239
                                             gretnull?__241
                                             (lambda (gk243)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall cpscmreverse! gk243 cpscm__res__45))))
                                             (lambda (gk246)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     cpscmcdr
                                                     (lambda (gretcdr__248)
                                                       (cpscm__trampoline
                                                         (lambda ()
                                                           (funcall
                                                             cpscmcar
                                                             (lambda (gretcar__250)
                                                               (cpscm__trampoline
                                                                 (lambda ()
                                                                   (funcall
                                                                     cpscm__spill__42
                                                                     (lambda (gret__spill__42__249)
                                                                       (cpscm__trampoline
                                                                         (lambda ()
                                                                           (funcall
                                                                             cpscm__loop__43
                                                                             gk246
                                                                             gretcdr__248
                                                                             gret__spill__42__249))))
                                                                     gretcar__250
                                                                     cpscm__res__45))))
                                                             cpscm__ls__44))))
                                                     cpscm__ls__44))))))))
                                     cpscm__ls__44)))))
                       (funcall cpscm__loop__43 gk234 cpscm__ls__41 ())))))
          gk231
          'undefined
          'undefined)))))


(cpscm__global cpscmappend! cpscmappend)


(cpscm__global
  cpscmappend-reverse
  (lambda (gk264 cpscm__rev-head__41 cpscm__tail__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmreverse
          (lambda (gretreverse__266)
            (cpscm__trampoline
              (lambda ()
                (funcall cpscmappend gk264 gretreverse__266 cpscm__tail__42))))
          cpscm__rev-head__41)))))


(cpscm__global cpscmappend-reverse! cpscmappend-reverse)


(cpscm__global
  cpscmreverse!
  (lambda (gk268 cpscm__l__41)
    (cpscm__trampoline (lambda () (funcall cpscmreverse gk268 cpscm__l__41)))))


(cpscm__global
  cpscmfind-tail
  (lambda (gk271 cpscm__pred__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk274 cpscm__lp__43)
            (cpscm__trampoline
              (lambda ()
                (progn (setq cpscm__lp__43
                             (lambda (gk278 cpscm__l__44)
                               (cpscm__trampoline
                                 (lambda ()
                                   (funcall
                                     cpscmnull?
                                     (lambda (gretnull?__281)
                                       (cpscm__trampoline
                                         (lambda ()
                                           (funcall
                                             cpscmnot
                                             (lambda (gretnot__280)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     cpscm_x_boolean-combinator
                                                     gk278
                                                     gretnot__280
                                                     (lambda (gk283)
                                                       (cpscm__trampoline
                                                         (lambda ()
                                                           (funcall
                                                             cpscmcar
                                                             (lambda (gretcar__286)
                                                               (cpscm__trampoline
                                                                 (lambda ()
                                                                   (funcall
                                                                     cpscm__pred__41
                                                                     (lambda (gret__pred__41__285)
                                                                       (cpscm__trampoline
                                                                         (lambda ()
                                                                           (funcall
                                                                             cpscm_x_boolean-combinator
                                                                             gk283
                                                                             gret__pred__41__285
                                                                             (lambda (gk288)
                                                                               (cpscm__trampoline
                                                                                 (lambda () (funcall gk288 cpscm__l__44))))
                                                                             (lambda (gk290)
                                                                               (cpscm__trampoline
                                                                                 (lambda ()
                                                                                   (funcall
                                                                                     cpscmcdr
                                                                                     (lambda (gretcdr__292)
                                                                                       (cpscm__trampoline
                                                                                         (lambda ()
                                                                                           (funcall cpscm__lp__43 gk290 gretcdr__292))))
                                                                                     cpscm__l__44))))))))
                                                                     gretcar__286))))
                                                             cpscm__l__44))))
                                                     (lambda (gk294)
                                                       (cpscm__trampoline
                                                         (lambda () (funcall gk294 cpscm__false))))))))
                                             gretnull?__281))))
                                     cpscm__l__44)))))
                       (funcall cpscm__lp__43 gk274 cpscm__l__42)))))
          gk271
          'undefined)))))


(cpscm__global
  cpscmfind
  (lambda (gk296 cpscm__pred__41 cpscm__list__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmfind-tail
          (lambda (gretfind-tail__298)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk300 cpscm__tmp__43)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm_x_boolean-combinator
                          gk300
                          cpscm__tmp__43
                          (lambda (gk303)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall cpscmcar gk303 cpscm__tmp__43))))
                          (lambda (gk306)
                            (cpscm__trampoline
                              (lambda () (funcall gk306 cpscm__false))))))))
                  gk296
                  gretfind-tail__298))))
          cpscm__pred__41
          cpscm__list__42)))))


(cpscm__global
  cpscmmap
  (lambda (gk308 cpscm__f__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk311 cpscm__loop__43)
            (cpscm__trampoline
              (lambda ()
                (progn (setq cpscm__loop__43
                             (lambda (gk315 cpscm__l__44 cpscm__res__45)
                               (cpscm__trampoline
                                 (lambda ()
                                   (funcall
                                     cpscmnull?
                                     (lambda (gretnull?__317)
                                       (cpscm__trampoline
                                         (lambda ()
                                           (funcall
                                             cpscm_x_boolean-combinator
                                             gk315
                                             gretnull?__317
                                             (lambda (gk319)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall cpscmreverse! gk319 cpscm__res__45))))
                                             (lambda (gk322)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     cpscmcdr
                                                     (lambda (gretcdr__324)
                                                       (cpscm__trampoline
                                                         (lambda ()
                                                           (funcall
                                                             cpscmcar
                                                             (lambda (gretcar__327)
                                                               (cpscm__trampoline
                                                                 (lambda ()
                                                                   (funcall
                                                                     cpscm__f__41
                                                                     (lambda (gret__f__41__326)
                                                                       (cpscm__trampoline
                                                                         (lambda ()
                                                                           (funcall
                                                                             cpscmcons
                                                                             (lambda (gretcons__325)
                                                                               (cpscm__trampoline
                                                                                 (lambda ()
                                                                                   (funcall
                                                                                     cpscm__loop__43
                                                                                     gk322
                                                                                     gretcdr__324
                                                                                     gretcons__325))))
                                                                             gret__f__41__326
                                                                             cpscm__res__45))))
                                                                     gretcar__327))))
                                                             cpscm__l__44))))
                                                     cpscm__l__44))))))))
                                     cpscm__l__44)))))
                       (funcall cpscm__loop__43 gk311 cpscm__l__42 ())))))
          gk308
          'undefined)))))


(cpscm__global
  cpscmfor-each
  (lambda (gk329 cpscm__f__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk332 cpscm__loop__43)
            (cpscm__trampoline
              (lambda ()
                (progn (setq cpscm__loop__43
                             (lambda (gk336 cpscm__l__44)
                               (cpscm__trampoline
                                 (lambda ()
                                   (funcall
                                     cpscmnull?
                                     (lambda (gretnull?__338)
                                       (cpscm__trampoline
                                         (lambda ()
                                           (funcall
                                             cpscm_x_boolean-combinator
                                             gk336
                                             gretnull?__338
                                             (lambda (gk340)
                                               (cpscm__trampoline (lambda () (funcall gk340 t))))
                                             (lambda (gk342)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     cpscmcar
                                                     (lambda (gretcar__344)
                                                       (cpscm__trampoline
                                                         (lambda ()
                                                           (funcall
                                                             cpscm__f__41
                                                             (lambda (gret__f__41__343)
                                                               (cpscm__trampoline
                                                                 (lambda ()
                                                                   (funcall
                                                                     cpscmcdr
                                                                     (lambda (gretcdr__346)
                                                                       (cpscm__trampoline
                                                                         (lambda ()
                                                                           (funcall cpscm__loop__43 gk342 gretcdr__346))))
                                                                     cpscm__l__44))))
                                                             gretcar__344))))
                                                     cpscm__l__44))))))))
                                     cpscm__l__44)))))
                       (funcall cpscm__loop__43 gk332 cpscm__l__42)))))
          gk329
          'undefined)))))


(cpscm__global
  cpscmassoc
  (lambda (gk348 cpscm__x__41 cpscm__lis__42 &rest cpscm__maybe-=__43)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (gretnull?__351)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscm_x_boolean-combinator
                  (lambda (gret_x_boolean-combinator__350)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gk353 cpscm__e__44)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmfind
                                  gk353
                                  (lambda (gk356 cpscm__entry__45)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmcar
                                          (lambda (gretcar__358)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscm__e__44
                                                  gk356
                                                  cpscm__x__41
                                                  gretcar__358))))
                                          cpscm__entry__45))))
                                  cpscm__lis__42))))
                          gk348
                          gret_x_boolean-combinator__350))))
                  gretnull?__351
                  (lambda (gk360)
                    (cpscm__trampoline
                      (lambda () (funcall gk360 cpscmequal?))))
                  (lambda (gk362)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall cpscmcar gk362 cpscm__maybe-=__43))))))))
          cpscm__maybe-=__43)))))


(cpscm__global
  cpscmassq
  (lambda (gk365 cpscm__x__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall cpscmassoc gk365 cpscm__x__41 cpscm__l__42 cpscmeq?)))))


(cpscm__global
  cpscmassv
  (lambda (gk368 cpscm__x__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall cpscmassoc gk368 cpscm__x__41 cpscm__l__42 cpscmeqv?)))))


(cpscm__global
  cpscmmember
  (lambda (gk371 cpscm__x__41 cpscm__lis__42 &rest cpscm__maybe-=__43)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (gretnull?__374)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscm_x_boolean-combinator
                  (lambda (gret_x_boolean-combinator__373)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gk376 cpscm__e__44)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmfind-tail
                                  gk376
                                  (lambda (gk379 cpscm__y__45)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm__e__44
                                          gk379
                                          cpscm__x__41
                                          cpscm__y__45))))
                                  cpscm__lis__42))))
                          gk371
                          gret_x_boolean-combinator__373))))
                  gretnull?__374
                  (lambda (gk382)
                    (cpscm__trampoline
                      (lambda () (funcall gk382 cpscmequal?))))
                  (lambda (gk384)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall cpscmcar gk384 cpscm__maybe-=__43))))))))
          cpscm__maybe-=__43)))))


(cpscm__global
  cpscmmemq
  (lambda (gk387 cpscm__x__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall cpscmmember gk387 cpscm__x__41 cpscm__l__42 cpscmeq?)))))


(cpscm__global
  cpscmmemv
  (lambda (gk390 cpscm__x__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall cpscmmember gk390 cpscm__x__41 cpscm__l__42 cpscmeqv?)))))


(cpscm__global
  cpscmvector->list
  (lambda (gk393 cpscm__v__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk396 cpscm__n__42 cpscm__loop__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmvector-length
                  (lambda (gretvector-length__398)
                    (cpscm__trampoline
                      (lambda ()
                        (progn (setq cpscm__n__42 gretvector-length__398)
                               (setq cpscm__loop__43
                                     (lambda (gk403 cpscm__i__44 cpscm__res__45)
                                       (cpscm__trampoline
                                         (lambda ()
                                           (funcall
                                             cpscm<
                                             (lambda (gret<__405)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     cpscm_x_boolean-combinator
                                                     gk403
                                                     gret<__405
                                                     (lambda (gk407)
                                                       (cpscm__trampoline
                                                         (lambda () (funcall gk407 cpscm__res__45))))
                                                     (lambda (gk409)
                                                       (cpscm__trampoline
                                                         (lambda ()
                                                           (funcall
                                                             cpscm-
                                                             (lambda (gret-__411)
                                                               (cpscm__trampoline
                                                                 (lambda ()
                                                                   (funcall
                                                                     cpscmvector-ref
                                                                     (lambda (gretvector-ref__413)
                                                                       (cpscm__trampoline
                                                                         (lambda ()
                                                                           (funcall
                                                                             cpscmcons
                                                                             (lambda (gretcons__412)
                                                                               (cpscm__trampoline
                                                                                 (lambda ()
                                                                                   (funcall
                                                                                     cpscm__loop__43
                                                                                     gk409
                                                                                     gret-__411
                                                                                     gretcons__412))))
                                                                             gretvector-ref__413
                                                                             cpscm__res__45))))
                                                                     cpscm__v__41
                                                                     cpscm__i__44))))
                                                             cpscm__i__44
                                                             1))))))))
                                             cpscm__i__44
                                             0)))))
                               (funcall
                                 cpscm-
                                 (lambda (gret-__401)
                                   (cpscm__trampoline
                                     (lambda ()
                                       (funcall cpscm__loop__43 gk396 gret-__401 ()))))
                                 cpscm__n__42
                                 1)))))
                  cpscm__v__41))))
          gk393
          'undefined
          'undefined)))))


(cpscm__global
  cpscmlist->vector
  (lambda (gk415 cpscm__l__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk418 cpscm__n__42 cpscm__v__43 cpscm__loop__44)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmlength
                  (lambda (gretlength__420)
                    (cpscm__trampoline
                      (lambda ()
                        (progn (setq cpscm__n__42 gretlength__420)
                               (setq cpscm__v__43 cpscm__false)
                               (setq cpscm__loop__44
                                     (lambda (gk427 cpscm__i__45 cpscm__l__46)
                                       (cpscm__trampoline
                                         (lambda ()
                                           (funcall
                                             cpscm=
                                             (lambda (gret=__429)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     cpscm_x_boolean-combinator
                                                     gk427
                                                     gret=__429
                                                     (lambda (gk431)
                                                       (cpscm__trampoline
                                                         (lambda () (funcall gk431 cpscm__v__43))))
                                                     (lambda (gk433)
                                                       (cpscm__trampoline
                                                         (lambda ()
                                                           (funcall
                                                             cpscmcar
                                                             (lambda (gretcar__435)
                                                               (cpscm__trampoline
                                                                 (lambda ()
                                                                   (funcall
                                                                     cpscmvector-set!
                                                                     (lambda (gretvector-set!__434)
                                                                       (cpscm__trampoline
                                                                         (lambda ()
                                                                           (funcall
                                                                             cpscm+
                                                                             (lambda (gret+__437)
                                                                               (cpscm__trampoline
                                                                                 (lambda ()
                                                                                   (funcall
                                                                                     cpscmcdr
                                                                                     (lambda (gretcdr__438)
                                                                                       (cpscm__trampoline
                                                                                         (lambda ()
                                                                                           (funcall
                                                                                             cpscm__loop__44
                                                                                             gk433
                                                                                             gret+__437
                                                                                             gretcdr__438))))
                                                                                     cpscm__l__46))))
                                                                             cpscm__i__45
                                                                             1))))
                                                                     cpscm__v__43
                                                                     cpscm__i__45
                                                                     gretcar__435))))
                                                             cpscm__l__46))))))))
                                             cpscm__i__45
                                             cpscm__n__42)))))
                               (funcall
                                 cpscmmake-vector
                                 (lambda (gretmake-vector__424)
                                   (cpscm__trampoline
                                     (lambda ()
                                       (progn (setq cpscm__v__43 gretmake-vector__424)
                                              (funcall cpscm__loop__44 gk418 0 cpscm__l__41)))))
                                 cpscm__n__42)))))
                  cpscm__l__41))))
          gk415
          'undefined
          'undefined
          'undefined)))))


(cpscm__global
  cpscmvector
  (lambda (gk440 &rest cpscm__l__41)
    (cpscm__trampoline
      (lambda () (funcall cpscmlist->vector gk440 cpscm__l__41)))))


(cpscm__global
  cpscmvector-fill!
  (lambda (gk443 cpscm__v__41 cpscm__x__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk446 cpscm__n__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmvector-length
                  (lambda (gretvector-length__448)
                    (cpscm__trampoline
                      (lambda ()
                        (progn (setq cpscm__n__43 gretvector-length__448)
                               (funcall
                                 (lambda (gk452 cpscm__loop__44)
                                   (cpscm__trampoline
                                     (lambda ()
                                       (progn (setq cpscm__loop__44
                                                    (lambda (gk455 cpscm__i__45)
                                                      (cpscm__trampoline
                                                        (lambda ()
                                                          (funcall
                                                            cpscm=
                                                            (lambda (gret=__457)
                                                              (cpscm__trampoline
                                                                (lambda ()
                                                                  (funcall
                                                                    cpscm_x_boolean-combinator
                                                                    gk455
                                                                    gret=__457
                                                                    (lambda (gk459)
                                                                      (cpscm__trampoline (lambda () (funcall gk459 t))))
                                                                    (lambda (gk461)
                                                                      (cpscm__trampoline
                                                                        (lambda ()
                                                                          (funcall
                                                                            cpscmvector-set!
                                                                            (lambda (gretvector-set!__462)
                                                                              (cpscm__trampoline
                                                                                (lambda ()
                                                                                  (funcall
                                                                                    cpscm+
                                                                                    (lambda (gret+__464)
                                                                                      (cpscm__trampoline
                                                                                        (lambda ()
                                                                                          (funcall cpscm__loop__44 gk461 gret+__464))))
                                                                                    cpscm__i__45
                                                                                    1))))
                                                                            cpscm__v__41
                                                                            cpscm__i__45
                                                                            cpscm__x__42))))))))
                                                            cpscm__i__45
                                                            cpscm__n__43)))))
                                              (funcall gk452 cpscm__loop__44)))))
                                 (lambda (g450)
                                   (cpscm__trampoline
                                     (lambda () (funcall g450 gk446 0))))
                                 'undefined)))))
                  cpscm__v__41))))
          gk443
          'undefined)))))


(cpscm__global
  cpscmstring
  (lambda (gk466 &rest cpscm__l__41)
    (cpscm__trampoline
      (lambda () (funcall cpscmlist->string gk466 cpscm__l__41)))))


(cpscm__global
  cpscmstring-fill!
  (lambda (gk469 cpscm__v__41 cpscm__x__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk472 cpscm__n__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmstring-length
                  (lambda (gretstring-length__474)
                    (cpscm__trampoline
                      (lambda ()
                        (progn (setq cpscm__n__43 gretstring-length__474)
                               (funcall
                                 (lambda (gk478 cpscm__loop__44)
                                   (cpscm__trampoline
                                     (lambda ()
                                       (progn (setq cpscm__loop__44
                                                    (lambda (gk481 cpscm__i__45)
                                                      (cpscm__trampoline
                                                        (lambda ()
                                                          (funcall
                                                            cpscm=
                                                            (lambda (gret=__483)
                                                              (cpscm__trampoline
                                                                (lambda ()
                                                                  (funcall
                                                                    cpscm_x_boolean-combinator
                                                                    gk481
                                                                    gret=__483
                                                                    (lambda (gk485)
                                                                      (cpscm__trampoline (lambda () (funcall gk485 t))))
                                                                    (lambda (gk487)
                                                                      (cpscm__trampoline
                                                                        (lambda ()
                                                                          (funcall
                                                                            cpscmstring-set!
                                                                            (lambda (gretstring-set!__488)
                                                                              (cpscm__trampoline
                                                                                (lambda ()
                                                                                  (funcall
                                                                                    cpscm+
                                                                                    (lambda (gret+__490)
                                                                                      (cpscm__trampoline
                                                                                        (lambda ()
                                                                                          (funcall cpscm__loop__44 gk487 gret+__490))))
                                                                                    cpscm__i__45
                                                                                    1))))
                                                                            cpscm__v__41
                                                                            cpscm__i__45
                                                                            cpscm__x__42))))))))
                                                            cpscm__i__45
                                                            cpscm__n__43)))))
                                              (funcall gk478 cpscm__loop__44)))))
                                 (lambda (g476)
                                   (cpscm__trampoline
                                     (lambda () (funcall g476 gk472 0))))
                                 'undefined)))))
                  cpscm__v__41))))
          gk469
          'undefined)))))


(cpscm__global cpscmcall/cc cpscmcall-with-current-continuation)


(cpscm__global cpscmwrite-char cpscmdisplay)


(cpscm__global
  cpscmwith-output-to-port
  (lambda (gk492 cpscm__p__41 cpscm__thunk__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcurrent-output-port
          (lambda (gretcurrent-output-port__494)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk496 cpscm__oldp__43)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcurrent-output-port
                          (lambda (gretcurrent-output-port__497)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm__thunk__42
                                  (lambda (gret__thunk__42__499)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gk501 cpscm__res__44)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcurrent-output-port
                                                  (lambda (gretcurrent-output-port__502)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk501 cpscm__res__44))))
                                                  cpscm__oldp__43))))
                                          gk496
                                          gret__thunk__42__499))))))))
                          cpscm__p__41))))
                  gk492
                  gretcurrent-output-port__494)))))))))


(cpscm__global
  cpscm_x_make-promise
  (lambda (gk504 cpscm__proc__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk507 cpscm__result-ready?__42 cpscm__result__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  gk507
                  (lambda (gk509)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm_x_boolean-combinator
                          gk509
                          cpscm__result-ready?__42
                          (lambda (gk512)
                            (cpscm__trampoline
                              (lambda () (funcall gk512 cpscm__result__43))))
                          (lambda (gk514)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm__proc__41
                                  (lambda (gret__proc__41__516)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gk518 cpscm__x__44)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscm_x_boolean-combinator
                                                  gk518
                                                  cpscm__result-ready?__42
                                                  (lambda (gk521)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk521 cpscm__result__43))))
                                                  (lambda (gk523)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (progn (setq cpscm__result-ready?__42 t)
                                                               (setq cpscm__result__43 cpscm__x__44)
                                                               (funcall gk523 cpscm__result__43)))))))))
                                          gk514
                                          gret__proc__41__516))))))))))))))))
          gk504
          cpscm__false
          cpscm__false)))))


(cpscm__drive
  (funcall
    (lambda (gk527)
      (cpscm__trampoline
        (lambda ()
          (funcall
            cpscmlist
            (lambda (gretlist__529)
              (cpscm__trampoline
                (lambda ()
                  (funcall gk527 (setq cpscm__vals-marker gretlist__529)))))
            'values))))
    (lambda (cpscmx) cpscmx))
  (function error))


(cpscm__global
  cpscm__pack-vals
  (lambda (gk531 cpscm__things__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (gretnull?__534)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk536 cpscm__x__42)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm_x_boolean-combinator
                          gk536
                          cpscm__x__42
                          (lambda (gk539)
                            (cpscm__trampoline
                              (lambda () (funcall gk539 cpscm__x__42))))
                          (lambda (gk541)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (gretcdr__544)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmnull?
                                          (lambda (gretnull?__543)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall cpscmnot gk541 gretnull?__543))))
                                          gretcdr__544))))
                                  cpscm__things__41))))))))
                  (lambda (g533)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm_x_boolean-combinator
                          gk531
                          g533
                          (lambda (gk546)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcons
                                  gk546
                                  cpscm__vals-marker
                                  cpscm__things__41))))
                          (lambda (gk549)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall cpscmcar gk549 cpscm__things__41))))))))
                  gretnull?__534))))
          cpscm__things__41)))))


(cpscm__global
  cpscm__unpack-vals
  (lambda (gk552 cpscm__vals__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmpair?
          (lambda (gretpair?__555)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscm_x_boolean-combinator
                  (lambda (gret_x_boolean-combinator__554)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm_x_boolean-combinator
                          gk552
                          gret_x_boolean-combinator__554
                          (lambda (gk557)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall cpscmcdr gk557 cpscm__vals__41))))
                          (lambda (gk560)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall cpscmlist gk560 cpscm__vals__41))))))))
                  gretpair?__555
                  (lambda (gk563)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__565)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmeq?
                                  gk563
                                  gretcar__565
                                  cpscm__vals-marker))))
                          cpscm__vals__41))))
                  (lambda (gk567)
                    (cpscm__trampoline
                      (lambda () (funcall gk567 cpscm__false))))))))
          cpscm__vals__41)))))


(cpscm__global
  cpscm__switch-winders
  (lambda (gk569 cpscm__ccwinders__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk572 cpscm__switch__42 cpscm__loop__43)
            (cpscm__trampoline
              (lambda ()
                (progn (setq cpscm__switch__42
                             (lambda (gk612 cpscm__a__44 cpscm__b__45)
                               (cpscm__trampoline
                                 (lambda ()
                                   (funcall
                                     (lambda (gk615 cpscm__run-all__46)
                                       (cpscm__trampoline
                                         (lambda ()
                                           (progn (setq cpscm__run-all__46
                                                        (lambda (gk623 cpscm__to-apply__47)
                                                          (cpscm__trampoline
                                                            (lambda ()
                                                              (funcall
                                                                cpscmnull?
                                                                (lambda (gretnull?__625)
                                                                  (cpscm__trampoline
                                                                    (lambda ()
                                                                      (funcall
                                                                        cpscm_x_boolean-combinator
                                                                        gk623
                                                                        gretnull?__625
                                                                        (lambda (gk627)
                                                                          (cpscm__trampoline (lambda () (funcall gk627 t))))
                                                                        (lambda (gk629)
                                                                          (cpscm__trampoline
                                                                            (lambda ()
                                                                              (funcall
                                                                                cpscmcar
                                                                                (lambda (gretcar__631)
                                                                                  (cpscm__trampoline
                                                                                    (lambda ()
                                                                                      (funcall
                                                                                        gretcar__631
                                                                                        (lambda (gretapply__630)
                                                                                          (cpscm__trampoline
                                                                                            (lambda ()
                                                                                              (funcall
                                                                                                cpscmcdr
                                                                                                (lambda (gretcdr__633)
                                                                                                  (cpscm__trampoline
                                                                                                    (lambda ()
                                                                                                      (funcall cpscm__run-all__46 gk629 gretcdr__633))))
                                                                                                cpscm__to-apply__47))))))))
                                                                                cpscm__to-apply__47))))))))
                                                                cpscm__to-apply__47)))))
                                                  (funcall
                                                    cpscmmap
                                                    (lambda (gretmap__619)
                                                      (cpscm__trampoline
                                                        (lambda ()
                                                          (funcall
                                                            cpscmmap
                                                            (lambda (gretmap__620)
                                                              (cpscm__trampoline
                                                                (lambda ()
                                                                  (funcall
                                                                    cpscmappend-reverse!
                                                                    (lambda (gretappend-reverse!__618)
                                                                      (cpscm__trampoline
                                                                        (lambda ()
                                                                          (funcall
                                                                            cpscm__run-all__46
                                                                            (lambda (gret__run-all__46__617)
                                                                              (cpscm__trampoline
                                                                                (lambda ()
                                                                                  (funcall
                                                                                    gk615
                                                                                    (setq cpscm__winders cpscm__ccwinders__41)))))
                                                                            gretappend-reverse!__618))))
                                                                    gretmap__619
                                                                    gretmap__620))))
                                                            cpscmcar
                                                            cpscm__b__45))))
                                                    cpscmcdr
                                                    cpscm__a__44)))))
                                     gk612
                                     'undefined)))))
                       (setq cpscm__loop__43
                             (lambda (gk579 cpscm__a__44 cpscm__b__45)
                               (cpscm__trampoline
                                 (lambda ()
                                   (funcall
                                     cpscmnull?
                                     (lambda (gretnull?__582)
                                       (cpscm__trampoline
                                         (lambda ()
                                           (funcall
                                             (lambda (gk584 cpscm__x__46)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     cpscm_x_boolean-combinator
                                                     gk584
                                                     cpscm__x__46
                                                     (lambda (gk587)
                                                       (cpscm__trampoline
                                                         (lambda () (funcall gk587 cpscm__x__46))))
                                                     (lambda (gk589)
                                                       (cpscm__trampoline
                                                         (lambda ()
                                                           (funcall
                                                             cpscmnull?
                                                             (lambda (gretnull?__591)
                                                               (cpscm__trampoline
                                                                 (lambda ()
                                                                   (funcall
                                                                     (lambda (gk593 cpscm__x__47)
                                                                       (cpscm__trampoline
                                                                         (lambda ()
                                                                           (funcall
                                                                             cpscm_x_boolean-combinator
                                                                             gk593
                                                                             cpscm__x__47
                                                                             (lambda (gk596)
                                                                               (cpscm__trampoline
                                                                                 (lambda () (funcall gk596 cpscm__x__47))))
                                                                             (lambda (gk598)
                                                                               (cpscm__trampoline
                                                                                 (lambda ()
                                                                                   (funcall
                                                                                     cpscmcar
                                                                                     (lambda (gretcar__601)
                                                                                       (cpscm__trampoline
                                                                                         (lambda ()
                                                                                           (funcall
                                                                                             cpscmcar
                                                                                             (lambda (gretcar__602)
                                                                                               (cpscm__trampoline
                                                                                                 (lambda ()
                                                                                                   (funcall
                                                                                                     cpscmeq?
                                                                                                     (lambda (greteq?__600)
                                                                                                       (cpscm__trampoline
                                                                                                         (lambda () (funcall cpscmnot gk598 greteq?__600))))
                                                                                                     gretcar__601
                                                                                                     gretcar__602))))
                                                                                             cpscm__b__45))))
                                                                                     cpscm__a__44))))))))
                                                                     gk589
                                                                     gretnull?__591))))
                                                             cpscm__b__45))))))))
                                             (lambda (g581)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     cpscm_x_boolean-combinator
                                                     gk579
                                                     g581
                                                     (lambda (gk604)
                                                       (cpscm__trampoline
                                                         (lambda ()
                                                           (funcall
                                                             cpscm__switch__42
                                                             gk604
                                                             cpscm__a__44
                                                             cpscm__b__45))))
                                                     (lambda (gk607)
                                                       (cpscm__trampoline
                                                         (lambda ()
                                                           (funcall
                                                             cpscmcdr
                                                             (lambda (gretcdr__609)
                                                               (cpscm__trampoline
                                                                 (lambda ()
                                                                   (funcall
                                                                     cpscmcdr
                                                                     (lambda (gretcdr__610)
                                                                       (cpscm__trampoline
                                                                         (lambda ()
                                                                           (funcall
                                                                             cpscm__loop__43
                                                                             gk607
                                                                             gretcdr__609
                                                                             gretcdr__610))))
                                                                     cpscm__b__45))))
                                                             cpscm__a__44))))))))
                                             gretnull?__582))))
                                     cpscm__a__44)))))
                       (funcall
                         cpscmreverse
                         (lambda (gretreverse__576)
                           (cpscm__trampoline
                             (lambda ()
                               (funcall
                                 cpscmreverse
                                 (lambda (gretreverse__577)
                                   (cpscm__trampoline
                                     (lambda ()
                                       (funcall
                                         cpscm__loop__43
                                         gk572
                                         gretreverse__576
                                         gretreverse__577))))
                                 cpscm__ccwinders__41))))
                         cpscm__winders)))))
          gk569
          'undefined
          'undefined)))))


(cpscm__global
  cpscmdynamic-wind
  (lambda (gk635 cpscm__before__41 cpscm__thunk__42 cpscm__after__43)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk638 cpscm__result__44)
            (cpscm__trampoline
              (lambda ()
                (progn (setq cpscm__result__44 cpscm__false)
                       (funcall
                         cpscm__before__41
                         (lambda (gret__before__41__640)
                           (cpscm__trampoline
                             (lambda ()
                               (funcall
                                 cpscmcons
                                 (lambda (gretcons__643)
                                   (cpscm__trampoline
                                     (lambda ()
                                       (funcall
                                         cpscmcons
                                         (lambda (gretcons__642)
                                           (cpscm__trampoline
                                             (lambda ()
                                               (progn (setq cpscm__winders gretcons__642)
                                                      (funcall
                                                        cpscm__thunk__42
                                                        (lambda (gret__thunk__42__645)
                                                          (cpscm__trampoline
                                                            (lambda ()
                                                              (progn (setq cpscm__result__44 gret__thunk__42__645)
                                                                     (funcall
                                                                       cpscmcdr
                                                                       (lambda (gretcdr__647)
                                                                         (cpscm__trampoline
                                                                           (lambda ()
                                                                             (progn (setq cpscm__winders gretcdr__647)
                                                                                    (funcall
                                                                                      cpscm__after__43
                                                                                      (lambda (gret__after__43__648)
                                                                                        (cpscm__trampoline
                                                                                          (lambda () (funcall gk638 cpscm__result__44)))))))))
                                                                       cpscm__winders))))))))))
                                         gretcons__643
                                         cpscm__winders))))
                                 cpscm__before__41
                                 cpscm__after__43)))))))))
          gk635
          'undefined)))))


(cpscm__global
  cpscmwith-failure-continuation
  (lambda (gk650 cpscm__hnd__41 cpscm__thunk__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk653 cpscm__old-hnd__43 cpscm__new-hnd__44)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcurrent-error-handler
                  (lambda (gretcurrent-error-handler__655)
                    (cpscm__trampoline
                      (lambda ()
                        (progn (setq cpscm__old-hnd__43
                                     gretcurrent-error-handler__655)
                               (setq cpscm__new-hnd__44
                                     (lambda (gk660 cpscm__e__45 cpscm__ek__46)
                                       (cpscm__trampoline
                                         (lambda ()
                                           (funcall
                                             cpscmcurrent-error-handler
                                             (lambda (gretcurrent-error-handler__661)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     cpscm__hnd__41
                                                     gk660
                                                     cpscm__e__45
                                                     cpscm__ek__46))))
                                             cpscm__old-hnd__43)))))
                               (funcall
                                 cpscmcurrent-error-handler
                                 (lambda (gretcurrent-error-handler__657)
                                   (cpscm__trampoline
                                     (lambda () (funcall cpscm__thunk__42 gk653))))
                                 cpscm__new-hnd__44)))))))))
          gk650
          'undefined
          'undefined)))))


(cpscm__global cpscmwith/fc cpscmwith-failure-continuation)


(cpscm__global
  cpscm__default-err-hnd
  (lambda (gk664 cpscm__e__41 cpscm__ek__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmdisplay
          (lambda (gretdisplay__665)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmdisplay
                  (lambda (gretdisplay__666)
                    (cpscm__trampoline
                      (lambda () (funcall cpscmnewline gk664))))
                  cpscm__e__41))))
          "Error: ")))))


(cpscm__drive
  (funcall
    (lambda (gk669)
      (cpscm__trampoline
        (lambda ()
          (funcall gk669 (setq cpscm__err-hnd cpscm__default-err-hnd)))))
    (lambda (cpscmx) cpscmx))
  (function error))


(cpscm__global
  cpscmcurrent-error-handler
  (lambda (gk672 &rest cpscm__hnd__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (gretnull?__674)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscm_x_boolean-combinator
                  gk672
                  gretnull?__674
                  (lambda (gk676)
                    (cpscm__trampoline
                      (lambda () (funcall gk676 cpscm__err-hnd))))
                  (lambda (gk678)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__680)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  gk678
                                  (setq cpscm__err-hnd gretcar__680)))))
                          cpscm__hnd__41))))))))
          cpscm__hnd__41)))))


(cpscm__drive
  (funcall
    (lambda (gk682)
      (cpscm__trampoline
        (lambda ()
          (funcall
            cpscmcall-with-current-continuation
            gk682
            (lambda (gk685 cpscm__exit__41)
              (cpscm__trampoline
                (lambda ()
                  (funcall
                    cpscmcall-with-values
                    gk685
                    (lambda (gk688)
                      (cpscm__trampoline
                        (lambda ()
                          (funcall
                            cpscmcall-with-current-continuation
                            gk688
                            (lambda (gk691 cpscm__cc__42)
                              (cpscm__trampoline
                                (lambda ()
                                  (progn (setq cpscm__err-cont cpscm__cc__42)
                                         (funcall cpscm__exit__41 gk691 t)))))))))
                    (lambda (gk695 cpscm__e__42 cpscm__ek__43)
                      (cpscm__trampoline
                        (lambda ()
                          (funcall
                            cpscmcurrent-error-handler
                            (lambda (gretcurrent-error-handler__697)
                              (cpscm__trampoline
                                (lambda ()
                                  (funcall
                                    gretcurrent-error-handler__697
                                    gk695
                                    cpscm__e__42
                                    cpscm__ek__43))))))))))))))))
    (lambda (cpscmx) cpscmx))
  (function error))


(cpscm__global
  cpscmerror
  (lambda (gk699 cpscm__e__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcall-with-current-continuation
          gk699
          (lambda (gk702 cpscm__ek__42)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscm__err-cont
                  gk702
                  cpscm__e__41
                  cpscm__ek__42)))))))))


