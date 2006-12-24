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
          (lambda (gret_x_boolean->combinator__156)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  gret_x_boolean->combinator__156
                  gk154
                  (lambda (gk158)
                    (cpscm__trampoline
                      (lambda () (funcall gk158 cpscm__false))))
                  (lambda (gk160)
                    (cpscm__trampoline (lambda () (funcall gk160 t))))))))
          (funcall cpscm_x_boolean->combinator cpscm__x__41))))))


(cpscm__global
  cpscmlist
  (lambda (gk162 &rest cpscm__l__41)
    (cpscm__trampoline (lambda () (funcall gk162 cpscm__l__41)))))


(cpscm__global
  cpscmlength
  (lambda (gk164 cpscm__l__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk167 cpscm__loop__42)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk171 cpscm__loop__42__tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          gk171
                          (setq cpscm__loop__42 cpscm__loop__42__tmp)))))
                  (lambda (g168)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall cpscm__loop__42 gk167 cpscm__l__41 0))))
                  (lambda (gk174 cpscm__l__43 cpscm__res__44)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (gretnull?__177)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gret_x_boolean->combinator__176)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          gret_x_boolean->combinator__176
                                          gk174
                                          (lambda (gk179)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk179 cpscm__res__44))))
                                          (lambda (gk181)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcdr
                                                  (lambda (gretcdr__183)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscm+
                                                          (lambda (gret+__184)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscm__loop__42
                                                                  gk181
                                                                  gretcdr__183
                                                                  gret+__184))))
                                                          cpscm__res__44
                                                          1))))
                                                  cpscm__l__43))))))))
                                  (funcall
                                    cpscm_x_boolean->combinator
                                    gretnull?__177)))))
                          cpscm__l__43))))))))
          gk164
          'undefined)))))


(cpscm__global
  cpscmlist?
  (lambda (gk186 cpscm__l__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (gretnull?__189)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gret_x_boolean->combinator__188)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          gret_x_boolean->combinator__188
                          gk186
                          (lambda (gk191)
                            (cpscm__trampoline (lambda () (funcall gk191 t))))
                          (lambda (gk193)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmpair?
                                  (lambda (gretpair?__196)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gret_x_boolean->combinator__195)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  gret_x_boolean->combinator__195
                                                  gk193
                                                  (lambda (gk198)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcdr
                                                          (lambda (gretcdr__200)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall cpscmlist? gk198 gretcdr__200))))
                                                          cpscm__l__41))))
                                                  (lambda (gk202)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk202 cpscm__false))))))))
                                          (funcall
                                            cpscm_x_boolean->combinator
                                            gretpair?__196)))))
                                  cpscm__l__41))))))))
                  (funcall cpscm_x_boolean->combinator gretnull?__189)))))
          cpscm__l__41)))))


(cpscm__global
  cpscmlist-tail
  (lambda (gk204 cpscm__x__41 cpscm__k__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmzero?
          (lambda (gretzero?__207)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gret_x_boolean->combinator__206)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          gret_x_boolean->combinator__206
                          gk204
                          (lambda (gk209)
                            (cpscm__trampoline
                              (lambda () (funcall gk209 cpscm__x__41))))
                          (lambda (gk211)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (gretcdr__213)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm-
                                          (lambda (gret-__214)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmlist-tail
                                                  gk211
                                                  gretcdr__213
                                                  gret-__214))))
                                          cpscm__k__42
                                          1))))
                                  cpscm__x__41))))))))
                  (funcall cpscm_x_boolean->combinator gretzero?__207)))))
          cpscm__k__42)))))


(cpscm__global
  cpscmlist-ref
  (lambda (gk216 cpscm__list__41 cpscm__k__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmlist-tail
          (lambda (gretlist-tail__218)
            (cpscm__trampoline
              (lambda () (funcall cpscmcar gk216 gretlist-tail__218))))
          cpscmx
          cpscm__k__42)))))


(cpscm__global
  cpscmreverse
  (lambda (gk220 cpscm__l__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk223 cpscm__loop__42)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk227 cpscm__loop__42__tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          gk227
                          (setq cpscm__loop__42 cpscm__loop__42__tmp)))))
                  (lambda (g224)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall cpscm__loop__42 gk223 cpscm__l__41 ()))))
                  (lambda (gk230 cpscm__l__43 cpscm__res__44)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (gretnull?__233)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gret_x_boolean->combinator__232)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          gret_x_boolean->combinator__232
                                          gk230
                                          (lambda (gk235)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk235 cpscm__res__44))))
                                          (lambda (gk237)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcdr
                                                  (lambda (gretcdr__239)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcar
                                                          (lambda (gretcar__241)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmcons
                                                                  (lambda (gretcons__240)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscm__loop__42
                                                                          gk237
                                                                          gretcdr__239
                                                                          gretcons__240))))
                                                                  gretcar__241
                                                                  cpscm__res__44))))
                                                          cpscm__l__43))))
                                                  cpscm__l__43))))))))
                                  (funcall
                                    cpscm_x_boolean->combinator
                                    gretnull?__233)))))
                          cpscm__l__43))))))))
          gk220
          'undefined)))))


