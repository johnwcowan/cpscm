(cpscm__global cpscm__vals-marker cpscm__false)


(cpscm__global cpscm__winders nil)


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
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__3)
                    (cpscm__trampoline (lambda () (funcall gk2 gretcar__3))))
                  gretcar__4))))
          cpscm__x__41)))))


(cpscm__global
  cpscmcadr
  (lambda (gk6 cpscm__x__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (gretcdr__8)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__7)
                    (cpscm__trampoline (lambda () (funcall gk6 gretcar__7))))
                  gretcdr__8))))
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
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__11)
                    (cpscm__trampoline (lambda () (funcall gk10 gretcdr__11))))
                  gretcar__12))))
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
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (gretcdr__15)
                    (cpscm__trampoline (lambda () (funcall gk14 gretcdr__15))))
                  gretcdr__16))))
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
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__19)
                            (cpscm__trampoline
                              (lambda () (funcall gk18 gretcar__19))))
                          gretcar__20))))
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
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__24)
                            (cpscm__trampoline
                              (lambda () (funcall gk23 gretcar__24))))
                          gretcar__25))))
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
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__29)
                            (cpscm__trampoline
                              (lambda () (funcall gk28 gretcar__29))))
                          gretcdr__30))))
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
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (gretcar__34)
                            (cpscm__trampoline
                              (lambda () (funcall gk33 gretcar__34))))
                          gretcdr__35))))
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
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__39)
                            (cpscm__trampoline
                              (lambda () (funcall gk38 gretcdr__39))))
                          gretcar__40))))
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
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__44)
                            (cpscm__trampoline
                              (lambda () (funcall gk43 gretcdr__44))))
                          gretcar__45))))
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
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__49)
                            (cpscm__trampoline
                              (lambda () (funcall gk48 gretcdr__49))))
                          gretcdr__50))))
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
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (gretcdr__54)
                            (cpscm__trampoline
                              (lambda () (funcall gk53 gretcdr__54))))
                          gretcdr__55))))
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
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (gretcar__59)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk58 gretcar__59))))
                                  gretcar__60))))
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
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (gretcar__65)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk64 gretcar__65))))
                                  gretcar__66))))
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
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (gretcar__71)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk70 gretcar__71))))
                                  gretcar__72))))
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
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (gretcar__77)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk76 gretcar__77))))
                                  gretcar__78))))
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
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (gretcar__83)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk82 gretcar__83))))
                                  gretcdr__84))))
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
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (gretcar__89)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk88 gretcar__89))))
                                  gretcdr__90))))
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
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (gretcar__95)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk94 gretcar__95))))
                                  gretcdr__96))))
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
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (gretcar__101)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk100 gretcar__101))))
                                  gretcdr__102))))
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
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (gretcdr__107)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk106 gretcdr__107))))
                                  gretcar__108))))
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
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (gretcdr__113)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk112 gretcdr__113))))
                                  gretcar__114))))
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
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (gretcdr__119)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk118 gretcdr__119))))
                                  gretcar__120))))
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
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (gretcdr__125)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk124 gretcdr__125))))
                                  gretcar__126))))
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
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (gretcdr__131)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk130 gretcdr__131))))
                                  gretcdr__132))))
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
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (gretcdr__137)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk136 gretcdr__137))))
                                  gretcdr__138))))
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
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (gretcdr__143)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk142 gretcdr__143))))
                                  gretcdr__144))))
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
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (gretcdr__149)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk148 gretcdr__149))))
                                  gretcdr__150))))
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
                  (lambda (gretapply__155)
                    (cpscm__trampoline
                      (lambda () (funcall gk154 gretapply__155))))
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
                          (lambda (gretset!__172)
                            (cpscm__trampoline
                              (lambda () (funcall gk171 gretset!__172))))
                          (setq cpscm__loop__42 cpscm__loop__42__tmp)))))
                  (lambda (g168)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm__loop__42
                          (lambda (gret__loop__42__169)
                            (cpscm__trampoline
                              (lambda () (funcall gk167 gret__loop__42__169))))
                          cpscm__l__41
                          0))))
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
                                          (lambda (gretapply__175)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk174 gretapply__175))))
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
                                                                  (lambda (gret__loop__42__182)
                                                                    (cpscm__trampoline
                                                                      (lambda () (funcall gk181 gret__loop__42__182))))
                                                                  gretcdr__183
                                                                  gret+__184))))
                                                          cpscm__res__44
                                                          1))))
                                                  cpscm__l__43))))))))
                                  (funcall
                                    cpscm_x_boolean->combinator
                                    gretnull?__177)))))
                          cpscm__l__43))))))))
          (lambda (g165) (cpscm__trampoline (lambda () (funcall gk164 g165))))
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
                          (lambda (gretapply__187)
                            (cpscm__trampoline
                              (lambda () (funcall gk186 gretapply__187))))
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
                                                  (lambda (gretapply__194)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk193 gretapply__194))))
                                                  (lambda (gk198)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcdr
                                                          (lambda (gretcdr__200)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmlist?
                                                                  (lambda (gretlist?__199)
                                                                    (cpscm__trampoline
                                                                      (lambda () (funcall gk198 gretlist?__199))))
                                                                  gretcdr__200))))
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
                          (lambda (gretapply__205)
                            (cpscm__trampoline
                              (lambda () (funcall gk204 gretapply__205))))
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
                                                  (lambda (gretlist-tail__212)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk211 gretlist-tail__212))))
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
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (gretcar__217)
                    (cpscm__trampoline
                      (lambda () (funcall gk216 gretcar__217))))
                  gretlist-tail__218))))
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
                          (lambda (gretset!__228)
                            (cpscm__trampoline
                              (lambda () (funcall gk227 gretset!__228))))
                          (setq cpscm__loop__42 cpscm__loop__42__tmp)))))
                  (lambda (g224)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm__loop__42
                          (lambda (gret__loop__42__225)
                            (cpscm__trampoline
                              (lambda () (funcall gk223 gret__loop__42__225))))
                          cpscm__l__41
                          nil))))
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
                                          (lambda (gretapply__231)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk230 gretapply__231))))
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
                                                                          (lambda (gret__loop__42__238)
                                                                            (cpscm__trampoline
                                                                              (lambda () (funcall gk237 gret__loop__42__238))))
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
          (lambda (g221) (cpscm__trampoline (lambda () (funcall gk220 g221))))
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
                                 (lambda (gretset!__252)
                                   (cpscm__trampoline
                                     (lambda () (funcall gk250 gretset!__252))))
                                 (setq cpscm__loop__43 cpscm__loop__43__tmp))))))
                  (lambda (g247)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm__loop__43
                          (lambda (gret__loop__43__248)
                            (cpscm__trampoline
                              (lambda () (funcall gk246 gret__loop__43__248))))
                          cpscm__ls__41
                          nil))))
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
                                          (lambda (gretapply__255)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk254 gretapply__255))))
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
                                                                          (lambda (gret__spill__42__262)
                                                                            (cpscm__trampoline
                                                                              (lambda () (funcall gk261 gret__spill__42__262))))
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
                                          (lambda (gretapply__268)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk267 gretapply__268))))
                                          (lambda (gk272)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmreverse!
                                                  (lambda (gretreverse!__273)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk272 gretreverse!__273))))
                                                  cpscm__res__45))))
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
                                                                          (lambda (gret__loop__43__276)
                                                                            (cpscm__trampoline
                                                                              (lambda () (funcall gk275 gret__loop__43__276))))
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
          (lambda (g244) (cpscm__trampoline (lambda () (funcall gk243 g244))))
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
                (funcall
                  cpscmappend
                  (lambda (gretappend__282)
                    (cpscm__trampoline
                      (lambda () (funcall gk281 gretappend__282))))
                  gretreverse__283
                  cpscm__tail__42))))
          cpscm__rev-head__41)))))


