(defvar cpscmcall-with-current-continuation (lambda (cpscmk cpscmf) (cpscm__trampoline (funcall (lambda (cpscmccwinders) (cpscm__trampoline (progn (cpscm__reduce-trampoline (funcall (lambda (g_3a_ccwinders_3a_432) (cpscm__trampoline (setq cpscmccwinders g_3a_ccwinders_3a_432))) cpscm__winders)) (cpscm__reduce-trampoline (funcall cpscmf cpscmk (lambda (cpscm_5f_ &rest cpscmxs) (cpscm__trampoline (funcall cpscm__switch-winders (lambda (cpscm_5f_) (cpscm__trampoline (funcall cpscm__normal-apply cpscmk cpscmxs))) cpscmccwinders)))))))) (quote undefined)))))

(defvar cpscmapply (lambda (cpscmk cpscmf &rest cpscmargs) (cpscm__trampoline (funcall cpscm__normal-apply cpscm__normal-apply cpscmf cpscmk cpscmargs))))

(defvar cpscmcall-with-values (lambda (cpscmk cpscmproducer cpscmconsummer) (cpscm__trampoline (funcall cpscmproducer (lambda (&rest cpscmvals) (cpscm__trampoline (funcall cpscmapply cpscmk cpscmconsummer cpscmvals)))))))

(defvar cpscmvalues (lambda (cpscmk &rest cpscmthings) (cpscm__trampoline (funcall cpscm__normal-apply cpscmk cpscmthings))))

(defvar cpscmcaar (lambda (g_3a_k1 cpscm_5f_l_5f_41) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_3) (cpscm__trampoline (funcall cpscmcar g_3a_k1 g_3a_ret-car_3a_3))) cpscm_5f_l_5f_41))))

(defvar cpscmcadr (lambda (g_3a_k5 cpscm_5f_l_5f_41) (cpscm__trampoline (funcall cpscmcdr (lambda (g_3a_ret-cdr_3a_7) (cpscm__trampoline (funcall cpscmcar g_3a_k5 g_3a_ret-cdr_3a_7))) cpscm_5f_l_5f_41))))

(defvar cpscmcdar (lambda (g_3a_k9 cpscm_5f_l_5f_41) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_11) (cpscm__trampoline (funcall cpscmcdr g_3a_k9 g_3a_ret-car_3a_11))) cpscm_5f_l_5f_41))))

(defvar cpscmcddr (lambda (g_3a_k13 cpscm_5f_l_5f_41) (cpscm__trampoline (funcall cpscmcdr (lambda (g_3a_ret-cdr_3a_15) (cpscm__trampoline (funcall cpscmcdr g_3a_k13 g_3a_ret-cdr_3a_15))) cpscm_5f_l_5f_41))))

(defvar cpscmnot (lambda (g_3a_k17 cpscm_5f_x_5f_41) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_19) (cpscm__trampoline (funcall cpscmapply g_3a_k17 g_3a_ret-_20_boolean->combinator_3a_19 (lambda (g_3a_k21) (cpscm__trampoline (funcall g_3a_k21 nil))) (lambda (g_3a_k23) (cpscm__trampoline (funcall g_3a_k23 t))) nil))) cpscm_5f_x_5f_41))))

(defvar cpscmlist (lambda (g_3a_k25 &rest cpscm_5f_l_5f_41) (cpscm__trampoline (funcall g_3a_k25 cpscm_5f_l_5f_41))))

(defvar cpscmlength (lambda (g_3a_k27 cpscm_5f_l_5f_41) (cpscm__trampoline (funcall (lambda (cpscm_5f_loop_5f_42) (cpscm__trampoline (funcall (lambda (g_3a_k34 cpscm_5f_loop_5f_42_5f_tmp) (cpscm__trampoline (funcall g_3a_k34 (setq cpscm_5f_loop_5f_42 cpscm_5f_loop_5f_42_5f_tmp)))) (lambda (g31) (cpscm__trampoline (funcall cpscm_5f_loop_5f_42 g_3a_k27 cpscm_5f_l_5f_41 0))) (lambda (g_3a_k37 cpscm_5f_l_5f_43 cpscm_5f_res_5f_44) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_40) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_39) (cpscm__trampoline (funcall cpscmapply g_3a_k37 g_3a_ret-_20_boolean->combinator_3a_39 (lambda (g_3a_k42) (cpscm__trampoline (funcall g_3a_k42 cpscm_5f_res_5f_44))) (lambda (g_3a_k44) (cpscm__trampoline (funcall cpscmcdr (lambda (g_3a_ret-cdr_3a_46) (cpscm__trampoline (funcall cpscm+ (lambda (g_3a_ret-+_3a_47) (cpscm__trampoline (funcall cpscm_5f_loop_5f_42 g_3a_k44 g_3a_ret-cdr_3a_46 g_3a_ret-+_3a_47))) cpscm_5f_res_5f_44 1))) cpscm_5f_l_5f_43))) nil))) g_3a_ret-null?_3a_40))) cpscm_5f_l_5f_43)))))) (quote undefined)))))

