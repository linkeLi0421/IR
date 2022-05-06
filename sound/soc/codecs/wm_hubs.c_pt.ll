; ModuleID = '/llk/IR/sound/soc/codecs/wm_hubs.c_pt.bc'
source_filename = "../sound/soc/codecs/wm_hubs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm_hubs_spkmix_tlv:\09\09\09\09\09"
module asm "\09.asciz \09\22wm_hubs_spkmix_tlv\22\09\09\09\09\09"
module asm "__kstrtabns_wm_hubs_spkmix_tlv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm_hubs_dcs_done:\09\09\09\09\09"
module asm "\09.asciz \09\22wm_hubs_dcs_done\22\09\09\09\09\09"
module asm "__kstrtabns_wm_hubs_dcs_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm_hubs_update_class_w:\09\09\09\09\09"
module asm "\09.asciz \09\22wm_hubs_update_class_w\22\09\09\09\09\09"
module asm "__kstrtabns_wm_hubs_update_class_w:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm_hubs_hpl_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22wm_hubs_hpl_mux\22\09\09\09\09\09"
module asm "__kstrtabns_wm_hubs_hpl_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm_hubs_hpr_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22wm_hubs_hpr_mux\22\09\09\09\09\09"
module asm "__kstrtabns_wm_hubs_hpr_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm_hubs_add_analogue_controls:\09\09\09\09\09"
module asm "\09.asciz \09\22wm_hubs_add_analogue_controls\22\09\09\09\09\09"
module asm "__kstrtabns_wm_hubs_add_analogue_controls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm_hubs_add_analogue_routes:\09\09\09\09\09"
module asm "\09.asciz \09\22wm_hubs_add_analogue_routes\22\09\09\09\09\09"
module asm "__kstrtabns_wm_hubs_add_analogue_routes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm_hubs_handle_analogue_pdata:\09\09\09\09\09"
module asm "\09.asciz \09\22wm_hubs_handle_analogue_pdata\22\09\09\09\09\09"
module asm "__kstrtabns_wm_hubs_handle_analogue_pdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm_hubs_vmid_ena:\09\09\09\09\09"
module asm "\09.asciz \09\22wm_hubs_vmid_ena\22\09\09\09\09\09"
module asm "__kstrtabns_wm_hubs_vmid_ena:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm_hubs_set_bias_level:\09\09\09\09\09"
module asm "\09.asciz \09\22wm_hubs_set_bias_level\22\09\09\09\09\09"
module asm "__kstrtabns_wm_hubs_set_bias_level:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.81, i32 }
%union.anon.81 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.89, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.89 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.wm_hubs_data = type { i32, i32, i32, i32, i32, i32, i8, i8, %struct.list_head, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, %struct.completion, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.80, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.80 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.wm_hubs_dcs_cache = type { %struct.list_head, i32, i32, i16 }

@wm_hubs_spkmix_tlv = dso_local constant [4 x i32] [i32 1, i32 8, i32 -300, i32 300], align 4
@__kstrtab_wm_hubs_spkmix_tlv = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm_hubs_spkmix_tlv = external dso_local constant [0 x i8], align 1
@__ksymtab_wm_hubs_spkmix_tlv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm_hubs_spkmix_tlv to i32), ptr @__kstrtab_wm_hubs_spkmix_tlv, ptr @__kstrtabns_wm_hubs_spkmix_tlv }, section "___ksymtab_gpl+wm_hubs_spkmix_tlv", align 4
@__kstrtab_wm_hubs_dcs_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm_hubs_dcs_done = external dso_local constant [0 x i8], align 1
@__ksymtab_wm_hubs_dcs_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm_hubs_dcs_done to i32), ptr @__kstrtab_wm_hubs_dcs_done, ptr @__kstrtabns_wm_hubs_dcs_done }, section "___ksymtab_gpl+wm_hubs_dcs_done", align 4
@__kstrtab_wm_hubs_update_class_w = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm_hubs_update_class_w = external dso_local constant [0 x i8], align 1
@__ksymtab_wm_hubs_update_class_w = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm_hubs_update_class_w to i32), ptr @__kstrtab_wm_hubs_update_class_w, ptr @__kstrtabns_wm_hubs_update_class_w }, section "___ksymtab_gpl+wm_hubs_update_class_w", align 4
@.str = private unnamed_addr constant [19 x i8] c"Left Headphone Mux\00", align 1
@hpl_enum = internal constant %struct.soc_enum { i32 45, i8 8, i8 8, i32 2, i32 1, ptr @hp_mux_text, ptr null, i8 0 }, align 4
@wm_hubs_hpl_mux = dso_local constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @class_w_put_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @hpl_enum to i32) }, align 4
@__kstrtab_wm_hubs_hpl_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm_hubs_hpl_mux = external dso_local constant [0 x i8], align 1
@__ksymtab_wm_hubs_hpl_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm_hubs_hpl_mux to i32), ptr @__kstrtab_wm_hubs_hpl_mux, ptr @__kstrtabns_wm_hubs_hpl_mux }, section "___ksymtab_gpl+wm_hubs_hpl_mux", align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Right Headphone Mux\00", align 1
@hpr_enum = internal constant %struct.soc_enum { i32 46, i8 8, i8 8, i32 2, i32 1, ptr @hp_mux_text, ptr null, i8 0 }, align 4
@wm_hubs_hpr_mux = dso_local constant %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @class_w_put_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @hpr_enum to i32) }, align 4
@__kstrtab_wm_hubs_hpr_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm_hubs_hpr_mux = external dso_local constant [0 x i8], align 1
@__ksymtab_wm_hubs_hpr_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm_hubs_hpr_mux to i32), ptr @__kstrtab_wm_hubs_hpr_mux, ptr @__kstrtabns_wm_hubs_hpr_mux }, section "___ksymtab_gpl+wm_hubs_hpr_mux", align 4
@analogue_snd_controls = internal constant [65 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inpga_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inmix_sw_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inmix_sw_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inmix_sw_tlv }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inmix_sw_tlv }, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @inmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @earpiece_tlv }, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm_hubs_spkmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm_hubs_spkmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm_hubs_spkmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm_hubs_spkmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm_hubs_spkmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @wm_hubs_spkmix_tlv }, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @spkmixout_tlv }, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @outpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @spkboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @speaker_ref to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @speaker_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8993_put_dc_servo, %union.anon.81 { ptr @outpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @line_tlv }, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.81 { ptr @line_tlv }, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }], align 4
@__kstrtab_wm_hubs_add_analogue_controls = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm_hubs_add_analogue_controls = external dso_local constant [0 x i8], align 1
@__ksymtab_wm_hubs_add_analogue_controls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm_hubs_add_analogue_controls to i32), ptr @__kstrtab_wm_hubs_add_analogue_controls, ptr @__kstrtabns_wm_hubs_add_analogue_controls }, section "___ksymtab_gpl+wm_hubs_add_analogue_controls", align 4
@analogue_routes = internal constant [98 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.187, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.189, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.191, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.193, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.195, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.197, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.199, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.201, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.260, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.5, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.17, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.11, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.23, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.261, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.262, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.209, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.207, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.201, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.197, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.195, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.5, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.11, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.209, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.207, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.197, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.201, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.199, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.5, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.11, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.230, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.232, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.234, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr @.str.265, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr @.str.187, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr @.str.81, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.264, ptr null, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.265, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.191, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr @.str.81, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.266, ptr null, ptr @.str.263, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.230, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.238, ptr @.str.264, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.240, ptr @.str.266, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.230, ptr @.str.260, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.240, ptr @.str.266, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.238, ptr @.str.264, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str, ptr @.str.2, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.1, ptr @.str.2, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.1, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.259, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@lineout1_diff_routes = internal constant [5 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.5, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.11, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.81, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@lineout1_se_routes = internal constant [5 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.232, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.234, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.232, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@lineout2_diff_routes = internal constant [5 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.5, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.11, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.81, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@lineout2_se_routes = internal constant [5 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.232, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.234, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.234, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }], align 4
@__kstrtab_wm_hubs_add_analogue_routes = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm_hubs_add_analogue_routes = external dso_local constant [0 x i8], align 1
@__ksymtab_wm_hubs_add_analogue_routes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm_hubs_add_analogue_routes to i32), ptr @__kstrtab_wm_hubs_add_analogue_routes, ptr @__kstrtabns_wm_hubs_add_analogue_routes }, section "___ksymtab_gpl+wm_hubs_add_analogue_routes", align 4
@__kstrtab_wm_hubs_handle_analogue_pdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm_hubs_handle_analogue_pdata = external dso_local constant [0 x i8], align 1
@__ksymtab_wm_hubs_handle_analogue_pdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm_hubs_handle_analogue_pdata to i32), ptr @__kstrtab_wm_hubs_handle_analogue_pdata, ptr @__kstrtabns_wm_hubs_handle_analogue_pdata }, section "___ksymtab_gpl+wm_hubs_handle_analogue_pdata", align 4
@__kstrtab_wm_hubs_vmid_ena = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm_hubs_vmid_ena = external dso_local constant [0 x i8], align 1
@__ksymtab_wm_hubs_vmid_ena = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm_hubs_vmid_ena to i32), ptr @__kstrtab_wm_hubs_vmid_ena, ptr @__kstrtabns_wm_hubs_vmid_ena }, section "___ksymtab_gpl+wm_hubs_vmid_ena", align 4
@__kstrtab_wm_hubs_set_bias_level = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm_hubs_set_bias_level = external dso_local constant [0 x i8], align 1
@__ksymtab_wm_hubs_set_bias_level = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm_hubs_set_bias_level to i32), ptr @__kstrtab_wm_hubs_set_bias_level, ptr @__kstrtabns_wm_hubs_set_bias_level }, section "___ksymtab_gpl+wm_hubs_set_bias_level", align 4
@__UNIQUE_ID_description253 = internal constant [53 x i8] c"description=Shared support for Wolfson hubs products\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [56 x i8] c"author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@hp_mux_text = internal global [2 x ptr] [ptr @.str.2, ptr @.str.3], align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Mixer\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"IN1L Volume\00", align 1
@inpga_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1650, i32 150], align 4
@.compoundliteral = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 24, i32 24, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"IN1L Switch\00", align 1
@.compoundliteral.6 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"IN1L ZC Switch\00", align 1
@.compoundliteral.8 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"IN1R Volume\00", align 1
@.compoundliteral.10 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 26, i32 26, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"IN1R Switch\00", align 1
@.compoundliteral.12 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"IN1R ZC Switch\00", align 1
@.compoundliteral.14 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"IN2L Volume\00", align 1
@.compoundliteral.16 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 25, i32 25, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"IN2L Switch\00", align 1
@.compoundliteral.18 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"IN2L ZC Switch\00", align 1
@.compoundliteral.20 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"IN2R Volume\00", align 1
@.compoundliteral.22 = internal global %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 27, i32 27, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"IN2R Switch\00", align 1
@.compoundliteral.24 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 7, i32 7, i32 0, i8 1 }, align 4
@.str.25 = private unnamed_addr constant [15 x i8] c"IN2R ZC Switch\00", align 1
@.compoundliteral.26 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.27 = private unnamed_addr constant [19 x i8] c"MIXINL IN2L Volume\00", align 1
@inmix_sw_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 0, i32 3000], align 4
@.compoundliteral.28 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.29 = private unnamed_addr constant [19 x i8] c"MIXINL IN1L Volume\00", align 1
@.compoundliteral.30 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.31 = private unnamed_addr constant [28 x i8] c"MIXINL Output Record Volume\00", align 1
@inmix_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1500, i32 65836], align 4
@.compoundliteral.32 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 41, i32 41, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.33 = private unnamed_addr constant [20 x i8] c"MIXINL IN1LP Volume\00", align 1
@.compoundliteral.34 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 43, i32 43, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.35 = private unnamed_addr constant [27 x i8] c"MIXINL Direct Voice Volume\00", align 1
@.compoundliteral.36 = internal global %struct.soc_mixer_control { i32 0, i32 6, i32 6, i32 43, i32 43, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.37 = private unnamed_addr constant [19 x i8] c"MIXINR IN2R Volume\00", align 1
@.compoundliteral.38 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.39 = private unnamed_addr constant [19 x i8] c"MIXINR IN1R Volume\00", align 1
@.compoundliteral.40 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.41 = private unnamed_addr constant [28 x i8] c"MIXINR Output Record Volume\00", align 1
@.compoundliteral.42 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 42, i32 42, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.43 = private unnamed_addr constant [20 x i8] c"MIXINR IN1RP Volume\00", align 1
@.compoundliteral.44 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 44, i32 44, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.45 = private unnamed_addr constant [27 x i8] c"MIXINR Direct Voice Volume\00", align 1
@.compoundliteral.46 = internal global %struct.soc_mixer_control { i32 0, i32 6, i32 6, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.47 = private unnamed_addr constant [31 x i8] c"Left Output Mixer IN2RN Volume\00", align 1
@outmix_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -2100, i32 300], align 4
@.compoundliteral.48 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 49, i32 49, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.49 = private unnamed_addr constant [31 x i8] c"Left Output Mixer IN2LN Volume\00", align 1
@.compoundliteral.50 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.51 = private unnamed_addr constant [31 x i8] c"Left Output Mixer IN2LP Volume\00", align 1
@.compoundliteral.52 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 9, i32 9, i32 0, i8 1 }, align 4
@.str.53 = private unnamed_addr constant [30 x i8] c"Left Output Mixer IN1L Volume\00", align 1
@.compoundliteral.54 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.55 = private unnamed_addr constant [30 x i8] c"Left Output Mixer IN1R Volume\00", align 1
@.compoundliteral.56 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 3, i32 3, i32 0, i8 1 }, align 4
@.str.57 = private unnamed_addr constant [37 x i8] c"Left Output Mixer Right Input Volume\00", align 1
@.compoundliteral.58 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 49, i32 49, i32 3, i32 3, i32 0, i8 1 }, align 4
@.str.59 = private unnamed_addr constant [36 x i8] c"Left Output Mixer Left Input Volume\00", align 1
@.compoundliteral.60 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 49, i32 49, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.61 = private unnamed_addr constant [29 x i8] c"Left Output Mixer DAC Volume\00", align 1
@.compoundliteral.62 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 49, i32 49, i32 9, i32 9, i32 0, i8 1 }, align 4
@.str.63 = private unnamed_addr constant [32 x i8] c"Right Output Mixer IN2LN Volume\00", align 1
@.compoundliteral.64 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 50, i32 50, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.65 = private unnamed_addr constant [32 x i8] c"Right Output Mixer IN2RN Volume\00", align 1
@.compoundliteral.66 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 48, i32 48, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.67 = private unnamed_addr constant [31 x i8] c"Right Output Mixer IN1L Volume\00", align 1
@.compoundliteral.68 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 48, i32 48, i32 3, i32 3, i32 0, i8 1 }, align 4
@.str.69 = private unnamed_addr constant [31 x i8] c"Right Output Mixer IN1R Volume\00", align 1
@.compoundliteral.70 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 48, i32 48, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.71 = private unnamed_addr constant [32 x i8] c"Right Output Mixer IN2RP Volume\00", align 1
@.compoundliteral.72 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 48, i32 48, i32 9, i32 9, i32 0, i8 1 }, align 4
@.str.73 = private unnamed_addr constant [37 x i8] c"Right Output Mixer Left Input Volume\00", align 1
@.compoundliteral.74 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 50, i32 50, i32 3, i32 3, i32 0, i8 1 }, align 4
@.str.75 = private unnamed_addr constant [38 x i8] c"Right Output Mixer Right Input Volume\00", align 1
@.compoundliteral.76 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 50, i32 50, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.77 = private unnamed_addr constant [30 x i8] c"Right Output Mixer DAC Volume\00", align 1
@.compoundliteral.78 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 50, i32 50, i32 9, i32 9, i32 0, i8 1 }, align 4
@.str.79 = private unnamed_addr constant [14 x i8] c"Output Volume\00", align 1
@outpga_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -5700, i32 100], align 4
@.compoundliteral.80 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 32, i32 33, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.81 = private unnamed_addr constant [14 x i8] c"Output Switch\00", align 1
@.compoundliteral.82 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 33, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.83 = private unnamed_addr constant [17 x i8] c"Output ZC Switch\00", align 1
@.compoundliteral.84 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 33, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.85 = private unnamed_addr constant [16 x i8] c"Earpiece Switch\00", align 1
@.compoundliteral.86 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 31, i32 31, i32 5, i32 5, i32 0, i8 1 }, align 4
@.str.87 = private unnamed_addr constant [16 x i8] c"Earpiece Volume\00", align 1
@earpiece_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -600, i32 600], align 4
@.compoundliteral.88 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 31, i32 31, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.89 = private unnamed_addr constant [18 x i8] c"SPKL Input Volume\00", align 1
@.compoundliteral.90 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 5, i32 5, i32 0, i8 1 }, align 4
@.str.91 = private unnamed_addr constant [18 x i8] c"SPKL IN1LP Volume\00", align 1
@.compoundliteral.92 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.93 = private unnamed_addr constant [19 x i8] c"SPKL Output Volume\00", align 1
@.compoundliteral.94 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 3, i32 3, i32 0, i8 1 }, align 4
@.str.95 = private unnamed_addr constant [18 x i8] c"SPKR Input Volume\00", align 1
@.compoundliteral.96 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 5, i32 5, i32 0, i8 1 }, align 4
@.str.97 = private unnamed_addr constant [18 x i8] c"SPKR IN1RP Volume\00", align 1
@.compoundliteral.98 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.99 = private unnamed_addr constant [19 x i8] c"SPKR Output Volume\00", align 1
@.compoundliteral.100 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 3, i32 3, i32 0, i8 1 }, align 4
@.str.101 = private unnamed_addr constant [21 x i8] c"Speaker Mixer Volume\00", align 1
@spkmixout_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -1800, i32 66136], align 4
@.compoundliteral.102 = internal global %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 34, i32 35, i32 0, i32 0, i32 0, i8 1 }, align 4
@.str.103 = private unnamed_addr constant [15 x i8] c"Speaker Volume\00", align 1
@.compoundliteral.104 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 38, i32 39, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.105 = private unnamed_addr constant [15 x i8] c"Speaker Switch\00", align 1
@.compoundliteral.106 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 39, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.107 = private unnamed_addr constant [18 x i8] c"Speaker ZC Switch\00", align 1
@.compoundliteral.108 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 39, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.109 = private unnamed_addr constant [21 x i8] c"Speaker Boost Volume\00", align 1
@spkboost_tlv = internal constant [14 x i32] [i32 3, i32 48, i32 0, i32 6, i32 1, i32 8, i32 0, i32 150, i32 7, i32 7, i32 1, i32 8, i32 1200, i32 0], align 4
@.compoundliteral.110 = internal global %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 37, i32 37, i32 3, i32 0, i32 0, i8 0 }, align 4
@.str.111 = private unnamed_addr constant [18 x i8] c"Speaker Reference\00", align 1
@speaker_ref = internal constant %struct.soc_enum { i32 54, i8 8, i8 8, i32 2, i32 1, ptr @speaker_ref_text, ptr null, i8 0 }, align 4
@.str.112 = private unnamed_addr constant [13 x i8] c"Speaker Mode\00", align 1
@speaker_mode = internal constant %struct.soc_enum { i32 35, i8 8, i8 8, i32 2, i32 1, ptr @speaker_mode_text, ptr null, i8 0 }, align 4
@.str.113 = private unnamed_addr constant [17 x i8] c"Headphone Volume\00", align 1
@.compoundliteral.114 = internal global %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 28, i32 29, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.115 = private unnamed_addr constant [17 x i8] c"Headphone Switch\00", align 1
@.compoundliteral.116 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 29, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.117 = private unnamed_addr constant [20 x i8] c"Headphone ZC Switch\00", align 1
@.compoundliteral.118 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 29, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.119 = private unnamed_addr constant [17 x i8] c"LINEOUT1N Switch\00", align 1
@.compoundliteral.120 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 6, i32 6, i32 0, i8 1 }, align 4
@.str.121 = private unnamed_addr constant [17 x i8] c"LINEOUT1P Switch\00", align 1
@.compoundliteral.122 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 5, i32 5, i32 0, i8 1 }, align 4
@.str.123 = private unnamed_addr constant [16 x i8] c"LINEOUT1 Volume\00", align 1
@line_tlv = internal constant [4 x i32] [i32 1, i32 8, i32 -600, i32 600], align 4
@.compoundliteral.124 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 4, i32 4, i32 0, i8 1 }, align 4
@.str.125 = private unnamed_addr constant [17 x i8] c"LINEOUT2N Switch\00", align 1
@.compoundliteral.126 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 2, i32 2, i32 0, i8 1 }, align 4
@.str.127 = private unnamed_addr constant [17 x i8] c"LINEOUT2P Switch\00", align 1
@.compoundliteral.128 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 1, i32 1, i32 0, i8 1 }, align 4
@.str.129 = private unnamed_addr constant [16 x i8] c"LINEOUT2 Volume\00", align 1
@.compoundliteral.130 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 0, i32 0, i32 0, i8 1 }, align 4
@speaker_ref_text = internal global [2 x ptr] [ptr @.str.131, ptr @.str.132], align 4
@.str.131 = private unnamed_addr constant [9 x i8] c"SPKVDD/2\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"VMID\00", align 1
@speaker_mode_text = internal global [2 x ptr] [ptr @.str.133, ptr @.str.134], align 4
@.str.133 = private unnamed_addr constant [8 x i8] c"Class D\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"Class AB\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"IN1LN\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"IN1LP\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"IN2LN\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"IN2LP:VXRN\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"IN1RN\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"IN1RP\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"IN2RN\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"IN2RP:VXRP\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"MICBIAS2\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"MICBIAS1\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"IN1L PGA\00", align 1
@in1l_pga = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.187, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.188 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.189, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }], align 4
@.str.146 = private unnamed_addr constant [9 x i8] c"IN1R PGA\00", align 1
@in1r_pga = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.191, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.192 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }], align 4
@.str.147 = private unnamed_addr constant [9 x i8] c"IN2L PGA\00", align 1
@in2l_pga = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.196 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.198 to i32) }], align 4
@.str.148 = private unnamed_addr constant [9 x i8] c"IN2R PGA\00", align 1
@in2r_pga = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.199, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.200 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.202 to i32) }], align 4
@.str.149 = private unnamed_addr constant [7 x i8] c"MIXINL\00", align 1
@mixinl = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.203 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.204 to i32) }], align 4
@.str.150 = private unnamed_addr constant [7 x i8] c"MIXINR\00", align 1
@mixinr = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.205 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.206 to i32) }], align 4
@.str.151 = private unnamed_addr constant [18 x i8] c"Left Output Mixer\00", align 1
@left_output_mixer = internal constant [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.207, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.208 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.210 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.212 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.213 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.214 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.215 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.216, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.217 to i32) }], align 4
@.str.152 = private unnamed_addr constant [19 x i8] c"Right Output Mixer\00", align 1
@right_output_mixer = internal constant [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.218 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.207, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.219 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.220 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.221 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.222 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.223 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.199, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.224 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.216, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @class_w_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.225 to i32) }], align 4
@.str.153 = private unnamed_addr constant [16 x i8] c"Left Output PGA\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c"Right Output PGA\00", align 1
@.str.155 = private unnamed_addr constant [17 x i8] c"Headphone Supply\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"Headphone PGA\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"Earpiece Mixer\00", align 1
@earpiece_mixer = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.231 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.233 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.235 to i32) }], align 4
@.str.158 = private unnamed_addr constant [16 x i8] c"Earpiece Driver\00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"SPKL Boost\00", align 1
@left_speaker_boost = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.237 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.239 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.241 to i32) }], align 4
@.str.160 = private unnamed_addr constant [11 x i8] c"SPKR Boost\00", align 1
@right_speaker_boost = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.242 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.243 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }], align 4
@.str.161 = private unnamed_addr constant [6 x i8] c"TSHUT\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"SPKL Driver\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"SPKR Driver\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"LINEOUT1 Mixer\00", align 1
@line1_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.245 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }], align 4
@.str.165 = private unnamed_addr constant [15 x i8] c"LINEOUT2 Mixer\00", align 1
@line2_mix = internal constant [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.249 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }], align 4
@.str.166 = private unnamed_addr constant [16 x i8] c"LINEOUT1N Mixer\00", align 1
@line1n_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }], align 4
@.str.167 = private unnamed_addr constant [16 x i8] c"LINEOUT1P Mixer\00", align 1
@line1p_mix = internal constant [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }], align 4
@.str.168 = private unnamed_addr constant [16 x i8] c"LINEOUT2N Mixer\00", align 1
@line2n_mix = internal constant [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }], align 4
@.str.169 = private unnamed_addr constant [16 x i8] c"LINEOUT2P Mixer\00", align 1
@line2p_mix = internal constant [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.81 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }], align 4
@.str.170 = private unnamed_addr constant [17 x i8] c"LINEOUT1N Driver\00", align 1
@.str.171 = private unnamed_addr constant [17 x i8] c"LINEOUT1P Driver\00", align 1
@.str.172 = private unnamed_addr constant [17 x i8] c"LINEOUT2N Driver\00", align 1
@.str.173 = private unnamed_addr constant [17 x i8] c"LINEOUT2P Driver\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"SPKOUTLP\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"SPKOUTLN\00", align 1
@.str.176 = private unnamed_addr constant [9 x i8] c"SPKOUTRP\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"SPKOUTRN\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"HPOUT1L\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"HPOUT1R\00", align 1
@.str.180 = private unnamed_addr constant [8 x i8] c"HPOUT2P\00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"HPOUT2N\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"LINEOUT1P\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"LINEOUT1N\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"LINEOUT2P\00", align 1
@.str.185 = private unnamed_addr constant [10 x i8] c"LINEOUT2N\00", align 1
@analogue_dapm_widgets = internal constant [51 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @micbias_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @micbias_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @in1l_pga, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @in1r_pga, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @in2l_pga, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @in2r_pga, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mixinl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mixinr, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @left_output_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @right_output_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @hp_supply_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @hp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @earpiece_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @earpiece_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @left_speaker_boost, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @right_speaker_boost, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @line1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @line2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @line1n_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @line1p_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @line2n_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @line2p_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @lineout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @lineout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @lineout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @lineout_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], align 4
@.str.187 = private unnamed_addr constant [13 x i8] c"IN1LP Switch\00", align 1
@.compoundliteral.188 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.189 = private unnamed_addr constant [13 x i8] c"IN1LN Switch\00", align 1
@.compoundliteral.190 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.191 = private unnamed_addr constant [13 x i8] c"IN1RP Switch\00", align 1
@.compoundliteral.192 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 1, i32 1, i32 0, i8 0 }, align 4
@.str.193 = private unnamed_addr constant [13 x i8] c"IN1RN Switch\00", align 1
@.compoundliteral.194 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.195 = private unnamed_addr constant [13 x i8] c"IN2LP Switch\00", align 1
@.compoundliteral.196 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.197 = private unnamed_addr constant [13 x i8] c"IN2LN Switch\00", align 1
@.compoundliteral.198 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 6, i32 6, i32 0, i8 0 }, align 4
@.str.199 = private unnamed_addr constant [13 x i8] c"IN2RP Switch\00", align 1
@.compoundliteral.200 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 3, i32 3, i32 0, i8 0 }, align 4
@.str.201 = private unnamed_addr constant [13 x i8] c"IN2RN Switch\00", align 1
@.compoundliteral.202 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.203 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 8, i32 8, i32 0, i8 0 }, align 4
@.compoundliteral.204 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.205 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 8, i32 8, i32 0, i8 0 }, align 4
@.compoundliteral.206 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.207 = private unnamed_addr constant [19 x i8] c"Right Input Switch\00", align 1
@.compoundliteral.208 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 7, i32 7, i32 0, i8 0 }, align 4
@.str.209 = private unnamed_addr constant [18 x i8] c"Left Input Switch\00", align 1
@.compoundliteral.210 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 6, i32 6, i32 0, i8 0 }, align 4
@.compoundliteral.211 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.212 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.213 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.214 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.215 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 2, i32 2, i32 0, i8 0 }, align 4
@.str.216 = private unnamed_addr constant [11 x i8] c"DAC Switch\00", align 1
@.compoundliteral.217 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.218 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 7, i32 7, i32 0, i8 0 }, align 4
@.compoundliteral.219 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 6, i32 6, i32 0, i8 0 }, align 4
@.compoundliteral.220 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.221 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 4, i32 4, i32 0, i8 0 }, align 4
@.compoundliteral.222 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.223 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.224 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.225 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.226 = private unnamed_addr constant [28 x i8] c"Unknown HP startup mode %d\0A\00", align 1
@.str.227 = private unnamed_addr constant [35 x i8] c"Timed out waiting for DC Servo %x\0A\00", align 1
@.str.228 = private unnamed_addr constant [27 x i8] c"sound/soc/codecs/wm_hubs.c\00", align 1
@.str.229 = private unnamed_addr constant [29 x i8] c"Unknown DCS readback method\0A\00", align 1
@.str.230 = private unnamed_addr constant [20 x i8] c"Direct Voice Switch\00", align 1
@.compoundliteral.231 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.232 = private unnamed_addr constant [19 x i8] c"Left Output Switch\00", align 1
@.compoundliteral.233 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.234 = private unnamed_addr constant [20 x i8] c"Right Output Switch\00", align 1
@.compoundliteral.235 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 3, i32 3, i32 0, i8 0 }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.236 = private unnamed_addr constant [18 x i8] c"Invalid event %d\0A\00", align 1
@.compoundliteral.237 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 5, i32 5, i32 0, i8 0 }, align 4
@.str.238 = private unnamed_addr constant [12 x i8] c"SPKL Switch\00", align 1
@.compoundliteral.239 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 4, i32 4, i32 0, i8 0 }, align 4
@.str.240 = private unnamed_addr constant [12 x i8] c"SPKR Switch\00", align 1
@.compoundliteral.241 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 3, i32 3, i32 0, i8 0 }, align 4
@.compoundliteral.242 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.243 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.244 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.245 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.246 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.247 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.248 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 2, i32 2, i32 0, i8 0 }, align 4
@.compoundliteral.249 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 1, i32 1, i32 0, i8 0 }, align 4
@.compoundliteral.250 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.251 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 6, i32 6, i32 0, i8 0 }, align 4
@.compoundliteral.252 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.253 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 0, i32 0, i32 0, i8 0 }, align 4
@.compoundliteral.254 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 5, i32 5, i32 0, i8 0 }, align 4
@.compoundliteral.255 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 6, i32 6, i32 0, i8 0 }, align 4
@.compoundliteral.256 = internal global %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 0, i32 0, i32 0, i8 0 }, align 4
@.str.257 = private unnamed_addr constant [20 x i8] c"Unknown line output\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.259 = private unnamed_addr constant [8 x i8] c"CLK_SYS\00", align 1
@.str.260 = private unnamed_addr constant [13 x i8] c"Direct Voice\00", align 1
@.str.261 = private unnamed_addr constant [5 x i8] c"ADCL\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"ADCR\00", align 1
@.str.263 = private unnamed_addr constant [6 x i8] c"TOCLK\00", align 1
@.str.264 = private unnamed_addr constant [5 x i8] c"SPKL\00", align 1
@.str.265 = private unnamed_addr constant [13 x i8] c"Input Switch\00", align 1
@.str.266 = private unnamed_addr constant [5 x i8] c"SPKR\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_wm_hubs_add_analogue_controls, ptr @__ksymtab_wm_hubs_add_analogue_routes, ptr @__ksymtab_wm_hubs_dcs_done, ptr @__ksymtab_wm_hubs_handle_analogue_pdata, ptr @__ksymtab_wm_hubs_hpl_mux, ptr @__ksymtab_wm_hubs_hpr_mux, ptr @__ksymtab_wm_hubs_set_bias_level, ptr @__ksymtab_wm_hubs_spkmix_tlv, ptr @__ksymtab_wm_hubs_update_class_w, ptr @__ksymtab_wm_hubs_vmid_ena], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm_hubs_dcs_done(i32 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wm_hubs_data, ptr %1, i32 0, i32 19
  tail call void @complete(ptr noundef %3) #3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wm_hubs_update_class_w(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 45) #3
  %7 = and i32 %6, 256
  %8 = icmp ne i32 %7, 0
  %9 = icmp ult i32 %6, 2
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 46) #3
  %13 = and i32 %12, 256
  %14 = icmp ne i32 %13, 0
  %15 = icmp ult i32 %12, 2
  %16 = or i1 %15, %14
  %17 = select i1 %16, i32 3, i32 0
  br label %18