(cpscm__global
  cpscmappend
  (lambda (gk243 &rest cpscm__ls__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk246 cpscm__spill__42 cpscm__loop__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk250 cpscm__spill__42__tmp cpscm__loop__43__tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (progn (setq cpscm__spill__42 cpscm__spill__42__tmp)
                               (funcall
                                 gk250
                                 (setq cpscm__loop__43 cpscm__loop__43__tmp))))))
                  (lambda (g247)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall cpscm__loop__43 gk246 cpscm__ls__41 ()))))
                  (lambda (gk254 cpscm__l__44 cpscm__res__45)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (gretnull?__257)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gret_x_boolean->combinator__256)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          gret_x_boolean->combinator__256
                                          gk254
                                          (lambda (gk259)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk259 cpscm__res__45))))
                                          (lambda (gk261)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcdr
                                                  (lambda (gretcdr__263)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcar
                                                          (lambda (gretcar__265)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmcons
                                                                  (lambda (gretcons__264)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscm__spill__42
                                                                          gk261
                                                                          gretcdr__263
                                                                          gretcons__264))))
                                                                  gretcar__265
                                                                  cpscm__res__45))))
                                                          cpscm__l__44))))
                                                  cpscm__l__44))))))))
                                  (funcall
                                    cpscm_x_boolean->combinator
                                    gretnull?__257)))))
                          cpscm__l__44))))
                  (lambda (gk267 cpscm__ls__44 cpscm__res__45)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (gretnull?__270)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gret_x_boolean->combinator__269)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          gret_x_boolean->combinator__269
                                          gk267
                                          (lambda (gk272)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall cpscmreverse! gk272 cpscm__res__45))))
                                          (lambda (gk275)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcdr
                                                  (lambda (gretcdr__277)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcar
                                                          (lambda (gretcar__279)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscm__spill__42
                                                                  (lambda (gret__spill__42__278)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscm__loop__43
                                                                          gk275
                                                                          gretcdr__277
                                                                          gret__spill__42__278))))
                                                                  gretcar__279
                                                                  cpscm__res__45))))
                                                          cpscm__ls__44))))
                                                  cpscm__ls__44))))))))
                                  (funcall
                                    cpscm_x_boolean->combinator
                                    gretnull?__270)))))
                          cpscm__ls__44))))))))
          gk243
          'undefined
          'undefined)))))


(cpscm__global cpscmappend! cpscmappend)


(cpscm__global
  cpscmappend-reverse
  (lambda (gk281 cpscm__rev-head__41 cpscm__tail__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmreverse
          (lambda (gretreverse__283)
            (cpscm__trampoline
              (lambda ()
                (funcall cpscmappend gk281 gretreverse__283 cpscm__tail__42))))
          cpscm__rev-head__41)))))


(cpscm__global cpscmappend-reverse! cpscmappend-reverse)


(cpscm__global
  cpscmreverse!
  (lambda (gk285 cpscm__l__41)
    (cpscm__trampoline (lambda () (funcall cpscmreverse gk285 cpscm__l__41)))))


(cpscm__global
  cpscmfind-tail
  (lambda (gk288 cpscm__pred__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk291 cpscm__lp__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk295 cpscm__lp__43__tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          gk295
                          (setq cpscm__lp__43 cpscm__lp__43__tmp)))))
                  (lambda (g292)
                    (cpscm__trampoline
                      (lambda () (funcall cpscm__lp__43 gk291 cpscm__l__42))))
                  (lambda (gk298 cpscm__l__44)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (gretnull?__302)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmnot
                                  (lambda (gretnot__301)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gret_x_boolean->combinator__300)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  gret_x_boolean->combinator__300
                                                  gk298
                                                  (lambda (gk304)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcar
                                                          (lambda (gretcar__308)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscm__pred__41
                                                                  (lambda (gret__pred__41__307)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          (lambda (gret_x_boolean->combinator__306)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  gret_x_boolean->combinator__306
                                                                                  gk304
                                                                                  (lambda (gk310)
                                                                                    (cpscm__trampoline
                                                                                      (lambda () (funcall gk310 cpscm__l__44))))
                                                                                  (lambda (gk312)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          cpscmcdr
                                                                                          (lambda (gretcdr__314)
                                                                                            (cpscm__trampoline
                                                                                              (lambda ()
                                                                                                (funcall cpscm__lp__43 gk312 gretcdr__314))))
                                                                                          cpscm__l__44))))))))
                                                                          (funcall
                                                                            cpscm_x_boolean->combinator
                                                                            gret__pred__41__307)))))
                                                                  gretcar__308))))
                                                          cpscm__l__44))))
                                                  (lambda (gk316)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk316 cpscm__false))))))))
                                          (funcall
                                            cpscm_x_boolean->combinator
                                            gretnot__301)))))
                                  gretnull?__302))))
                          cpscm__l__44))))))))
          gk288
          'undefined)))))