(cpscm__global cpscmappend-reverse! cpscmappend-reverse)


(cpscm__global
  cpscmreverse!
  (lambda (gk285 cpscm__l__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmreverse
          (lambda (gretreverse__286)
            (cpscm__trampoline (lambda () (funcall gk285 gretreverse__286))))
          cpscm__l__41)))))


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
                          (lambda (gretset!__296)
                            (cpscm__trampoline
                              (lambda () (funcall gk295 gretset!__296))))
                          (setq cpscm__lp__43 cpscm__lp__43__tmp)))))
                  (lambda (g292)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm__lp__43
                          (lambda (gret__lp__43__293)
                            (cpscm__trampoline
                              (lambda () (funcall gk291 gret__lp__43__293))))
                          cpscm__l__42))))
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
                                                  (lambda (gretapply__299)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk298 gretapply__299))))
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
                                                                                  (lambda (gretapply__305)
                                                                                    (cpscm__trampoline
                                                                                      (lambda () (funcall gk304 gretapply__305))))
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
                                                                                                (funcall
                                                                                                  cpscm__lp__43
                                                                                                  (lambda (gret__lp__43__313)
                                                                                                    (cpscm__trampoline
                                                                                                      (lambda () (funcall gk312 gret__lp__43__313))))
                                                                                                  gretcdr__314))))
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
          (lambda (g289) (cpscm__trampoline (lambda () (funcall gk288 g289))))
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
                                  (lambda (gretapply__323)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk322 gretapply__323))))
                                  (lambda (gk326)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmcar
                                          (lambda (gretcar__327)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk326 gretcar__327))))
                                          cpscm__tmp__43))))
                                  (lambda (gk329)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk329 cpscm__false))))))))
                          (funcall
                            cpscm_x_boolean->combinator
                            cpscm__tmp__43)))))
                  (lambda (g319)
                    (cpscm__trampoline (lambda () (funcall gk318 g319))))
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
                          (lambda (gretset!__339)
                            (cpscm__trampoline
                              (lambda () (funcall gk338 gretset!__339))))
                          (setq cpscm__loop__43 cpscm__loop__43__tmp)))))
                  (lambda (g335)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm__loop__43
                          (lambda (gret__loop__43__336)
                            (cpscm__trampoline
                              (lambda () (funcall gk334 gret__loop__43__336))))
                          cpscm__l__42
                          nil))))
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
                                          (lambda (gretapply__342)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk341 gretapply__342))))
                                          (lambda (gk346)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmreverse!
                                                  (lambda (gretreverse!__347)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk346 gretreverse!__347))))
                                                  cpscm__res__45))))
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
                                                                                  (lambda (gret__loop__43__350)
                                                                                    (cpscm__trampoline
                                                                                      (lambda () (funcall gk349 gret__loop__43__350))))
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
          (lambda (g332) (cpscm__trampoline (lambda () (funcall gk331 g332))))
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
                          (lambda (gretset!__364)
                            (cpscm__trampoline
                              (lambda () (funcall gk363 gretset!__364))))
                          (setq cpscm__loop__43 cpscm__loop__43__tmp)))))
                  (lambda (g360)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm__loop__43
                          (lambda (gret__loop__43__361)
                            (cpscm__trampoline
                              (lambda () (funcall gk359 gret__loop__43__361))))
                          cpscm__l__42))))
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
                                          (lambda (gretapply__367)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk366 gretapply__367))))
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
                                                                        (funcall
                                                                          cpscm__loop__43
                                                                          (lambda (gret__loop__43__376)
                                                                            (cpscm__trampoline
                                                                              (lambda () (funcall gk373 gret__loop__43__376))))
                                                                          gretcdr__377))))
                                                                  cpscm__l__44))))
                                                          gretcar__375))))
                                                  cpscm__l__44))))))))
                                  (funcall
                                    cpscm_x_boolean->combinator
                                    gretnull?__369)))))
                          cpscm__l__44))))))))
          (lambda (g357) (cpscm__trampoline (lambda () (funcall gk356 g357))))
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
                                          (lambda (gretfind__386)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk385 gretfind__386))))
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
                                                          (lambda (gret__e__44__389)
                                                            (cpscm__trampoline
                                                              (lambda () (funcall gk388 gret__e__44__389))))
                                                          cpscm__x__41
                                                          gretcar__390))))
                                                  cpscm__entry__45))))
                                          cpscm__lis__42))))
                                  (lambda (g380)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk379 g380))))
                                  gretapply__381))))
                          (lambda (gk392)
                            (cpscm__trampoline
                              (lambda () (funcall gk392 cpscmequal?))))
                          (lambda (gk394)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (gretcar__395)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk394 gretcar__395))))
                                  cpscm__maybe-=__43))))))))
                  (funcall cpscm_x_boolean->combinator gretnull?__383)))))
          cpscm__maybe-=__43)))))


