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
var cpscmreal_d_part = function (__args) {
var g__k161=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k161) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmimag_d_part = function (__args) {
var g__k163=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k163) (cpscm__list (0, cpscm__nil)); });
}
;
var cpscmmagnitude = function (__args) {
var g__k165=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k165) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmangle = function (__args) {
var g__k167=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k167) (cpscm__list (0, cpscm__nil)); });
}
;
var cpscmexpt = function (__args) {
var g__k169=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_y__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlog) (cpscm__list (function (__args) {
var g__retlog__172=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2a_) (cpscm__list (function (__args) {
var g__ret_2a___171=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmexp) (cpscm__list (g__k169, g__ret_2a___171, cpscm__nil)); });
}
, cpscm_u_y__42, g__retlog__172, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm__nil)); });
}
;
var cpscmchar_d_numeric_p_ = function (__args) {
var g__k174=__args.car; __args=__args.cdr;
var cpscm_u_c__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (function (__args) {
var g__retchar_l__e__p___176=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k174, g__retchar_l__e__p___176, function (__args) {
var g__k178=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (g__k178, cpscm_u_c__41, (cpscm__char (57)), cpscm__nil)); });
}
, function (__args) {
var g__k181=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k181) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
, (cpscm__char (48)), cpscm_u_c__41, cpscm__nil)); });
}
;
var cpscmchar_d_upper_d_case_p_ = function (__args) {
var g__k183=__args.car; __args=__args.cdr;
var cpscm_u_c__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (function (__args) {
var g__retchar_l__e__p___185=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k183, g__retchar_l__e__p___185, function (__args) {
var g__k187=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (g__k187, cpscm_u_c__41, (cpscm__char (90)), cpscm__nil)); });
}
, function (__args) {
var g__k190=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k190) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
, (cpscm__char (65)), cpscm_u_c__41, cpscm__nil)); });
}
;
var cpscmchar_d_lower_d_case_p_ = function (__args) {
var g__k192=__args.car; __args=__args.cdr;
var cpscm_u_c__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (function (__args) {
var g__retchar_l__e__p___194=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k192, g__retchar_l__e__p___194, function (__args) {
var g__k196=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (g__k196, cpscm_u_c__41, (cpscm__char (122)), cpscm__nil)); });
}
, function (__args) {
var g__k199=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k199) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
, (cpscm__char (97)), cpscm_u_c__41, cpscm__nil)); });
}
;
var cpscmchar_d_alphabetic_p_ = function (__args) {
var g__k201=__args.car; __args=__args.cdr;
var cpscm_u_c__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upper_d_case_p_) (cpscm__list (function (__args) {
var g__retchar_d_upper_d_case_p___203=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k201, g__retchar_d_upper_d_case_p___203, function (__args) {
var g__k205=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_lower_d_case_p_) (cpscm__list (g__k205, cpscm_u_c__41, cpscm__nil)); });
}
, function (__args) {
var g__k208=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k208) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_c__41, cpscm__nil)); });
}
;
var cpscmchar_d_ci_l__p_ = function (__args) {
var g__k210=__args.car; __args=__args.cdr;
var cpscm_u_c1__41=__args.car; __args=__args.cdr;
var cpscm_u_c2__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__212=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__213=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__p_) (cpscm__list (g__k210, g__retchar_d_upcase__212, g__retchar_d_upcase__213, cpscm__nil)); });
}
, cpscm_u_c2__42, cpscm__nil)); });
}
, cpscm_u_c1__41, cpscm__nil)); });
}
;
var cpscmchar_d_ci_l__e__p_ = function (__args) {
var g__k215=__args.car; __args=__args.cdr;
var cpscm_u_c1__41=__args.car; __args=__args.cdr;
var cpscm_u_c2__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__217=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__218=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_l__e__p_) (cpscm__list (g__k215, g__retchar_d_upcase__217, g__retchar_d_upcase__218, cpscm__nil)); });
}
, cpscm_u_c2__42, cpscm__nil)); });
}
, cpscm_u_c1__41, cpscm__nil)); });
}
;
var cpscmchar_d_ci_r__p_ = function (__args) {
var g__k220=__args.car; __args=__args.cdr;
var cpscm_u_c1__41=__args.car; __args=__args.cdr;
var cpscm_u_c2__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__222=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__223=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_r__p_) (cpscm__list (g__k220, g__retchar_d_upcase__222, g__retchar_d_upcase__223, cpscm__nil)); });
}
, cpscm_u_c2__42, cpscm__nil)); });
}
, cpscm_u_c1__41, cpscm__nil)); });
}
;
var cpscmchar_d_ci_r__e__p_ = function (__args) {
var g__k225=__args.car; __args=__args.cdr;
var cpscm_u_c1__41=__args.car; __args=__args.cdr;
var cpscm_u_c2__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__227=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__228=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_r__e__p_) (cpscm__list (g__k225, g__retchar_d_upcase__227, g__retchar_d_upcase__228, cpscm__nil)); });
}
, cpscm_u_c2__42, cpscm__nil)); });
}
, cpscm_u_c1__41, cpscm__nil)); });
}
;
var cpscmchar_d_ci_e__p_ = function (__args) {
var g__k230=__args.car; __args=__args.cdr;
var cpscm_u_c1__41=__args.car; __args=__args.cdr;
var cpscm_u_c2__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__232=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_d_upcase) (cpscm__list (function (__args) {
var g__retchar_d_upcase__233=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmchar_e__p_) (cpscm__list (g__k230, g__retchar_d_upcase__232, g__retchar_d_upcase__233, cpscm__nil)); });
}
, cpscm_u_c2__42, cpscm__nil)); });
}
, cpscm_u_c1__41, cpscm__nil)); });
}
;
var cpscmlist = function (__args) {
var g__k235=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args;
return new cpscm__Trampoline (function () {
return (g__k235) (cpscm__list (cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmlength = function (__args) {
var g__k237=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k240=__args.car; __args=__args.cdr;
var cpscm_u_loop__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__42 = function (__args) {
var g__k244=__args.car; __args=__args.cdr;
var cpscm_u_l__43=__args.car; __args=__args.cdr;
var cpscm_u_res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___246=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k244, g__retnull_p___246, function (__args) {
var g__k248=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k248) (cpscm__list (cpscm_u_res__44, cpscm__nil)); });
}
, function (__args) {
var g__k250=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__252=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___253=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__42) (cpscm__list (g__k250, g__retcdr__252, g__ret_2b___253, cpscm__nil)); });
}
, cpscm_u_res__44, 1, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
), (cpscm_u_loop__42) (cpscm__list (g__k240, cpscm_u_l__41, 0, cpscm__nil))); });
}
) (cpscm__list (g__k237, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmlist_p_ = function (__args) {
var g__k255=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___257=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k255, g__retnull_p___257, function (__args) {
var g__k259=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k259) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k261=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmpair_p_) (cpscm__list (function (__args) {
var g__retpair_p___263=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k261, g__retpair_p___263, function (__args) {
var g__k265=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__267=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_p_) (cpscm__list (g__k265, g__retcdr__267, cpscm__nil)); });
}
, cpscm_u_l__41, cpscm__nil)); });
}
, function (__args) {
var g__k269=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k269) (cpscm__list (false, cpscm__nil)); });
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
var g__k271=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_k__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmzero_p_) (cpscm__list (function (__args) {
var g__retzero_p___273=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k271, g__retzero_p___273, function (__args) {
var g__k275=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k275) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
, function (__args) {
var g__k277=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__279=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___280=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_d_tail) (cpscm__list (g__k277, g__retcdr__279, g__ret_d___280, cpscm__nil)); });
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
var g__k282=__args.car; __args=__args.cdr;
var cpscm_u_list__41=__args.car; __args=__args.cdr;
var cpscm_u_k__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_d_tail) (cpscm__list (function (__args) {
var g__retlist_d_tail__284=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k282, g__retlist_d_tail__284, cpscm__nil)); });
}
, cpscmx, cpscm_u_k__42, cpscm__nil)); });
}
;
var cpscmreverse = function (__args) {
var g__k286=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k289=__args.car; __args=__args.cdr;
var cpscm_u_loop__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__42 = function (__args) {
var g__k293=__args.car; __args=__args.cdr;
var cpscm_u_l__43=__args.car; __args=__args.cdr;
var cpscm_u_res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___295=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k293, g__retnull_p___295, function (__args) {
var g__k297=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k297) (cpscm__list (cpscm_u_res__44, cpscm__nil)); });
}
, function (__args) {
var g__k299=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__301=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__303=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__302=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__42) (cpscm__list (g__k299, g__retcdr__301, g__retcons__302, cpscm__nil)); });
}
, g__retcar__303, cpscm_u_res__44, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__43, cpscm__nil)); });
}
), (cpscm_u_loop__42) (cpscm__list (g__k289, cpscm_u_l__41, cpscm__nil, cpscm__nil))); });
}
) (cpscm__list (g__k286, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmappend = function (__args) {
var g__k305=__args.car; __args=__args.cdr;
var cpscm_u_ls__41=__args;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k308=__args.car; __args=__args.cdr;
var cpscm_u_spill__42=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_spill__42 = function (__args) {
var g__k326=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
var cpscm_u_res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___328=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k326, g__retnull_p___328, function (__args) {
var g__k330=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k330) (cpscm__list (cpscm_u_res__45, cpscm__nil)); });
}
, function (__args) {
var g__k332=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__334=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__336=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__335=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_spill__42) (cpscm__list (g__k332, g__retcdr__334, g__retcons__335, cpscm__nil)); });
}
, g__retcar__336, cpscm_u_res__45, cpscm__nil)); });
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
var g__k313=__args.car; __args=__args.cdr;
var cpscm_u_ls__44=__args.car; __args=__args.cdr;
var cpscm_u_res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___315=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k313, g__retnull_p___315, function (__args) {
var g__k317=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse_b_) (cpscm__list (g__k317, cpscm_u_res__45, cpscm__nil)); });
}
, function (__args) {
var g__k320=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__322=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__324=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_spill__42) (cpscm__list (function (__args) {
var g__ret__spill__42__323=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k320, g__retcdr__322, g__ret__spill__42__323, cpscm__nil)); });
}
, g__retcar__324, cpscm_u_res__45, cpscm__nil)); });
}
, cpscm_u_ls__44, cpscm__nil)); });
}
, cpscm_u_ls__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_ls__44, cpscm__nil)); });
}
), (cpscm_u_loop__43) (cpscm__list (g__k308, cpscm_u_ls__41, cpscm__nil, cpscm__nil))); });
}
) (cpscm__list (g__k305, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmappend_b_ = cpscmappend;
var cpscmappend_d_reverse = function (__args) {
var g__k338=__args.car; __args=__args.cdr;
var cpscm_u_rev_d_head__41=__args.car; __args=__args.cdr;
var cpscm_u_tail__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__340=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmappend) (cpscm__list (g__k338, g__retreverse__340, cpscm_u_tail__42, cpscm__nil)); });
}
, cpscm_u_rev_d_head__41, cpscm__nil)); });
}
;
var cpscmappend_d_reverse_b_ = cpscmappend_d_reverse;
var cpscmreverse_b_ = function (__args) {
var g__k342=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (g__k342, cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmfind_d_tail = function (__args) {
var g__k345=__args.car; __args=__args.cdr;
var cpscm_u_pred__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k348=__args.car; __args=__args.cdr;
var cpscm_u_lp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_lp__43 = function (__args) {
var g__k352=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___355=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (function (__args) {
var g__retnot__354=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k352, g__retnot__354, function (__args) {
var g__k357=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__360=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_pred__41) (cpscm__list (function (__args) {
var g__ret__pred__41__359=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k357, g__ret__pred__41__359, function (__args) {
var g__k362=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k362) (cpscm__list (cpscm_u_l__44, cpscm__nil)); });
}
, function (__args) {
var g__k364=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__366=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_lp__43) (cpscm__list (g__k364, g__retcdr__366, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
, g__retcar__360, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, function (__args) {
var g__k368=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k368) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
, g__retnull_p___355, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
), (cpscm_u_lp__43) (cpscm__list (g__k348, cpscm_u_l__42, cpscm__nil))); });
}
) (cpscm__list (g__k345, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmfind = function (__args) {
var g__k370=__args.car; __args=__args.cdr;
var cpscm_u_pred__41=__args.car; __args=__args.cdr;
var cpscm_u_list__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind_d_tail) (cpscm__list (function (__args) {
var g__retfind_d_tail__372=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k374=__args.car; __args=__args.cdr;
var cpscm_u_tmp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k374, cpscm_u_tmp__43, function (__args) {
var g__k377=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k377, cpscm_u_tmp__43, cpscm__nil)); });
}
, function (__args) {
var g__k380=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k380) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k370, g__retfind_d_tail__372, cpscm__nil)); });
}
, cpscm_u_pred__41, cpscm_u_list__42, cpscm__nil)); });
}
;
var cpscmmap = function (__args) {
var g__k382=__args.car; __args=__args.cdr;
var cpscm_u_f__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k385=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__43 = function (__args) {
var g__k389=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
var cpscm_u_res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___391=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k389, g__retnull_p___391, function (__args) {
var g__k393=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse_b_) (cpscm__list (g__k393, cpscm_u_res__45, cpscm__nil)); });
}
, function (__args) {
var g__k396=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__398=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__401=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_f__41) (cpscm__list (function (__args) {
var g__ret__f__41__400=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__399=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k396, g__retcdr__398, g__retcons__399, cpscm__nil)); });
}
, g__ret__f__41__400, cpscm_u_res__45, cpscm__nil)); });
}
, g__retcar__401, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
), (cpscm_u_loop__43) (cpscm__list (g__k385, cpscm_u_l__42, cpscm__nil, cpscm__nil))); });
}
) (cpscm__list (g__k382, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmfor_d_each = function (__args) {
var g__k403=__args.car; __args=__args.cdr;
var cpscm_u_f__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k406=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__43 = function (__args) {
var g__k410=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___412=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k410, g__retnull_p___412, function (__args) {
var g__k414=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k414) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k416=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__418=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_f__41) (cpscm__list (function (__args) {
var g__ret__f__41__417=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__420=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k416, g__retcdr__420, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, g__retcar__418, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__44, cpscm__nil)); });
}
), (cpscm_u_loop__43) (cpscm__list (g__k406, cpscm_u_l__42, cpscm__nil))); });
}
) (cpscm__list (g__k403, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmassoc = function (__args) {
var g__k422=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_lis__42=__args.car; __args=__args.cdr;
var cpscm_u_maybe_d__e___43=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___425=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (function (__args) {
var g__ret_x_boolean_d_combinator__424=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k427=__args.car; __args=__args.cdr;
var cpscm_u_e__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind) (cpscm__list (g__k427, function (__args) {
var g__k430=__args.car; __args=__args.cdr;
var cpscm_u_entry__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__432=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_e__44) (cpscm__list (g__k430, cpscm_u_x__41, g__retcar__432, cpscm__nil)); });
}
, cpscm_u_entry__45, cpscm__nil)); });
}
, cpscm_u_lis__42, cpscm__nil)); });
}
) (cpscm__list (g__k422, g__ret_x_boolean_d_combinator__424, cpscm__nil)); });
}
, g__retnull_p___425, function (__args) {
var g__k434=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k434) (cpscm__list (cpscmequal_p_, cpscm__nil)); });
}
, function (__args) {
var g__k436=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k436, cpscm_u_maybe_d__e___43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_maybe_d__e___43, cpscm__nil)); });
}
;
var cpscmassq = function (__args) {
var g__k439=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmassoc) (cpscm__list (g__k439, cpscm_u_x__41, cpscm_u_l__42, cpscmeq_p_, cpscm__nil)); });
}
;
var cpscmassv = function (__args) {
var g__k442=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmassoc) (cpscm__list (g__k442, cpscm_u_x__41, cpscm_u_l__42, cpscmeqv_p_, cpscm__nil)); });
}
;
var cpscmmember = function (__args) {
var g__k445=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_lis__42=__args.car; __args=__args.cdr;
var cpscm_u_maybe_d__e___43=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___448=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (function (__args) {
var g__ret_x_boolean_d_combinator__447=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k450=__args.car; __args=__args.cdr;
var cpscm_u_e__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind_d_tail) (cpscm__list (g__k450, function (__args) {
var g__k453=__args.car; __args=__args.cdr;
var cpscm_u_y__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_e__44) (cpscm__list (g__k453, cpscm_u_x__41, cpscm_u_y__45, cpscm__nil)); });
}
, cpscm_u_lis__42, cpscm__nil)); });
}
) (cpscm__list (g__k445, g__ret_x_boolean_d_combinator__447, cpscm__nil)); });
}
, g__retnull_p___448, function (__args) {
var g__k456=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k456) (cpscm__list (cpscmequal_p_, cpscm__nil)); });
}
, function (__args) {
var g__k458=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k458, cpscm_u_maybe_d__e___43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_maybe_d__e___43, cpscm__nil)); });
}
;
var cpscmmemq = function (__args) {
var g__k461=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmember) (cpscm__list (g__k461, cpscm_u_x__41, cpscm_u_l__42, cpscmeq_p_, cpscm__nil)); });
}
;
var cpscmmemv = function (__args) {
var g__k464=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmember) (cpscm__list (g__k464, cpscm_u_x__41, cpscm_u_l__42, cpscmeqv_p_, cpscm__nil)); });
}
;
var cpscmmax = function (__args) {
var g__k467=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___469=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k467, g__retnull_p___469, function (__args) {
var g__k471=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k471) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
, function (__args) {
var g__k473=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__475=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k477=__args.car; __args=__args.cdr;
var cpscm_u_y__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_r_) (cpscm__list (function (__args) {
var g__ret_r___480=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (function (__args) {
var g__ret_x_boolean_d_combinator__479=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__481=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmapply) (cpscm__list (g__k477, cpscmmax, g__ret_x_boolean_d_combinator__479, g__retcdr__481, cpscm__nil)); });
}
, cpscm_u_l__42, cpscm__nil)); });
}
, g__ret_r___480, function (__args) {
var g__k483=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k483) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
, function (__args) {
var g__k485=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k485) (cpscm__list (cpscm_u_y__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm_u_y__43, cpscm__nil)); });
}
) (cpscm__list (g__k473, g__retcar__475, cpscm__nil)); });
}
, cpscm_u_l__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__42, cpscm__nil)); });
}
;
var cpscmmin = function (__args) {
var g__k487=__args.car; __args=__args.cdr;
var cpscm_u_x__41=__args.car; __args=__args.cdr;
var cpscm_u_l__42=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___489=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k487, g__retnull_p___489, function (__args) {
var g__k491=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k491) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
, function (__args) {
var g__k493=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__495=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k497=__args.car; __args=__args.cdr;
var cpscm_u_y__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_l_) (cpscm__list (function (__args) {
var g__ret_l___500=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (function (__args) {
var g__ret_x_boolean_d_combinator__499=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__501=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmapply) (cpscm__list (g__k497, cpscmmax, g__ret_x_boolean_d_combinator__499, g__retcdr__501, cpscm__nil)); });
}
, cpscm_u_l__42, cpscm__nil)); });
}
, g__ret_l___500, function (__args) {
var g__k503=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k503) (cpscm__list (cpscm_u_x__41, cpscm__nil)); });
}
, function (__args) {
var g__k505=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k505) (cpscm__list (cpscm_u_y__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_x__41, cpscm_u_y__43, cpscm__nil)); });
}
) (cpscm__list (g__k493, g__retcar__495, cpscm__nil)); });
}
, cpscm_u_l__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_l__42, cpscm__nil)); });
}
;
var cpscmvector_d__r_list = function (__args) {
var g__k507=__args.car; __args=__args.cdr;
var cpscm_u_v__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k510=__args.car; __args=__args.cdr;
var cpscm_u_n__42=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_length) (cpscm__list (function (__args) {
var g__retvector_d_length__512=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_n__42 = g__retvector_d_length__512), (cpscm_u_loop__43 = function (__args) {
var g__k517=__args.car; __args=__args.cdr;
var cpscm_u_i__44=__args.car; __args=__args.cdr;
var cpscm_u_res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_l_) (cpscm__list (function (__args) {
var g__ret_l___519=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k517, g__ret_l___519, function (__args) {
var g__k521=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k521) (cpscm__list (cpscm_u_res__45, cpscm__nil)); });
}
, function (__args) {
var g__k523=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___525=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_ref) (cpscm__list (function (__args) {
var g__retvector_d_ref__527=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__526=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k523, g__ret_d___525, g__retcons__526, cpscm__nil)); });
}
, g__retvector_d_ref__527, cpscm_u_res__45, cpscm__nil)); });
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
var g__ret_d___515=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k510, g__ret_d___515, cpscm__nil, cpscm__nil)); });
}
, cpscm_u_n__42, 1, cpscm__nil))); });
}
, cpscm_u_v__41, cpscm__nil)); });
}
) (cpscm__list (g__k507, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmlist_d__r_vector = function (__args) {
var g__k529=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k532=__args.car; __args=__args.cdr;
var cpscm_u_n__42=__args.car; __args=__args.cdr;
var cpscm_u_v__43=__args.car; __args=__args.cdr;
var cpscm_u_loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlength) (cpscm__list (function (__args) {
var g__retlength__534=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_n__42 = g__retlength__534), (cpscm_u_v__43 = false), (cpscm_u_loop__44 = function (__args) {
var g__k541=__args.car; __args=__args.cdr;
var cpscm_u_i__45=__args.car; __args=__args.cdr;
var cpscm_u_l__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___543=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k541, g__ret_e___543, function (__args) {
var g__k545=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k545) (cpscm__list (cpscm_u_v__43, cpscm__nil)); });
}
, function (__args) {
var g__k547=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__549=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_set_b_) (cpscm__list (function (__args) {
var g__retvector_d_set_b___548=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___551=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__552=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__44) (cpscm__list (g__k547, g__ret_2b___551, g__retcdr__552, cpscm__nil)); });
}
, cpscm_u_l__46, cpscm__nil)); });
}
, cpscm_u_i__45, 1, cpscm__nil)); });
}
, cpscm_u_v__43, cpscm_u_i__45, g__retcar__549, cpscm__nil)); });
}
, cpscm_u_l__46, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_i__45, cpscm_u_n__42, cpscm__nil)); });
}
), (cpscmmake_d_vector) (cpscm__list (function (__args) {
var g__retmake_d_vector__538=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_v__43 = g__retmake_d_vector__538), (cpscm_u_loop__44) (cpscm__list (g__k532, 0, cpscm_u_l__41, cpscm__nil))); });
}
, cpscm_u_n__42, cpscm__nil))); });
}
, cpscm_u_l__41, cpscm__nil)); });
}
) (cpscm__list (g__k529, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmvector = function (__args) {
var g__k554=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmlist_d__r_vector) (cpscm__list (g__k554, cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmvector_d_fill_b_ = function (__args) {
var g__k557=__args.car; __args=__args.cdr;
var cpscm_u_v__41=__args.car; __args=__args.cdr;
var cpscm_u_x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k560=__args.car; __args=__args.cdr;
var cpscm_u_n__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_length) (cpscm__list (function (__args) {
var g__retvector_d_length__562=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_n__43 = g__retvector_d_length__562), (function (__args) {
var g__k566=__args.car; __args=__args.cdr;
var cpscm_u_loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__44 = function (__args) {
var g__k569=__args.car; __args=__args.cdr;
var cpscm_u_i__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___571=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k569, g__ret_e___571, function (__args) {
var g__k573=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k573) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k575=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_set_b_) (cpscm__list (function (__args) {
var g__retvector_d_set_b___576=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___578=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__44) (cpscm__list (g__k575, g__ret_2b___578, cpscm__nil)); });
}
, cpscm_u_i__45, 1, cpscm__nil)); });
}
, cpscm_u_v__41, cpscm_u_i__45, cpscm_u_x__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_i__45, cpscm_u_n__43, cpscm__nil)); });
}
), (g__k566) (cpscm__list (cpscm_u_loop__44, cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__564=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__564) (cpscm__list (g__k560, 0, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil))); });
}
, cpscm_u_v__41, cpscm__nil)); });
}
) (cpscm__list (g__k557, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmstring = function (__args) {
var g__k580=__args.car; __args=__args.cdr;
var cpscm_u_l__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmlist_d__r_string) (cpscm__list (g__k580, cpscm_u_l__41, cpscm__nil)); });
}
;
var cpscmstring_d_fill_b_ = function (__args) {
var g__k583=__args.car; __args=__args.cdr;
var cpscm_u_v__41=__args.car; __args=__args.cdr;
var cpscm_u_x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k586=__args.car; __args=__args.cdr;
var cpscm_u_n__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_length) (cpscm__list (function (__args) {
var g__retstring_d_length__588=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_n__43 = g__retstring_d_length__588), (function (__args) {
var g__k592=__args.car; __args=__args.cdr;
var cpscm_u_loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__44 = function (__args) {
var g__k595=__args.car; __args=__args.cdr;
var cpscm_u_i__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___597=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k595, g__ret_e___597, function (__args) {
var g__k599=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k599) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k601=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_set_b_) (cpscm__list (function (__args) {
var g__retstring_d_set_b___602=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___604=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__44) (cpscm__list (g__k601, g__ret_2b___604, cpscm__nil)); });
}
, cpscm_u_i__45, 1, cpscm__nil)); });
}
, cpscm_u_v__41, cpscm_u_i__45, cpscm_u_x__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_i__45, cpscm_u_n__43, cpscm__nil)); });
}
), (g__k592) (cpscm__list (cpscm_u_loop__44, cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__590=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__590) (cpscm__list (g__k586, 0, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil))); });
}
, cpscm_u_v__41, cpscm__nil)); });
}
) (cpscm__list (g__k583, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmstring_d__r_list = function (__args) {
var g__k606=__args.car; __args=__args.cdr;
var cpscm_u_s__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k612=__args.car; __args=__args.cdr;
var cpscm_u_loop__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_loop__42 = function (__args) {
var g__k615=__args.car; __args=__args.cdr;
var cpscm_u_i__43=__args.car; __args=__args.cdr;
var cpscm_u_l__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___617=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k615, g__ret_e___617, function (__args) {
var g__k619=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k619) (cpscm__list (cpscm_u_l__44, cpscm__nil)); });
}
, function (__args) {
var g__k621=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___623=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_ref) (cpscm__list (function (__args) {
var g__retstring_d_ref__625=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__624=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__42) (cpscm__list (g__k621, g__ret_d___623, g__retcons__624, cpscm__nil)); });
}
, g__retstring_d_ref__625, cpscm_u_l__44, cpscm__nil)); });
}
, cpscm_u_s__41, cpscm_u_i__43, cpscm__nil)); });
}
, cpscm_u_i__43, 1, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_i__43, -1, cpscm__nil)); });
}
), (g__k612) (cpscm__list (cpscm_u_loop__42, cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__608=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_length) (cpscm__list (function (__args) {
var g__retstring_d_length__610=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___609=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__608) (cpscm__list (g__k606, g__ret_d___609, cpscm__nil, cpscm__nil)); });
}
, g__retstring_d_length__610, 1, cpscm__nil)); });
}
, cpscm_u_s__41, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmstring_d_copy = function (__args) {
var g__k627=__args.car; __args=__args.cdr;
var cpscm_u_s__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_length) (cpscm__list (function (__args) {
var g__retstring_d_length__629=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmsubstring) (cpscm__list (g__k627, cpscm_u_s__41, 0, g__retstring_d_length__629, cpscm__nil)); });
}
, cpscm_u_s__41, cpscm__nil)); });
}
;
var cpscmcall_w_cc = cpscmcall_d_with_d_current_d_continuation;
var cpscmwrite_d_char = cpscmdisplay;
var cpscmwith_d_output_d_to_d_port = function (__args) {
var g__k631=__args.car; __args=__args.cdr;
var cpscm_u_p__41=__args.car; __args=__args.cdr;
var cpscm_u_thunk__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__633=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k635=__args.car; __args=__args.cdr;
var cpscm_u_oldp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__636=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_thunk__42) (cpscm__list (function (__args) {
var g__ret__thunk__42__638=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k640=__args.car; __args=__args.cdr;
var cpscm_u_res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__641=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k640) (cpscm__list (cpscm_u_res__44, cpscm__nil)); });
}
, cpscm_u_oldp__43, cpscm__nil)); });
}
) (cpscm__list (g__k635, g__ret__thunk__42__638, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_p__41, cpscm__nil)); });
}
) (cpscm__list (g__k631, g__retcurrent_d_output_d_port__633, cpscm__nil)); });
}
, cpscm__nil)); });
}
;
var cpscm_x_make_d_promise = function (__args) {
var g__k643=__args.car; __args=__args.cdr;
var cpscm_u_proc__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k646=__args.car; __args=__args.cdr;
var cpscm_u_result_d_ready_p___42=__args.car; __args=__args.cdr;
var cpscm_u_result__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k646) (cpscm__list (function (__args) {
var g__k648=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k648, cpscm_u_result_d_ready_p___42, function (__args) {
var g__k651=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k651) (cpscm__list (cpscm_u_result__43, cpscm__nil)); });
}
, function (__args) {
var g__k653=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_proc__41) (cpscm__list (function (__args) {
var g__ret__proc__41__655=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k657=__args.car; __args=__args.cdr;
var cpscm_u_x__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k657, cpscm_u_result_d_ready_p___42, function (__args) {
var g__k660=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k660) (cpscm__list (cpscm_u_result__43, cpscm__nil)); });
}
, function (__args) {
var g__k662=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_result_d_ready_p___42 = true), (cpscm_u_result__43 = cpscm_u_x__44), (g__k662) (cpscm__list (cpscm_u_result__43, cpscm__nil))); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k653, g__ret__proc__41__655, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k643, false, false, cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k666=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist) (cpscm__list (function (__args) {
var g__retlist__668=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k666) (cpscm__list ((cpscm__vals_d_marker = g__retlist__668), cpscm__nil)); });
}
, cpscm__sym ("values"), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var cpscmx=__args.car; __args=__args.cdr;
return cpscmx;
}
, cpscm__nil)));

