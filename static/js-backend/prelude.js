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
var g____ccwinders7=__args.car; __args=__args.cdr;
return (cpscmccwinders = g____ccwinders7);
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
var g__k8=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__10=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k8, g__retcar__10, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcadr = function (__args) {
var g__k12=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__14=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k12, g__retcdr__14, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdar = function (__args) {
var g__k16=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__18=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k16, g__retcar__18, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcddr = function (__args) {
var g__k20=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__22=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k20, g__retcdr__22, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaaar = function (__args) {
var g__k24=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__27=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__26=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k24, g__retcar__26, cpscm__nil)); });
}
, g__retcar__27, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaadr = function (__args) {
var g__k29=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__32=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__31=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k29, g__retcar__31, cpscm__nil)); });
}
, g__retcdr__32, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcadar = function (__args) {
var g__k34=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__37=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__36=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k34, g__retcdr__36, cpscm__nil)); });
}
, g__retcar__37, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaddr = function (__args) {
var g__k39=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k39, g__retcdr__41, cpscm__nil)); });
}
, g__retcdr__42, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdaar = function (__args) {
var g__k44=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__47=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k44, g__retcar__46, cpscm__nil)); });
}
, g__retcar__47, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdadr = function (__args) {
var g__k49=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__52=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__51=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k49, g__retcar__51, cpscm__nil)); });
}
, g__retcdr__52, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcddar = function (__args) {
var g__k54=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__57=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__56=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k54, g__retcdr__56, cpscm__nil)); });
}
, g__retcar__57, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdddr = function (__args) {
var g__k59=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__62=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__61=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k59, g__retcdr__61, cpscm__nil)); });
}
, g__retcdr__62, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaaaar = function (__args) {
var g__k64=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__68=__args.car; __args=__args.cdr;
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
, g__retcar__68, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaaadr = function (__args) {
var g__k70=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__74=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__73=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__72=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k70, g__retcar__72, cpscm__nil)); });
}
, g__retcar__73, cpscm__nil)); });
}
, g__retcdr__74, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaadar = function (__args) {
var g__k76=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__80=__args.car; __args=__args.cdr;
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
, g__retcar__80, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaaddr = function (__args) {
var g__k82=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__86=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__85=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__84=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k82, g__retcar__84, cpscm__nil)); });
}
, g__retcdr__85, cpscm__nil)); });
}
, g__retcdr__86, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcadaar = function (__args) {
var g__k88=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__92=__args.car; __args=__args.cdr;
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
, g__retcar__92, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcadadr = function (__args) {
var g__k94=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__98=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__97=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__96=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k94, g__retcdr__96, cpscm__nil)); });
}
, g__retcar__97, cpscm__nil)); });
}
, g__retcdr__98, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcaddar = function (__args) {
var g__k100=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__104=__args.car; __args=__args.cdr;
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
, g__retcar__104, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcadddr = function (__args) {
var g__k106=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__110=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__109=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__108=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k106, g__retcdr__108, cpscm__nil)); });
}
, g__retcdr__109, cpscm__nil)); });
}
, g__retcdr__110, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdaaar = function (__args) {
var g__k112=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__116=__args.car; __args=__args.cdr;
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
, g__retcar__116, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdaadr = function (__args) {
var g__k118=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__122=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__121=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__120=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k118, g__retcar__120, cpscm__nil)); });
}
, g__retcar__121, cpscm__nil)); });
}
, g__retcdr__122, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdadar = function (__args) {
var g__k124=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__128=__args.car; __args=__args.cdr;
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
, g__retcar__128, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdaddr = function (__args) {
var g__k130=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__134=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__133=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__132=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k130, g__retcar__132, cpscm__nil)); });
}
, g__retcdr__133, cpscm__nil)); });
}
, g__retcdr__134, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcddaar = function (__args) {
var g__k136=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__140=__args.car; __args=__args.cdr;
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
, g__retcar__140, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcddadr = function (__args) {
var g__k142=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__146=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__145=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__144=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k142, g__retcdr__144, cpscm__nil)); });
}
, g__retcar__145, cpscm__nil)); });
}
, g__retcdr__146, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcdddar = function (__args) {
var g__k148=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__152=__args.car; __args=__args.cdr;
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
, g__retcar__152, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmcddddr = function (__args) {
var g__k154=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__158=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__157=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__156=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k154, g__retcdr__156, cpscm__nil)); });
}
, g__retcdr__157, cpscm__nil)); });
}
, g__retcdr__158, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
;
var cpscmnot = function (__args) {
var g__k160=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__162=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__162) (cpscm__list (g__k160, function (__args) {
var g__k164=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k164) (cpscm__list (false, cpscm__nil)); });
}
, function (__args) {
var g__k166=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k166) (cpscm__list (true, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__x__41, cpscm__nil)), cpscm__nil)); });
}
;
var cpscmlist = function (__args) {
var g__k168=__args.car; __args=__args.cdr;
var cpscm__l__41=__args;
return new cpscm__Trampoline (function () {
return (g__k168) (cpscm__list (cpscm__l__41, cpscm__nil)); });
}
;
var cpscmlength = function (__args) {
var g__k170=__args.car; __args=__args.cdr;
var cpscm__l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k173=__args.car; __args=__args.cdr;
var cpscm__loop__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k177=__args.car; __args=__args.cdr;
var cpscm__loop__42__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k177) (cpscm__list ((cpscm__loop__42 = cpscm__loop__42__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__174=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__42) (cpscm__list (g__k173, cpscm__l__41, 0, cpscm__nil)); });
}
, function (__args) {
var g__k180=__args.car; __args=__args.cdr;
var cpscm__l__43=__args.car; __args=__args.cdr;
var cpscm__res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___183=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__182=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__182) (cpscm__list (g__k180, function (__args) {
var g__k185=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k185) (cpscm__list (cpscm__res__44, cpscm__nil)); });
}
, function (__args) {
var g__k187=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__189=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___190=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__42) (cpscm__list (g__k187, g__retcdr__189, g__ret_2b___190, cpscm__nil)); });
}
, cpscm__res__44, 1, cpscm__nil)); });
}
, cpscm__l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___183, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k170, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmlist_p_ = function (__args) {
var g__k192=__args.car; __args=__args.cdr;
var cpscm__l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___195=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__194=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__194) (cpscm__list (g__k192, function (__args) {
var g__k197=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k197) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k199=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmpair_p_) (cpscm__list (function (__args) {
var g__retpair_p___202=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__201=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__201) (cpscm__list (g__k199, function (__args) {
var g__k204=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__206=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_p_) (cpscm__list (g__k204, g__retcdr__206, cpscm__nil)); });
}
, cpscm__l__41, cpscm__nil)); });
}
, function (__args) {
var g__k208=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k208) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retpair_p___202, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___195, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__41, cpscm__nil)); });
}
;
var cpscmlist_d_tail = function (__args) {
var g__k210=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__k__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmzero_p_) (cpscm__list (function (__args) {
var g__retzero_p___213=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__212=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__212) (cpscm__list (g__k210, function (__args) {
var g__k215=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k215) (cpscm__list (cpscm__x__41, cpscm__nil)); });
}
, function (__args) {
var g__k217=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__219=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___220=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_d_tail) (cpscm__list (g__k217, g__retcdr__219, g__ret_d___220, cpscm__nil)); });
}
, cpscm__k__42, 1, cpscm__nil)); });
}
, cpscm__x__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retzero_p___213, cpscm__nil)), cpscm__nil)); });
}
, cpscm__k__42, cpscm__nil)); });
}
;
var cpscmlist_d_ref = function (__args) {
var g__k222=__args.car; __args=__args.cdr;
var cpscm__list__41=__args.car; __args=__args.cdr;
var cpscm__k__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist_d_tail) (cpscm__list (function (__args) {
var g__retlist_d_tail__224=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k222, g__retlist_d_tail__224, cpscm__nil)); });
}
, cpscmx, cpscm__k__42, cpscm__nil)); });
}
;
var cpscmreverse = function (__args) {
var g__k226=__args.car; __args=__args.cdr;
var cpscm__l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k229=__args.car; __args=__args.cdr;
var cpscm__loop__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k233=__args.car; __args=__args.cdr;
var cpscm__loop__42__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k233) (cpscm__list ((cpscm__loop__42 = cpscm__loop__42__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__230=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__42) (cpscm__list (g__k229, cpscm__l__41, cpscm__nil, cpscm__nil)); });
}
, function (__args) {
var g__k236=__args.car; __args=__args.cdr;
var cpscm__l__43=__args.car; __args=__args.cdr;
var cpscm__res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___239=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__238=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__238) (cpscm__list (g__k236, function (__args) {
var g__k241=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k241) (cpscm__list (cpscm__res__44, cpscm__nil)); });
}
, function (__args) {
var g__k243=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__245=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__247=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__246=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__42) (cpscm__list (g__k243, g__retcdr__245, g__retcons__246, cpscm__nil)); });
}
, g__retcar__247, cpscm__res__44, cpscm__nil)); });
}
, cpscm__l__43, cpscm__nil)); });
}
, cpscm__l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___239, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k226, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmappend = function (__args) {
var g__k249=__args.car; __args=__args.cdr;
var cpscm__ls__41=__args;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k252=__args.car; __args=__args.cdr;
var cpscm__spill__42=__args.car; __args=__args.cdr;
var cpscm__loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k256=__args.car; __args=__args.cdr;
var cpscm__spill__42__tmp=__args.car; __args=__args.cdr;
var cpscm__loop__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__spill__42 = cpscm__spill__42__tmp), (g__k256) (cpscm__list ((cpscm__loop__43 = cpscm__loop__43__tmp), cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__253=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (g__k252, cpscm__ls__41, cpscm__nil, cpscm__nil)); });
}
, function (__args) {
var g__k260=__args.car; __args=__args.cdr;
var cpscm__l__44=__args.car; __args=__args.cdr;
var cpscm__res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___263=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__262=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__262) (cpscm__list (g__k260, function (__args) {
var g__k265=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k265) (cpscm__list (cpscm__res__45, cpscm__nil)); });
}
, function (__args) {
var g__k267=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__269=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__271=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__270=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__spill__42) (cpscm__list (g__k267, g__retcdr__269, g__retcons__270, cpscm__nil)); });
}
, g__retcar__271, cpscm__res__45, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___263, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, function (__args) {
var g__k273=__args.car; __args=__args.cdr;
var cpscm__ls__44=__args.car; __args=__args.cdr;
var cpscm__res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___276=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__275=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__275) (cpscm__list (g__k273, function (__args) {
var g__k278=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse_b_) (cpscm__list (g__k278, cpscm__res__45, cpscm__nil)); });
}
, function (__args) {
var g__k281=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__283=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__285=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__spill__42) (cpscm__list (function (__args) {
var g__ret__spill__42__284=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (g__k281, g__retcdr__283, g__ret__spill__42__284, cpscm__nil)); });
}
, g__retcar__285, cpscm__res__45, cpscm__nil)); });
}
, cpscm__ls__44, cpscm__nil)); });
}
, cpscm__ls__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___276, cpscm__nil)), cpscm__nil)); });
}
, cpscm__ls__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k249, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmappend_b_ = cpscmappend;
var cpscmappend_d_reverse = function (__args) {
var g__k287=__args.car; __args=__args.cdr;
var cpscm__rev_d_head__41=__args.car; __args=__args.cdr;
var cpscm__tail__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__289=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmappend) (cpscm__list (g__k287, g__retreverse__289, cpscm__tail__42, cpscm__nil)); });
}
, cpscm__rev_d_head__41, cpscm__nil)); });
}
;
var cpscmappend_d_reverse_b_ = cpscmappend_d_reverse;
var cpscmreverse_b_ = function (__args) {
var g__k291=__args.car; __args=__args.cdr;
var cpscm__l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (g__k291, cpscm__l__41, cpscm__nil)); });
}
;
var cpscmfind_d_tail = function (__args) {
var g__k294=__args.car; __args=__args.cdr;
var cpscm__pred__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k297=__args.car; __args=__args.cdr;
var cpscm__lp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k301=__args.car; __args=__args.cdr;
var cpscm__lp__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k301) (cpscm__list ((cpscm__lp__43 = cpscm__lp__43__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__298=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__lp__43) (cpscm__list (g__k297, cpscm__l__42, cpscm__nil)); });
}
, function (__args) {
var g__k304=__args.car; __args=__args.cdr;
var cpscm__l__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___308=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (function (__args) {
var g__retnot__307=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__306=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__306) (cpscm__list (g__k304, function (__args) {
var g__k310=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__314=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__pred__41) (cpscm__list (function (__args) {
var g__ret__pred__41__313=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__312=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__312) (cpscm__list (g__k310, function (__args) {
var g__k316=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k316) (cpscm__list (cpscm__l__44, cpscm__nil)); });
}
, function (__args) {
var g__k318=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__320=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__lp__43) (cpscm__list (g__k318, g__retcdr__320, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret__pred__41__313, cpscm__nil)), cpscm__nil)); });
}
, g__retcar__314, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, function (__args) {
var g__k322=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k322) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnot__307, cpscm__nil)), cpscm__nil)); });
}
, g__retnull_p___308, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k294, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmfind = function (__args) {
var g__k324=__args.car; __args=__args.cdr;
var cpscm__pred__41=__args.car; __args=__args.cdr;
var cpscm__list__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind_d_tail) (cpscm__list (function (__args) {
var g__retfind_d_tail__326=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k328=__args.car; __args=__args.cdr;
var cpscm__tmp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__330=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__330) (cpscm__list (g__k328, function (__args) {
var g__k332=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k332, cpscm__tmp__43, cpscm__nil)); });
}
, function (__args) {
var g__k335=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k335) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__tmp__43, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (g__k324, g__retfind_d_tail__326, cpscm__nil)); });
}
, cpscm__pred__41, cpscm__list__42, cpscm__nil)); });
}
;
var cpscmmap = function (__args) {
var g__k337=__args.car; __args=__args.cdr;
var cpscm__f__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k340=__args.car; __args=__args.cdr;
var cpscm__loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k344=__args.car; __args=__args.cdr;
var cpscm__loop__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k344) (cpscm__list ((cpscm__loop__43 = cpscm__loop__43__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__341=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (g__k340, cpscm__l__42, cpscm__nil, cpscm__nil)); });
}
, function (__args) {
var g__k347=__args.car; __args=__args.cdr;
var cpscm__l__44=__args.car; __args=__args.cdr;
var cpscm__res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___350=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__349=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__349) (cpscm__list (g__k347, function (__args) {
var g__k352=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse_b_) (cpscm__list (g__k352, cpscm__res__45, cpscm__nil)); });
}
, function (__args) {
var g__k355=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__357=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__360=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__f__41) (cpscm__list (function (__args) {
var g__ret__f__41__359=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__358=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (g__k355, g__retcdr__357, g__retcons__358, cpscm__nil)); });
}
, g__ret__f__41__359, cpscm__res__45, cpscm__nil)); });
}
, g__retcar__360, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___350, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k337, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmfor_d_each = function (__args) {
var g__k362=__args.car; __args=__args.cdr;
var cpscm__f__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k365=__args.car; __args=__args.cdr;
var cpscm__loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k369=__args.car; __args=__args.cdr;
var cpscm__loop__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k369) (cpscm__list ((cpscm__loop__43 = cpscm__loop__43__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__366=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (g__k365, cpscm__l__42, cpscm__nil)); });
}
, function (__args) {
var g__k372=__args.car; __args=__args.cdr;
var cpscm__l__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___375=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__374=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__374) (cpscm__list (g__k372, function (__args) {
var g__k377=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k377) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k379=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__381=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__f__41) (cpscm__list (function (__args) {
var g__ret__f__41__380=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__383=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (g__k379, g__retcdr__383, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, g__retcar__381, cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___375, cpscm__nil)), cpscm__nil)); });
}
, cpscm__l__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k362, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmassoc = function (__args) {
var g__k385=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__lis__42=__args.car; __args=__args.cdr;
var cpscm__maybe_d__e___43=__args;
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
var cpscm__e__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind) (cpscm__list (g__k391, function (__args) {
var g__k394=__args.car; __args=__args.cdr;
var cpscm__entry__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__396=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__e__44) (cpscm__list (g__k394, cpscm__x__41, g__retcar__396, cpscm__nil)); });
}
, cpscm__entry__45, cpscm__nil)); });
}
, cpscm__lis__42, cpscm__nil)); });
}
) (cpscm__list (g__k385, g__retapply__387, cpscm__nil)); });
}
, function (__args) {
var g__k398=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k398) (cpscm__list (cpscmequal_p_, cpscm__nil)); });
}
, function (__args) {
var g__k400=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k400, cpscm__maybe_d__e___43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___389, cpscm__nil)), cpscm__nil)); });
}
, cpscm__maybe_d__e___43, cpscm__nil)); });
}
;
var cpscmassq = function (__args) {
var g__k403=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmassoc) (cpscm__list (g__k403, cpscm__x__41, cpscm__l__42, cpscmeq_p_, cpscm__nil)); });
}
;
var cpscmassv = function (__args) {
var g__k406=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmassoc) (cpscm__list (g__k406, cpscm__x__41, cpscm__l__42, cpscmeqv_p_, cpscm__nil)); });
}
;
var cpscmmember = function (__args) {
var g__k409=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__lis__42=__args.car; __args=__args.cdr;
var cpscm__maybe_d__e___43=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___413=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__412=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__412) (cpscm__list (function (__args) {
var g__retapply__411=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k415=__args.car; __args=__args.cdr;
var cpscm__e__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmfind_d_tail) (cpscm__list (g__k415, function (__args) {
var g__k418=__args.car; __args=__args.cdr;
var cpscm__y__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__e__44) (cpscm__list (g__k418, cpscm__x__41, cpscm__y__45, cpscm__nil)); });
}
, cpscm__lis__42, cpscm__nil)); });
}
) (cpscm__list (g__k409, g__retapply__411, cpscm__nil)); });
}
, function (__args) {
var g__k421=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k421) (cpscm__list (cpscmequal_p_, cpscm__nil)); });
}
, function (__args) {
var g__k423=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k423, cpscm__maybe_d__e___43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___413, cpscm__nil)), cpscm__nil)); });
}
, cpscm__maybe_d__e___43, cpscm__nil)); });
}
;
var cpscmmemq = function (__args) {
var g__k426=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmember) (cpscm__list (g__k426, cpscm__x__41, cpscm__l__42, cpscmeq_p_, cpscm__nil)); });
}
;
var cpscmmemv = function (__args) {
var g__k429=__args.car; __args=__args.cdr;
var cpscm__x__41=__args.car; __args=__args.cdr;
var cpscm__l__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmember) (cpscm__list (g__k429, cpscm__x__41, cpscm__l__42, cpscmeqv_p_, cpscm__nil)); });
}
;
var cpscmvector_d__r_list = function (__args) {
var g__k432=__args.car; __args=__args.cdr;
var cpscm__v__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k435=__args.car; __args=__args.cdr;
var cpscm__n__42=__args.car; __args=__args.cdr;
var cpscm__loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_length) (cpscm__list (function (__args) {
var g__retvector_d_length__437=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k441=__args.car; __args=__args.cdr;
var cpscm__n__42__tmp=__args.car; __args=__args.cdr;
var cpscm__loop__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__n__42 = cpscm__n__42__tmp), (g__k441) (cpscm__list ((cpscm__loop__43 = cpscm__loop__43__tmp), cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__436=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___439=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (g__k435, g__ret_d___439, cpscm__nil, cpscm__nil)); });
}
, cpscm__n__42, 1, cpscm__nil)); });
}
, g__retvector_d_length__437, function (__args) {
var g__k445=__args.car; __args=__args.cdr;
var cpscm__i__44=__args.car; __args=__args.cdr;
var cpscm__res__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_l_) (cpscm__list (function (__args) {
var g__ret_l___448=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__447=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__447) (cpscm__list (g__k445, function (__args) {
var g__k450=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k450) (cpscm__list (cpscm__res__45, cpscm__nil)); });
}
, function (__args) {
var g__k452=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_d_) (cpscm__list (function (__args) {
var g__ret_d___454=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_ref) (cpscm__list (function (__args) {
var g__retvector_d_ref__456=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__455=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (g__k452, g__ret_d___454, g__retcons__455, cpscm__nil)); });
}
, g__retvector_d_ref__456, cpscm__res__45, cpscm__nil)); });
}
, cpscm__v__41, cpscm__i__44, cpscm__nil)); });
}
, cpscm__i__44, 1, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret_l___448, cpscm__nil)), cpscm__nil)); });
}
, cpscm__i__44, 0, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__v__41, cpscm__nil)); });
}
) (cpscm__list (g__k432, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmlist_d__r_vector = function (__args) {
var g__k458=__args.car; __args=__args.cdr;
var cpscm__l__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k461=__args.car; __args=__args.cdr;
var cpscm__n__42=__args.car; __args=__args.cdr;
var cpscm__v__43=__args.car; __args=__args.cdr;
var cpscm__loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlength) (cpscm__list (function (__args) {
var g__retlength__463=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k468=__args.car; __args=__args.cdr;
var cpscm__n__42__tmp=__args.car; __args=__args.cdr;
var cpscm__loop__44__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__n__42 = cpscm__n__42__tmp), (cpscm__v__43 = false), (g__k468) (cpscm__list ((cpscm__loop__44 = cpscm__loop__44__tmp), cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__462=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmake_d_vector) (cpscm__list (function (__args) {
var g__retmake_d_vector__465=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__v__43 = g__retmake_d_vector__465), (cpscm__loop__44) (cpscm__list (g__k461, 0, cpscm__l__41, cpscm__nil))); });
}
, cpscm__n__42, cpscm__nil)); });
}
, g__retlength__463, function (__args) {
var g__k473=__args.car; __args=__args.cdr;
var cpscm__i__45=__args.car; __args=__args.cdr;
var cpscm__l__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___476=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__475=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__475) (cpscm__list (g__k473, function (__args) {
var g__k478=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k478) (cpscm__list (cpscm__v__43, cpscm__nil)); });
}
, function (__args) {
var g__k480=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__482=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_set_b_) (cpscm__list (function (__args) {
var g__retvector_d_set_b___481=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___484=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__485=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__44) (cpscm__list (g__k480, g__ret_2b___484, g__retcdr__485, cpscm__nil)); });
}
, cpscm__l__46, cpscm__nil)); });
}
, cpscm__i__45, 1, cpscm__nil)); });
}
, cpscm__v__43, cpscm__i__45, g__retcar__482, cpscm__nil)); });
}
, cpscm__l__46, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret_e___476, cpscm__nil)), cpscm__nil)); });
}
, cpscm__i__45, cpscm__n__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__l__41, cpscm__nil)); });
}
) (cpscm__list (g__k458, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmvector = function (__args) {
var g__k487=__args.car; __args=__args.cdr;
var cpscm__l__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmlist_d__r_vector) (cpscm__list (g__k487, cpscm__l__41, cpscm__nil)); });
}
;
var cpscmvector_d_fill_b_ = function (__args) {
var g__k490=__args.car; __args=__args.cdr;
var cpscm__v__41=__args.car; __args=__args.cdr;
var cpscm__x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k493=__args.car; __args=__args.cdr;
var cpscm__n__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_length) (cpscm__list (function (__args) {
var g__retvector_d_length__495=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k499=__args.car; __args=__args.cdr;
var cpscm__n__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k499) (cpscm__list ((cpscm__n__43 = cpscm__n__43__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__494=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k502=__args.car; __args=__args.cdr;
var cpscm__loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k505=__args.car; __args=__args.cdr;
var cpscm__loop__44__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k505) (cpscm__list ((cpscm__loop__44 = cpscm__loop__44__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__503=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k502) (cpscm__list (cpscm__loop__44, cpscm__nil)); });
}
, function (__args) {
var g__k508=__args.car; __args=__args.cdr;
var cpscm__i__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___511=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__510=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__510) (cpscm__list (g__k508, function (__args) {
var g__k513=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k513) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k515=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmvector_d_set_b_) (cpscm__list (function (__args) {
var g__retvector_d_set_b___516=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___518=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__44) (cpscm__list (g__k515, g__ret_2b___518, cpscm__nil)); });
}
, cpscm__i__45, 1, cpscm__nil)); });
}
, cpscm__v__41, cpscm__i__45, cpscm__x__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret_e___511, cpscm__nil)), cpscm__nil)); });
}
, cpscm__i__45, cpscm__n__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__497=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__497) (cpscm__list (g__k493, 0, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
, g__retvector_d_length__495, cpscm__nil)); });
}
, cpscm__v__41, cpscm__nil)); });
}
) (cpscm__list (g__k490, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmstring = function (__args) {
var g__k520=__args.car; __args=__args.cdr;
var cpscm__l__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmlist_d__r_string) (cpscm__list (g__k520, cpscm__l__41, cpscm__nil)); });
}
;
var cpscmstring_d_fill_b_ = function (__args) {
var g__k523=__args.car; __args=__args.cdr;
var cpscm__v__41=__args.car; __args=__args.cdr;
var cpscm__x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k526=__args.car; __args=__args.cdr;
var cpscm__n__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_length) (cpscm__list (function (__args) {
var g__retstring_d_length__528=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k532=__args.car; __args=__args.cdr;
var cpscm__n__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k532) (cpscm__list ((cpscm__n__43 = cpscm__n__43__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__527=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k535=__args.car; __args=__args.cdr;
var cpscm__loop__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k538=__args.car; __args=__args.cdr;
var cpscm__loop__44__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k538) (cpscm__list ((cpscm__loop__44 = cpscm__loop__44__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__536=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k535) (cpscm__list (cpscm__loop__44, cpscm__nil)); });
}
, function (__args) {
var g__k541=__args.car; __args=__args.cdr;
var cpscm__i__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_e_) (cpscm__list (function (__args) {
var g__ret_e___544=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__543=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__543) (cpscm__list (g__k541, function (__args) {
var g__k546=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k546) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k548=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmstring_d_set_b_) (cpscm__list (function (__args) {
var g__retstring_d_set_b___549=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm_2b_) (cpscm__list (function (__args) {
var g__ret_2b___551=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__44) (cpscm__list (g__k548, g__ret_2b___551, cpscm__nil)); });
}
, cpscm__i__45, 1, cpscm__nil)); });
}
, cpscm__v__41, cpscm__i__45, cpscm__x__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__ret_e___544, cpscm__nil)), cpscm__nil)); });
}
, cpscm__i__45, cpscm__n__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__530=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__530) (cpscm__list (g__k526, 0, cpscm__nil)); });
}
, cpscm__sym ("undefined"), cpscm__nil)); });
}
, g__retstring_d_length__528, cpscm__nil)); });
}
, cpscm__v__41, cpscm__nil)); });
}
) (cpscm__list (g__k523, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmcall_w_cc = cpscmcall_d_with_d_current_d_continuation;
var cpscmwrite_d_char = cpscmdisplay;
var cpscmwith_d_output_d_to_d_port = function (__args) {
var g__k553=__args.car; __args=__args.cdr;
var cpscm__p__41=__args.car; __args=__args.cdr;
var cpscm__thunk__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__555=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k557=__args.car; __args=__args.cdr;
var cpscm__oldp__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__558=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__thunk__42) (cpscm__list (function (__args) {
var g__ret__thunk__42__560=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k562=__args.car; __args=__args.cdr;
var cpscm__res__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_output_d_port) (cpscm__list (function (__args) {
var g__retcurrent_d_output_d_port__563=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k562) (cpscm__list (cpscm__res__44, cpscm__nil)); });
}
, cpscm__oldp__43, cpscm__nil)); });
}
) (cpscm__list (g__k557, g__ret__thunk__42__560, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__p__41, cpscm__nil)); });
}
) (cpscm__list (g__k553, g__retcurrent_d_output_d_port__555, cpscm__nil)); });
}
, cpscm__nil)); });
}
;
var cpscm_x_make_d_promise = function (__args) {
var g__k565=__args.car; __args=__args.cdr;
var cpscm__proc__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k568=__args.car; __args=__args.cdr;
var cpscm__result_d_ready_p___42=__args.car; __args=__args.cdr;
var cpscm__result__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k568) (cpscm__list (function (__args) {
var g__k570=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__572=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__572) (cpscm__list (g__k570, function (__args) {
var g__k574=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k574) (cpscm__list (cpscm__result__43, cpscm__nil)); });
}
, function (__args) {
var g__k576=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__proc__41) (cpscm__list (function (__args) {
var g__ret__proc__41__578=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k580=__args.car; __args=__args.cdr;
var cpscm__x__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__582=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__582) (cpscm__list (g__k580, function (__args) {
var g__k584=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k584) (cpscm__list (cpscm__result__43, cpscm__nil)); });
}
, function (__args) {
var g__k586=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__result_d_ready_p___42 = true), (cpscm__result__43 = cpscm__x__44), (g__k586) (cpscm__list (cpscm__result__43, cpscm__nil))); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__result_d_ready_p___42, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (g__k576, g__ret__proc__41__578, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__result_d_ready_p___42, cpscm__nil)), cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k565, false, false, cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k590=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist) (cpscm__list (function (__args) {
var g__retlist__592=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k590) (cpscm__list ((cpscm__vals_d_marker = g__retlist__592), cpscm__nil)); });
}
, cpscm__sym ("values"), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var cpscmx=__args.car; __args=__args.cdr;
return cpscmx;
}
, cpscm__nil)));