(cpscm__global
  cpscmassq
  (lambda (gk397 cpscm__x__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmassoc
          (lambda (gretassoc__398)
            (cpscm__trampoline (lambda () (funcall gk397 gretassoc__398))))
          cpscm__x__41
          cpscm__l__42
          cpscmeq?)))))


(cpscm__global
  cpscmassv
  (lambda (gk400 cpscm__x__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmassoc
          (lambda (gretassoc__401)
            (cpscm__trampoline (lambda () (funcall gk400 gretassoc__401))))
          cpscm__x__41
          cpscm__l__42
          cpscmeqv?)))))


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
                                          (lambda (gretfind-tail__410)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk409 gretfind-tail__410))))
                                          (lambda (gk412 cpscm__y__45)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscm__e__44
                                                  (lambda (gret__e__44__413)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk412 gret__e__44__413))))
                                                  cpscm__x__41
                                                  cpscm__y__45))))
                                          cpscm__lis__42))))
                                  (lambda (g404)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk403 g404))))
                                  gretapply__405))))
                          (lambda (gk415)
                            (cpscm__trampoline
                              (lambda () (funcall gk415 cpscmequal?))))
                          (lambda (gk417)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (gretcar__418)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk417 gretcar__418))))
                                  cpscm__maybe-=__43))))))))
                  (funcall cpscm_x_boolean->combinator gretnull?__407)))))
          cpscm__maybe-=__43)))))


