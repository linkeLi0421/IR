; ModuleID = '/llk/IR/drivers/usb/core/driver.c_pt.bc'
source_filename = "../drivers/usb/core/driver.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_store_new_id:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_store_new_id\22\09\09\09\09\09"
module asm "__kstrtabns_usb_store_new_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_show_dynids:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_show_dynids\22\09\09\09\09\09"
module asm "__kstrtabns_usb_show_dynids:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_driver_claim_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_driver_claim_interface\22\09\09\09\09\09"
module asm "__kstrtabns_usb_driver_claim_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_driver_release_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_driver_release_interface\22\09\09\09\09\09"
module asm "__kstrtabns_usb_driver_release_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_match_one_id:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_match_one_id\22\09\09\09\09\09"
module asm "__kstrtabns_usb_match_one_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_match_id:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_match_id\22\09\09\09\09\09"
module asm "__kstrtabns_usb_match_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_device_match_id:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_device_match_id\22\09\09\09\09\09"
module asm "__kstrtabns_usb_device_match_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_register_device_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_register_device_driver\22\09\09\09\09\09"
module asm "__kstrtabns_usb_register_device_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_deregister_device_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_deregister_device_driver\22\09\09\09\09\09"
module asm "__kstrtabns_usb_deregister_device_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_usb_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_deregister\22\09\09\09\09\09"
module asm "__kstrtabns_usb_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_enable_autosuspend:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_enable_autosuspend\22\09\09\09\09\09"
module asm "__kstrtabns_usb_enable_autosuspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_disable_autosuspend:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_disable_autosuspend\22\09\09\09\09\09"
module asm "__kstrtabns_usb_disable_autosuspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_autopm_put_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_autopm_put_interface\22\09\09\09\09\09"
module asm "__kstrtabns_usb_autopm_put_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_autopm_put_interface_async:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_autopm_put_interface_async\22\09\09\09\09\09"
module asm "__kstrtabns_usb_autopm_put_interface_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_autopm_put_interface_no_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_autopm_put_interface_no_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_usb_autopm_put_interface_no_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_autopm_get_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_autopm_get_interface\22\09\09\09\09\09"
module asm "__kstrtabns_usb_autopm_get_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_autopm_get_interface_async:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_autopm_get_interface_async\22\09\09\09\09\09"
module asm "__kstrtabns_usb_autopm_get_interface_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_autopm_get_interface_no_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_autopm_get_interface_no_resume\22\09\09\09\09\09"
module asm "__kstrtabns_usb_autopm_get_interface_no_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.usb_device_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usbdrv_wrap, ptr, i8 }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.usb_dynid = type { %struct.list_head, %struct.usb_device_id }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.62, i32 }
%union.anon.62 = type { ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"%x %x %x %x %x\00", align 1
@__kstrtab_usb_store_new_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_store_new_id = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_store_new_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_store_new_id to i32), ptr @__kstrtab_usb_store_new_id, ptr @__kstrtabns_usb_store_new_id }, section "___ksymtab_gpl+usb_store_new_id", align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%04x %04x %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%04x %04x\0A\00", align 1
@__kstrtab_usb_show_dynids = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_show_dynids = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_show_dynids = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_show_dynids to i32), ptr @__kstrtab_usb_show_dynids, ptr @__kstrtabns_usb_show_dynids }, section "___ksymtab_gpl+usb_show_dynids", align 4
@__kstrtab_usb_driver_claim_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_driver_claim_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_driver_claim_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_driver_claim_interface to i32), ptr @__kstrtab_usb_driver_claim_interface, ptr @__kstrtabns_usb_driver_claim_interface }, section "___ksymtab_gpl+usb_driver_claim_interface", align 4
@__kstrtab_usb_driver_release_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_driver_release_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_driver_release_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_driver_release_interface to i32), ptr @__kstrtab_usb_driver_release_interface, ptr @__kstrtabns_usb_driver_release_interface }, section "___ksymtab_gpl+usb_driver_release_interface", align 4
@__kstrtab_usb_match_one_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_match_one_id = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_match_one_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_match_one_id to i32), ptr @__kstrtab_usb_match_one_id, ptr @__kstrtabns_usb_match_one_id }, section "___ksymtab_gpl+usb_match_one_id", align 4
@__kstrtab_usb_match_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_match_id = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_match_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_match_id to i32), ptr @__kstrtab_usb_match_id, ptr @__kstrtabns_usb_match_id }, section "___ksymtab_gpl+usb_match_id", align 4
@__kstrtab_usb_device_match_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_device_match_id = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_device_match_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_device_match_id to i32), ptr @__kstrtab_usb_device_match_id, ptr @__kstrtabns_usb_device_match_id }, section "___ksymtab_gpl+usb_device_match_id", align 4
@usb_bus_type = dso_local global %struct.bus_type { ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_device_match, ptr @usb_uevent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 1 }, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"\016%s: registered new device driver %s\0A\00", align 1
@usbcore_name = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"\013%s: error %d registering device driver %s\0A\00", align 1
@__kstrtab_usb_register_device_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_register_device_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_register_device_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_register_device_driver to i32), ptr @__kstrtab_usb_register_device_driver, ptr @__kstrtabns_usb_register_device_driver }, section "___ksymtab_gpl+usb_register_device_driver", align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"\016%s: deregistering device driver %s\0A\00", align 1
@__kstrtab_usb_deregister_device_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_deregister_device_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_deregister_device_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_deregister_device_driver to i32), ptr @__kstrtab_usb_deregister_device_driver, ptr @__kstrtabns_usb_deregister_device_driver }, section "___ksymtab_gpl+usb_deregister_device_driver", align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"\016%s: registered new interface driver %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"\013%s: error %d registering interface driver %s\0A\00", align 1
@__kstrtab_usb_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_register_driver to i32), ptr @__kstrtab_usb_register_driver, ptr @__kstrtabns_usb_register_driver }, section "___ksymtab_gpl+usb_register_driver", align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"\016%s: deregistering interface driver %s\0A\00", align 1
@__kstrtab_usb_deregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_deregister = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_deregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_deregister to i32), ptr @__kstrtab_usb_deregister, ptr @__kstrtabns_usb_deregister }, section "___ksymtab_gpl+usb_deregister", align 4
@__kstrtab_usb_enable_autosuspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_enable_autosuspend = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_enable_autosuspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_enable_autosuspend to i32), ptr @__kstrtab_usb_enable_autosuspend, ptr @__kstrtabns_usb_enable_autosuspend }, section "___ksymtab_gpl+usb_enable_autosuspend", align 4
@__kstrtab_usb_disable_autosuspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_disable_autosuspend = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_disable_autosuspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_disable_autosuspend to i32), ptr @__kstrtab_usb_disable_autosuspend, ptr @__kstrtabns_usb_disable_autosuspend }, section "___ksymtab_gpl+usb_disable_autosuspend", align 4
@__kstrtab_usb_autopm_put_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_autopm_put_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_autopm_put_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_autopm_put_interface to i32), ptr @__kstrtab_usb_autopm_put_interface, ptr @__kstrtabns_usb_autopm_put_interface }, section "___ksymtab_gpl+usb_autopm_put_interface", align 4
@__kstrtab_usb_autopm_put_interface_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_autopm_put_interface_async = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_autopm_put_interface_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_autopm_put_interface_async to i32), ptr @__kstrtab_usb_autopm_put_interface_async, ptr @__kstrtabns_usb_autopm_put_interface_async }, section "___ksymtab_gpl+usb_autopm_put_interface_async", align 4
@__kstrtab_usb_autopm_put_interface_no_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_autopm_put_interface_no_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_autopm_put_interface_no_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_autopm_put_interface_no_suspend to i32), ptr @__kstrtab_usb_autopm_put_interface_no_suspend, ptr @__kstrtabns_usb_autopm_put_interface_no_suspend }, section "___ksymtab_gpl+usb_autopm_put_interface_no_suspend", align 4
@__kstrtab_usb_autopm_get_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_autopm_get_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_autopm_get_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_autopm_get_interface to i32), ptr @__kstrtab_usb_autopm_get_interface, ptr @__kstrtabns_usb_autopm_get_interface }, section "___ksymtab_gpl+usb_autopm_get_interface", align 4
@__kstrtab_usb_autopm_get_interface_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_autopm_get_interface_async = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_autopm_get_interface_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_autopm_get_interface_async to i32), ptr @__kstrtab_usb_autopm_get_interface_async, ptr @__kstrtabns_usb_autopm_get_interface_async }, section "___ksymtab_gpl+usb_autopm_get_interface_async", align 4
@__kstrtab_usb_autopm_get_interface_no_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_autopm_get_interface_no_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_autopm_get_interface_no_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_autopm_get_interface_no_resume to i32), ptr @__kstrtab_usb_autopm_get_interface_no_resume, ptr @__kstrtabns_usb_autopm_get_interface_no_resume }, section "___ksymtab_gpl+usb_autopm_get_interface_no_resume", align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@usb_generic_driver = external dso_local global %struct.usb_device_driver, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"Failed to reprobe device (error %d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Device is not authorized for usage\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Interface %d is not authorized for usage\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"%s Failed to disable LPM for driver %s\0A\00", align 1
@__func__.usb_probe_interface = private unnamed_addr constant [20 x i8] c"usb_probe_interface\00", align 1
@driver_attr_new_id = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @new_id_show, ptr @new_id_store }, align 4
@driver_attr_remove_id = internal global %struct.driver_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @remove_id_show, ptr @remove_id_store }, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"new_id\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"remove_id\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%x %x\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"rebind failed: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Failed to suspend device, error %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"suspend error %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"%s error %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"reset_resume\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"resume error %d\0A\00", align 1
@usb_device_type = external dso_local global %struct.device_type, align 4
@usb_if_device_type = external dso_local global %struct.device_type, align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"PRODUCT=%x/%x/%x\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"TYPE=%d/%d/%d\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_usb_autopm_get_interface, ptr @__ksymtab_usb_autopm_get_interface_async, ptr @__ksymtab_usb_autopm_get_interface_no_resume, ptr @__ksymtab_usb_autopm_put_interface, ptr @__ksymtab_usb_autopm_put_interface_async, ptr @__ksymtab_usb_autopm_put_interface_no_suspend, ptr @__ksymtab_usb_deregister, ptr @__ksymtab_usb_deregister_device_driver, ptr @__ksymtab_usb_device_match_id, ptr @__ksymtab_usb_disable_autosuspend, ptr @__ksymtab_usb_driver_claim_interface, ptr @__ksymtab_usb_driver_release_interface, ptr @__ksymtab_usb_enable_autosuspend, ptr @__ksymtab_usb_match_id, ptr @__ksymtab_usb_match_one_id, ptr @__ksymtab_usb_register_device_driver, ptr @__ksymtab_usb_register_driver, ptr @__ksymtab_usb_show_dynids, ptr @__ksymtab_usb_store_new_id], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_store_new_id(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 0, ptr %10, align 4, !annotation !8
  %11 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %75, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 32) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %75, label %17