(cpscm__global
  cpscmfind
  (lambda (gk318 cpscm__pred__41 cpscm__list__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmfind-tail
          (lambda (gretfind-tail__320)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk322 cpscm__tmp__43)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gret_x_boolean->combinator__324)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  gret_x_boolean->combinator__324
                                  gk322
                                  (lambda (gk326)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall cpscmcar gk326 cpscm__tmp__43))))
                                  (lambda (gk329)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk329 cpscm__false))))))))
                          (funcall
                            cpscm_x_boolean->combinator
                            cpscm__tmp__43)))))
                  gk318
                  gretfind-tail__320))))
          cpscm__pred__41
          cpscm__list__42)))))


(cpscm__global
  cpscmmap
  (lambda (gk331 cpscm__f__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk334 cpscm__loop__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk338 cpscm__loop__43__tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          gk338
                          (setq cpscm__loop__43 cpscm__loop__43__tmp)))))
                  (lambda (g335)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall cpscm__loop__43 gk334 cpscm__l__42 ()))))
                  (lambda (gk341 cpscm__l__44 cpscm__res__45)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (gretnull?__344)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gret_x_boolean->combinator__343)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          gret_x_boolean->combinator__343
                                          gk341
                                          (lambda (gk346)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall cpscmreverse! gk346 cpscm__res__45))))
                                          (lambda (gk349)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcdr
                                                  (lambda (gretcdr__351)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcar
                                                          (lambda (gretcar__354)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscm__f__41
                                                                  (lambda (gret__f__41__353)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscmcons
                                                                          (lambda (gretcons__352)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscm__loop__43
                                                                                  gk349
                                                                                  gretcdr__351
                                                                                  gretcons__352))))
                                                                          gret__f__41__353
                                                                          cpscm__res__45))))
                                                                  gretcar__354))))
                                                          cpscm__l__44))))
                                                  cpscm__l__44))))))))
                                  (funcall
                                    cpscm_x_boolean->combinator
                                    gretnull?__344)))))
                          cpscm__l__44))))))))
          gk331
          'undefined)))))


(cpscm__global
  cpscmfor-each
  (lambda (gk356 cpscm__f__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk359 cpscm__loop__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk363 cpscm__loop__43__tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          gk363
                          (setq cpscm__loop__43 cpscm__loop__43__tmp)))))
                  (lambda (g360)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall cpscm__loop__43 gk359 cpscm__l__42))))
                  (lambda (gk366 cpscm__l__44)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (gretnull?__369)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gret_x_boolean->combinator__368)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          gret_x_boolean->combinator__368
                                          gk366
                                          (lambda (gk371)
                                            (cpscm__trampoline (lambda () (funcall gk371 t))))
                                          (lambda (gk373)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcar
                                                  (lambda (gretcar__375)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscm__f__41
                                                          (lambda (gret__f__41__374)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmcdr
                                                                  (lambda (gretcdr__377)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall cpscm__loop__43 gk373 gretcdr__377))))
                                                                  cpscm__l__44))))
                                                          gretcar__375))))
                                                  cpscm__l__44))))))))
                                  (funcall
                                    cpscm_x_boolean->combinator
                                    gretnull?__369)))))
                          cpscm__l__44))))))))
          gk356
          'undefined)))))


(cpscm__global
  cpscmassoc
  (lambda (gk379 cpscm__x__41 cpscm__lis__42 &rest cpscm__maybe-=__43)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (gretnull?__383)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gret_x_boolean->combinator__382)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          gret_x_boolean->combinator__382
                          (lambda (gretapply__381)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gk385 cpscm__e__44)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmfind
                                          gk385
                                          (lambda (gk388 cpscm__entry__45)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcar
                                                  (lambda (gretcar__390)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscm__e__44
                                                          gk388
                                                          cpscm__x__41
                                                          gretcar__390))))
                                                  cpscm__entry__45))))
                                          cpscm__lis__42))))
                                  gk379
                                  gretapply__381))))
                          (lambda (gk392)
                            (cpscm__trampoline
                              (lambda () (funcall gk392 cpscmequal?))))
                          (lambda (gk394)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall cpscmcar gk394 cpscm__maybe-=__43))))))))
                  (funcall cpscm_x_boolean->combinator gretnull?__383)))))
          cpscm__maybe-=__43)))))


(cpscm__global
  cpscmassq
  (lambda (gk397 cpscm__x__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall cpscmassoc gk397 cpscm__x__41 cpscm__l__42 cpscmeq?)))))


(cpscm__global
  cpscmassv
  (lambda (gk400 cpscm__x__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall cpscmassoc gk400 cpscm__x__41 cpscm__l__42 cpscmeqv?)))))


