(cpscm__global cpscm__vals-marker nil)


(cpscm__global cpscm__winders nil)


(cpscm__global cpscm__err-hnd nil)


(cpscm__global cpscm__debug-trampolines? nil)


(cpscm__global cpscm__err-cont nil)


(cpscm__global
  cpscmcall-with-current-continuation
  (lambda (cpscmk cpscmf)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (cpscmccwinders)
            (cpscm__trampoline
              (lambda ()
                (progn (funcall
                         cpscm__reduce-trampoline
                         (funcall
                           (lambda (g_3a_ccwinders_3a_1)
                             (cpscm__trampoline
                               (lambda ()
                                 (setq cpscmccwinders g_3a_ccwinders_3a_1))))
                           cpscm__winders))
                       (funcall
                         cpscm__reduce-trampoline
                         (funcall
                           cpscmf
                           cpscmk
                           (lambda (cpscm_5f_ &rest cpscmxs)
                             (cpscm__trampoline
                               (lambda ()
                                 (funcall
                                   cpscm__switch-winders
                                   (lambda (cpscm_5f_)
                                     (cpscm__trampoline
                                       (lambda ()
                                         (funcall cpscm__pack-vals cpscmk cpscmxs))))
                                   cpscmccwinders))))))))))
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
  (lambda (g_3a_k2 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_4)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_3)
                    (cpscm__trampoline
                      (lambda () (funcall g_3a_k2 g_3a_ret-car_3a_3))))
                  g_3a_ret-car_3a_4))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcadr
  (lambda (g_3a_k6 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_8)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_7)
                    (cpscm__trampoline
                      (lambda () (funcall g_3a_k6 g_3a_ret-car_3a_7))))
                  g_3a_ret-cdr_3a_8))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcdar
  (lambda (g_3a_k10 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_12)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_11)
                    (cpscm__trampoline
                      (lambda () (funcall g_3a_k10 g_3a_ret-cdr_3a_11))))
                  g_3a_ret-car_3a_12))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcddr
  (lambda (g_3a_k14 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_16)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_15)
                    (cpscm__trampoline
                      (lambda () (funcall g_3a_k14 g_3a_ret-cdr_3a_15))))
                  g_3a_ret-cdr_3a_16))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcaaar
  (lambda (g_3a_k18 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_21)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_20)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (g_3a_ret-car_3a_19)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k18 g_3a_ret-car_3a_19))))
                          g_3a_ret-car_3a_20))))
                  g_3a_ret-car_3a_21))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcaadr
  (lambda (g_3a_k23 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_26)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_25)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (g_3a_ret-car_3a_24)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k23 g_3a_ret-car_3a_24))))
                          g_3a_ret-car_3a_25))))
                  g_3a_ret-cdr_3a_26))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcadar
  (lambda (g_3a_k28 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_31)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_30)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (g_3a_ret-car_3a_29)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k28 g_3a_ret-car_3a_29))))
                          g_3a_ret-cdr_3a_30))))
                  g_3a_ret-car_3a_31))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcaddr
  (lambda (g_3a_k33 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_36)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_35)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (g_3a_ret-car_3a_34)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k33 g_3a_ret-car_3a_34))))
                          g_3a_ret-cdr_3a_35))))
                  g_3a_ret-cdr_3a_36))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcdaar
  (lambda (g_3a_k38 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_41)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_40)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (g_3a_ret-cdr_3a_39)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k38 g_3a_ret-cdr_3a_39))))
                          g_3a_ret-car_3a_40))))
                  g_3a_ret-car_3a_41))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcdadr
  (lambda (g_3a_k43 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_46)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_45)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (g_3a_ret-cdr_3a_44)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k43 g_3a_ret-cdr_3a_44))))
                          g_3a_ret-car_3a_45))))
                  g_3a_ret-cdr_3a_46))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcddar
  (lambda (g_3a_k48 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_51)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_50)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (g_3a_ret-cdr_3a_49)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k48 g_3a_ret-cdr_3a_49))))
                          g_3a_ret-cdr_3a_50))))
                  g_3a_ret-car_3a_51))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcdddr
  (lambda (g_3a_k53 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_56)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_55)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (g_3a_ret-cdr_3a_54)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k53 g_3a_ret-cdr_3a_54))))
                          g_3a_ret-cdr_3a_55))))
                  g_3a_ret-cdr_3a_56))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcaaaar
  (lambda (g_3a_k58 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_62)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_61)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (g_3a_ret-car_3a_60)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (g_3a_ret-car_3a_59)
                                    (cpscm__trampoline
                                      (lambda () (funcall g_3a_k58 g_3a_ret-car_3a_59))))
                                  g_3a_ret-car_3a_60))))
                          g_3a_ret-car_3a_61))))
                  g_3a_ret-car_3a_62))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcaaadr
  (lambda (g_3a_k64 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_68)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_67)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (g_3a_ret-car_3a_66)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (g_3a_ret-car_3a_65)
                                    (cpscm__trampoline
                                      (lambda () (funcall g_3a_k64 g_3a_ret-car_3a_65))))
                                  g_3a_ret-car_3a_66))))
                          g_3a_ret-car_3a_67))))
                  g_3a_ret-cdr_3a_68))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcaadar
  (lambda (g_3a_k70 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_74)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_73)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (g_3a_ret-car_3a_72)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (g_3a_ret-car_3a_71)
                                    (cpscm__trampoline
                                      (lambda () (funcall g_3a_k70 g_3a_ret-car_3a_71))))
                                  g_3a_ret-car_3a_72))))
                          g_3a_ret-cdr_3a_73))))
                  g_3a_ret-car_3a_74))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcaaddr
  (lambda (g_3a_k76 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_80)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_79)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (g_3a_ret-car_3a_78)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (g_3a_ret-car_3a_77)
                                    (cpscm__trampoline
                                      (lambda () (funcall g_3a_k76 g_3a_ret-car_3a_77))))
                                  g_3a_ret-car_3a_78))))
                          g_3a_ret-cdr_3a_79))))
                  g_3a_ret-cdr_3a_80))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcadaar
  (lambda (g_3a_k82 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_86)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_85)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (g_3a_ret-cdr_3a_84)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (g_3a_ret-car_3a_83)
                                    (cpscm__trampoline
                                      (lambda () (funcall g_3a_k82 g_3a_ret-car_3a_83))))
                                  g_3a_ret-cdr_3a_84))))
                          g_3a_ret-car_3a_85))))
                  g_3a_ret-car_3a_86))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcadadr
  (lambda (g_3a_k88 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_92)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_91)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (g_3a_ret-cdr_3a_90)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (g_3a_ret-car_3a_89)
                                    (cpscm__trampoline
                                      (lambda () (funcall g_3a_k88 g_3a_ret-car_3a_89))))
                                  g_3a_ret-cdr_3a_90))))
                          g_3a_ret-car_3a_91))))
                  g_3a_ret-cdr_3a_92))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcaddar
  (lambda (g_3a_k94 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_98)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_97)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (g_3a_ret-cdr_3a_96)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (g_3a_ret-car_3a_95)
                                    (cpscm__trampoline
                                      (lambda () (funcall g_3a_k94 g_3a_ret-car_3a_95))))
                                  g_3a_ret-cdr_3a_96))))
                          g_3a_ret-cdr_3a_97))))
                  g_3a_ret-car_3a_98))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcadddr
  (lambda (g_3a_k100 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_104)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_103)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (g_3a_ret-cdr_3a_102)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (g_3a_ret-car_3a_101)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k100 g_3a_ret-car_3a_101))))
                                  g_3a_ret-cdr_3a_102))))
                          g_3a_ret-cdr_3a_103))))
                  g_3a_ret-cdr_3a_104))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcdaaar
  (lambda (g_3a_k106 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_110)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_109)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (g_3a_ret-car_3a_108)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (g_3a_ret-cdr_3a_107)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k106 g_3a_ret-cdr_3a_107))))
                                  g_3a_ret-car_3a_108))))
                          g_3a_ret-car_3a_109))))
                  g_3a_ret-car_3a_110))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcdaadr
  (lambda (g_3a_k112 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_116)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_115)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (g_3a_ret-car_3a_114)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (g_3a_ret-cdr_3a_113)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k112 g_3a_ret-cdr_3a_113))))
                                  g_3a_ret-car_3a_114))))
                          g_3a_ret-car_3a_115))))
                  g_3a_ret-cdr_3a_116))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcdadar
  (lambda (g_3a_k118 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_122)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_121)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (g_3a_ret-car_3a_120)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (g_3a_ret-cdr_3a_119)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k118 g_3a_ret-cdr_3a_119))))
                                  g_3a_ret-car_3a_120))))
                          g_3a_ret-cdr_3a_121))))
                  g_3a_ret-car_3a_122))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcdaddr
  (lambda (g_3a_k124 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_128)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_127)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcar
                          (lambda (g_3a_ret-car_3a_126)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (g_3a_ret-cdr_3a_125)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k124 g_3a_ret-cdr_3a_125))))
                                  g_3a_ret-car_3a_126))))
                          g_3a_ret-cdr_3a_127))))
                  g_3a_ret-cdr_3a_128))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcddaar
  (lambda (g_3a_k130 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_134)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_133)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (g_3a_ret-cdr_3a_132)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (g_3a_ret-cdr_3a_131)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k130 g_3a_ret-cdr_3a_131))))
                                  g_3a_ret-cdr_3a_132))))
                          g_3a_ret-car_3a_133))))
                  g_3a_ret-car_3a_134))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcddadr
  (lambda (g_3a_k136 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_140)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_139)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (g_3a_ret-cdr_3a_138)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (g_3a_ret-cdr_3a_137)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k136 g_3a_ret-cdr_3a_137))))
                                  g_3a_ret-cdr_3a_138))))
                          g_3a_ret-car_3a_139))))
                  g_3a_ret-cdr_3a_140))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcdddar
  (lambda (g_3a_k142 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcar
          (lambda (g_3a_ret-car_3a_146)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_145)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (g_3a_ret-cdr_3a_144)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (g_3a_ret-cdr_3a_143)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k142 g_3a_ret-cdr_3a_143))))
                                  g_3a_ret-cdr_3a_144))))
                          g_3a_ret-cdr_3a_145))))
                  g_3a_ret-car_3a_146))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmcddddr
  (lambda (g_3a_k148 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcdr
          (lambda (g_3a_ret-cdr_3a_152)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcdr
                  (lambda (g_3a_ret-cdr_3a_151)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcdr
                          (lambda (g_3a_ret-cdr_3a_150)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (g_3a_ret-cdr_3a_149)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k148 g_3a_ret-cdr_3a_149))))
                                  g_3a_ret-cdr_3a_150))))
                          g_3a_ret-cdr_3a_151))))
                  g_3a_ret-cdr_3a_152))))
          cpscm_5f_x_5f_41)))))