18:                                               ; preds = %11, %1
  %19 = phi i32 [ 0, %1 ], [ %17, %11 ]
  %20 = getelementptr inbounds %struct.wm_hubs_data, ptr %5, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = tail call zeroext i1 %21(ptr noundef %0) #3
  %25 = select i1 %24, i32 %19, i32 0
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i32 [ %19, %18 ], [ %25, %23 ]
  %28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 81, i32 noundef 3, i32 noundef %27) #3
  %29 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 28) #3
  %30 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 28, i32 noundef %29) #3
  %31 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 29) #3
  %32 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 29, i32 noundef %31) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @class_w_put_double(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #3
  %4 = getelementptr i8, ptr %3, i32 -104
  %5 = tail call i32 @snd_soc_dapm_put_enum_double(ptr noundef %0, ptr noundef %1) #3
  tail call void @wm_hubs_update_class_w(ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm_hubs_add_analogue_controls(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 24, i32 noundef 256, i32 noundef 256) #3
  %4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 26, i32 noundef 256, i32 noundef 256) #3
  %5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 25, i32 noundef 256, i32 noundef 256) #3
  %6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 27, i32 noundef 256, i32 noundef 256) #3
  %7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 38, i32 noundef 256, i32 noundef 256) #3
  %8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 39, i32 noundef 256, i32 noundef 256) #3
  %9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 28, i32 noundef 384, i32 noundef 384) #3
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 29, i32 noundef 384, i32 noundef 384) #3
  %11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 32, i32 noundef 384, i32 noundef 384) #3
  %12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 33, i32 noundef 384, i32 noundef 384) #3
  %13 = tail call i32 @snd_soc_add_component_controls(ptr noundef %0, ptr noundef nonnull @analogue_snd_controls, i32 noundef 65) #3
  %14 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %2, ptr noundef nonnull @analogue_dapm_widgets, i32 noundef 51) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm_hubs_add_analogue_routes(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 17
  %9 = getelementptr inbounds %struct.wm_hubs_data, ptr %7, i32 0, i32 20
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wm_hubs_data, ptr %7, i32 0, i32 8
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wm_hubs_data, ptr %7, i32 0, i32 8, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wm_hubs_data, ptr %7, i32 0, i32 19
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wm_hubs_data, ptr %7, i32 0, i32 19, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %13, ptr noundef nonnull @.str.258, ptr noundef nonnull @init_completion.__key) #3
  %14 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %8, ptr noundef nonnull @analogue_routes, i32 noundef 98) #3
  %15 = icmp eq i32 %1, 0
  %16 = select i1 %15, ptr @lineout1_se_routes, ptr @lineout1_diff_routes
  %17 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %8, ptr noundef nonnull %16, i32 noundef 5) #3
  %18 = icmp eq i32 %2, 0
  %19 = select i1 %18, ptr @lineout2_se_routes, ptr @lineout2_diff_routes
  %20 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %8, ptr noundef nonnull %19, i32 noundef 5) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm_hubs_handle_analogue_pdata(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #0 {
  %12 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq i32 %1, 0
  %17 = getelementptr inbounds %struct.wm_hubs_data, ptr %15, i32 0, i32 12
  %18 = zext i1 %16 to i8
  store i8 %18, ptr %17, align 4
  %19 = icmp eq i32 %2, 0
  %20 = getelementptr inbounds %struct.wm_hubs_data, ptr %15, i32 0, i32 15
  %21 = zext i1 %19 to i8
  store i8 %21, ptr %20, align 1
  %22 = getelementptr inbounds %struct.wm_hubs_data, ptr %15, i32 0, i32 10
  store i32 %7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.wm_hubs_data, ptr %15, i32 0, i32 11
  store i32 %8, ptr %23, align 4
  br i1 %16, label %24, label %26

24:                                               ; preds = %11
  %25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 52, i32 noundef 16, i32 noundef 16) #3
  br label %26