var cpscm__pack_d_vals = function (__args) {
var g__k670=__args.car; __args=__args.cdr;
var cpscm_u_things__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___673=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k675=__args.car; __args=__args.cdr;
var cpscm_u_x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k675, cpscm_u_x__42, function (__args) {
var g__k678=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k678) (cpscm__list (cpscm_u_x__42, cpscm__nil)); });
}
, function (__args) {
var g__k680=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__683=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___682=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (g__k680, g__retnull_p___682, cpscm__nil)); });
}
, g__retcdr__683, cpscm__nil)); });
}
, cpscm_u_things__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__672=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k670, g__672, function (__args) {
var g__k685=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (g__k685, cpscm__vals_d_marker, cpscm_u_things__41, cpscm__nil)); });
}
, function (__args) {
var g__k688=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k688, cpscm_u_things__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
, g__retnull_p___673, cpscm__nil)); });
}
, cpscm_u_things__41, cpscm__nil)); });
}
;
var cpscm__unpack_d_vals = function (__args) {
var g__k691=__args.car; __args=__args.cdr;
var cpscm_u_vals__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmpair_p_) (cpscm__list (function (__args) {
var g__retpair_p___694=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (function (__args) {
var g__ret_x_boolean_d_combinator__693=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k691, g__ret_x_boolean_d_combinator__693, function (__args) {
var g__k696=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k696, cpscm_u_vals__41, cpscm__nil)); });
}
, function (__args) {
var g__k699=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist) (cpscm__list (g__k699, cpscm_u_vals__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
, g__retpair_p___694, function (__args) {
var g__k702=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__704=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmeq_p_) (cpscm__list (g__k702, g__retcar__704, cpscm__vals_d_marker, cpscm__nil)); });
}
, cpscm_u_vals__41, cpscm__nil)); });
}
, function (__args) {
var g__k706=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k706) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_vals__41, cpscm__nil)); });
}
;
var cpscm__switch_d_winders = function (__args) {
var g__k708=__args.car; __args=__args.cdr;
var cpscm_u_ccwinders__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k711=__args.car; __args=__args.cdr;
var cpscm_u_switch__42=__args.car; __args=__args.cdr;
var cpscm_u_loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_switch__42 = function (__args) {
var g__k751=__args.car; __args=__args.cdr;
var cpscm_u_a__44=__args.car; __args=__args.cdr;
var cpscm_u_b__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k754=__args.car; __args=__args.cdr;
var cpscm_u_run_d_all__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_run_d_all__46 = function (__args) {
var g__k762=__args.car; __args=__args.cdr;
var cpscm_u_to_d_apply__47=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___764=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k762, g__retnull_p___764, function (__args) {
var g__k766=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k766) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k768=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__770=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__retcar__770) (cpscm__list (function (__args) {
var g__retapply__769=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__772=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_run_d_all__46) (cpscm__list (g__k768, g__retcdr__772, cpscm__nil)); });
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
var g__retmap__758=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmap) (cpscm__list (function (__args) {
var g__retmap__759=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmappend_d_reverse_b_) (cpscm__list (function (__args) {
var g__retappend_d_reverse_b___757=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_run_d_all__46) (cpscm__list (function (__args) {
var g__ret__run_d_all__46__756=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k754) (cpscm__list ((cpscm__winders = cpscm_u_ccwinders__41), cpscm__nil)); });
}
, g__retappend_d_reverse_b___757, cpscm__nil)); });
}
, g__retmap__758, g__retmap__759, cpscm__nil)); });
}
, cpscmcar, cpscm_u_b__45, cpscm__nil)); });
}
, cpscmcdr, cpscm_u_a__44, cpscm__nil))); });
}
) (cpscm__list (g__k751, cpscm__sym ("undefined"), cpscm__nil)); });
}
), (cpscm_u_loop__43 = function (__args) {
var g__k718=__args.car; __args=__args.cdr;
var cpscm_u_a__44=__args.car; __args=__args.cdr;
var cpscm_u_b__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___721=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k723=__args.car; __args=__args.cdr;
var cpscm_u_x__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k723, cpscm_u_x__46, function (__args) {
var g__k726=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k726) (cpscm__list (cpscm_u_x__46, cpscm__nil)); });
}
, function (__args) {
var g__k728=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___730=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k732=__args.car; __args=__args.cdr;
var cpscm_u_x__47=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k732, cpscm_u_x__47, function (__args) {
var g__k735=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k735) (cpscm__list (cpscm_u_x__47, cpscm__nil)); });
}
, function (__args) {
var g__k737=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__740=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__741=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmeq_p_) (cpscm__list (function (__args) {
var g__reteq_p___739=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (g__k737, g__reteq_p___739, cpscm__nil)); });
}
, g__retcar__740, g__retcar__741, cpscm__nil)); });
}
, cpscm_u_b__45, cpscm__nil)); });
}
, cpscm_u_a__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k728, g__retnull_p___730, cpscm__nil)); });
}
, cpscm_u_b__45, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__720=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k718, g__720, function (__args) {
var g__k743=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_switch__42) (cpscm__list (g__k743, cpscm_u_a__44, cpscm_u_b__45, cpscm__nil)); });
}
, function (__args) {
var g__k746=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__748=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__749=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k746, g__retcdr__748, g__retcdr__749, cpscm__nil)); });
}
, cpscm_u_b__45, cpscm__nil)); });
}
, cpscm_u_a__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
, g__retnull_p___721, cpscm__nil)); });
}
, cpscm_u_a__44, cpscm__nil)); });
}
), (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__715=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__716=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_loop__43) (cpscm__list (g__k711, g__retreverse__715, g__retreverse__716, cpscm__nil)); });
}
, cpscm_u_ccwinders__41, cpscm__nil)); });
}
, cpscm__winders, cpscm__nil))); });
}
) (cpscm__list (g__k708, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmdynamic_d_wind = function (__args) {
var g__k774=__args.car; __args=__args.cdr;
var cpscm_u_before__41=__args.car; __args=__args.cdr;
var cpscm_u_thunk__42=__args.car; __args=__args.cdr;
var cpscm_u_after__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k777=__args.car; __args=__args.cdr;
var cpscm_u_result__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_result__44 = false), (cpscm_u_before__41) (cpscm__list (function (__args) {
var g__ret__before__41__779=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__782=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__781=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__winders = g__retcons__781), (cpscm_u_thunk__42) (cpscm__list (function (__args) {
var g__ret__thunk__42__784=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_result__44 = g__ret__thunk__42__784), (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__786=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__winders = g__retcdr__786), (cpscm_u_after__43) (cpscm__list (function (__args) {
var g__ret__after__43__787=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k777) (cpscm__list (cpscm_u_result__44, cpscm__nil)); });
}
, cpscm__nil))); });
}
, cpscm__winders, cpscm__nil))); });
}
, cpscm__nil))); });
}
, g__retcons__782, cpscm__winders, cpscm__nil)); });
}
, cpscm_u_before__41, cpscm_u_after__43, cpscm__nil)); });
}
, cpscm__nil))); });
}
) (cpscm__list (g__k774, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmwith_d_failure_d_continuation = function (__args) {
var g__k789=__args.car; __args=__args.cdr;
var cpscm_u_hnd__41=__args.car; __args=__args.cdr;
var cpscm_u_thunk__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k792=__args.car; __args=__args.cdr;
var cpscm_u_old_d_hnd__43=__args.car; __args=__args.cdr;
var cpscm_u_new_d_hnd__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__794=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm_u_old_d_hnd__43 = g__retcurrent_d_error_d_handler__794), (cpscm_u_new_d_hnd__44 = function (__args) {
var g__k799=__args.car; __args=__args.cdr;
var cpscm_u_e__45=__args.car; __args=__args.cdr;
var cpscm_u_ek__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__800=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_hnd__41) (cpscm__list (g__k799, cpscm_u_e__45, cpscm_u_ek__46, cpscm__nil)); });
}
, cpscm_u_old_d_hnd__43, cpscm__nil)); });
}
), (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__796=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_u_thunk__42) (cpscm__list (g__k792, cpscm__nil)); });
}
, cpscm_u_new_d_hnd__44, cpscm__nil))); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k789, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmwith_w_fc = cpscmwith_d_failure_d_continuation;
var cpscm__default_d_err_d_hnd = function (__args) {
var g__k803=__args.car; __args=__args.cdr;
var cpscm_u_e__41=__args.car; __args=__args.cdr;
var cpscm_u_ek__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmdisplay) (cpscm__list (function (__args) {
var g__retdisplay__804=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmdisplay) (cpscm__list (function (__args) {
var g__retdisplay__805=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnewline) (cpscm__list (g__k803, cpscm__nil)); });
}
, cpscm_u_e__41, cpscm__nil)); });
}
, "Error: ", cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k808=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k808) (cpscm__list ((cpscm__err_d_hnd = cpscm__default_d_err_d_hnd), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var cpscmx=__args.car; __args=__args.cdr;
return cpscmx;
}
, cpscm__nil)));