(cpscm__global
  cpscmnot
  (lambda (g_3a_k154 cpscm_5f_x_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_ret-_20_boolean->combinator_3a_156)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  g_3a_ret-_20_boolean->combinator_3a_156
                  (lambda (g_3a_ret-apply_3a_155)
                    (cpscm__trampoline
                      (lambda () (funcall g_3a_k154 g_3a_ret-apply_3a_155))))
                  (lambda (g_3a_k158)
                    (cpscm__trampoline (lambda () (funcall g_3a_k158 nil))))
                  (lambda (g_3a_k160)
                    (cpscm__trampoline (lambda () (funcall g_3a_k160 t))))))))
          (funcall cpscm_20_boolean->combinator cpscm_5f_x_5f_41))))))


(cpscm__global
  cpscmlist
  (lambda (g_3a_k162 &rest cpscm_5f_l_5f_41)
    (cpscm__trampoline (lambda () (funcall g_3a_k162 cpscm_5f_l_5f_41)))))


(cpscm__global
  cpscmlength
  (lambda (g_3a_k164 cpscm_5f_l_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k167 cpscm_5f_loop_5f_42)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_k171 cpscm_5f_loop_5f_42_5f_tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_ret-set!_3a_172)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall g_3a_k171 g_3a_ret-set!_3a_172))))
                          (setq cpscm_5f_loop_5f_42
                                cpscm_5f_loop_5f_42_5f_tmp)))))
                  (lambda (g168)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm_5f_loop_5f_42
                          (lambda (g_3a_ret-_5f_loop_5f_42_3a_169)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  g_3a_k167
                                  g_3a_ret-_5f_loop_5f_42_3a_169))))
                          cpscm_5f_l_5f_41
                          0))))
                  (lambda (g_3a_k174 cpscm_5f_l_5f_43 cpscm_5f_res_5f_44)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (g_3a_ret-null?_3a_177)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_ret-_20_boolean->combinator_3a_176)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          g_3a_ret-_20_boolean->combinator_3a_176
                                          (lambda (g_3a_ret-apply_3a_175)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k174 g_3a_ret-apply_3a_175))))
                                          (lambda (g_3a_k179)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k179 cpscm_5f_res_5f_44))))
                                          (lambda (g_3a_k181)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcdr
                                                  (lambda (g_3a_ret-cdr_3a_183)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscm+
                                                          (lambda (g_3a_ret-+_3a_184)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscm_5f_loop_5f_42
                                                                  (lambda (g_3a_ret-_5f_loop_5f_42_3a_182)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          g_3a_k181
                                                                          g_3a_ret-_5f_loop_5f_42_3a_182))))
                                                                  g_3a_ret-cdr_3a_183
                                                                  g_3a_ret-+_3a_184))))
                                                          cpscm_5f_res_5f_44
                                                          1))))
                                                  cpscm_5f_l_5f_43))))))))
                                  (funcall
                                    cpscm_20_boolean->combinator
                                    g_3a_ret-null?_3a_177)))))
                          cpscm_5f_l_5f_43))))))))
          (lambda (g165)
            (cpscm__trampoline (lambda () (funcall g_3a_k164 g165))))
          'undefined)))))


(cpscm__global
  cpscmlist?
  (lambda (g_3a_k186 cpscm_5f_l_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (g_3a_ret-null?_3a_189)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_ret-_20_boolean->combinator_3a_188)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          g_3a_ret-_20_boolean->combinator_3a_188
                          (lambda (g_3a_ret-apply_3a_187)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall g_3a_k186 g_3a_ret-apply_3a_187))))
                          (lambda (g_3a_k191)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k191 t))))
                          (lambda (g_3a_k193)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmpair?
                                  (lambda (g_3a_ret-pair?_3a_196)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (g_3a_ret-_20_boolean->combinator_3a_195)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  g_3a_ret-_20_boolean->combinator_3a_195
                                                  (lambda (g_3a_ret-apply_3a_194)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k193 g_3a_ret-apply_3a_194))))
                                                  (lambda (g_3a_k198)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcdr
                                                          (lambda (g_3a_ret-cdr_3a_200)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmlist?
                                                                  (lambda (g_3a_ret-list?_3a_199)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall g_3a_k198 g_3a_ret-list?_3a_199))))
                                                                  g_3a_ret-cdr_3a_200))))
                                                          cpscm_5f_l_5f_41))))
                                                  (lambda (g_3a_k202)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall g_3a_k202 nil))))))))
                                          (funcall
                                            cpscm_20_boolean->combinator
                                            g_3a_ret-pair?_3a_196)))))
                                  cpscm_5f_l_5f_41))))))))
                  (funcall
                    cpscm_20_boolean->combinator
                    g_3a_ret-null?_3a_189)))))
          cpscm_5f_l_5f_41)))))


(cpscm__global
  cpscmlist-tail
  (lambda (g_3a_k204 cpscm_5f_x_5f_41 cpscm_5f_k_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmzero?
          (lambda (g_3a_ret-zero?_3a_207)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_ret-_20_boolean->combinator_3a_206)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          g_3a_ret-_20_boolean->combinator_3a_206
                          (lambda (g_3a_ret-apply_3a_205)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall g_3a_k204 g_3a_ret-apply_3a_205))))
                          (lambda (g_3a_k209)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k209 cpscm_5f_x_5f_41))))
                          (lambda (g_3a_k211)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcdr
                                  (lambda (g_3a_ret-cdr_3a_213)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm-
                                          (lambda (g_3a_ret--_3a_214)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmlist-tail
                                                  (lambda (g_3a_ret-list-tail_3a_212)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k211 g_3a_ret-list-tail_3a_212))))
                                                  g_3a_ret-cdr_3a_213
                                                  g_3a_ret--_3a_214))))
                                          cpscm_5f_k_5f_42
                                          1))))
                                  cpscm_5f_x_5f_41))))))))
                  (funcall
                    cpscm_20_boolean->combinator
                    g_3a_ret-zero?_3a_207)))))
          cpscm_5f_k_5f_42)))))


(cpscm__global
  cpscmlist-ref
  (lambda (g_3a_k216 cpscm_5f_list_5f_41 cpscm_5f_k_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmlist-tail
          (lambda (g_3a_ret-list-tail_3a_218)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcar
                  (lambda (g_3a_ret-car_3a_217)
                    (cpscm__trampoline
                      (lambda () (funcall g_3a_k216 g_3a_ret-car_3a_217))))
                  g_3a_ret-list-tail_3a_218))))
          cpscmx
          cpscm_5f_k_5f_42)))))


(cpscm__global
  cpscmreverse
  (lambda (g_3a_k220 cpscm_5f_l_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k223 cpscm_5f_loop_5f_42)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_k227 cpscm_5f_loop_5f_42_5f_tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_ret-set!_3a_228)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall g_3a_k227 g_3a_ret-set!_3a_228))))
                          (setq cpscm_5f_loop_5f_42
                                cpscm_5f_loop_5f_42_5f_tmp)))))
                  (lambda (g224)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm_5f_loop_5f_42
                          (lambda (g_3a_ret-_5f_loop_5f_42_3a_225)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  g_3a_k223
                                  g_3a_ret-_5f_loop_5f_42_3a_225))))
                          cpscm_5f_l_5f_41
                          nil))))
                  (lambda (g_3a_k230 cpscm_5f_l_5f_43 cpscm_5f_res_5f_44)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (g_3a_ret-null?_3a_233)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_ret-_20_boolean->combinator_3a_232)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          g_3a_ret-_20_boolean->combinator_3a_232
                                          (lambda (g_3a_ret-apply_3a_231)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k230 g_3a_ret-apply_3a_231))))
                                          (lambda (g_3a_k235)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k235 cpscm_5f_res_5f_44))))
                                          (lambda (g_3a_k237)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcdr
                                                  (lambda (g_3a_ret-cdr_3a_239)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcar
                                                          (lambda (g_3a_ret-car_3a_241)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmcons
                                                                  (lambda (g_3a_ret-cons_3a_240)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscm_5f_loop_5f_42
                                                                          (lambda (g_3a_ret-_5f_loop_5f_42_3a_238)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  g_3a_k237
                                                                                  g_3a_ret-_5f_loop_5f_42_3a_238))))
                                                                          g_3a_ret-cdr_3a_239
                                                                          g_3a_ret-cons_3a_240))))
                                                                  g_3a_ret-car_3a_241
                                                                  cpscm_5f_res_5f_44))))
                                                          cpscm_5f_l_5f_43))))
                                                  cpscm_5f_l_5f_43))))))))
                                  (funcall
                                    cpscm_20_boolean->combinator
                                    g_3a_ret-null?_3a_233)))))
                          cpscm_5f_l_5f_43))))))))
          (lambda (g221)
            (cpscm__trampoline (lambda () (funcall g_3a_k220 g221))))
          'undefined)))))