26:                                               ; preds = %24, %11
  br i1 %19, label %27, label %29

27:                                               ; preds = %26
  %28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 53, i32 noundef 16, i32 noundef 16) #3
  br label %29

29:                                               ; preds = %27, %26
  %30 = or i32 %2, %1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 56, i32 noundef 128, i32 noundef 128) #3
  br label %34

34:                                               ; preds = %32, %29
  %35 = icmp eq i32 %3, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 55, i32 noundef 128, i32 noundef 128) #3
  br label %38

38:                                               ; preds = %36, %34
  %39 = icmp eq i32 %4, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 55, i32 noundef 64, i32 noundef 64) #3
  br label %42

42:                                               ; preds = %40, %38
  %43 = getelementptr inbounds %struct.wm_hubs_data, ptr %15, i32 0, i32 6
  %44 = load i8, ptr %43, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = shl i32 %5, 6
  %48 = shl i32 %6, 4
  %49 = or i32 %48, %47
  %50 = or i32 %49, %9
  %51 = shl i32 %10, 1
  %52 = or i32 %50, %51
  %53 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 58, i32 noundef 243, i32 noundef %52) #3
  br label %54

54:                                               ; preds = %46, %42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wm_hubs_vmid_ena(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.wm_hubs_data, ptr %5, i32 0, i32 12
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, i32 0, i32 12288
  %10 = getelementptr inbounds %struct.wm_hubs_data, ptr %5, i32 0, i32 15
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  %13 = or i32 %9, 3072
  %14 = select i1 %12, i32 %9, i32 %13
  %15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 3, i32 noundef %14, i32 noundef %14) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wm_hubs_set_bias_level(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  switch i32 %1, label %46 [
    i32 1, label %43
    i32 3, label %7
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wm_hubs_data, ptr %6, i32 0, i32 12
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 0, i32 12288
  %12 = getelementptr inbounds %struct.wm_hubs_data, ptr %6, i32 0, i32 15
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = or i32 %11, 3072
  %16 = select i1 %14, i32 %11, i32 %15
  br i1 %10, label %27, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.wm_hubs_data, ptr %6, i32 0, i32 13
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, i32 0, i32 8192
  %22 = getelementptr inbounds %struct.wm_hubs_data, ptr %6, i32 0, i32 14
  %23 = load i8, ptr %22, align 2, !range !8
  %24 = icmp eq i8 %23, 0
  %25 = or i32 %21, 4096
  %26 = select i1 %24, i32 %21, i32 %25
  br label %27

27:                                               ; preds = %17, %7
  %28 = phi i32 [ %26, %17 ], [ 0, %7 ]
  br i1 %14, label %40, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.wm_hubs_data, ptr %6, i32 0, i32 16
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = or i32 %28, 2048
  %34 = select i1 %32, i32 %28, i32 %33
  %35 = getelementptr inbounds %struct.wm_hubs_data, ptr %6, i32 0, i32 17
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = or i32 %34, 1024
  %39 = select i1 %37, i32 %34, i32 %38
  br label %40

40:                                               ; preds = %29, %27
  %41 = phi i32 [ %39, %29 ], [ %28, %27 ]
  %42 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 3, i32 noundef %16, i32 noundef %41) #3
  br label %43

43:                                               ; preds = %40, %2
  %44 = phi i32 [ 0, %40 ], [ 64, %2 ]
  %45 = tail call i32 @snd_soc_component_update_bits(ptr noundef %0, i32 noundef 21, i32 noundef 64, i32 noundef %44) #3
  br label %46

46:                                               ; preds = %43, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm8993_put_dc_servo(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @snd_soc_put_volsw(ptr noundef %0, ptr noundef %1) #3
  %10 = load i32, ptr %8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wm_hubs_data, ptr %8, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.wm_hubs_data, ptr %8, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 1) #3
  %22 = and i32 %21, 768
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 84, i32 noundef 12288, i32 noundef 12288) #3
  br label %26