(cpscm__global
  cpscmmember
  (lambda (gk403 cpscm__x__41 cpscm__lis__42 &rest cpscm__maybe-=__43)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (gretnull?__407)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gret_x_boolean->combinator__406)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          gret_x_boolean->combinator__406
                          (lambda (gretapply__405)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gk409 cpscm__e__44)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmfind-tail
                                          gk409
                                          (lambda (gk412 cpscm__y__45)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscm__e__44
                                                  gk412
                                                  cpscm__x__41
                                                  cpscm__y__45))))
                                          cpscm__lis__42))))
                                  gk403
                                  gretapply__405))))
                          (lambda (gk415)
                            (cpscm__trampoline
                              (lambda () (funcall gk415 cpscmequal?))))
                          (lambda (gk417)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall cpscmcar gk417 cpscm__maybe-=__43))))))))
                  (funcall cpscm_x_boolean->combinator gretnull?__407)))))
          cpscm__maybe-=__43)))))


(cpscm__global
  cpscmmemq
  (lambda (gk420 cpscm__x__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall cpscmmember gk420 cpscm__x__41 cpscm__l__42 cpscmeq?)))))


(cpscm__global
  cpscmmemv
  (lambda (gk423 cpscm__x__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall cpscmmember gk423 cpscm__x__41 cpscm__l__42 cpscmeqv?)))))


(cpscm__global
  cpscmvector->list
  (lambda (gk426 cpscm__v__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk429 cpscm__n__42 cpscm__loop__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmvector-length
                  (lambda (gretvector-length__431)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gk435 cpscm__n__42__tmp cpscm__loop__43__tmp)
                            (cpscm__trampoline
                              (lambda ()
                                (progn (setq cpscm__n__42 cpscm__n__42__tmp)
                                       (funcall
                                         gk435
                                         (setq cpscm__loop__43 cpscm__loop__43__tmp))))))
                          (lambda (g430)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm-
                                  (lambda (gret-__433)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall cpscm__loop__43 gk429 gret-__433 ()))))
                                  cpscm__n__42
                                  1))))
                          gretvector-length__431
                          (lambda (gk439 cpscm__i__44 cpscm__res__45)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm<
                                  (lambda (gret<__442)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gret_x_boolean->combinator__441)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  gret_x_boolean->combinator__441
                                                  gk439
                                                  (lambda (gk444)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk444 cpscm__res__45))))
                                                  (lambda (gk446)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscm-
                                                          (lambda (gret-__448)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmvector-ref
                                                                  (lambda (gretvector-ref__450)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscmcons
                                                                          (lambda (gretcons__449)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscm__loop__43
                                                                                  gk446
                                                                                  gret-__448
                                                                                  gretcons__449))))
                                                                          gretvector-ref__450
                                                                          cpscm__res__45))))
                                                                  cpscm__v__41
                                                                  cpscm__i__44))))
                                                          cpscm__i__44
                                                          1))))))))
                                          (funcall cpscm_x_boolean->combinator gret<__442)))))
                                  cpscm__i__44
                                  0))))))))
                  cpscm__v__41))))
          gk426
          'undefined
          'undefined)))))


(cpscm__global
  cpscmlist->vector
  (lambda (gk452 cpscm__l__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk455 cpscm__n__42 cpscm__v__43 cpscm__loop__44)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmlength
                  (lambda (gretlength__457)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gk462 cpscm__n__42__tmp cpscm__loop__44__tmp)
                            (cpscm__trampoline
                              (lambda ()
                                (progn (setq cpscm__n__42 cpscm__n__42__tmp)
                                       (setq cpscm__v__43 cpscm__false)
                                       (funcall
                                         gk462
                                         (setq cpscm__loop__44 cpscm__loop__44__tmp))))))
                          (lambda (g456)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmmake-vector
                                  (lambda (gretmake-vector__459)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (progn (setq cpscm__v__43 gretmake-vector__459)
                                               (funcall cpscm__loop__44 gk455 0 cpscm__l__41)))))
                                  cpscm__n__42))))
                          gretlength__457
                          (lambda (gk467 cpscm__i__45 cpscm__l__46)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm=
                                  (lambda (gret=__470)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gret_x_boolean->combinator__469)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  gret_x_boolean->combinator__469
                                                  gk467
                                                  (lambda (gk472)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk472 cpscm__v__43))))
                                                  (lambda (gk474)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcar
                                                          (lambda (gretcar__476)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmvector-set!
                                                                  (lambda (gretvector-set!__475)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscm+
                                                                          (lambda (gret+__478)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscmcdr
                                                                                  (lambda (gretcdr__479)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          cpscm__loop__44
                                                                                          gk474
                                                                                          gret+__478
                                                                                          gretcdr__479))))
                                                                                  cpscm__l__46))))
                                                                          cpscm__i__45
                                                                          1))))
                                                                  cpscm__v__43
                                                                  cpscm__i__45
                                                                  gretcar__476))))
                                                          cpscm__l__46))))))))
                                          (funcall cpscm_x_boolean->combinator gret=__470)))))
                                  cpscm__i__45
                                  cpscm__n__42))))))))
                  cpscm__l__41))))
          gk452
          'undefined
          'undefined
          'undefined)))))