(cpscm__global
  cpscmappend
  (lambda (g_3a_k243 &rest cpscm_5f_ls_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k246 cpscm_5f_spill_5f_42 cpscm_5f_loop_5f_43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_k250
                           cpscm_5f_spill_5f_42_5f_tmp
                           cpscm_5f_loop_5f_43_5f_tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (progn (setq cpscm_5f_spill_5f_42
                                     cpscm_5f_spill_5f_42_5f_tmp)
                               (funcall
                                 cpscm__reduce-trampoline
                                 (funcall
                                   (lambda (g_3a_ret-set!_3a_252)
                                     (cpscm__trampoline
                                       (lambda ()
                                         (funcall g_3a_k250 g_3a_ret-set!_3a_252))))
                                   (setq cpscm_5f_loop_5f_43
                                         cpscm_5f_loop_5f_43_5f_tmp)))))))
                  (lambda (g247)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm_5f_loop_5f_43
                          (lambda (g_3a_ret-_5f_loop_5f_43_3a_248)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  g_3a_k246
                                  g_3a_ret-_5f_loop_5f_43_3a_248))))
                          cpscm_5f_ls_5f_41
                          nil))))
                  (lambda (g_3a_k254 cpscm_5f_l_5f_44 cpscm_5f_res_5f_45)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (g_3a_ret-null?_3a_257)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_ret-_20_boolean->combinator_3a_256)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          g_3a_ret-_20_boolean->combinator_3a_256
                                          (lambda (g_3a_ret-apply_3a_255)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k254 g_3a_ret-apply_3a_255))))
                                          (lambda (g_3a_k259)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k259 cpscm_5f_res_5f_45))))
                                          (lambda (g_3a_k261)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcdr
                                                  (lambda (g_3a_ret-cdr_3a_263)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcar
                                                          (lambda (g_3a_ret-car_3a_265)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmcons
                                                                  (lambda (g_3a_ret-cons_3a_264)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscm_5f_spill_5f_42
                                                                          (lambda (g_3a_ret-_5f_spill_5f_42_3a_262)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  g_3a_k261
                                                                                  g_3a_ret-_5f_spill_5f_42_3a_262))))
                                                                          g_3a_ret-cdr_3a_263
                                                                          g_3a_ret-cons_3a_264))))
                                                                  g_3a_ret-car_3a_265
                                                                  cpscm_5f_res_5f_45))))
                                                          cpscm_5f_l_5f_44))))
                                                  cpscm_5f_l_5f_44))))))))
                                  (funcall
                                    cpscm_20_boolean->combinator
                                    g_3a_ret-null?_3a_257)))))
                          cpscm_5f_l_5f_44))))
                  (lambda (g_3a_k267 cpscm_5f_ls_5f_44 cpscm_5f_res_5f_45)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (g_3a_ret-null?_3a_270)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_ret-_20_boolean->combinator_3a_269)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          g_3a_ret-_20_boolean->combinator_3a_269
                                          (lambda (g_3a_ret-apply_3a_268)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k267 g_3a_ret-apply_3a_268))))
                                          (lambda (g_3a_k272)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmreverse!
                                                  (lambda (g_3a_ret-reverse!_3a_273)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k272 g_3a_ret-reverse!_3a_273))))
                                                  cpscm_5f_res_5f_45))))
                                          (lambda (g_3a_k275)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcdr
                                                  (lambda (g_3a_ret-cdr_3a_277)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcar
                                                          (lambda (g_3a_ret-car_3a_279)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscm_5f_spill_5f_42
                                                                  (lambda (g_3a_ret-_5f_spill_5f_42_3a_278)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscm_5f_loop_5f_43
                                                                          (lambda (g_3a_ret-_5f_loop_5f_43_3a_276)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  g_3a_k275
                                                                                  g_3a_ret-_5f_loop_5f_43_3a_276))))
                                                                          g_3a_ret-cdr_3a_277
                                                                          g_3a_ret-_5f_spill_5f_42_3a_278))))
                                                                  g_3a_ret-car_3a_279
                                                                  cpscm_5f_res_5f_45))))
                                                          cpscm_5f_ls_5f_44))))
                                                  cpscm_5f_ls_5f_44))))))))
                                  (funcall
                                    cpscm_20_boolean->combinator
                                    g_3a_ret-null?_3a_270)))))
                          cpscm_5f_ls_5f_44))))))))
          (lambda (g244)
            (cpscm__trampoline (lambda () (funcall g_3a_k243 g244))))
          'undefined
          'undefined)))))


(cpscm__global cpscmappend! cpscmappend)


(cpscm__global
  cpscmappend-reverse
  (lambda (g_3a_k281 cpscm_5f_rev-head_5f_41 cpscm_5f_tail_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmreverse
          (lambda (g_3a_ret-reverse_3a_283)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmappend
                  (lambda (g_3a_ret-append_3a_282)
                    (cpscm__trampoline
                      (lambda () (funcall g_3a_k281 g_3a_ret-append_3a_282))))
                  g_3a_ret-reverse_3a_283
                  cpscm_5f_tail_5f_42))))
          cpscm_5f_rev-head_5f_41)))))


(cpscm__global cpscmappend-reverse! cpscmappend-reverse)


(cpscm__global
  cpscmreverse!
  (lambda (g_3a_k285 cpscm_5f_l_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmreverse
          (lambda (g_3a_ret-reverse_3a_286)
            (cpscm__trampoline
              (lambda () (funcall g_3a_k285 g_3a_ret-reverse_3a_286))))
          cpscm_5f_l_5f_41)))))


(cpscm__global
  cpscmfind-tail
  (lambda (g_3a_k288 cpscm_5f_pred_5f_41 cpscm_5f_l_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k291 cpscm_5f_lp_5f_43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_k295 cpscm_5f_lp_5f_43_5f_tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_ret-set!_3a_296)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall g_3a_k295 g_3a_ret-set!_3a_296))))
                          (setq cpscm_5f_lp_5f_43 cpscm_5f_lp_5f_43_5f_tmp)))))
                  (lambda (g292)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm_5f_lp_5f_43
                          (lambda (g_3a_ret-_5f_lp_5f_43_3a_293)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall g_3a_k291 g_3a_ret-_5f_lp_5f_43_3a_293))))
                          cpscm_5f_l_5f_42))))
                  (lambda (g_3a_k298 cpscm_5f_l_5f_44)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (g_3a_ret-null?_3a_302)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmnot
                                  (lambda (g_3a_ret-not_3a_301)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (g_3a_ret-_20_boolean->combinator_3a_300)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  g_3a_ret-_20_boolean->combinator_3a_300
                                                  (lambda (g_3a_ret-apply_3a_299)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k298 g_3a_ret-apply_3a_299))))
                                                  (lambda (g_3a_k304)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcar
                                                          (lambda (g_3a_ret-car_3a_308)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscm_5f_pred_5f_41
                                                                  (lambda (g_3a_ret-_5f_pred_5f_41_3a_307)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          (lambda (g_3a_ret-_20_boolean->combinator_3a_306)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  g_3a_ret-_20_boolean->combinator_3a_306
                                                                                  (lambda (g_3a_ret-apply_3a_305)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall g_3a_k304 g_3a_ret-apply_3a_305))))
                                                                                  (lambda (g_3a_k310)
                                                                                    (cpscm__trampoline
                                                                                      (lambda () (funcall g_3a_k310 cpscm_5f_l_5f_44))))
                                                                                  (lambda (g_3a_k312)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          cpscmcdr
                                                                                          (lambda (g_3a_ret-cdr_3a_314)
                                                                                            (cpscm__trampoline
                                                                                              (lambda ()
                                                                                                (funcall
                                                                                                  cpscm_5f_lp_5f_43
                                                                                                  (lambda (g_3a_ret-_5f_lp_5f_43_3a_313)
                                                                                                    (cpscm__trampoline
                                                                                                      (lambda ()
                                                                                                        (funcall g_3a_k312 g_3a_ret-_5f_lp_5f_43_3a_313))))
                                                                                                  g_3a_ret-cdr_3a_314))))
                                                                                          cpscm_5f_l_5f_44))))))))
                                                                          (funcall
                                                                            cpscm_20_boolean->combinator
                                                                            g_3a_ret-_5f_pred_5f_41_3a_307)))))
                                                                  g_3a_ret-car_3a_308))))
                                                          cpscm_5f_l_5f_44))))
                                                  (lambda (g_3a_k316)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall g_3a_k316 nil))))))))
                                          (funcall
                                            cpscm_20_boolean->combinator
                                            g_3a_ret-not_3a_301)))))
                                  g_3a_ret-null?_3a_302))))
                          cpscm_5f_l_5f_44))))))))
          (lambda (g289)
            (cpscm__trampoline (lambda () (funcall g_3a_k288 g289))))
          'undefined)))))


(cpscm__global
  cpscmfind
  (lambda (g_3a_k318 cpscm_5f_pred_5f_41 cpscm_5f_list_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmfind-tail
          (lambda (g_3a_ret-find-tail_3a_320)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_k322)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_ret-_20_boolean->combinator_3a_324)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  g_3a_ret-_20_boolean->combinator_3a_324
                                  (lambda (g_3a_ret-apply_3a_323)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k322 g_3a_ret-apply_3a_323))))
                                  (lambda (g_3a_k326)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmcar
                                          (lambda (g_3a_ret-car_3a_327)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k326 g_3a_ret-car_3a_327))))
                                          g_3a_ret-find-tail_3a_320))))
                                  (lambda (g_3a_k329)
                                    (cpscm__trampoline
                                      (lambda () (funcall g_3a_k329 nil))))))))
                          (funcall
                            cpscm_20_boolean->combinator
                            g_3a_ret-find-tail_3a_320)))))
                  (lambda (g319)
                    (cpscm__trampoline
                      (lambda () (funcall g_3a_k318 g319))))))))
          cpscm_5f_pred_5f_41
          cpscm_5f_list_5f_42)))))


