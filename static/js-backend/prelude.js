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
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k154, cpscm_u_x__41, function (__args) {
var g__k157=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k157) (cpscm__list (false, cpscm__nil)); });
}
, function (__args) {
var g__k159=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k159) (cpscm__list (true, cpscm__nil)); });
}
, cpscm__nil)); });
}
;
var cpscmexpt = function (__args) {
var g__k161=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_y__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlog) (cpscm__list (function (__args) {
var g__retlog__164=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2a_) (cpscm__list (function (__args) {
var g__ret_2a___163=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmexp) (cpscm__list (g__k161, g__ret_2a___163, cpscm__nil)); });
}
, cpscm_u_y__42, g__retlog__164, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmchar_d_numeric_p_ = function (__args) {
var g__k166=__args.car; __args=__args.cdr;
var cpscm_u_c__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (function (__args) {
var g__retchar_l__e__p___168=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k166, g__retchar_l__e__p___168, function (__args) {
var g__k170=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (g__k170, cpscm_u_c__41, (cpscm__char (57)), cpscm__nil)); });
}
, function (__args) {
var g__k173=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k173) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
, (cpscm__char (48)), cpscm_u_c__41, cpscm__nil)); });
}
;
var cpscmchar_d_upper_d_case_p_ = function (__args) {
var g__k175=__args.car; __args=__args.cdr;
var cpscm_u_c__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (function (__args) {
var g__retchar_l__e__p___177=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k175, g__retchar_l__e__p___177, function (__args) {
var g__k179=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (g__k179, cpscm_u_c__41, (cpscm__char (90)), cpscm__nil)); });
}
, function (__args) {
var g__k182=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k182) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
, (cpscm__char (65)), cpscm_u_c__41, cpscm__nil)); });
}
;
var cpscmchar_d_lower_d_case_p_ = function (__args) {
var g__k184=__args.car; __args=__args.cdr;
var cpscm_u_c__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (function (__args) {
var g__retchar_l__e__p___186=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k184, g__retchar_l__e__p___186, function (__args) {
var g__k188=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (g__k188, cpscm_u_c__41, (cpscm__char (122)), cpscm__nil)); });
}
, function (__args) {
var g__k191=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k191) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
, (cpscm__char (97)), cpscm_u_c__41, cpscm__nil)); });
}
;
var cpscmchar_d_ci_l__p_ = function (__args) {
var g__k193=__args.car; __args=__args.cdr;
var cpscm_u_c1__41=__args.car; __args=__args.cdr;
var cpscm_u_c2__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__195=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__196=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__p_) (cpscm__list (g__k193, g__retchar_d_upcase__195, g__retchar_d_upcase__196, cpscm__nil)); });
}
, cpscm_u_c2__42, cpscm__nil)); });
}
, cpscm_u_c1__41, cpscm__nil)); });
}
;
var cpscmchar_d_ci_l__e__p_ = function (__args) {
var g__k198=__args.car; __args=__args.cdr;
var cpscm_u_c1__41=__args.car; __args=__args.cdr;
var cpscm_u_c2__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__200=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__201=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (g__k198, g__retchar_d_upcase__200, g__retchar_d_upcase__201, cpscm__nil)); });
}
, cpscm_u_c2__42, cpscm__nil)); });
}
, cpscm_u_c1__41, cpscm__nil)); });
}
;
var cpscmchar_d_ci_r__p_ = function (__args) {
var g__k203=__args.car; __args=__args.cdr;
var cpscm_u_c1__41=__args.car; __args=__args.cdr;
var cpscm_u_c2__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__205=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__206=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_r__p_) (cpscm__list (g__k203, g__retchar_d_upcase__205, g__retchar_d_upcase__206, cpscm__nil)); });
}
, cpscm_u_c2__42, cpscm__nil)); });
}
, cpscm_u_c1__41, cpscm__nil)); });
}
;
var cpscmchar_d_ci_r__e__p_ = function (__args) {
var g__k208=__args.car; __args=__args.cdr;
var cpscm_u_c1__41=__args.car; __args=__args.cdr;
var cpscm_u_c2__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__210=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__211=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_r__e__p_) (cpscm__list (g__k208, g__retchar_d_upcase__210, g__retchar_d_upcase__211, cpscm__nil)); });
}
, cpscm_u_c2__42, cpscm__nil)); });
}
, cpscm_u_c1__41, cpscm__nil)); });
}
;
var cpscmchar_d_ci_e__p_ = function (__args) {
var g__k213=__args.car; __args=__args.cdr;
var cpscm_u_c1__41=__args.car; __args=__args.cdr;
var cpscm_u_c2__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__215=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__216=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_e__p_) (cpscm__list (g__k213, g__retchar_d_upcase__215, g__retchar_d_upcase__216, cpscm__nil)); });
}
, cpscm_u_c2__42, cpscm__nil)); });
}
, cpscm_u_c1__41, cpscm__nil)); });
}
;
var cpscmlist = function (__args) {
var g__k218=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args;
return new cpscm__Trampoline (function () {
return (g__k218) (cpscm__list (cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmlength = function (__args) {
var g__k220=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k223=__args.car; __args=__args.cdr;
var cpscm_u_loop__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__42 = function (__args) {
var g__k227=__args.car; __args=__args.cdr;
var cpscm_u_l__43=__args.car; __args=__args.cdr;
var cpscm_u_res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___229=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k227, g__retnull_p___229, function (__args) {
var g__k231=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k231) (cpscm__list (cpscm_u_res__44, cpscm__nil)); });
}
, function (__args) {
var g__k233=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__235=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___236=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__42) (cpscm__list (g__k233, g__retcdr__235, g__ret_2b___236, cpscm__nil)); });
}
, cpscm_u_res__44, 1, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
), (cpscm_u_loop__42) (cpscm__list (g__k223, cpscm_u_l__41, 0, cpscm__nil))); });
}
) (cpscm__list (g__k220, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmlist_p_ = function (__args) {
var g__k238=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___240=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k238, g__retnull_p___240, function (__args) {
var g__k242=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k242) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k244=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmpair_p_) (cpscm__list (function (__args) {
var g__retpair_p___246=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k244, g__retpair_p___246, function (__args) {
var g__k248=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__250=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_p_) (cpscm__list (g__k248, g__retcdr__250, cpscm__nil)); });
}
, cpscm_u_l__41, cpscm__nil)); });
}
, function (__args) {
var g__k252=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k252) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmlist_d_tail = function (__args) {
var g__k254=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_k__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmzero_p_) (cpscm__list (function (__args) {
var g__retzero_p___256=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k254, g__retzero_p___256, function (__args) {
var g__k258=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k258) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
, function (__args) {
var g__k260=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__262=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___263=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_d_tail) (cpscm__list (g__k260, g__retcdr__262, g__ret_d___263, cpscm__nil)); });
}
, cpscm_u_k__42, 1, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_k__42, cpscm__nil)); });
}
;
var cpscmlist_d_ref = function (__args) {
var g__k265=__args.car; __args=__args.cdr;
var cpscm_u_list__41=__args.car; __args=__args.cdr;
var cpscm_u_k__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_d_tail) (cpscm__list (function (__args) {
var g__retlist_d_tail__267=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k265, g__retlist_d_tail__267, cpscm__nil)); });
}
, cpscmx, cpscm_u_k__42, cpscm__nil)); });
}
;
var cpscmreverse = function (__args) {
var g__k269=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k272=__args.car; __args=__args.cdr;
var cpscm_u_loop__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__42 = function (__args) {
var g__k276=__args.car; __args=__args.cdr;
var cpscm_u_l__43=__args.car; __args=__args.cdr;
var cpscm_u_res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___278=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k276, g__retnull_p___278, function (__args) {
var g__k280=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k280) (cpscm__list (cpscm_u_res__44, cpscm__nil)); });
}
, function (__args) {
var g__k282=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__284=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__286=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__285=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__42) (cpscm__list (g__k282, g__retcdr__284, g__retcons__285, cpscm__nil)); });
}
, g__retcar__286, cpscm_u_res__44, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
), (cpscm_u_loop__42) (cpscm__list (g__k272, cpscm_u_l__41, cpscm__nil, cpscm__nil))); });
}
) (cpscm__list (g__k269, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmappend = function (__args) {
var g__k288=__args.car; __args=__args.cdr;
var cpscm_u_ls__41=__args;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k291=__args.car; __args=__args.cdr;
var cpscm_u_spill__42=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_spill__42 = function (__args) {
var g__k309=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
var cpscm_u_res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___311=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k309, g__retnull_p___311, function (__args) {
var g__k313=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k313) (cpscm__list (cpscm_u_res__45, cpscm__nil)); });
}
, function (__args) {
var g__k315=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__317=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__319=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__318=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_spill__42) (cpscm__list (g__k315, g__retcdr__317, g__retcons__318, cpscm__nil)); });
}
, g__retcar__319, cpscm_u_res__45, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
), (cpscm_u_loop__43 = function (__args) {
var g__k296=__args.car; __args=__args.cdr;
var cpscm_u_ls__44=__args.car; __args=__args.cdr;
var cpscm_u_res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___298=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k296, g__retnull_p___298, function (__args) {
var g__k300=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse_b_) (cpscm__list (g__k300, cpscm_u_res__45, cpscm__nil)); });
}
, function (__args) {
var g__k303=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__305=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__307=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_spill__42) (cpscm__list (function (__args) {
var g__ret__spill__42__306=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k303, g__retcdr__305, g__ret__spill__42__306, cpscm__nil)); });
}
, g__retcar__307, cpscm_u_res__45, cpscm__nil)); });
}
, cpscm_u_ls__44, cpscm__nil)); });
}
, cpscm_u_ls__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_ls__44, cpscm__nil)); });
}
), (cpscm_u_loop__43) (cpscm__list (g__k291, cpscm_u_ls__41, cpscm__nil, cpscm__nil))); });
}
) (cpscm__list (g__k288, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmappend_b_ = cpscmappend;
var cpscmappend_d_reverse = function (__args) {
var g__k321=__args.car; __args=__args.cdr;
var cpscm_u_rev_d_head__41=__args.car; __args=__args.cdr;
var cpscm_u_tail__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__323=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmappend) (cpscm__list (g__k321, g__retreverse__323, cpscm_u_tail__42, cpscm__nil)); });
}
, cpscm_u_rev_d_head__41, cpscm__nil)); });
}
;
var cpscmappend_d_reverse_b_ = cpscmappend_d_reverse;
var cpscmreverse_b_ = function (__args) {
var g__k325=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (g__k325, cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmfind_d_tail = function (__args) {
var g__k328=__args.car; __args=__args.cdr;
var cpscm_u_pred__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k331=__args.car; __args=__args.cdr;
var cpscm_u_lp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_lp__43 = function (__args) {
var g__k335=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___338=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (function (__args) {
var g__retnot__337=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k335, g__retnot__337, function (__args) {
var g__k340=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__343=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_pred__41) (cpscm__list (function (__args) {
var g__ret__pred__41__342=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k340, g__ret__pred__41__342, function (__args) {
var g__k345=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k345) (cpscm__list (cpscm_u_l__44, cpscm__nil)); });
}
, function (__args) {
var g__k347=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__349=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_lp__43) (cpscm__list (g__k347, g__retcdr__349, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
, g__retcar__343, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, function (__args) {
var g__k351=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k351) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
, g__retnull_p___338, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
), (cpscm_u_lp__43) (cpscm__list (g__k331, cpscm_u_l__42, cpscm__nil))); });
}
) (cpscm__list (g__k328, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmfind = function (__args) {
var g__k353=__args.car; __args=__args.cdr;
var cpscm_u_pred__41=__args.car; __args=__args.cdr;
var cpscm_u_list__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind_d_tail) (cpscm__list (function (__args) {
var g__retfind_d_tail__355=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k357=__args.car; __args=__args.cdr;
var cpscm_u_tmp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k357, cpscm_u_tmp__43, function (__args) {
var g__k360=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k360, cpscm_u_tmp__43, cpscm__nil)); });
}
, function (__args) {
var g__k363=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k363) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k353, g__retfind_d_tail__355, cpscm__nil)); });
}
, cpscm_u_pred__41, cpscm_u_list__42, cpscm__nil)); });
}
;
var cpscmmap = function (__args) {
var g__k365=__args.car; __args=__args.cdr;
var cpscm_u_f__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k368=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__43 = function (__args) {
var g__k372=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
var cpscm_u_res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___374=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k372, g__retnull_p___374, function (__args) {
var g__k376=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse_b_) (cpscm__list (g__k376, cpscm_u_res__45, cpscm__nil)); });
}
, function (__args) {
var g__k379=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__381=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__384=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_f__41) (cpscm__list (function (__args) {
var g__ret__f__41__383=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__382=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k379, g__retcdr__381, g__retcons__382, cpscm__nil)); });
}
, g__ret__f__41__383, cpscm_u_res__45, cpscm__nil)); });
}
, g__retcar__384, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
), (cpscm_u_loop__43) (cpscm__list (g__k368, cpscm_u_l__42, cpscm__nil, cpscm__nil))); });
}
) (cpscm__list (g__k365, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmfor_d_each = function (__args) {
var g__k386=__args.car; __args=__args.cdr;
var cpscm_u_f__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k389=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__43 = function (__args) {
var g__k393=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___395=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k393, g__retnull_p___395, function (__args) {
var g__k397=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k397) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k399=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__401=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_f__41) (cpscm__list (function (__args) {
var g__ret__f__41__400=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__403=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k399, g__retcdr__403, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, g__retcar__401, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
), (cpscm_u_loop__43) (cpscm__list (g__k389, cpscm_u_l__42, cpscm__nil))); });
}
) (cpscm__list (g__k386, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmassoc = function (__args) {
var g__k405=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_lis__42=__args.car; __args=__args.cdr;
var cpscm_u_maybe_d__e___43=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___408=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (function (__args) {
var g__ret_x_boolean_d_combinator__407=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k410=__args.car; __args=__args.cdr;
var cpscm_u_e__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind) (cpscm__list (g__k410, function (__args) {
var g__k413=__args.car; __args=__args.cdr;
var cpscm_u_entry__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__415=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_e__44) (cpscm__list (g__k413, cpscm_u_x__41, g__retcar__415, cpscm__nil)); });
}
, cpscm_u_entry__45, cpscm__nil)); });
}
, cpscm_u_lis__42, cpscm__nil)); });
}
) (cpscm__list (g__k405, g__ret_x_boolean_d_combinator__407, cpscm__nil)); });
}
, g__retnull_p___408, function (__args) {
var g__k417=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k417) (cpscm__list (cpscmequal_p_, cpscm__nil)); });
}
, function (__args) {
var g__k419=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k419, cpscm_u_maybe_d__e___43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_maybe_d__e___43, cpscm__nil)); });
}
;
var cpscmassq = function (__args) {
var g__k422=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmassoc) (cpscm__list (g__k422, cpscm_u_x__41, cpscm_u_l__42, cpscmeq_p_, cpscm__nil)); });
}
;
var cpscmassv = function (__args) {
var g__k425=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmassoc) (cpscm__list (g__k425, cpscm_u_x__41, cpscm_u_l__42, cpscmeqv_p_, cpscm__nil)); });
}
;
var cpscmmember = function (__args) {
var g__k428=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_lis__42=__args.car; __args=__args.cdr;
var cpscm_u_maybe_d__e___43=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___431=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (function (__args) {
var g__ret_x_boolean_d_combinator__430=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k433=__args.car; __args=__args.cdr;
var cpscm_u_e__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind_d_tail) (cpscm__list (g__k433, function (__args) {
var g__k436=__args.car; __args=__args.cdr;
var cpscm_u_y__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_e__44) (cpscm__list (g__k436, cpscm_u_x__41, cpscm_u_y__45, cpscm__nil)); });
}
, cpscm_u_lis__42, cpscm__nil)); });
}
) (cpscm__list (g__k428, g__ret_x_boolean_d_combinator__430, cpscm__nil)); });
}
, g__retnull_p___431, function (__args) {
var g__k439=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k439) (cpscm__list (cpscmequal_p_, cpscm__nil)); });
}
, function (__args) {
var g__k441=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k441, cpscm_u_maybe_d__e___43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_maybe_d__e___43, cpscm__nil)); });
}
;
var cpscmmemq = function (__args) {
var g__k444=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmember) (cpscm__list (g__k444, cpscm_u_x__41, cpscm_u_l__42, cpscmeq_p_, cpscm__nil)); });
}
;
var cpscmmemv = function (__args) {
var g__k447=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmember) (cpscm__list (g__k447, cpscm_u_x__41, cpscm_u_l__42, cpscmeqv_p_, cpscm__nil)); });
}
;
var cpscmmax = function (__args) {
var g__k450=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___452=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k450, g__retnull_p___452, function (__args) {
var g__k454=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k454) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
, function (__args) {
var g__k456=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__458=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k460=__args.car; __args=__args.cdr;
var cpscm_u_y__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_r_) (cpscm__list (function (__args) {
var g__ret_r___463=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (function (__args) {
var g__ret_x_boolean_d_combinator__462=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__464=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmapply) (cpscm__list (g__k460, cpscmmax, g__ret_x_boolean_d_combinator__462, g__retcdr__464, cpscm__nil)); });
}
, cpscm_u_l__42, cpscm__nil)); });
}
, g__ret_r___463, function (__args) {
var g__k466=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k466) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
, function (__args) {
var g__k468=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k468) (cpscm__list (cpscm_u_y__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm_u_y__43, cpscm__nil)); });
}
) (cpscm__list (g__k456, g__retcar__458, cpscm__nil)); });
}
, cpscm_u_l__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__42, cpscm__nil)); });
}
;
var cpscmmin = function (__args) {
var g__k470=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___472=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k470, g__retnull_p___472, function (__args) {
var g__k474=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k474) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
, function (__args) {
var g__k476=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__478=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k480=__args.car; __args=__args.cdr;
var cpscm_u_y__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_l_) (cpscm__list (function (__args) {
var g__ret_l___483=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (function (__args) {
var g__ret_x_boolean_d_combinator__482=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__484=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmapply) (cpscm__list (g__k480, cpscmmax, g__ret_x_boolean_d_combinator__482, g__retcdr__484, cpscm__nil)); });
}
, cpscm_u_l__42, cpscm__nil)); });
}
, g__ret_l___483, function (__args) {
var g__k486=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k486) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
, function (__args) {
var g__k488=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k488) (cpscm__list (cpscm_u_y__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm_u_y__43, cpscm__nil)); });
}
) (cpscm__list (g__k476, g__retcar__478, cpscm__nil)); });
}
, cpscm_u_l__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__42, cpscm__nil)); });
}
;
var cpscmvector_d__r_list = function (__args) {
var g__k490=__args.car; __args=__args.cdr;
var cpscm_u_v__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k493=__args.car; __args=__args.cdr;
var cpscm_u_n__42=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_length) (cpscm__list (function (__args) {
var g__retvector_d_length__495=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_n__42 = g__retvector_d_length__495), (cpscm_u_loop__43 = function (__args) {
var g__k500=__args.car; __args=__args.cdr;
var cpscm_u_i__44=__args.car; __args=__args.cdr;
var cpscm_u_res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_l_) (cpscm__list (function (__args) {
var g__ret_l___502=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k500, g__ret_l___502, function (__args) {
var g__k504=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k504) (cpscm__list (cpscm_u_res__45, cpscm__nil)); });
}
, function (__args) {
var g__k506=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___508=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_ref) (cpscm__list (function (__args) {
var g__retvector_d_ref__510=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__509=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k506, g__ret_d___508, g__retcons__509, cpscm__nil)); });
}
, g__retvector_d_ref__510, cpscm_u_res__45, cpscm__nil)); });
}
, cpscm_u_v__41, cpscm_u_i__44, cpscm__nil)); });
}
, cpscm_u_i__44, 1, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_i__44, 0, cpscm__nil)); });
}
), (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___498=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k493, g__ret_d___498, cpscm__nil, cpscm__nil)); });
}
, cpscm_u_n__42, 1, cpscm__nil))); });
}
, cpscm_u_v__41, cpscm__nil)); });
}
) (cpscm__list (g__k490, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmlist_d__r_vector = function (__args) {
var g__k512=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k515=__args.car; __args=__args.cdr;
var cpscm_u_n__42=__args.car; __args=__args.cdr;
var cpscm_u_v__43=__args.car; __args=__args.cdr;
var cpscm_u_loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlength) (cpscm__list (function (__args) {
var g__retlength__517=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_n__42 = g__retlength__517), (cpscm_u_v__43 = false), (cpscm_u_loop__44 = function (__args) {
var g__k524=__args.car; __args=__args.cdr;
var cpscm_u_i__45=__args.car; __args=__args.cdr;
var cpscm_u_l__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___526=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k524, g__ret_e___526, function (__args) {
var g__k528=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k528) (cpscm__list (cpscm_u_v__43, cpscm__nil)); });
}
, function (__args) {
var g__k530=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__532=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_set_b_) (cpscm__list (function (__args) {
var g__retvector_d_set_b___531=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___534=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__535=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__44) (cpscm__list (g__k530, g__ret_2b___534, g__retcdr__535, cpscm__nil)); });
}
, cpscm_u_l__46, cpscm__nil)); });
}
, cpscm_u_i__45, 1, cpscm__nil)); });
}
, cpscm_u_v__43, cpscm_u_i__45, g__retcar__532, cpscm__nil)); });
}
, cpscm_u_l__46, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_i__45, cpscm_u_n__42, cpscm__nil)); });
}
), (cpscmmake_d_vector) (cpscm__list (function (__args) {
var g__retmake_d_vector__521=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_v__43 = g__retmake_d_vector__521), (cpscm_u_loop__44) (cpscm__list (g__k515, 0, cpscm_u_l__41, cpscm__nil))); });
}
, cpscm_u_n__42, cpscm__nil))); });
}
, cpscm_u_l__41, cpscm__nil)); });
}
) (cpscm__list (g__k512, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmvector = function (__args) {
var g__k537=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmlist_d__r_vector) (cpscm__list (g__k537, cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmvector_d_fill_b_ = function (__args) {
var g__k540=__args.car; __args=__args.cdr;
var cpscm_u_v__41=__args.car; __args=__args.cdr;
var cpscm_u_x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k543=__args.car; __args=__args.cdr;
var cpscm_u_n__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_length) (cpscm__list (function (__args) {
var g__retvector_d_length__545=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_n__43 = g__retvector_d_length__545), (function (__args) {
var g__k549=__args.car; __args=__args.cdr;
var cpscm_u_loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__44 = function (__args) {
var g__k552=__args.car; __args=__args.cdr;
var cpscm_u_i__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___554=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k552, g__ret_e___554, function (__args) {
var g__k556=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k556) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k558=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_set_b_) (cpscm__list (function (__args) {
var g__retvector_d_set_b___559=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___561=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__44) (cpscm__list (g__k558, g__ret_2b___561, cpscm__nil)); });
}
, cpscm_u_i__45, 1, cpscm__nil)); });
}
, cpscm_u_v__41, cpscm_u_i__45, cpscm_u_x__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_i__45, cpscm_u_n__43, cpscm__nil)); });
}
), (g__k549) (cpscm__list (cpscm_u_loop__44, cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__547=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__547) (cpscm__list (g__k543, 0, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil))); });
}
, cpscm_u_v__41, cpscm__nil)); });
}
) (cpscm__list (g__k540, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmstring = function (__args) {
var g__k563=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmlist_d__r_string) (cpscm__list (g__k563, cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmstring_d_fill_b_ = function (__args) {
var g__k566=__args.car; __args=__args.cdr;
var cpscm_u_v__41=__args.car; __args=__args.cdr;
var cpscm_u_x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k569=__args.car; __args=__args.cdr;
var cpscm_u_n__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_length) (cpscm__list (function (__args) {
var g__retstring_d_length__571=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_n__43 = g__retstring_d_length__571), (function (__args) {
var g__k575=__args.car; __args=__args.cdr;
var cpscm_u_loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__44 = function (__args) {
var g__k578=__args.car; __args=__args.cdr;
var cpscm_u_i__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___580=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k578, g__ret_e___580, function (__args) {
var g__k582=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k582) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k584=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_set_b_) (cpscm__list (function (__args) {
var g__retstring_d_set_b___585=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___587=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__44) (cpscm__list (g__k584, g__ret_2b___587, cpscm__nil)); });
}
, cpscm_u_i__45, 1, cpscm__nil)); });
}
, cpscm_u_v__41, cpscm_u_i__45, cpscm_u_x__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_i__45, cpscm_u_n__43, cpscm__nil)); });
}
), (g__k575) (cpscm__list (cpscm_u_loop__44, cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__573=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__573) (cpscm__list (g__k569, 0, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil))); });
}
, cpscm_u_v__41, cpscm__nil)); });
}
) (cpscm__list (g__k566, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmstring_d__r_list = function (__args) {
var g__k589=__args.car; __args=__args.cdr;
var cpscm_u_s__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k595=__args.car; __args=__args.cdr;
var cpscm_u_loop__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__42 = function (__args) {
var g__k598=__args.car; __args=__args.cdr;
var cpscm_u_i__43=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___600=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k598, g__ret_e___600, function (__args) {
var g__k602=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k602) (cpscm__list (cpscm_u_l__44, cpscm__nil)); });
}
, function (__args) {
var g__k604=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___606=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_ref) (cpscm__list (function (__args) {
var g__retstring_d_ref__608=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__607=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__42) (cpscm__list (g__k604, g__ret_d___606, g__retcons__607, cpscm__nil)); });
}
, g__retstring_d_ref__608, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm_u_s__41, cpscm_u_i__43, cpscm__nil)); });
}
, cpscm_u_i__43, 1, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_i__43, -1, cpscm__nil)); });
}
), (g__k595) (cpscm__list (cpscm_u_loop__42, cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__591=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_length) (cpscm__list (function (__args) {
var g__retstring_d_length__593=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___592=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__591) (cpscm__list (g__k589, g__ret_d___592, cpscm__nil, cpscm__nil)); });
}
, g__retstring_d_length__593, 1, cpscm__nil)); });
}
, cpscm_u_s__41, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmstring_d_copy = function (__args) {
var g__k610=__args.car; __args=__args.cdr;
var cpscm_u_s__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_length) (cpscm__list (function (__args) {
var g__retstring_d_length__612=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmsubstring) (cpscm__list (g__k610, cpscm_u_s__41, 0, g__retstring_d_length__612, cpscm__nil)); });
}
, cpscm_u_s__41, cpscm__nil)); });
}
;
var cpscmcall_w_cc = cpscmcall_d_with_d_current_d_continuation;
var cpscmwrite_d_char = cpscmdisplay;
var cpscmwith_d_output_d_to_d_port = function (__args) {
var g__k614=__args.car; __args=__args.cdr;
var cpscm_u_p__41=__args.car; __args=__args.cdr;
var cpscm_u_thunk__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__616=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k618=__args.car; __args=__args.cdr;
var cpscm_u_oldp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__619=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_thunk__42) (cpscm__list (function (__args) {
var g__ret__thunk__42__621=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k623=__args.car; __args=__args.cdr;
var cpscm_u_res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__624=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k623) (cpscm__list (cpscm_u_res__44, cpscm__nil)); });
}
, cpscm_u_oldp__43, cpscm__nil)); });
}
) (cpscm__list (g__k618, g__ret__thunk__42__621, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_p__41, cpscm__nil)); });
}
) (cpscm__list (g__k614, g__retcurrent_d_output_d_port__616, cpscm__nil)); });
}
, cpscm__nil)); });
}
;
var cpscm_x_make_d_promise = function (__args) {
var g__k626=__args.car; __args=__args.cdr;
var cpscm_u_proc__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k629=__args.car; __args=__args.cdr;
var cpscm_u_result_d_ready_p___42=__args.car; __args=__args.cdr;
var cpscm_u_result__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k629) (cpscm__list (function (__args) {
var g__k631=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k631, cpscm_u_result_d_ready_p___42, function (__args) {
var g__k634=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k634) (cpscm__list (cpscm_u_result__43, cpscm__nil)); });
}
, function (__args) {
var g__k636=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_proc__41) (cpscm__list (function (__args) {
var g__ret__proc__41__638=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k640=__args.car; __args=__args.cdr;
var cpscm_u_x__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k640, cpscm_u_result_d_ready_p___42, function (__args) {
var g__k643=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k643) (cpscm__list (cpscm_u_result__43, cpscm__nil)); });
}
, function (__args) {
var g__k645=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_result_d_ready_p___42 = true), (cpscm_u_result__43 = cpscm_u_x__44), (g__k645) (cpscm__list (cpscm_u_result__43, cpscm__nil))); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k636, g__ret__proc__41__638, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k626, false, false, cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k649=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist) (cpscm__list (function (__args) {
var g__retlist__651=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k649) (cpscm__list ((cpscm__vals_d_marker = g__retlist__651), cpscm__nil)); });
}
, cpscm__sym ("values"), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var cpscmx=__args.car; __args=__args.cdr;
return cpscmx;
}
, cpscm__nil)));