26:                                               ; preds = %24, %20, %16, %12, %2
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @micbias_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %11 = load i8, ptr %10, align 4
  switch i8 %11, label %22 [
    i8 4, label %12
    i8 5, label %16
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wm_hubs_data, ptr %9, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %20

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.wm_hubs_data, ptr %9, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %14, %12 ], [ %18, %16 ]
  tail call void @msleep(i32 noundef %21) #3
  br label %22

22:                                               ; preds = %20, %16, %12, %3
  %23 = phi i32 [ -22, %3 ], [ 0, %16 ], [ 0, %12 ], [ 0, %20 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hp_supply_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = getelementptr i8, ptr %5, i32 -92
  %8 = load ptr, ptr %7, align 4
  switch i32 %2, label %20 [
    i32 1, label %9
    i32 4, label %18
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.wm_hubs_data, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %17 [
    i32 0, label %20
    i32 1, label %14
  ]

14:                                               ; preds = %9
  %15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 1, i32 noundef 768, i32 noundef 768) #3
  %16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 96, i32 noundef 34, i32 noundef 34) #3
  br label %20

17:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.226, i32 noundef %13) #4
  br label %20

18:                                               ; preds = %3
  %19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 76, i32 noundef 32768, i32 noundef 0) #3
  br label %20