(defvar cpscmlist? (lambda (g_3a_k49 cpscm_5f_l_5f_41) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_52) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_51) (cpscm__trampoline (funcall cpscmapply g_3a_k49 g_3a_ret-_20_boolean->combinator_3a_51 (lambda (g_3a_k54) (cpscm__trampoline (funcall g_3a_k54 t))) (lambda (g_3a_k56) (cpscm__trampoline (funcall cpscmpair? (lambda (g_3a_ret-pair?_3a_59) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_58) (cpscm__trampoline (funcall cpscmapply g_3a_k56 g_3a_ret-_20_boolean->combinator_3a_58 (lambda (g_3a_k61) (cpscm__trampoline (funcall cpscmcdr (lambda (g_3a_ret-cdr_3a_63) (cpscm__trampoline (funcall cpscmlist? g_3a_k61 g_3a_ret-cdr_3a_63))) cpscm_5f_l_5f_41))) (lambda (g_3a_k65) (cpscm__trampoline (funcall g_3a_k65 nil))) nil))) g_3a_ret-pair?_3a_59))) cpscm_5f_l_5f_41))) nil))) g_3a_ret-null?_3a_52))) cpscm_5f_l_5f_41))))

(defvar cpscmreverse (lambda (g_3a_k67 cpscm_5f_l_5f_41) (cpscm__trampoline (funcall (lambda (cpscm_5f_loop_5f_42) (cpscm__trampoline (funcall (lambda (g_3a_k74 cpscm_5f_loop_5f_42_5f_tmp) (cpscm__trampoline (funcall g_3a_k74 (setq cpscm_5f_loop_5f_42 cpscm_5f_loop_5f_42_5f_tmp)))) (lambda (g71) (cpscm__trampoline (funcall cpscm_5f_loop_5f_42 g_3a_k67 cpscm_5f_l_5f_41 nil))) (lambda (g_3a_k77 cpscm_5f_l_5f_43 cpscm_5f_res_5f_44) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_80) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_79) (cpscm__trampoline (funcall cpscmapply g_3a_k77 g_3a_ret-_20_boolean->combinator_3a_79 (lambda (g_3a_k82) (cpscm__trampoline (funcall g_3a_k82 cpscm_5f_res_5f_44))) (lambda (g_3a_k84) (cpscm__trampoline (funcall cpscmcdr (lambda (g_3a_ret-cdr_3a_86) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_88) (cpscm__trampoline (funcall cpscmcons (lambda (g_3a_ret-cons_3a_87) (cpscm__trampoline (funcall cpscm_5f_loop_5f_42 g_3a_k84 g_3a_ret-cdr_3a_86 g_3a_ret-cons_3a_87))) g_3a_ret-car_3a_88 cpscm_5f_res_5f_44))) cpscm_5f_l_5f_43))) cpscm_5f_l_5f_43))) nil))) g_3a_ret-null?_3a_80))) cpscm_5f_l_5f_43)))))) (quote undefined)))))