(cpscm__global
  cpscmmemq
  (lambda (gk420 cpscm__x__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmmember
          (lambda (gretmember__421)
            (cpscm__trampoline (lambda () (funcall gk420 gretmember__421))))
          cpscm__x__41
          cpscm__l__42
          cpscmeq?)))))


(cpscm__global
  cpscmmemv
  (lambda (gk423 cpscm__x__41 cpscm__l__42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmmember
          (lambda (gretmember__424)
            (cpscm__trampoline (lambda () (funcall gk423 gretmember__424))))
          cpscm__x__41
          cpscm__l__42
          cpscmeqv?)))))


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
                                         (lambda (gretset!__437)
                                           (cpscm__trampoline
                                             (lambda () (funcall gk435 gretset!__437))))
                                         (setq cpscm__loop__43 cpscm__loop__43__tmp))))))
                          (lambda (g430)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm-
                                  (lambda (gret-__433)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm__loop__43
                                          (lambda (gret__loop__43__432)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk429 gret__loop__43__432))))
                                          gret-__433
                                          nil))))
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
                                                  (lambda (gretapply__440)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk439 gretapply__440))))
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
                                                                                  (lambda (gret__loop__43__447)
                                                                                    (cpscm__trampoline
                                                                                      (lambda () (funcall gk446 gret__loop__43__447))))
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
          (lambda (g427) (cpscm__trampoline (lambda () (funcall gk426 g427))))
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
                                         (lambda (gretset!__465)
                                           (cpscm__trampoline
                                             (lambda () (funcall gk462 gretset!__465))))
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
                                               (funcall
                                                 cpscm__loop__44
                                                 (lambda (gret__loop__44__460)
                                                   (cpscm__trampoline
                                                     (lambda () (funcall gk455 gret__loop__44__460))))
                                                 0
                                                 cpscm__l__41)))))
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
                                                  (lambda (gretapply__468)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk467 gretapply__468))))
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
                                                                                          (lambda (gret__loop__44__477)
                                                                                            (cpscm__trampoline
                                                                                              (lambda () (funcall gk474 gret__loop__44__477))))
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
          (lambda (g453) (cpscm__trampoline (lambda () (funcall gk452 g453))))
          'undefined
          'undefined
          'undefined)))))