20:                                               ; preds = %18, %17, %14, %9, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hp_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 96) #3
  switch i32 %2, label %155 [
    i32 2, label %8
    i32 4, label %150
  ]

8:                                                ; preds = %3
  %9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 76, i32 noundef 32768, i32 noundef 32768) #3
  tail call void @msleep(i32 noundef 5) #3
  %10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 1, i32 noundef 768, i32 noundef 768) #3
  %11 = or i32 %7, 34
  %12 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef 96, i32 noundef %11) #3
  %13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 85, i32 noundef 15, i32 noundef 0) #3
  %14 = getelementptr i8, ptr %5, i32 -92
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.wm_hubs_data, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  %21 = select i1 %20, i32 89, i32 87
  %22 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 45) #3
  %23 = and i32 %22, 256
  %24 = icmp ne i32 %23, 0
  %25 = icmp ult i32 %22, 2
  %26 = or i1 %25, %24
  br i1 %26, label %27, label %61

27:                                               ; preds = %8
  %28 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 46) #3
  %29 = and i32 %28, 256
  %30 = icmp ne i32 %29, 0
  %31 = icmp ult i32 %28, 2
  %32 = or i1 %31, %30
  br i1 %32, label %33, label %61

33:                                               ; preds = %27
  %34 = load ptr, ptr %14, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 8
  %37 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 28) #3
  %38 = and i32 %37, 63
  %39 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 29) #3
  %40 = and i32 %39, 63
  %41 = getelementptr inbounds %struct.wm_hubs_data, ptr %36, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %61, label %44