(defvar cpscmappend (lambda (g_3a_k90 &rest cpscm_5f_ls_5f_41) (cpscm__trampoline (funcall (lambda (cpscm_5f_spill_5f_42 cpscm_5f_loop_5f_43) (cpscm__trampoline (funcall (lambda (g_3a_k97 cpscm_5f_spill_5f_42_5f_tmp cpscm_5f_loop_5f_43_5f_tmp) (cpscm__trampoline (progn (cpscm__reduce-trampoline (setq cpscm_5f_spill_5f_42 cpscm_5f_spill_5f_42_5f_tmp)) (cpscm__reduce-trampoline (funcall g_3a_k97 (setq cpscm_5f_loop_5f_43 cpscm_5f_loop_5f_43_5f_tmp)))))) (lambda (g94) (cpscm__trampoline (funcall cpscm_5f_loop_5f_43 g_3a_k90 cpscm_5f_ls_5f_41 nil))) (lambda (g_3a_k101 cpscm_5f_l_5f_44 cpscm_5f_res_5f_45) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_104) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_103) (cpscm__trampoline (funcall cpscmapply g_3a_k101 g_3a_ret-_20_boolean->combinator_3a_103 (lambda (g_3a_k106) (cpscm__trampoline (funcall g_3a_k106 cpscm_5f_res_5f_45))) (lambda (g_3a_k108) (cpscm__trampoline (funcall cpscmcdr (lambda (g_3a_ret-cdr_3a_110) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_112) (cpscm__trampoline (funcall cpscmcons (lambda (g_3a_ret-cons_3a_111) (cpscm__trampoline (funcall cpscm_5f_spill_5f_42 g_3a_k108 g_3a_ret-cdr_3a_110 g_3a_ret-cons_3a_111))) g_3a_ret-car_3a_112 cpscm_5f_res_5f_45))) cpscm_5f_l_5f_44))) cpscm_5f_l_5f_44))) nil))) g_3a_ret-null?_3a_104))) cpscm_5f_l_5f_44))) (lambda (g_3a_k114 cpscm_5f_ls_5f_44 cpscm_5f_res_5f_45) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_117) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_116) (cpscm__trampoline (funcall cpscmapply g_3a_k114 g_3a_ret-_20_boolean->combinator_3a_116 (lambda (g_3a_k119) (cpscm__trampoline (funcall cpscmreverse! g_3a_k119 cpscm_5f_res_5f_45))) (lambda (g_3a_k122) (cpscm__trampoline (funcall cpscmcdr (lambda (g_3a_ret-cdr_3a_124) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_126) (cpscm__trampoline (funcall cpscm_5f_spill_5f_42 (lambda (g_3a_ret-_5f_spill_5f_42_3a_125) (cpscm__trampoline (funcall cpscm_5f_loop_5f_43 g_3a_k122 g_3a_ret-cdr_3a_124 g_3a_ret-_5f_spill_5f_42_3a_125))) g_3a_ret-car_3a_126 cpscm_5f_res_5f_45))) cpscm_5f_ls_5f_44))) cpscm_5f_ls_5f_44))) nil))) g_3a_ret-null?_3a_117))) cpscm_5f_ls_5f_44)))))) (quote undefined) (quote undefined)))))

(defvar cpscmappend! cpscmappend)

(defvar cpscmappend-reverse (lambda (g_3a_k128 cpscm_5f_rev-head_5f_41 cpscm_5f_tail_5f_42) (cpscm__trampoline (funcall cpscmreverse (lambda (g_3a_ret-reverse_3a_130) (cpscm__trampoline (funcall cpscmappend g_3a_k128 g_3a_ret-reverse_3a_130 cpscm_5f_tail_5f_42))) cpscm_5f_rev-head_5f_41))))

(defvar cpscmappend-reverse! cpscmappend-reverse)

(defvar cpscmreverse! cpscmreverse)

(defvar cpscmfind-tail (lambda (g_3a_k132 cpscm_5f_pred_5f_41 cpscm_5f_l_5f_42) (cpscm__trampoline (funcall (lambda (cpscm_5f_lp_5f_43) (cpscm__trampoline (funcall (lambda (g_3a_k139 cpscm_5f_lp_5f_43_5f_tmp) (cpscm__trampoline (funcall g_3a_k139 (setq cpscm_5f_lp_5f_43 cpscm_5f_lp_5f_43_5f_tmp)))) (lambda (g136) (cpscm__trampoline (funcall cpscm_5f_lp_5f_43 g_3a_k132 cpscm_5f_l_5f_42))) (lambda (g_3a_k142 cpscm_5f_l_5f_44) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_146) (cpscm__trampoline (funcall cpscmnot (lambda (g_3a_ret-not_3a_145) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_144) (cpscm__trampoline (funcall cpscmapply g_3a_k142 g_3a_ret-_20_boolean->combinator_3a_144 (lambda (g_3a_k148) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_152) (cpscm__trampoline (funcall cpscm_5f_pred_5f_41 (lambda (g_3a_ret-_5f_pred_5f_41_3a_151) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_150) (cpscm__trampoline (funcall cpscmapply g_3a_k148 g_3a_ret-_20_boolean->combinator_3a_150 (lambda (g_3a_k154) (cpscm__trampoline (funcall g_3a_k154 cpscm_5f_l_5f_44))) (lambda (g_3a_k156) (cpscm__trampoline (funcall cpscmcdr (lambda (g_3a_ret-cdr_3a_158) (cpscm__trampoline (funcall cpscm_5f_lp_5f_43 g_3a_k156 g_3a_ret-cdr_3a_158))) cpscm_5f_l_5f_44))) nil))) g_3a_ret-_5f_pred_5f_41_3a_151))) g_3a_ret-car_3a_152))) cpscm_5f_l_5f_44))) (lambda (g_3a_k160) (cpscm__trampoline (funcall g_3a_k160 nil))) nil))) g_3a_ret-not_3a_145))) g_3a_ret-null?_3a_146))) cpscm_5f_l_5f_44)))))) (quote undefined)))))