var cpscm__pack_d_vals = function (__args) {
var g__k594=__args.car; __args=__args.cdr;
var cpscm__things__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___598=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k600=__args.car; __args=__args.cdr;
var cpscm__x__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__602=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__602) (cpscm__list (g__k600, function (__args) {
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
return (cpscmnot) (cpscm__list (g__k606, g__retnull_p___608, cpscm__nil)); });
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
var g__597=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__596=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__596) (cpscm__list (g__k594, function (__args) {
var g__k611=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (g__k611, cpscm__vals_d_marker, cpscm__things__41, cpscm__nil)); });
}
, function (__args) {
var g__k614=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (g__k614, cpscm__things__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__597, cpscm__nil)), cpscm__nil)); });
}
, g__retnull_p___598, cpscm__nil)); });
}
, cpscm__things__41, cpscm__nil)); });
}
;
var cpscm__unpack_d_vals = function (__args) {
var g__k617=__args.car; __args=__args.cdr;
var cpscm__vals__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmpair_p_) (cpscm__list (function (__args) {
var g__retpair_p___622=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__621=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__621) (cpscm__list (function (__args) {
var g__retapply__620=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__619=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__619) (cpscm__list (g__k617, function (__args) {
var g__k624=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (g__k624, cpscm__vals__41, cpscm__nil)); });
}
, function (__args) {
var g__k627=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmlist) (cpscm__list (g__k627, cpscm__vals__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retapply__620, cpscm__nil)), cpscm__nil)); });
}
, function (__args) {
var g__k630=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__632=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmeq_p_) (cpscm__list (g__k630, g__retcar__632, cpscm__vals_d_marker, cpscm__nil)); });
}
, cpscm__vals__41, cpscm__nil)); });
}
, function (__args) {
var g__k634=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k634) (cpscm__list (false, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retpair_p___622, cpscm__nil)), cpscm__nil)); });
}
, cpscm__vals__41, cpscm__nil)); });
}
;
var cpscm__switch_d_winders = function (__args) {
var g__k636=__args.car; __args=__args.cdr;
var cpscm__ccwinders__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k639=__args.car; __args=__args.cdr;
var cpscm__switch__42=__args.car; __args=__args.cdr;
var cpscm__loop__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k645=__args.car; __args=__args.cdr;
var cpscm__switch__42__tmp=__args.car; __args=__args.cdr;
var cpscm__loop__43__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__switch__42 = cpscm__switch__42__tmp), (g__k645) (cpscm__list ((cpscm__loop__43 = cpscm__loop__43__tmp), cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__640=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__642=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmreverse) (cpscm__list (function (__args) {
var g__retreverse__643=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (g__k639, g__retreverse__642, g__retreverse__643, cpscm__nil)); });
}
, cpscm__ccwinders__41, cpscm__nil)); });
}
, cpscm__winders, cpscm__nil)); });
}
, function (__args) {
var g__k649=__args.car; __args=__args.cdr;
var cpscm__a__44=__args.car; __args=__args.cdr;
var cpscm__b__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k652=__args.car; __args=__args.cdr;
var cpscm__run_d_all__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k660=__args.car; __args=__args.cdr;
var cpscm__run_d_all__46__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k660) (cpscm__list ((cpscm__run_d_all__46 = cpscm__run_d_all__46__tmp), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__653=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmap) (cpscm__list (function (__args) {
var g__retmap__656=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmmap) (cpscm__list (function (__args) {
var g__retmap__657=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmappend_d_reverse_b_) (cpscm__list (function (__args) {
var g__retappend_d_reverse_b___655=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__run_d_all__46) (cpscm__list (function (__args) {
var g__ret__run_d_all__46__654=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k652) (cpscm__list ((cpscm__winders = cpscm__ccwinders__41), cpscm__nil)); });
}
, g__retappend_d_reverse_b___655, cpscm__nil)); });
}
, g__retmap__656, g__retmap__657, cpscm__nil)); });
}
, cpscmcar, cpscm__b__45, cpscm__nil)); });
}
, cpscmcdr, cpscm__a__44, cpscm__nil)); });
}
, function (__args) {
var g__k663=__args.car; __args=__args.cdr;
var cpscm__to_d_apply__47=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___666=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__665=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__665) (cpscm__list (g__k663, function (__args) {
var g__k668=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k668) (cpscm__list (true, cpscm__nil)); });
}
, function (__args) {
var g__k670=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__672=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__retcar__672) (cpscm__list (function (__args) {
var g__retapply__671=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__674=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__run_d_all__46) (cpscm__list (g__k670, g__retcdr__674, cpscm__nil)); });
}
, cpscm__to_d_apply__47, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__to_d_apply__47, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___666, cpscm__nil)), cpscm__nil)); });
}
, cpscm__to_d_apply__47, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k649, cpscm__sym ("undefined"), cpscm__nil)); });
}
, function (__args) {
var g__k676=__args.car; __args=__args.cdr;
var cpscm__a__44=__args.car; __args=__args.cdr;
var cpscm__b__45=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___680=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k682=__args.car; __args=__args.cdr;
var cpscm__x__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__684=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__684) (cpscm__list (g__k682, function (__args) {
var g__k686=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k686) (cpscm__list (cpscm__x__46, cpscm__nil)); });
}
, function (__args) {
var g__k688=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___690=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k692=__args.car; __args=__args.cdr;
var cpscm__x__47=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__694=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__694) (cpscm__list (g__k692, function (__args) {
var g__k696=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k696) (cpscm__list (cpscm__x__47, cpscm__nil)); });
}
, function (__args) {
var g__k698=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__701=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__702=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmeq_p_) (cpscm__list (function (__args) {
var g__reteq_p___700=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnot) (cpscm__list (g__k698, g__reteq_p___700, cpscm__nil)); });
}
, g__retcar__701, g__retcar__702, cpscm__nil)); });
}
, cpscm__b__45, cpscm__nil)); });
}
, cpscm__a__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__x__47, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (g__k688, g__retnull_p___690, cpscm__nil)); });
}
, cpscm__b__45, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (cpscm__x__46, cpscm__nil)), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var g__679=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__678=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__678) (cpscm__list (g__k676, function (__args) {
var g__k704=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__switch__42) (cpscm__list (g__k704, cpscm__a__44, cpscm__b__45, cpscm__nil)); });
}
, function (__args) {
var g__k707=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__709=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__710=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__loop__43) (cpscm__list (g__k707, g__retcdr__709, g__retcdr__710, cpscm__nil)); });
}
, cpscm__b__45, cpscm__nil)); });
}
, cpscm__a__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__679, cpscm__nil)), cpscm__nil)); });
}
, g__retnull_p___680, cpscm__nil)); });
}
, cpscm__a__44, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k636, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmdynamic_d_wind = function (__args) {
var g__k712=__args.car; __args=__args.cdr;
var cpscm__before__41=__args.car; __args=__args.cdr;
var cpscm__thunk__42=__args.car; __args=__args.cdr;
var cpscm__after__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k715=__args.car; __args=__args.cdr;
var cpscm__result__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__result__44 = false), (cpscm__before__41) (cpscm__list (function (__args) {
var g__ret__before__41__717=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__720=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcons) (cpscm__list (function (__args) {
var g__retcons__719=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__winders = g__retcons__719), (cpscm__thunk__42) (cpscm__list (function (__args) {
var g__ret__thunk__42__722=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__result__44 = g__ret__thunk__42__722), (cpscmcdr) (cpscm__list (function (__args) {
var g__retcdr__724=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__winders = g__retcdr__724), (cpscm__after__43) (cpscm__list (function (__args) {
var g__ret__after__43__725=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k715) (cpscm__list (cpscm__result__44, cpscm__nil)); });
}
, cpscm__nil))); });
}
, cpscm__winders, cpscm__nil))); });
}
, cpscm__nil))); });
}
, g__retcons__720, cpscm__winders, cpscm__nil)); });
}
, cpscm__before__41, cpscm__after__43, cpscm__nil)); });
}
, cpscm__nil))); });
}
) (cpscm__list (g__k712, cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmwith_d_failure_d_continuation = function (__args) {
var g__k727=__args.car; __args=__args.cdr;
var cpscm__hnd__41=__args.car; __args=__args.cdr;
var cpscm__thunk__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k730=__args.car; __args=__args.cdr;
var cpscm__old_d_hnd__43=__args.car; __args=__args.cdr;
var cpscm__new_d_hnd__44=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__732=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__k736=__args.car; __args=__args.cdr;
var cpscm__old_d_hnd__43__tmp=__args.car; __args=__args.cdr;
var cpscm__new_d_hnd__44__tmp=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__old_d_hnd__43 = cpscm__old_d_hnd__43__tmp), (g__k736) (cpscm__list ((cpscm__new_d_hnd__44 = cpscm__new_d_hnd__44__tmp), cpscm__nil))); });
}
) (cpscm__list (function (__args) {
var g__731=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__733=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__thunk__42) (cpscm__list (g__k730, cpscm__nil)); });
}
, cpscm__new_d_hnd__44, cpscm__nil)); });
}
, g__retcurrent_d_error_d_handler__732, function (__args) {
var g__k740=__args.car; __args=__args.cdr;
var cpscm__e__45=__args.car; __args=__args.cdr;
var cpscm__ek__46=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__741=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__hnd__41) (cpscm__list (g__k740, cpscm__e__45, cpscm__ek__46, cpscm__nil)); });
}
, cpscm__old_d_hnd__43, cpscm__nil)); });
}
, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list (g__k727, cpscm__sym ("undefined"), cpscm__sym ("undefined"), cpscm__nil)); });
}
;
var cpscmwith_w_fc = cpscmwith_d_failure_d_continuation;
var cpscm__default_d_err_d_hnd = function (__args) {
var g__k744=__args.car; __args=__args.cdr;
var cpscm__e__41=__args.car; __args=__args.cdr;
var cpscm__ek__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmdisplay) (cpscm__list (function (__args) {
var g__retdisplay__745=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmdisplay) (cpscm__list (function (__args) {
var g__retdisplay__746=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmnewline) (cpscm__list (g__k744, cpscm__nil)); });
}
, cpscm__e__41, cpscm__nil)); });
}
, "Error: ", cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k749=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k749) (cpscm__list ((cpscm__err_d_hnd = cpscm__default_d_err_d_hnd), cpscm__nil)); });
}
) (cpscm__list (function (__args) {
var cpscmx=__args.car; __args=__args.cdr;
return cpscmx;
}
, cpscm__nil)));