44:                                               ; preds = %53, %33
  %45 = phi ptr [ %54, %53 ], [ %42, %33 ]
  %46 = getelementptr inbounds %struct.wm_hubs_dcs_cache, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %38
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.wm_hubs_dcs_cache, ptr %45, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %40
  br i1 %52, label %56, label %53

53:                                               ; preds = %49, %44
  %54 = load ptr, ptr %45, align 4
  %55 = icmp eq ptr %54, %41
  br i1 %55, label %61, label %44

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.wm_hubs_dcs_cache, ptr %45, i32 0, i32 3
  %58 = load i16, ptr %57, align 4
  %59 = zext i16 %58 to i32
  %60 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef %21, i32 noundef %59) #3
  tail call fastcc void @wait_for_dc_servo(ptr noundef %6, i32 noundef 12) #3
  br label %147

61:                                               ; preds = %53, %33, %27, %8
  %62 = getelementptr inbounds %struct.wm_hubs_data, ptr %17, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 85, i32 noundef 4064, i32 noundef 1024) #3
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi i32 [ 768, %65 ], [ 48, %61 ]
  tail call fastcc void @wait_for_dc_servo(ptr noundef %6, i32 noundef %68) #3
  %69 = load ptr, ptr %14, align 4
  %70 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 8
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.wm_hubs_data, ptr %71, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  switch i32 %73, label %88 [
    i32 0, label %74
    i32 2, label %80
    i32 1, label %80
  ]