(defvar cpscmfind (lambda (g_3a_k162 cpscm_5f_pred_5f_41 cpscm_5f_list_5f_42) (cpscm__trampoline (funcall cpscmfind-tail (lambda (g_3a_ret-find-tail_3a_164) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_168) (cpscm__trampoline (funcall cpscmapply g_3a_k162 g_3a_ret-_20_boolean->combinator_3a_168 (lambda (g_3a_k170) (cpscm__trampoline (funcall cpscmcar g_3a_k170 g_3a_ret-find-tail_3a_164))) (lambda (g_3a_k173) (cpscm__trampoline (funcall g_3a_k173 nil))) nil))) g_3a_ret-find-tail_3a_164))) cpscm_5f_pred_5f_41 cpscm_5f_list_5f_42))))

(defvar cpscmmap (lambda (g_3a_k175 cpscm_5f_f_5f_41 cpscm_5f_l_5f_42) (cpscm__trampoline (funcall (lambda (cpscm_5f_loop_5f_43) (cpscm__trampoline (funcall (lambda (g_3a_k182 cpscm_5f_loop_5f_43_5f_tmp) (cpscm__trampoline (funcall g_3a_k182 (setq cpscm_5f_loop_5f_43 cpscm_5f_loop_5f_43_5f_tmp)))) (lambda (g179) (cpscm__trampoline (funcall cpscm_5f_loop_5f_43 g_3a_k175 cpscm_5f_l_5f_42 nil))) (lambda (g_3a_k185 cpscm_5f_l_5f_44 cpscm_5f_res_5f_45) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_188) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_187) (cpscm__trampoline (funcall cpscmapply g_3a_k185 g_3a_ret-_20_boolean->combinator_3a_187 (lambda (g_3a_k190) (cpscm__trampoline (funcall cpscmreverse! g_3a_k190 cpscm_5f_res_5f_45))) (lambda (g_3a_k193) (cpscm__trampoline (funcall cpscmcdr (lambda (g_3a_ret-cdr_3a_195) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_198) (cpscm__trampoline (funcall cpscm_5f_f_5f_41 (lambda (g_3a_ret-_5f_f_5f_41_3a_197) (cpscm__trampoline (funcall cpscmcons (lambda (g_3a_ret-cons_3a_196) (cpscm__trampoline (funcall cpscm_5f_loop_5f_43 g_3a_k193 g_3a_ret-cdr_3a_195 g_3a_ret-cons_3a_196))) g_3a_ret-_5f_f_5f_41_3a_197 cpscm_5f_res_5f_45))) g_3a_ret-car_3a_198))) cpscm_5f_l_5f_44))) cpscm_5f_l_5f_44))) nil))) g_3a_ret-null?_3a_188))) cpscm_5f_l_5f_44)))))) (quote undefined)))))

(defvar cpscmfor-each (lambda (g_3a_k200 cpscm_5f_k_5f_41 cpscm_5f_f_5f_42 cpscm_5f_l_5f_43) (cpscm__trampoline (funcall (lambda (cpscm_5f_loop_5f_44) (cpscm__trampoline (funcall (lambda (g_3a_k207 cpscm_5f_loop_5f_44_5f_tmp) (cpscm__trampoline (funcall g_3a_k207 (setq cpscm_5f_loop_5f_44 cpscm_5f_loop_5f_44_5f_tmp)))) (lambda (g204) (cpscm__trampoline (funcall cpscm_5f_loop_5f_44 g_3a_k200 cpscm_5f_l_5f_43 nil))) (lambda (g_3a_k210 cpscm_5f_l_5f_45) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_213) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_212) (cpscm__trampoline (funcall cpscmapply g_3a_k210 g_3a_ret-_20_boolean->combinator_3a_212 (lambda (g_3a_k215) (cpscm__trampoline (funcall g_3a_k215 t))) (lambda (g_3a_k217) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_219) (cpscm__trampoline (funcall cpscm_5f_f_5f_42 g_3a_k217 g_3a_ret-car_3a_219))) cpscm_5f_l_5f_45))) nil))) g_3a_ret-null?_3a_213))) cpscm_5f_l_5f_45)))))) (quote undefined)))))

