var cpscm__vals_d_marker = false;
var cpscm__winders = cpscm__nil;
var cpscm__err_d_hnd = false;
var cpscm__debug_d_trampolines_p_ = false;
var cpscm__err_d_cont = false;
var cpscmcall_d_with_d_current_d_continuation = function (__args) {
var cpscmk=__args.car; __args=__args.cdr;
var cpscmf=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var cpscmccwinders=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__reduce_d_trampoline ((function (__args) {
var g____ccwinders1=__args.car; __args=__args.cdr;
return (cpscmccwinders = g____ccwinders1);
}
) (cpscm__list (cpscm__winders, cpscm__nil))), (cpscmf) (cpscm__list (cpscmk, function (__args) {
var cpscm__=__args.car; __args=__args.cdr;
var cpscmxs=__args;
return new cpscm__Trampoline (function () {
return (cpscm__switch_d_winders) (cpscm__list (function (__args) {
var cpscm__=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__pack_d_vals) (cpscm__list (cpscmk, cpscmxs, cpscm__nil)); });
}
, cpscmccwinders, cpscm__nil)); });
}
, cpscm__nil))); });
}
) (cpscm__list (cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmapply = function (__args) {
var cpscmk=__args.car; __args=__args.cdr;
var cpscmf=__args.car; __args=__args.cdr;
var cpscmargs=__args;
return new cpscm__Trampoline (function () {
return (cpscm__normal_d_apply) (cpscm__list (cpscm__normal_d_apply, cpscmf, cpscmk, cpscmargs, cpscm__nil)); });
}
;
var cpscmcall_d_with_d_values = function (__args) {
var cpscmk=__args.car; __args=__args.cdr;
var cpscmproducer=__args.car; __args=__args.cdr;
var cpscmconsummer=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmproducer) (cpscm__list (function (__args) {
var cpscmvals=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__unpack_d_vals) (cpscm__list (function (__args) {
var cpscmvs=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmapply) (cpscm__list (cpscmk, cpscmconsummer, cpscmvs, cpscm__nil)); });
}
, cpscmvals, cpscm__nil)); });
}
, cpscm__nil)); });
}
;
var cpscmvalues = function (__args) {
var cpscmk=__args.car; __args=__args.cdr;
var cpscmthings=__args;
return new cpscm__Trampoline (function () {
return (cpscm__pack_d_vals) (cpscm__list (cpscmk, cpscmthings, cpscm__nil)); });
}
;
var cpscmcaar = function (__args) {
var g__k2=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__4=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__3=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k2) (cpscm__list (g__retcar__3, cpscm__nil)); });
}
, g__retcar__4, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcadr = function (__args) {
var g__k6=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__8=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__7=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k6) (cpscm__list (g__retcar__7, cpscm__nil)); });
}
, g__retcdr__8, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdar = function (__args) {
var g__k10=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__12=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__11=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k10) (cpscm__list (g__retcdr__11, cpscm__nil)); });
}
, g__retcar__12, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcddr = function (__args) {
var g__k14=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__16=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__15=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k14) (cpscm__list (g__retcdr__15, cpscm__nil)); });
}
, g__retcdr__16, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaaar = function (__args) {
var g__k18=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__21=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__20=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__19=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k18) (cpscm__list (g__retcar__19, cpscm__nil)); });
}
, g__retcar__20, cpscm__nil)); });
}
, g__retcar__21, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaadr = function (__args) {
var g__k23=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__26=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__25=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__24=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k23) (cpscm__list (g__retcar__24, cpscm__nil)); });
}
, g__retcar__25, cpscm__nil)); });
}
, g__retcdr__26, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcadar = function (__args) {
var g__k28=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__31=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__30=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__29=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k28) (cpscm__list (g__retcar__29, cpscm__nil)); });
}
, g__retcdr__30, cpscm__nil)); });
}
, g__retcar__31, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaddr = function (__args) {
var g__k33=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__36=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__35=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__34=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k33) (cpscm__list (g__retcar__34, cpscm__nil)); });
}
, g__retcdr__35, cpscm__nil)); });
}
, g__retcdr__36, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdaar = function (__args) {
var g__k38=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__40=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__39=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k38) (cpscm__list (g__retcdr__39, cpscm__nil)); });
}
, g__retcar__40, cpscm__nil)); });
}
, g__retcar__41, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdadr = function (__args) {
var g__k43=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k43) (cpscm__list (g__retcdr__44, cpscm__nil)); });
}
, g__retcar__45, cpscm__nil)); });
}
, g__retcdr__46, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcddar = function (__args) {
var g__k48=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__51=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__50=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__49=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k48) (cpscm__list (g__retcdr__49, cpscm__nil)); });
}
, g__retcdr__50, cpscm__nil)); });
}
, g__retcar__51, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdddr = function (__args) {
var g__k53=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__56=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__55=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__54=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k53) (cpscm__list (g__retcdr__54, cpscm__nil)); });
}
, g__retcdr__55, cpscm__nil)); });
}
, g__retcdr__56, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaaaar = function (__args) {
var g__k58=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__62=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__61=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__60=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__59=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k58) (cpscm__list (g__retcar__59, cpscm__nil)); });
}
, g__retcar__60, cpscm__nil)); });
}
, g__retcar__61, cpscm__nil)); });
}
, g__retcar__62, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaaadr = function (__args) {
var g__k64=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__68=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__67=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__66=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__65=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k64) (cpscm__list (g__retcar__65, cpscm__nil)); });
}
, g__retcar__66, cpscm__nil)); });
}
, g__retcar__67, cpscm__nil)); });
}
, g__retcdr__68, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaadar = function (__args) {
var g__k70=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__74=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__73=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__72=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__71=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k70) (cpscm__list (g__retcar__71, cpscm__nil)); });
}
, g__retcar__72, cpscm__nil)); });
}
, g__retcdr__73, cpscm__nil)); });
}
, g__retcar__74, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaaddr = function (__args) {
var g__k76=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__80=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__79=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__78=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__77=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k76) (cpscm__list (g__retcar__77, cpscm__nil)); });
}
, g__retcar__78, cpscm__nil)); });
}
, g__retcdr__79, cpscm__nil)); });
}
, g__retcdr__80, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcadaar = function (__args) {
var g__k82=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__86=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__85=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__84=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__83=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k82) (cpscm__list (g__retcar__83, cpscm__nil)); });
}
, g__retcdr__84, cpscm__nil)); });
}
, g__retcar__85, cpscm__nil)); });
}
, g__retcar__86, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcadadr = function (__args) {
var g__k88=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__92=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__91=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__90=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__89=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k88) (cpscm__list (g__retcar__89, cpscm__nil)); });
}
, g__retcdr__90, cpscm__nil)); });
}
, g__retcar__91, cpscm__nil)); });
}
, g__retcdr__92, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaddar = function (__args) {
var g__k94=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__98=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__97=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__96=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__95=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k94) (cpscm__list (g__retcar__95, cpscm__nil)); });
}
, g__retcdr__96, cpscm__nil)); });
}
, g__retcdr__97, cpscm__nil)); });
}
, g__retcar__98, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcadddr = function (__args) {
var g__k100=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__104=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__103=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__102=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__101=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k100) (cpscm__list (g__retcar__101, cpscm__nil)); });
}
, g__retcdr__102, cpscm__nil)); });
}
, g__retcdr__103, cpscm__nil)); });
}
, g__retcdr__104, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdaaar = function (__args) {
var g__k106=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__110=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__109=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__108=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__107=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k106) (cpscm__list (g__retcdr__107, cpscm__nil)); });
}
, g__retcar__108, cpscm__nil)); });
}
, g__retcar__109, cpscm__nil)); });
}
, g__retcar__110, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdaadr = function (__args) {
var g__k112=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__116=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__115=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__114=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__113=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k112) (cpscm__list (g__retcdr__113, cpscm__nil)); });
}
, g__retcar__114, cpscm__nil)); });
}
, g__retcar__115, cpscm__nil)); });
}
, g__retcdr__116, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdadar = function (__args) {
var g__k118=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__122=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__121=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__120=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__119=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k118) (cpscm__list (g__retcdr__119, cpscm__nil)); });
}
, g__retcar__120, cpscm__nil)); });
}
, g__retcdr__121, cpscm__nil)); });
}
, g__retcar__122, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdaddr = function (__args) {
var g__k124=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__128=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__127=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__126=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__125=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k124) (cpscm__list (g__retcdr__125, cpscm__nil)); });
}
, g__retcar__126, cpscm__nil)); });
}
, g__retcdr__127, cpscm__nil)); });
}
, g__retcdr__128, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcddaar = function (__args) {
var g__k130=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__134=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__133=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__132=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__131=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k130) (cpscm__list (g__retcdr__131, cpscm__nil)); });
}
, g__retcdr__132, cpscm__nil)); });
}
, g__retcar__133, cpscm__nil)); });
}
, g__retcar__134, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcddadr = function (__args) {
var g__k136=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__140=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__139=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__138=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__137=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k136) (cpscm__list (g__retcdr__137, cpscm__nil)); });
}
, g__retcdr__138, cpscm__nil)); });
}
, g__retcar__139, cpscm__nil)); });
}
, g__retcdr__140, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdddar = function (__args) {
var g__k142=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__146=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__145=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__144=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__143=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k142) (cpscm__list (g__retcdr__143, cpscm__nil)); });
}
, g__retcdr__144, cpscm__nil)); });
}
, g__retcdr__145, cpscm__nil)); });
}
, g__retcar__146, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcddddr = function (__args) {
var g__k148=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__152=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__151=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__150=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__149=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k148) (cpscm__list (g__retcdr__149, cpscm__nil)); });
}
, g__retcdr__150, cpscm__nil)); });
}
, g__retcdr__151, cpscm__nil)); });
}
, g__retcdr__152, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmnot = function (__args) {
var g__k154=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__156=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__156) (cpscm__list (function (__args) {
var g__retapply__155=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k154) (cpscm__list (g__retapply__155, cpscm__nil)); });
}
, function (__args) {
var g__k158=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k158) (cpscm__list (false, cpscm__nil)); });
}
, function (__args) {
var g__k160=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k160) (cpscm__list (true, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__x__41, cpscm__nil)), cpscm__nil)); });
}
;
var cpscmlist = function (__args) {
var g__k162=__args.car; __args=__args.cdr;
var cpscm__l__41=__args;
return new cpscm__Trampoline (function () {
return (g__k162) (cpscm__list (cpscm__l__41, cpscm__nil)); });
}
;
var cpscmlength = function (__args) {
var g__k164=__args.car; __args=__args.cdr;
var cpscm__l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k167=__args.car; __args=__args.cdr;
var cpscm__loop__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k171=__args.car; __args=__args.cdr;
var cpscm__loop__42__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___172=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k171) (cpscm__list (g__retset_b___172, cpscm__nil)); });
}
) (cpscm__list ((cpscm__loop__42 = cpscm__loop__42__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__168=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__42) (cpscm__list (function (__args) {
var g__ret__loop__42__169=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k167) (cpscm__list (g__ret__loop__42__169, cpscm__nil)); });
}
, cpscm__l__41, 0, cpscm__nil)); });
}
, function (__args) {
var g__k174=__args.car; __args=__args.cdr;
var cpscm__l__43=__args.car; __args=__args.cdr;
var cpscm__res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___177=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__176=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__176) (cpscm__list (function (__args) {
var g__retapply__175=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k174) (cpscm__list (g__retapply__175, cpscm__nil)); });
}
, function (__args) {
var g__k179=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k179) (cpscm__list (cpscm__res__44, cpscm__nil)); });
}
, function (__args) {
var g__k181=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__183=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___184=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__42) (cpscm__list (function (__args) {
var g__ret__loop__42__182=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k181) (cpscm__list (g__ret__loop__42__182, cpscm__nil)); });
}
, g__retcdr__183, g__ret_2b___184, cpscm__nil)); });
}
, cpscm__res__44, 1, cpscm__nil)); });
}
, cpscm__l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___177, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__165=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k164) (cpscm__list (g__165, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmlist_p_ = function (__args) {
var g__k186=__args.car; __args=__args.cdr;
var cpscm__l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___189=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__188=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__188) (cpscm__list (function (__args) {
var g__retapply__187=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k186) (cpscm__list (g__retapply__187, cpscm__nil)); });
}
, function (__args) {
var g__k191=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k191) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k193=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmpair_p_) (cpscm__list (function (__args) {
var g__retpair_p___196=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__195=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__195) (cpscm__list (function (__args) {
var g__retapply__194=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k193) (cpscm__list (g__retapply__194, cpscm__nil)); });
}
, function (__args) {
var g__k198=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__200=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_p_) (cpscm__list (function (__args) {
var g__retlist_p___199=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k198) (cpscm__list (g__retlist_p___199, cpscm__nil)); });
}
, g__retcdr__200, cpscm__nil)); });
}
, cpscm__l__41, cpscm__nil)); });
}
, function (__args) {
var g__k202=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k202) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retpair_p___196, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___189, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__41, cpscm__nil)); });
}
;
var cpscmlist_d_tail = function (__args) {
var g__k204=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__k__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmzero_p_) (cpscm__list (function (__args) {
var g__retzero_p___207=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__206=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__206) (cpscm__list (function (__args) {
var g__retapply__205=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k204) (cpscm__list (g__retapply__205, cpscm__nil)); });
}
, function (__args) {
var g__k209=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k209) (cpscm__list (cpscm__x__41, cpscm__nil)); });
}
, function (__args) {
var g__k211=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__213=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___214=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_d_tail) (cpscm__list (function (__args) {
var g__retlist_d_tail__212=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k211) (cpscm__list (g__retlist_d_tail__212, cpscm__nil)); });
}
, g__retcdr__213, g__ret_d___214, cpscm__nil)); });
}
, cpscm__k__42, 1, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retzero_p___207, cpscm__nil)), cpscm__nil)); });
}
, cpscm__k__42, cpscm__nil)); });
}
;
var cpscmlist_d_ref = function (__args) {
var g__k216=__args.car; __args=__args.cdr;
var cpscm__list__41=__args.car; __args=__args.cdr;
var cpscm__k__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_d_tail) (cpscm__list (function (__args) {
var g__retlist_d_tail__218=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__217=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k216) (cpscm__list (g__retcar__217, cpscm__nil)); });
}
, g__retlist_d_tail__218, cpscm__nil)); });
}
, cpscmx, cpscm__k__42, cpscm__nil)); });
}
;
var cpscmreverse = function (__args) {
var g__k220=__args.car; __args=__args.cdr;
var cpscm__l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k223=__args.car; __args=__args.cdr;
var cpscm__loop__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k227=__args.car; __args=__args.cdr;
var cpscm__loop__42__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___228=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k227) (cpscm__list (g__retset_b___228, cpscm__nil)); });
}
) (cpscm__list ((cpscm__loop__42 = cpscm__loop__42__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__224=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__42) (cpscm__list (function (__args) {
var g__ret__loop__42__225=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k223) (cpscm__list (g__ret__loop__42__225, cpscm__nil)); });
}
, cpscm__l__41, cpscm__nil, cpscm__nil)); });
}
, function (__args) {
var g__k230=__args.car; __args=__args.cdr;
var cpscm__l__43=__args.car; __args=__args.cdr;
var cpscm__res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___233=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__232=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__232) (cpscm__list (function (__args) {
var g__retapply__231=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k230) (cpscm__list (g__retapply__231, cpscm__nil)); });
}
, function (__args) {
var g__k235=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k235) (cpscm__list (cpscm__res__44, cpscm__nil)); });
}
, function (__args) {
var g__k237=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__239=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__241=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__240=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__42) (cpscm__list (function (__args) {
var g__ret__loop__42__238=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k237) (cpscm__list (g__ret__loop__42__238, cpscm__nil)); });
}
, g__retcdr__239, g__retcons__240, cpscm__nil)); });
}
, g__retcar__241, cpscm__res__44, cpscm__nil)); });
}
, cpscm__l__43, cpscm__nil)); });
}
, cpscm__l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___233, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__221=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k220) (cpscm__list (g__221, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmappend = function (__args) {
var g__k243=__args.car; __args=__args.cdr;
var cpscm__ls__41=__args;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k246=__args.car; __args=__args.cdr;
var cpscm__spill__42=__args.car; __args=__args.cdr;
var cpscm__loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k250=__args.car; __args=__args.cdr;
var cpscm__spill__42__tmp=__args.car; __args=__args.cdr;
var cpscm__loop__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__spill__42 = cpscm__spill__42__tmp), (function (__args) {
var g__retset_b___252=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k250) (cpscm__list (g__retset_b___252, cpscm__nil)); });
}
) (cpscm__list ((cpscm__loop__43 = cpscm__loop__43__tmp), cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__247=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (function (__args) {
var g__ret__loop__43__248=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k246) (cpscm__list (g__ret__loop__43__248, cpscm__nil)); });
}
, cpscm__ls__41, cpscm__nil, cpscm__nil)); });
}
, function (__args) {
var g__k254=__args.car; __args=__args.cdr;
var cpscm__l__44=__args.car; __args=__args.cdr;
var cpscm__res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___257=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__256=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__256) (cpscm__list (function (__args) {
var g__retapply__255=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k254) (cpscm__list (g__retapply__255, cpscm__nil)); });
}
, function (__args) {
var g__k259=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k259) (cpscm__list (cpscm__res__45, cpscm__nil)); });
}
, function (__args) {
var g__k261=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__263=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__265=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__264=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__spill__42) (cpscm__list (function (__args) {
var g__ret__spill__42__262=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k261) (cpscm__list (g__ret__spill__42__262, cpscm__nil)); });
}
, g__retcdr__263, g__retcons__264, cpscm__nil)); });
}
, g__retcar__265, cpscm__res__45, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___257, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, function (__args) {
var g__k267=__args.car; __args=__args.cdr;
var cpscm__ls__44=__args.car; __args=__args.cdr;
var cpscm__res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___270=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__269=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__269) (cpscm__list (function (__args) {
var g__retapply__268=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k267) (cpscm__list (g__retapply__268, cpscm__nil)); });
}
, function (__args) {
var g__k272=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse_b_) (cpscm__list (function (__args) {
var g__retreverse_b___273=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k272) (cpscm__list (g__retreverse_b___273, cpscm__nil)); });
}
, cpscm__res__45, cpscm__nil)); });
}
, function (__args) {
var g__k275=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__277=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__279=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__spill__42) (cpscm__list (function (__args) {
var g__ret__spill__42__278=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (function (__args) {
var g__ret__loop__43__276=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k275) (cpscm__list (g__ret__loop__43__276, cpscm__nil)); });
}
, g__retcdr__277, g__ret__spill__42__278, cpscm__nil)); });
}
, g__retcar__279, cpscm__res__45, cpscm__nil)); });
}
, cpscm__ls__44, cpscm__nil)); });
}
, cpscm__ls__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___270, cpscm__nil)), cpscm__nil)); });
}
, cpscm__ls__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__244=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k243) (cpscm__list (g__244, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmappend_b_ = cpscmappend;
var cpscmappend_d_reverse = function (__args) {
var g__k281=__args.car; __args=__args.cdr;
var cpscm__rev_d_head__41=__args.car; __args=__args.cdr;
var cpscm__tail__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__283=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmappend) (cpscm__list (function (__args) {
var g__retappend__282=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k281) (cpscm__list (g__retappend__282, cpscm__nil)); });
}
, g__retreverse__283, cpscm__tail__42, cpscm__nil)); });
}
, cpscm__rev_d_head__41, cpscm__nil)); });
}
;
var cpscmappend_d_reverse_b_ = cpscmappend_d_reverse;
var cpscmreverse_b_ = function (__args) {
var g__k285=__args.car; __args=__args.cdr;
var cpscm__l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__286=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k285) (cpscm__list (g__retreverse__286, cpscm__nil)); });
}
, cpscm__l__41, cpscm__nil)); });
}
;
var cpscmfind_d_tail = function (__args) {
var g__k288=__args.car; __args=__args.cdr;
var cpscm__pred__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k291=__args.car; __args=__args.cdr;
var cpscm__lp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k295=__args.car; __args=__args.cdr;
var cpscm__lp__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___296=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k295) (cpscm__list (g__retset_b___296, cpscm__nil)); });
}
) (cpscm__list ((cpscm__lp__43 = cpscm__lp__43__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__292=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__lp__43) (cpscm__list (function (__args) {
var g__ret__lp__43__293=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k291) (cpscm__list (g__ret__lp__43__293, cpscm__nil)); });
}
, cpscm__l__42, cpscm__nil)); });
}
, function (__args) {
var g__k298=__args.car; __args=__args.cdr;
var cpscm__l__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___302=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (function (__args) {
var g__retnot__301=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__300=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__300) (cpscm__list (function (__args) {
var g__retapply__299=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k298) (cpscm__list (g__retapply__299, cpscm__nil)); });
}
, function (__args) {
var g__k304=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__308=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__pred__41) (cpscm__list (function (__args) {
var g__ret__pred__41__307=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__306=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__306) (cpscm__list (function (__args) {
var g__retapply__305=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k304) (cpscm__list (g__retapply__305, cpscm__nil)); });
}
, function (__args) {
var g__k310=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k310) (cpscm__list (cpscm__l__44, cpscm__nil)); });
}
, function (__args) {
var g__k312=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__314=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__lp__43) (cpscm__list (function (__args) {
var g__ret__lp__43__313=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k312) (cpscm__list (g__ret__lp__43__313, cpscm__nil)); });
}
, g__retcdr__314, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret__pred__41__307, cpscm__nil)), cpscm__nil)); });
}
, g__retcar__308, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, function (__args) {
var g__k316=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k316) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnot__301, cpscm__nil)), cpscm__nil)); });
}
, g__retnull_p___302, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__289=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k288) (cpscm__list (g__289, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmfind = function (__args) {
var g__k318=__args.car; __args=__args.cdr;
var cpscm__pred__41=__args.car; __args=__args.cdr;
var cpscm__list__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind_d_tail) (cpscm__list (function (__args) {
var g__retfind_d_tail__320=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k322=__args.car; __args=__args.cdr;
var cpscm__tmp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__324=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__324) (cpscm__list (function (__args) {
var g__retapply__323=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k322) (cpscm__list (g__retapply__323, cpscm__nil)); });
}
, function (__args) {
var g__k326=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__327=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k326) (cpscm__list (g__retcar__327, cpscm__nil)); });
}
, cpscm__tmp__43, cpscm__nil)); });
}
, function (__args) {
var g__k329=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k329) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__tmp__43, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__319=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k318) (cpscm__list (g__319, cpscm__nil)); });
}
, g__retfind_d_tail__320, cpscm__nil)); });
}
, cpscm__pred__41, cpscm__list__42, cpscm__nil)); });
}
;
var cpscmmap = function (__args) {
var g__k331=__args.car; __args=__args.cdr;
var cpscm__f__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k334=__args.car; __args=__args.cdr;
var cpscm__loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k338=__args.car; __args=__args.cdr;
var cpscm__loop__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___339=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k338) (cpscm__list (g__retset_b___339, cpscm__nil)); });
}
) (cpscm__list ((cpscm__loop__43 = cpscm__loop__43__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__335=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (function (__args) {
var g__ret__loop__43__336=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k334) (cpscm__list (g__ret__loop__43__336, cpscm__nil)); });
}
, cpscm__l__42, cpscm__nil, cpscm__nil)); });
}
, function (__args) {
var g__k341=__args.car; __args=__args.cdr;
var cpscm__l__44=__args.car; __args=__args.cdr;
var cpscm__res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___344=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__343=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__343) (cpscm__list (function (__args) {
var g__retapply__342=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k341) (cpscm__list (g__retapply__342, cpscm__nil)); });
}
, function (__args) {
var g__k346=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse_b_) (cpscm__list (function (__args) {
var g__retreverse_b___347=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k346) (cpscm__list (g__retreverse_b___347, cpscm__nil)); });
}
, cpscm__res__45, cpscm__nil)); });
}
, function (__args) {
var g__k349=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__351=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__354=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__f__41) (cpscm__list (function (__args) {
var g__ret__f__41__353=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__352=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (function (__args) {
var g__ret__loop__43__350=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k349) (cpscm__list (g__ret__loop__43__350, cpscm__nil)); });
}
, g__retcdr__351, g__retcons__352, cpscm__nil)); });
}
, g__ret__f__41__353, cpscm__res__45, cpscm__nil)); });
}
, g__retcar__354, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___344, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__332=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k331) (cpscm__list (g__332, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmfor_d_each = function (__args) {
var g__k356=__args.car; __args=__args.cdr;
var cpscm__f__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k359=__args.car; __args=__args.cdr;
var cpscm__loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k363=__args.car; __args=__args.cdr;
var cpscm__loop__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___364=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k363) (cpscm__list (g__retset_b___364, cpscm__nil)); });
}
) (cpscm__list ((cpscm__loop__43 = cpscm__loop__43__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__360=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (function (__args) {
var g__ret__loop__43__361=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k359) (cpscm__list (g__ret__loop__43__361, cpscm__nil)); });
}
, cpscm__l__42, cpscm__nil)); });
}
, function (__args) {
var g__k366=__args.car; __args=__args.cdr;
var cpscm__l__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___369=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__368=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__368) (cpscm__list (function (__args) {
var g__retapply__367=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k366) (cpscm__list (g__retapply__367, cpscm__nil)); });
}
, function (__args) {
var g__k371=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k371) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k373=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__375=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__f__41) (cpscm__list (function (__args) {
var g__ret__f__41__374=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__377=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (function (__args) {
var g__ret__loop__43__376=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k373) (cpscm__list (g__ret__loop__43__376, cpscm__nil)); });
}
, g__retcdr__377, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, g__retcar__375, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___369, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__357=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k356) (cpscm__list (g__357, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmassoc = function (__args) {
var g__k379=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__lis__42=__args.car; __args=__args.cdr;
var cpscm__maybe_d__e___43=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___383=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__382=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__382) (cpscm__list (function (__args) {
var g__retapply__381=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k385=__args.car; __args=__args.cdr;
var cpscm__e__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind) (cpscm__list (function (__args) {
var g__retfind__386=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k385) (cpscm__list (g__retfind__386, cpscm__nil)); });
}
, function (__args) {
var g__k388=__args.car; __args=__args.cdr;
var cpscm__entry__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__390=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__e__44) (cpscm__list (function (__args) {
var g__ret__e__44__389=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k388) (cpscm__list (g__ret__e__44__389, cpscm__nil)); });
}
, cpscm__x__41, g__retcar__390, cpscm__nil)); });
}
, cpscm__entry__45, cpscm__nil)); });
}
, cpscm__lis__42, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__380=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k379) (cpscm__list (g__380, cpscm__nil)); });
}
, g__retapply__381, cpscm__nil)); });
}
, function (__args) {
var g__k392=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k392) (cpscm__list (cpscmequal_p_, cpscm__nil)); });
}
, function (__args) {
var g__k394=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__395=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k394) (cpscm__list (g__retcar__395, cpscm__nil)); });
}
, cpscm__maybe_d__e___43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___383, cpscm__nil)), cpscm__nil)); });
}
, cpscm__maybe_d__e___43, cpscm__nil)); });
}
;
var cpscmassq = function (__args) {
var g__k397=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmassoc) (cpscm__list (function (__args) {
var g__retassoc__398=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k397) (cpscm__list (g__retassoc__398, cpscm__nil)); });
}
, cpscm__x__41, cpscm__l__42, cpscmeq_p_, cpscm__nil)); });
}
;
var cpscmassv = function (__args) {
var g__k400=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmassoc) (cpscm__list (function (__args) {
var g__retassoc__401=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k400) (cpscm__list (g__retassoc__401, cpscm__nil)); });
}
, cpscm__x__41, cpscm__l__42, cpscmeqv_p_, cpscm__nil)); });
}
;
var cpscmmember = function (__args) {
var g__k403=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__lis__42=__args.car; __args=__args.cdr;
var cpscm__maybe_d__e___43=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___407=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__406=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__406) (cpscm__list (function (__args) {
var g__retapply__405=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k409=__args.car; __args=__args.cdr;
var cpscm__e__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind_d_tail) (cpscm__list (function (__args) {
var g__retfind_d_tail__410=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k409) (cpscm__list (g__retfind_d_tail__410, cpscm__nil)); });
}
, function (__args) {
var g__k412=__args.car; __args=__args.cdr;
var cpscm__y__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__e__44) (cpscm__list (function (__args) {
var g__ret__e__44__413=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k412) (cpscm__list (g__ret__e__44__413, cpscm__nil)); });
}
, cpscm__x__41, cpscm__y__45, cpscm__nil)); });
}
, cpscm__lis__42, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__404=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k403) (cpscm__list (g__404, cpscm__nil)); });
}
, g__retapply__405, cpscm__nil)); });
}
, function (__args) {
var g__k415=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k415) (cpscm__list (cpscmequal_p_, cpscm__nil)); });
}
, function (__args) {
var g__k417=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__418=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k417) (cpscm__list (g__retcar__418, cpscm__nil)); });
}
, cpscm__maybe_d__e___43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___407, cpscm__nil)), cpscm__nil)); });
}
, cpscm__maybe_d__e___43, cpscm__nil)); });
}
;
var cpscmmemq = function (__args) {
var g__k420=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmember) (cpscm__list (function (__args) {
var g__retmember__421=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k420) (cpscm__list (g__retmember__421, cpscm__nil)); });
}
, cpscm__x__41, cpscm__l__42, cpscmeq_p_, cpscm__nil)); });
}
;
var cpscmmemv = function (__args) {
var g__k423=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmember) (cpscm__list (function (__args) {
var g__retmember__424=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k423) (cpscm__list (g__retmember__424, cpscm__nil)); });
}
, cpscm__x__41, cpscm__l__42, cpscmeqv_p_, cpscm__nil)); });
}
;
var cpscmvector_d__r_list = function (__args) {
var g__k426=__args.car; __args=__args.cdr;
var cpscm__v__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k429=__args.car; __args=__args.cdr;
var cpscm__n__42=__args.car; __args=__args.cdr;
var cpscm__loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_length) (cpscm__list (function (__args) {
var g__retvector_d_length__431=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k435=__args.car; __args=__args.cdr;
var cpscm__n__42__tmp=__args.car; __args=__args.cdr;
var cpscm__loop__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__n__42 = cpscm__n__42__tmp), (function (__args) {
var g__retset_b___437=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k435) (cpscm__list (g__retset_b___437, cpscm__nil)); });
}
) (cpscm__list ((cpscm__loop__43 = cpscm__loop__43__tmp), cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__430=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___433=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (function (__args) {
var g__ret__loop__43__432=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k429) (cpscm__list (g__ret__loop__43__432, cpscm__nil)); });
}
, g__ret_d___433, cpscm__nil, cpscm__nil)); });
}
, cpscm__n__42, 1, cpscm__nil)); });
}
, g__retvector_d_length__431, function (__args) {
var g__k439=__args.car; __args=__args.cdr;
var cpscm__i__44=__args.car; __args=__args.cdr;
var cpscm__res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_l_) (cpscm__list (function (__args) {
var g__ret_l___442=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__441=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__441) (cpscm__list (function (__args) {
var g__retapply__440=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k439) (cpscm__list (g__retapply__440, cpscm__nil)); });
}
, function (__args) {
var g__k444=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k444) (cpscm__list (cpscm__res__45, cpscm__nil)); });
}
, function (__args) {
var g__k446=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___448=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_ref) (cpscm__list (function (__args) {
var g__retvector_d_ref__450=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__449=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (function (__args) {
var g__ret__loop__43__447=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k446) (cpscm__list (g__ret__loop__43__447, cpscm__nil)); });
}
, g__ret_d___448, g__retcons__449, cpscm__nil)); });
}
, g__retvector_d_ref__450, cpscm__res__45, cpscm__nil)); });
}
, cpscm__v__41, cpscm__i__44, cpscm__nil)); });
}
, cpscm__i__44, 1, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret_l___442, cpscm__nil)), cpscm__nil)); });
}
, cpscm__i__44, 0, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__v__41, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__427=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k426) (cpscm__list (g__427, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmlist_d__r_vector = function (__args) {
var g__k452=__args.car; __args=__args.cdr;
var cpscm__l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k455=__args.car; __args=__args.cdr;
var cpscm__n__42=__args.car; __args=__args.cdr;
var cpscm__v__43=__args.car; __args=__args.cdr;
var cpscm__loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlength) (cpscm__list (function (__args) {
var g__retlength__457=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k462=__args.car; __args=__args.cdr;
var cpscm__n__42__tmp=__args.car; __args=__args.cdr;
var cpscm__loop__44__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__n__42 = cpscm__n__42__tmp), (cpscm__v__43 = false), (function (__args) {
var g__retset_b___465=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k462) (cpscm__list (g__retset_b___465, cpscm__nil)); });
}
) (cpscm__list ((cpscm__loop__44 = cpscm__loop__44__tmp), cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__456=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmake_d_vector) (cpscm__list (function (__args) {
var g__retmake_d_vector__459=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__v__43 = g__retmake_d_vector__459), (cpscm__loop__44) (cpscm__list (function (__args) {
var g__ret__loop__44__460=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k455) (cpscm__list (g__ret__loop__44__460, cpscm__nil)); });
}
, 0, cpscm__l__41, cpscm__nil))); });
}
, cpscm__n__42, cpscm__nil)); });
}
, g__retlength__457, function (__args) {
var g__k467=__args.car; __args=__args.cdr;
var cpscm__i__45=__args.car; __args=__args.cdr;
var cpscm__l__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___470=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__469=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__469) (cpscm__list (function (__args) {
var g__retapply__468=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k467) (cpscm__list (g__retapply__468, cpscm__nil)); });
}
, function (__args) {
var g__k472=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k472) (cpscm__list (cpscm__v__43, cpscm__nil)); });
}
, function (__args) {
var g__k474=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__476=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_set_b_) (cpscm__list (function (__args) {
var g__retvector_d_set_b___475=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___478=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__479=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__44) (cpscm__list (function (__args) {
var g__ret__loop__44__477=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k474) (cpscm__list (g__ret__loop__44__477, cpscm__nil)); });
}
, g__ret_2b___478, g__retcdr__479, cpscm__nil)); });
}
, cpscm__l__46, cpscm__nil)); });
}
, cpscm__i__45, 1, cpscm__nil)); });
}
, cpscm__v__43, cpscm__i__45, g__retcar__476, cpscm__nil)); });
}
, cpscm__l__46, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret_e___470, cpscm__nil)), cpscm__nil)); });
}
, cpscm__i__45, cpscm__n__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__l__41, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__453=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k452) (cpscm__list (g__453, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmvector = function (__args) {
var g__k481=__args.car; __args=__args.cdr;
var cpscm__l__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmlist_d__r_vector) (cpscm__list (function (__args) {
var g__retlist_d__r_vector__482=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k481) (cpscm__list (g__retlist_d__r_vector__482, cpscm__nil)); });
}
, cpscm__l__41, cpscm__nil)); });
}
;
var cpscmvector_d_fill_b_ = function (__args) {
var g__k484=__args.car; __args=__args.cdr;
var cpscm__v__41=__args.car; __args=__args.cdr;
var cpscm__x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k487=__args.car; __args=__args.cdr;
var cpscm__n__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_length) (cpscm__list (function (__args) {
var g__retvector_d_length__489=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k511=__args.car; __args=__args.cdr;
var cpscm__n__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___512=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k511) (cpscm__list (g__retset_b___512, cpscm__nil)); });
}
) (cpscm__list ((cpscm__n__43 = cpscm__n__43__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__488=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k493=__args.car; __args=__args.cdr;
var cpscm__loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k496=__args.car; __args=__args.cdr;
var cpscm__loop__44__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___497=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k496) (cpscm__list (g__retset_b___497, cpscm__nil)); });
}
) (cpscm__list ((cpscm__loop__44 = cpscm__loop__44__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__494=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k493) (cpscm__list (cpscm__loop__44, cpscm__nil)); });
}
, function (__args) {
var g__k499=__args.car; __args=__args.cdr;
var cpscm__i__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___502=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__501=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__501) (cpscm__list (function (__args) {
var g__retapply__500=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k499) (cpscm__list (g__retapply__500, cpscm__nil)); });
}
, function (__args) {
var g__k504=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k504) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k506=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_set_b_) (cpscm__list (function (__args) {
var g__retvector_d_set_b___507=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___509=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__44) (cpscm__list (function (__args) {
var g__ret__loop__44__508=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k506) (cpscm__list (g__ret__loop__44__508, cpscm__nil)); });
}
, g__ret_2b___509, cpscm__nil)); });
}
, cpscm__i__45, 1, cpscm__nil)); });
}
, cpscm__v__41, cpscm__i__45, cpscm__x__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret_e___502, cpscm__nil)), cpscm__nil)); });
}
, cpscm__i__45, cpscm__n__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__491=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__491) (cpscm__list (function (__args) {
var g__retapply__490=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k487) (cpscm__list (g__retapply__490, cpscm__nil)); });
}
, 0, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
, g__retvector_d_length__489, cpscm__nil)); });
}
, cpscm__v__41, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__485=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k484) (cpscm__list (g__485, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmstring = function (__args) {
var g__k514=__args.car; __args=__args.cdr;
var cpscm__l__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmlist_d__r_string) (cpscm__list (function (__args) {
var g__retlist_d__r_string__515=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k514) (cpscm__list (g__retlist_d__r_string__515, cpscm__nil)); });
}
, cpscm__l__41, cpscm__nil)); });
}
;
var cpscmstring_d_fill_b_ = function (__args) {
var g__k517=__args.car; __args=__args.cdr;
var cpscm__v__41=__args.car; __args=__args.cdr;
var cpscm__x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k520=__args.car; __args=__args.cdr;
var cpscm__n__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_length) (cpscm__list (function (__args) {
var g__retstring_d_length__522=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k544=__args.car; __args=__args.cdr;
var cpscm__n__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___545=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k544) (cpscm__list (g__retset_b___545, cpscm__nil)); });
}
) (cpscm__list ((cpscm__n__43 = cpscm__n__43__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__521=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k526=__args.car; __args=__args.cdr;
var cpscm__loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k529=__args.car; __args=__args.cdr;
var cpscm__loop__44__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___530=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k529) (cpscm__list (g__retset_b___530, cpscm__nil)); });
}
) (cpscm__list ((cpscm__loop__44 = cpscm__loop__44__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__527=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k526) (cpscm__list (cpscm__loop__44, cpscm__nil)); });
}
, function (__args) {
var g__k532=__args.car; __args=__args.cdr;
var cpscm__i__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___535=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__534=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__534) (cpscm__list (function (__args) {
var g__retapply__533=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k532) (cpscm__list (g__retapply__533, cpscm__nil)); });
}
, function (__args) {
var g__k537=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k537) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k539=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_set_b_) (cpscm__list (function (__args) {
var g__retstring_d_set_b___540=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___542=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__44) (cpscm__list (function (__args) {
var g__ret__loop__44__541=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k539) (cpscm__list (g__ret__loop__44__541, cpscm__nil)); });
}
, g__ret_2b___542, cpscm__nil)); });
}
, cpscm__i__45, 1, cpscm__nil)); });
}
, cpscm__v__41, cpscm__i__45, cpscm__x__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret_e___535, cpscm__nil)), cpscm__nil)); });
}
, cpscm__i__45, cpscm__n__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__524=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__524) (cpscm__list (function (__args) {
var g__retapply__523=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k520) (cpscm__list (g__retapply__523, cpscm__nil)); });
}
, 0, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
, g__retstring_d_length__522, cpscm__nil)); });
}
, cpscm__v__41, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__518=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k517) (cpscm__list (g__518, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmcall_w_cc = cpscmcall_d_with_d_current_d_continuation;
var cpscmwrite_d_char = cpscmdisplay;
var cpscmwith_d_output_d_to_d_port = function (__args) {
var g__k547=__args.car; __args=__args.cdr;
var cpscm__p__41=__args.car; __args=__args.cdr;
var cpscm__thunk__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__549=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k551=__args.car; __args=__args.cdr;
var cpscm__oldp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__552=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__thunk__42) (cpscm__list (function (__args) {
var g__ret__thunk__42__554=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k556=__args.car; __args=__args.cdr;
var cpscm__res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__557=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k556) (cpscm__list (cpscm__res__44, cpscm__nil)); });
}
, cpscm__oldp__43, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__553=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k551) (cpscm__list (g__553, cpscm__nil)); });
}
, g__ret__thunk__42__554, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__p__41, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__548=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k547) (cpscm__list (g__548, cpscm__nil)); });
}
, g__retcurrent_d_output_d_port__549, cpscm__nil)); });
}
, cpscm__nil)); });
}
;
var cpscm_x_make_d_promise = function (__args) {
var g__k559=__args.car; __args=__args.cdr;
var cpscm__proc__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k562=__args.car; __args=__args.cdr;
var cpscm__result_d_ready_p___42=__args.car; __args=__args.cdr;
var cpscm__result__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k562) (cpscm__list (function (__args) {
var g__k564=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__566=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__566) (cpscm__list (function (__args) {
var g__retapply__565=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k564) (cpscm__list (g__retapply__565, cpscm__nil)); });
}
, function (__args) {
var g__k568=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k568) (cpscm__list (cpscm__result__43, cpscm__nil)); });
}
, function (__args) {
var g__k570=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__proc__41) (cpscm__list (function (__args) {
var g__ret__proc__41__572=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k574=__args.car; __args=__args.cdr;
var cpscm__x__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__576=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__576) (cpscm__list (function (__args) {
var g__retapply__575=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k574) (cpscm__list (g__retapply__575, cpscm__nil)); });
}
, function (__args) {
var g__k578=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k578) (cpscm__list (cpscm__result__43, cpscm__nil)); });
}
, function (__args) {
var g__k580=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__result_d_ready_p___42 = true), (cpscm__result__43 = cpscm__x__44), (g__k580) (cpscm__list (cpscm__result__43, cpscm__nil))); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__result_d_ready_p___42, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__571=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k570) (cpscm__list (g__571, cpscm__nil)); });
}
, g__ret__proc__41__572, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__result_d_ready_p___42, cpscm__nil)), cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__560=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k559) (cpscm__list (g__560, cpscm__nil)); });
}
, false, false, cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k584=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist) (cpscm__list (function (__args) {
var g__retlist__586=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___585=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k584) (cpscm__list (g__retset_b___585, cpscm__nil)); });
}
) (cpscm__list ((cpscm__vals_d_marker = g__retlist__586), cpscm__nil)); });
}
, cpscm__sym ("values"), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var cpscmx=__args.car; __args=__args.cdr;
return cpscmx;
}
, cpscm__nil)));