(cpscm__global
  cpscmmap
  (lambda (g_3a_k331 cpscm_5f_f_5f_41 cpscm_5f_l_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k334 cpscm_5f_loop_5f_43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_k338 cpscm_5f_loop_5f_43_5f_tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_ret-set!_3a_339)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall g_3a_k338 g_3a_ret-set!_3a_339))))
                          (setq cpscm_5f_loop_5f_43
                                cpscm_5f_loop_5f_43_5f_tmp)))))
                  (lambda (g335)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm_5f_loop_5f_43
                          (lambda (g_3a_ret-_5f_loop_5f_43_3a_336)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  g_3a_k334
                                  g_3a_ret-_5f_loop_5f_43_3a_336))))
                          cpscm_5f_l_5f_42
                          nil))))
                  (lambda (g_3a_k341 cpscm_5f_l_5f_44 cpscm_5f_res_5f_45)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (g_3a_ret-null?_3a_344)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_ret-_20_boolean->combinator_3a_343)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          g_3a_ret-_20_boolean->combinator_3a_343
                                          (lambda (g_3a_ret-apply_3a_342)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k341 g_3a_ret-apply_3a_342))))
                                          (lambda (g_3a_k346)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmreverse!
                                                  (lambda (g_3a_ret-reverse!_3a_347)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k346 g_3a_ret-reverse!_3a_347))))
                                                  cpscm_5f_res_5f_45))))
                                          (lambda (g_3a_k349)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcdr
                                                  (lambda (g_3a_ret-cdr_3a_351)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcar
                                                          (lambda (g_3a_ret-car_3a_354)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscm_5f_f_5f_41
                                                                  (lambda (g_3a_ret-_5f_f_5f_41_3a_353)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscmcons
                                                                          (lambda (g_3a_ret-cons_3a_352)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscm_5f_loop_5f_43
                                                                                  (lambda (g_3a_ret-_5f_loop_5f_43_3a_350)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          g_3a_k349
                                                                                          g_3a_ret-_5f_loop_5f_43_3a_350))))
                                                                                  g_3a_ret-cdr_3a_351
                                                                                  g_3a_ret-cons_3a_352))))
                                                                          g_3a_ret-_5f_f_5f_41_3a_353
                                                                          cpscm_5f_res_5f_45))))
                                                                  g_3a_ret-car_3a_354))))
                                                          cpscm_5f_l_5f_44))))
                                                  cpscm_5f_l_5f_44))))))))
                                  (funcall
                                    cpscm_20_boolean->combinator
                                    g_3a_ret-null?_3a_344)))))
                          cpscm_5f_l_5f_44))))))))
          (lambda (g332)
            (cpscm__trampoline (lambda () (funcall g_3a_k331 g332))))
          'undefined)))))


(cpscm__global
  cpscmfor-each
  (lambda (g_3a_k356 cpscm_5f_k_5f_41 cpscm_5f_f_5f_42 cpscm_5f_l_5f_43)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k359 cpscm_5f_loop_5f_44)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_k363 cpscm_5f_loop_5f_44_5f_tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_ret-set!_3a_364)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall g_3a_k363 g_3a_ret-set!_3a_364))))
                          (setq cpscm_5f_loop_5f_44
                                cpscm_5f_loop_5f_44_5f_tmp)))))
                  (lambda (g360)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscm_5f_loop_5f_44
                          (lambda (g_3a_ret-_5f_loop_5f_44_3a_361)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  g_3a_k359
                                  g_3a_ret-_5f_loop_5f_44_3a_361))))
                          cpscm_5f_l_5f_43
                          nil))))
                  (lambda (g_3a_k366 cpscm_5f_l_5f_45)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (g_3a_ret-null?_3a_369)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_ret-_20_boolean->combinator_3a_368)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          g_3a_ret-_20_boolean->combinator_3a_368
                                          (lambda (g_3a_ret-apply_3a_367)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k366 g_3a_ret-apply_3a_367))))
                                          (lambda (g_3a_k371)
                                            (cpscm__trampoline
                                              (lambda () (funcall g_3a_k371 t))))
                                          (lambda (g_3a_k373)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcar
                                                  (lambda (g_3a_ret-car_3a_375)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscm_5f_f_5f_42
                                                          (lambda (g_3a_ret-_5f_f_5f_42_3a_374)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmcdr
                                                                  (lambda (g_3a_ret-cdr_3a_377)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscm_5f_loop_5f_44
                                                                          (lambda (g_3a_ret-_5f_loop_5f_44_3a_376)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  g_3a_k373
                                                                                  g_3a_ret-_5f_loop_5f_44_3a_376))))
                                                                          g_3a_ret-cdr_3a_377))))
                                                                  cpscm_5f_l_5f_45))))
                                                          g_3a_ret-car_3a_375))))
                                                  cpscm_5f_l_5f_45))))))))
                                  (funcall
                                    cpscm_20_boolean->combinator
                                    g_3a_ret-null?_3a_369)))))
                          cpscm_5f_l_5f_45))))))))
          (lambda (g357)
            (cpscm__trampoline (lambda () (funcall g_3a_k356 g357))))
          'undefined)))))


(cpscm__global
  cpscmassoc
  (lambda (g_3a_k379
           cpscm_5f_x_5f_41
           cpscm_5f_lis_5f_42
           &rest
           cpscm_5f_maybe-=_5f_43)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (g_3a_ret-null?_3a_383)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_ret-_20_boolean->combinator_3a_382)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          g_3a_ret-_20_boolean->combinator_3a_382
                          (lambda (g_3a_ret-apply_3a_381)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_k385)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmfind
                                          (lambda (g_3a_ret-find_3a_386)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k385 g_3a_ret-find_3a_386))))
                                          (lambda (g_3a_k388 cpscm_5f_entry_5f_45)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcar
                                                  (lambda (g_3a_ret-car_3a_390)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          g_3a_ret-apply_3a_381
                                                          (lambda (g_3a_ret-_5f_e_5f_44_3a_389)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall g_3a_k388 g_3a_ret-_5f_e_5f_44_3a_389))))
                                                          cpscm_5f_x_5f_41
                                                          g_3a_ret-car_3a_390))))
                                                  cpscm_5f_entry_5f_45))))
                                          cpscm_5f_lis_5f_42))))
                                  (lambda (g380)
                                    (cpscm__trampoline
                                      (lambda () (funcall g_3a_k379 g380))))))))
                          (lambda (g_3a_k392)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k392 cpscmequal?))))
                          (lambda (g_3a_k394)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (g_3a_ret-car_3a_395)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k394 g_3a_ret-car_3a_395))))
                                  cpscm_5f_maybe-=_5f_43))))))))
                  (funcall
                    cpscm_20_boolean->combinator
                    g_3a_ret-null?_3a_383)))))
          cpscm_5f_maybe-=_5f_43)))))


(cpscm__global
  cpscmassq
  (lambda (g_3a_k397 cpscm_5f_x_5f_41 cpscm_5f_l_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmassoc
          (lambda (g_3a_ret-assoc_3a_398)
            (cpscm__trampoline
              (lambda () (funcall g_3a_k397 g_3a_ret-assoc_3a_398))))
          cpscm_5f_x_5f_41
          cpscm_5f_l_5f_42
          cpscmeq?)))))


(cpscm__global
  cpscmassv
  (lambda (g_3a_k400 cpscm_5f_x_5f_41 cpscm_5f_l_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmassoc
          (lambda (g_3a_ret-assoc_3a_401)
            (cpscm__trampoline
              (lambda () (funcall g_3a_k400 g_3a_ret-assoc_3a_401))))
          cpscm_5f_x_5f_41
          cpscm_5f_l_5f_42
          cpscmeqv?)))))


(cpscm__global
  cpscmmember
  (lambda (g_3a_k403
           cpscm_5f_x_5f_41
           cpscm_5f_lis_5f_42
           &rest
           cpscm_5f_maybe-=_5f_43)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (g_3a_ret-null?_3a_407)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_ret-_20_boolean->combinator_3a_406)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          g_3a_ret-_20_boolean->combinator_3a_406
                          (lambda (g_3a_ret-apply_3a_405)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_k409)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmfind-tail
                                          (lambda (g_3a_ret-find-tail_3a_410)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k409 g_3a_ret-find-tail_3a_410))))
                                          (lambda (g_3a_k412 cpscm_5f_y_5f_45)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  g_3a_ret-apply_3a_405
                                                  (lambda (g_3a_ret-_5f_e_5f_44_3a_413)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k412 g_3a_ret-_5f_e_5f_44_3a_413))))
                                                  cpscm_5f_x_5f_41
                                                  cpscm_5f_y_5f_45))))
                                          cpscm_5f_lis_5f_42))))
                                  (lambda (g404)
                                    (cpscm__trampoline
                                      (lambda () (funcall g_3a_k403 g404))))))))
                          (lambda (g_3a_k415)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k415 cpscmequal?))))
                          (lambda (g_3a_k417)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (g_3a_ret-car_3a_418)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k417 g_3a_ret-car_3a_418))))
                                  cpscm_5f_maybe-=_5f_43))))))))
                  (funcall
                    cpscm_20_boolean->combinator
                    g_3a_ret-null?_3a_407)))))
          cpscm_5f_maybe-=_5f_43)))))


(cpscm__global
  cpscmmemq
  (lambda (g_3a_k420 cpscm_5f_x_5f_41 cpscm_5f_l_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmmember
          (lambda (g_3a_ret-member_3a_421)
            (cpscm__trampoline
              (lambda () (funcall g_3a_k420 g_3a_ret-member_3a_421))))
          cpscm_5f_x_5f_41
          cpscm_5f_l_5f_42
          cpscmeq?)))))


(cpscm__global
  cpscmmemv
  (lambda (g_3a_k423 cpscm_5f_x_5f_41 cpscm_5f_l_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmmember
          (lambda (g_3a_ret-member_3a_424)
            (cpscm__trampoline
              (lambda () (funcall g_3a_k423 g_3a_ret-member_3a_424))))
          cpscm_5f_x_5f_41
          cpscm_5f_l_5f_42
          cpscmeqv?)))))


