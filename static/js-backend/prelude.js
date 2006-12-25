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
var g___u_ccwinders1=__args.car; __args=__args.cdr;
return (cpscmccwinders = g___u_ccwinders1);
}
) (cpscm__list (cpscm__winders, cpscm__nil))), (cpscmf) (cpscm__list (cpscmk, function (__args) {
var cpscm_u_=__args.car; __args=__args.cdr;
var cpscmxs=__args;
return new cpscm__Trampoline (function () {
return (cpscm__switch_d_winders) (cpscm__list (function (__args) {
var cpscm_u_=__args.car; __args=__args.cdr;
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
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__4=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k2, g__retcar__4, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcadr = function (__args) {
var g__k6=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__8=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k6, g__retcdr__8, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcdar = function (__args) {
var g__k10=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__12=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k10, g__retcar__12, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcddr = function (__args) {
var g__k14=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__16=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k14, g__retcdr__16, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcaaar = function (__args) {
var g__k18=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__21=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__20=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k18, g__retcar__20, cpscm__nil)); });
}
, g__retcar__21, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcaadr = function (__args) {
var g__k23=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__26=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__25=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k23, g__retcar__25, cpscm__nil)); });
}
, g__retcdr__26, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcadar = function (__args) {
var g__k28=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__31=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__30=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k28, g__retcdr__30, cpscm__nil)); });
}
, g__retcar__31, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcaddr = function (__args) {
var g__k33=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__36=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__35=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k33, g__retcdr__35, cpscm__nil)); });
}
, g__retcdr__36, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcdaar = function (__args) {
var g__k38=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__40=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k38, g__retcar__40, cpscm__nil)); });
}
, g__retcar__41, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcdadr = function (__args) {
var g__k43=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k43, g__retcar__45, cpscm__nil)); });
}
, g__retcdr__46, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcddar = function (__args) {
var g__k48=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__51=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__50=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k48, g__retcdr__50, cpscm__nil)); });
}
, g__retcar__51, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcdddr = function (__args) {
var g__k53=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__56=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__55=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k53, g__retcdr__55, cpscm__nil)); });
}
, g__retcdr__56, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcaaaar = function (__args) {
var g__k58=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcar) (cpscm__list (g__k58, g__retcar__60, cpscm__nil)); });
}
, g__retcar__61, cpscm__nil)); });
}
, g__retcar__62, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcaaadr = function (__args) {
var g__k64=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcar) (cpscm__list (g__k64, g__retcar__66, cpscm__nil)); });
}
, g__retcar__67, cpscm__nil)); });
}
, g__retcdr__68, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcaadar = function (__args) {
var g__k70=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcar) (cpscm__list (g__k70, g__retcar__72, cpscm__nil)); });
}
, g__retcdr__73, cpscm__nil)); });
}
, g__retcar__74, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcaaddr = function (__args) {
var g__k76=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcar) (cpscm__list (g__k76, g__retcar__78, cpscm__nil)); });
}
, g__retcdr__79, cpscm__nil)); });
}
, g__retcdr__80, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcadaar = function (__args) {
var g__k82=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcar) (cpscm__list (g__k82, g__retcdr__84, cpscm__nil)); });
}
, g__retcar__85, cpscm__nil)); });
}
, g__retcar__86, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcadadr = function (__args) {
var g__k88=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcar) (cpscm__list (g__k88, g__retcdr__90, cpscm__nil)); });
}
, g__retcar__91, cpscm__nil)); });
}
, g__retcdr__92, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcaddar = function (__args) {
var g__k94=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcar) (cpscm__list (g__k94, g__retcdr__96, cpscm__nil)); });
}
, g__retcdr__97, cpscm__nil)); });
}
, g__retcar__98, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcadddr = function (__args) {
var g__k100=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcar) (cpscm__list (g__k100, g__retcdr__102, cpscm__nil)); });
}
, g__retcdr__103, cpscm__nil)); });
}
, g__retcdr__104, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcdaaar = function (__args) {
var g__k106=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcdr) (cpscm__list (g__k106, g__retcar__108, cpscm__nil)); });
}
, g__retcar__109, cpscm__nil)); });
}
, g__retcar__110, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcdaadr = function (__args) {
var g__k112=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcdr) (cpscm__list (g__k112, g__retcar__114, cpscm__nil)); });
}
, g__retcar__115, cpscm__nil)); });
}
, g__retcdr__116, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcdadar = function (__args) {
var g__k118=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcdr) (cpscm__list (g__k118, g__retcar__120, cpscm__nil)); });
}
, g__retcdr__121, cpscm__nil)); });
}
, g__retcar__122, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcdaddr = function (__args) {
var g__k124=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcdr) (cpscm__list (g__k124, g__retcar__126, cpscm__nil)); });
}
, g__retcdr__127, cpscm__nil)); });
}
, g__retcdr__128, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcddaar = function (__args) {
var g__k130=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcdr) (cpscm__list (g__k130, g__retcdr__132, cpscm__nil)); });
}
, g__retcar__133, cpscm__nil)); });
}
, g__retcar__134, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcddadr = function (__args) {
var g__k136=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcdr) (cpscm__list (g__k136, g__retcdr__138, cpscm__nil)); });
}
, g__retcar__139, cpscm__nil)); });
}
, g__retcdr__140, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcdddar = function (__args) {
var g__k142=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcdr) (cpscm__list (g__k142, g__retcdr__144, cpscm__nil)); });
}
, g__retcdr__145, cpscm__nil)); });
}
, g__retcar__146, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmcddddr = function (__args) {
var g__k148=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
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
return (cpscmcdr) (cpscm__list (g__k148, g__retcdr__150, cpscm__nil)); });
}
, g__retcdr__151, cpscm__nil)); });
}
, g__retcdr__152, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmnot = function (__args) {
var g__k154=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__156=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__156) (cpscm__list (g__k154, function (__args) {
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
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm_u_x__41, cpscm__nil)), cpscm__nil)); });
}
;
var cpscmlist = function (__args) {
var g__k162=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args;
return new cpscm__Trampoline (function () {
return (g__k162) (cpscm__list (cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmlength = function (__args) {
var g__k164=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k167=__args.car; __args=__args.cdr;
var cpscm_u_loop__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__42 = function (__args) {
var g__k171=__args.car; __args=__args.cdr;
var cpscm_u_l__43=__args.car; __args=__args.cdr;
var cpscm_u_res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___174=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__173=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__173) (cpscm__list (g__k171, function (__args) {
var g__k176=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k176) (cpscm__list (cpscm_u_res__44, cpscm__nil)); });
}
, function (__args) {
var g__k178=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__180=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___181=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__42) (cpscm__list (g__k178, g__retcdr__180, g__ret_2b___181, cpscm__nil)); });
}
, cpscm_u_res__44, 1, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___174, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
), (cpscm_u_loop__42) (cpscm__list (g__k167, cpscm_u_l__41, 0, cpscm__nil))); });
}
) (cpscm__list (g__k164, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmlist_p_ = function (__args) {
var g__k183=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___186=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__185=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__185) (cpscm__list (g__k183, function (__args) {
var g__k188=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k188) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k190=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmpair_p_) (cpscm__list (function (__args) {
var g__retpair_p___193=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__192=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__192) (cpscm__list (g__k190, function (__args) {
var g__k195=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__197=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_p_) (cpscm__list (g__k195, g__retcdr__197, cpscm__nil)); });
}
, cpscm_u_l__41, cpscm__nil)); });
}
, function (__args) {
var g__k199=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k199) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retpair_p___193, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_l__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___186, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmlist_d_tail = function (__args) {
var g__k201=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_k__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmzero_p_) (cpscm__list (function (__args) {
var g__retzero_p___204=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__203=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__203) (cpscm__list (g__k201, function (__args) {
var g__k206=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k206) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
, function (__args) {
var g__k208=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__210=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___211=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_d_tail) (cpscm__list (g__k208, g__retcdr__210, g__ret_d___211, cpscm__nil)); });
}
, cpscm_u_k__42, 1, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retzero_p___204, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_k__42, cpscm__nil)); });
}
;
var cpscmlist_d_ref = function (__args) {
var g__k213=__args.car; __args=__args.cdr;
var cpscm_u_list__41=__args.car; __args=__args.cdr;
var cpscm_u_k__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_d_tail) (cpscm__list (function (__args) {
var g__retlist_d_tail__215=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k213, g__retlist_d_tail__215, cpscm__nil)); });
}
, cpscmx, cpscm_u_k__42, cpscm__nil)); });
}
;
var cpscmreverse = function (__args) {
var g__k217=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k220=__args.car; __args=__args.cdr;
var cpscm_u_loop__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__42 = function (__args) {
var g__k224=__args.car; __args=__args.cdr;
var cpscm_u_l__43=__args.car; __args=__args.cdr;
var cpscm_u_res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___227=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__226=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__226) (cpscm__list (g__k224, function (__args) {
var g__k229=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k229) (cpscm__list (cpscm_u_res__44, cpscm__nil)); });
}
, function (__args) {
var g__k231=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__233=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__235=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__234=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__42) (cpscm__list (g__k231, g__retcdr__233, g__retcons__234, cpscm__nil)); });
}
, g__retcar__235, cpscm_u_res__44, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___227, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
), (cpscm_u_loop__42) (cpscm__list (g__k220, cpscm_u_l__41, cpscm__nil, cpscm__nil))); });
}
) (cpscm__list (g__k217, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmappend = function (__args) {
var g__k237=__args.car; __args=__args.cdr;
var cpscm_u_ls__41=__args;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k240=__args.car; __args=__args.cdr;
var cpscm_u_spill__42=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_spill__42 = function (__args) {
var g__k259=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
var cpscm_u_res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___262=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__261=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__261) (cpscm__list (g__k259, function (__args) {
var g__k264=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k264) (cpscm__list (cpscm_u_res__45, cpscm__nil)); });
}
, function (__args) {
var g__k266=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__268=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__270=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__269=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_spill__42) (cpscm__list (g__k266, g__retcdr__268, g__retcons__269, cpscm__nil)); });
}
, g__retcar__270, cpscm_u_res__45, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___262, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
), (cpscm_u_loop__43 = function (__args) {
var g__k245=__args.car; __args=__args.cdr;
var cpscm_u_ls__44=__args.car; __args=__args.cdr;
var cpscm_u_res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___248=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__247=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__247) (cpscm__list (g__k245, function (__args) {
var g__k250=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse_b_) (cpscm__list (g__k250, cpscm_u_res__45, cpscm__nil)); });
}
, function (__args) {
var g__k253=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__255=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__257=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_spill__42) (cpscm__list (function (__args) {
var g__ret__spill__42__256=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k253, g__retcdr__255, g__ret__spill__42__256, cpscm__nil)); });
}
, g__retcar__257, cpscm_u_res__45, cpscm__nil)); });
}
, cpscm_u_ls__44, cpscm__nil)); });
}
, cpscm_u_ls__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___248, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_ls__44, cpscm__nil)); });
}
), (cpscm_u_loop__43) (cpscm__list (g__k240, cpscm_u_ls__41, cpscm__nil, cpscm__nil))); });
}
) (cpscm__list (g__k237, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmappend_b_ = cpscmappend;
var cpscmappend_d_reverse = function (__args) {
var g__k272=__args.car; __args=__args.cdr;
var cpscm_u_rev_d_head__41=__args.car; __args=__args.cdr;
var cpscm_u_tail__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__274=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmappend) (cpscm__list (g__k272, g__retreverse__274, cpscm_u_tail__42, cpscm__nil)); });
}
, cpscm_u_rev_d_head__41, cpscm__nil)); });
}
;
var cpscmappend_d_reverse_b_ = cpscmappend_d_reverse;
var cpscmreverse_b_ = function (__args) {
var g__k276=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (g__k276, cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmfind_d_tail = function (__args) {
var g__k279=__args.car; __args=__args.cdr;
var cpscm_u_pred__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k282=__args.car; __args=__args.cdr;
var cpscm_u_lp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_lp__43 = function (__args) {
var g__k286=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___290=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (function (__args) {
var g__retnot__289=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__288=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__288) (cpscm__list (g__k286, function (__args) {
var g__k292=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__296=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_pred__41) (cpscm__list (function (__args) {
var g__ret__pred__41__295=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__294=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__294) (cpscm__list (g__k292, function (__args) {
var g__k298=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k298) (cpscm__list (cpscm_u_l__44, cpscm__nil)); });
}
, function (__args) {
var g__k300=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__302=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_lp__43) (cpscm__list (g__k300, g__retcdr__302, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret__pred__41__295, cpscm__nil)), cpscm__nil)); });
}
, g__retcar__296, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, function (__args) {
var g__k304=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k304) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnot__289, cpscm__nil)), cpscm__nil)); });
}
, g__retnull_p___290, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
), (cpscm_u_lp__43) (cpscm__list (g__k282, cpscm_u_l__42, cpscm__nil))); });
}
) (cpscm__list (g__k279, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmfind = function (__args) {
var g__k306=__args.car; __args=__args.cdr;
var cpscm_u_pred__41=__args.car; __args=__args.cdr;
var cpscm_u_list__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind_d_tail) (cpscm__list (function (__args) {
var g__retfind_d_tail__308=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k310=__args.car; __args=__args.cdr;
var cpscm_u_tmp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__312=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__312) (cpscm__list (g__k310, function (__args) {
var g__k314=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k314, cpscm_u_tmp__43, cpscm__nil)); });
}
, function (__args) {
var g__k317=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k317) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm_u_tmp__43, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (g__k306, g__retfind_d_tail__308, cpscm__nil)); });
}
, cpscm_u_pred__41, cpscm_u_list__42, cpscm__nil)); });
}
;
var cpscmmap = function (__args) {
var g__k319=__args.car; __args=__args.cdr;
var cpscm_u_f__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k322=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__43 = function (__args) {
var g__k326=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
var cpscm_u_res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___329=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__328=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__328) (cpscm__list (g__k326, function (__args) {
var g__k331=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse_b_) (cpscm__list (g__k331, cpscm_u_res__45, cpscm__nil)); });
}
, function (__args) {
var g__k334=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__336=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__339=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_f__41) (cpscm__list (function (__args) {
var g__ret__f__41__338=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__337=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k334, g__retcdr__336, g__retcons__337, cpscm__nil)); });
}
, g__ret__f__41__338, cpscm_u_res__45, cpscm__nil)); });
}
, g__retcar__339, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___329, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
), (cpscm_u_loop__43) (cpscm__list (g__k322, cpscm_u_l__42, cpscm__nil, cpscm__nil))); });
}
) (cpscm__list (g__k319, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmfor_d_each = function (__args) {
var g__k341=__args.car; __args=__args.cdr;
var cpscm_u_f__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k344=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__43 = function (__args) {
var g__k348=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___351=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__350=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__350) (cpscm__list (g__k348, function (__args) {
var g__k353=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k353) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k355=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__357=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_f__41) (cpscm__list (function (__args) {
var g__ret__f__41__356=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__359=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k355, g__retcdr__359, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, g__retcar__357, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___351, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
), (cpscm_u_loop__43) (cpscm__list (g__k344, cpscm_u_l__42, cpscm__nil))); });
}
) (cpscm__list (g__k341, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmassoc = function (__args) {
var g__k361=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_lis__42=__args.car; __args=__args.cdr;
var cpscm_u_maybe_d__e___43=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___365=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__364=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__364) (cpscm__list (function (__args) {
var g__retapply__363=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k367=__args.car; __args=__args.cdr;
var cpscm_u_e__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind) (cpscm__list (g__k367, function (__args) {
var g__k370=__args.car; __args=__args.cdr;
var cpscm_u_entry__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__372=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_e__44) (cpscm__list (g__k370, cpscm_u_x__41, g__retcar__372, cpscm__nil)); });
}
, cpscm_u_entry__45, cpscm__nil)); });
}
, cpscm_u_lis__42, cpscm__nil)); });
}
) (cpscm__list (g__k361, g__retapply__363, cpscm__nil)); });
}
, function (__args) {
var g__k374=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k374) (cpscm__list (cpscmequal_p_, cpscm__nil)); });
}
, function (__args) {
var g__k376=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k376, cpscm_u_maybe_d__e___43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___365, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_maybe_d__e___43, cpscm__nil)); });
}
;
var cpscmassq = function (__args) {
var g__k379=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmassoc) (cpscm__list (g__k379, cpscm_u_x__41, cpscm_u_l__42, cpscmeq_p_, cpscm__nil)); });
}
;
var cpscmassv = function (__args) {
var g__k382=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmassoc) (cpscm__list (g__k382, cpscm_u_x__41, cpscm_u_l__42, cpscmeqv_p_, cpscm__nil)); });
}
;
var cpscmmember = function (__args) {
var g__k385=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_lis__42=__args.car; __args=__args.cdr;
var cpscm_u_maybe_d__e___43=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___389=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__388=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__388) (cpscm__list (function (__args) {
var g__retapply__387=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k391=__args.car; __args=__args.cdr;
var cpscm_u_e__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind_d_tail) (cpscm__list (g__k391, function (__args) {
var g__k394=__args.car; __args=__args.cdr;
var cpscm_u_y__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_e__44) (cpscm__list (g__k394, cpscm_u_x__41, cpscm_u_y__45, cpscm__nil)); });
}
, cpscm_u_lis__42, cpscm__nil)); });
}
) (cpscm__list (g__k385, g__retapply__387, cpscm__nil)); });
}
, function (__args) {
var g__k397=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k397) (cpscm__list (cpscmequal_p_, cpscm__nil)); });
}
, function (__args) {
var g__k399=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k399, cpscm_u_maybe_d__e___43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___389, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_maybe_d__e___43, cpscm__nil)); });
}
;
var cpscmmemq = function (__args) {
var g__k402=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmember) (cpscm__list (g__k402, cpscm_u_x__41, cpscm_u_l__42, cpscmeq_p_, cpscm__nil)); });
}
;
var cpscmmemv = function (__args) {
var g__k405=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmember) (cpscm__list (g__k405, cpscm_u_x__41, cpscm_u_l__42, cpscmeqv_p_, cpscm__nil)); });
}
;
var cpscmvector_d__r_list = function (__args) {
var g__k408=__args.car; __args=__args.cdr;
var cpscm_u_v__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k411=__args.car; __args=__args.cdr;
var cpscm_u_n__42=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_length) (cpscm__list (function (__args) {
var g__retvector_d_length__413=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_n__42 = g__retvector_d_length__413), (cpscm_u_loop__43 = function (__args) {
var g__k418=__args.car; __args=__args.cdr;
var cpscm_u_i__44=__args.car; __args=__args.cdr;
var cpscm_u_res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_l_) (cpscm__list (function (__args) {
var g__ret_l___421=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__420=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__420) (cpscm__list (g__k418, function (__args) {
var g__k423=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k423) (cpscm__list (cpscm_u_res__45, cpscm__nil)); });
}
, function (__args) {
var g__k425=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___427=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_ref) (cpscm__list (function (__args) {
var g__retvector_d_ref__429=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__428=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k425, g__ret_d___427, g__retcons__428, cpscm__nil)); });
}
, g__retvector_d_ref__429, cpscm_u_res__45, cpscm__nil)); });
}
, cpscm_u_v__41, cpscm_u_i__44, cpscm__nil)); });
}
, cpscm_u_i__44, 1, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret_l___421, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_i__44, 0, cpscm__nil)); });
}
), (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___416=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k411, g__ret_d___416, cpscm__nil, cpscm__nil)); });
}
, cpscm_u_n__42, 1, cpscm__nil))); });
}
, cpscm_u_v__41, cpscm__nil)); });
}
) (cpscm__list (g__k408, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmlist_d__r_vector = function (__args) {
var g__k431=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k434=__args.car; __args=__args.cdr;
var cpscm_u_n__42=__args.car; __args=__args.cdr;
var cpscm_u_v__43=__args.car; __args=__args.cdr;
var cpscm_u_loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlength) (cpscm__list (function (__args) {
var g__retlength__436=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_n__42 = g__retlength__436), (cpscm_u_v__43 = false), (cpscm_u_loop__44 = function (__args) {
var g__k443=__args.car; __args=__args.cdr;
var cpscm_u_i__45=__args.car; __args=__args.cdr;
var cpscm_u_l__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___446=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__445=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__445) (cpscm__list (g__k443, function (__args) {
var g__k448=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k448) (cpscm__list (cpscm_u_v__43, cpscm__nil)); });
}
, function (__args) {
var g__k450=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__452=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_set_b_) (cpscm__list (function (__args) {
var g__retvector_d_set_b___451=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___454=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__455=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__44) (cpscm__list (g__k450, g__ret_2b___454, g__retcdr__455, cpscm__nil)); });
}
, cpscm_u_l__46, cpscm__nil)); });
}
, cpscm_u_i__45, 1, cpscm__nil)); });
}
, cpscm_u_v__43, cpscm_u_i__45, g__retcar__452, cpscm__nil)); });
}
, cpscm_u_l__46, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret_e___446, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_i__45, cpscm_u_n__42, cpscm__nil)); });
}
), (cpscmmake_d_vector) (cpscm__list (function (__args) {
var g__retmake_d_vector__440=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_v__43 = g__retmake_d_vector__440), (cpscm_u_loop__44) (cpscm__list (g__k434, 0, cpscm_u_l__41, cpscm__nil))); });
}
, cpscm_u_n__42, cpscm__nil))); });
}
, cpscm_u_l__41, cpscm__nil)); });
}
) (cpscm__list (g__k431, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmvector = function (__args) {
var g__k457=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmlist_d__r_vector) (cpscm__list (g__k457, cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmvector_d_fill_b_ = function (__args) {
var g__k460=__args.car; __args=__args.cdr;
var cpscm_u_v__41=__args.car; __args=__args.cdr;
var cpscm_u_x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k463=__args.car; __args=__args.cdr;
var cpscm_u_n__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_length) (cpscm__list (function (__args) {
var g__retvector_d_length__465=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_n__43 = g__retvector_d_length__465), (function (__args) {
var g__k469=__args.car; __args=__args.cdr;
var cpscm_u_loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__44 = function (__args) {
var g__k472=__args.car; __args=__args.cdr;
var cpscm_u_i__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___475=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__474=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__474) (cpscm__list (g__k472, function (__args) {
var g__k477=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k477) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k479=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_set_b_) (cpscm__list (function (__args) {
var g__retvector_d_set_b___480=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___482=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__44) (cpscm__list (g__k479, g__ret_2b___482, cpscm__nil)); });
}
, cpscm_u_i__45, 1, cpscm__nil)); });
}
, cpscm_u_v__41, cpscm_u_i__45, cpscm_u_x__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret_e___475, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_i__45, cpscm_u_n__43, cpscm__nil)); });
}
), (g__k469) (cpscm__list (cpscm_u_loop__44, cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__467=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__467) (cpscm__list (g__k463, 0, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil))); });
}
, cpscm_u_v__41, cpscm__nil)); });
}
) (cpscm__list (g__k460, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmstring = function (__args) {
var g__k484=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmlist_d__r_string) (cpscm__list (g__k484, cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmstring_d_fill_b_ = function (__args) {
var g__k487=__args.car; __args=__args.cdr;
var cpscm_u_v__41=__args.car; __args=__args.cdr;
var cpscm_u_x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k490=__args.car; __args=__args.cdr;
var cpscm_u_n__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_length) (cpscm__list (function (__args) {
var g__retstring_d_length__492=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_n__43 = g__retstring_d_length__492), (function (__args) {
var g__k496=__args.car; __args=__args.cdr;
var cpscm_u_loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__44 = function (__args) {
var g__k499=__args.car; __args=__args.cdr;
var cpscm_u_i__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___502=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__501=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__501) (cpscm__list (g__k499, function (__args) {
var g__k504=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k504) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k506=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_set_b_) (cpscm__list (function (__args) {
var g__retstring_d_set_b___507=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___509=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__44) (cpscm__list (g__k506, g__ret_2b___509, cpscm__nil)); });
}
, cpscm_u_i__45, 1, cpscm__nil)); });
}
, cpscm_u_v__41, cpscm_u_i__45, cpscm_u_x__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret_e___502, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_i__45, cpscm_u_n__43, cpscm__nil)); });
}
), (g__k496) (cpscm__list (cpscm_u_loop__44, cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__494=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__494) (cpscm__list (g__k490, 0, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil))); });
}
, cpscm_u_v__41, cpscm__nil)); });
}
) (cpscm__list (g__k487, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmcall_w_cc = cpscmcall_d_with_d_current_d_continuation;
var cpscmwrite_d_char = cpscmdisplay;
var cpscmwith_d_output_d_to_d_port = function (__args) {
var g__k511=__args.car; __args=__args.cdr;
var cpscm_u_p__41=__args.car; __args=__args.cdr;
var cpscm_u_thunk__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__513=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k515=__args.car; __args=__args.cdr;
var cpscm_u_oldp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__516=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_thunk__42) (cpscm__list (function (__args) {
var g__ret__thunk__42__518=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k520=__args.car; __args=__args.cdr;
var cpscm_u_res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__521=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k520) (cpscm__list (cpscm_u_res__44, cpscm__nil)); });
}
, cpscm_u_oldp__43, cpscm__nil)); });
}
) (cpscm__list (g__k515, g__ret__thunk__42__518, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_p__41, cpscm__nil)); });
}
) (cpscm__list (g__k511, g__retcurrent_d_output_d_port__513, cpscm__nil)); });
}
, cpscm__nil)); });
}
;
var cpscm_x_make_d_promise = function (__args) {
var g__k523=__args.car; __args=__args.cdr;
var cpscm_u_proc__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k526=__args.car; __args=__args.cdr;
var cpscm_u_result_d_ready_p___42=__args.car; __args=__args.cdr;
var cpscm_u_result__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k526) (cpscm__list (function (__args) {
var g__k528=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__530=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__530) (cpscm__list (g__k528, function (__args) {
var g__k532=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k532) (cpscm__list (cpscm_u_result__43, cpscm__nil)); });
}
, function (__args) {
var g__k534=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_proc__41) (cpscm__list (function (__args) {
var g__ret__proc__41__536=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k538=__args.car; __args=__args.cdr;
var cpscm_u_x__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__540=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__540) (cpscm__list (g__k538, function (__args) {
var g__k542=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k542) (cpscm__list (cpscm_u_result__43, cpscm__nil)); });
}
, function (__args) {
var g__k544=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_result_d_ready_p___42 = true), (cpscm_u_result__43 = cpscm_u_x__44), (g__k544) (cpscm__list (cpscm_u_result__43, cpscm__nil))); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm_u_result_d_ready_p___42, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (g__k534, g__ret__proc__41__536, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm_u_result_d_ready_p___42, cpscm__nil)), cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k523, false, false, cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k548=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist) (cpscm__list (function (__args) {
var g__retlist__550=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k548) (cpscm__list ((cpscm__vals_d_marker = g__retlist__550), cpscm__nil)); });
}
, cpscm__sym ("values"), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var cpscmx=__args.car; __args=__args.cdr;
return cpscmx;
}
, cpscm__nil)));