(cpscm__global
  cpscmvector
  (lambda (gk481 &rest cpscm__l__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmlist->vector
          (lambda (gretlist->vector__482)
            (cpscm__trampoline
              (lambda () (funcall gk481 gretlist->vector__482))))
          cpscm__l__41)))))


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
                          (lambda (gk511 cpscm__n__43__tmp)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gretset!__512)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk511 gretset!__512))))
                                  (setq cpscm__n__43 cpscm__n__43__tmp)))))
                          (lambda (g488)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gk493 cpscm__loop__44)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gk496 cpscm__loop__44__tmp)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  (lambda (gretset!__497)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk496 gretset!__497))))
                                                  (setq cpscm__loop__44 cpscm__loop__44__tmp)))))
                                          (lambda (g494)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk493 cpscm__loop__44))))
                                          (lambda (gk499 cpscm__i__45)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscm=
                                                  (lambda (gret=__502)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          (lambda (gret_x_boolean->combinator__501)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  gret_x_boolean->combinator__501
                                                                  (lambda (gretapply__500)
                                                                    (cpscm__trampoline
                                                                      (lambda () (funcall gk499 gretapply__500))))
                                                                  (lambda (gk504)
                                                                    (cpscm__trampoline (lambda () (funcall gk504 t))))
                                                                  (lambda (gk506)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscmvector-set!
                                                                          (lambda (gretvector-set!__507)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscm+
                                                                                  (lambda (gret+__509)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          cpscm__loop__44
                                                                                          (lambda (gret__loop__44__508)
                                                                                            (cpscm__trampoline
                                                                                              (lambda () (funcall gk506 gret__loop__44__508))))
                                                                                          gret+__509))))
                                                                                  cpscm__i__45
                                                                                  1))))
                                                                          cpscm__v__41
                                                                          cpscm__i__45
                                                                          cpscm__x__42))))))))
                                                          (funcall cpscm_x_boolean->combinator gret=__502)))))
                                                  cpscm__i__45
                                                  cpscm__n__43))))))))
                                  (lambda (g491)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          g491
                                          (lambda (gretapply__490)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk487 gretapply__490))))
                                          0))))
                                  'undefined))))
                          gretvector-length__489))))
                  cpscm__v__41))))
          (lambda (g485) (cpscm__trampoline (lambda () (funcall gk484 g485))))
          'undefined)))))