(cpscm__global
  cpscmvector->list
  (lambda (g_3a_k426 cpscm_5f_v_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k429 cpscm_5f_n_5f_42 cpscm_5f_loop_5f_43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmvector-length
                  (lambda (g_3a_ret-vector-length_3a_431)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_k435 cpscm_5f_loop_5f_43_5f_tmp)
                            (cpscm__trampoline
                              (lambda ()
                                (progn (setq cpscm_5f_n_5f_42
                                             g_3a_ret-vector-length_3a_431)
                                       (funcall
                                         cpscm__reduce-trampoline
                                         (funcall
                                           (lambda (g_3a_ret-set!_3a_437)
                                             (cpscm__trampoline
                                               (lambda ()
                                                 (funcall g_3a_k435 g_3a_ret-set!_3a_437))))
                                           (setq cpscm_5f_loop_5f_43
                                                 cpscm_5f_loop_5f_43_5f_tmp)))))))
                          (lambda (g430)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm-
                                  (lambda (g_3a_ret--_3a_433)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm_5f_loop_5f_43
                                          (lambda (g_3a_ret-_5f_loop_5f_43_3a_432)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  g_3a_k429
                                                  g_3a_ret-_5f_loop_5f_43_3a_432))))
                                          g_3a_ret--_3a_433
                                          nil))))
                                  cpscm_5f_n_5f_42
                                  1))))
                          (lambda (g_3a_k439 cpscm_5f_i_5f_44 cpscm_5f_res_5f_45)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm<
                                  (lambda (g_3a_ret-<_3a_442)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (g_3a_ret-_20_boolean->combinator_3a_441)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  g_3a_ret-_20_boolean->combinator_3a_441
                                                  (lambda (g_3a_ret-apply_3a_440)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k439 g_3a_ret-apply_3a_440))))
                                                  (lambda (g_3a_k444)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k444 cpscm_5f_res_5f_45))))
                                                  (lambda (g_3a_k446)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscm-
                                                          (lambda (g_3a_ret--_3a_448)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmvector-ref
                                                                  (lambda (g_3a_ret-vector-ref_3a_450)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscmcons
                                                                          (lambda (g_3a_ret-cons_3a_449)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscm_5f_loop_5f_43
                                                                                  (lambda (g_3a_ret-_5f_loop_5f_43_3a_447)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          g_3a_k446
                                                                                          g_3a_ret-_5f_loop_5f_43_3a_447))))
                                                                                  g_3a_ret--_3a_448
                                                                                  g_3a_ret-cons_3a_449))))
                                                                          g_3a_ret-vector-ref_3a_450
                                                                          cpscm_5f_res_5f_45))))
                                                                  cpscm_5f_v_5f_41
                                                                  cpscm_5f_i_5f_44))))
                                                          cpscm_5f_i_5f_44
                                                          1))))))))
                                          (funcall
                                            cpscm_20_boolean->combinator
                                            g_3a_ret-<_3a_442)))))
                                  cpscm_5f_i_5f_44
                                  0))))))))
                  cpscm_5f_v_5f_41))))
          (lambda (g427)
            (cpscm__trampoline (lambda () (funcall g_3a_k426 g427))))
          'undefined
          'undefined)))))


(cpscm__global
  cpscmlist->vector
  (lambda (g_3a_k452 cpscm_5f_l_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k455
                   cpscm_5f_n_5f_42
                   cpscm_5f_v_5f_43
                   cpscm_5f_loop_5f_44)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmlength
                  (lambda (g_3a_ret-length_3a_457)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_k462 cpscm_5f_loop_5f_44_5f_tmp)
                            (cpscm__trampoline
                              (lambda ()
                                (progn (setq cpscm_5f_n_5f_42 g_3a_ret-length_3a_457)
                                       (setq cpscm_5f_v_5f_43 nil)
                                       (funcall
                                         cpscm__reduce-trampoline
                                         (funcall
                                           (lambda (g_3a_ret-set!_3a_465)
                                             (cpscm__trampoline
                                               (lambda ()
                                                 (funcall g_3a_k462 g_3a_ret-set!_3a_465))))
                                           (setq cpscm_5f_loop_5f_44
                                                 cpscm_5f_loop_5f_44_5f_tmp)))))))
                          (lambda (g456)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmmake-vector
                                  (lambda (g_3a_ret-make-vector_3a_459)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (progn (setq cpscm_5f_v_5f_43
                                                     g_3a_ret-make-vector_3a_459)
                                               (funcall
                                                 cpscm__reduce-trampoline
                                                 (funcall
                                                   cpscm_5f_loop_5f_44
                                                   (lambda (g_3a_ret-_5f_loop_5f_44_3a_460)
                                                     (cpscm__trampoline
                                                       (lambda ()
                                                         (funcall
                                                           g_3a_k455
                                                           g_3a_ret-_5f_loop_5f_44_3a_460))))
                                                   0
                                                   cpscm_5f_l_5f_41))))))
                                  cpscm_5f_n_5f_42))))
                          (lambda (g_3a_k467 cpscm_5f_i_5f_45 cpscm_5f_l_5f_46)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm=
                                  (lambda (g_3a_ret-=_3a_470)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (g_3a_ret-_20_boolean->combinator_3a_469)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  g_3a_ret-_20_boolean->combinator_3a_469
                                                  (lambda (g_3a_ret-apply_3a_468)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k467 g_3a_ret-apply_3a_468))))
                                                  (lambda (g_3a_k472)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall g_3a_k472 cpscm_5f_v_5f_43))))
                                                  (lambda (g_3a_k474)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcar
                                                          (lambda (g_3a_ret-car_3a_476)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmvector-set!
                                                                  (lambda (g_3a_ret-vector-set!_3a_475)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscm+
                                                                          (lambda (g_3a_ret-+_3a_478)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscmcdr
                                                                                  (lambda (g_3a_ret-cdr_3a_479)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          cpscm_5f_loop_5f_44
                                                                                          (lambda (g_3a_ret-_5f_loop_5f_44_3a_477)
                                                                                            (cpscm__trampoline
                                                                                              (lambda ()
                                                                                                (funcall
                                                                                                  g_3a_k474
                                                                                                  g_3a_ret-_5f_loop_5f_44_3a_477))))
                                                                                          g_3a_ret-+_3a_478
                                                                                          g_3a_ret-cdr_3a_479))))
                                                                                  cpscm_5f_l_5f_46))))
                                                                          cpscm_5f_i_5f_45
                                                                          1))))
                                                                  cpscm_5f_v_5f_43
                                                                  cpscm_5f_i_5f_45
                                                                  g_3a_ret-car_3a_476))))
                                                          cpscm_5f_l_5f_46))))))))
                                          (funcall
                                            cpscm_20_boolean->combinator
                                            g_3a_ret-=_3a_470)))))
                                  cpscm_5f_i_5f_45
                                  cpscm_5f_n_5f_42))))))))
                  cpscm_5f_l_5f_41))))
          (lambda (g453)
            (cpscm__trampoline (lambda () (funcall g_3a_k452 g453))))
          'undefined
          'undefined
          'undefined)))))


(cpscm__global
  cpscmvector
  (lambda (g_3a_k481 &rest cpscm_5f_l_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmlist->vector
          (lambda (g_3a_ret-list->vector_3a_482)
            (cpscm__trampoline
              (lambda () (funcall g_3a_k481 g_3a_ret-list->vector_3a_482))))
          cpscm_5f_l_5f_41)))))


(cpscm__global
  cpscmvector-fill!
  (lambda (g_3a_k484 cpscm_5f_v_5f_41 cpscm_5f_x_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k487 cpscm_5f_n_5f_43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmvector-length
                  (lambda (g_3a_ret-vector-length_3a_489)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_k511)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_ret-set!_3a_512)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k511 g_3a_ret-set!_3a_512))))
                                  (setq cpscm_5f_n_5f_43
                                        g_3a_ret-vector-length_3a_489)))))
                          (lambda (g488)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_k493 cpscm_5f_loop_5f_44)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (g_3a_k496 cpscm_5f_loop_5f_44_5f_tmp)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  (lambda (g_3a_ret-set!_3a_497)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k496 g_3a_ret-set!_3a_497))))
                                                  (setq cpscm_5f_loop_5f_44
                                                        cpscm_5f_loop_5f_44_5f_tmp)))))
                                          (lambda (g494)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k493 cpscm_5f_loop_5f_44))))
                                          (lambda (g_3a_k499 cpscm_5f_i_5f_45)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscm=
                                                  (lambda (g_3a_ret-=_3a_502)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          (lambda (g_3a_ret-_20_boolean->combinator_3a_501)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  g_3a_ret-_20_boolean->combinator_3a_501
                                                                  (lambda (g_3a_ret-apply_3a_500)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall g_3a_k499 g_3a_ret-apply_3a_500))))
                                                                  (lambda (g_3a_k504)
                                                                    (cpscm__trampoline
                                                                      (lambda () (funcall g_3a_k504 t))))
                                                                  (lambda (g_3a_k506)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscmvector-set!
                                                                          (lambda (g_3a_ret-vector-set!_3a_507)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscm+
                                                                                  (lambda (g_3a_ret-+_3a_509)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          cpscm_5f_loop_5f_44
                                                                                          (lambda (g_3a_ret-_5f_loop_5f_44_3a_508)
                                                                                            (cpscm__trampoline
                                                                                              (lambda ()
                                                                                                (funcall
                                                                                                  g_3a_k506
                                                                                                  g_3a_ret-_5f_loop_5f_44_3a_508))))
                                                                                          g_3a_ret-+_3a_509))))
                                                                                  cpscm_5f_i_5f_45
                                                                                  1))))
                                                                          cpscm_5f_v_5f_41
                                                                          cpscm_5f_i_5f_45
                                                                          cpscm_5f_x_5f_42))))))))
                                                          (funcall
                                                            cpscm_20_boolean->combinator
                                                            g_3a_ret-=_3a_502)))))
                                                  cpscm_5f_i_5f_45
                                                  cpscm_5f_n_5f_43))))))))
                                  (lambda (g491)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          g491
                                          (lambda (g_3a_ret-apply_3a_490)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k487 g_3a_ret-apply_3a_490))))
                                          0))))
                                  'undefined))))))))
                  cpscm_5f_v_5f_41))))
          (lambda (g485)
            (cpscm__trampoline (lambda () (funcall g_3a_k484 g485))))
          'undefined)))))


(cpscm__global
  cpscmstring
  (lambda (g_3a_k514 &rest cpscm_5f_l_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmlist->string
          (lambda (g_3a_ret-list->string_3a_515)
            (cpscm__trampoline
              (lambda () (funcall g_3a_k514 g_3a_ret-list->string_3a_515))))
          cpscm_5f_l_5f_41)))))