(defvar cpscmassoc (lambda (g_3a_k221 cpscm_5f_x_5f_41 cpscm_5f_lis_5f_42 &rest cpscm_5f_maybe-=_5f_43) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_225) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_224) (cpscm__trampoline (funcall cpscmapply (lambda (g_3a_ret-apply_3a_223) (cpscm__trampoline (funcall cpscmfind g_3a_k221 (lambda (g_3a_k230 cpscm_5f_entry_5f_45) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_232) (cpscm__trampoline (funcall g_3a_ret-apply_3a_223 g_3a_k230 cpscm_5f_x_5f_41 g_3a_ret-car_3a_232))) cpscm_5f_entry_5f_45))) cpscm_5f_lis_5f_42))) g_3a_ret-_20_boolean->combinator_3a_224 (lambda (g_3a_k234) (cpscm__trampoline (funcall g_3a_k234 cpscmequal?))) (lambda (g_3a_k236) (cpscm__trampoline (funcall cpscmcar g_3a_k236 cpscm_5f_maybe-=_5f_43))) nil))) g_3a_ret-null?_3a_225))) cpscm_5f_maybe-=_5f_43))))

(defvar cpscmassq (lambda (g_3a_k239 cpscm_5f_x_5f_41 cpscm_5f_l_5f_42) (cpscm__trampoline (funcall cpscmassoc g_3a_k239 cpscm_5f_x_5f_41 cpscm_5f_l_5f_42 cpscmeq?))))

(defvar cpscmassv (lambda (g_3a_k242 cpscm_5f_x_5f_41 cpscm_5f_l_5f_42) (cpscm__trampoline (funcall cpscmassoc g_3a_k242 cpscm_5f_x_5f_41 cpscm_5f_l_5f_42 cpscmeqv?))))

(defvar cpscmmember (lambda (g_3a_k245 cpscm_5f_x_5f_41 cpscm_5f_lis_5f_42 &rest cpscm_5f_maybe-=_5f_43) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_249) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_248) (cpscm__trampoline (funcall cpscmapply (lambda (g_3a_ret-apply_3a_247) (cpscm__trampoline (funcall cpscmfind-tail g_3a_k245 (lambda (g_3a_k254 cpscm_5f_y_5f_45) (cpscm__trampoline (funcall g_3a_ret-apply_3a_247 g_3a_k254 cpscm_5f_x_5f_41 cpscm_5f_y_5f_45))) cpscm_5f_lis_5f_42))) g_3a_ret-_20_boolean->combinator_3a_248 (lambda (g_3a_k257) (cpscm__trampoline (funcall g_3a_k257 cpscmequal?))) (lambda (g_3a_k259) (cpscm__trampoline (funcall cpscmcar g_3a_k259 cpscm_5f_maybe-=_5f_43))) nil))) g_3a_ret-null?_3a_249))) cpscm_5f_maybe-=_5f_43))))

(defvar cpscmmemq (lambda (g_3a_k262 cpscm_5f_x_5f_41 cpscm_5f_l_5f_42) (cpscm__trampoline (funcall cpscmmember g_3a_k262 cpscm_5f_x_5f_41 cpscm_5f_l_5f_42 cpscmeq?))))

(defvar cpscmmemv (lambda (g_3a_k265 cpscm_5f_x_5f_41 cpscm_5f_l_5f_42) (cpscm__trampoline (funcall cpscmmember g_3a_k265 cpscm_5f_x_5f_41 cpscm_5f_l_5f_42 cpscmeqv?))))