(cpscm__global
  cpscmvector
  (lambda (gk481 &rest cpscm__l__41)
    (cpscm__trampoline
      (lambda () (funcall cpscmlist->vector gk481 cpscm__l__41)))))


(cpscm__global
  cpscmvector-fill!
  (lambda (gk484 cpscm__v__41 cpscm__x__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk487 cpscm__n__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmvector-length
                  (lambda (gretvector-length__489)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gk493 cpscm__n__43__tmp)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  gk493
                                  (setq cpscm__n__43 cpscm__n__43__tmp)))))
                          (lambda (g488)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gk496 cpscm__loop__44)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gk499 cpscm__loop__44__tmp)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  gk499
                                                  (setq cpscm__loop__44 cpscm__loop__44__tmp)))))
                                          (lambda (g497)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk496 cpscm__loop__44))))
                                          (lambda (gk502 cpscm__i__45)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscm=
                                                  (lambda (gret=__505)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          (lambda (gret_x_boolean->combinator__504)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  gret_x_boolean->combinator__504
                                                                  gk502
                                                                  (lambda (gk507)
                                                                    (cpscm__trampoline (lambda () (funcall gk507 t))))
                                                                  (lambda (gk509)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscmvector-set!
                                                                          (lambda (gretvector-set!__510)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscm+
                                                                                  (lambda (gret+__512)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall cpscm__loop__44 gk509 gret+__512))))
                                                                                  cpscm__i__45
                                                                                  1))))
                                                                          cpscm__v__41
                                                                          cpscm__i__45
                                                                          cpscm__x__42))))))))
                                                          (funcall cpscm_x_boolean->combinator gret=__505)))))
                                                  cpscm__i__45
                                                  cpscm__n__43))))))))
                                  (lambda (g491)
                                    (cpscm__trampoline
                                      (lambda () (funcall g491 gk487 0))))
                                  'undefined))))
                          gretvector-length__489))))
                  cpscm__v__41))))
          gk484
          'undefined)))))


(cpscm__global
  cpscmstring
  (lambda (gk514 &rest cpscm__l__41)
    (cpscm__trampoline
      (lambda () (funcall cpscmlist->string gk514 cpscm__l__41)))))


(cpscm__global
  cpscmstring-fill!
  (lambda (gk517 cpscm__v__41 cpscm__x__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk520 cpscm__n__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmstring-length
                  (lambda (gretstring-length__522)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gk526 cpscm__n__43__tmp)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  gk526
                                  (setq cpscm__n__43 cpscm__n__43__tmp)))))
                          (lambda (g521)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gk529 cpscm__loop__44)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gk532 cpscm__loop__44__tmp)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  gk532
                                                  (setq cpscm__loop__44 cpscm__loop__44__tmp)))))
                                          (lambda (g530)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk529 cpscm__loop__44))))
                                          (lambda (gk535 cpscm__i__45)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscm=
                                                  (lambda (gret=__538)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          (lambda (gret_x_boolean->combinator__537)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  gret_x_boolean->combinator__537
                                                                  gk535
                                                                  (lambda (gk540)
                                                                    (cpscm__trampoline (lambda () (funcall gk540 t))))
                                                                  (lambda (gk542)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscmstring-set!
                                                                          (lambda (gretstring-set!__543)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscm+
                                                                                  (lambda (gret+__545)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall cpscm__loop__44 gk542 gret+__545))))
                                                                                  cpscm__i__45
                                                                                  1))))
                                                                          cpscm__v__41
                                                                          cpscm__i__45
                                                                          cpscm__x__42))))))))
                                                          (funcall cpscm_x_boolean->combinator gret=__538)))))
                                                  cpscm__i__45
                                                  cpscm__n__43))))))))
                                  (lambda (g524)
                                    (cpscm__trampoline
                                      (lambda () (funcall g524 gk520 0))))
                                  'undefined))))
                          gretstring-length__522))))
                  cpscm__v__41))))
          gk517
          'undefined)))))


(cpscm__global cpscmcall/cc cpscmcall-with-current-continuation)


(cpscm__global cpscmwrite-char cpscmdisplay)


(cpscm__global
  cpscmwith-output-to-port
  (lambda (gk547 cpscm__p__41 cpscm__thunk__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcurrent-output-port
          (lambda (gretcurrent-output-port__549)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk551 cpscm__oldp__43)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcurrent-output-port
                          (lambda (gretcurrent-output-port__552)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm__thunk__42
                                  (lambda (gret__thunk__42__554)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gk556 cpscm__res__44)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcurrent-output-port
                                                  (lambda (gretcurrent-output-port__557)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk556 cpscm__res__44))))
                                                  cpscm__oldp__43))))
                                          gk551
                                          gret__thunk__42__554))))))))
                          cpscm__p__41))))
                  gk547
                  gretcurrent-output-port__549)))))))))