74:                                               ; preds = %67
  %75 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 89) #3
  %76 = trunc i32 %75 to i16
  %77 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 90) #3
  %78 = trunc i32 %77 to i16
  %79 = and i16 %78, 255
  br label %89

80:                                               ; preds = %67, %67
  %81 = icmp eq i32 %73, 2
  %82 = icmp eq i32 %73, 1
  %83 = select i1 %82, i32 88, i32 87
  %84 = select i1 %81, i32 89, i32 %83
  %85 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef %84) #3
  %86 = trunc i32 %85 to i16
  %87 = lshr i16 %86, 8
  br label %89

88:                                               ; preds = %67
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.228, i32 noundef 232, i32 noundef 9, ptr noundef nonnull @.str.229) #3
  br label %147

89:                                               ; preds = %80, %74
  %90 = phi i16 [ %76, %74 ], [ %86, %80 ]
  %91 = phi i16 [ %79, %74 ], [ %87, %80 ]
  %92 = load i32, ptr %17, align 4
  %93 = icmp eq i32 %92, 0
  %94 = getelementptr inbounds %struct.wm_hubs_data, ptr %17, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %93, i1 %96, i1 false
  br i1 %97, label %108, label %98

98:                                               ; preds = %89
  %99 = trunc i32 %95 to i16
  %100 = add i16 %91, %99
  %101 = shl i16 %100, 8
  %102 = trunc i32 %92 to i16
  %103 = add i16 %90, %102
  %104 = and i16 %103, 255
  %105 = or i16 %101, %104
  %106 = zext i16 %105 to i32
  %107 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef %21, i32 noundef %106) #3
  tail call fastcc void @wait_for_dc_servo(ptr noundef %6, i32 noundef 12) #3
  br label %112