(defvar cpscmvector->list (lambda (g_3a_k268 cpscm_5f_v_5f_41) (cpscm__trampoline (funcall (lambda (cpscm_5f_n_5f_42 cpscm_5f_loop_5f_43) (cpscm__trampoline (funcall cpscmvector-length (lambda (g_3a_ret-vector-length_3a_273) (cpscm__trampoline (funcall (lambda (g_3a_k276 cpscm_5f_loop_5f_43_5f_tmp) (cpscm__trampoline (progn (cpscm__reduce-trampoline (setq cpscm_5f_n_5f_42 g_3a_ret-vector-length_3a_273)) (cpscm__reduce-trampoline (funcall g_3a_k276 (setq cpscm_5f_loop_5f_43 cpscm_5f_loop_5f_43_5f_tmp)))))) (lambda (g272) (cpscm__trampoline (funcall cpscm_5f_loop_5f_43 g_3a_k268 0 nil))) (lambda (g_3a_k280 cpscm_5f_i_5f_44 cpscm_5f_res_5f_45) (cpscm__trampoline (funcall cpscm= (lambda (g_3a_ret-=_3a_283) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_282) (cpscm__trampoline (funcall cpscmapply g_3a_k280 g_3a_ret-_20_boolean->combinator_3a_282 (lambda (g_3a_k285) (cpscm__trampoline (funcall g_3a_k285 cpscm_5f_res_5f_45))) (lambda (g_3a_k287) (cpscm__trampoline (funcall cpscm+ (lambda (g_3a_ret-+_3a_289) (cpscm__trampoline (funcall cpscmvector-ref (lambda (g_3a_ret-vector-ref_3a_291) (cpscm__trampoline (funcall cpscmcons (lambda (g_3a_ret-cons_3a_290) (cpscm__trampoline (funcall cpscm_5f_loop_5f_43 g_3a_k287 g_3a_ret-+_3a_289 g_3a_ret-cons_3a_290))) g_3a_ret-vector-ref_3a_291 cpscm_5f_res_5f_45))) cpscm_5f_v_5f_41 cpscm_5f_i_5f_44))) cpscm_5f_i_5f_44 1))) nil))) g_3a_ret-=_3a_283))) cpscm_5f_i_5f_44 cpscm_5f_n_5f_42)))))) cpscm_5f_v_5f_41))) (quote undefined) (quote undefined)))))

(defvar cpscmlist->vector (lambda (g_3a_k293 cpscm_5f_l_5f_41) (cpscm__trampoline (funcall (lambda (cpscm_5f_n_5f_42 cpscm_5f_v_5f_43 cpscm_5f_loop_5f_44) (cpscm__trampoline (funcall cpscmlength (lambda (g_3a_ret-length_3a_298) (cpscm__trampoline (funcall (lambda (g_3a_k303 cpscm_5f_loop_5f_44_5f_tmp) (cpscm__trampoline (progn (cpscm__reduce-trampoline (setq cpscm_5f_n_5f_42 g_3a_ret-length_3a_298)) (cpscm__reduce-trampoline (setq cpscm_5f_v_5f_43 nil)) (cpscm__reduce-trampoline (funcall g_3a_k303 (setq cpscm_5f_loop_5f_44 cpscm_5f_loop_5f_44_5f_tmp)))))) (lambda (g297) (cpscm__trampoline (funcall cpscmmake-vector (lambda (g_3a_ret-make-vector_3a_300) (cpscm__trampoline (progn (cpscm__reduce-trampoline (setq cpscm_5f_v_5f_43 g_3a_ret-make-vector_3a_300)) (cpscm__reduce-trampoline (funcall cpscm_5f_loop_5f_44 g_3a_k293 0 cpscm_5f_l_5f_41))))) cpscm_5f_n_5f_42))) (lambda (g_3a_k308 cpscm_5f_i_5f_45 cpscm_5f_l_5f_46) (cpscm__trampoline (funcall cpscm= (lambda (g_3a_ret-=_3a_311) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_310) (cpscm__trampoline (funcall cpscmapply g_3a_k308 g_3a_ret-_20_boolean->combinator_3a_310 (lambda (g_3a_k313) (cpscm__trampoline (funcall g_3a_k313 cpscm_5f_v_5f_43))) (lambda (g_3a_k315) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_317) (cpscm__trampoline (funcall cpscmvector-set! g_3a_k315 cpscm_5f_v_5f_43 cpscm_5f_i_5f_45 g_3a_ret-car_3a_317))) cpscm_5f_l_5f_46))) nil))) g_3a_ret-=_3a_311))) cpscm_5f_i_5f_45 cpscm_5f_n_5f_42)))))) cpscm_5f_l_5f_41))) (quote undefined) (quote undefined) (quote undefined)))))

(defvar cpscmvector (lambda (g_3a_k319 &rest cpscm_5f_l_5f_41) (cpscm__trampoline (funcall cpscmlist->vector g_3a_k319 cpscm_5f_l_5f_41))))

(defvar cpscmcall/cc cpscmcall-with-current-continuation)

(defvar cpscm__winders nil)