(cpscm__global
  cpscm_x_make-promise
  (lambda (gk559 cpscm__proc__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk562 cpscm__result-ready?__42 cpscm__result__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  gk562
                  (lambda (gk564)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gret_x_boolean->combinator__566)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  gret_x_boolean->combinator__566
                                  gk564
                                  (lambda (gk568)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk568 cpscm__result__43))))
                                  (lambda (gk570)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm__proc__41
                                          (lambda (gret__proc__41__572)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  (lambda (gk574 cpscm__x__44)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          (lambda (gret_x_boolean->combinator__576)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  gret_x_boolean->combinator__576
                                                                  gk574
                                                                  (lambda (gk578)
                                                                    (cpscm__trampoline
                                                                      (lambda () (funcall gk578 cpscm__result__43))))
                                                                  (lambda (gk580)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (progn (setq cpscm__result-ready?__42 t)
                                                                               (setq cpscm__result__43 cpscm__x__44)
                                                                               (funcall gk580 cpscm__result__43)))))))))
                                                          (funcall
                                                            cpscm_x_boolean->combinator
                                                            cpscm__result-ready?__42)))))
                                                  gk570
                                                  gret__proc__41__572))))))))))))
                          (funcall
                            cpscm_x_boolean->combinator
                            cpscm__result-ready?__42)))))))))
          gk559
          cpscm__false
          cpscm__false)))))


(cpscm__drive
  (funcall
    (lambda (gk584)
      (cpscm__trampoline
        (lambda ()
          (funcall
            cpscmlist
            (lambda (gretlist__586)
              (cpscm__trampoline
                (lambda ()
                  (funcall gk584 (setq cpscm__vals-marker gretlist__586)))))
            'values))))
    (lambda (cpscmx) cpscmx))
  (function error))


(cpscm__global
  cpscm__pack-vals
  (lambda (gk588 cpscm__things__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (gretnull?__592)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk594 cpscm__x__42)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gret_x_boolean->combinator__596)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  gret_x_boolean->combinator__596
                                  gk594
                                  (lambda (gk598)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk598 cpscm__x__42))))
                                  (lambda (gk600)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmcdr
                                          (lambda (gretcdr__603)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmnull?
                                                  (lambda (gretnull?__602)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall cpscmnot gk600 gretnull?__602))))
                                                  gretcdr__603))))
                                          cpscm__things__41))))))))
                          (funcall
                            cpscm_x_boolean->combinator
                            cpscm__x__42)))))
                  (lambda (g591)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gret_x_boolean->combinator__590)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  gret_x_boolean->combinator__590
                                  gk588
                                  (lambda (gk605)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmcons
                                          gk605
                                          cpscm__vals-marker
                                          cpscm__things__41))))
                                  (lambda (gk608)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall cpscmcar gk608 cpscm__things__41))))))))
                          (funcall cpscm_x_boolean->combinator g591)))))
                  gretnull?__592))))
          cpscm__things__41)))))


(cpscm__global
  cpscm__unpack-vals
  (lambda (gk611 cpscm__vals__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmpair?
          (lambda (gretpair?__616)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gret_x_boolean->combinator__615)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          gret_x_boolean->combinator__615
                          (lambda (gretapply__614)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gret_x_boolean->combinator__613)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          gret_x_boolean->combinator__613
                                          gk611
                                          (lambda (gk618)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall cpscmcdr gk618 cpscm__vals__41))))
                                          (lambda (gk621)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall cpscmlist gk621 cpscm__vals__41))))))))
                                  (funcall
                                    cpscm_x_boolean->combinator
                                    gretapply__614)))))
                          (lambda (gk624)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (gretcar__626)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmeq?
                                          gk624
                                          gretcar__626
                                          cpscm__vals-marker))))
                                  cpscm__vals__41))))
                          (lambda (gk628)
                            (cpscm__trampoline
                              (lambda () (funcall gk628 cpscm__false))))))))
                  (funcall cpscm_x_boolean->combinator gretpair?__616)))))
          cpscm__vals__41)))))