var cpscm__pack_d_vals = function (__args) {
var g__k588=__args.car; __args=__args.cdr;
var cpscm__things__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___592=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k600=__args.car; __args=__args.cdr;
var cpscm__x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__602=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__602) (cpscm__list (function (__args) {
var g__retapply__601=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k600) (cpscm__list (g__retapply__601, cpscm__nil)); });
}
, function (__args) {
var g__k604=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k604) (cpscm__list (cpscm__x__42, cpscm__nil)); });
}
, function (__args) {
var g__k606=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__609=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___608=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (function (__args) {
var g__retnot__607=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k606) (cpscm__list (g__retnot__607, cpscm__nil)); });
}
, g__retnull_p___608, cpscm__nil)); });
}
, g__retcdr__609, cpscm__nil)); });
}
, cpscm__things__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__x__42, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__591=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__590=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__590) (cpscm__list (function (__args) {
var g__retapply__589=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k588) (cpscm__list (g__retapply__589, cpscm__nil)); });
}
, function (__args) {
var g__k594=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__595=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k594) (cpscm__list (g__retcons__595, cpscm__nil)); });
}
, cpscm__vals_d_marker, cpscm__things__41, cpscm__nil)); });
}
, function (__args) {
var g__k597=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__598=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k597) (cpscm__list (g__retcar__598, cpscm__nil)); });
}
, cpscm__things__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__591, cpscm__nil)), cpscm__nil)); });
}
, g__retnull_p___592, cpscm__nil)); });
}
, cpscm__things__41, cpscm__nil)); });
}
;
var cpscm__unpack_d_vals = function (__args) {
var g__k611=__args.car; __args=__args.cdr;
var cpscm__vals__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmpair_p_) (cpscm__list (function (__args) {
var g__retpair_p___616=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__615=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__615) (cpscm__list (function (__args) {
var g__retapply__614=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__613=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__613) (cpscm__list (function (__args) {
var g__retapply__612=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k611) (cpscm__list (g__retapply__612, cpscm__nil)); });
}
, function (__args) {
var g__k618=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__619=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k618) (cpscm__list (g__retcdr__619, cpscm__nil)); });
}
, cpscm__vals__41, cpscm__nil)); });
}
, function (__args) {
var g__k621=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist) (cpscm__list (function (__args) {
var g__retlist__622=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k621) (cpscm__list (g__retlist__622, cpscm__nil)); });
}
, cpscm__vals__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retapply__614, cpscm__nil)), cpscm__nil)); });
}
, function (__args) {
var g__k624=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__626=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmeq_p_) (cpscm__list (function (__args) {
var g__reteq_p___625=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k624) (cpscm__list (g__reteq_p___625, cpscm__nil)); });
}
, g__retcar__626, cpscm__vals_d_marker, cpscm__nil)); });
}
, cpscm__vals__41, cpscm__nil)); });
}
, function (__args) {
var g__k628=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k628) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retpair_p___616, cpscm__nil)), cpscm__nil)); });
}
, cpscm__vals__41, cpscm__nil)); });
}
;
var cpscm__switch_d_winders = function (__args) {
var g__k630=__args.car; __args=__args.cdr;
var cpscm__ccwinders__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k633=__args.car; __args=__args.cdr;
var cpscm__switch__42=__args.car; __args=__args.cdr;
var cpscm__loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k639=__args.car; __args=__args.cdr;
var cpscm__switch__42__tmp=__args.car; __args=__args.cdr;
var cpscm__loop__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__switch__42 = cpscm__switch__42__tmp), (function (__args) {
var g__retset_b___641=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k639) (cpscm__list (g__retset_b___641, cpscm__nil)); });
}
) (cpscm__list ((cpscm__loop__43 = cpscm__loop__43__tmp), cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__634=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__636=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__637=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (function (__args) {
var g__ret__loop__43__635=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k633) (cpscm__list (g__ret__loop__43__635, cpscm__nil)); });
}
, g__retreverse__636, g__retreverse__637, cpscm__nil)); });
}
, cpscm__ccwinders__41, cpscm__nil)); });
}
, cpscm__winders, cpscm__nil)); });
}
, function (__args) {
var g__k643=__args.car; __args=__args.cdr;
var cpscm__a__44=__args.car; __args=__args.cdr;
var cpscm__b__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k646=__args.car; __args=__args.cdr;
var cpscm__run_d_all__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k654=__args.car; __args=__args.cdr;
var cpscm__run_d_all__46__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___655=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k654) (cpscm__list (g__retset_b___655, cpscm__nil)); });
}
) (cpscm__list ((cpscm__run_d_all__46 = cpscm__run_d_all__46__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__647=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmap) (cpscm__list (function (__args) {
var g__retmap__650=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmap) (cpscm__list (function (__args) {
var g__retmap__651=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmappend_d_reverse_b_) (cpscm__list (function (__args) {
var g__retappend_d_reverse_b___649=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__run_d_all__46) (cpscm__list (function (__args) {
var g__ret__run_d_all__46__648=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___652=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k646) (cpscm__list (g__retset_b___652, cpscm__nil)); });
}
) (cpscm__list ((cpscm__winders = cpscm__ccwinders__41), cpscm__nil)); });
}
, g__retappend_d_reverse_b___649, cpscm__nil)); });
}
, g__retmap__650, g__retmap__651, cpscm__nil)); });
}
, cpscmcar, cpscm__b__45, cpscm__nil)); });
}
, cpscmcdr, cpscm__a__44, cpscm__nil)); });
}
, function (__args) {
var g__k657=__args.car; __args=__args.cdr;
var cpscm__to_d_apply__47=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___660=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__659=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__659) (cpscm__list (function (__args) {
var g__retapply__658=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k657) (cpscm__list (g__retapply__658, cpscm__nil)); });
}
, function (__args) {
var g__k662=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k662) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k664=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__666=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__retcar__666) (cpscm__list (function (__args) {
var g__retapply__665=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__668=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__run_d_all__46) (cpscm__list (function (__args) {
var g__ret__run_d_all__46__667=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k664) (cpscm__list (g__ret__run_d_all__46__667, cpscm__nil)); });
}
, g__retcdr__668, cpscm__nil)); });
}
, cpscm__to_d_apply__47, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__to_d_apply__47, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___660, cpscm__nil)), cpscm__nil)); });
}
, cpscm__to_d_apply__47, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__644=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k643) (cpscm__list (g__644, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
, function (__args) {
var g__k670=__args.car; __args=__args.cdr;
var cpscm__a__44=__args.car; __args=__args.cdr;
var cpscm__b__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___674=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k684=__args.car; __args=__args.cdr;
var cpscm__x__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__686=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__686) (cpscm__list (function (__args) {
var g__retapply__685=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k684) (cpscm__list (g__retapply__685, cpscm__nil)); });
}
, function (__args) {
var g__k688=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k688) (cpscm__list (cpscm__x__46, cpscm__nil)); });
}
, function (__args) {
var g__k690=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___692=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k694=__args.car; __args=__args.cdr;
var cpscm__x__47=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__696=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__696) (cpscm__list (function (__args) {
var g__retapply__695=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k694) (cpscm__list (g__retapply__695, cpscm__nil)); });
}
, function (__args) {
var g__k698=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k698) (cpscm__list (cpscm__x__47, cpscm__nil)); });
}
, function (__args) {
var g__k700=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__703=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__704=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmeq_p_) (cpscm__list (function (__args) {
var g__reteq_p___702=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (function (__args) {
var g__retnot__701=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k700) (cpscm__list (g__retnot__701, cpscm__nil)); });
}
, g__reteq_p___702, cpscm__nil)); });
}
, g__retcar__703, g__retcar__704, cpscm__nil)); });
}
, cpscm__b__45, cpscm__nil)); });
}
, cpscm__a__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__x__47, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__691=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k690) (cpscm__list (g__691, cpscm__nil)); });
}
, g__retnull_p___692, cpscm__nil)); });
}
, cpscm__b__45, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__x__46, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__673=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__672=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__672) (cpscm__list (function (__args) {
var g__retapply__671=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k670) (cpscm__list (g__retapply__671, cpscm__nil)); });
}
, function (__args) {
var g__k676=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__switch__42) (cpscm__list (function (__args) {
var g__ret__switch__42__677=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k676) (cpscm__list (g__ret__switch__42__677, cpscm__nil)); });
}
, cpscm__a__44, cpscm__b__45, cpscm__nil)); });
}
, function (__args) {
var g__k679=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__681=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__682=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (function (__args) {
var g__ret__loop__43__680=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k679) (cpscm__list (g__ret__loop__43__680, cpscm__nil)); });
}
, g__retcdr__681, g__retcdr__682, cpscm__nil)); });
}
, cpscm__b__45, cpscm__nil)); });
}
, cpscm__a__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__673, cpscm__nil)), cpscm__nil)); });
}
, g__retnull_p___674, cpscm__nil)); });
}
, cpscm__a__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__631=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k630) (cpscm__list (g__631, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmdynamic_d_wind = function (__args) {
var g__k706=__args.car; __args=__args.cdr;
var cpscm__before__41=__args.car; __args=__args.cdr;
var cpscm__thunk__42=__args.car; __args=__args.cdr;
var cpscm__after__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k709=__args.car; __args=__args.cdr;
var cpscm__result__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__result__44 = false), (cpscm__before__41) (cpscm__list (function (__args) {
var g__ret__before__41__711=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__714=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__713=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__winders = g__retcons__713), (cpscm__thunk__42) (cpscm__list (function (__args) {
var g__ret__thunk__42__716=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__result__44 = g__ret__thunk__42__716), (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__718=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__winders = g__retcdr__718), (cpscm__after__43) (cpscm__list (function (__args) {
var g__ret__after__43__719=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k709) (cpscm__list (cpscm__result__44, cpscm__nil)); });
}
, cpscm__nil))); });
}
, cpscm__winders, cpscm__nil))); });
}
, cpscm__nil))); });
}
, g__retcons__714, cpscm__winders, cpscm__nil)); });
}
, cpscm__before__41, cpscm__after__43, cpscm__nil)); });
}
, cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__707=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k706) (cpscm__list (g__707, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmwith_d_failure_d_continuation = function (__args) {
var g__k721=__args.car; __args=__args.cdr;
var cpscm__hnd__41=__args.car; __args=__args.cdr;
var cpscm__thunk__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k724=__args.car; __args=__args.cdr;
var cpscm__old_d_hnd__43=__args.car; __args=__args.cdr;
var cpscm__new_d_hnd__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__726=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k730=__args.car; __args=__args.cdr;
var cpscm__old_d_hnd__43__tmp=__args.car; __args=__args.cdr;
var cpscm__new_d_hnd__44__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__old_d_hnd__43 = cpscm__old_d_hnd__43__tmp), (function (__args) {
var g__retset_b___732=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k730) (cpscm__list (g__retset_b___732, cpscm__nil)); });
}
) (cpscm__list ((cpscm__new_d_hnd__44 = cpscm__new_d_hnd__44__tmp), cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__725=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__727=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__thunk__42) (cpscm__list (function (__args) {
var g__ret__thunk__42__728=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k724) (cpscm__list (g__ret__thunk__42__728, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__new_d_hnd__44, cpscm__nil)); });
}
, g__retcurrent_d_error_d_handler__726, function (__args) {
var g__k734=__args.car; __args=__args.cdr;
var cpscm__e__45=__args.car; __args=__args.cdr;
var cpscm__ek__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__735=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__hnd__41) (cpscm__list (function (__args) {
var g__ret__hnd__41__736=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k734) (cpscm__list (g__ret__hnd__41__736, cpscm__nil)); });
}
, cpscm__e__45, cpscm__ek__46, cpscm__nil)); });
}
, cpscm__old_d_hnd__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__722=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k721) (cpscm__list (g__722, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmwith_w_fc = cpscmwith_d_failure_d_continuation;
var cpscm__default_d_err_d_hnd = function (__args) {
var g__k738=__args.car; __args=__args.cdr;
var cpscm__e__41=__args.car; __args=__args.cdr;
var cpscm__ek__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmdisplay) (cpscm__list (function (__args) {
var g__retdisplay__739=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmdisplay) (cpscm__list (function (__args) {
var g__retdisplay__740=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnewline) (cpscm__list (function (__args) {
var g__retnewline__741=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k738) (cpscm__list (g__retnewline__741, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__e__41, cpscm__nil)); });
}
, "Error: ", cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k743=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___744=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k743) (cpscm__list (g__retset_b___744, cpscm__nil)); });
}
) (cpscm__list ((cpscm__err_d_hnd = cpscm__default_d_err_d_hnd), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var cpscmx=__args.car; __args=__args.cdr;
return cpscmx;
}
, cpscm__nil)));