(defvar cpscm__switch-winders (lambda (g_3a_k322 cpscm_5f_ccwinders_5f_41) (cpscm__trampoline (funcall (lambda (cpscm_5f_switch_5f_42 cpscm_5f_loop_5f_43) (cpscm__trampoline (funcall (lambda (g_3a_k331 cpscm_5f_switch_5f_42_5f_tmp cpscm_5f_loop_5f_43_5f_tmp) (cpscm__trampoline (progn (cpscm__reduce-trampoline (setq cpscm_5f_switch_5f_42 cpscm_5f_switch_5f_42_5f_tmp)) (cpscm__reduce-trampoline (funcall g_3a_k331 (setq cpscm_5f_loop_5f_43 cpscm_5f_loop_5f_43_5f_tmp)))))) (lambda (g326) (cpscm__trampoline (funcall cpscmreverse (lambda (g_3a_ret-reverse_3a_328) (cpscm__trampoline (funcall cpscmreverse (lambda (g_3a_ret-reverse_3a_329) (cpscm__trampoline (funcall cpscm_5f_loop_5f_43 g_3a_k322 g_3a_ret-reverse_3a_328 g_3a_ret-reverse_3a_329))) cpscm_5f_ccwinders_5f_41))) cpscm__winders))) (lambda (g_3a_k335 cpscm_5f_a_5f_44 cpscm_5f_b_5f_45) (cpscm__trampoline (funcall (lambda (cpscm_5f_run-all_5f_46) (cpscm__trampoline (funcall (lambda (g_3a_k346 cpscm_5f_run-all_5f_46_5f_tmp) (cpscm__trampoline (funcall g_3a_k346 (setq cpscm_5f_run-all_5f_46 cpscm_5f_run-all_5f_46_5f_tmp)))) (lambda (g339) (cpscm__trampoline (funcall cpscmmap (lambda (g_3a_ret-map_3a_342) (cpscm__trampoline (funcall cpscmmap (lambda (g_3a_ret-map_3a_343) (cpscm__trampoline (funcall cpscmappend-reverse! (lambda (g_3a_ret-append-reverse!_3a_341) (cpscm__trampoline (funcall cpscm_5f_run-all_5f_46 (lambda (g_3a_ret-_5f_run-all_5f_46_3a_340) (cpscm__trampoline (funcall g_3a_k335 (setq cpscm__winders cpscm_5f_ccwinders_5f_41)))) g_3a_ret-append-reverse!_3a_341))) g_3a_ret-map_3a_342 g_3a_ret-map_3a_343))) cpscmcar cpscm_5f_b_5f_45))) cpscmcdr cpscm_5f_a_5f_44))) (lambda (g_3a_k349 cpscm_5f_to-apply_5f_47) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_352) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_351) (cpscm__trampoline (funcall cpscmapply g_3a_k349 g_3a_ret-_20_boolean->combinator_3a_351 (lambda (g_3a_k354) (cpscm__trampoline (funcall g_3a_k354 t))) (lambda (g_3a_k356) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_358) (cpscm__trampoline (funcall cpscmapply g_3a_k356 g_3a_ret-car_3a_358 nil))) cpscm_5f_to-apply_5f_47))) nil))) g_3a_ret-null?_3a_352))) cpscm_5f_to-apply_5f_47)))))) (quote undefined)))) (lambda (g_3a_k360 cpscm_5f_a_5f_44 cpscm_5f_b_5f_45) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_364) (cpscm__trampoline (funcall (lambda (g_3a_k374) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_376) (cpscm__trampoline (funcall cpscmapply g_3a_k374 g_3a_ret-_20_boolean->combinator_3a_376 (lambda (g_3a_k378) (cpscm__trampoline (funcall g_3a_k378 g_3a_ret-null?_3a_364))) (lambda (g_3a_k380) (cpscm__trampoline (funcall cpscmnull? (lambda (g_3a_ret-null?_3a_382) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_386) (cpscm__trampoline (funcall cpscmapply g_3a_k380 g_3a_ret-_20_boolean->combinator_3a_386 (lambda (g_3a_k388) (cpscm__trampoline (funcall g_3a_k388 g_3a_ret-null?_3a_382))) (lambda (g_3a_k390) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_393) (cpscm__trampoline (funcall cpscmcar (lambda (g_3a_ret-car_3a_394) (cpscm__trampoline (funcall cpscmeq? (lambda (g_3a_ret-eq?_3a_392) (cpscm__trampoline (funcall cpscmnot g_3a_k390 g_3a_ret-eq?_3a_392))) g_3a_ret-car_3a_393 g_3a_ret-car_3a_394))) cpscm_5f_b_5f_45))) cpscm_5f_a_5f_44))) nil))) g_3a_ret-null?_3a_382))) cpscm_5f_b_5f_45))) nil))) g_3a_ret-null?_3a_364))) (lambda (g363) (cpscm__trampoline (funcall cpscm_20_boolean->combinator (lambda (g_3a_ret-_20_boolean->combinator_3a_362) (cpscm__trampoline (funcall cpscmapply g_3a_k360 g_3a_ret-_20_boolean->combinator_3a_362 (lambda (g_3a_k366) (cpscm__trampoline (funcall cpscm_5f_switch_5f_42 g_3a_k366 cpscm_5f_a_5f_44 cpscm_5f_b_5f_45))) (lambda (g_3a_k369) (cpscm__trampoline (funcall cpscmcdr (lambda (g_3a_ret-cdr_3a_371) (cpscm__trampoline (funcall cpscmcdr (lambda (g_3a_ret-cdr_3a_372) (cpscm__trampoline (funcall cpscm_5f_loop_5f_43 g_3a_k369 g_3a_ret-cdr_3a_371 g_3a_ret-cdr_3a_372))) cpscm_5f_b_5f_45))) cpscm_5f_a_5f_44))) nil))) g363)))))) cpscm_5f_a_5f_44)))))) (quote undefined) (quote undefined)))))