(cpscm__global
  cpscmstring
  (lambda (gk514 &rest cpscm__l__41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmlist->string
          (lambda (gretlist->string__515)
            (cpscm__trampoline
              (lambda () (funcall gk514 gretlist->string__515))))
          cpscm__l__41)))))


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
                          (lambda (gk544 cpscm__n__43__tmp)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gretset!__545)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk544 gretset!__545))))
                                  (setq cpscm__n__43 cpscm__n__43__tmp)))))
                          (lambda (g521)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (gk526 cpscm__loop__44)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gk529 cpscm__loop__44__tmp)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  (lambda (gretset!__530)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk529 gretset!__530))))
                                                  (setq cpscm__loop__44 cpscm__loop__44__tmp)))))
                                          (lambda (g527)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk526 cpscm__loop__44))))
                                          (lambda (gk532 cpscm__i__45)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscm=
                                                  (lambda (gret=__535)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          (lambda (gret_x_boolean->combinator__534)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  gret_x_boolean->combinator__534
                                                                  (lambda (gretapply__533)
                                                                    (cpscm__trampoline
                                                                      (lambda () (funcall gk532 gretapply__533))))
                                                                  (lambda (gk537)
                                                                    (cpscm__trampoline (lambda () (funcall gk537 t))))
                                                                  (lambda (gk539)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscmstring-set!
                                                                          (lambda (gretstring-set!__540)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscm+
                                                                                  (lambda (gret+__542)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          cpscm__loop__44
                                                                                          (lambda (gret__loop__44__541)
                                                                                            (cpscm__trampoline
                                                                                              (lambda () (funcall gk539 gret__loop__44__541))))
                                                                                          gret+__542))))
                                                                                  cpscm__i__45
                                                                                  1))))
                                                                          cpscm__v__41
                                                                          cpscm__i__45
                                                                          cpscm__x__42))))))))
                                                          (funcall cpscm_x_boolean->combinator gret=__535)))))
                                                  cpscm__i__45
                                                  cpscm__n__43))))))))
                                  (lambda (g524)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          g524
                                          (lambda (gretapply__523)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk520 gretapply__523))))
                                          0))))
                                  'undefined))))
                          gretstring-length__522))))
                  cpscm__v__41))))
          (lambda (g518) (cpscm__trampoline (lambda () (funcall gk517 g518))))
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
                                          (lambda (g553)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk551 g553))))
                                          gret__thunk__42__554))))))))
                          cpscm__p__41))))
                  (lambda (g548)
                    (cpscm__trampoline (lambda () (funcall gk547 g548))))
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
                                  (lambda (gretapply__565)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk564 gretapply__565))))
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
                                                                  (lambda (gretapply__575)
                                                                    (cpscm__trampoline
                                                                      (lambda () (funcall gk574 gretapply__575))))
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
                                                  (lambda (g571)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk570 g571))))
                                                  gret__proc__41__572))))))))))))
                          (funcall
                            cpscm_x_boolean->combinator
                            cpscm__result-ready?__42)))))))))
          (lambda (g560) (cpscm__trampoline (lambda () (funcall gk559 g560))))
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
                  (funcall
                    (lambda (gretset!__585)
                      (cpscm__trampoline
                        (lambda () (funcall gk584 gretset!__585))))
                    (setq cpscm__vals-marker gretlist__586)))))
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
                  (lambda (gk600 cpscm__x__42)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (gret_x_boolean->combinator__602)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  gret_x_boolean->combinator__602
                                  (lambda (gretapply__601)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk600 gretapply__601))))
                                  (lambda (gk604)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk604 cpscm__x__42))))
                                  (lambda (gk606)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmcdr
                                          (lambda (gretcdr__609)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmnull?
                                                  (lambda (gretnull?__608)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmnot
                                                          (lambda (gretnot__607)
                                                            (cpscm__trampoline
                                                              (lambda () (funcall gk606 gretnot__607))))
                                                          gretnull?__608))))
                                                  gretcdr__609))))
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
                                  (lambda (gretapply__589)
                                    (cpscm__trampoline
                                      (lambda () (funcall gk588 gretapply__589))))
                                  (lambda (gk594)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmcons
                                          (lambda (gretcons__595)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk594 gretcons__595))))
                                          cpscm__vals-marker
                                          cpscm__things__41))))
                                  (lambda (gk597)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmcar
                                          (lambda (gretcar__598)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk597 gretcar__598))))
                                          cpscm__things__41))))))))
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
                                          (lambda (gretapply__612)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk611 gretapply__612))))
                                          (lambda (gk618)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcdr
                                                  (lambda (gretcdr__619)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk618 gretcdr__619))))
                                                  cpscm__vals__41))))
                                          (lambda (gk621)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmlist
                                                  (lambda (gretlist__622)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk621 gretlist__622))))
                                                  cpscm__vals__41))))))))
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
                                          (lambda (greteq?__625)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk624 greteq?__625))))
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
                                 (lambda (gretset!__641)
                                   (cpscm__trampoline
                                     (lambda () (funcall gk639 gretset!__641))))
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
                                          (lambda (gret__loop__43__635)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk633 gret__loop__43__635))))
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
                                          (lambda (gretset!__655)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk654 gretset!__655))))
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
                                                                          (lambda (gretset!__652)
                                                                            (cpscm__trampoline
                                                                              (lambda () (funcall gk646 gretset!__652))))
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
                                                          (lambda (gretapply__658)
                                                            (cpscm__trampoline
                                                              (lambda () (funcall gk657 gretapply__658))))
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
                                                                                        (funcall
                                                                                          cpscm__run-all__46
                                                                                          (lambda (gret__run-all__46__667)
                                                                                            (cpscm__trampoline
                                                                                              (lambda ()
                                                                                                (funcall gk664 gret__run-all__46__667))))
                                                                                          gretcdr__668))))
                                                                                  cpscm__to-apply__47))))))))
                                                                  cpscm__to-apply__47))))))))
                                                  (funcall
                                                    cpscm_x_boolean->combinator
                                                    gretnull?__660)))))
                                          cpscm__to-apply__47))))))))
                          (lambda (g644)
                            (cpscm__trampoline
                              (lambda () (funcall gk643 g644))))
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
                                  (lambda (gk684 cpscm__x__46)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (gret_x_boolean->combinator__686)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  gret_x_boolean->combinator__686
                                                  (lambda (gretapply__685)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk684 gretapply__685))))
                                                  (lambda (gk688)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk688 cpscm__x__46))))
                                                  (lambda (gk690)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmnull?
                                                          (lambda (gretnull?__692)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  (lambda (gk694 cpscm__x__47)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          (lambda (gret_x_boolean->combinator__696)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  gret_x_boolean->combinator__696
                                                                                  (lambda (gretapply__695)
                                                                                    (cpscm__trampoline
                                                                                      (lambda () (funcall gk694 gretapply__695))))
                                                                                  (lambda (gk698)
                                                                                    (cpscm__trampoline
                                                                                      (lambda () (funcall gk698 cpscm__x__47))))
                                                                                  (lambda (gk700)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          cpscmcar
                                                                                          (lambda (gretcar__703)
                                                                                            (cpscm__trampoline
                                                                                              (lambda ()
                                                                                                (funcall
                                                                                                  cpscmcar
                                                                                                  (lambda (gretcar__704)
                                                                                                    (cpscm__trampoline
                                                                                                      (lambda ()
                                                                                                        (funcall
                                                                                                          cpscmeq?
                                                                                                          (lambda (greteq?__702)
                                                                                                            (cpscm__trampoline
                                                                                                              (lambda ()
                                                                                                                (funcall
                                                                                                                  cpscmnot
                                                                                                                  (lambda (gretnot__701)
                                                                                                                    (cpscm__trampoline
                                                                                                                      (lambda () (funcall gk700 gretnot__701))))
                                                                                                                  greteq?__702))))
                                                                                                          gretcar__703
                                                                                                          gretcar__704))))
                                                                                                  cpscm__b__45))))
                                                                                          cpscm__a__44))))))))
                                                                          (funcall
                                                                            cpscm_x_boolean->combinator
                                                                            cpscm__x__47)))))
                                                                  (lambda (g691)
                                                                    (cpscm__trampoline
                                                                      (lambda () (funcall gk690 g691))))
                                                                  gretnull?__692))))
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
                                                  (lambda (gretapply__671)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall gk670 gretapply__671))))
                                                  (lambda (gk676)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscm__switch__42
                                                          (lambda (gret__switch__42__677)
                                                            (cpscm__trampoline
                                                              (lambda () (funcall gk676 gret__switch__42__677))))
                                                          cpscm__a__44
                                                          cpscm__b__45))))
                                                  (lambda (gk679)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcdr
                                                          (lambda (gretcdr__681)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmcdr
                                                                  (lambda (gretcdr__682)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscm__loop__43
                                                                          (lambda (gret__loop__43__680)
                                                                            (cpscm__trampoline
                                                                              (lambda () (funcall gk679 gret__loop__43__680))))
                                                                          gretcdr__681
                                                                          gretcdr__682))))
                                                                  cpscm__b__45))))
                                                          cpscm__a__44))))))))
                                          (funcall cpscm_x_boolean->combinator g673)))))
                                  gretnull?__674))))
                          cpscm__a__44))))))))
          (lambda (g631) (cpscm__trampoline (lambda () (funcall gk630 g631))))
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
          (lambda (g707) (cpscm__trampoline (lambda () (funcall gk706 g707))))
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
                                         (lambda (gretset!__732)
                                           (cpscm__trampoline
                                             (lambda () (funcall gk730 gretset!__732))))
                                         (setq cpscm__new-hnd__44 cpscm__new-hnd__44__tmp))))))
                          (lambda (g725)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcurrent-error-handler
                                  (lambda (gretcurrent-error-handler__727)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm__thunk__42
                                          (lambda (gret__thunk__42__728)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk724 gret__thunk__42__728))))))))
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
                                          (lambda (gret__hnd__41__736)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk734 gret__hnd__41__736))))
                                          cpscm__e__45
                                          cpscm__ek__46))))
                                  cpscm__old-hnd__43))))))))))))
          (lambda (g722) (cpscm__trampoline (lambda () (funcall gk721 g722))))
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
                      (lambda ()
                        (funcall
                          cpscmnewline
                          (lambda (gretnewline__741)
                            (cpscm__trampoline
                              (lambda () (funcall gk738 gretnewline__741))))))))
                  cpscm__e__41))))
          "Error: ")))))