var cpscm__pack_d_vals = function (__args) {
var g__k653=__args.car; __args=__args.cdr;
var cpscm_u_things__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___656=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k658=__args.car; __args=__args.cdr;
var cpscm_u_x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k658, cpscm_u_x__42, function (__args) {
var g__k661=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k661) (cpscm__list (cpscm_u_x__42, cpscm__nil)); });
}
, function (__args) {
var g__k663=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__666=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___665=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (g__k663, g__retnull_p___665, cpscm__nil)); });
}
, g__retcdr__666, cpscm__nil)); });
}
, cpscm_u_things__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__655=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k653, g__655, function (__args) {
var g__k668=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (g__k668, cpscm__vals_d_marker, cpscm_u_things__41, cpscm__nil)); });
}
, function (__args) {
var g__k671=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k671, cpscm_u_things__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
, g__retnull_p___656, cpscm__nil)); });
}
, cpscm_u_things__41, cpscm__nil)); });
}
;
var cpscm__unpack_d_vals = function (__args) {
var g__k674=__args.car; __args=__args.cdr;
var cpscm_u_vals__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmpair_p_) (cpscm__list (function (__args) {
var g__retpair_p___677=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (function (__args) {
var g__ret_x_boolean_d_combinator__676=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k674, g__ret_x_boolean_d_combinator__676, function (__args) {
var g__k679=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k679, cpscm_u_vals__41, cpscm__nil)); });
}
, function (__args) {
var g__k682=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist) (cpscm__list (g__k682, cpscm_u_vals__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
, g__retpair_p___677, function (__args) {
var g__k685=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__687=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmeq_p_) (cpscm__list (g__k685, g__retcar__687, cpscm__vals_d_marker, cpscm__nil)); });
}
, cpscm_u_vals__41, cpscm__nil)); });
}
, function (__args) {
var g__k689=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k689) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_vals__41, cpscm__nil)); });
}
;
var cpscm__switch_d_winders = function (__args) {
var g__k691=__args.car; __args=__args.cdr;
var cpscm_u_ccwinders__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k694=__args.car; __args=__args.cdr;
var cpscm_u_switch__42=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_switch__42 = function (__args) {
var g__k734=__args.car; __args=__args.cdr;
var cpscm_u_a__44=__args.car; __args=__args.cdr;
var cpscm_u_b__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k737=__args.car; __args=__args.cdr;
var cpscm_u_run_d_all__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_run_d_all__46 = function (__args) {
var g__k745=__args.car; __args=__args.cdr;
var cpscm_u_to_d_apply__47=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___747=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k745, g__retnull_p___747, function (__args) {
var g__k749=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k749) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k751=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__753=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__retcar__753) (cpscm__list (function (__args) {
var g__retapply__752=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__755=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_run_d_all__46) (cpscm__list (g__k751, g__retcdr__755, cpscm__nil)); });
}
, cpscm_u_to_d_apply__47, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_to_d_apply__47, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_to_d_apply__47, cpscm__nil)); });
}
), (cpscmmap) (cpscm__list (function (__args) {
var g__retmap__741=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmap) (cpscm__list (function (__args) {
var g__retmap__742=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmappend_d_reverse_b_) (cpscm__list (function (__args) {
var g__retappend_d_reverse_b___740=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_run_d_all__46) (cpscm__list (function (__args) {
var g__ret__run_d_all__46__739=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k737) (cpscm__list ((cpscm__winders = cpscm_u_ccwinders__41), cpscm__nil)); });
}
, g__retappend_d_reverse_b___740, cpscm__nil)); });
}
, g__retmap__741, g__retmap__742, cpscm__nil)); });
}
, cpscmcar, cpscm_u_b__45, cpscm__nil)); });
}
, cpscmcdr, cpscm_u_a__44, cpscm__nil))); });
}
) (cpscm__list (g__k734, cpscm__sym ("undefined"), cpscm__nil)); });
}
), (cpscm_u_loop__43 = function (__args) {
var g__k701=__args.car; __args=__args.cdr;
var cpscm_u_a__44=__args.car; __args=__args.cdr;
var cpscm_u_b__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___704=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k706=__args.car; __args=__args.cdr;
var cpscm_u_x__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k706, cpscm_u_x__46, function (__args) {
var g__k709=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k709) (cpscm__list (cpscm_u_x__46, cpscm__nil)); });
}
, function (__args) {
var g__k711=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___713=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k715=__args.car; __args=__args.cdr;
var cpscm_u_x__47=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k715, cpscm_u_x__47, function (__args) {
var g__k718=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k718) (cpscm__list (cpscm_u_x__47, cpscm__nil)); });
}
, function (__args) {
var g__k720=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__723=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__724=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmeq_p_) (cpscm__list (function (__args) {
var g__reteq_p___722=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (g__k720, g__reteq_p___722, cpscm__nil)); });
}
, g__retcar__723, g__retcar__724, cpscm__nil)); });
}
, cpscm_u_b__45, cpscm__nil)); });
}
, cpscm_u_a__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k711, g__retnull_p___713, cpscm__nil)); });
}
, cpscm_u_b__45, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__703=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k701, g__703, function (__args) {
var g__k726=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_switch__42) (cpscm__list (g__k726, cpscm_u_a__44, cpscm_u_b__45, cpscm__nil)); });
}
, function (__args) {
var g__k729=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__731=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__732=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k729, g__retcdr__731, g__retcdr__732, cpscm__nil)); });
}
, cpscm_u_b__45, cpscm__nil)); });
}
, cpscm_u_a__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
, g__retnull_p___704, cpscm__nil)); });
}
, cpscm_u_a__44, cpscm__nil)); });
}
), (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__698=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__699=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k694, g__retreverse__698, g__retreverse__699, cpscm__nil)); });
}
, cpscm_u_ccwinders__41, cpscm__nil)); });
}
, cpscm__winders, cpscm__nil))); });
}
) (cpscm__list (g__k691, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmdynamic_d_wind = function (__args) {
var g__k757=__args.car; __args=__args.cdr;
var cpscm_u_before__41=__args.car; __args=__args.cdr;
var cpscm_u_thunk__42=__args.car; __args=__args.cdr;
var cpscm_u_after__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k760=__args.car; __args=__args.cdr;
var cpscm_u_result__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_result__44 = false), (cpscm_u_before__41) (cpscm__list (function (__args) {
var g__ret__before__41__762=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__765=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__764=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__winders = g__retcons__764), (cpscm_u_thunk__42) (cpscm__list (function (__args) {
var g__ret__thunk__42__767=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_result__44 = g__ret__thunk__42__767), (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__769=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__winders = g__retcdr__769), (cpscm_u_after__43) (cpscm__list (function (__args) {
var g__ret__after__43__770=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k760) (cpscm__list (cpscm_u_result__44, cpscm__nil)); });
}
, cpscm__nil))); });
}
, cpscm__winders, cpscm__nil))); });
}
, cpscm__nil))); });
}
, g__retcons__765, cpscm__winders, cpscm__nil)); });
}
, cpscm_u_before__41, cpscm_u_after__43, cpscm__nil)); });
}
, cpscm__nil))); });
}
) (cpscm__list (g__k757, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmwith_d_failure_d_continuation = function (__args) {
var g__k772=__args.car; __args=__args.cdr;
var cpscm_u_hnd__41=__args.car; __args=__args.cdr;
var cpscm_u_thunk__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k775=__args.car; __args=__args.cdr;
var cpscm_u_old_d_hnd__43=__args.car; __args=__args.cdr;
var cpscm_u_new_d_hnd__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__777=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_old_d_hnd__43 = g__retcurrent_d_error_d_handler__777), (cpscm_u_new_d_hnd__44 = function (__args) {
var g__k782=__args.car; __args=__args.cdr;
var cpscm_u_e__45=__args.car; __args=__args.cdr;
var cpscm_u_ek__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__783=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_hnd__41) (cpscm__list (g__k782, cpscm_u_e__45, cpscm_u_ek__46, cpscm__nil)); });
}
, cpscm_u_old_d_hnd__43, cpscm__nil)); });
}
), (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__779=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_thunk__42) (cpscm__list (g__k775, cpscm__nil)); });
}
, cpscm_u_new_d_hnd__44, cpscm__nil))); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k772, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmwith_w_fc = cpscmwith_d_failure_d_continuation;
var cpscm__default_d_err_d_hnd = function (__args) {
var g__k786=__args.car; __args=__args.cdr;
var cpscm_u_e__41=__args.car; __args=__args.cdr;
var cpscm_u_ek__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmdisplay) (cpscm__list (function (__args) {
var g__retdisplay__787=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmdisplay) (cpscm__list (function (__args) {
var g__retdisplay__788=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnewline) (cpscm__list (g__k786, cpscm__nil)); });
}
, cpscm_u_e__41, cpscm__nil)); });
}
, "Error: ", cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k791=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k791) (cpscm__list ((cpscm__err_d_hnd = cpscm__default_d_err_d_hnd), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var cpscmx=__args.car; __args=__args.cdr;
return cpscmx;
}
, cpscm__nil)));