(defvar cpscmdynamic-wind (lambda (g_3a_k396 cpscm_5f_before_5f_41 cpscm_5f_thunk_5f_42 cpscm_5f_after_5f_43) (cpscm__trampoline (funcall (lambda (cpscm_5f_result_5f_44) (cpscm__trampoline (progn (cpscm__reduce-trampoline (setq cpscm_5f_result_5f_44 nil)) (cpscm__reduce-trampoline (funcall cpscm_5f_before_5f_41 (lambda (g_3a_ret-_5f_before_5f_41_3a_401) (cpscm__trampoline (funcall cpscmcons (lambda (g_3a_ret-cons_3a_404) (cpscm__trampoline (funcall cpscmcons (lambda (g_3a_ret-cons_3a_403) (cpscm__trampoline (progn (cpscm__reduce-trampoline (setq cpscm__winders g_3a_ret-cons_3a_403)) (cpscm__reduce-trampoline (funcall cpscm_5f_thunk_5f_42 (lambda (g_3a_ret-_5f_thunk_5f_42_3a_406) (cpscm__trampoline (progn (cpscm__reduce-trampoline (setq cpscm_5f_result_5f_44 g_3a_ret-_5f_thunk_5f_42_3a_406)) (cpscm__reduce-trampoline (funcall cpscmcdr (lambda (g_3a_ret-cdr_3a_408) (cpscm__trampoline (progn (cpscm__reduce-trampoline (setq cpscm__winders g_3a_ret-cdr_3a_408)) (cpscm__reduce-trampoline (funcall cpscm_5f_after_5f_43 (lambda (g_3a_ret-_5f_after_5f_43_3a_409) (cpscm__trampoline (funcall g_3a_k396 cpscm_5f_result_5f_44)))))))) cpscm__winders)))))))))) g_3a_ret-cons_3a_404 cpscm__winders))) cpscm_5f_before_5f_41 cpscm_5f_after_5f_43)))))))) (quote undefined)))))

(defvar cpscmwith-failure-continuation (lambda (g_3a_k411 cpscm_5f_hnd_5f_41 cpscm_5f_thunk_5f_42) (cpscm__trampoline (funcall (lambda (cpscm_5f_oldhnd_5f_43) (cpscm__trampoline (progn (cpscm__reduce-trampoline (setq cpscm_5f_oldhnd_5f_43 nil)) (cpscm__reduce-trampoline (funcall cpscmcall/cc g_3a_k411 (lambda (g_3a_k418 cpscm_5f_cc_5f_44) (cpscm__trampoline (funcall cpscmdynamic-wind g_3a_k418 (lambda (g_3a_k421) (cpscm__trampoline (funcall cpscmcurrent-error-handler (lambda (g_3a_ret-current-error-handler_3a_423) (cpscm__trampoline (funcall g_3a_k421 (setq cpscm_5f_oldhnd_5f_43 g_3a_ret-current-error-handler_3a_423))))))) (lambda (g_3a_k425) (cpscm__trampoline (funcall cpscmcurrent-error-handler (lambda (g_3a_ret-current-error-handler_3a_426) (cpscm__trampoline (funcall cpscm_5f_thunk_5f_42 g_3a_k425))) cpscm_5f_hnd_5f_41 cpscm_5f_cc_5f_44))) (lambda (g_3a_k429) (cpscm__trampoline (funcall cpscmcurrent-error-handler g_3a_k429 cpscm_5f_oldhnd_5f_43))))))))))) (quote undefined)))))

(defvar cpscmwith/fc cpscmwith-failure-continuation)