(cpscm__global
  cpscmstring-fill!
  (lambda (g_3a_k517 cpscm_5f_v_5f_41 cpscm_5f_x_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k520 cpscm_5f_n_5f_43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmstring-length
                  (lambda (g_3a_ret-string-length_3a_522)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_k544)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_ret-set!_3a_545)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k544 g_3a_ret-set!_3a_545))))
                                  (setq cpscm_5f_n_5f_43
                                        g_3a_ret-string-length_3a_522)))))
                          (lambda (g521)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_k526 cpscm_5f_loop_5f_44)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (g_3a_k529 cpscm_5f_loop_5f_44_5f_tmp)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  (lambda (g_3a_ret-set!_3a_530)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k529 g_3a_ret-set!_3a_530))))
                                                  (setq cpscm_5f_loop_5f_44
                                                        cpscm_5f_loop_5f_44_5f_tmp)))))
                                          (lambda (g527)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k526 cpscm_5f_loop_5f_44))))
                                          (lambda (g_3a_k532 cpscm_5f_i_5f_45)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscm=
                                                  (lambda (g_3a_ret-=_3a_535)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          (lambda (g_3a_ret-_20_boolean->combinator_3a_534)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  g_3a_ret-_20_boolean->combinator_3a_534
                                                                  (lambda (g_3a_ret-apply_3a_533)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall g_3a_k532 g_3a_ret-apply_3a_533))))
                                                                  (lambda (g_3a_k537)
                                                                    (cpscm__trampoline
                                                                      (lambda () (funcall g_3a_k537 t))))
                                                                  (lambda (g_3a_k539)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscmstring-set!
                                                                          (lambda (g_3a_ret-string-set!_3a_540)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscm+
                                                                                  (lambda (g_3a_ret-+_3a_542)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          cpscm_5f_loop_5f_44
                                                                                          (lambda (g_3a_ret-_5f_loop_5f_44_3a_541)
                                                                                            (cpscm__trampoline
                                                                                              (lambda ()
                                                                                                (funcall
                                                                                                  g_3a_k539
                                                                                                  g_3a_ret-_5f_loop_5f_44_3a_541))))
                                                                                          g_3a_ret-+_3a_542))))
                                                                                  cpscm_5f_i_5f_45
                                                                                  1))))
                                                                          cpscm_5f_v_5f_41
                                                                          cpscm_5f_i_5f_45
                                                                          cpscm_5f_x_5f_42))))))))
                                                          (funcall
                                                            cpscm_20_boolean->combinator
                                                            g_3a_ret-=_3a_535)))))
                                                  cpscm_5f_i_5f_45
                                                  cpscm_5f_n_5f_43))))))))
                                  (lambda (g524)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          g524
                                          (lambda (g_3a_ret-apply_3a_523)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k520 g_3a_ret-apply_3a_523))))
                                          0))))
                                  'undefined))))))))
                  cpscm_5f_v_5f_41))))
          (lambda (g518)
            (cpscm__trampoline (lambda () (funcall g_3a_k517 g518))))
          'undefined)))))


(cpscm__global cpscmcall/cc cpscmcall-with-current-continuation)


(cpscm__global
  cpscmwith-output-to-port
  (lambda (g_3a_k547 cpscm_5f_p_5f_41 cpscm_5f_thunk_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcurrent-output-port
          (lambda (g_3a_ret-current-output-port_3a_549)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_k551)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmcurrent-output-port
                          (lambda (g_3a_ret-current-output-port_3a_552)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscm_5f_thunk_5f_42
                                  (lambda (g_3a_ret-_5f_thunk_5f_42_3a_554)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (g_3a_k556)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcurrent-output-port
                                                  (lambda (g_3a_ret-current-output-port_3a_557)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          g_3a_k556
                                                          g_3a_ret-_5f_thunk_5f_42_3a_554))))
                                                  g_3a_ret-current-output-port_3a_549))))
                                          (lambda (g553)
                                            (cpscm__trampoline
                                              (lambda () (funcall g_3a_k551 g553))))))))))))
                          cpscm_5f_p_5f_41))))
                  (lambda (g548)
                    (cpscm__trampoline
                      (lambda () (funcall g_3a_k547 g548)))))))))))))


(cpscm__global
  cpscm_20_make-promise
  (lambda (g_3a_k559 cpscm_5f_proc_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k562
                   cpscm_5f_result-ready?_5f_42
                   cpscm_5f_result_5f_43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  g_3a_k562
                  (lambda (g_3a_k564)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_ret-_20_boolean->combinator_3a_566)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  g_3a_ret-_20_boolean->combinator_3a_566
                                  (lambda (g_3a_ret-apply_3a_565)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k564 g_3a_ret-apply_3a_565))))
                                  (lambda (g_3a_k568)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k568 cpscm_5f_result_5f_43))))
                                  (lambda (g_3a_k570)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm_5f_proc_5f_41
                                          (lambda (g_3a_ret-_5f_proc_5f_41_3a_572)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  (lambda (g_3a_k574)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          (lambda (g_3a_ret-_20_boolean->combinator_3a_576)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  g_3a_ret-_20_boolean->combinator_3a_576
                                                                  (lambda (g_3a_ret-apply_3a_575)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall g_3a_k574 g_3a_ret-apply_3a_575))))
                                                                  (lambda (g_3a_k578)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall g_3a_k578 cpscm_5f_result_5f_43))))
                                                                  (lambda (g_3a_k580)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (progn (setq cpscm_5f_result-ready?_5f_42 t)
                                                                               (setq cpscm_5f_result_5f_43
                                                                                     g_3a_ret-_5f_proc_5f_41_3a_572)
                                                                               (funcall
                                                                                 cpscm__reduce-trampoline
                                                                                 (funcall g_3a_k580 cpscm_5f_result_5f_43))))))))))
                                                          (funcall
                                                            cpscm_20_boolean->combinator
                                                            cpscm_5f_result-ready?_5f_42)))))
                                                  (lambda (g571)
                                                    (cpscm__trampoline
                                                      (lambda () (funcall g_3a_k570 g571))))))))))))))))
                          (funcall
                            cpscm_20_boolean->combinator
                            cpscm_5f_result-ready?_5f_42)))))))))
          (lambda (g560)
            (cpscm__trampoline (lambda () (funcall g_3a_k559 g560))))
          nil
          nil)))))


(cpscm__drive
  (funcall
    (lambda (g_3a_k584)
      (cpscm__trampoline
        (lambda ()
          (funcall
            cpscmlist
            (lambda (g_3a_ret-list_3a_586)
              (cpscm__trampoline
                (lambda ()
                  (funcall
                    (lambda (g_3a_ret-set!_3a_585)
                      (cpscm__trampoline
                        (lambda () (funcall g_3a_k584 g_3a_ret-set!_3a_585))))
                    (setq cpscm__vals-marker g_3a_ret-list_3a_586)))))
            'values))))
    (lambda (cpscmx) cpscmx))
  (function error))


(cpscm__global
  cpscm__pack-vals
  (lambda (g_3a_k588 cpscm_5f_things_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (g_3a_ret-null?_3a_592)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_k600)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_ret-_20_boolean->combinator_3a_602)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  g_3a_ret-_20_boolean->combinator_3a_602
                                  (lambda (g_3a_ret-apply_3a_601)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k600 g_3a_ret-apply_3a_601))))
                                  (lambda (g_3a_k604)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k604 g_3a_ret-null?_3a_592))))
                                  (lambda (g_3a_k606)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmcdr
                                          (lambda (g_3a_ret-cdr_3a_609)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmnull?
                                                  (lambda (g_3a_ret-null?_3a_608)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmnot
                                                          (lambda (g_3a_ret-not_3a_607)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall g_3a_k606 g_3a_ret-not_3a_607))))
                                                          g_3a_ret-null?_3a_608))))
                                                  g_3a_ret-cdr_3a_609))))
                                          cpscm_5f_things_5f_41))))))))
                          (funcall
                            cpscm_20_boolean->combinator
                            g_3a_ret-null?_3a_592)))))
                  (lambda (g591)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_ret-_20_boolean->combinator_3a_590)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  g_3a_ret-_20_boolean->combinator_3a_590
                                  (lambda (g_3a_ret-apply_3a_589)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall g_3a_k588 g_3a_ret-apply_3a_589))))
                                  (lambda (g_3a_k594)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmcons
                                          (lambda (g_3a_ret-cons_3a_595)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k594 g_3a_ret-cons_3a_595))))
                                          cpscm__vals-marker
                                          cpscm_5f_things_5f_41))))
                                  (lambda (g_3a_k597)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmcar
                                          (lambda (g_3a_ret-car_3a_598)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k597 g_3a_ret-car_3a_598))))
                                          cpscm_5f_things_5f_41))))))))
                          (funcall cpscm_20_boolean->combinator g591)))))))))
          cpscm_5f_things_5f_41)))))


(cpscm__global
  cpscm__unpack-vals
  (lambda (g_3a_k611 cpscm_5f_vals_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmpair?
          (lambda (g_3a_ret-pair?_3a_616)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_ret-_20_boolean->combinator_3a_615)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          g_3a_ret-_20_boolean->combinator_3a_615
                          (lambda (g_3a_ret-apply_3a_614)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_ret-_20_boolean->combinator_3a_613)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          g_3a_ret-_20_boolean->combinator_3a_613
                                          (lambda (g_3a_ret-apply_3a_612)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k611 g_3a_ret-apply_3a_612))))
                                          (lambda (g_3a_k618)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmcdr
                                                  (lambda (g_3a_ret-cdr_3a_619)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k618 g_3a_ret-cdr_3a_619))))
                                                  cpscm_5f_vals_5f_41))))
                                          (lambda (g_3a_k621)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmlist
                                                  (lambda (g_3a_ret-list_3a_622)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k621 g_3a_ret-list_3a_622))))
                                                  cpscm_5f_vals_5f_41))))))))
                                  (funcall
                                    cpscm_20_boolean->combinator
                                    g_3a_ret-apply_3a_614)))))
                          (lambda (g_3a_k624)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (g_3a_ret-car_3a_626)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmeq?
                                          (lambda (g_3a_ret-eq?_3a_625)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k624 g_3a_ret-eq?_3a_625))))
                                          g_3a_ret-car_3a_626
                                          cpscm__vals-marker))))
                                  cpscm_5f_vals_5f_41))))
                          (lambda (g_3a_k628)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k628 nil))))))))
                  (funcall
                    cpscm_20_boolean->combinator
                    g_3a_ret-pair?_3a_616)))))
          cpscm_5f_vals_5f_41)))))