var cpscmcurrent_d_error_d_handler = function (__args) {
var g__k794=__args.car; __args=__args.cdr;
var cpscm_u_hnd__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___796=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k794, g__retnull_p___796, function (__args) {
var g__k798=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k798) (cpscm__list (cpscm__err_d_hnd, cpscm__nil)); });
}
, function (__args) {
var g__k800=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__802=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k800) (cpscm__list ((cpscm__err_d_hnd = g__retcar__802), cpscm__nil)); });
}
, cpscm_u_hnd__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_hnd__41, cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k804=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (g__k804, function (__args) {
var g__k807=__args.car; __args=__args.cdr;
var cpscm_u_exit__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_values) (cpscm__list (g__k807, function (__args) {
var g__k810=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (g__k810, function (__args) {
var g__k813=__args.car; __args=__args.cdr;
var cpscm_u_cc__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__err_d_cont = cpscm_u_cc__42), (cpscm_u_exit__41) (cpscm__list (g__k813, true, cpscm__nil))); });
}
, cpscm__nil)); });
}
, function (__args) {
var g__k817=__args.car; __args=__args.cdr;
var cpscm_u_e__42=__args.car; __args=__args.cdr;
var cpscm_u_ek__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__819=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__retcurrent_d_error_d_handler__819) (cpscm__list (g__k817, cpscm_u_e__42, cpscm_u_ek__43, cpscm__nil)); });
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
var g__k821=__args.car; __args=__args.cdr;
var cpscm_u_e__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (g__k821, function (__args) {
var g__k824=__args.car; __args=__args.cdr;
var cpscm_u_ek__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__err_d_cont) (cpscm__list (g__k824, cpscm_u_e__41, cpscm_u_ek__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
;