var cpscmcurrent_d_error_d_handler = function (__args) {
var g__k746=__args.car; __args=__args.cdr;
var cpscm__hnd__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___749=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__748=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__748) (cpscm__list (function (__args) {
var g__retapply__747=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k746) (cpscm__list (g__retapply__747, cpscm__nil)); });
}
, function (__args) {
var g__k751=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k751) (cpscm__list (cpscm__err_d_hnd, cpscm__nil)); });
}
, function (__args) {
var g__k753=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__755=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__retset_b___754=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k753) (cpscm__list (g__retset_b___754, cpscm__nil)); });
}
) (cpscm__list ((cpscm__err_d_hnd = g__retcar__755), cpscm__nil)); });
}
, cpscm__hnd__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___749, cpscm__nil)), cpscm__nil)); });
}
, cpscm__hnd__41, cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k757=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (function (__args) {
var g__retcall_d_with_d_current_d_continuation__758=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k757) (cpscm__list (g__retcall_d_with_d_current_d_continuation__758, cpscm__nil)); });
}
, function (__args) {
var g__k760=__args.car; __args=__args.cdr;
var cpscm__exit__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_values) (cpscm__list (function (__args) {
var g__retcall_d_with_d_values__761=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k760) (cpscm__list (g__retcall_d_with_d_values__761, cpscm__nil)); });
}
, function (__args) {
var g__k763=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (function (__args) {
var g__retcall_d_with_d_current_d_continuation__764=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k763) (cpscm__list (g__retcall_d_with_d_current_d_continuation__764, cpscm__nil)); });
}
, function (__args) {
var g__k766=__args.car; __args=__args.cdr;
var cpscm__cc__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__err_d_cont = cpscm__cc__42), (cpscm__exit__41) (cpscm__list (function (__args) {
var g__ret__exit__41__768=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k766) (cpscm__list (g__ret__exit__41__768, cpscm__nil)); });
}
, true, cpscm__nil))); });
}
, cpscm__nil)); });
}
, function (__args) {
var g__k770=__args.car; __args=__args.cdr;
var cpscm__e__42=__args.car; __args=__args.cdr;
var cpscm__ek__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__772=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__retcurrent_d_error_d_handler__772) (cpscm__list (function (__args) {
var g__retapply__771=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k770) (cpscm__list (g__retapply__771, cpscm__nil)); });
}
, cpscm__e__42, cpscm__ek__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var cpscmx=__args.car; __args=__args.cdr;
return cpscmx;
}
, cpscm__nil)));

var cpscmerror = function (__args) {
var g__k774=__args.car; __args=__args.cdr;
var cpscm__e__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (function (__args) {
var g__retcall_d_with_d_current_d_continuation__775=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k774) (cpscm__list (g__retcall_d_with_d_current_d_continuation__775, cpscm__nil)); });
}
, function (__args) {
var g__k777=__args.car; __args=__args.cdr;
var cpscm__ek__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__err_d_cont) (cpscm__list (function (__args) {
var g__ret_25_cpscm_c_err_d_cont__778=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k777) (cpscm__list (g__ret_25_cpscm_c_err_d_cont__778, cpscm__nil)); });
}
, cpscm__e__41, cpscm__ek__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
;