var cpscmcurrent_d_error_d_handler = function (__args) {
var g__k811=__args.car; __args=__args.cdr;
var cpscm_u_hnd__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___813=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_x_boolean_d_combinator) (cpscm__list (g__k811, g__retnull_p___813, function (__args) {
var g__k815=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k815) (cpscm__list (cpscm__err_d_hnd, cpscm__nil)); });
}
, function (__args) {
var g__k817=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__819=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k817) (cpscm__list ((cpscm__err_d_hnd = g__retcar__819), cpscm__nil)); });
}
, cpscm_u_hnd__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm_u_hnd__41, cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k821=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (g__k821, function (__args) {
var g__k824=__args.car; __args=__args.cdr;
var cpscm_u_exit__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_values) (cpscm__list (g__k824, function (__args) {
var g__k827=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (g__k827, function (__args) {
var g__k830=__args.car; __args=__args.cdr;
var cpscm_u_cc__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__err_d_cont = cpscm_u_cc__42), (cpscm_u_exit__41) (cpscm__list (g__k830, true, cpscm__nil))); });
}
, cpscm__nil)); });
}
, function (__args) {
var g__k834=__args.car; __args=__args.cdr;
var cpscm_u_e__42=__args.car; __args=__args.cdr;
var cpscm_u_ek__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__836=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__retcurrent_d_error_d_handler__836) (cpscm__list (g__k834, cpscm_u_e__42, cpscm_u_ek__43, cpscm__nil)); });
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
var g__k838=__args.car; __args=__args.cdr;
var cpscm_u_e__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (g__k838, function (__args) {
var g__k841=__args.car; __args=__args.cdr;
var cpscm_u_ek__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__err_d_cont) (cpscm__list (g__k841, cpscm_u_e__41, cpscm_u_ek__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
;
