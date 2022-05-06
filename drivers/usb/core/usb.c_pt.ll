; ModuleID = '/llk/IR/drivers/usb/core/usb.c_pt.bc'
source_filename = "../drivers/usb/core/usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_disabled:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_disabled\22\09\09\09\09\09"
module asm "__kstrtabns_usb_disabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_find_common_endpoints:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_find_common_endpoints\22\09\09\09\09\09"
module asm "__kstrtabns_usb_find_common_endpoints:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_find_common_endpoints_reverse:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_find_common_endpoints_reverse\22\09\09\09\09\09"
module asm "__kstrtabns_usb_find_common_endpoints_reverse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_find_alt_setting:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_find_alt_setting\22\09\09\09\09\09"
module asm "__kstrtabns_usb_find_alt_setting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_ifnum_to_if:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_ifnum_to_if\22\09\09\09\09\09"
module asm "__kstrtabns_usb_ifnum_to_if:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_altnum_to_altsetting:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_altnum_to_altsetting\22\09\09\09\09\09"
module asm "__kstrtabns_usb_altnum_to_altsetting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_find_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_find_interface\22\09\09\09\09\09"
module asm "__kstrtabns_usb_find_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_for_each_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_for_each_dev\22\09\09\09\09\09"
module asm "__kstrtabns_usb_for_each_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_alloc_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_alloc_dev\22\09\09\09\09\09"
module asm "__kstrtabns_usb_alloc_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_dev\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_put_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_put_dev\22\09\09\09\09\09"
module asm "__kstrtabns_usb_put_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_intf:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_intf\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_intf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_put_intf:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_put_intf\22\09\09\09\09\09"
module asm "__kstrtabns_usb_put_intf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_intf_get_dma_device:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_intf_get_dma_device\22\09\09\09\09\09"
module asm "__kstrtabns_usb_intf_get_dma_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_lock_device_for_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_lock_device_for_reset\22\09\09\09\09\09"
module asm "__kstrtabns_usb_lock_device_for_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_get_current_frame_number:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_get_current_frame_number\22\09\09\09\09\09"
module asm "__kstrtabns_usb_get_current_frame_number:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___usb_get_extra_descriptor:\09\09\09\09\09"
module asm "\09.asciz \09\22__usb_get_extra_descriptor\22\09\09\09\09\09"
module asm "__kstrtabns___usb_get_extra_descriptor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_alloc_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_alloc_coherent\22\09\09\09\09\09"
module asm "__kstrtabns_usb_alloc_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_free_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_free_coherent\22\09\09\09\09\09"
module asm "__kstrtabns_usb_free_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usbdrv_wrap, ptr, i8 }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.find_interface_arg = type { i32, ptr }
%struct.each_dev_arg = type { ptr, ptr }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.71, i32 }
%union.anon.71 = type { ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_hub = type { ptr, ptr, %struct.kref, ptr, ptr, ptr, %struct.mutex, i32, i32, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, %struct.usb_tt, i32, i32, i8, [31 x i8], %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.spinlock, %struct.timer_list, ptr }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.usb_port = type { ptr, %struct.device, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, i8, i32, i8 }
%struct.usb_descriptor_header = type { i8, i8 }

@.str = private unnamed_addr constant [8 x i8] c"usbcore\00", align 1
@usbcore_name = dso_local local_unnamed_addr global ptr @.str, align 4
@__param_str_nousb = internal constant [14 x i8] c"usbcore.nousb\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nousb = internal global i8 0, align 1
@__param_nousb = internal constant %struct.kernel_param { ptr @__param_str_nousb, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @nousb } }, section "__param", align 4
@__UNIQUE_ID_nousbtype256 = internal constant [28 x i8] c"usbcore.parmtype=nousb:bool\00", section ".modinfo", align 1
@__kstrtab_usb_disabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_disabled = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_disabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_disabled to i32), ptr @__kstrtab_usb_disabled, ptr @__kstrtabns_usb_disabled }, section "___ksymtab_gpl+usb_disabled", align 4
@__param_str_autosuspend = internal constant [20 x i8] c"usbcore.autosuspend\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@usb_autosuspend_delay = internal global i32 2, align 4
@__param_autosuspend = internal constant %struct.kernel_param { ptr @__param_str_autosuspend, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @usb_autosuspend_delay } }, section "__param", align 4
@__UNIQUE_ID_autosuspendtype257 = internal constant [33 x i8] c"usbcore.parmtype=autosuspend:int\00", section ".modinfo", align 1
@__UNIQUE_ID_autosuspend258 = internal constant [51 x i8] c"usbcore.parm=autosuspend:default autosuspend delay\00", section ".modinfo", align 1
@__kstrtab_usb_find_common_endpoints = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_find_common_endpoints = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_find_common_endpoints = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_find_common_endpoints to i32), ptr @__kstrtab_usb_find_common_endpoints, ptr @__kstrtabns_usb_find_common_endpoints }, section "___ksymtab_gpl+usb_find_common_endpoints", align 4
@__kstrtab_usb_find_common_endpoints_reverse = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_find_common_endpoints_reverse = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_find_common_endpoints_reverse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_find_common_endpoints_reverse to i32), ptr @__kstrtab_usb_find_common_endpoints_reverse, ptr @__kstrtabns_usb_find_common_endpoints_reverse }, section "___ksymtab_gpl+usb_find_common_endpoints_reverse", align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"\017Did not find alt setting %u for intf %u, config %u\0A\00", align 1
@__kstrtab_usb_find_alt_setting = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_find_alt_setting = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_find_alt_setting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_find_alt_setting to i32), ptr @__kstrtab_usb_find_alt_setting, ptr @__kstrtabns_usb_find_alt_setting }, section "___ksymtab_gpl+usb_find_alt_setting", align 4
@__kstrtab_usb_ifnum_to_if = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_ifnum_to_if = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_ifnum_to_if = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_ifnum_to_if to i32), ptr @__kstrtab_usb_ifnum_to_if, ptr @__kstrtabns_usb_ifnum_to_if }, section "___ksymtab_gpl+usb_ifnum_to_if", align 4
@__kstrtab_usb_altnum_to_altsetting = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_altnum_to_altsetting = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_altnum_to_altsetting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_altnum_to_altsetting to i32), ptr @__kstrtab_usb_altnum_to_altsetting, ptr @__kstrtabns_usb_altnum_to_altsetting }, section "___ksymtab_gpl+usb_altnum_to_altsetting", align 4
@usb_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_usb_find_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_find_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_find_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_find_interface to i32), ptr @__kstrtab_usb_find_interface, ptr @__kstrtabns_usb_find_interface }, section "___ksymtab_gpl+usb_find_interface", align 4
@__kstrtab_usb_for_each_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_for_each_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_for_each_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_for_each_dev to i32), ptr @__kstrtab_usb_for_each_dev, ptr @__kstrtabns_usb_for_each_dev }, section "___ksymtab_gpl+usb_for_each_dev", align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"usb_device\00", align 1
@usb_device_pm_ops = internal constant %struct.dev_pm_ops { ptr @usb_dev_prepare, ptr @usb_dev_complete, ptr @usb_dev_suspend, ptr @usb_dev_resume, ptr @usb_dev_freeze, ptr @usb_dev_thaw, ptr @usb_dev_poweroff, ptr @usb_dev_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_runtime_suspend, ptr @usb_runtime_resume, ptr @usb_runtime_idle }, align 4
@usb_device_type = dso_local global %struct.device_type { ptr @.str.2, ptr null, ptr @usb_dev_uevent, ptr @usb_devnode, ptr @usb_release_dev, ptr @usb_device_pm_ops }, align 4
@usb_device_groups = external dso_local global [0 x ptr], align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"usb%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%d-%s\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_usb_alloc_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_alloc_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_alloc_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_alloc_dev to i32), ptr @__kstrtab_usb_alloc_dev, ptr @__kstrtabns_usb_alloc_dev }, section "___ksymtab_gpl+usb_alloc_dev", align 4
@__kstrtab_usb_get_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_dev to i32), ptr @__kstrtab_usb_get_dev, ptr @__kstrtabns_usb_get_dev }, section "___ksymtab_gpl+usb_get_dev", align 4
@__kstrtab_usb_put_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_put_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_put_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_put_dev to i32), ptr @__kstrtab_usb_put_dev, ptr @__kstrtabns_usb_put_dev }, section "___ksymtab_gpl+usb_put_dev", align 4
@__kstrtab_usb_get_intf = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_intf = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_intf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_intf to i32), ptr @__kstrtab_usb_get_intf, ptr @__kstrtabns_usb_get_intf }, section "___ksymtab_gpl+usb_get_intf", align 4
@__kstrtab_usb_put_intf = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_put_intf = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_put_intf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_put_intf to i32), ptr @__kstrtab_usb_put_intf, ptr @__kstrtabns_usb_put_intf }, section "___ksymtab_gpl+usb_put_intf", align 4
@__kstrtab_usb_intf_get_dma_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_intf_get_dma_device = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_intf_get_dma_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_intf_get_dma_device to i32), ptr @__kstrtab_usb_intf_get_dma_device, ptr @__kstrtabns_usb_intf_get_dma_device }, section "___ksymtab_gpl+usb_intf_get_dma_device", align 4
@__kstrtab_usb_lock_device_for_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_lock_device_for_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_lock_device_for_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_lock_device_for_reset to i32), ptr @__kstrtab_usb_lock_device_for_reset, ptr @__kstrtabns_usb_lock_device_for_reset }, section "___ksymtab_gpl+usb_lock_device_for_reset", align 4
@__kstrtab_usb_get_current_frame_number = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_get_current_frame_number = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_get_current_frame_number = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_get_current_frame_number to i32), ptr @__kstrtab_usb_get_current_frame_number, ptr @__kstrtabns_usb_get_current_frame_number }, section "___ksymtab_gpl+usb_get_current_frame_number", align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"\013%s: bogus descriptor, type %d length %d\0A\00", align 1
@__kstrtab___usb_get_extra_descriptor = external dso_local constant [0 x i8], align 1
@__kstrtabns___usb_get_extra_descriptor = external dso_local constant [0 x i8], align 1
@__ksymtab___usb_get_extra_descriptor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__usb_get_extra_descriptor to i32), ptr @__kstrtab___usb_get_extra_descriptor, ptr @__kstrtabns___usb_get_extra_descriptor }, section "___ksymtab_gpl+__usb_get_extra_descriptor", align 4
@__kstrtab_usb_alloc_coherent = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_alloc_coherent = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_alloc_coherent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_alloc_coherent to i32), ptr @__kstrtab_usb_alloc_coherent, ptr @__kstrtabns_usb_alloc_coherent }, section "___ksymtab_gpl+usb_alloc_coherent", align 4
@__kstrtab_usb_free_coherent = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_free_coherent = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_free_coherent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_free_coherent to i32), ptr @__kstrtab_usb_free_coherent, ptr @__kstrtabns_usb_free_coherent }, section "___ksymtab_gpl+usb_free_coherent", align 4
@usb_generic_driver = external dso_local global %struct.usb_device_driver, align 4
@usbfs_driver = external dso_local global %struct.usb_driver, align 4
@usb_bus_nb = internal global %struct.notifier_block { ptr @usb_bus_notify, ptr null, i32 0 }, align 4
@usb_bus_idr = external dso_local global %struct.idr, align 4
@__initcall__kmod_usbcore__259_1073_usb_init4 = internal global ptr @usb_init, section ".initcall4.init", align 4
@__exitcall_usb_exit = internal global ptr @usb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file260 = internal constant [38 x i8] c"usbcore.file=drivers/usb/core/usbcore\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [20 x i8] c"usbcore.license=GPL\00", section ".modinfo", align 1
@usb_if_device_type = external dso_local global %struct.device_type, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"BUSNUM=%03d\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"DEVNUM=%03d\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"bus/usb/%03d/%03d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"\016%s: USB support disabled\0A\00", align 1
@usbfs_devices_fops = external dso_local constant %struct.file_operations, align 4
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_autosuspend258, ptr @__UNIQUE_ID_autosuspendtype257, ptr @__UNIQUE_ID_file260, ptr @__UNIQUE_ID_license261, ptr @__UNIQUE_ID_nousbtype256, ptr @__exitcall_usb_exit, ptr @__initcall__kmod_usbcore__259_1073_usb_init4, ptr @__ksymtab___usb_get_extra_descriptor, ptr @__ksymtab_usb_alloc_coherent, ptr @__ksymtab_usb_alloc_dev, ptr @__ksymtab_usb_altnum_to_altsetting, ptr @__ksymtab_usb_disabled, ptr @__ksymtab_usb_find_alt_setting, ptr @__ksymtab_usb_find_common_endpoints, ptr @__ksymtab_usb_find_common_endpoints_reverse, ptr @__ksymtab_usb_find_interface, ptr @__ksymtab_usb_for_each_dev, ptr @__ksymtab_usb_free_coherent, ptr @__ksymtab_usb_get_current_frame_number, ptr @__ksymtab_usb_get_dev, ptr @__ksymtab_usb_get_intf, ptr @__ksymtab_usb_ifnum_to_if, ptr @__ksymtab_usb_intf_get_dma_device, ptr @__ksymtab_usb_lock_device_for_reset, ptr @__ksymtab_usb_put_dev, ptr @__ksymtab_usb_put_intf, ptr @__param_autosuspend, ptr @__param_nousb, ptr @usb_exit], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_disabled() #0 {
  %1 = load i8, ptr @nousb, align 1, !range !8
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_find_common_endpoints(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  store ptr null, ptr %1, align 4
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp eq ptr %2, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store ptr null, ptr %2, align 4
  br label %11

11:                                               ; preds = %10, %8
  %12 = icmp eq ptr %3, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  store ptr null, ptr %3, align 4
  br label %14

14:                                               ; preds = %13, %11
  %15 = icmp eq ptr %4, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  store ptr null, ptr %4, align 4
  br label %17

17:                                               ; preds = %16, %14
  %18 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %80, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.usb_host_interface, ptr %0, i32 0, i32 3
  br label %23

23:                                               ; preds = %75, %21
  %24 = phi i32 [ 0, %21 ], [ %76, %75 ]
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr %struct.usb_host_endpoint, ptr %25, i32 %24
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %26, i32 0, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 3
  %30 = zext i8 %29 to i32
  switch i32 %30, label %75 [
    i32 2, label %31
    i32 3, label %44
  ]

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %26, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = icmp sgt i8 %33, -1
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  br i1 %6, label %75, label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %1, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %75

39:                                               ; preds = %36
  store ptr %26, ptr %1, align 4
  br label %60

40:                                               ; preds = %31
  br i1 %9, label %75, label %41

41:                                               ; preds = %40
  %42 = load ptr, ptr %2, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %75

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %26, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = icmp sgt i8 %46, -1
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  br i1 %12, label %75, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr %3, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %75

52:                                               ; preds = %44
  br i1 %15, label %75, label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %4, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %75

56:                                               ; preds = %53, %49, %41
  %57 = phi ptr [ %2, %41 ], [ %3, %49 ], [ %4, %53 ]
  store ptr %26, ptr %57, align 4
  br i1 %6, label %63, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %1, align 4
  br label %60

60:                                               ; preds = %58, %39
  %61 = phi ptr [ %59, %58 ], [ %26, %39 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %60, %56
  br i1 %9, label %67, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %2, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %64, %63
  br i1 %12, label %71, label %68

68:                                               ; preds = %67
  %69 = load ptr, ptr %3, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %68, %67
  br i1 %15, label %80, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %4, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72, %68, %64, %60, %53, %52, %49, %48, %41, %40, %36, %35, %23
  %76 = add nuw nsw i32 %24, 1
  %77 = load i8, ptr %18, align 4
  %78 = zext i8 %77 to i32
  %79 = icmp ult i32 %76, %78
  br i1 %79, label %23, label %80

80:                                               ; preds = %75, %72, %71, %17
  %81 = phi i32 [ -6, %17 ], [ 0, %71 ], [ -6, %75 ], [ 0, %72 ]
  ret i32 %81
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_find_common_endpoints_reverse(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  store ptr null, ptr %1, align 4
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp eq ptr %2, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store ptr null, ptr %2, align 4
  br label %11

11:                                               ; preds = %10, %8
  %12 = icmp eq ptr %3, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  store ptr null, ptr %3, align 4
  br label %14

14:                                               ; preds = %13, %11
  %15 = icmp eq ptr %4, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  store ptr null, ptr %4, align 4
  br label %17

17:                                               ; preds = %16, %14
  %18 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %79, label %21

21:                                               ; preds = %17
  %22 = zext i8 %19 to i32
  %23 = getelementptr inbounds %struct.usb_host_interface, ptr %0, i32 0, i32 3
  br label %24

24:                                               ; preds = %77, %21
  %25 = phi i32 [ %22, %21 ], [ %26, %77 ]
  %26 = add nsw i32 %25, -1
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr %struct.usb_host_endpoint, ptr %27, i32 %26
  %29 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %28, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 3
  %32 = zext i8 %31 to i32
  switch i32 %32, label %77 [
    i32 2, label %33
    i32 3, label %46
  ]

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %28, i32 0, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = icmp sgt i8 %35, -1
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  br i1 %6, label %77, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %1, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %77

41:                                               ; preds = %38
  store ptr %28, ptr %1, align 4
  br label %62

42:                                               ; preds = %33
  br i1 %9, label %77, label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %2, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %58, label %77

46:                                               ; preds = %24
  %47 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %28, i32 0, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = icmp sgt i8 %48, -1
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  br i1 %12, label %77, label %51

51:                                               ; preds = %50
  %52 = load ptr, ptr %3, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %77

54:                                               ; preds = %46
  br i1 %15, label %77, label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr %4, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %55, %51, %43
  %59 = phi ptr [ %2, %43 ], [ %3, %51 ], [ %4, %55 ]
  store ptr %28, ptr %59, align 4
  br i1 %6, label %65, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %1, align 4
  br label %62

62:                                               ; preds = %60, %41
  %63 = phi ptr [ %61, %60 ], [ %28, %41 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %62, %58
  br i1 %9, label %69, label %66

66:                                               ; preds = %65
  %67 = load ptr, ptr %2, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %66, %65
  br i1 %12, label %73, label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr %3, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70, %69
  br i1 %15, label %79, label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr %4, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %70, %66, %62, %55, %54, %51, %50, %43, %42, %38, %37, %24
  %78 = icmp ugt i32 %25, 1
  br i1 %78, label %24, label %79

79:                                               ; preds = %77, %74, %73, %17
  %80 = phi i32 [ -6, %17 ], [ 0, %73 ], [ 0, %74 ], [ -6, %77 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_find_alt_setting(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.usb_config_descriptor, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %42, label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i32 %14, 1
  %12 = icmp eq i32 %11, %8
  br i1 %12, label %42, label %13

13:                                               ; preds = %10, %5
  %14 = phi i32 [ %11, %10 ], [ 0, %5 ]
  %15 = getelementptr %struct.usb_host_config, ptr %0, i32 0, i32 4, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_interface_cache, ptr %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %10

22:                                               ; preds = %13
  %23 = icmp eq ptr %16, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %22
  %25 = load i32, ptr %16, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %30

27:                                               ; preds = %30
  %28 = add nuw i32 %31, 1
  %29 = icmp eq i32 %28, %25
  br i1 %29, label %37, label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %28, %27 ], [ 0, %24 ]
  %32 = getelementptr %struct.usb_interface_cache, ptr %16, i32 0, i32 2, i32 %31
  %33 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %32, i32 0, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, %2
  br i1 %36, label %42, label %27

37:                                               ; preds = %27, %24
  %38 = getelementptr inbounds %struct.usb_config_descriptor, ptr %0, i32 0, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %2, i32 noundef %1, i32 noundef %40) #12
  br label %42

42:                                               ; preds = %37, %30, %22, %10, %5, %3
  %43 = phi ptr [ null, %37 ], [ null, %3 ], [ null, %22 ], [ null, %5 ], [ %32, %30 ], [ null, %10 ]
  ret ptr %43
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @usb_ifnum_to_if(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_config_descriptor, ptr %4, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %23, label %14

11:                                               ; preds = %14
  %12 = add nuw nsw i32 %15, 1
  %13 = icmp eq i32 %12, %9
  br i1 %13, label %23, label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ %12, %11 ], [ 0, %6 ]
  %16 = getelementptr %struct.usb_host_config, ptr %4, i32 0, i32 3, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 2
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %11

23:                                               ; preds = %14, %11, %6, %2
  %24 = phi ptr [ null, %2 ], [ null, %6 ], [ %17, %14 ], [ null, %11 ]
  ret ptr %24
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @usb_altnum_to_altsetting(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  br label %11

8:                                                ; preds = %11
  %9 = add nuw i32 %12, 1
  %10 = icmp eq i32 %9, %4
  br i1 %10, label %18, label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ 0, %6 ], [ %9, %8 ]
  %13 = getelementptr %struct.usb_host_interface, ptr %7, i32 %12
  %14 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %13, i32 0, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %8

18:                                               ; preds = %11, %8, %2
  %19 = phi ptr [ null, %2 ], [ null, %8 ], [ %13, %11 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_find_interface(ptr noundef %0, i32 noundef %1) #3 {
  %3 = alloca %struct.find_interface_arg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i32 %1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12
  %5 = getelementptr inbounds %struct.find_interface_arg, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = call ptr @bus_find_device(ptr noundef nonnull @usb_bus_type, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @__find_interface) #13
  call void @put_device(ptr noundef %6) #13
  %7 = icmp eq ptr %6, null
  %8 = getelementptr i8, ptr %6, i32 -32
  %9 = select i1 %7, ptr null, ptr %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @__find_interface(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @usb_if_device_type
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.find_interface_arg, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %0, i32 -16
  %14 = load i32, ptr %13, align 8
  %15 = load i32, ptr %1, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %12, %6, %2
  %19 = phi i32 [ %17, %12 ], [ 0, %2 ], [ 0, %6 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_for_each_dev(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.each_dev_arg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.each_dev_arg, ptr %3, i32 0, i32 1
  store ptr %1, ptr %4, align 4
  %5 = call i32 @bus_for_each_dev(ptr noundef nonnull @usb_bus_type, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @__each_dev) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__each_dev(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @usb_device_type
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.each_dev_arg, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -128
  %10 = load ptr, ptr %1, align 4
  %11 = tail call i32 %8(ptr noundef %9, ptr noundef %10) #13
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ %11, %6 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dev_uevent(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usb_bus, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %6) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 -128
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %11) #13
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 -12
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i32 [ -12, %2 ], [ %14, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @usb_devnode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -128
  %6 = getelementptr i8, ptr %0, i32 -64
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %5, align 8
  %11 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.10, i32 noundef %9, i32 noundef %10) #13
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_release_dev(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = load ptr, ptr %3, align 8
  tail call void @usb_destroy_configuration(ptr noundef %2) #13
  tail call void @usb_release_bos_descriptor(ptr noundef %2) #13
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  tail call void @of_node_put(ptr noundef %6) #13
  tail call void @usb_put_hcd(ptr noundef %4) #13
  %7 = getelementptr i8, ptr %0, i32 648
  %8 = load ptr, ptr %7, align 8
  tail call void @kfree(ptr noundef %8) #13
  %9 = getelementptr i8, ptr %0, i32 652
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #13
  %11 = getelementptr i8, ptr %0, i32 656
  %12 = load ptr, ptr %11, align 8
  tail call void @kfree(ptr noundef %12) #13
  tail call void @kfree(ptr noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_alloc_dev(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 880) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %139, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @usb_get_hcd(ptr noundef %1) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #13
  br label %139

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.hc_driver, ptr %13, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ne ptr %15, null
  %17 = icmp ne ptr %0, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = tail call i32 %15(ptr noundef %1, ptr noundef nonnull %5) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @usb_put_hcd(ptr noundef %1) #13
  tail call void @kfree(ptr noundef nonnull %5) #13
  br label %139

23:                                               ; preds = %19, %11
  %24 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void @device_initialize(ptr noundef %24) #13
  %25 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 5
  store ptr @usb_bus_type, ptr %25, align 4
  %26 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 4
  store ptr @usb_device_type, ptr %26, align 8
  %27 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 32
  store ptr @usb_device_groups, ptr %27, align 8
  %28 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 3
  store i32 1, ptr %28, align 8
  %29 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 47
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 37
  store volatile i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 13
  %32 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 13, i32 4
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 13, i32 4, i32 1
  store ptr %32, ptr %33, align 8
  store i8 7, ptr %31, align 4
  %34 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 13, i32 0, i32 1
  store i8 5, ptr %34, align 1
  tail call void @usb_enable_endpoint(ptr noundef nonnull %5, ptr noundef %31, i1 noundef zeroext false) #13
  %35 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 28
  %36 = load i16, ptr %35, align 1
  %37 = or i16 %36, 1
  store i16 %37, ptr %35, align 1
  br i1 %17, label %48, label %38, !prof !9

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 1
  %40 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 1
  store i8 48, ptr %40, align 4
  %41 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 2
  store i32 0, ptr %41, align 4
  %42 = load ptr, ptr %1, align 4
  %43 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 1
  store ptr %42, ptr %43, align 4
  %44 = load ptr, ptr %39, align 4
  tail call void @device_set_of_node_from_dev(ptr noundef %24, ptr noundef %44) #13
  %45 = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %24, ptr noundef nonnull @.str.3, i32 noundef %46) #13
  br label %89

48:                                               ; preds = %23
  %49 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 1
  %50 = load i8, ptr %49, align 4
  %51 = icmp eq i8 %50, 48
  %52 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 1
  br i1 %51, label %53, label %55

53:                                               ; preds = %48
  %54 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %52, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %2)
  br label %71

55:                                               ; preds = %48
  %56 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %52, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %49, i32 noundef %2)
  %57 = icmp ult i32 %2, 15
  %58 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 26
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 2
  %64 = add nsw i32 %63, -4
  br i1 %57, label %65, label %68

65:                                               ; preds = %55
  %66 = shl i32 %2, %64
  %67 = add i32 %66, %59
  br label %71

68:                                               ; preds = %55
  %69 = shl i32 15, %64
  %70 = add i32 %69, %59
  br label %71

71:                                               ; preds = %68, %65, %53
  %72 = phi i32 [ %67, %65 ], [ %70, %68 ], [ 0, %53 ]
  %73 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 2
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %75 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 1
  store ptr %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 1
  %79 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %24, ptr noundef nonnull @.str.6, i32 noundef %77, ptr noundef %78) #13
  %80 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = tail call i32 @usb_hcd_find_raw_port_number(ptr noundef %1, i32 noundef %2) #13
  br label %85

85:                                               ; preds = %83, %71
  %86 = phi i32 [ %2, %71 ], [ %84, %83 ]
  %87 = tail call ptr @usb_of_get_device_node(ptr noundef nonnull %0, i32 noundef %86) #13
  %88 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 25
  store ptr %87, ptr %88, align 8
  br label %89

89:                                               ; preds = %85, %38
  %90 = trunc i32 %2 to i8
  %91 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 25
  store i8 %90, ptr %91, align 2
  %92 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 12
  store ptr %1, ptr %92, align 8
  %93 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 11
  store ptr %0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 34
  store volatile ptr %94, ptr %94, align 4
  %95 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 34, i32 1
  store ptr %94, ptr %95, align 8
  %96 = load i32, ptr @usb_autosuspend_delay, align 4
  %97 = mul i32 %96, 1000
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %24, i32 noundef %97) #13
  %98 = load volatile i32, ptr @jiffies, align 64
  %99 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 39
  store i32 %98, ptr %99, align 4
  %100 = load volatile i32, ptr @jiffies, align 64
  %101 = sub i32 0, %100
  %102 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 38
  store i32 %101, ptr %102, align 8
  %103 = load ptr, ptr %93, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %89
  %106 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 13
  %107 = load i32, ptr %106, align 4
  switch i32 %107, label %108 [
    i32 2, label %112
    i32 1, label %110
  ]

108:                                              ; preds = %105
  %109 = load i16, ptr %35, align 1
  br label %127

110:                                              ; preds = %105, %89
  %111 = load i16, ptr %35, align 1
  br label %125

112:                                              ; preds = %105
  %113 = tail call ptr @usb_hub_to_struct_hub(ptr noundef nonnull %103) #13
  %114 = getelementptr inbounds %struct.usb_hub, ptr %113, i32 0, i32 27
  %115 = load ptr, ptr %114, align 4
  %116 = load i8, ptr %91, align 2
  %117 = zext i8 %116 to i32
  %118 = add nsw i32 %117, -1
  %119 = getelementptr ptr, ptr %115, i32 %118
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.usb_port, ptr %120, i32 0, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 2
  %124 = load i16, ptr %35, align 1
  br i1 %123, label %125, label %127

125:                                              ; preds = %112, %110
  %126 = phi i16 [ %111, %110 ], [ %124, %112 ]
  br label %127

127:                                              ; preds = %125, %112, %108
  %128 = phi i16 [ %126, %125 ], [ %124, %112 ], [ %109, %108 ]
  %129 = phi i16 [ 8, %125 ], [ 0, %112 ], [ 0, %108 ]
  %130 = and i16 %128, -9
  %131 = or i16 %130, %129
  store i16 %131, ptr %35, align 1
  br i1 %17, label %132, label %139

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 14
  %134 = load i16, ptr %133, align 8
  %135 = lshr i16 %134, 1
  %136 = and i16 %135, 32
  %137 = and i16 %131, -33
  %138 = or i16 %136, %137
  store i16 %138, ptr %35, align 1
  br label %139

139:                                              ; preds = %132, %127, %22, %10, %3
  %140 = phi ptr [ null, %22 ], [ null, %10 ], [ null, %3 ], [ %5, %132 ], [ %5, %127 ]
  ret ptr %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_hcd(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_endpoint(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_of_node_from_dev(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_find_raw_port_number(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_of_get_device_node(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_get_dev(ptr noundef returned %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %5 = tail call ptr @get_device(ptr noundef %4) #13
  br label %6

6:                                                ; preds = %3, %1
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_put_dev(ptr noundef %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void @put_device(ptr noundef %4) #13
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_get_intf(ptr noundef returned %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %5 = tail call ptr @get_device(ptr noundef %4) #13
  br label %6

6:                                                ; preds = %3, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_put_intf(ptr noundef %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  tail call void @put_device(ptr noundef %4) #13
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_intf_get_dma_device(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -64
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @get_device(ptr noundef %9) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %7
  tail call void @put_device(ptr noundef %10) #13
  br label %17

17:                                               ; preds = %16, %12, %1
  %18 = phi ptr [ null, %16 ], [ null, %1 ], [ %10, %12 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_lock_device_for_reset(ptr noundef %0, ptr noundef readonly %1) #3 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = add i32 %3, 100
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %8 [
    i32 0, label %33
    i32 8, label %7
  ]

7:                                                ; preds = %2
  br label %33

8:                                                ; preds = %2
  %9 = icmp eq ptr %1, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %13 [
    i32 3, label %33
    i32 0, label %33
  ]

13:                                               ; preds = %10, %8
  %14 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 9
  %15 = tail call i32 @mutex_trylock(ptr noundef %14) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 5
  br label %19

19:                                               ; preds = %28, %17
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = sub i32 %4, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  tail call void @msleep(i32 noundef 15) #13
  %24 = load i32, ptr %5, align 8
  switch i32 %24, label %25 [
    i32 0, label %31
    i32 8, label %33
  ]

25:                                               ; preds = %23
  br i1 %9, label %28, label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %18, align 4
  switch i32 %27, label %28 [
    i32 3, label %31
    i32 0, label %31
  ]

28:                                               ; preds = %26, %25
  %29 = tail call i32 @mutex_trylock(ptr noundef %14) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %19, label %31

31:                                               ; preds = %28, %26, %26, %23, %19
  %32 = phi i32 [ 0, %28 ], [ -4, %26 ], [ -4, %26 ], [ -19, %23 ], [ -16, %19 ]
  br label %33

33:                                               ; preds = %31, %23, %13, %10, %10, %7, %2
  %34 = phi i32 [ -113, %7 ], [ -19, %2 ], [ -4, %10 ], [ -4, %10 ], [ 0, %13 ], [ %32, %31 ], [ -113, %23 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_get_current_frame_number(ptr noundef %0) #3 {
  %2 = tail call i32 @usb_hcd_get_frame_number(ptr noundef %0) #13
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_get_frame_number(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__usb_get_extra_descriptor(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #3 {
  %6 = icmp ugt i32 %1, 1
  br i1 %6, label %7, label %33

7:                                                ; preds = %29, %5
  %8 = phi ptr [ %30, %29 ], [ %0, %5 ]
  %9 = phi i32 [ %31, %29 ], [ %1, %5 ]
  %10 = load i8, ptr %8, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ult i8 %10, 2
  %13 = icmp ult i32 %9, %11
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %7
  %16 = zext i8 %10 to i32
  %17 = load ptr, ptr @usbcore_name, align 4
  %18 = getelementptr inbounds %struct.usb_descriptor_header, ptr %8, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %17, i32 noundef %20, i32 noundef %16) #12
  br label %33

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.usb_descriptor_header, ptr %8, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = icmp ne i8 %24, %2
  %26 = icmp ult i32 %11, %4
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store ptr %8, ptr %3, align 4
  br label %33

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %8, i32 %11
  %31 = sub i32 %9, %11
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %7, label %33

33:                                               ; preds = %29, %28, %15, %5
  %34 = phi i32 [ -1, %15 ], [ 0, %28 ], [ -1, %5 ], [ -1, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_alloc_coherent(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @hcd_buffer_alloc(ptr noundef nonnull %8, i32 noundef %1, i32 noundef %2, ptr noundef %3) #13
  br label %12

12:                                               ; preds = %10, %6, %4
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %4 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hcd_buffer_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_free_coherent(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %2, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @hcd_buffer_free(ptr noundef nonnull %8, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3) #13
  br label %13

13:                                               ; preds = %12, %6, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hcd_buffer_free(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @usb_exit() #9 section ".exit.text" {
  %1 = load i8, ptr @nousb, align 1, !range !8
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  tail call void @usb_release_quirk_list() #13
  tail call void @usb_deregister_device_driver(ptr noundef nonnull @usb_generic_driver) #13
  tail call void @usb_major_cleanup() #13
  tail call void @usb_deregister(ptr noundef nonnull @usbfs_driver) #13
  tail call void @usb_devio_cleanup() #13
  tail call void @usb_hub_cleanup() #13
  %4 = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @usb_bus_type, ptr noundef nonnull @usb_bus_nb) #13
  tail call void @bus_unregister(ptr noundef nonnull @usb_bus_type) #13
  %5 = load ptr, ptr @usb_debug_root, align 4
  %6 = tail call ptr @debugfs_lookup(ptr noundef nonnull @.str.11, ptr noundef %5) #13
  tail call void @debugfs_remove(ptr noundef %6) #13
  tail call void @idr_destroy(ptr noundef nonnull @usb_bus_idr) #13
  br label %7

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_release_quirk_list() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_device_driver(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_major_cleanup() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_devio_cleanup() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hub_cleanup() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @usb_init() #9 section ".init.text" {
  %1 = load i8, ptr @nousb, align 1, !range !8
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @usbcore_name, align 4
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %4) #12
  br label %45

6:                                                ; preds = %0
  tail call void @usb_init_pool_max() #13
  %7 = load ptr, ptr @usb_debug_root, align 4
  %8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef %7, ptr noundef null, ptr noundef nonnull @usbfs_devices_fops) #13
  %9 = tail call i32 @bus_register(ptr noundef nonnull @usb_bus_type) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %6
  %12 = tail call i32 @bus_register_notifier(ptr noundef nonnull @usb_bus_type, ptr noundef nonnull @usb_bus_nb) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = tail call i32 @usb_major_init() #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = tail call i32 @usb_register_driver(ptr noundef nonnull @usbfs_driver, ptr noundef null, ptr noundef nonnull @.str) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = tail call i32 @usb_devio_init() #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = tail call i32 @usb_hub_init() #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = tail call i32 @usb_register_device_driver(ptr noundef nonnull @usb_generic_driver, ptr noundef null) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %26
  tail call void @usb_hub_cleanup() #13
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ %24, %23 ], [ %27, %29 ]
  tail call void @usb_devio_cleanup() #13
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi i32 [ %21, %20 ], [ %31, %30 ]
  tail call void @usb_deregister(ptr noundef nonnull @usbfs_driver) #13
  br label %34

34:                                               ; preds = %32, %17
  %35 = phi i32 [ %18, %17 ], [ %33, %32 ]
  tail call void @usb_major_cleanup() #13
  br label %36

36:                                               ; preds = %34, %14
  %37 = phi i32 [ %15, %14 ], [ %35, %34 ]
  %38 = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @usb_bus_type, ptr noundef nonnull @usb_bus_nb) #13
  br label %39

39:                                               ; preds = %36, %11
  %40 = phi i32 [ %12, %11 ], [ %37, %36 ]
  tail call void @bus_unregister(ptr noundef nonnull @usb_bus_type) #13
  br label %41

41:                                               ; preds = %39, %6
  %42 = phi i32 [ %9, %6 ], [ %40, %39 ]
  %43 = load ptr, ptr @usb_debug_root, align 4
  %44 = tail call ptr @debugfs_lookup(ptr noundef nonnull @.str.11, ptr noundef %43) #13
  tail call void @debugfs_remove(ptr noundef %44) #13
  br label %45

45:                                               ; preds = %41, %26, %3
  %46 = phi i32 [ 0, %3 ], [ %42, %41 ], [ 0, %26 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_destroy_configuration(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_release_bos_descriptor(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @usb_dev_prepare(ptr nocapture noundef readnone %0) #10 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_dev_complete(ptr noundef %0) #3 {
  %2 = tail call i32 @usb_resume_complete(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dev_suspend(ptr noundef %0) #3 {
  %2 = tail call i32 @usb_suspend(ptr noundef %0, [1 x i32] [i32 2]) #13
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dev_resume(ptr noundef %0) #3 {
  %2 = tail call i32 @usb_resume(ptr noundef %0, [1 x i32] [i32 16]) #13
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dev_freeze(ptr noundef %0) #3 {
  %2 = tail call i32 @usb_suspend(ptr noundef %0, [1 x i32] [i32 1]) #13
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dev_thaw(ptr noundef %0) #3 {
  %2 = tail call i32 @usb_resume(ptr noundef %0, [1 x i32] [i32 32]) #13
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dev_poweroff(ptr noundef %0) #3 {
  %2 = tail call i32 @usb_suspend(ptr noundef %0, [1 x i32] [i32 4]) #13
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_dev_restore(ptr noundef %0) #3 {
  %2 = tail call i32 @usb_resume(ptr noundef %0, [1 x i32] [i32 64]) #13
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_runtime_suspend(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_runtime_resume(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_runtime_idle(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_resume_complete(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_resume(ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_hub_to_struct_hub(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_bus_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #3 {
  switch i32 %1, label %25 [
    i32 1, label %4
    i32 2, label %15
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, @usb_device_type
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %2, i32 -128
  %10 = tail call i32 @usb_create_sysfs_dev_files(ptr noundef %9) #13
  br label %25

11:                                               ; preds = %4
  %12 = icmp eq ptr %6, @usb_if_device_type
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = getelementptr i8, ptr %2, i32 -32
  tail call void @usb_create_sysfs_intf_files(ptr noundef %14) #13
  br label %25

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, @usb_device_type
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %2, i32 -128
  tail call void @usb_remove_sysfs_dev_files(ptr noundef %20) #13
  br label %25

21:                                               ; preds = %15
  %22 = icmp eq ptr %17, @usb_if_device_type
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr i8, ptr %2, i32 -32
  tail call void @usb_remove_sysfs_intf_files(ptr noundef %24) #13
  br label %25

25:                                               ; preds = %23, %21, %19, %13, %11, %8, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_create_sysfs_dev_files(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_create_sysfs_intf_files(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_sysfs_dev_files(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_sysfs_intf_files(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_init_pool_max() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_major_init() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_devio_init() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_init() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_device_driver(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
