; ModuleID = '/llk/IR/drivers/usb/common/common.c_pt.bc'
source_filename = "../drivers/usb/common/common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ep_type_string:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ep_type_string\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ep_type_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_otg_state_string:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_otg_state_string\22\09\09\09\09\09"
module asm "__kstrtabns_usb_otg_state_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_speed_string:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_speed_string\22\09\09\09\09\09"
module asm "__kstrtabns_usb_speed_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_maximum_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_maximum_speed\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_maximum_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_maximum_ssp_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_maximum_ssp_rate\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_maximum_ssp_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_state_string:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_state_string\22\09\09\09\09\09"
module asm "__kstrtabns_usb_state_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_dr_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_dr_mode\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_dr_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_role_switch_default_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_role_switch_default_mode\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_role_switch_default_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_decode_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_decode_interval\22\09\09\09\09\09"
module asm "__kstrtabns_usb_decode_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_usb_get_dr_mode_by_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22of_usb_get_dr_mode_by_phy\22\09\09\09\09\09"
module asm "__kstrtabns_of_usb_get_dr_mode_by_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_usb_host_tpl_support:\09\09\09\09\09"
module asm "\09.asciz \09\22of_usb_host_tpl_support\22\09\09\09\09\09"
module asm "__kstrtabns_of_usb_host_tpl_support:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_usb_update_otg_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22of_usb_update_otg_caps\22\09\09\09\09\09"
module asm "__kstrtabns_of_usb_update_otg_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_of_get_companion_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_of_get_companion_dev\22\09\09\09\09\09"
module asm "__kstrtabns_usb_of_get_companion_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_debug_root:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_debug_root\22\09\09\09\09\09"
module asm "__kstrtabns_usb_debug_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@ep_type_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], align 4
@__kstrtab_usb_ep_type_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ep_type_string = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ep_type_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ep_type_string to i32), ptr @__kstrtab_usb_ep_type_string, ptr @__kstrtabns_usb_ep_type_string }, section "___ksymtab_gpl+usb_ep_type_string", align 4
@usb_otg_state_string.names = internal unnamed_addr constant [14 x ptr] [ptr null, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"b_idle\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"b_srp_init\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"b_peripheral\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"b_wait_acon\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"b_host\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"a_idle\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"a_wait_vrise\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"a_wait_bcon\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"a_host\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"a_suspend\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"a_peripheral\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"a_wait_vfall\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"a_vbus_err\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@__kstrtab_usb_otg_state_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_otg_state_string = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_otg_state_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_otg_state_string to i32), ptr @__kstrtab_usb_otg_state_string, ptr @__kstrtabns_usb_otg_state_string }, section "___ksymtab_gpl+usb_otg_state_string", align 4
@speed_names = internal constant [7 x ptr] [ptr @.str.25, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], align 4
@__kstrtab_usb_speed_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_speed_string = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_speed_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_speed_string to i32), ptr @__kstrtab_usb_speed_string, ptr @__kstrtabns_usb_speed_string }, section "___ksymtab_gpl+usb_speed_string", align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"maximum-speed\00", align 1
@ssp_rate = internal constant [4 x ptr] [ptr @.str.25, ptr @.str.47, ptr @.str.48, ptr @.str.49], align 4
@__kstrtab_usb_get_maximum_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_maximum_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_maximum_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_maximum_speed to i32), ptr @__kstrtab_usb_get_maximum_speed, ptr @__kstrtabns_usb_get_maximum_speed }, section "___ksymtab_gpl+usb_get_maximum_speed", align 4
@__kstrtab_usb_get_maximum_ssp_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_maximum_ssp_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_maximum_ssp_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_maximum_ssp_rate to i32), ptr @__kstrtab_usb_get_maximum_ssp_rate, ptr @__kstrtabns_usb_get_maximum_ssp_rate }, section "___ksymtab_gpl+usb_get_maximum_ssp_rate", align 4
@usb_state_string.names = internal unnamed_addr constant [9 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"not attached\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"attached\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"powered\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"reconnecting\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"unauthenticated\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"addressed\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"configured\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@__kstrtab_usb_state_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_state_string = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_state_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_state_string to i32), ptr @__kstrtab_usb_state_string, ptr @__kstrtabns_usb_state_string }, section "___ksymtab_gpl+usb_state_string", align 4
@.str.26 = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@__kstrtab_usb_get_dr_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_dr_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_dr_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_dr_mode to i32), ptr @__kstrtab_usb_get_dr_mode, ptr @__kstrtabns_usb_get_dr_mode }, section "___ksymtab_gpl+usb_get_dr_mode", align 4
@.str.27 = private unnamed_addr constant [25 x i8] c"role-switch-default-mode\00", align 1
@__kstrtab_usb_get_role_switch_default_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_role_switch_default_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_role_switch_default_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_role_switch_default_mode to i32), ptr @__kstrtab_usb_get_role_switch_default_mode, ptr @__kstrtabns_usb_get_role_switch_default_mode }, section "___ksymtab_gpl+usb_get_role_switch_default_mode", align 4
@__kstrtab_usb_decode_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_decode_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_decode_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_decode_interval to i32), ptr @__kstrtab_usb_decode_interval, ptr @__kstrtabns_usb_decode_interval }, section "___ksymtab_gpl+usb_decode_interval", align 4
@.str.28 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@__kstrtab_of_usb_get_dr_mode_by_phy = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_usb_get_dr_mode_by_phy = external dso_local constant [0 x i8], align 1
@__ksymtab_of_usb_get_dr_mode_by_phy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_usb_get_dr_mode_by_phy to i32), ptr @__kstrtab_of_usb_get_dr_mode_by_phy, ptr @__kstrtabns_of_usb_get_dr_mode_by_phy }, section "___ksymtab_gpl+of_usb_get_dr_mode_by_phy", align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"tpl-support\00", align 1
@__kstrtab_of_usb_host_tpl_support = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_usb_host_tpl_support = external dso_local constant [0 x i8], align 1
@__ksymtab_of_usb_host_tpl_support = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_usb_host_tpl_support to i32), ptr @__kstrtab_of_usb_host_tpl_support, ptr @__kstrtabns_of_usb_host_tpl_support }, section "___ksymtab_gpl+of_usb_host_tpl_support", align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"otg-rev\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"\013%pOF: unsupported otg-rev: 0x%x\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"hnp-disable\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"srp-disable\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"adp-disable\00", align 1
@__kstrtab_of_usb_update_otg_caps = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_usb_update_otg_caps = external dso_local constant [0 x i8], align 1
@__ksymtab_of_usb_update_otg_caps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_usb_update_otg_caps to i32), ptr @__kstrtab_of_usb_update_otg_caps, ptr @__kstrtabns_of_usb_update_otg_caps }, section "___ksymtab_gpl+of_usb_update_otg_caps", align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"companion\00", align 1
@__kstrtab_usb_of_get_companion_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_of_get_companion_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_of_get_companion_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_of_get_companion_dev to i32), ptr @__kstrtab_usb_of_get_companion_dev, ptr @__kstrtabns_usb_of_get_companion_dev }, section "___ksymtab_gpl+usb_of_get_companion_dev", align 4
@usb_debug_root = dso_local global ptr null, align 4
@__kstrtab_usb_debug_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_debug_root = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_debug_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_debug_root to i32), ptr @__kstrtab_usb_debug_root, ptr @__kstrtabns_usb_debug_root }, section "___ksymtab_gpl+usb_debug_root", align 4
@__initcall__kmod_usb_common__254_432_usb_common_init4 = internal global ptr @usb_common_init, section ".initcall4.init", align 4
@__exitcall_usb_common_exit = internal global ptr @usb_common_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file255 = internal constant [46 x i8] c"usb_common.file=drivers/usb/common/usb-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [23 x i8] c"usb_common.license=GPL\00", section ".modinfo", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"isoc\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"bulk\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"low-speed\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"full-speed\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"high-speed\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"wireless\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"super-speed\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"super-speed-plus\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"super-speed-plus-gen2x1\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"super-speed-plus-gen1x2\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"super-speed-plus-gen2x2\00", align 1
@usb_dr_modes = internal constant [4 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], align 4
@.str.50 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_usb_common_exit, ptr @__initcall__kmod_usb_common__254_432_usb_common_init4, ptr @__ksymtab_of_usb_get_dr_mode_by_phy, ptr @__ksymtab_of_usb_host_tpl_support, ptr @__ksymtab_of_usb_update_otg_caps, ptr @__ksymtab_usb_debug_root, ptr @__ksymtab_usb_decode_interval, ptr @__ksymtab_usb_ep_type_string, ptr @__ksymtab_usb_get_dr_mode, ptr @__ksymtab_usb_get_maximum_speed, ptr @__ksymtab_usb_get_maximum_ssp_rate, ptr @__ksymtab_usb_get_role_switch_default_mode, ptr @__ksymtab_usb_of_get_companion_dev, ptr @__ksymtab_usb_otg_state_string, ptr @__ksymtab_usb_speed_string, ptr @__ksymtab_usb_state_string, ptr @usb_common_exit], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @usb_ep_type_string(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 3
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr [4 x ptr], ptr @ep_type_names, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @usb_otg_state_string(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 13
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr [14 x ptr], ptr @usb_otg_state_string.names, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.14, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @usb_speed_string(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 6
  %3 = select i1 %2, i32 0, i32 %0
  %4 = getelementptr [7 x ptr], ptr @speed_names, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_get_maximum_speed(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = call i32 @device_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %2) #9
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4
  %7 = call i32 @match_string(ptr noundef nonnull @ssp_rate, i32 noundef 4, ptr noundef %6) #9
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 4
  %11 = call i32 @match_string(ptr noundef nonnull @speed_names, i32 noundef 7, ptr noundef %10) #9
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 0)
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = phi i32 [ %12, %9 ], [ 0, %1 ], [ 6, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_get_maximum_ssp_rate(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = call i32 @device_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %2) #9
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4
  %7 = call i32 @match_string(ptr noundef nonnull @ssp_rate, i32 noundef 4, ptr noundef %6) #9
  %8 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @usb_state_string(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 8
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr [9 x ptr], ptr @usb_state_string.names, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.25, %1 ]
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_get_dr_mode(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = call i32 @device_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %2) #9
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4
  %7 = call i32 @match_string(ptr noundef nonnull @usb_dr_modes, i32 noundef 4, ptr noundef %6) #9
  %8 = call i32 @llvm.smax.i32(i32 %7, i32 0) #9
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_get_role_switch_default_mode(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = call i32 @device_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %2) #9
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4
  %7 = call i32 @match_string(ptr noundef nonnull @usb_dr_modes, i32 noundef 4, ptr noundef %6) #9
  %8 = call i32 @llvm.smax.i32(i32 %7, i32 0) #9
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_decode_interval(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 3
  %6 = zext i8 %5 to i32
  switch i32 %6, label %37 [
    i32 0, label %7
    i32 1, label %13
    i32 2, label %19
    i32 3, label %29
  ]

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 3
  br i1 %8, label %9, label %38

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %0, i32 0, i32 5
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  br label %38

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %0, i32 0, i32 5
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = add nsw i32 %16, -1
  %18 = shl nuw i32 1, %17
  br label %38

19:                                               ; preds = %2
  %20 = icmp eq i32 %1, 3
  br i1 %20, label %21, label %38

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %0, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = icmp slt i8 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %0, i32 0, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  br label %38

29:                                               ; preds = %2
  %30 = icmp ugt i32 %1, 2
  %31 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %0, i32 0, i32 5
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  br i1 %30, label %34, label %38

34:                                               ; preds = %29
  %35 = add nsw i32 %33, -1
  %36 = shl nuw i32 1, %35
  br label %38

37:                                               ; preds = %2
  unreachable

38:                                               ; preds = %34, %29, %25, %21, %19, %13, %9, %7
  %39 = phi i32 [ %36, %34 ], [ %28, %25 ], [ 0, %21 ], [ 0, %19 ], [ %18, %13 ], [ %12, %9 ], [ 0, %7 ], [ %33, %29 ]
  %40 = icmp ugt i32 %1, 2
  %41 = select i1 %40, i32 125, i32 1000
  %42 = mul i32 %39, %41
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_usb_get_dr_mode_by_phy(ptr noundef readnone %0, i32 noundef %1) #1 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = icmp eq i32 %1, -1
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 2
  br label %9

9:                                                ; preds = %38, %2
  %10 = phi ptr [ null, %2 ], [ %11, %38 ]
  %11 = call ptr @of_find_node_with_property(ptr noundef %10, ptr noundef nonnull @.str.28) #9
  %12 = call zeroext i1 @of_device_is_available(ptr noundef %11) #9
  br i1 %12, label %13, label %38

13:                                               ; preds = %35, %9
  %14 = phi i32 [ %36, %35 ], [ 0, %9 ]
  br i1 %6, label %15, label %20

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !8
  %16 = call i32 @__of_parse_phandle_with_args(ptr noundef %11, ptr noundef nonnull @.str.28, ptr noundef null, i32 noundef 0, i32 noundef %14, ptr noundef nonnull %3) #9
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %3, align 4
  %19 = select i1 %17, ptr %18, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  store ptr %19, ptr %4, align 4
  store i32 0, ptr %7, align 4
  br label %25

20:                                               ; preds = %13
  %21 = call i32 @__of_parse_phandle_with_args(ptr noundef %11, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef -1, i32 noundef %14, ptr noundef nonnull %4) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  br label %25

25:                                               ; preds = %23, %15
  %26 = phi ptr [ %24, %23 ], [ %19, %15 ]
  call void @of_node_put(ptr noundef %26) #9
  %27 = load ptr, ptr %4, align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, ptr %7, align 4
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr %8, align 4
  %33 = icmp eq i32 %32, %1
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29, %25
  %36 = add i32 %14, 1
  %37 = icmp eq ptr %27, null
  br i1 %37, label %38, label %13

38:                                               ; preds = %35, %20, %9
  %39 = icmp eq ptr %11, null
  br i1 %39, label %40, label %9

40:                                               ; preds = %38, %29
  %41 = call i32 @of_property_read_string(ptr noundef %11, ptr noundef nonnull @.str.26, ptr noundef nonnull %5) #9
  call void @of_node_put(ptr noundef %11) #9
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %5, align 4
  %45 = call i32 @match_string(ptr noundef nonnull @usb_dr_modes, i32 noundef 4, ptr noundef %44) #9
  %46 = call i32 @llvm.smax.i32(i32 %45, i32 0) #9
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i32 [ %46, %43 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  ret i32 %48
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_with_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @of_usb_host_tpl_support(ptr noundef %0) #1 {
  %2 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef null) #9
  %3 = icmp ne ptr %2, null
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_usb_update_otg_caps(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %2
  %6 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4
  switch i32 %9, label %19 [
    i32 256, label %10
    i32 288, label %10
    i32 304, label %10
    i32 512, label %10
  ]

10:                                               ; preds = %8, %8, %8, %8
  %11 = load i16, ptr %1, align 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = zext i16 %11 to i32
  %15 = call i32 @llvm.umin.i32(i32 %9, i32 %14)
  %16 = trunc i32 %15 to i16
  br label %21

17:                                               ; preds = %10
  %18 = trunc i32 %9 to i16
  br label %21

19:                                               ; preds = %8
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %0, i32 noundef %9) #10
  br label %40

21:                                               ; preds = %17, %13, %5
  %22 = phi i16 [ %18, %17 ], [ %16, %13 ], [ 0, %5 ]
  store i16 %22, ptr %1, align 2
  %23 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef null) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.usb_otg_caps, ptr %1, i32 0, i32 1
  store i8 0, ptr %26, align 2
  br label %27

27:                                               ; preds = %25, %21
  %28 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef null) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.usb_otg_caps, ptr %1, i32 0, i32 2
  store i8 0, ptr %31, align 1
  br label %32

32:                                               ; preds = %30, %27
  %33 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef null) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i16, ptr %1, align 2
  %37 = icmp ult i16 %36, 512
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %32
  %39 = getelementptr inbounds %struct.usb_otg_caps, ptr %1, i32 0, i32 3
  store i8 0, ptr %39, align 2
  br label %40

40:                                               ; preds = %38, %35, %19, %2
  %41 = phi i32 [ -22, %19 ], [ -22, %2 ], [ 0, %38 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %41
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_of_get_companion_dev(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !8
  %5 = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.36, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #9
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr %2, align 4
  %8 = select i1 %6, ptr %7, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call ptr @of_find_device_by_node(ptr noundef nonnull %8) #9
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi ptr [ %11, %10 ], [ null, %1 ]
  call void @of_node_put(ptr noundef %8) #9
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %16 = select i1 %14, ptr null, ptr %15
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @usb_common_exit() #7 section ".exit.text" {
  %1 = load ptr, ptr @usb_debug_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @usb_common_init() #7 section ".init.text" {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.54, ptr noundef null) #9
  store ptr %1, ptr @usb_debug_root, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{!"auto-init"}