(cpscm__global
  cpscm__switch-winders
  (lambda (gk630 cpscm__ccwinders__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk633 cpscm__switch__42 cpscm__loop__43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gk639 cpscm__switch__42__tmp cpscm__loop__43__tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (progn (setq cpscm__switch__42 cpscm__switch__42__tmp)
                               (funcall
                                 gk639
                                 (setq cpscm__loop__43 cpscm__loop__43__tmp))))))
                  (lambda (g634)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmreverse
                          (lambda (gretreverse__636)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmreverse
                                  (lambda (gretreverse__637)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm__loop__43
                                          gk633
                                          gretreverse__636
                                          gretreverse__637))))
                                  cpscm__ccwinders__41))))
                          cpscm__winders))))
                  (lambda (gk643 cpscm__a__44 cpscm__b__45)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gk646 cpscm__run-all__46)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gk654 cpscm__run-all__46__tmp)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          gk654
                                          (setq cpscm__run-all__46 cpscm__run-all__46__tmp)))))
                                  (lambda (g647)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmmap
                                          (lambda (gretmap__650)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmmap
                                                  (lambda (gretmap__651)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmappend-reverse!
                                                          (lambda (gretappend-reverse!__649)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscm__run-all__46
                                                                  (lambda (gret__run-all__46__648)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          gk646
                                                                          (setq cpscm__winders cpscm__ccwinders__41)))))
                                                                  gretappend-reverse!__649))))
                                                          gretmap__650
                                                          gretmap__651))))
                                                  cpscmcar
                                                  cpscm__b__45))))
                                          cpscmcdr
                                          cpscm__a__44))))
                                  (lambda (gk657 cpscm__to-apply__47)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmnull?
                                          (lambda (gretnull?__660)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  (lambda (gret_x_boolean->combinator__659)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          gret_x_boolean->combinator__659
                                                          gk657
                                                          (lambda (gk662)
                                                            (cpscm__trampoline (lambda () (funcall gk662 t))))
                                                          (lambda (gk664)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmcar
                                                                  (lambda (gretcar__666)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          gretcar__666
                                                                          (lambda (gretapply__665)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscmcdr
                                                                                  (lambda (gretcdr__668)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall cpscm__run-all__46 gk664 gretcdr__668))))
                                                                                  cpscm__to-apply__47))))))))
                                                                  cpscm__to-apply__47))))))))
                                                  (funcall
                                                    cpscm_x_boolean->combinator
                                                    gretnull?__660)))))
                                          cpscm__to-apply__47))))))))
                          gk643
                          'undefined))))
                  (lambda (gk670 cpscm__a__44 cpscm__b__45)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (gretnull?__674)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gk676 cpscm__x__46)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gret_x_boolean->combinator__678)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  gret_x_boolean->combinator__678
                                                  gk676
                                                  (lambda (gk680)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk680 cpscm__x__46))))
                                                  (lambda (gk682)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmnull?
                                                          (lambda (gretnull?__684)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  (lambda (gk686 cpscm__x__47)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          (lambda (gret_x_boolean->combinator__688)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  gret_x_boolean->combinator__688
                                                                                  gk686
                                                                                  (lambda (gk690)
                                                                                    (cpscm__trampoline
                                                                                      (lambda () (funcall gk690 cpscm__x__47))))
                                                                                  (lambda (gk692)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          cpscmcar
                                                                                          (lambda (gretcar__695)
                                                                                            (cpscm__trampoline
                                                                                              (lambda ()
                                                                                                (funcall
                                                                                                  cpscmcar
                                                                                                  (lambda (gretcar__696)
                                                                                                    (cpscm__trampoline
                                                                                                      (lambda ()
                                                                                                        (funcall
                                                                                                          cpscmeq?
                                                                                                          (lambda (greteq?__694)
                                                                                                            (cpscm__trampoline
                                                                                                              (lambda () (funcall cpscmnot gk692 greteq?__694))))
                                                                                                          gretcar__695
                                                                                                          gretcar__696))))
                                                                                                  cpscm__b__45))))
                                                                                          cpscm__a__44))))))))
                                                                          (funcall
                                                                            cpscm_x_boolean->combinator
                                                                            cpscm__x__47)))))
                                                                  gk682
                                                                  gretnull?__684))))
                                                          cpscm__b__45))))))))
                                          (funcall
                                            cpscm_x_boolean->combinator
                                            cpscm__x__46)))))
                                  (lambda (g673)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gret_x_boolean->combinator__672)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  gret_x_boolean->combinator__672
                                                  gk670
                                                  (lambda (gk698)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscm__switch__42
                                                          gk698
                                                          cpscm__a__44
                                                          cpscm__b__45))))
                                                  (lambda (gk701)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcdr
                                                          (lambda (gretcdr__703)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmcdr
                                                                  (lambda (gretcdr__704)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscm__loop__43
                                                                          gk701
                                                                          gretcdr__703
                                                                          gretcdr__704))))
                                                                  cpscm__b__45))))
                                                          cpscm__a__44))))))))
                                          (funcall cpscm_x_boolean->combinator g673)))))
                                  gretnull?__674))))
                          cpscm__a__44))))))))
          gk630
          'undefined
          'undefined)))))


(cpscm__global
  cpscmdynamic-wind
  (lambda (gk706 cpscm__before__41 cpscm__thunk__42 cpscm__after__43)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk709 cpscm__result__44)
            (cpscm__trampoline
              (lambda ()
                (progn (setq cpscm__result__44 cpscm__false)
                       (funcall
                         cpscm__before__41
                         (lambda (gret__before__41__711)
                           (cpscm__trampoline
                             (lambda ()
                               (funcall
                                 cpscmcons
                                 (lambda (gretcons__714)
                                   (cpscm__trampoline
                                     (lambda ()
                                       (funcall
                                         cpscmcons
                                         (lambda (gretcons__713)
                                           (cpscm__trampoline
                                             (lambda ()
                                               (progn (setq cpscm__winders gretcons__713)
                                                      (funcall
                                                        cpscm__thunk__42
                                                        (lambda (gret__thunk__42__716)
                                                          (cpscm__trampoline
                                                            (lambda ()
                                                              (progn (setq cpscm__result__44 gret__thunk__42__716)
                                                                     (funcall
                                                                       cpscmcdr
                                                                       (lambda (gretcdr__718)
                                                                         (cpscm__trampoline
                                                                           (lambda ()
                                                                             (progn (setq cpscm__winders gretcdr__718)
                                                                                    (funcall
                                                                                      cpscm__after__43
                                                                                      (lambda (gret__after__43__719)
                                                                                        (cpscm__trampoline
                                                                                          (lambda () (funcall gk709 cpscm__result__44)))))))))
                                                                       cpscm__winders))))))))))
                                         gretcons__714
                                         cpscm__winders))))
                                 cpscm__before__41
                                 cpscm__after__43)))))))))
          gk706
          'undefined)))))