var cpscm__pack_d_vals = function (__args) {
var g__k552=__args.car; __args=__args.cdr;
var cpscm_u_things__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___556=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k558=__args.car; __args=__args.cdr;
var cpscm_u_x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__560=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__560) (cpscm__list (g__k558, function (__args) {
var g__k562=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k562) (cpscm__list (cpscm_u_x__42, cpscm__nil)); });
}
, function (__args) {
var g__k564=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__567=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___566=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (g__k564, g__retnull_p___566, cpscm__nil)); });
}
, g__retcdr__567, cpscm__nil)); });
}
, cpscm_u_things__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm_u_x__42, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__555=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__554=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__554) (cpscm__list (g__k552, function (__args) {
var g__k569=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (g__k569, cpscm__vals_d_marker, cpscm_u_things__41, cpscm__nil)); });
}
, function (__args) {
var g__k572=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k572, cpscm_u_things__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__555, cpscm__nil)), cpscm__nil)); });
}
, g__retnull_p___556, cpscm__nil)); });
}
, cpscm_u_things__41, cpscm__nil)); });
}
;
var cpscm__unpack_d_vals = function (__args) {
var g__k575=__args.car; __args=__args.cdr;
var cpscm_u_vals__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmpair_p_) (cpscm__list (function (__args) {
var g__retpair_p___580=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__579=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__579) (cpscm__list (function (__args) {
var g__retapply__578=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__577=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__577) (cpscm__list (g__k575, function (__args) {
var g__k582=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k582, cpscm_u_vals__41, cpscm__nil)); });
}
, function (__args) {
var g__k585=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist) (cpscm__list (g__k585, cpscm_u_vals__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retapply__578, cpscm__nil)), cpscm__nil)); });
}
, function (__args) {
var g__k588=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__590=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmeq_p_) (cpscm__list (g__k588, g__retcar__590, cpscm__vals_d_marker, cpscm__nil)); });
}
, cpscm_u_vals__41, cpscm__nil)); });
}
, function (__args) {
var g__k592=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k592) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retpair_p___580, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_vals__41, cpscm__nil)); });
}
;
var cpscm__switch_d_winders = function (__args) {
var g__k594=__args.car; __args=__args.cdr;
var cpscm_u_ccwinders__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k597=__args.car; __args=__args.cdr;
var cpscm_u_switch__42=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_switch__42 = function (__args) {
var g__k640=__args.car; __args=__args.cdr;
var cpscm_u_a__44=__args.car; __args=__args.cdr;
var cpscm_u_b__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k643=__args.car; __args=__args.cdr;
var cpscm_u_run_d_all__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_run_d_all__46 = function (__args) {
var g__k651=__args.car; __args=__args.cdr;
var cpscm_u_to_d_apply__47=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___654=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__653=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__653) (cpscm__list (g__k651, function (__args) {
var g__k656=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k656) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k658=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__660=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__retcar__660) (cpscm__list (function (__args) {
var g__retapply__659=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__662=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_run_d_all__46) (cpscm__list (g__k658, g__retcdr__662, cpscm__nil)); });
}
, cpscm_u_to_d_apply__47, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_to_d_apply__47, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___654, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_to_d_apply__47, cpscm__nil)); });
}
), (cpscmmap) (cpscm__list (function (__args) {
var g__retmap__647=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmap) (cpscm__list (function (__args) {
var g__retmap__648=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmappend_d_reverse_b_) (cpscm__list (function (__args) {
var g__retappend_d_reverse_b___646=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_run_d_all__46) (cpscm__list (function (__args) {
var g__ret__run_d_all__46__645=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k643) (cpscm__list ((cpscm__winders = cpscm_u_ccwinders__41), cpscm__nil)); });
}
, g__retappend_d_reverse_b___646, cpscm__nil)); });
}
, g__retmap__647, g__retmap__648, cpscm__nil)); });
}
, cpscmcar, cpscm_u_b__45, cpscm__nil)); });
}
, cpscmcdr, cpscm_u_a__44, cpscm__nil))); });
}
) (cpscm__list (g__k640, cpscm__sym ("undefined"), cpscm__nil)); });
}
), (cpscm_u_loop__43 = function (__args) {
var g__k604=__args.car; __args=__args.cdr;
var cpscm_u_a__44=__args.car; __args=__args.cdr;
var cpscm_u_b__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___608=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k610=__args.car; __args=__args.cdr;
var cpscm_u_x__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__612=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__612) (cpscm__list (g__k610, function (__args) {
var g__k614=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k614) (cpscm__list (cpscm_u_x__46, cpscm__nil)); });
}
, function (__args) {
var g__k616=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___618=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k620=__args.car; __args=__args.cdr;
var cpscm_u_x__47=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__622=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__622) (cpscm__list (g__k620, function (__args) {
var g__k624=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k624) (cpscm__list (cpscm_u_x__47, cpscm__nil)); });
}
, function (__args) {
var g__k626=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__629=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__630=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmeq_p_) (cpscm__list (function (__args) {
var g__reteq_p___628=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (g__k626, g__reteq_p___628, cpscm__nil)); });
}
, g__retcar__629, g__retcar__630, cpscm__nil)); });
}
, cpscm_u_b__45, cpscm__nil)); });
}
, cpscm_u_a__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm_u_x__47, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (g__k616, g__retnull_p___618, cpscm__nil)); });
}
, cpscm_u_b__45, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm_u_x__46, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__607=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__606=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__606) (cpscm__list (g__k604, function (__args) {
var g__k632=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_switch__42) (cpscm__list (g__k632, cpscm_u_a__44, cpscm_u_b__45, cpscm__nil)); });
}
, function (__args) {
var g__k635=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__637=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__638=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k635, g__retcdr__637, g__retcdr__638, cpscm__nil)); });
}
, cpscm_u_b__45, cpscm__nil)); });
}
, cpscm_u_a__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__607, cpscm__nil)), cpscm__nil)); });
}
, g__retnull_p___608, cpscm__nil)); });
}
, cpscm_u_a__44, cpscm__nil)); });
}
), (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__601=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__602=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k597, g__retreverse__601, g__retreverse__602, cpscm__nil)); });
}
, cpscm_u_ccwinders__41, cpscm__nil)); });
}
, cpscm__winders, cpscm__nil))); });
}
) (cpscm__list (g__k594, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmdynamic_d_wind = function (__args) {
var g__k664=__args.car; __args=__args.cdr;
var cpscm_u_before__41=__args.car; __args=__args.cdr;
var cpscm_u_thunk__42=__args.car; __args=__args.cdr;
var cpscm_u_after__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k667=__args.car; __args=__args.cdr;
var cpscm_u_result__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_result__44 = false), (cpscm_u_before__41) (cpscm__list (function (__args) {
var g__ret__before__41__669=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__672=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__671=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__winders = g__retcons__671), (cpscm_u_thunk__42) (cpscm__list (function (__args) {
var g__ret__thunk__42__674=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_result__44 = g__ret__thunk__42__674), (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__676=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__winders = g__retcdr__676), (cpscm_u_after__43) (cpscm__list (function (__args) {
var g__ret__after__43__677=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k667) (cpscm__list (cpscm_u_result__44, cpscm__nil)); });
}
, cpscm__nil))); });
}
, cpscm__winders, cpscm__nil))); });
}
, cpscm__nil))); });
}
, g__retcons__672, cpscm__winders, cpscm__nil)); });
}
, cpscm_u_before__41, cpscm_u_after__43, cpscm__nil)); });
}
, cpscm__nil))); });
}
) (cpscm__list (g__k664, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmwith_d_failure_d_continuation = function (__args) {
var g__k679=__args.car; __args=__args.cdr;
var cpscm_u_hnd__41=__args.car; __args=__args.cdr;
var cpscm_u_thunk__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k682=__args.car; __args=__args.cdr;
var cpscm_u_old_d_hnd__43=__args.car; __args=__args.cdr;
var cpscm_u_new_d_hnd__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__684=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_old_d_hnd__43 = g__retcurrent_d_error_d_handler__684), (cpscm_u_new_d_hnd__44 = function (__args) {
var g__k689=__args.car; __args=__args.cdr;
var cpscm_u_e__45=__args.car; __args=__args.cdr;
var cpscm_u_ek__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__690=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_hnd__41) (cpscm__list (g__k689, cpscm_u_e__45, cpscm_u_ek__46, cpscm__nil)); });
}
, cpscm_u_old_d_hnd__43, cpscm__nil)); });
}
), (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__686=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_thunk__42) (cpscm__list (g__k682, cpscm__nil)); });
}
, cpscm_u_new_d_hnd__44, cpscm__nil))); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k679, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmwith_w_fc = cpscmwith_d_failure_d_continuation;
var cpscm__default_d_err_d_hnd = function (__args) {
var g__k693=__args.car; __args=__args.cdr;
var cpscm_u_e__41=__args.car; __args=__args.cdr;
var cpscm_u_ek__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmdisplay) (cpscm__list (function (__args) {
var g__retdisplay__694=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmdisplay) (cpscm__list (function (__args) {
var g__retdisplay__695=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnewline) (cpscm__list (g__k693, cpscm__nil)); });
}
, cpscm_u_e__41, cpscm__nil)); });
}
, "Error: ", cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k698=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k698) (cpscm__list ((cpscm__err_d_hnd = cpscm__default_d_err_d_hnd), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var cpscmx=__args.car; __args=__args.cdr;
return cpscmx;
}
, cpscm__nil)));