(cpscm__global
  cpscm__switch-winders
  (lambda (g_3a_k630 cpscm_5f_ccwinders_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k633 cpscm_5f_switch_5f_42 cpscm_5f_loop_5f_43)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_k639
                           cpscm_5f_switch_5f_42_5f_tmp
                           cpscm_5f_loop_5f_43_5f_tmp)
                    (cpscm__trampoline
                      (lambda ()
                        (progn (setq cpscm_5f_switch_5f_42
                                     cpscm_5f_switch_5f_42_5f_tmp)
                               (funcall
                                 cpscm__reduce-trampoline
                                 (funcall
                                   (lambda (g_3a_ret-set!_3a_641)
                                     (cpscm__trampoline
                                       (lambda ()
                                         (funcall g_3a_k639 g_3a_ret-set!_3a_641))))
                                   (setq cpscm_5f_loop_5f_43
                                         cpscm_5f_loop_5f_43_5f_tmp)))))))
                  (lambda (g634)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmreverse
                          (lambda (g_3a_ret-reverse_3a_636)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmreverse
                                  (lambda (g_3a_ret-reverse_3a_637)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm_5f_loop_5f_43
                                          (lambda (g_3a_ret-_5f_loop_5f_43_3a_635)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  g_3a_k633
                                                  g_3a_ret-_5f_loop_5f_43_3a_635))))
                                          g_3a_ret-reverse_3a_636
                                          g_3a_ret-reverse_3a_637))))
                                  cpscm_5f_ccwinders_5f_41))))
                          cpscm__winders))))
                  (lambda (g_3a_k643 cpscm_5f_a_5f_44 cpscm_5f_b_5f_45)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_k646 cpscm_5f_run-all_5f_46)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_k654 cpscm_5f_run-all_5f_46_5f_tmp)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (g_3a_ret-set!_3a_655)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k654 g_3a_ret-set!_3a_655))))
                                          (setq cpscm_5f_run-all_5f_46
                                                cpscm_5f_run-all_5f_46_5f_tmp)))))
                                  (lambda (g647)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmmap
                                          (lambda (g_3a_ret-map_3a_650)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  cpscmmap
                                                  (lambda (g_3a_ret-map_3a_651)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmappend-reverse!
                                                          (lambda (g_3a_ret-append-reverse!_3a_649)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscm_5f_run-all_5f_46
                                                                  (lambda (g_3a_ret-_5f_run-all_5f_46_3a_648)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          (lambda (g_3a_ret-set!_3a_652)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall g_3a_k646 g_3a_ret-set!_3a_652))))
                                                                          (setq cpscm__winders cpscm_5f_ccwinders_5f_41)))))
                                                                  g_3a_ret-append-reverse!_3a_649))))
                                                          g_3a_ret-map_3a_650
                                                          g_3a_ret-map_3a_651))))
                                                  cpscmcar
                                                  cpscm_5f_b_5f_45))))
                                          cpscmcdr
                                          cpscm_5f_a_5f_44))))
                                  (lambda (g_3a_k657 cpscm_5f_to-apply_5f_47)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscmnull?
                                          (lambda (g_3a_ret-null?_3a_660)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  (lambda (g_3a_ret-_20_boolean->combinator_3a_659)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          g_3a_ret-_20_boolean->combinator_3a_659
                                                          (lambda (g_3a_ret-apply_3a_658)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall g_3a_k657 g_3a_ret-apply_3a_658))))
                                                          (lambda (g_3a_k662)
                                                            (cpscm__trampoline
                                                              (lambda () (funcall g_3a_k662 t))))
                                                          (lambda (g_3a_k664)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmcar
                                                                  (lambda (g_3a_ret-car_3a_666)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          g_3a_ret-car_3a_666
                                                                          (lambda (g_3a_ret-apply_3a_665)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  cpscmcdr
                                                                                  (lambda (g_3a_ret-cdr_3a_668)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          cpscm_5f_run-all_5f_46
                                                                                          (lambda (g_3a_ret-_5f_run-all_5f_46_3a_667)
                                                                                            (cpscm__trampoline
                                                                                              (lambda ()
                                                                                                (funcall
                                                                                                  g_3a_k664
                                                                                                  g_3a_ret-_5f_run-all_5f_46_3a_667))))
                                                                                          g_3a_ret-cdr_3a_668))))
                                                                                  cpscm_5f_to-apply_5f_47))))))))
                                                                  cpscm_5f_to-apply_5f_47))))))))
                                                  (funcall
                                                    cpscm_20_boolean->combinator
                                                    g_3a_ret-null?_3a_660)))))
                                          cpscm_5f_to-apply_5f_47))))))))
                          (lambda (g644)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k643 g644))))
                          'undefined))))
                  (lambda (g_3a_k670 cpscm_5f_a_5f_44 cpscm_5f_b_5f_45)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnull?
                          (lambda (g_3a_ret-null?_3a_674)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  (lambda (g_3a_k684)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (g_3a_ret-_20_boolean->combinator_3a_686)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  g_3a_ret-_20_boolean->combinator_3a_686
                                                  (lambda (g_3a_ret-apply_3a_685)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k684 g_3a_ret-apply_3a_685))))
                                                  (lambda (g_3a_k688)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k688 g_3a_ret-null?_3a_674))))
                                                  (lambda (g_3a_k690)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmnull?
                                                          (lambda (g_3a_ret-null?_3a_692)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  (lambda (g_3a_k694)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          (lambda (g_3a_ret-_20_boolean->combinator_3a_696)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  g_3a_ret-_20_boolean->combinator_3a_696
                                                                                  (lambda (g_3a_ret-apply_3a_695)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall g_3a_k694 g_3a_ret-apply_3a_695))))
                                                                                  (lambda (g_3a_k698)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall g_3a_k698 g_3a_ret-null?_3a_692))))
                                                                                  (lambda (g_3a_k700)
                                                                                    (cpscm__trampoline
                                                                                      (lambda ()
                                                                                        (funcall
                                                                                          cpscmcar
                                                                                          (lambda (g_3a_ret-car_3a_703)
                                                                                            (cpscm__trampoline
                                                                                              (lambda ()
                                                                                                (funcall
                                                                                                  cpscmcar
                                                                                                  (lambda (g_3a_ret-car_3a_704)
                                                                                                    (cpscm__trampoline
                                                                                                      (lambda ()
                                                                                                        (funcall
                                                                                                          cpscmeq?
                                                                                                          (lambda (g_3a_ret-eq?_3a_702)
                                                                                                            (cpscm__trampoline
                                                                                                              (lambda ()
                                                                                                                (funcall
                                                                                                                  cpscmnot
                                                                                                                  (lambda (g_3a_ret-not_3a_701)
                                                                                                                    (cpscm__trampoline
                                                                                                                      (lambda ()
                                                                                                                        (funcall g_3a_k700 g_3a_ret-not_3a_701))))
                                                                                                                  g_3a_ret-eq?_3a_702))))
                                                                                                          g_3a_ret-car_3a_703
                                                                                                          g_3a_ret-car_3a_704))))
                                                                                                  cpscm_5f_b_5f_45))))
                                                                                          cpscm_5f_a_5f_44))))))))
                                                                          (funcall
                                                                            cpscm_20_boolean->combinator
                                                                            g_3a_ret-null?_3a_692)))))
                                                                  (lambda (g691)
                                                                    (cpscm__trampoline
                                                                      (lambda () (funcall g_3a_k690 g691))))))))
                                                          cpscm_5f_b_5f_45))))))))
                                          (funcall
                                            cpscm_20_boolean->combinator
                                            g_3a_ret-null?_3a_674)))))
                                  (lambda (g673)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (g_3a_ret-_20_boolean->combinator_3a_672)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  g_3a_ret-_20_boolean->combinator_3a_672
                                                  (lambda (g_3a_ret-apply_3a_671)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall g_3a_k670 g_3a_ret-apply_3a_671))))
                                                  (lambda (g_3a_k676)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscm_5f_switch_5f_42
                                                          (lambda (g_3a_ret-_5f_switch_5f_42_3a_677)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  g_3a_k676
                                                                  g_3a_ret-_5f_switch_5f_42_3a_677))))
                                                          cpscm_5f_a_5f_44
                                                          cpscm_5f_b_5f_45))))
                                                  (lambda (g_3a_k679)
                                                    (cpscm__trampoline
                                                      (lambda ()
                                                        (funcall
                                                          cpscmcdr
                                                          (lambda (g_3a_ret-cdr_3a_681)
                                                            (cpscm__trampoline
                                                              (lambda ()
                                                                (funcall
                                                                  cpscmcdr
                                                                  (lambda (g_3a_ret-cdr_3a_682)
                                                                    (cpscm__trampoline
                                                                      (lambda ()
                                                                        (funcall
                                                                          cpscm_5f_loop_5f_43
                                                                          (lambda (g_3a_ret-_5f_loop_5f_43_3a_680)
                                                                            (cpscm__trampoline
                                                                              (lambda ()
                                                                                (funcall
                                                                                  g_3a_k679
                                                                                  g_3a_ret-_5f_loop_5f_43_3a_680))))
                                                                          g_3a_ret-cdr_3a_681
                                                                          g_3a_ret-cdr_3a_682))))
                                                                  cpscm_5f_b_5f_45))))
                                                          cpscm_5f_a_5f_44))))))))
                                          (funcall cpscm_20_boolean->combinator g673)))))))))
                          cpscm_5f_a_5f_44))))))))
          (lambda (g631)
            (cpscm__trampoline (lambda () (funcall g_3a_k630 g631))))
          'undefined
          'undefined)))))