17:                                               ; preds = %13
  store volatile ptr %15, ptr %15, align 8
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %15, ptr %18, align 4
  %19 = load i32, ptr %6, align 4
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.usb_dynid, ptr %15, i32 0, i32 1
  %22 = getelementptr inbounds %struct.usb_dynid, ptr %15, i32 0, i32 1, i32 1
  store i16 %20, ptr %22, align 2
  %23 = load i32, ptr %7, align 4
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.usb_dynid, ptr %15, i32 0, i32 1, i32 2
  store i16 %24, ptr %25, align 4
  store i16 3, ptr %21, align 8
  %26 = icmp ugt i32 %11, 2
  %27 = load i32, ptr %8, align 4
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = icmp ugt i32 %27, 255
  br i1 %31, label %73, label %32

32:                                               ; preds = %30
  %33 = trunc i32 %27 to i8
  %34 = getelementptr inbounds %struct.usb_dynid, ptr %15, i32 0, i32 1, i32 8
  store i8 %33, ptr %34, align 1
  store i16 131, ptr %21, align 8
  br label %35

35:                                               ; preds = %32, %17
  %36 = icmp ugt i32 %11, 4
  br i1 %36, label %37, label %64

37:                                               ; preds = %35
  %38 = icmp eq ptr %1, null
  br i1 %38, label %73, label %39

39:                                               ; preds = %37
  %40 = load i16, ptr %1, align 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %9, align 4
  %44 = load i32, ptr %10, align 4
  br label %45

45:                                               ; preds = %56, %42
  %46 = phi ptr [ %1, %42 ], [ %57, %56 ]
  %47 = getelementptr inbounds %struct.usb_device_id, ptr %46, i32 0, i32 1
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %43, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.usb_device_id, ptr %46, i32 0, i32 2
  %53 = load i16, ptr %52, align 4
  %54 = zext i16 %53 to i32
  %55 = icmp eq i32 %44, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %51, %45
  %57 = getelementptr %struct.usb_device_id, ptr %46, i32 1
  %58 = load i16, ptr %57, align 4
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %73, label %45

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.usb_device_id, ptr %46, i32 0, i32 12
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.usb_dynid, ptr %15, i32 0, i32 1, i32 12
  store i32 %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %60, %35
  call void @_raw_spin_lock(ptr noundef %0) #11
  %65 = getelementptr inbounds %struct.usb_dynids, ptr %0, i32 0, i32 1
  %66 = getelementptr inbounds %struct.usb_dynids, ptr %0, i32 0, i32 1, i32 1
  %67 = load ptr, ptr %66, align 4
  store ptr %15, ptr %66, align 4
  store ptr %65, ptr %15, align 8
  store ptr %67, ptr %18, align 4
  store volatile ptr %15, ptr %67, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %68 = load i16, ptr %0, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  %70 = call i32 @driver_attach(ptr noundef %2) #11
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 %4, i32 %70
  br label %75

73:                                               ; preds = %56, %39, %37, %30
  %74 = phi i32 [ -22, %30 ], [ -19, %37 ], [ -19, %39 ], [ -19, %56 ]
  call void @kfree(ptr noundef nonnull %15) #11
  br label %75