(cpscm__global
  cpscmwith-failure-continuation
  (lambda (gk721 cpscm__hnd__41 cpscm__thunk__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (gk724 cpscm__old-hnd__43 cpscm__new-hnd__44)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcurrent-error-handler
                  (lambda (gretcurrent-error-handler__726)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gk730
                                   cpscm__old-hnd__43__tmp
                                   cpscm__new-hnd__44__tmp)
                            (cpscm__trampoline
                              (lambda ()
                                (progn (setq cpscm__old-hnd__43 cpscm__old-hnd__43__tmp)
                                       (funcall
                                         gk730
                                         (setq cpscm__new-hnd__44 cpscm__new-hnd__44__tmp))))))
                          (lambda (g725)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcurrent-error-handler
                                  (lambda (gretcurrent-error-handler__727)
                                    (cpscm__trampoline
                                      (lambda () (funcall cpscm__thunk__42 gk724))))
                                  cpscm__new-hnd__44))))
                          gretcurrent-error-handler__726
                          (lambda (gk734 cpscm__e__45 cpscm__ek__46)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcurrent-error-handler
                                  (lambda (gretcurrent-error-handler__735)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm__hnd__41
                                          gk734
                                          cpscm__e__45
                                          cpscm__ek__46))))
                                  cpscm__old-hnd__43))))))))))))
          gk721
          'undefined
          'undefined)))))


(cpscm__global cpscmwith/fc cpscmwith-failure-continuation)


(cpscm__global
  cpscm__default-err-hnd
  (lambda (gk738 cpscm__e__41 cpscm__ek__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmdisplay
          (lambda (gretdisplay__739)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmdisplay
                  (lambda (gretdisplay__740)
                    (cpscm__trampoline
                      (lambda () (funcall cpscmnewline gk738))))
                  cpscm__e__41))))
          "Error: ")))))


(cpscm__drive
  (funcall
    (lambda (gk743)
      (cpscm__trampoline
        (lambda ()
          (funcall gk743 (setq cpscm__err-hnd cpscm__default-err-hnd)))))
    (lambda (cpscmx) cpscmx))
  (function error))


(cpscm__global
  cpscmcurrent-error-handler
  (lambda (gk746 &rest cpscm__hnd__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (gretnull?__749)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (gret_x_boolean->combinator__748)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          gret_x_boolean->combinator__748
                          gk746
                          (lambda (gk751)
                            (cpscm__trampoline
                              (lambda () (funcall gk751 cpscm__err-hnd))))
                          (lambda (gk753)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (gretcar__755)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          gk753
                                          (setq cpscm__err-hnd gretcar__755)))))
                                  cpscm__hnd__41))))))))
                  (funcall cpscm_x_boolean->combinator gretnull?__749)))))
          cpscm__hnd__41)))))


(cpscm__drive
  (funcall
    (lambda (gk757)
      (cpscm__trampoline
        (lambda ()
          (funcall
            cpscmcall-with-current-continuation
            gk757
            (lambda (gk760 cpscm__exit__41)
              (cpscm__trampoline
                (lambda ()
                  (funcall
                    cpscmcall-with-values
                    gk760
                    (lambda (gk763)
                      (cpscm__trampoline
                        (lambda ()
                          (funcall
                            cpscmcall-with-current-continuation
                            gk763
                            (lambda (gk766 cpscm__cc__42)
                              (cpscm__trampoline
                                (lambda ()
                                  (progn (setq cpscm__err-cont cpscm__cc__42)
                                         (funcall cpscm__exit__41 gk766 t)))))))))
                    (lambda (gk770 cpscm__e__42 cpscm__ek__43)
                      (cpscm__trampoline
                        (lambda ()
                          (funcall
                            cpscmcurrent-error-handler
                            (lambda (gretcurrent-error-handler__772)
                              (cpscm__trampoline
                                (lambda ()
                                  (funcall
                                    gretcurrent-error-handler__772
                                    gk770
                                    cpscm__e__42
                                    cpscm__ek__43))))))))))))))))
    (lambda (cpscmx) cpscmx))
  (function error))


(cpscm__global
  cpscmerror
  (lambda (gk774 cpscm__e__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcall-with-current-continuation
          gk774
          (lambda (gk777 cpscm__ek__42)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscm__err-cont
                  gk777
                  cpscm__e__41
                  cpscm__ek__42)))))))))