(cpscm__global
  cpscmdynamic-wind
  (lambda (g_3a_k706
           cpscm_5f_before_5f_41
           cpscm_5f_thunk_5f_42
           cpscm_5f_after_5f_43)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k709 cpscm_5f_result_5f_44)
            (cpscm__trampoline
              (lambda ()
                (progn (setq cpscm_5f_result_5f_44 nil)
                       (funcall
                         cpscm__reduce-trampoline
                         (funcall
                           cpscm_5f_before_5f_41
                           (lambda (g_3a_ret-_5f_before_5f_41_3a_711)
                             (cpscm__trampoline
                               (lambda ()
                                 (funcall
                                   cpscmcons
                                   (lambda (g_3a_ret-cons_3a_714)
                                     (cpscm__trampoline
                                       (lambda ()
                                         (funcall
                                           cpscmcons
                                           (lambda (g_3a_ret-cons_3a_713)
                                             (cpscm__trampoline
                                               (lambda ()
                                                 (progn (setq cpscm__winders g_3a_ret-cons_3a_713)
                                                        (funcall
                                                          cpscm__reduce-trampoline
                                                          (funcall
                                                            cpscm_5f_thunk_5f_42
                                                            (lambda (g_3a_ret-_5f_thunk_5f_42_3a_716)
                                                              (cpscm__trampoline
                                                                (lambda ()
                                                                  (progn (setq cpscm_5f_result_5f_44
                                                                               g_3a_ret-_5f_thunk_5f_42_3a_716)
                                                                         (funcall
                                                                           cpscm__reduce-trampoline
                                                                           (funcall
                                                                             cpscmcdr
                                                                             (lambda (g_3a_ret-cdr_3a_718)
                                                                               (cpscm__trampoline
                                                                                 (lambda ()
                                                                                   (progn (setq cpscm__winders g_3a_ret-cdr_3a_718)
                                                                                          (funcall
                                                                                            cpscm__reduce-trampoline
                                                                                            (funcall
                                                                                              cpscm_5f_after_5f_43
                                                                                              (lambda (g_3a_ret-_5f_after_5f_43_3a_719)
                                                                                                (cpscm__trampoline
                                                                                                  (lambda ()
                                                                                                    (funcall g_3a_k709 cpscm_5f_result_5f_44))))))))))
                                                                             cpscm__winders))))))))))))
                                           g_3a_ret-cons_3a_714
                                           cpscm__winders))))
                                   cpscm_5f_before_5f_41
                                   cpscm_5f_after_5f_43))))))))))
          (lambda (g707)
            (cpscm__trampoline (lambda () (funcall g_3a_k706 g707))))
          'undefined)))))


(cpscm__global
  cpscmwith-failure-continuation
  (lambda (g_3a_k721 cpscm_5f_hnd_5f_41 cpscm_5f_thunk_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          (lambda (g_3a_k724 cpscm_5f_old-hnd_5f_43 cpscm_5f_new-hnd_5f_44)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmcurrent-error-handler
                  (lambda (g_3a_ret-current-error-handler_3a_726)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          (lambda (g_3a_k730 cpscm_5f_new-hnd_5f_44_5f_tmp)
                            (cpscm__trampoline
                              (lambda ()
                                (progn (setq cpscm_5f_old-hnd_5f_43
                                             g_3a_ret-current-error-handler_3a_726)
                                       (funcall
                                         cpscm__reduce-trampoline
                                         (funcall
                                           (lambda (g_3a_ret-set!_3a_732)
                                             (cpscm__trampoline
                                               (lambda ()
                                                 (funcall g_3a_k730 g_3a_ret-set!_3a_732))))
                                           (setq cpscm_5f_new-hnd_5f_44
                                                 cpscm_5f_new-hnd_5f_44_5f_tmp)))))))
                          (lambda (g725)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcurrent-error-handler
                                  (lambda (g_3a_ret-current-error-handler_3a_727)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm_5f_thunk_5f_42
                                          (lambda (g_3a_ret-_5f_thunk_5f_42_3a_728)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall
                                                  g_3a_k724
                                                  g_3a_ret-_5f_thunk_5f_42_3a_728))))))))
                                  cpscm_5f_new-hnd_5f_44))))
                          (lambda (g_3a_k734 cpscm_5f_e_5f_45 cpscm_5f_ek_5f_46)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcurrent-error-handler
                                  (lambda (g_3a_ret-current-error-handler_3a_735)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          cpscm_5f_hnd_5f_41
                                          (lambda (g_3a_ret-_5f_hnd_5f_41_3a_736)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k734 g_3a_ret-_5f_hnd_5f_41_3a_736))))
                                          cpscm_5f_e_5f_45
                                          cpscm_5f_ek_5f_46))))
                                  cpscm_5f_old-hnd_5f_43))))))))))))
          (lambda (g722)
            (cpscm__trampoline (lambda () (funcall g_3a_k721 g722))))
          'undefined
          'undefined)))))


(cpscm__global cpscmwith/fc cpscmwith-failure-continuation)


(cpscm__global
  cpscm__default-err-hnd
  (lambda (g_3a_k738 cpscm_5f_e_5f_41 cpscm_5f_ek_5f_42)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmdisplay
          (lambda (g_3a_ret-display_3a_739)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscmdisplay
                  (lambda (g_3a_ret-display_3a_740)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          cpscmnewline
                          (lambda (g_3a_ret-newline_3a_741)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall g_3a_k738 g_3a_ret-newline_3a_741))))))))
                  cpscm_5f_e_5f_41))))
          "Error: ")))))


(cpscm__drive
  (funcall
    (lambda (g_3a_k743)
      (cpscm__trampoline
        (lambda ()
          (funcall
            (lambda (g_3a_ret-set!_3a_744)
              (cpscm__trampoline
                (lambda () (funcall g_3a_k743 g_3a_ret-set!_3a_744))))
            (setq cpscm__err-hnd cpscm__default-err-hnd)))))
    (lambda (cpscmx) cpscmx))
  (function error))


(cpscm__global
  cpscmcurrent-error-handler
  (lambda (g_3a_k746 &rest cpscm_5f_hnd_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmnull?
          (lambda (g_3a_ret-null?_3a_749)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  (lambda (g_3a_ret-_20_boolean->combinator_3a_748)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          g_3a_ret-_20_boolean->combinator_3a_748
                          (lambda (g_3a_ret-apply_3a_747)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall g_3a_k746 g_3a_ret-apply_3a_747))))
                          (lambda (g_3a_k751)
                            (cpscm__trampoline
                              (lambda () (funcall g_3a_k751 cpscm__err-hnd))))
                          (lambda (g_3a_k753)
                            (cpscm__trampoline
                              (lambda ()
                                (funcall
                                  cpscmcar
                                  (lambda (g_3a_ret-car_3a_755)
                                    (cpscm__trampoline
                                      (lambda ()
                                        (funcall
                                          (lambda (g_3a_ret-set!_3a_754)
                                            (cpscm__trampoline
                                              (lambda ()
                                                (funcall g_3a_k753 g_3a_ret-set!_3a_754))))
                                          (setq cpscm__err-hnd g_3a_ret-car_3a_755)))))
                                  cpscm_5f_hnd_5f_41))))))))
                  (funcall
                    cpscm_20_boolean->combinator
                    g_3a_ret-null?_3a_749)))))
          cpscm_5f_hnd_5f_41)))))


(cpscm__drive
  (funcall
    (lambda (g_3a_k757)
      (cpscm__trampoline
        (lambda ()
          (funcall
            cpscmcall-with-current-continuation
            (lambda (g_3a_ret-call-with-current-continuation_3a_758)
              (cpscm__trampoline
                (lambda ()
                  (funcall
                    g_3a_k757
                    g_3a_ret-call-with-current-continuation_3a_758))))
            (lambda (g_3a_k760 cpscm_5f_exit_5f_41)
              (cpscm__trampoline
                (lambda ()
                  (funcall
                    cpscmcall-with-values
                    (lambda (g_3a_ret-call-with-values_3a_761)
                      (cpscm__trampoline
                        (lambda ()
                          (funcall
                            g_3a_k760
                            g_3a_ret-call-with-values_3a_761))))
                    (lambda (g_3a_k763)
                      (cpscm__trampoline
                        (lambda ()
                          (funcall
                            cpscmcall-with-current-continuation
                            (lambda (g_3a_ret-call-with-current-continuation_3a_764)
                              (cpscm__trampoline
                                (lambda ()
                                  (funcall
                                    g_3a_k763
                                    g_3a_ret-call-with-current-continuation_3a_764))))
                            (lambda (g_3a_k766 cpscm_5f_cc_5f_42)
                              (cpscm__trampoline
                                (lambda ()
                                  (progn (setq cpscm__err-cont cpscm_5f_cc_5f_42)
                                         (funcall
                                           cpscm__reduce-trampoline
                                           (funcall
                                             cpscm_5f_exit_5f_41
                                             (lambda (g_3a_ret-_5f_exit_5f_41_3a_768)
                                               (cpscm__trampoline
                                                 (lambda ()
                                                   (funcall
                                                     g_3a_k766
                                                     g_3a_ret-_5f_exit_5f_41_3a_768))))
                                             t))))))))))
                    (lambda (g_3a_k770 cpscm_5f_e_5f_42 cpscm_5f_ek_5f_43)
                      (cpscm__trampoline
                        (lambda ()
                          (funcall
                            cpscmcurrent-error-handler
                            (lambda (g_3a_ret-current-error-handler_3a_772)
                              (cpscm__trampoline
                                (lambda ()
                                  (funcall
                                    g_3a_ret-current-error-handler_3a_772
                                    (lambda (g_3a_ret-apply_3a_771)
                                      (cpscm__trampoline
                                        (lambda ()
                                          (funcall g_3a_k770 g_3a_ret-apply_3a_771))))
                                    cpscm_5f_e_5f_42
                                    cpscm_5f_ek_5f_43))))))))))))))))
    (lambda (cpscmx) cpscmx))
  (function error))


(cpscm__global
  cpscmerror
  (lambda (g_3a_k774 cpscm_5f_e_5f_41)
    (cpscm__trampoline
      (lambda ()
        (funcall
          cpscmcall-with-current-continuation
          (lambda (g_3a_ret-call-with-current-continuation_3a_775)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  g_3a_k774
                  g_3a_ret-call-with-current-continuation_3a_775))))
          (lambda (g_3a_k777 cpscm_5f_ek_5f_42)
            (cpscm__trampoline
              (lambda ()
                (funcall
                  cpscm__err-cont
                  (lambda (g_3a_ret-%cpscm_3a_err-cont_3a_778)
                    (cpscm__trampoline
                      (lambda ()
                        (funcall
                          g_3a_k777
                          g_3a_ret-%cpscm_3a_err-cont_3a_778))))
                  cpscm_5f_e_5f_41
                  cpscm_5f_ek_5f_42)))))))))