75:                                               ; preds = %73, %64, %13, %5
  %76 = phi i32 [ %74, %73 ], [ -22, %5 ], [ -12, %13 ], [ %72, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %76
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_show_dynids(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_dynids, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %38, label %6

6:                                                ; preds = %33, %2
  %7 = phi ptr [ %36, %33 ], [ %4, %2 ]
  %8 = phi i32 [ %35, %33 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %6
  %13 = zext i8 %10 to i32
  %14 = getelementptr i8, ptr %1, i32 %8
  %15 = sub i32 4096, %8
  %16 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 2
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %14, i32 noundef %15, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %21, i32 noundef %13) #11
  br label %33

23:                                               ; preds = %6
  %24 = getelementptr i8, ptr %1, i32 %8
  %25 = sub i32 4096, %8
  %26 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 2
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %24, i32 noundef %25, ptr noundef nonnull @.str.2, i32 noundef %28, i32 noundef %31) #11
  br label %33

33:                                               ; preds = %23, %12
  %34 = phi i32 [ %22, %12 ], [ %32, %23 ]
  %35 = add i32 %34, %8
  %36 = load ptr, ptr %7, align 4
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %38, label %6

38:                                               ; preds = %33, %2
  %39 = phi i32 [ 0, %2 ], [ %35, %33 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_driver_claim_interface(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %7 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %46

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 6
  %12 = load i8, ptr %11, align 8
  %13 = icmp sgt i8 %12, -1
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12
  store ptr %15, ptr %7, align 8
  %16 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 8
  store ptr %2, ptr %16, align 8
  %17 = and i8 %12, -33
  store i8 %17, ptr %11, align 8
  %18 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 5
  store i32 2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 11, i32 15
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, -257
  store i16 %21, ptr %19, align 8
  %22 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 13
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  tail call void @pm_runtime_enable(ptr noundef %6) #11
  br label %29

27:                                               ; preds = %14
  %28 = tail call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 0) #11
  br label %29

29:                                               ; preds = %27, %26
  %30 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 0, i32 7
  %31 = load i8, ptr %30, align 8
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @device_bind_driver(ptr noundef %6) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  store ptr null, ptr %7, align 8
  store ptr null, ptr %16, align 8
  %38 = load i8, ptr %11, align 8
  %39 = and i8 %38, -9
  store i8 %39, ptr %11, align 8
  store i32 0, ptr %18, align 4
  %40 = load i8, ptr %22, align 4
  %41 = and i8 %40, 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #11
  br label %44

44:                                               ; preds = %43, %37
  %45 = tail call i32 @__pm_runtime_set_status(ptr noundef %6, i32 noundef 2) #11
  br label %46

46:                                               ; preds = %44, %34, %29, %10, %5, %3
  %47 = phi i32 [ -19, %3 ], [ -16, %5 ], [ -19, %10 ], [ %35, %44 ], [ 0, %34 ], [ 0, %29 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_bind_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_driver_release_interface(ptr noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  %4 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12
  %8 = icmp eq ptr %5, %7
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  store i32 3, ptr %11, align 4
  %15 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 0, i32 7
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @device_release_driver(ptr noundef %3) #11
  br label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 9
  tail call void @mutex_lock(ptr noundef %21) #11
  %22 = tail call i32 @usb_unbind_interface(ptr noundef %3)
  store ptr null, ptr %4, align 8
  tail call void @mutex_unlock(ptr noundef %21) #11
  br label %23

23:                                               ; preds = %20, %19, %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_unbind_interface(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 -32
  %5 = getelementptr i8, ptr %0, i32 -12
  store i32 3, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 36
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -128
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #11
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr i8, ptr %3, i32 80
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @usb_unlocked_disable_lpm(ptr noundef %8) #11
  %20 = load i8, ptr %14, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i8 [ %20, %18 ], [ %15, %13 ]
  %23 = phi i32 [ %19, %18 ], [ -19, %13 ]
  %24 = and i8 %22, 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %7, i32 -104
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %21
  tail call void @usb_disable_interface(ptr noundef %8, ptr noundef %4, i1 noundef zeroext false) #11
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr i8, ptr %3, i32 -48
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %4) #11
  %34 = getelementptr i8, ptr %0, i32 -28
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %35, i32 0, i32 4
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %61, %31
  %40 = phi ptr [ %62, %61 ], [ %35, %31 ]
  %41 = phi i32 [ %64, %61 ], [ 0, %31 ]
  %42 = phi i32 [ %65, %61 ], [ 0, %31 ]
  %43 = phi ptr [ %63, %61 ], [ null, %31 ]
  %44 = getelementptr inbounds %struct.usb_host_interface, ptr %40, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr %struct.usb_host_endpoint, ptr %45, i32 %42
  %47 = getelementptr %struct.usb_host_endpoint, ptr %45, i32 %42, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %39
  %51 = icmp eq i32 %41, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3264, i32 noundef 120) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %52, %50
  %57 = phi ptr [ %54, %52 ], [ %43, %50 ]
  %58 = add i32 %41, 1
  %59 = getelementptr ptr, ptr %57, i32 %41
  store ptr %46, ptr %59, align 4
  %60 = load ptr, ptr %34, align 4
  br label %61

61:                                               ; preds = %56, %39
  %62 = phi ptr [ %40, %39 ], [ %60, %56 ]
  %63 = phi ptr [ %43, %39 ], [ %57, %56 ]
  %64 = phi i32 [ %41, %39 ], [ %58, %56 ]
  %65 = add nuw nsw i32 %42, 1
  %66 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %62, i32 0, i32 4
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %39, label %70

70:                                               ; preds = %61
  %71 = icmp eq i32 %64, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %70
  %73 = tail call i32 @usb_free_streams(ptr noundef %4, ptr noundef %63, i32 noundef %64, i32 noundef 3264) #11
  tail call void @kfree(ptr noundef %63) #11
  br label %74

74:                                               ; preds = %72, %70, %52, %31
  %75 = load ptr, ptr %34, align 4
  %76 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %75, i32 0, i32 3
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  tail call void @usb_enable_interface(ptr noundef %8, ptr noundef %4, i1 noundef zeroext false) #11
  br label %102

80:                                               ; preds = %74
  %81 = icmp sgt i32 %9, -1
  br i1 %81, label %82, label %98

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %84 = load i16, ptr %83, align 4
  %85 = and i16 %84, 8
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load ptr, ptr %4, align 8
  %89 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %88, i32 0, i32 2
  %90 = load i8, ptr %89, align 2
  %91 = zext i8 %90 to i32
  %92 = tail call i32 @usb_set_interface(ptr noundef %8, i32 noundef %91, i32 noundef 0) #11
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = getelementptr i8, ptr %0, i32 -8
  %96 = load i8, ptr %95, align 8
  %97 = or i8 %96, 16
  store i8 %97, ptr %95, align 8
  br label %102

98:                                               ; preds = %82, %80
  %99 = getelementptr i8, ptr %0, i32 -8
  %100 = load i8, ptr %99, align 8
  %101 = or i8 %100, 16
  store i8 %101, ptr %99, align 8
  br label %102

102:                                              ; preds = %98, %94, %87, %79
  %103 = getelementptr i8, ptr %0, i32 64
  store ptr null, ptr %103, align 8
  store i32 0, ptr %5, align 4
  %104 = getelementptr i8, ptr %0, i32 -8
  %105 = load i8, ptr %104, align 8
  %106 = and i8 %105, -9
  store i8 %106, ptr %104, align 8
  %107 = icmp eq i32 %23, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  tail call void @usb_unlocked_enable_lpm(ptr noundef %8) #11
  br label %109

109:                                              ; preds = %108, %102
  %110 = load i8, ptr %14, align 4
  %111 = and i8 %110, 2
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #11
  br label %114

114:                                              ; preds = %113, %109
  %115 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 2) #11
  %116 = icmp sgt i32 %9, -1
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = tail call i64 @ktime_get_mono_fast_ns() #11
  %119 = getelementptr i8, ptr %7, i32 296
  store volatile i64 %118, ptr %119, align 8
  %120 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 12) #11
  br label %121

121:                                              ; preds = %117, %114
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_match_device(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load i16, ptr %1, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 7
  %10 = load i16, ptr %9, align 8
  %11 = icmp eq i16 %8, %10
  br i1 %11, label %12, label %67

12:                                               ; preds = %6, %2
  %13 = and i16 %3, 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 2
  %17 = load i16, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 8
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %17, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %15, %12
  %22 = and i16 %3, 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 9
  %28 = load i16, ptr %27, align 4
  %29 = icmp ugt i16 %26, %28
  br i1 %29, label %67, label %30

30:                                               ; preds = %24, %21
  %31 = and i16 %3, 8
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 4
  %35 = load i16, ptr %34, align 4
  %36 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 9
  %37 = load i16, ptr %36, align 4
  %38 = icmp ult i16 %35, %37
  br i1 %38, label %67, label %39

39:                                               ; preds = %33, %30
  %40 = and i16 %3, 16
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 5
  %44 = load i8, ptr %43, align 2
  %45 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 3
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %44, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %42, %39
  %49 = and i16 %3, 32
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 6
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 4
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51, %48
  %58 = and i16 %3, 64
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 7
  %62 = load i8, ptr %61, align 4
  %63 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 5
  %64 = load i8, ptr %63, align 2
  %65 = icmp eq i8 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %57
  br label %67

67:                                               ; preds = %66, %60, %51, %42, %33, %24, %15, %6
  %68 = phi i32 [ 1, %66 ], [ 0, %6 ], [ 0, %15 ], [ 0, %24 ], [ 0, %33 ], [ 0, %42 ], [ 0, %51 ], [ 0, %60 ]
  ret i32 %68
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_match_one_id_intf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 3
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, -1
  %7 = load i16, ptr %2, align 4
  br i1 %6, label %8, label %15

8:                                                ; preds = %3
  %9 = zext i16 %7 to i32
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  %12 = and i32 %9, 1920
  %13 = icmp eq i32 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %8, %3
  %16 = and i16 %7, 128
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.usb_device_id, ptr %2, i32 0, i32 8
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %20, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %18, %15
  %25 = and i16 %7, 256
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.usb_device_id, ptr %2, i32 0, i32 9
  %29 = load i8, ptr %28, align 2
  %30 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 6
  %31 = load i8, ptr %30, align 2
  %32 = icmp eq i8 %29, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27, %24
  %34 = and i16 %7, 512
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.usb_device_id, ptr %2, i32 0, i32 10
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 7
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36, %33
  %43 = and i16 %7, 1024
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.usb_device_id, ptr %2, i32 0, i32 11
  %47 = load i8, ptr %46, align 4
  %48 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %49 = load i8, ptr %48, align 2
  %50 = icmp eq i8 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %42
  br label %52

52:                                               ; preds = %51, %45, %36, %27, %18, %8
  %53 = phi i32 [ 1, %51 ], [ 0, %8 ], [ 0, %18 ], [ 0, %27 ], [ 0, %36 ], [ 0, %45 ]
  ret i32 %53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usb_match_one_id(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %120, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i16, ptr %1, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = getelementptr i8, ptr %8, i32 480
  %16 = load i16, ptr %15, align 8
  %17 = icmp eq i16 %14, %16
  br i1 %17, label %18, label %120

18:                                               ; preds = %12, %4
  %19 = and i16 %9, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 2
  %23 = load i16, ptr %22, align 4
  %24 = getelementptr i8, ptr %8, i32 482
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %23, %25
  br i1 %26, label %27, label %120

27:                                               ; preds = %21, %18
  %28 = and i16 %9, 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 3
  %32 = load i16, ptr %31, align 2
  %33 = getelementptr i8, ptr %8, i32 484
  %34 = load i16, ptr %33, align 4
  %35 = icmp ugt i16 %32, %34
  br i1 %35, label %120, label %36

36:                                               ; preds = %30, %27
  %37 = and i16 %9, 8
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 4
  %41 = load i16, ptr %40, align 4
  %42 = getelementptr i8, ptr %8, i32 484
  %43 = load i16, ptr %42, align 4
  %44 = icmp ult i16 %41, %43
  br i1 %44, label %120, label %45

45:                                               ; preds = %39, %36
  %46 = and i16 %9, 16
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 5
  %50 = load i8, ptr %49, align 2
  %51 = getelementptr i8, ptr %8, i32 476
  %52 = load i8, ptr %51, align 4
  %53 = icmp eq i8 %50, %52
  br i1 %53, label %54, label %120

54:                                               ; preds = %48, %45
  %55 = and i16 %9, 32
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 6
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr i8, ptr %8, i32 477
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %59, %61
  br i1 %62, label %63, label %120

63:                                               ; preds = %57, %54
  %64 = and i16 %9, 64
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 7
  %68 = load i8, ptr %67, align 4
  %69 = getelementptr i8, ptr %8, i32 478
  %70 = load i8, ptr %69, align 2
  %71 = icmp eq i8 %68, %70
  br i1 %71, label %72, label %120

72:                                               ; preds = %66, %63
  %73 = getelementptr i8, ptr %8, i32 476
  %74 = load i8, ptr %73, align 4
  %75 = icmp eq i8 %74, -1
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = zext i16 %9 to i32
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  %80 = and i32 %77, 1920
  %81 = icmp eq i32 %80, 0
  %82 = or i1 %79, %81
  br i1 %82, label %83, label %120

83:                                               ; preds = %76, %72
  %84 = and i16 %9, 128
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 8
  %88 = load i8, ptr %87, align 1
  %89 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 5
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %88, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %86, %83
  %93 = and i16 %9, 256
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 9
  %97 = load i8, ptr %96, align 2
  %98 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 6
  %99 = load i8, ptr %98, align 2
  %100 = icmp eq i8 %97, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %95, %92
  %102 = and i16 %9, 512
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 10
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 7
  %108 = load i8, ptr %107, align 1
  %109 = icmp eq i8 %106, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %104, %101
  %111 = and i16 %9, 1024
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 11
  %115 = load i8, ptr %114, align 4
  %116 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %117 = load i8, ptr %116, align 2
  %118 = icmp eq i8 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113, %110
  br label %120

120:                                              ; preds = %119, %113, %104, %95, %86, %76, %66, %57, %48, %39, %30, %21, %12, %2
  %121 = phi i32 [ 0, %2 ], [ 1, %119 ], [ 0, %76 ], [ 0, %86 ], [ 0, %95 ], [ 0, %104 ], [ 0, %113 ], [ 0, %12 ], [ 0, %21 ], [ 0, %30 ], [ 0, %39 ], [ 0, %48 ], [ 0, %57 ], [ 0, %66 ]
  ret i32 %121
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @usb_match_id(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #6 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %28, %2
  %5 = phi ptr [ %29, %28 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.usb_device_id, ptr %5, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.usb_device_id, ptr %5, i32 0, i32 2
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_device_id, ptr %5, i32 0, i32 5
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usb_device_id, ptr %5, i32 0, i32 8
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.usb_device_id, ptr %5, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21, %17, %13, %9, %4
  %26 = tail call i32 @usb_match_one_id(ptr noundef %0, ptr noundef %5)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = getelementptr %struct.usb_device_id, ptr %5, i32 1
  br label %4

30:                                               ; preds = %25, %21, %2
  %31 = phi ptr [ null, %2 ], [ null, %21 ], [ %5, %25 ]
  ret ptr %31
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @usb_device_match_id(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #6 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %77, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 7
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 8
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 9
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 3
  %9 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 4
  %10 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 5
  br label %11

11:                                               ; preds = %75, %4
  %12 = phi ptr [ %76, %75 ], [ %1, %4 ]
  %13 = getelementptr inbounds %struct.usb_device_id, ptr %12, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.usb_device_id, ptr %12, i32 0, i32 2
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %77, label %20

20:                                               ; preds = %16, %11
  %21 = load i16, ptr %12, align 4
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i16, ptr %5, align 8
  %26 = icmp eq i16 %14, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %24, %20
  %28 = and i16 %21, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.usb_device_id, ptr %12, i32 0, i32 2
  %32 = load i16, ptr %31, align 4
  %33 = load i16, ptr %6, align 2
  %34 = icmp eq i16 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %30, %27
  %36 = and i16 %21, 4
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.usb_device_id, ptr %12, i32 0, i32 3
  %40 = load i16, ptr %39, align 2
  %41 = load i16, ptr %7, align 4
  %42 = icmp ugt i16 %40, %41
  br i1 %42, label %75, label %43

43:                                               ; preds = %38, %35
  %44 = and i16 %21, 8
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.usb_device_id, ptr %12, i32 0, i32 4
  %48 = load i16, ptr %47, align 4
  %49 = load i16, ptr %7, align 4
  %50 = icmp ult i16 %48, %49
  br i1 %50, label %75, label %51

51:                                               ; preds = %46, %43
  %52 = and i16 %21, 16
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.usb_device_id, ptr %12, i32 0, i32 5
  %56 = load i8, ptr %55, align 2
  %57 = load i8, ptr %8, align 4
  %58 = icmp eq i8 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %54, %51
  %60 = and i16 %21, 32
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.usb_device_id, ptr %12, i32 0, i32 6
  %64 = load i8, ptr %63, align 1
  %65 = load i8, ptr %9, align 1
  %66 = icmp eq i8 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %62, %59
  %68 = and i16 %21, 64
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.usb_device_id, ptr %12, i32 0, i32 7
  %72 = load i8, ptr %71, align 4
  %73 = load i8, ptr %10, align 2
  %74 = icmp eq i8 %72, %73
  br i1 %74, label %77, label %75

75:                                               ; preds = %70, %62, %54, %46, %38, %30, %24
  %76 = getelementptr %struct.usb_device_id, ptr %12, i32 1
  br label %11

77:                                               ; preds = %70, %67, %16, %2
  %78 = phi ptr [ null, %2 ], [ %12, %70 ], [ %12, %67 ], [ null, %16 ]
  ret ptr %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @usb_driver_applicable(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_device_driver, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.usb_device_driver, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %5, label %17, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @usb_device_match_id(ptr noundef %0, ptr noundef nonnull %4)
  br i1 %8, label %15, label %11

11:                                               ; preds = %9
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = tail call zeroext i1 %7(ptr noundef %0) #11
  br label %20

15:                                               ; preds = %9
  %16 = icmp ne ptr %10, null
  br label %20

17:                                               ; preds = %2
  br i1 %8, label %20, label %18

18:                                               ; preds = %17
  %19 = tail call zeroext i1 %7(ptr noundef %0) #11
  br label %20

20:                                               ; preds = %18, %17, %15, %13, %11
  %21 = phi i1 [ %16, %15 ], [ %19, %18 ], [ false, %11 ], [ %14, %13 ], [ false, %17 ]
  ret i1 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_register_device_driver(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @usb_disabled() #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_device_driver, ptr %0, i32 0, i32 7
  %7 = getelementptr inbounds %struct.usb_device_driver, ptr %0, i32 0, i32 7, i32 1
  store i32 1, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  store ptr %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.usb_device_driver, ptr %0, i32 0, i32 7, i32 0, i32 1
  store ptr @usb_bus_type, ptr %9, align 4
  %10 = getelementptr inbounds %struct.usb_device_driver, ptr %0, i32 0, i32 7, i32 0, i32 8
  store ptr @usb_probe_device, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_device_driver, ptr %0, i32 0, i32 7, i32 0, i32 10
  store ptr @usb_unbind_device, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_device_driver, ptr %0, i32 0, i32 7, i32 0, i32 2
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_device_driver, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_device_driver, ptr %0, i32 0, i32 7, i32 0, i32 15
  store ptr %14, ptr %15, align 4
  %16 = tail call i32 @driver_register(ptr noundef %6) #11
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr @usbcore_name, align 4
  %19 = load ptr, ptr %0, align 4
  br i1 %17, label %20, label %23

20:                                               ; preds = %5
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %18, ptr noundef %19) #13
  %22 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @usb_bus_type, ptr noundef null, ptr noundef %0, ptr noundef nonnull @__usb_bus_reprobe_drivers) #11
  br label %25

23:                                               ; preds = %5
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %18, i32 noundef %16, ptr noundef %19) #13
  br label %25

25:                                               ; preds = %23, %20, %2
  %26 = phi i32 [ -19, %2 ], [ %16, %23 ], [ 0, %20 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_probe_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -28
  %5 = getelementptr i8, ptr %0, i32 -128
  %6 = getelementptr i8, ptr %3, i32 84
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #11
  br label %43

15:                                               ; preds = %10
  %16 = load i8, ptr %6, align 4
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i8 [ %16, %15 ], [ %7, %1 ]
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @usb_generic_driver_probe(ptr noundef %5) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %21, %17
  %25 = getelementptr i8, ptr %3, i32 -20
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %5) #11
  %28 = icmp eq i32 %27, -19
  %29 = icmp ne ptr %4, @usb_generic_driver
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %3, i32 80
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %3, i32 -24
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr i8, ptr %0, i32 746
  %41 = load i8, ptr %40, align 2
  %42 = or i8 %41, 1
  store i8 %42, ptr %40, align 2
  br label %43

43:                                               ; preds = %39, %35, %24, %21, %13
  %44 = phi i32 [ -517, %39 ], [ %11, %13 ], [ %22, %21 ], [ -19, %35 ], [ %27, %24 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_unbind_device(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void %6(ptr noundef %2) #11
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr i8, ptr %4, i32 84
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  tail call void @usb_generic_driver_disconnect(ptr noundef %2) #11
  %15 = load i8, ptr %10, align 4
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i8 [ %15, %14 ], [ %11, %9 ]
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = tail call i64 @ktime_get_mono_fast_ns() #11
  %22 = getelementptr i8, ptr %0, i32 296
  store volatile i64 %21, ptr %22, align 8
  %23 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 12) #11
  br label %24

24:                                               ; preds = %20, %16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__usb_bus_reprobe_drivers(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, getelementptr inbounds (%struct.usb_device_driver, ptr @usb_generic_driver, i32 0, i32 7)
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -128
  %8 = getelementptr inbounds %struct.usb_device_driver, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.usb_device_driver, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %10, label %19, label %14

14:                                               ; preds = %6
  %15 = tail call ptr @usb_device_match_id(ptr noundef %7, ptr noundef nonnull %9) #11
  %16 = icmp eq ptr %15, null
  br i1 %13, label %18, label %17

17:                                               ; preds = %14
  br i1 %16, label %27, label %22

18:                                               ; preds = %14
  br i1 %16, label %27, label %24

19:                                               ; preds = %6
  br i1 %13, label %27, label %20

20:                                               ; preds = %19
  %21 = tail call zeroext i1 %12(ptr noundef %7) #11
  br i1 %21, label %24, label %27

22:                                               ; preds = %17
  %23 = tail call zeroext i1 %12(ptr noundef %7) #11
  br i1 %23, label %24, label %27

24:                                               ; preds = %22, %20, %18
  %25 = tail call i32 @device_reprobe(ptr noundef %0) #11
  switch i32 %25, label %26 [
    i32 -517, label %27
    i32 0, label %27
  ]

26:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %25) #13
  br label %27

27:                                               ; preds = %26, %24, %24, %22, %20, %19, %18, %17, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_deregister_device_driver(ptr noundef %0) #0 {
  %2 = load ptr, ptr @usbcore_name, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %2, ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.usb_device_driver, ptr %0, i32 0, i32 7
  tail call void @driver_unregister(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_register_driver(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @usb_disabled() #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %48

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12
  %8 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12, i32 1
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %0, align 4
  store ptr %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12, i32 0, i32 1
  store ptr @usb_bus_type, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12, i32 0, i32 8
  store ptr @usb_probe_interface, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12, i32 0, i32 10
  store ptr @usb_unbind_interface, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12, i32 0, i32 2
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12, i32 0, i32 3
  store ptr %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12, i32 0, i32 15
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 11
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 11, i32 1
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 11, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  %21 = tail call i32 @driver_register(ptr noundef %7) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 13
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @driver_create_file(ptr noundef %7, ptr noundef nonnull @driver_attr_new_id) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = tail call i32 @driver_create_file(ptr noundef %7, ptr noundef nonnull @driver_attr_remove_id) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @driver_remove_file(ptr noundef %7, ptr noundef nonnull @driver_attr_new_id) #11
  br label %43

39:                                               ; preds = %35, %28, %23
  %40 = load ptr, ptr @usbcore_name, align 4
  %41 = load ptr, ptr %0, align 4
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %40, ptr noundef %41) #13
  br label %48

43:                                               ; preds = %38, %32
  %44 = phi i32 [ %36, %38 ], [ %33, %32 ]
  tail call void @driver_unregister(ptr noundef %7) #11
  %45 = load ptr, ptr @usbcore_name, align 4
  %46 = load ptr, ptr %0, align 4
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %45, i32 noundef %44, ptr noundef %46) #13
  br label %48

48:                                               ; preds = %43, %39, %6, %3
  %49 = phi i32 [ -19, %3 ], [ %21, %6 ], [ %44, %43 ], [ 0, %39 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_probe_interface(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -56
  %5 = getelementptr i8, ptr %0, i32 -32
  %6 = getelementptr i8, ptr %0, i32 36
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -128
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, -33
  store i8 %11, ptr %9, align 8
  %12 = tail call zeroext i1 @usb_device_is_owned(ptr noundef %8) #11
  br i1 %12, label %149, label %13

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %7, i32 641
  %15 = load i16, ptr %14, align 1
  %16 = and i16 %15, 8
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #13
  br label %149

19:                                               ; preds = %13
  %20 = load i8, ptr %9, align 8
  %21 = icmp sgt i8 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %26) #13
  br label %149

27:                                               ; preds = %19
  %28 = getelementptr i8, ptr %3, i32 -12
  tail call void @_raw_spin_lock(ptr noundef %28) #11
  %29 = getelementptr i8, ptr %3, i32 -8
  br label %30

30:                                               ; preds = %34, %27
  %31 = phi ptr [ %29, %27 ], [ %32, %34 ]
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %29
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.usb_dynid, ptr %32, i32 0, i32 1
  %36 = tail call i32 @usb_match_one_id(ptr noundef %5, ptr noundef %35) #11
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %30, label %41

38:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %39 = load i16, ptr %28, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br label %45

41:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %42 = load i16, ptr %28, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  %44 = icmp eq ptr %35, null
  br i1 %44, label %45, label %77

45:                                               ; preds = %41, %38
  %46 = getelementptr i8, ptr %3, i32 -20
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %149, label %49

49:                                               ; preds = %73, %45
  %50 = phi ptr [ %74, %73 ], [ %47, %45 ]
  %51 = getelementptr inbounds %struct.usb_device_id, ptr %50, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.usb_device_id, ptr %50, i32 0, i32 2
  %56 = load i16, ptr %55, align 4
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.usb_device_id, ptr %50, i32 0, i32 5
  %60 = load i8, ptr %59, align 2
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.usb_device_id, ptr %50, i32 0, i32 8
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.usb_device_id, ptr %50, i32 0, i32 12
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %149, label %70

70:                                               ; preds = %66, %62, %58, %54, %49
  %71 = tail call i32 @usb_match_one_id(ptr noundef %5, ptr noundef %50) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = getelementptr %struct.usb_device_id, ptr %50, i32 1
  br label %49

75:                                               ; preds = %70
  %76 = icmp eq ptr %50, null
  br i1 %76, label %149, label %77

77:                                               ; preds = %75, %41
  %78 = phi ptr [ %50, %75 ], [ %35, %41 ]
  %79 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #11
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #11
  br label %149

83:                                               ; preds = %77
  %84 = getelementptr i8, ptr %0, i32 -12
  store i32 1, ptr %84, align 4
  %85 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #11
  %86 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %87 = load i16, ptr %86, align 8
  %88 = and i16 %87, -257
  store i16 %88, ptr %86, align 8
  %89 = getelementptr i8, ptr %3, i32 80
  %90 = load i8, ptr %89, align 4
  %91 = and i8 %90, 2
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %83
  tail call void @pm_runtime_enable(ptr noundef %0) #11
  %94 = load i8, ptr %89, align 4
  br label %95

95:                                               ; preds = %93, %83
  %96 = phi i8 [ %94, %93 ], [ %90, %83 ]
  %97 = and i8 %96, 4
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = tail call i32 @usb_unlocked_disable_lpm(ptr noundef %8) #11
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.usb_probe_interface, ptr noundef %103) #13
  %104 = getelementptr i8, ptr %0, i32 64
  store ptr null, ptr %104, align 8
  %105 = load i8, ptr %9, align 8
  %106 = and i8 %105, -9
  store i8 %106, ptr %9, align 8
  store i32 0, ptr %84, align 4
  br label %138

107:                                              ; preds = %99, %95
  %108 = load i8, ptr %9, align 8
  %109 = and i8 %108, 16
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %5, align 8
  %113 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %112, i32 0, i32 2
  %114 = load i8, ptr %113, align 2
  %115 = zext i8 %114 to i32
  %116 = tail call i32 @usb_set_interface(ptr noundef %8, i32 noundef %115, i32 noundef 0) #11
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %132, label %118

118:                                              ; preds = %111
  %119 = load i8, ptr %9, align 8
  %120 = and i8 %119, -17
  store i8 %120, ptr %9, align 8
  br label %121

121:                                              ; preds = %118, %107
  %122 = getelementptr i8, ptr %3, i32 -52
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 %123(ptr noundef %5, ptr noundef nonnull %78) #11
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  store i32 2, ptr %84, align 4
  br i1 %98, label %128, label %127

127:                                              ; preds = %126
  tail call void @usb_unlocked_enable_lpm(ptr noundef %8) #11
  br label %128

128:                                              ; preds = %127, %126
  %129 = tail call i64 @ktime_get_mono_fast_ns() #11
  %130 = getelementptr i8, ptr %7, i32 296
  store volatile i64 %129, ptr %130, align 8
  %131 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 12) #11
  br label %149

132:                                              ; preds = %121, %111
  %133 = phi i32 [ %116, %111 ], [ %124, %121 ]
  %134 = getelementptr i8, ptr %0, i32 64
  store ptr null, ptr %134, align 8
  %135 = load i8, ptr %9, align 8
  %136 = and i8 %135, -9
  store i8 %136, ptr %9, align 8
  store i32 0, ptr %84, align 4
  br i1 %98, label %138, label %137

137:                                              ; preds = %132
  tail call void @usb_unlocked_enable_lpm(ptr noundef %8) #11
  br label %138

138:                                              ; preds = %137, %132, %102
  %139 = phi i32 [ %100, %102 ], [ %133, %137 ], [ %133, %132 ]
  %140 = load i8, ptr %89, align 4
  %141 = and i8 %140, 2
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #11
  br label %144

144:                                              ; preds = %143, %138
  %145 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 2) #11
  %146 = tail call i64 @ktime_get_mono_fast_ns() #11
  %147 = getelementptr i8, ptr %7, i32 296
  store volatile i64 %146, ptr %147, align 8
  %148 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 12) #11
  br label %149

149:                                              ; preds = %144, %128, %81, %75, %66, %45, %22, %18, %1
  %150 = phi i32 [ -19, %18 ], [ -19, %22 ], [ %139, %144 ], [ 0, %128 ], [ -19, %1 ], [ -19, %75 ], [ %79, %81 ], [ -19, %45 ], [ -19, %66 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_deregister(ptr noundef %0) #0 {
  %2 = load ptr, ptr @usbcore_name, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %2, ptr noundef %3) #13
  %5 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 13
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12
  tail call void @driver_remove_file(ptr noundef %14, ptr noundef nonnull @driver_attr_remove_id) #11
  tail call void @driver_remove_file(ptr noundef %14, ptr noundef nonnull @driver_attr_new_id) #11
  br label %15

15:                                               ; preds = %13, %9, %1
  %16 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 12
  tail call void @driver_unregister(ptr noundef %16) #11
  %17 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %17) #11
  %18 = getelementptr inbounds %struct.usb_driver, ptr %0, i32 0, i32 11, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %28, label %21

21:                                               ; preds = %21, %15
  %22 = phi ptr [ %23, %21 ], [ %19, %15 ]
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  store volatile ptr %23, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  tail call void @kfree(ptr noundef %22) #11
  %27 = icmp eq ptr %23, %18
  br i1 %27, label %28, label %21

28:                                               ; preds = %21, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %29 = load i16, ptr %17, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_forced_unbind_intf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %5 = icmp eq ptr %3, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  store i32 3, ptr %7, align 4
  %11 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 0, i32 7
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @device_release_driver(ptr noundef %4) #11
  br label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 9
  tail call void @mutex_lock(ptr noundef %17) #11
  %18 = tail call i32 @usb_unbind_interface(ptr noundef %4) #11
  store ptr null, ptr %2, align 8
  tail call void @mutex_unlock(ptr noundef %17) #11
  br label %19

19:                                               ; preds = %16, %15, %6, %1
  %20 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 6
  %21 = load i8, ptr %20, align 8
  %22 = or i8 %21, 32
  store i8 %22, ptr %20, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_unbind_and_rebind_marked_interfaces(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call fastcc void @unbind_marked_interfaces(ptr noundef %0)
  tail call fastcc void @rebind_marked_interfaces(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unbind_marked_interfaces(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_config_descriptor, ptr %3, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %40, %5
  %10 = phi i8 [ %41, %40 ], [ %7, %5 ]
  %11 = phi i32 [ %42, %40 ], [ 0, %5 ]
  %12 = getelementptr %struct.usb_host_config, ptr %3, i32 0, i32 3, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 6
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  %24 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  store i32 3, ptr %24, align 4
  %28 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7, i32 0, i32 7
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @device_release_driver(ptr noundef %23) #11
  br label %36

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7, i32 9
  tail call void @mutex_lock(ptr noundef %34) #11
  %35 = tail call i32 @usb_unbind_interface(ptr noundef %23) #11
  store ptr null, ptr %14, align 8
  tail call void @mutex_unlock(ptr noundef %34) #11
  br label %36

36:                                               ; preds = %33, %32, %22
  %37 = load i8, ptr %18, align 8
  %38 = or i8 %37, 32
  store i8 %38, ptr %18, align 8
  %39 = load i8, ptr %6, align 4
  br label %40

40:                                               ; preds = %36, %17, %9
  %41 = phi i8 [ %10, %9 ], [ %10, %17 ], [ %39, %36 ]
  %42 = add nuw nsw i32 %11, 1
  %43 = zext i8 %41 to i32
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %9, label %45

45:                                               ; preds = %40, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rebind_marked_interfaces(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_config_descriptor, ptr %3, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %56, label %9

9:                                                ; preds = %51, %5
  %10 = phi i32 [ %52, %51 ], [ 0, %5 ]
  %11 = getelementptr %struct.usb_host_config, ptr %3, i32 0, i32 3, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 6
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 32
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %51, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7
  %19 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  store i32 3, ptr %23, align 4
  %27 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7, i32 0, i32 7
  %28 = load i8, ptr %27, align 8
  %29 = and i8 %28, 2
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @device_release_driver(ptr noundef %18) #11
  br label %35

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7, i32 9
  tail call void @mutex_lock(ptr noundef %33) #11
  %34 = tail call i32 @usb_unbind_interface(ptr noundef %18) #11
  store ptr null, ptr %19, align 8
  tail call void @mutex_unlock(ptr noundef %33) #11
  br label %35

35:                                               ; preds = %32, %31, %22
  %36 = load i8, ptr %13, align 8
  %37 = or i8 %36, 32
  store i8 %37, ptr %13, align 8
  br label %38

38:                                               ; preds = %35, %17
  %39 = phi i8 [ %37, %35 ], [ %14, %17 ]
  %40 = getelementptr inbounds %struct.usb_interface, ptr %12, i32 0, i32 7, i32 11, i32 1
  %41 = load i16, ptr %40, align 4
  %42 = and i16 %41, 8
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = and i8 %39, -33
  store i8 %45, ptr %13, align 8
  %46 = tail call i32 @device_attach(ptr noundef %18) #11
  %47 = icmp slt i32 %46, 0
  %48 = icmp ne i32 %46, -517
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.17, i32 noundef %46) #13
  br label %51

51:                                               ; preds = %50, %44, %38, %9
  %52 = add nuw nsw i32 %10, 1
  %53 = load i8, ptr %6, align 4
  %54 = zext i8 %53 to i32
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %9, label %56

56:                                               ; preds = %51, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_suspend(ptr noundef %0, [1 x i32] %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -128
  %4 = getelementptr i8, ptr %0, i32 500
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_config_descriptor, ptr %5, i32 0, i32 3
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %51, label %11

11:                                               ; preds = %46, %7
  %12 = phi i8 [ %47, %46 ], [ %9, %7 ]
  %13 = phi i32 [ %48, %46 ], [ 0, %7 ]
  %14 = getelementptr %struct.usb_host_config, ptr %5, i32 0, i32 3, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %17, i32 -40
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %17, i32 -36
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  %29 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  store i32 3, ptr %29, align 4
  %33 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 0, i32 7
  %34 = load i8, ptr %33, align 8
  %35 = and i8 %34, 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @device_release_driver(ptr noundef %28) #11
  br label %41

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7, i32 9
  tail call void @mutex_lock(ptr noundef %39) #11
  %40 = tail call i32 @usb_unbind_interface(ptr noundef %28) #11
  store ptr null, ptr %16, align 8
  tail call void @mutex_unlock(ptr noundef %39) #11
  br label %41

41:                                               ; preds = %38, %37, %27
  %42 = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 6
  %43 = load i8, ptr %42, align 8
  %44 = or i8 %43, 32
  store i8 %44, ptr %42, align 8
  %45 = load i8, ptr %8, align 4
  br label %46

46:                                               ; preds = %41, %23, %11
  %47 = phi i8 [ %12, %11 ], [ %45, %41 ], [ %12, %23 ]
  %48 = add nuw nsw i32 %13, 1
  %49 = zext i8 %47 to i32
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %11, label %51

51:                                               ; preds = %46, %7, %2
  %52 = extractvalue [1 x i32] %1, 0
  switch i32 %52, label %61 [
    i32 8, label %53
    i32 1, label %53
  ]

53:                                               ; preds = %51, %51
  %54 = getelementptr i8, ptr %0, i32 -104
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %89, label %57

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %0, i32 688
  %59 = load i8, ptr %58, align 8
  %60 = and i8 %59, -2
  store i8 %60, ptr %58, align 8
  br label %89

61:                                               ; preds = %51
  %62 = getelementptr i8, ptr %0, i32 124
  %63 = load i16, ptr %62, align 4
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = getelementptr i8, ptr %0, i32 160
  %68 = load ptr, ptr %67, align 8
  %69 = icmp ne ptr %68, null
  br label %70

70:                                               ; preds = %66, %61
  %71 = phi i1 [ false, %61 ], [ %69, %66 ]
  %72 = getelementptr i8, ptr %0, i32 -104
  %73 = load i32, ptr %72, align 8
  %74 = icmp eq i32 %73, 8
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = getelementptr i8, ptr %0, i32 688
  %77 = load i8, ptr %76, align 8
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  %80 = xor i1 %71, %79
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 0) #11
  br label %83

83:                                               ; preds = %81, %75, %70
  %84 = getelementptr i8, ptr %0, i32 688
  %85 = zext i1 %71 to i8
  %86 = load i8, ptr %84, align 8
  %87 = and i8 %86, -2
  %88 = or i8 %87, %85
  store i8 %88, ptr %84, align 8
  br label %89

89:                                               ; preds = %83, %57, %53
  %90 = tail call fastcc i32 @usb_suspend_both(ptr noundef %3, [1 x i32] %1)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = getelementptr i8, ptr %0, i32 672
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 4096
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = tail call i32 @usb_port_disable(ptr noundef %3) #11
  br label %99

99:                                               ; preds = %97, %92, %89
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_suspend_both(ptr noundef %0, [1 x i32] %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = extractvalue [1 x i32] %1, 0
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %7 [
    i32 0, label %160
    i32 8, label %160
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_config_descriptor, ptr %9, i32 0, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %4, 1024
  %16 = icmp ne i32 %15, 0
  %17 = icmp eq i32 %15, 0
  br label %18

18:                                               ; preds = %42, %11
  %19 = phi i32 [ %14, %11 ], [ %20, %42 ]
  %20 = add nsw i32 %19, -1
  %21 = icmp sgt i32 %19, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr %struct.usb_host_config, ptr %23, i32 0, i32 3, i32 %20
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %5, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 7, i32 6
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i8, ptr %34, i32 -40
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %25, [1 x i32] %1) #11
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i1 true, i1 %16
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.19, i32 noundef %37) #13
  br label %42

42:                                               ; preds = %40, %32, %28, %22
  %43 = phi i32 [ 0, %22 ], [ 0, %28 ], [ %37, %40 ], [ %37, %32 ]
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %17, i1 true, i1 %44
  br i1 %45, label %18, label %92

46:                                               ; preds = %18
  %47 = load i32, ptr %5, align 8
  br label %48

48:                                               ; preds = %46, %7
  %49 = phi i32 [ %47, %46 ], [ %6, %7 ]
  %50 = phi i32 [ -1, %46 ], [ 0, %7 ]
  %51 = phi i32 [ %14, %46 ], [ 0, %7 ]
  switch i32 %49, label %52 [
    i32 0, label %77
    i32 8, label %77
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 6
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %54, i32 -28
  br label %62

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  %60 = load i8, ptr %59, align 8
  %61 = and i8 %60, -2
  store i8 %61, ptr %59, align 8
  br label %62

62:                                               ; preds = %58, %56
  %63 = phi ptr [ %57, %56 ], [ @usb_generic_driver, %58 ]
  %64 = getelementptr inbounds %struct.usb_device_driver, ptr %63, i32 0, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = tail call i32 %65(ptr noundef %0, [1 x i32] %1) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67, %62
  %71 = getelementptr inbounds %struct.usb_device_driver, ptr %63, i32 0, i32 9
  %72 = load i8, ptr %71, align 4
  %73 = and i8 %72, 2
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @usb_generic_driver_suspend(ptr noundef %0, [1 x i32] %1) #11
  br label %77

77:                                               ; preds = %75, %70, %67, %48, %48
  %78 = phi i32 [ 0, %48 ], [ %76, %75 ], [ 0, %70 ], [ %68, %67 ], [ 0, %48 ]
  %79 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %80 = load ptr, ptr %79, align 4
  %81 = icmp ne ptr %80, null
  %82 = and i32 %4, 1024
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  %85 = select i1 %84, i32 0, i32 %78
  switch i32 %85, label %86 [
    i32 0, label %148
    i32 -16, label %92
  ]

86:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i16 0, ptr %3, align 2, !annotation !8
  %87 = call i32 @usb_get_status(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #11
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %92

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.18, i32 noundef %85) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %160

92:                                               ; preds = %89, %77, %42
  %93 = phi i32 [ %78, %89 ], [ %85, %77 ], [ %43, %42 ]
  %94 = phi i32 [ %50, %89 ], [ %50, %77 ], [ %20, %42 ]
  %95 = phi i32 [ %51, %89 ], [ %51, %77 ], [ %14, %42 ]
  %96 = load ptr, ptr %8, align 4
  %97 = icmp ne ptr %96, null
  %98 = add nsw i32 %94, 1
  %99 = icmp slt i32 %98, %95
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %160

101:                                              ; preds = %146, %92
  %102 = phi ptr [ %147, %146 ], [ %96, %92 ]
  %103 = phi i32 [ %144, %146 ], [ %98, %92 ]
  %104 = getelementptr %struct.usb_host_config, ptr %102, i32 0, i32 3, i32 %103
  %105 = load ptr, ptr %104, align 4
  %106 = load i32, ptr %5, align 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %143, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.usb_interface, ptr %105, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  switch i32 %110, label %129 [
    i32 3, label %143
    i32 0, label %111
  ]

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.usb_interface, ptr %105, i32 0, i32 6
  %113 = load i8, ptr %112, align 8
  %114 = and i8 %113, 16
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %143, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.usb_interface, ptr %105, i32 0, i32 7, i32 11, i32 1
  %118 = load i16, ptr %117, align 4
  %119 = and i16 %118, 8
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %116
  %122 = load ptr, ptr %105, align 8
  %123 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %122, i32 0, i32 2
  %124 = load i8, ptr %123, align 2
  %125 = zext i8 %124 to i32
  %126 = call i32 @usb_set_interface(ptr noundef %0, i32 noundef %125, i32 noundef 0) #11
  %127 = load i8, ptr %112, align 8
  %128 = and i8 %127, -17
  store i8 %128, ptr %112, align 8
  br label %143

129:                                              ; preds = %108
  %130 = getelementptr inbounds %struct.usb_interface, ptr %105, i32 0, i32 6
  %131 = load i8, ptr %130, align 8
  %132 = and i8 %131, 32
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.usb_interface, ptr %105, i32 0, i32 7, i32 6
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr i8, ptr %136, i32 -36
  %138 = load ptr, ptr %137, align 4
  %139 = call i32 %138(ptr noundef %105) #11
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.usb_interface, ptr %105, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.22, i32 noundef %139) #13
  br label %143

143:                                              ; preds = %141, %134, %129, %121, %116, %111, %108, %101
  %144 = add nsw i32 %103, 1
  %145 = icmp eq i32 %144, %95
  br i1 %145, label %160, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 4
  br label %101

148:                                              ; preds = %77
  %149 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %150 = load i16, ptr %149, align 1
  %151 = and i16 %150, -2
  store i16 %151, ptr %149, align 1
  br label %152

152:                                              ; preds = %152, %148
  %153 = phi i32 [ 0, %148 ], [ %158, %152 ]
  %154 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 22, i32 %153
  %155 = load ptr, ptr %154, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef %0, ptr noundef %155) #11
  %156 = getelementptr %struct.usb_device, ptr %0, i32 0, i32 21, i32 %153
  %157 = load ptr, ptr %156, align 4
  tail call void @usb_hcd_flush_endpoint(ptr noundef %0, ptr noundef %157) #11
  %158 = add nuw nsw i32 %153, 1
  %159 = icmp eq i32 %158, 16
  br i1 %159, label %160, label %152

160:                                              ; preds = %152, %143, %92, %90, %2, %2
  %161 = phi i32 [ 0, %2 ], [ %78, %90 ], [ %93, %92 ], [ 0, %2 ], [ %93, %143 ], [ 0, %152 ]
  ret i32 %161
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_port_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_resume_complete(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -104
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -128
  tail call fastcc void @rebind_marked_interfaces(ptr noundef %6)
  br label %7

7:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_resume(ptr noundef %0, [1 x i32] %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -128
  %4 = tail call fastcc i32 @usb_resume_both(ptr noundef %3, [1 x i32] %1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #11
  %7 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %0) #11
  tail call fastcc void @unbind_marked_interfaces(ptr noundef %3)
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp eq i32 %4, -19
  %10 = icmp eq i32 %4, -108
  %11 = or i1 %9, %10
  %12 = select i1 %11, i32 0, i32 %4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_resume_both(ptr noundef %0, [1 x i32] %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %147, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %8 = load i16, ptr %7, align 1
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 1
  %10 = icmp eq i32 %4, 8
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %65, label %16

16:                                               ; preds = %11, %6
  %17 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %18 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %138, label %21

21:                                               ; preds = %16
  %22 = extractvalue [1 x i32] %1, 0
  %23 = and i32 %22, 1024
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.usb_bus, ptr %31, i32 0, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.usb_bus, ptr %33, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  %39 = tail call i32 @device_pm_wait_for_dev(ptr noundef %17, ptr noundef %38) #11
  br label %40

40:                                               ; preds = %35, %29, %25, %21
  %41 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 36
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  %47 = load i8, ptr %46, align 8
  %48 = or i8 %47, 2
  store i8 %48, ptr %46, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load ptr, ptr %18, align 8
  %51 = getelementptr i8, ptr %50, i32 84
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = tail call i32 @usb_generic_driver_resume(ptr noundef %0, [1 x i32] %1) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %138

58:                                               ; preds = %55, %49
  %59 = getelementptr i8, ptr %50, i32 -8
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = tail call i32 %60(ptr noundef %0, [1 x i32] %1) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %138

65:                                               ; preds = %62, %58, %11
  %66 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %138, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.usb_config_descriptor, ptr %67, i32 0, i32 3
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %138, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  br label %75

75:                                               ; preds = %131, %73
  %76 = phi ptr [ %67, %73 ], [ %133, %131 ]
  %77 = phi i32 [ 0, %73 ], [ %132, %131 ]
  %78 = getelementptr %struct.usb_host_config, ptr %76, i32 0, i32 3, i32 %77
  %79 = load ptr, ptr %78, align 4
  %80 = load i8, ptr %74, align 8
  %81 = load i32, ptr %3, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %131, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.usb_interface, ptr %79, i32 0, i32 5
  %85 = load i32, ptr %84, align 4
  switch i32 %85, label %104 [
    i32 3, label %131
    i32 0, label %86
  ]

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.usb_interface, ptr %79, i32 0, i32 6
  %88 = load i8, ptr %87, align 8
  %89 = and i8 %88, 16
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %131, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.usb_interface, ptr %79, i32 0, i32 7, i32 11, i32 1
  %93 = load i16, ptr %92, align 4
  %94 = and i16 %93, 8
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %131

96:                                               ; preds = %91
  %97 = load ptr, ptr %79, align 8
  %98 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %97, i32 0, i32 2
  %99 = load i8, ptr %98, align 2
  %100 = zext i8 %99 to i32
  %101 = tail call i32 @usb_set_interface(ptr noundef %0, i32 noundef %100, i32 noundef 0) #11
  %102 = load i8, ptr %87, align 8
  %103 = and i8 %102, -17
  store i8 %103, ptr %87, align 8
  br label %131

104:                                              ; preds = %83
  %105 = getelementptr inbounds %struct.usb_interface, ptr %79, i32 0, i32 6
  %106 = load i8, ptr %105, align 8
  %107 = and i8 %106, 32
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.usb_interface, ptr %79, i32 0, i32 7
  %111 = getelementptr inbounds %struct.usb_interface, ptr %79, i32 0, i32 7, i32 6
  %112 = load ptr, ptr %111, align 8
  %113 = and i8 %80, 2
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %109
  %116 = getelementptr i8, ptr %112, i32 -32
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = tail call i32 %117(ptr noundef %79) #11
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %119
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %120) #13
  br label %131

123:                                              ; preds = %115
  %124 = or i8 %106, 32
  store i8 %124, ptr %105, align 8
  br label %131

125:                                              ; preds = %109
  %126 = getelementptr i8, ptr %112, i32 -36
  %127 = load ptr, ptr %126, align 4
  %128 = tail call i32 %127(ptr noundef %79) #11
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.22, i32 noundef %128) #13
  br label %131

131:                                              ; preds = %130, %125, %123, %122, %119, %104, %96, %91, %86, %83, %75
  %132 = add nuw nsw i32 %77, 1
  %133 = load ptr, ptr %66, align 4
  %134 = getelementptr inbounds %struct.usb_config_descriptor, ptr %133, i32 0, i32 3
  %135 = load i8, ptr %134, align 4
  %136 = zext i8 %135 to i32
  %137 = icmp ult i32 %132, %136
  br i1 %137, label %75, label %138

138:                                              ; preds = %131, %69, %65, %62, %55, %16
  %139 = phi i32 [ 0, %65 ], [ %63, %62 ], [ -107, %16 ], [ %56, %55 ], [ 0, %69 ], [ 0, %131 ]
  %140 = tail call i64 @ktime_get_mono_fast_ns() #11
  %141 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 11, i32 22
  store volatile i64 %140, ptr %141, align 8
  %142 = icmp eq i32 %139, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  %145 = load i8, ptr %144, align 8
  %146 = and i8 %145, -3
  store i8 %146, ptr %144, align 8
  br label %147

147:                                              ; preds = %143, %138, %2
  %148 = phi i32 [ 0, %143 ], [ %139, %138 ], [ -19, %2 ]
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_enable_autosuspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void @pm_runtime_allow(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_disable_autosuspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  tail call void @pm_runtime_forbid(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_autosuspend_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @ktime_get_mono_fast_ns() #11
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 11, i32 22
  store volatile i64 %2, ptr %3, align 8
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %5 = tail call i32 @__pm_runtime_suspend(ptr noundef %4, i32 noundef 12) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_autoresume_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15
  %3 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #11
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i32 @llvm.smin.i32(i32 %3, i32 0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_autopm_put_interface(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i64 @ktime_get_mono_fast_ns() #11
  %5 = getelementptr i8, ptr %3, i32 296
  store volatile i64 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %7 = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_autopm_put_interface_async(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i64 @ktime_get_mono_fast_ns() #11
  %5 = getelementptr i8, ptr %3, i32 296
  store volatile i64 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %7 = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_autopm_put_interface_no_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i64 @ktime_get_mono_fast_ns() #11
  %5 = getelementptr i8, ptr %3, i32 296
  store volatile i64 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #11, !srcloc !14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 0, i32 -1, ptr elementtype(i32) %6) #11, !srcloc !15
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  br label %11

11:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_autopm_get_interface(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %3 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #11
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call i32 @llvm.smin.i32(i32 %3, i32 0)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_autopm_get_interface_async(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %3 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 5) #11
  %4 = icmp slt i32 %3, 0
  %5 = icmp ne i32 %3, -115
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #11, !srcloc !14
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 0, i32 -1, ptr elementtype(i32) %8) #11, !srcloc !15
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  br label %13

13:                                               ; preds = %12, %7, %1
  %14 = icmp sgt i32 %3, 0
  %15 = icmp eq i32 %3, -115
  %16 = or i1 %14, %15
  %17 = select i1 %16, i32 0, i32 %3
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_autopm_get_interface_no_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i64 @ktime_get_mono_fast_ns() #11
  %5 = getelementptr i8, ptr %3, i32 296
  store volatile i64 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #11, !srcloc !14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #11, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_runtime_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = tail call fastcc i32 @autosuspend_check(ptr noundef %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @usb_suspend_both(ptr noundef %2, [1 x i32] [i32 1026])
  switch i32 %6, label %10 [
    i32 -11, label %7
    i32 -16, label %7
    i32 0, label %14
  ]

7:                                                ; preds = %5, %5
  %8 = tail call i64 @ktime_get_mono_fast_ns() #11
  %9 = getelementptr i8, ptr %0, i32 296
  store volatile i64 %8, ptr %9, align 8
  br label %10

10:                                               ; preds = %7, %5
  %11 = getelementptr i8, ptr %0, i32 -68
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %5
  br label %15

15:                                               ; preds = %14, %10, %1
  %16 = phi i32 [ %6, %14 ], [ -11, %1 ], [ -16, %10 ]
  ret i32 %16
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @autosuspend_check(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %79, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_config_descriptor, ptr %7, i32 0, i32 3
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %71, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 36
  br label %16

16:                                               ; preds = %47, %14
  %17 = phi i32 [ 0, %14 ], [ %48, %47 ]
  %18 = phi i32 [ 0, %14 ], [ %49, %47 ]
  %19 = getelementptr %struct.usb_host_config, ptr %7, i32 0, i32 3, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7, i32 11, i32 15
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 7
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7, i32 11, i32 13
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %79, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 6
  %31 = load i8, ptr %30, align 8
  %32 = lshr i8 %31, 3
  %33 = and i8 %32, 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %17, %34
  %36 = load i32, ptr %15, align 8
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7, i32 6
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr i8, ptr %41, i32 -32
  %43 = load ptr, ptr %42, align 4
  %44 = icmp ne ptr %43, null
  %45 = icmp eq i8 %33, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %79

47:                                               ; preds = %39, %29, %16
  %48 = phi i32 [ %17, %16 ], [ %35, %29 ], [ %35, %39 ]
  %49 = add nuw nsw i32 %18, 1
  %50 = icmp eq i32 %49, %12
  br i1 %50, label %51, label %16

51:                                               ; preds = %47
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 11, i32 1
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, 1
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.usb_bus, ptr %62, i32 0, i32 11
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %60, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.usb_hcd, ptr %62, i32 0, i32 14
  %68 = load i16, ptr %67, align 8
  %69 = and i16 %68, 2048
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66, %58, %51, %9, %5
  %72 = phi i32 [ 0, %51 ], [ %48, %66 ], [ %48, %58 ], [ 0, %5 ], [ 0, %9 ]
  %73 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 40
  %74 = trunc i32 %72 to i8
  %75 = load i8, ptr %73, align 8
  %76 = and i8 %74, 1
  %77 = and i8 %75, -2
  %78 = or i8 %77, %76
  store i8 %78, ptr %73, align 8
  br label %79

79:                                               ; preds = %71, %66, %53, %39, %25, %1
  %80 = phi i32 [ 0, %71 ], [ -19, %1 ], [ -95, %53 ], [ -95, %66 ], [ -95, %39 ], [ -16, %25 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_runtime_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = tail call fastcc i32 @usb_resume_both(ptr noundef %2, [1 x i32] [i32 1040])
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_runtime_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = tail call fastcc i32 @autosuspend_check(ptr noundef %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @__pm_runtime_suspend(ptr noundef %0, i32 noundef 8) #11
  br label %7

7:                                                ; preds = %5, %1
  ret i32 -16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_enable_usb2_hardware_lpm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %3 = load i16, ptr %2, align 1
  %4 = and i16 %3, 1664
  %5 = icmp eq i16 %4, 1152
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hc_driver, ptr %10, i32 0, i32 40
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %6
  %15 = tail call i32 %12(ptr noundef %8, ptr noundef %0, i32 noundef 1) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i16, ptr %2, align 1
  %19 = or i16 %18, 512
  store i16 %19, ptr %2, align 1
  br label %20

20:                                               ; preds = %17, %14, %6, %1
  %21 = phi i32 [ 0, %1 ], [ %15, %14 ], [ 0, %17 ], [ -1, %6 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_disable_usb2_hardware_lpm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %3 = load i16, ptr %2, align 1
  %4 = and i16 %3, 512
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hc_driver, ptr %10, i32 0, i32 40
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %6
  %15 = tail call i32 %12(ptr noundef %8, ptr noundef %0, i32 noundef 0) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i16, ptr %2, align 1
  %19 = and i16 %18, -513
  store i16 %19, ptr %2, align 1
  br label %20

20:                                               ; preds = %17, %14, %6, %1
  %21 = phi i32 [ 0, %1 ], [ %15, %14 ], [ 0, %17 ], [ -1, %6 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_device_match(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @usb_device_type
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usbdrv_wrap, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %91, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -128
  %12 = getelementptr i8, ptr %1, i32 80
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr i8, ptr %1, i32 -24
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %14, label %18, label %19

18:                                               ; preds = %10
  br i1 %17, label %91, label %27

19:                                               ; preds = %10
  %20 = tail call ptr @usb_device_match_id(ptr noundef %11, ptr noundef nonnull %13) #11
  br i1 %17, label %25, label %21

21:                                               ; preds = %19
  %22 = icmp eq ptr %20, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %21
  %24 = tail call zeroext i1 %16(ptr noundef %11) #11
  br label %29

25:                                               ; preds = %19
  %26 = icmp ne ptr %20, null
  br label %29

27:                                               ; preds = %18
  %28 = tail call zeroext i1 %16(ptr noundef %11) #11
  br label %29

29:                                               ; preds = %27, %25, %23, %21
  %30 = phi i1 [ %26, %25 ], [ %28, %27 ], [ false, %21 ], [ %24, %23 ]
  %31 = zext i1 %30 to i32
  br label %91

32:                                               ; preds = %2
  %33 = icmp eq ptr %4, @usb_if_device_type
  br i1 %33, label %34, label %91

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.usbdrv_wrap, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %89

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i32 -32
  %40 = getelementptr i8, ptr %1, i32 -20
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %71, label %43

43:                                               ; preds = %67, %38
  %44 = phi ptr [ %68, %67 ], [ %41, %38 ]
  %45 = getelementptr inbounds %struct.usb_device_id, ptr %44, i32 0, i32 1
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.usb_device_id, ptr %44, i32 0, i32 2
  %50 = load i16, ptr %49, align 4
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.usb_device_id, ptr %44, i32 0, i32 5
  %54 = load i8, ptr %53, align 2
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.usb_device_id, ptr %44, i32 0, i32 8
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.usb_device_id, ptr %44, i32 0, i32 12
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60, %56, %52, %48, %43
  %65 = tail call i32 @usb_match_one_id(ptr noundef %39, ptr noundef %44) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = getelementptr %struct.usb_device_id, ptr %44, i32 1
  br label %43

69:                                               ; preds = %64
  %70 = icmp eq ptr %44, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %69, %60, %38
  %72 = getelementptr i8, ptr %1, i32 -12
  tail call void @_raw_spin_lock(ptr noundef %72) #11
  %73 = getelementptr i8, ptr %1, i32 -8
  br label %74

74:                                               ; preds = %78, %71
  %75 = phi ptr [ %73, %71 ], [ %76, %78 ]
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %73
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.usb_dynid, ptr %76, i32 0, i32 1
  %80 = tail call i32 @usb_match_one_id(ptr noundef %39, ptr noundef %79) #11
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %74, label %85

82:                                               ; preds = %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %83 = load i16, ptr %72, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %72, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br label %91

85:                                               ; preds = %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %86 = load i16, ptr %72, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %72, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  %88 = icmp eq ptr %79, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85, %69, %34
  %90 = phi i32 [ 1, %85 ], [ 1, %69 ], [ 0, %34 ]
  br label %91

91:                                               ; preds = %89, %85, %82, %32, %29, %18, %6
  %92 = phi i32 [ %31, %29 ], [ 0, %6 ], [ 1, %18 ], [ %90, %89 ], [ 0, %85 ], [ 0, %32 ], [ 0, %82 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb_uevent(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @usb_device_type
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, @usb_if_device_type
  br i1 %7, label %8, label %45

8:                                                ; preds = %6
  %9 = getelementptr i8, ptr %0, i32 36
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ %0, %2 ]
  %13 = getelementptr i8, ptr %12, i32 -128
  %14 = load i32, ptr %13, align 8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 -64
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %12, i32 480
  %22 = load i16, ptr %21, align 8
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %12, i32 482
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = getelementptr i8, ptr %12, i32 484
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %23, i32 noundef %26, i32 noundef %29) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %20
  %33 = getelementptr i8, ptr %12, i32 476
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = getelementptr i8, ptr %12, i32 477
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr i8, ptr %12, i32 478
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  %42 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %35, i32 noundef %38, i32 noundef %41) #11
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 0, i32 -12
  br label %45

45:                                               ; preds = %32, %20, %16, %11, %6
  %46 = phi i32 [ 0, %6 ], [ -19, %11 ], [ -19, %16 ], [ -12, %20 ], [ %44, %32 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlocked_disable_lpm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disable_interface(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_free_streams(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_interface(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unlocked_enable_lpm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_generic_driver_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_generic_driver_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_reprobe(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_device_is_owned(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @new_id_show(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %38, label %6

6:                                                ; preds = %33, %2
  %7 = phi ptr [ %36, %33 ], [ %4, %2 ]
  %8 = phi i32 [ %35, %33 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %6
  %13 = zext i8 %10 to i32
  %14 = getelementptr i8, ptr %1, i32 %8
  %15 = sub i32 4096, %8
  %16 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 2
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %14, i32 noundef %15, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %21, i32 noundef %13) #11
  br label %33

23:                                               ; preds = %6
  %24 = getelementptr i8, ptr %1, i32 %8
  %25 = sub i32 4096, %8
  %26 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 2
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %24, i32 noundef %25, ptr noundef nonnull @.str.2, i32 noundef %28, i32 noundef %31) #11
  br label %33

33:                                               ; preds = %23, %12
  %34 = phi i32 [ %22, %12 ], [ %32, %23 ]
  %35 = add i32 %34, %8
  %36 = load ptr, ptr %7, align 4
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %38, label %6

38:                                               ; preds = %33, %2
  %39 = phi i32 [ 0, %2 ], [ %35, %33 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @new_id_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = getelementptr i8, ptr %0, i32 -20
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @usb_store_new_id(ptr noundef %4, ptr noundef %6, ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_id_show(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %38, label %6

6:                                                ; preds = %33, %2
  %7 = phi ptr [ %36, %33 ], [ %4, %2 ]
  %8 = phi i32 [ %35, %33 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %6
  %13 = zext i8 %10 to i32
  %14 = getelementptr i8, ptr %1, i32 %8
  %15 = sub i32 4096, %8
  %16 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 2
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %14, i32 noundef %15, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %21, i32 noundef %13) #11
  br label %33

23:                                               ; preds = %6
  %24 = getelementptr i8, ptr %1, i32 %8
  %25 = sub i32 4096, %8
  %26 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.usb_dynid, ptr %7, i32 0, i32 1, i32 2
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %24, i32 noundef %25, ptr noundef nonnull @.str.2, i32 noundef %28, i32 noundef %31) #11
  br label %33

33:                                               ; preds = %23, %12
  %34 = phi i32 [ %22, %12 ], [ %32, %23 ]
  %35 = add i32 %34, %8
  %36 = load ptr, ptr %7, align 4
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %38, label %6

38:                                               ; preds = %33, %2
  %39 = phi i32 [ 0, %2 ], [ %35, %33 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_id_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %37, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -12
  call void @_raw_spin_lock(ptr noundef %9) #11
  %10 = getelementptr i8, ptr %0, i32 -8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %34, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %4, align 4
  %15 = load i32, ptr %5, align 4
  br label %16

16:                                               ; preds = %32, %13
  %17 = phi ptr [ %11, %13 ], [ %18, %32 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_dynid, ptr %17, i32 0, i32 1, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp eq i32 %14, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.usb_dynid, ptr %17, i32 0, i32 1, i32 2
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %15, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %18, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  call void @kfree(ptr noundef %17) #11
  br label %34

32:                                               ; preds = %23, %16
  %33 = icmp eq ptr %18, %10
  br i1 %33, label %34, label %16

34:                                               ; preds = %32, %28, %8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  %35 = load i16, ptr %9, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  br label %37

37:                                               ; preds = %34, %3
  %38 = phi i32 [ %2, %34 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_flush_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_generic_driver_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_status(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_pm_wait_for_dev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_generic_driver_resume(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
!9 = !{i64 2149267263}
!10 = !{i64 2149263087}
!11 = !{i64 2149263162, i64 2149263189, i64 2149263236, i64 2149263258, i64 2149263286, i64 2149263306}
!12 = !{i64 2149290266}
!13 = !{i64 2148194657}
!14 = !{i64 630322, i64 2148131888, i64 2148131914, i64 2148131961, i64 2148131983, i64 2148132011, i64 2148132031}
!15 = !{i64 616891, i64 616916, i64 616938, i64 616954, i64 616966, i64 616986, i64 617010, i64 617026, i64 617038}
!16 = !{i64 2148194783}
!17 = !{i64 2148195150, i64 2148195176, i64 2148195205, i64 2148195239, i64 2148195270, i64 2148195293}