108:                                              ; preds = %89
  %109 = and i16 %90, 255
  %110 = shl nuw i16 %91, 8
  %111 = or i16 %110, %109
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi i16 [ %105, %98 ], [ %111, %108 ]
  %114 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 45) #3
  %115 = and i32 %114, 256
  %116 = icmp ne i32 %115, 0
  %117 = icmp ult i32 %114, 2
  %118 = or i1 %117, %116
  br i1 %118, label %119, label %147

119:                                              ; preds = %112
  %120 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 46) #3
  %121 = and i32 %120, 256
  %122 = icmp ne i32 %121, 0
  %123 = icmp ult i32 %120, 2
  %124 = or i1 %123, %122
  br i1 %124, label %125, label %147

125:                                              ; preds = %119
  %126 = load ptr, ptr %14, align 4
  %127 = getelementptr inbounds %struct.device, ptr %126, i32 0, i32 8
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds %struct.wm_hubs_data, ptr %128, i32 0, i32 7
  %130 = load i8, ptr %129, align 1, !range !8
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %125
  %133 = tail call noalias ptr @devm_kmalloc(ptr noundef %126, i32 noundef 20, i32 noundef 3520) #3
  %134 = icmp eq ptr %133, null
  br i1 %134, label %147, label %135

135:                                              ; preds = %132
  %136 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 28) #3
  %137 = getelementptr inbounds %struct.wm_hubs_dcs_cache, ptr %133, i32 0, i32 1
  %138 = and i32 %136, 63
  store i32 %138, ptr %137, align 4
  %139 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 29) #3
  %140 = getelementptr inbounds %struct.wm_hubs_dcs_cache, ptr %133, i32 0, i32 2
  %141 = and i32 %139, 63
  store i32 %141, ptr %140, align 4
  %142 = getelementptr inbounds %struct.wm_hubs_dcs_cache, ptr %133, i32 0, i32 3
  store i16 %113, ptr %142, align 4
  %143 = getelementptr inbounds %struct.wm_hubs_data, ptr %128, i32 0, i32 8
  %144 = getelementptr inbounds %struct.wm_hubs_data, ptr %128, i32 0, i32 8, i32 1
  %145 = load ptr, ptr %144, align 4
  store ptr %133, ptr %144, align 4
  store ptr %143, ptr %133, align 4
  %146 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  store ptr %145, ptr %146, align 4
  store volatile ptr %133, ptr %145, align 4
  br label %147

147:                                              ; preds = %135, %132, %125, %119, %112, %88, %56
  %148 = or i32 %7, 238
  %149 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef 96, i32 noundef %148) #3
  br label %155

150:                                              ; preds = %3
  %151 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 96, i32 noundef 204, i32 noundef 0) #3
  %152 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 96, i32 noundef 34, i32 noundef 0) #3
  %153 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef 84, i32 noundef 0) #3
  %154 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 1, i32 noundef 768, i32 noundef 0) #3
  br label %155

155:                                              ; preds = %150, %147, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @earpiece_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -104
  %7 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 56) #3
  switch i32 %2, label %16 [
    i32 1, label %8
    i32 8, label %13
  ]

8:                                                ; preds = %3
  %9 = and i32 %7, 65471
  %10 = or i32 %9, 64
  %11 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef 56, i32 noundef %10) #3
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 10737400) #3
  br label %17

13:                                               ; preds = %3
  %14 = and i32 %7, 65471
  %15 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef 56, i32 noundef %14) #3
  br label %17

16:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.228, i32 noundef 607, i32 noundef 9, ptr noundef nonnull @.str.236, i32 noundef %2) #3
  br label %17

17:                                               ; preds = %16, %13, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lineout_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %0, i32 0, i32 9
  %11 = load i8, ptr %10, align 4
  switch i8 %11, label %20 [
    i8 13, label %12
    i8 12, label %14
    i8 11, label %16
    i8 10, label %18
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wm_hubs_data, ptr %9, i32 0, i32 13
  br label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.wm_hubs_data, ptr %9, i32 0, i32 14
  br label %21

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.wm_hubs_data, ptr %9, i32 0, i32 16
  br label %21

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wm_hubs_data, ptr %9, i32 0, i32 17
  br label %21

20:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.228, i32 noundef 635, i32 noundef 9, ptr noundef nonnull @.str.257) #3
  br label %26

21:                                               ; preds = %18, %16, %14, %12
  %22 = phi ptr [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ]
  %23 = and i32 %2, 3
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i8
  store i8 %25, ptr %22, align 1
  br label %26

26:                                               ; preds = %21, %20
  %27 = phi i32 [ -22, %20 ], [ 0, %21 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @class_w_put_volsw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %0) #3
  %4 = getelementptr i8, ptr %3, i32 -104
  %5 = tail call i32 @snd_soc_dapm_put_volsw(ptr noundef %0, ptr noundef %1) #3
  tail call void @wm_hubs_update_class_w(ptr noundef %4)
  ret i32 %5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wait_for_dc_servo(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.snd_soc_component, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = or i32 %1, 3
  %8 = tail call i32 @snd_soc_component_write(ptr noundef %0, i32 noundef 84, i32 noundef %7) #3
  %9 = getelementptr inbounds %struct.wm_hubs_data, ptr %6, i32 0, i32 18
  %10 = load i8, ptr %9, align 2, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 400, i32 4
  %13 = getelementptr inbounds %struct.wm_hubs_data, ptr %6, i32 0, i32 19
  br label %16

14:                                               ; preds = %24
  %15 = load i8, ptr %9, align 2
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i8 [ %15, %14 ], [ %10, %2 ]
  %18 = phi i32 [ %19, %14 ], [ 0, %2 ]
  %19 = add nuw nsw i32 %18, 1
  %20 = icmp eq i8 %17, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @wait_for_completion_timeout(ptr noundef %13, i32 noundef 25) #3
  br label %24

23:                                               ; preds = %16
  tail call void @msleep(i32 noundef 1) #3
  br label %24

24:                                               ; preds = %23, %21
  %25 = tail call i32 @snd_soc_component_read(ptr noundef %0, i32 noundef 84) #3
  %26 = and i32 %25, %1
  %27 = icmp ne i32 %26, 0
  %28 = icmp ult i32 %19, %12
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %14, label %30

30:                                               ; preds = %24
  br i1 %27, label %31, label %33

31:                                               ; preds = %30
  %32 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.227, i32 noundef %1) #4
  br label %33

33:                                               ; preds = %31, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{i8 0, i8 2}