var cpscmcurrent_d_error_d_handler = function (__args) {
var g__k701=__args.car; __args=__args.cdr;
var cpscm_u_hnd__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___704=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__703=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__703) (cpscm__list (g__k701, function (__args) {
var g__k706=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k706) (cpscm__list (cpscm__err_d_hnd, cpscm__nil)); });
}
, function (__args) {
var g__k708=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__710=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k708) (cpscm__list ((cpscm__err_d_hnd = g__retcar__710), cpscm__nil)); });
}
, cpscm_u_hnd__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___704, cpscm__nil)), cpscm__nil)); });
}
, cpscm_u_hnd__41, cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k712=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (g__k712, function (__args) {
var g__k715=__args.car; __args=__args.cdr;
var cpscm_u_exit__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_values) (cpscm__list (g__k715, function (__args) {
var g__k718=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (g__k718, function (__args) {
var g__k721=__args.car; __args=__args.cdr;
var cpscm_u_cc__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__err_d_cont = cpscm_u_cc__42), (cpscm_u_exit__41) (cpscm__list (g__k721, true, cpscm__nil))); });
}
, cpscm__nil)); });
}
, function (__args) {
var g__k725=__args.car; __args=__args.cdr;
var cpscm_u_e__42=__args.car; __args=__args.cdr;
var cpscm_u_ek__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__727=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__retcurrent_d_error_d_handler__727) (cpscm__list (g__k725, cpscm_u_e__42, cpscm_u_ek__43, cpscm__nil)); });
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
var g__k729=__args.car; __args=__args.cdr;
var cpscm_u_e__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (g__k729, function (__args) {
var g__k732=__args.car; __args=__args.cdr;
var cpscm_u_ek__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__err_d_cont) (cpscm__list (g__k732, cpscm_u_e__41, cpscm_u_ek__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
;