(cpscm__drive
  (funcall
    (lambda (gk743)
      (cpscm__trampoline
        (lambda ()
          (funcall
            (lambda (gretset!__744)
              (cpscm__trampoline (lambda () (funcall gk743 gretset!__744))))
            (setq cpscm__err-hnd cpscm__default-err-hnd)))))
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
                          (lambda (gretapply__747)
                            (cpscm__trampoline
                              (lambda () (funcall gk746 gretapply__747))))
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
                                          (lambda (gretset!__754)
                                            (cpscm__trampoline
                                              (lambda () (funcall gk753 gretset!__754))))
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
            (lambda (gretcall-with-current-continuation__758)
              (cpscm__trampoline
                (lambda ()
                  (funcall gk757 gretcall-with-current-continuation__758))))
            (lambda (gk760 cpscm__exit__41)
              (cpscm__trampoline
                (lambda ()
                  (funcall
                    cpscmcall-with-values
                    (lambda (gretcall-with-values__761)
                      (cpscm__trampoline
                        (lambda () (funcall gk760 gretcall-with-values__761))))
                    (lambda (gk763)
                      (cpscm__trampoline
                        (lambda ()
                          (funcall
                            cpscmcall-with-current-continuation
                            (lambda (gretcall-with-current-continuation__764)
                              (cpscm__trampoline
                                (lambda ()
                                  (funcall
                                    gk763
                                    gretcall-with-current-continuation__764))))
                            (lambda (gk766 cpscm__cc__42)
                              (cpscm__trampoline
                                (lambda ()
                                  (progn (setq cpscm__err-cont cpscm__cc__42)
                                         (funcall
                                           cpscm__exit__41
                                           (lambda (gret__exit__41__768)
                                             (cpscm__trampoline
                                               (lambda () (funcall gk766 gret__exit__41__768))))
                                           t)))))))))
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
                                    (lambda (gretapply__771)
                                      (cpscm__trampoline
                                        (lambda () (funcall gk770 gretapply__771))))
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
          (lambda (gretcall-with-current-continuation__775)
            (cpscm__trampoline
              (lambda ()
                (funcall gk774 gretcall-with-current-continuation__775))))
          (lambda (gk777 cpscm__ek__42)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscm__err-cont
                  (lambda (gret%cpscm_c_err-cont__778)
                    (cpscm__trampoline
                      (lambda () (funcall gk777 gret%cpscm_c_err-cont__778))))
                  cpscm__e__41
                  cpscm__ek__42)))))))))