var cpscmcurrent_d_error_d_handler = function (__args) {
var g__k752=__args.car; __args=__args.cdr;
var cpscm__hnd__41=__args;
return new cpscm__Trampoline (function () {
return (cpscmnull_p_) (cpscm__list (function (__args) {
var g__retnull_p___755=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (function (__args) {
var g__ret_x_boolean_d__r_combinator__754=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__ret_x_boolean_d__r_combinator__754) (cpscm__list (g__k752, function (__args) {
var g__k757=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k757) (cpscm__list (cpscm__err_d_hnd, cpscm__nil)); });
}
, function (__args) {
var g__k759=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcar) (cpscm__list (function (__args) {
var g__retcar__761=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__k759) (cpscm__list ((cpscm__err_d_hnd = g__retcar__761), cpscm__nil)); });
}
, cpscm__hnd__41, cpscm__nil)); });
}
, cpscm__nil)); });
}
) (cpscm__list ((cpscm_x_boolean_d__r_combinator) (cpscm__list (g__retnull_p___755, cpscm__nil)), cpscm__nil)); });
}
, cpscm__hnd__41, cpscm__nil)); });
}
;
cpscm__drive ((function (__args) {
var g__k763=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (g__k763, function (__args) {
var g__k766=__args.car; __args=__args.cdr;
var cpscm__exit__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_values) (cpscm__list (g__k766, function (__args) {
var g__k769=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (g__k769, function (__args) {
var g__k772=__args.car; __args=__args.cdr;
var cpscm__cc__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return ((cpscm__err_d_cont = cpscm__cc__42), (cpscm__exit__41) (cpscm__list (g__k772, true, cpscm__nil))); });
}
, cpscm__nil)); });
}
, function (__args) {
var g__k776=__args.car; __args=__args.cdr;
var cpscm__e__42=__args.car; __args=__args.cdr;
var cpscm__ek__43=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcurrent_d_error_d_handler) (cpscm__list (function (__args) {
var g__retcurrent_d_error_d_handler__778=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (g__retcurrent_d_error_d_handler__778) (cpscm__list (g__k776, cpscm__e__42, cpscm__ek__43, cpscm__nil)); });
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
var g__k780=__args.car; __args=__args.cdr;
var cpscm__e__41=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscmcall_d_with_d_current_d_continuation) (cpscm__list (g__k780, function (__args) {
var g__k783=__args.car; __args=__args.cdr;
var cpscm__ek__42=__args.car; __args=__args.cdr;
return new cpscm__Trampoline (function () {
return (cpscm__err_d_cont) (cpscm__list (g__k783, cpscm__e__41, cpscm__ek__42, cpscm__nil)); });
}
, cpscm__nil)); });
}
;
