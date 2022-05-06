; ModuleID = '/llk/IR/drivers/usb/host/ehci-hcd.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-hcd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ehci_handshake:\09\09\09\09\09"
module asm "\09.asciz \09\22ehci_handshake\22\09\09\09\09\09"
module asm "__kstrtabns_ehci_handshake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ehci_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22ehci_reset\22\09\09\09\09\09"
module asm "__kstrtabns_ehci_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ehci_adjust_port_wakeup_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22ehci_adjust_port_wakeup_flags\22\09\09\09\09\09"
module asm "__kstrtabns_ehci_adjust_port_wakeup_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ehci_hub_control:\09\09\09\09\09"
module asm "\09.asciz \09\22ehci_hub_control\22\09\09\09\09\09"
module asm "__kstrtabns_ehci_hub_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ehci_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22ehci_setup\22\09\09\09\09\09"
module asm "__kstrtabns_ehci_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ehci_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22ehci_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_ehci_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ehci_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ehci_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ehci_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ehci_init_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22ehci_init_driver\22\09\09\09\09\09"
module asm "__kstrtabns_ehci_init_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.ehci_hcd = type { i32, i32, [12 x i64], %struct.hrtimer, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i8, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, %struct.list_head, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, [15 x i32], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i32, i24, ptr, i8, i8, [64 x i8], [64 x i8], %struct.list_head, [0 x i32] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.71, %union.anon.73, [2 x i32], i32 }
%union.anon.71 = type { [15 x i32] }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { i32, [15 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.usb_hub_descriptor = type <{ i8, i8, i8, i16, i8, i8, %union.anon.76 }>
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { [4 x i8], [4 x i8] }
%struct.ehci_caps = type { i32, i32, i32, [8 x i8] }
%struct.ehci_qh_hw = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [28 x i8] }
%struct.ehci_qh = type { ptr, i32, %union.ehci_shadow, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.ehci_per_sched, i32, i8, i8, i8, i8, i8 }
%union.ehci_shadow = type { ptr }
%struct.ehci_per_sched = type { ptr, ptr, %struct.list_head, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.ehci_qtd = type { i32, i32, i32, [5 x i32], [5 x i32], i32, %struct.list_head, ptr, i32, [24 x i8] }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.ehci_itd = type { i32, [8 x i32], [7 x i32], [7 x i32], i32, %union.ehci_shadow, ptr, ptr, %struct.list_head, i32, i32, [8 x i32], [4 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ehci_iso_stream = type { ptr, i8, i8, %struct.list_head, %struct.list_head, %struct.ehci_per_sched, i32, i32, i16, i16, i32, i32, i32, i32, i32 }
%struct.ehci_sitd = type { i32, i32, i32, i32, [2 x i32], i32, [2 x i32], i32, %union.ehci_shadow, ptr, ptr, %struct.list_head, i32, i32, [28 x i8] }
%struct.ehci_tt = type { [8 x i16], %struct.list_head, %struct.list_head, ptr, i32 }
%struct.ehci_fstn = type { i32, i32, i32, %union.ehci_shadow, [16 x i8] }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.ehci_iso_sched = type { %struct.list_head, i32, i32, [0 x %struct.ehci_iso_packet] }
%struct.ehci_iso_packet = type { i64, i32, i8, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__param_str_log2_irq_thresh = internal constant [25 x i8] c"ehci_hcd.log2_irq_thresh\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@log2_irq_thresh = internal global i32 0, align 4
@__param_log2_irq_thresh = internal constant %struct.kernel_param { ptr @__param_str_log2_irq_thresh, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @log2_irq_thresh } }, section "__param", align 4
@__UNIQUE_ID_log2_irq_threshtype256 = internal constant [38 x i8] c"ehci_hcd.parmtype=log2_irq_thresh:int\00", section ".modinfo", align 1
@__UNIQUE_ID_log2_irq_thresh257 = internal constant [65 x i8] c"ehci_hcd.parm=log2_irq_thresh:log2 IRQ latency, 1-64 microframes\00", section ".modinfo", align 1
@__param_str_park = internal constant [14 x i8] c"ehci_hcd.park\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@park = internal global i32 0, align 4
@__param_park = internal constant %struct.kernel_param { ptr @__param_str_park, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @park } }, section "__param", align 4
@__UNIQUE_ID_parktype258 = internal constant [28 x i8] c"ehci_hcd.parmtype=park:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_park259 = internal constant [64 x i8] c"ehci_hcd.parm=park:park setting; 1-3 back-to-back async packets\00", section ".modinfo", align 1
@__param_str_ignore_oc = internal constant [19 x i8] c"ehci_hcd.ignore_oc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ignore_oc = internal global i8 0, align 1
@__param_ignore_oc = internal constant %struct.kernel_param { ptr @__param_str_ignore_oc, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @ignore_oc } }, section "__param", align 4
@__UNIQUE_ID_ignore_octype260 = internal constant [33 x i8] c"ehci_hcd.parmtype=ignore_oc:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_oc261 = internal constant [70 x i8] c"ehci_hcd.parm=ignore_oc:ignore bogus hardware overcurrent indications\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_ehci_handshake = external dso_local constant [0 x i8], align 1
@__kstrtabns_ehci_handshake = external dso_local constant [0 x i8], align 1
@__ksymtab_ehci_handshake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ehci_handshake to i32), ptr @__kstrtab_ehci_handshake, ptr @__kstrtabns_ehci_handshake }, section "___ksymtab_gpl+ehci_handshake", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_ehci_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ehci_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_ehci_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ehci_reset to i32), ptr @__kstrtab_ehci_reset, ptr @__kstrtabns_ehci_reset }, section "___ksymtab_gpl+ehci_reset", align 4
@__kstrtab_ehci_adjust_port_wakeup_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_ehci_adjust_port_wakeup_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_ehci_adjust_port_wakeup_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ehci_adjust_port_wakeup_flags to i32), ptr @__kstrtab_ehci_adjust_port_wakeup_flags, ptr @__kstrtabns_ehci_adjust_port_wakeup_flags }, section "___ksymtab_gpl+ehci_adjust_port_wakeup_flags", align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"port %d resume error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"port %d reset error %d\0A\00", align 1
@__kstrtab_ehci_hub_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_ehci_hub_control = external dso_local constant [0 x i8], align 1
@__ksymtab_ehci_hub_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ehci_hub_control to i32), ptr @__kstrtab_ehci_hub_control, ptr @__kstrtabns_ehci_hub_control }, section "___ksymtab_gpl+ehci_hub_control", align 4
@__kstrtab_ehci_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ehci_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_ehci_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ehci_setup to i32), ptr @__kstrtab_ehci_setup, ptr @__kstrtabns_ehci_setup }, section "___ksymtab_gpl+ehci_setup", align 4
@__kstrtab_ehci_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_ehci_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_ehci_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ehci_suspend to i32), ptr @__kstrtab_ehci_suspend, ptr @__kstrtabns_ehci_suspend }, section "___ksymtab_gpl+ehci_suspend", align 4
@__kstrtab_ehci_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ehci_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ehci_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ehci_resume to i32), ptr @__kstrtab_ehci_resume, ptr @__kstrtabns_ehci_resume }, section "___ksymtab_gpl+ehci_resume", align 4
@ehci_hc_driver = internal unnamed_addr constant %struct.hc_driver { ptr @hcd_name, ptr @.str.13, i32 608, ptr @ehci_irq, i32 291, ptr @ehci_setup, ptr @ehci_run, ptr null, ptr null, ptr @ehci_stop, ptr @ehci_shutdown, ptr @ehci_get_frame, ptr @ehci_urb_enqueue, ptr @ehci_urb_dequeue, ptr null, ptr null, ptr @ehci_endpoint_disable, ptr @ehci_endpoint_reset, ptr @ehci_hub_status_data, ptr @ehci_hub_control, ptr @ehci_bus_suspend, ptr @ehci_bus_resume, ptr null, ptr @ehci_get_resuming_ports, ptr @ehci_relinquish_port, ptr @ehci_port_handed_over, ptr @ehci_clear_tt_buffer_complete, ptr null, ptr @ehci_remove_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ehci_init_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_ehci_init_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_ehci_init_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ehci_init_driver to i32), ptr @__kstrtab_ehci_init_driver, ptr @__kstrtabns_ehci_init_driver }, section "___ksymtab_gpl+ehci_init_driver", align 4
@__UNIQUE_ID_description288 = internal constant [70 x i8] c"ehci_hcd.description=USB 2.0 'Enhanced' Host Controller (EHCI) Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author289 = internal constant [31 x i8] c"ehci_hcd.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [40 x i8] c"ehci_hcd.file=drivers/usb/host/ehci-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [21 x i8] c"ehci_hcd.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ehci_hcd__292_1371_ehci_hcd_init6 = internal global ptr @ehci_hcd_init, section ".initcall6.init", align 4
@platform_drivers = internal constant [0 x ptr] zeroinitializer, align 4
@usb_hcds_loaded = external dso_local global i32, align 4
@__exitcall_ehci_hcd_cleanup = internal global ptr @ehci_hcd_cleanup, section ".exitcall.exit", align 4
@event_handlers = internal unnamed_addr constant [12 x ptr] [ptr @ehci_poll_ASS, ptr @ehci_poll_PSS, ptr @ehci_handle_controller_death, ptr @ehci_handle_intr_unlinks, ptr @end_free_itds, ptr @end_unlink_async, ptr @ehci_handle_start_intr_unlinks, ptr @unlink_empty_async, ptr @ehci_iaa_watchdog, ptr @ehci_disable_PSE, ptr @ehci_disable_ASE, ptr @ehci_work], align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"Waited too long for the controller to stop, giving up\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"can't reschedule qh %p, err %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@max_tt_usecs = internal unnamed_addr constant [8 x i8] c"}}}}}}\1E\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"qh %p should be inactive!\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"drivers/usb/host/ehci-q.c\00", align 1
@event_delays_ns = internal unnamed_addr constant [12 x i32] [i32 1000000, i32 1000000, i32 1000000, i32 1125000, i32 2000000, i32 2000000, i32 5000000, i32 6000000, i32 10000000, i32 10000000, i32 15000000, i32 100000000], align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"ehci_qtd\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ehci_qh\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"ehci_itd\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"ehci_sitd\00", align 1
@hcd_name = internal constant [9 x i8] c"ehci_hcd\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"EHCI Host Controller\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"fatal error\0A\00", align 1
@ehci_cf_port_reset_rwsem = external dso_local global %struct.rw_semaphore, align 4
@.str.17 = private unnamed_addr constant [44 x i8] c"USB %x.%x, controller refused to start: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"USB %x.%x started, EHCI %x.%02x%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c", overcurrent ignored\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dev_attr_companion = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420 }, ptr @companion_show, ptr @companion_store }, align 4
@dev_attr_uframe_periodic_max = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420 }, ptr @uframe_periodic_max_show, ptr @uframe_periodic_max_store }, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"companion\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"uframe_periodic_max\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"rejecting invalid request for uframe_periodic_max=%u\0A\00", align 1
@.str.26 = private unnamed_addr constant [95 x i8] c"cannot decrease uframe_periodic_max because periodic bandwidth is already allocated (%u > %u)\0A\00", align 1
@.str.27 = private unnamed_addr constant [60 x i8] c"setting max periodic bandwidth to %u%% (== %u usec/uframe)\0A\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"max periodic bandwidth set is non-standard\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"include/linux/usb.h\00", align 1
@iso_stream_init.smask_out = internal unnamed_addr constant [6 x i8] c"\01\03\07\0F\1F?", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"drivers/usb/host/ehci-hcd.c\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"qh %p (#%02x) state %d%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"(has tds)\00", align 1
@ehci_endpoint_reset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"clear_halt for a busy endpoint\0A\00", align 1
@.str.36 = private unnamed_addr constant [56 x i8] c"\016%s: USB 2.0 'Enhanced' Host Controller (EHCI) Driver\0A\00", align 1
@.str.37 = private unnamed_addr constant [85 x i8] c"\014Warning! ehci_hcd should always be loaded before uhci_hcd and ohci_hcd, not after\0A\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_ignore_oc261, ptr @__UNIQUE_ID_ignore_octype260, ptr @__UNIQUE_ID_license291, ptr @__UNIQUE_ID_log2_irq_thresh257, ptr @__UNIQUE_ID_log2_irq_threshtype256, ptr @__UNIQUE_ID_park259, ptr @__UNIQUE_ID_parktype258, ptr @__exitcall_ehci_hcd_cleanup, ptr @__initcall__kmod_ehci_hcd__292_1371_ehci_hcd_init6, ptr @__ksymtab_ehci_adjust_port_wakeup_flags, ptr @__ksymtab_ehci_handshake, ptr @__ksymtab_ehci_hub_control, ptr @__ksymtab_ehci_init_driver, ptr @__ksymtab_ehci_reset, ptr @__ksymtab_ehci_resume, ptr @__ksymtab_ehci_setup, ptr @__ksymtab_ehci_suspend, ptr @__param_ignore_oc, ptr @__param_log2_irq_thresh, ptr @__param_park, ptr @ehci_hcd_cleanup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ehci_handshake(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  br label %6

6:                                                ; preds = %13, %5
  %7 = phi i32 [ %4, %5 ], [ %15, %13 ]
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = and i32 %8, %2
  %12 = icmp eq i32 %11, %3
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #18
  %15 = add i32 %7, -1
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %6, label %17

17:                                               ; preds = %13, %10, %6
  %18 = phi i32 [ -19, %6 ], [ 0, %10 ], [ -110, %13 ]
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ehci_reset(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %5 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = or i32 %4, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %11) #18, !srcloc !11
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  store i32 0, ptr %13, align 8
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 55
  store i32 %14, ptr %15, align 8
  %16 = load ptr, ptr %2, align 8
  br label %17

17:                                               ; preds = %24, %12
  %18 = phi i32 [ 250000, %12 ], [ %26, %24 ]
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = and i32 %19, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #18
  %26 = add nsw i32 %18, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %17

28:                                               ; preds = %24, %21, %17
  %29 = phi i1 [ false, %17 ], [ true, %21 ], [ false, %24 ]
  %30 = phi i32 [ -19, %17 ], [ 0, %21 ], [ -110, %24 ]
  %31 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 60
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %28
  %36 = load i32, ptr %5, align 4
  %37 = and i32 %36, 16384
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.ehci_regs, ptr %40, i32 0, i32 14
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 35) #18, !srcloc !11
  %42 = load i32, ptr %5, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %36, %35 ], [ %42, %39 ]
  %45 = and i32 %44, 16384
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds %struct.ehci_regs, ptr %48, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 524288) #18, !srcloc !11
  br label %50

50:                                               ; preds = %47, %43, %28
  br i1 %29, label %51, label %71

51:                                               ; preds = %50
  %52 = getelementptr i8, ptr %0, i32 -152
  %53 = load i16, ptr %52, align 8
  %54 = and i16 %53, 128
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds %struct.ehci_regs, ptr %57, i32 0, i32 11, i32 0, i32 9
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %60 = load i32, ptr %5, align 4
  %61 = and i32 %60, 16384
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds %struct.ehci_regs, ptr %64, i32 0, i32 11, i32 0, i32 9
  %66 = or i32 %59, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %66) #18, !srcloc !11
  br label %67

67:                                               ; preds = %63, %56, %51
  %68 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 49
  store i32 0, ptr %68, align 8
  %69 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 48
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 47
  store i32 0, ptr %70, align 8
  br label %71

71:                                               ; preds = %67, %50
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ehci_adjust_port_wakeup_flags(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -352
  %5 = getelementptr i8, ptr %0, i32 -288
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 40
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  %11 = or i1 %10, %2
  br i1 %11, label %123, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #18
  %14 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 60
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 10
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %25 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  br label %26

26:                                               ; preds = %37, %23
  %27 = phi i32 [ %21, %23 ], [ %28, %37 ]
  %28 = add nsw i32 %27, -1
  %29 = load ptr, ptr %24, align 8
  %30 = getelementptr %struct.ehci_regs, ptr %29, i32 0, i32 12, i32 0, i32 1, i32 %28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %32 = load i32, ptr %25, align 4
  %33 = and i32 %32, 16384
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = and i32 %31, -4194305
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %36) #18, !srcloc !11
  br label %37

37:                                               ; preds = %35, %26
  %38 = icmp eq i32 %28, 0
  br i1 %38, label %39, label %26

39:                                               ; preds = %37, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %40 = load i16, ptr %13, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  tail call void @msleep(i32 noundef 5) #18
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #18
  br label %42

42:                                               ; preds = %39, %12
  %43 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 10
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %49 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  br label %50

50:                                               ; preds = %71, %47
  %51 = phi i32 [ %45, %47 ], [ %52, %71 ]
  %52 = add nsw i32 %51, -1
  %53 = load ptr, ptr %48, align 8
  %54 = getelementptr inbounds %struct.ehci_regs, ptr %53, i32 0, i32 11
  %55 = getelementptr [15 x i32], ptr %54, i32 0, i32 %52
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %57 = and i32 %56, -7340075
  br i1 %1, label %65, label %58

58:                                               ; preds = %50
  %59 = and i32 %56, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = or i32 %57, 6291456
  br label %65

63:                                               ; preds = %58
  %64 = or i32 %57, 5242880
  br label %65

65:                                               ; preds = %63, %61, %50
  %66 = phi i32 [ %57, %50 ], [ %62, %61 ], [ %64, %63 ]
  %67 = load i32, ptr %49, align 4
  %68 = and i32 %67, 16384
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %66) #18, !srcloc !11
  br label %71

71:                                               ; preds = %70, %65
  %72 = icmp eq i32 %52, 0
  br i1 %72, label %73, label %50

73:                                               ; preds = %71, %42
  %74 = load i8, ptr %14, align 4
  %75 = and i8 %74, 2
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr %43, align 8
  %79 = and i32 %78, 15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %83 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  br label %84

84:                                               ; preds = %95, %81
  %85 = phi i32 [ %79, %81 ], [ %86, %95 ]
  %86 = add nsw i32 %85, -1
  %87 = load ptr, ptr %82, align 8
  %88 = getelementptr %struct.ehci_regs, ptr %87, i32 0, i32 12, i32 0, i32 1, i32 %86
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %90 = load i32, ptr %83, align 4
  %91 = and i32 %90, 16384
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = or i32 %89, 4194304
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %94) #18, !srcloc !11
  br label %95

95:                                               ; preds = %93, %84
  %96 = icmp eq i32 %86, 0
  br i1 %96, label %97, label %84

97:                                               ; preds = %95, %77, %73
  br i1 %1, label %120, label %98

98:                                               ; preds = %97
  %99 = load i32, ptr %43, align 8
  %100 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.ehci_regs, ptr %101, i32 0, i32 1
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %104 = and i32 %103, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %98
  %107 = and i32 %99, 15
  br label %108

108:                                              ; preds = %111, %106
  %109 = phi i32 [ %112, %111 ], [ %107, %106 ]
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = add nsw i32 %109, -1
  %113 = load ptr, ptr %100, align 8
  %114 = getelementptr inbounds %struct.ehci_regs, ptr %113, i32 0, i32 11
  %115 = getelementptr [15 x i32], ptr %114, i32 0, i32 %112
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %117 = and i32 %116, 2
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %108, label %119

119:                                              ; preds = %111, %98
  tail call void @usb_hcd_resume_root_hub(ptr noundef %4) #18
  br label %120

120:                                              ; preds = %119, %108, %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %121 = load i16, ptr %13, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  br label %123

123:                                              ; preds = %120, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ehci_hub_control(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, ptr nocapture noundef writeonly %4, i16 zeroext %5) #0 {
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 15
  %11 = zext i16 %3 to i32
  %12 = add nuw nsw i32 %11, 255
  %13 = and i32 %12, 255
  %14 = icmp ugt i32 %13, 14
  %15 = select i1 %14, i32 0, i32 %13
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ehci_regs, ptr %17, i32 0, i32 11
  %19 = getelementptr [15 x i32], ptr %18, i32 0, i32 %15
  %20 = getelementptr %struct.ehci_regs, ptr %17, i32 0, i32 12, i32 0, i32 1, i32 %15
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #18
  switch i16 %1, label %546 [
    i16 8193, label %23
    i16 8961, label %25
    i16 -24570, label %141
    i16 -24576, label %161
    i16 -23808, label %162
    i16 8195, label %399
    i16 8963, label %401
  ]

23:                                               ; preds = %6
  %24 = icmp ult i16 %2, 2
  br i1 %24, label %548, label %546

25:                                               ; preds = %6
  %26 = icmp eq i16 %3, 0
  %27 = icmp ult i32 %10, %11
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %546, label %29

29:                                               ; preds = %25
  %30 = add i16 %3, -1
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %32 = and i32 %31, -43
  switch i16 %2, label %546 [
    i16 1, label %33
    i16 17, label %40
    i16 2, label %47
    i16 18, label %113
    i16 8, label %116
    i16 16, label %123
    i16 19, label %130
    i16 20, label %137
  ]

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 16384
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %137

38:                                               ; preds = %33
  %39 = and i32 %31, -47
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %39) #18, !srcloc !11
  br label %137

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 16384
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %137

45:                                               ; preds = %40
  %46 = or i32 %32, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %46) #18, !srcloc !11
  br label %137

47:                                               ; preds = %29
  %48 = and i32 %31, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %546

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %137

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = zext i16 %30 to i32
  %60 = add nuw nsw i32 %59, 1
  %61 = icmp eq i32 %60, %58
  br i1 %61, label %62, label %79

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 6
  %64 = load i8, ptr %63, align 2
  %65 = and i8 %64, 2
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 10
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.usb_phy, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %137, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.usb_otg, ptr %71, i32 0, i32 10
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %137, label %77

77:                                               ; preds = %73
  %78 = tail call i32 %75(ptr noundef nonnull %71) #18
  br label %137

79:                                               ; preds = %62, %55
  %80 = and i32 %31, 128
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %137, label %82

82:                                               ; preds = %79
  %83 = and i32 %31, 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %546, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 16
  %87 = load i8, ptr %86, align 4
  %88 = and i8 %87, 2
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %85
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %92 = load i32, ptr %51, align 4
  %93 = and i32 %92, 16384
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = and i32 %91, -4194305
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %96) #18, !srcloc !11
  br label %97

97:                                               ; preds = %95, %90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #18
  tail call void @msleep(i32 noundef 5) #18
  %98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #18
  %99 = load i32, ptr %51, align 4
  br label %100

100:                                              ; preds = %97, %85
  %101 = phi i32 [ %99, %97 ], [ %52, %85 ]
  %102 = phi i32 [ %98, %97 ], [ %22, %85 ]
  %103 = and i32 %101, 16384
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = and i32 %31, -7340139
  %107 = or i32 %106, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %107) #18, !srcloc !11
  br label %108

108:                                              ; preds = %105, %100
  %109 = load volatile i32, ptr @jiffies, align 64
  %110 = add i32 %109, 4
  %111 = getelementptr %struct.ehci_hcd, ptr %7, i32 0, i32 43, i32 %59
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 11
  tail call void @_set_bit(i32 noundef %59, ptr noundef %112) #18
  tail call void @usb_hcd_start_port_resume(ptr noundef %0, i32 noundef %59) #18
  br label %137

113:                                              ; preds = %29
  %114 = zext i16 %30 to i32
  %115 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef %114, ptr noundef %115) #18
  br label %137

116:                                              ; preds = %29
  %117 = load i32, ptr %8, align 8
  %118 = and i32 %117, 16
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %137, label %120

120:                                              ; preds = %116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #18
  %121 = zext i16 %30 to i32
  tail call fastcc void @ehci_port_power(ptr noundef %7, i32 noundef %121, i1 noundef zeroext false)
  %122 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #18
  br label %137

123:                                              ; preds = %29
  %124 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %125, 16384
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = or i32 %32, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %129) #18, !srcloc !11
  br label %137

130:                                              ; preds = %29
  %131 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, 16384
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = or i32 %32, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %136) #18, !srcloc !11
  br label %137

137:                                              ; preds = %135, %130, %128, %123, %120, %116, %113, %108, %79, %77, %73, %67, %50, %45, %40, %38, %33, %29
  %138 = phi i32 [ %22, %29 ], [ %122, %120 ], [ %22, %116 ], [ %22, %113 ], [ %22, %50 ], [ %102, %108 ], [ %22, %79 ], [ %22, %33 ], [ %22, %38 ], [ %22, %40 ], [ %22, %45 ], [ %22, %67 ], [ %22, %73 ], [ %22, %77 ], [ %22, %123 ], [ %22, %128 ], [ %22, %130 ], [ %22, %135 ]
  %139 = load ptr, ptr %16, align 8
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %548

141:                                              ; preds = %6
  %142 = load i32, ptr %8, align 8
  %143 = and i32 %142, 15
  %144 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 1
  store i8 41, ptr %144, align 1
  %145 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 4
  store i8 10, ptr %145, align 1
  %146 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 5
  store i8 0, ptr %146, align 1
  %147 = trunc i32 %143 to i8
  %148 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 2
  store i8 %147, ptr %148, align 1
  %149 = lshr i32 %143, 3
  %150 = add nuw nsw i32 %149, 1
  %151 = trunc i32 %150 to i8
  %152 = shl nuw nsw i8 %151, 1
  %153 = add nuw nsw i8 %152, 7
  store i8 %153, ptr %4, align 1
  %154 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 %154, i8 0, i32 %150, i1 false) #18
  %155 = getelementptr [4 x i8], ptr %154, i32 0, i32 %150
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 %155, i8 -1, i32 %150, i1 false) #18
  %156 = load i32, ptr %8, align 8
  %157 = and i32 %156, 16
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, i16 10, i16 9
  %160 = getelementptr inbounds %struct.usb_hub_descriptor, ptr %4, i32 0, i32 3
  store i16 %159, ptr %160, align 1
  br label %548

161:                                              ; preds = %6
  store i32 0, ptr %4, align 1
  br label %548

162:                                              ; preds = %6
  %163 = icmp eq i16 %3, 0
  %164 = icmp ult i32 %10, %11
  %165 = select i1 %163, i1 true, i1 %164
  br i1 %165, label %546, label %166

166:                                              ; preds = %162
  %167 = add i16 %3, -1
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %169 = shl i32 %168, 15
  %170 = and i32 %169, 65536
  %171 = shl i32 %168, 14
  %172 = and i32 %171, 131072
  %173 = or i32 %172, %170
  %174 = and i32 %168, 32
  %175 = icmp ne i32 %174, 0
  %176 = load i8, ptr @ignore_oc, align 1
  %177 = icmp eq i8 %176, 0
  %178 = select i1 %175, i1 %177, i1 false
  br i1 %178, label %179, label %199

179:                                              ; preds = %166
  %180 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %181 = load i32, ptr %180, align 4
  %182 = and i32 %181, 32768
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %199

184:                                              ; preds = %179
  %185 = or i32 %173, 524288
  %186 = and i32 %168, 16
  %187 = icmp eq i32 %186, 0
  %188 = and i32 %181, 8192
  %189 = icmp eq i32 %188, 0
  %190 = select i1 %187, i1 %189, i1 false
  br i1 %190, label %199, label %191

191:                                              ; preds = %184
  %192 = load i32, ptr %8, align 8
  %193 = and i32 %192, 16
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #18
  %196 = zext i16 %167 to i32
  tail call fastcc void @ehci_port_power(ptr noundef %7, i32 noundef %196, i1 noundef zeroext false)
  %197 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #18
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %199

199:                                              ; preds = %195, %191, %184, %179, %166
  %200 = phi i32 [ %22, %179 ], [ %197, %195 ], [ %22, %191 ], [ %22, %166 ], [ %22, %184 ]
  %201 = phi i32 [ %173, %179 ], [ %185, %195 ], [ %185, %191 ], [ %173, %166 ], [ %185, %184 ]
  %202 = phi i32 [ %168, %179 ], [ %198, %195 ], [ %168, %191 ], [ %168, %166 ], [ %168, %184 ]
  %203 = zext i16 %167 to i32
  %204 = getelementptr %struct.ehci_hcd, ptr %7, i32 0, i32 43, i32 %203
  %205 = load i32, ptr %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %217

207:                                              ; preds = %199
  %208 = and i32 %202, 64
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %284, label %210

210:                                              ; preds = %207
  %211 = load volatile i32, ptr @jiffies, align 64
  %212 = add i32 %211, 2
  store i32 %212, ptr %204, align 4
  tail call void @usb_hcd_start_port_resume(ptr noundef %0, i32 noundef %203) #18
  %213 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 11
  tail call void @_set_bit(i32 noundef %203, ptr noundef %213) #18
  %214 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 5
  %215 = load i32, ptr %204, align 4
  %216 = tail call i32 @mod_timer(ptr noundef %214, i32 noundef %215) #18
  br label %284

217:                                              ; preds = %199
  %218 = load volatile i32, ptr @jiffies, align 64
  %219 = sub i32 %218, %205
  %220 = icmp sgt i32 %219, -1
  br i1 %220, label %221, label %284

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 11
  %223 = lshr i32 %203, 5
  %224 = getelementptr i32, ptr %222, i32 %223
  %225 = load volatile i32, ptr %224, align 4
  %226 = and i32 %203, 31
  %227 = shl nuw i32 1, %226
  %228 = and i32 %225, %227
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %257, label %230

230:                                              ; preds = %221
  %231 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %203, ptr noundef %231) #18
  %232 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %203, ptr noundef %232) #18
  store i32 0, ptr %204, align 4
  tail call void @usb_hcd_end_port_resume(ptr noundef %0, i32 noundef %203) #18
  %233 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %234 = load i32, ptr %233, align 4
  %235 = and i32 %234, 16384
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %230
  %238 = and i32 %202, -235
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %238) #18, !srcloc !11
  br label %239

239:                                              ; preds = %237, %230
  tail call void @_clear_bit(i32 noundef %203, ptr noundef %222) #18
  br label %240

240:                                              ; preds = %247, %239
  %241 = phi i32 [ 2000, %239 ], [ %249, %247 ]
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %243 = icmp eq i32 %242, -1
  br i1 %243, label %251, label %244

244:                                              ; preds = %240
  %245 = and i32 %242, 64
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %255, label %247

247:                                              ; preds = %244
  %248 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %248(i32 noundef 214748) #18
  %249 = add nsw i32 %241, -1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %240

251:                                              ; preds = %247, %240
  %252 = phi i32 [ -110, %247 ], [ -19, %240 ]
  %253 = load ptr, ptr %0, align 8
  %254 = add nuw nsw i32 %203, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %253, ptr noundef nonnull @.str.1, i32 noundef %254, i32 noundef %252) #19
  br label %546

255:                                              ; preds = %244
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %284

257:                                              ; preds = %221
  store i32 0, ptr %204, align 4
  %258 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %259 = load i32, ptr %258, align 4
  %260 = and i32 %259, 16384
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %257
  %263 = and i32 %202, -299
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %263) #18, !srcloc !11
  br label %264

264:                                              ; preds = %262, %257
  br label %265

265:                                              ; preds = %272, %264
  %266 = phi i32 [ %274, %272 ], [ 1000, %264 ]
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %268 = icmp eq i32 %267, -1
  br i1 %268, label %276, label %269

269:                                              ; preds = %265
  %270 = and i32 %267, 256
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %280, label %272

272:                                              ; preds = %269
  %273 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %273(i32 noundef 214748) #18
  %274 = add nsw i32 %266, -1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %265

276:                                              ; preds = %272, %265
  %277 = phi i32 [ -110, %272 ], [ -19, %265 ]
  %278 = load ptr, ptr %0, align 8
  %279 = add nuw nsw i32 %203, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %278, ptr noundef nonnull @.str.2, i32 noundef %279, i32 noundef %277) #19
  br label %546

280:                                              ; preds = %269
  %281 = or i32 %201, 1048576
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %283 = tail call fastcc i32 @check_reset_complete(ptr noundef %7, ptr noundef %19, i32 noundef %282)
  br label %284

284:                                              ; preds = %280, %255, %217, %210, %207
  %285 = phi i32 [ %201, %255 ], [ %281, %280 ], [ %201, %217 ], [ %201, %210 ], [ %201, %207 ]
  %286 = phi i32 [ %256, %255 ], [ %283, %280 ], [ %202, %217 ], [ %202, %210 ], [ %202, %207 ]
  %287 = and i32 %286, 1
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %352, label %289

289:                                              ; preds = %284
  %290 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10
  %291 = lshr i32 %203, 5
  %292 = getelementptr i32, ptr %290, i32 %291
  %293 = load volatile i32, ptr %292, align 4
  %294 = and i32 %203, 31
  %295 = shl nuw i32 1, %294
  %296 = and i32 %293, %295
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %310, label %298

298:                                              ; preds = %289
  %299 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %300 = load i32, ptr %299, align 4
  %301 = and i32 %300, 16384
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = and i32 %286, -8235
  %305 = or i32 %304, 8192
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %305) #18, !srcloc !11
  br label %306

306:                                              ; preds = %303, %298
  %307 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %308 = and i32 %307, 1
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %352, label %310

310:                                              ; preds = %306, %289
  %311 = phi i32 [ %307, %306 ], [ %286, %289 ]
  %312 = or i32 %285, 1
  %313 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 16
  %314 = load i8, ptr %313, align 4
  %315 = and i8 %314, 1
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %337, label %317

317:                                              ; preds = %310
  %318 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %319 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 14
  %320 = load i16, ptr %319, align 8
  %321 = and i16 %320, 128
  %322 = icmp eq i16 %321, 0
  br i1 %322, label %334, label %323

323:                                              ; preds = %317
  %324 = load i8, ptr %313, align 4
  %325 = and i8 %324, 1
  %326 = icmp eq i8 %325, 0
  %327 = select i1 %326, i32 26, i32 25
  %328 = lshr i32 %318, %327
  %329 = and i32 %328, 3
  %330 = icmp eq i32 %329, 1
  %331 = select i1 %330, i32 512, i32 1024
  %332 = icmp eq i32 %329, 0
  %333 = select i1 %332, i32 0, i32 %331
  br label %334

334:                                              ; preds = %323, %317
  %335 = phi i32 [ %333, %323 ], [ 1024, %317 ]
  %336 = or i32 %335, %312
  br label %352

337:                                              ; preds = %310
  %338 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 14
  %339 = load i16, ptr %338, align 8
  %340 = and i16 %339, 128
  %341 = icmp eq i16 %340, 0
  br i1 %341, label %349, label %342

342:                                              ; preds = %337
  %343 = lshr i32 %311, 26
  %344 = and i32 %343, 3
  %345 = icmp eq i32 %344, 1
  %346 = select i1 %345, i32 512, i32 1024
  %347 = icmp eq i32 %344, 0
  %348 = select i1 %347, i32 0, i32 %346
  br label %349

349:                                              ; preds = %342, %337
  %350 = phi i32 [ %348, %342 ], [ 1024, %337 ]
  %351 = or i32 %350, %312
  br label %352

352:                                              ; preds = %349, %334, %306, %284
  %353 = phi i32 [ %311, %334 ], [ %311, %349 ], [ %307, %306 ], [ %286, %284 ]
  %354 = phi i32 [ %336, %334 ], [ %351, %349 ], [ %285, %306 ], [ %285, %284 ]
  %355 = and i32 %353, 4
  %356 = icmp eq i32 %355, 0
  %357 = lshr exact i32 %355, 1
  %358 = or i32 %354, %357
  %359 = and i32 %353, 192
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %366, label %361

361:                                              ; preds = %352
  %362 = or i32 %358, 4
  %363 = lshr i32 %203, 5
  %364 = and i32 %203, 31
  %365 = shl nuw i32 1, %364
  br label %380

366:                                              ; preds = %352
  %367 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10, i32 0, i32 3
  %368 = lshr i32 %203, 5
  %369 = getelementptr i32, ptr %367, i32 %368
  %370 = load volatile i32, ptr %369, align 4
  %371 = and i32 %203, 31
  %372 = shl nuw i32 1, %371
  %373 = and i32 %370, %372
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %380, label %375

375:                                              ; preds = %366
  tail call void @_clear_bit(i32 noundef %203, ptr noundef %367) #18
  %376 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef %203, ptr noundef %376) #18
  store i32 0, ptr %204, align 4
  br i1 %356, label %379, label %377

377:                                              ; preds = %375
  %378 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %203, ptr noundef %378) #18
  br label %379

379:                                              ; preds = %377, %375
  tail call void @usb_hcd_end_port_resume(ptr noundef %0, i32 noundef %203) #18
  br label %380

380:                                              ; preds = %379, %366, %361
  %381 = phi i32 [ %372, %366 ], [ %372, %379 ], [ %365, %361 ]
  %382 = phi i32 [ %368, %366 ], [ %368, %379 ], [ %363, %361 ]
  %383 = phi i32 [ %358, %366 ], [ %358, %379 ], [ %362, %361 ]
  %384 = lshr i32 %353, 1
  %385 = and i32 %384, 8
  %386 = lshr i32 %353, 4
  %387 = and i32 %386, 16
  %388 = and i32 %386, 256
  %389 = or i32 %387, %385
  %390 = or i32 %389, %388
  %391 = or i32 %390, %383
  %392 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10, i32 0, i32 2
  %393 = getelementptr i32, ptr %392, i32 %382
  %394 = load volatile i32, ptr %393, align 4
  %395 = and i32 %394, %381
  %396 = icmp eq i32 %395, 0
  %397 = or i32 %391, 262144
  %398 = select i1 %396, i32 %391, i32 %397
  store i32 %398, ptr %4, align 1
  br label %548

399:                                              ; preds = %6
  %400 = icmp ult i16 %2, 2
  br i1 %400, label %548, label %546

401:                                              ; preds = %6
  %402 = and i16 %3, 255
  %403 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1, i32 1
  %404 = load ptr, ptr %403, align 4
  %405 = icmp eq ptr %404, null
  %406 = zext i16 %402 to i32
  br i1 %405, label %416, label %407, !prof !17

407:                                              ; preds = %401
  %408 = load i32, ptr %8, align 8
  %409 = lshr i32 %408, 20
  %410 = and i32 %409, 15
  %411 = icmp eq i32 %410, %406
  br i1 %411, label %412, label %416

412:                                              ; preds = %407
  %413 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %404) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !18
  %414 = and i32 %413, 268435456
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %548

416:                                              ; preds = %412, %407, %401
  %417 = icmp eq i16 %402, 0
  %418 = icmp ult i32 %10, %406
  %419 = select i1 %417, i1 true, i1 %418
  br i1 %419, label %546, label %420

420:                                              ; preds = %416
  %421 = add nsw i16 %402, -1
  %422 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %423 = and i32 %422, 8192
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %548

425:                                              ; preds = %420
  %426 = and i32 %422, -8235
  switch i16 %2, label %546 [
    i16 2, label %427
    i16 8, label %467
    i16 4, label %474
    i16 21, label %504
  ]

427:                                              ; preds = %425
  %428 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %429 = load i32, ptr %428, align 4
  %430 = and i32 %429, 1
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %542

432:                                              ; preds = %427
  %433 = and i32 %422, 260
  %434 = icmp eq i32 %433, 4
  br i1 %434, label %435, label %546

435:                                              ; preds = %432
  %436 = and i32 %429, 16384
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %435
  %439 = and i32 %422, -7340203
  %440 = or i32 %439, 6291584
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %440) #18, !srcloc !11
  br label %441

441:                                              ; preds = %438, %435
  %442 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 16
  %443 = load i8, ptr %442, align 4
  %444 = and i8 %443, 2
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %456, label %446

446:                                              ; preds = %441
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #18
  tail call void @msleep(i32 noundef 5) #18
  %447 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #18
  %448 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %449 = load i32, ptr %428, align 4
  %450 = and i32 %449, 16384
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %446
  %453 = or i32 %448, 4194304
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %453) #18, !srcloc !11
  br label %454

454:                                              ; preds = %452, %446
  %455 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %456

456:                                              ; preds = %454, %441
  %457 = phi i32 [ %447, %454 ], [ %22, %441 ]
  %458 = load i32, ptr %428, align 4
  %459 = and i32 %458, 8
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %463, label %461

461:                                              ; preds = %456
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %457) #18
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #18
  %462 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #18
  br label %463

463:                                              ; preds = %461, %456
  %464 = phi i32 [ %462, %461 ], [ %457, %456 ]
  %465 = zext i16 %421 to i32
  %466 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10, i32 0, i32 3
  tail call void @_set_bit(i32 noundef %465, ptr noundef %466) #18
  br label %542

467:                                              ; preds = %425
  %468 = load i32, ptr %8, align 8
  %469 = and i32 %468, 16
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %542, label %471

471:                                              ; preds = %467
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #18
  %472 = zext i16 %421 to i32
  tail call fastcc void @ehci_port_power(ptr noundef %7, i32 noundef %472, i1 noundef zeroext true)
  %473 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #18
  br label %542

474:                                              ; preds = %425
  %475 = and i32 %422, 192
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %546

477:                                              ; preds = %474
  %478 = and i32 %422, 5
  %479 = icmp eq i32 %478, 1
  br i1 %479, label %480, label %490

480:                                              ; preds = %477
  %481 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %482 = load i16, ptr %481, align 8
  %483 = and i16 %482, 128
  %484 = icmp eq i16 %483, 0
  %485 = and i32 %422, 3072
  %486 = icmp eq i32 %485, 1024
  %487 = select i1 %484, i1 %486, i1 false
  br i1 %487, label %488, label %490

488:                                              ; preds = %480
  %489 = or i32 %426, 8192
  br label %497

490:                                              ; preds = %480, %477
  %491 = and i32 %422, -303
  %492 = or i32 %491, 256
  %493 = load volatile i32, ptr @jiffies, align 64
  %494 = add i32 %493, 5
  %495 = zext i16 %421 to i32
  %496 = getelementptr %struct.ehci_hcd, ptr %7, i32 0, i32 43, i32 %495
  store i32 %494, ptr %496, align 4
  br label %497

497:                                              ; preds = %490, %488
  %498 = phi i32 [ %492, %490 ], [ %489, %488 ]
  %499 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %500 = load i32, ptr %499, align 4
  %501 = and i32 %500, 16384
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %542

503:                                              ; preds = %497
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %498) #18, !srcloc !11
  br label %542

504:                                              ; preds = %425
  %505 = add i16 %3, -1536
  %506 = icmp ult i16 %505, -1280
  br i1 %506, label %546, label %507

507:                                              ; preds = %504
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #18
  tail call fastcc void @ehci_quiesce(ptr noundef %7)
  %508 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #18
  %509 = icmp eq i32 %10, 0
  br i1 %509, label %530, label %510

510:                                              ; preds = %507
  %511 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  br label %512

512:                                              ; preds = %528, %510
  %513 = phi i32 [ %10, %510 ], [ %514, %528 ]
  %514 = add nsw i32 %513, -1
  %515 = load ptr, ptr %16, align 8
  %516 = getelementptr inbounds %struct.ehci_regs, ptr %515, i32 0, i32 11
  %517 = getelementptr [15 x i32], ptr %516, i32 0, i32 %514
  %518 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %517) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %519 = and i32 %518, 4
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %528, label %521

521:                                              ; preds = %512
  %522 = load i32, ptr %511, align 4
  %523 = and i32 %522, 16384
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %528

525:                                              ; preds = %521
  %526 = and i32 %518, -171
  %527 = or i32 %526, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %517, i32 %527) #18, !srcloc !11
  br label %528

528:                                              ; preds = %525, %521, %512
  %529 = icmp eq i32 %514, 0
  br i1 %529, label %530, label %512

530:                                              ; preds = %528, %507
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %508) #18
  %531 = tail call fastcc i32 @ehci_halt(ptr noundef %7)
  %532 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #18
  %533 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %534 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %535 = load i32, ptr %534, align 4
  %536 = and i32 %535, 16384
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %542

538:                                              ; preds = %530
  %539 = shl nuw nsw i32 %11, 8
  %540 = and i32 %539, 16711680
  %541 = or i32 %533, %540
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %541) #18, !srcloc !11
  br label %542

542:                                              ; preds = %538, %530, %503, %497, %471, %467, %463, %427
  %543 = phi i32 [ %473, %471 ], [ %22, %467 ], [ %22, %427 ], [ %464, %463 ], [ %22, %497 ], [ %22, %503 ], [ %532, %530 ], [ %532, %538 ]
  %544 = load ptr, ptr %16, align 8
  %545 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %544) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %548

546:                                              ; preds = %504, %474, %432, %425, %416, %399, %276, %251, %162, %82, %47, %29, %25, %23, %6
  %547 = phi i32 [ %22, %6 ], [ %22, %425 ], [ %22, %504 ], [ %22, %474 ], [ %22, %432 ], [ %22, %416 ], [ %22, %399 ], [ %200, %251 ], [ %200, %276 ], [ %22, %162 ], [ %22, %29 ], [ %22, %47 ], [ %22, %82 ], [ %22, %25 ], [ %22, %23 ]
  br label %548

548:                                              ; preds = %546, %542, %420, %412, %399, %380, %161, %141, %137, %23
  %549 = phi i32 [ -32, %546 ], [ 0, %420 ], [ 0, %542 ], [ 0, %399 ], [ 0, %380 ], [ 0, %161 ], [ 0, %141 ], [ 0, %137 ], [ 0, %23 ], [ -19, %412 ]
  %550 = phi i32 [ %547, %546 ], [ %22, %420 ], [ %543, %542 ], [ %22, %399 ], [ %200, %380 ], [ %22, %161 ], [ %22, %141 ], [ %138, %137 ], [ %22, %23 ], [ %22, %412 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %550) #18
  ret i32 %549
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_start_port_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ehci_port_power(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 -352
  %5 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ehci_regs, ptr %6, i32 0, i32 11
  %8 = getelementptr [15 x i32], ptr %7, i32 0, i32 %1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %10 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16384
  %13 = icmp eq i32 %12, 0
  br i1 %2, label %14, label %18

14:                                               ; preds = %3
  br i1 %13, label %15, label %21

15:                                               ; preds = %14
  %16 = and i32 %9, -4139
  %17 = or i32 %16, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %17) #18, !srcloc !11
  br label %21

18:                                               ; preds = %3
  br i1 %13, label %19, label %21

19:                                               ; preds = %18
  %20 = and i32 %9, -4139
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %20) #18, !srcloc !11
  br label %21

21:                                               ; preds = %19, %18, %15, %14
  %22 = getelementptr i8, ptr %0, i32 -172
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.hc_driver, ptr %23, i32 0, i32 44
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = tail call i32 %25(ptr noundef %4, i32 noundef %1, i1 noundef zeroext %2) #18
  br label %29

29:                                               ; preds = %27, %21
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_end_port_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_reset_complete(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 5
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 -152
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 128
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = and i32 %2, -8235
  %13 = or i32 %12, 8192
  %14 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %13) #18, !srcloc !11
  br label %19

19:                                               ; preds = %18, %11, %6, %3
  %20 = phi i32 [ %2, %3 ], [ %2, %6 ], [ %13, %11 ], [ %13, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ehci_quiesce(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %50

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 57
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %7, 10
  %9 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ehci_regs, ptr %10, i32 0, i32 1
  br label %12

12:                                               ; preds = %20, %5
  %13 = phi i32 [ 2000, %5 ], [ %22, %20 ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %15 = icmp eq i32 %14, -1
  %16 = xor i32 %14, %8
  %17 = and i32 %16, 49152
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %15, i1 true, i1 %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #18
  %22 = add nsw i32 %13, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %12

24:                                               ; preds = %20, %12
  %25 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %25) #18
  %26 = load i32, ptr %6, align 8
  %27 = and i32 %26, -49
  store i32 %27, ptr %6, align 8
  %28 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 16384
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %27) #18, !srcloc !11
  br label %34

34:                                               ; preds = %32, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %35 = load i16, ptr %25, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %37 = load ptr, ptr %9, align 8
  %38 = getelementptr inbounds %struct.ehci_regs, ptr %37, i32 0, i32 1
  br label %39

39:                                               ; preds = %46, %34
  %40 = phi i32 [ 2000, %34 ], [ %48, %46 ]
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %42 = icmp eq i32 %41, -1
  %43 = and i32 %41, 49152
  %44 = icmp eq i32 %43, 0
  %45 = or i1 %42, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #18
  %48 = add nsw i32 %40, -1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %39

50:                                               ; preds = %46, %39, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ehci_halt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #18
  %3 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %4 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 16384
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.ehci_regs, ptr %9, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #18, !srcloc !11
  br label %11

11:                                               ; preds = %8, %1
  %12 = getelementptr i8, ptr %0, i32 -152
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 128
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.ehci_regs, ptr %17, i32 0, i32 11, i32 0, i32 9
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %20 = and i32 %19, 3
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %23 = load i16, ptr %2, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  br label %55

25:                                               ; preds = %16, %11
  %26 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 57
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, -2
  store i32 %28, ptr %26, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %31 = load i32, ptr %4, align 4
  %32 = and i32 %31, 16384
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load ptr, ptr %3, align 8
  %36 = and i32 %30, -66
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %36) #18, !srcloc !11
  br label %37

37:                                               ; preds = %34, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %38 = load i16, ptr %2, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %40 = getelementptr i8, ptr %0, i32 -148
  %41 = load i32, ptr %40, align 4
  tail call void @synchronize_irq(i32 noundef %41) #18
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds %struct.ehci_regs, ptr %42, i32 0, i32 1
  br label %44

44:                                               ; preds = %51, %37
  %45 = phi i32 [ 2000, %37 ], [ %53, %51 ]
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = and i32 %46, 4096
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #18
  %53 = add nsw i32 %45, -1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %44

55:                                               ; preds = %51, %48, %44, %22
  %56 = phi i32 [ 0, %22 ], [ -110, %51 ], [ 0, %48 ], [ -19, %44 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ehci_setup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %6 = and i32 %5, 255
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  store ptr %7, ptr %8, align 8
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.ehci_caps, ptr %9, i32 0, i32 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 2
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 17
  store i8 32, ptr %13, align 1
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 256
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 4, i32 4
  tail call void @hrtimer_init(ptr noundef %18, i32 noundef 1, i32 noundef 0) #18
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 5, i32 2
  store ptr @ehci_hrtimer_func, ptr %19, align 8
  store i32 99, ptr %2, align 8
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.ehci_caps, ptr %20, i32 0, i32 2
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 21, i32 4
  store i32 100, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 2, i32 1
  store i32 1024, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 15
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 16
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 17
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 18
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 4
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 21
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 21, i32 1
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 21, i32 2
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3, i32 2
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3, i32 3
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 22
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 23
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 25
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 26
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 2
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 20, i32 3, i32 3
  store ptr %39, ptr %40, align 4
  %41 = and i32 %22, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %1
  store i32 512, ptr %24, align 4
  br label %44

44:                                               ; preds = %43, %1
  %45 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.9, ptr noundef %46, i32 noundef 96, i32 noundef 32, i32 noundef 4096) #18
  %48 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 13
  store ptr %47, ptr %48, align 8
  %49 = icmp eq ptr %47, null
  br i1 %49, label %189, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %45, align 4
  %52 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.10, ptr noundef %51, i32 noundef 96, i32 noundef 32, i32 noundef 4096) #18
  %53 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 12
  store ptr %52, ptr %53, align 4
  %54 = icmp eq ptr %52, null
  br i1 %54, label %189, label %55

55:                                               ; preds = %50
  %56 = tail call fastcc ptr @ehci_qh_alloc(ptr noundef %2, i32 noundef 3264) #18
  %57 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 13
  store ptr %56, ptr %57, align 4
  %58 = icmp eq ptr %56, null
  br i1 %58, label %189, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %45, align 4
  %61 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.11, ptr noundef %60, i32 noundef 160, i32 noundef 32, i32 noundef 4096) #18
  %62 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 14
  store ptr %61, ptr %62, align 4
  %63 = icmp eq ptr %61, null
  br i1 %63, label %189, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %45, align 4
  %66 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.12, ptr noundef %65, i32 noundef 96, i32 noundef 32, i32 noundef 4096) #18
  %67 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 15
  store ptr %66, ptr %67, align 8
  %68 = icmp eq ptr %66, null
  br i1 %68, label %189, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %45, align 4
  %71 = load i32, ptr %24, align 4
  %72 = shl i32 %71, 2
  %73 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3, i32 1
  %74 = tail call ptr @dma_alloc_attrs(ptr noundef %70, i32 noundef %72, ptr noundef %73, i32 noundef 3264, i32 noundef 0) #18
  %75 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3
  store ptr %74, ptr %75, align 8
  %76 = icmp eq ptr %74, null
  br i1 %76, label %189, label %77

77:                                               ; preds = %69
  %78 = load i32, ptr %15, align 4
  %79 = and i32 %78, 1024
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i32, ptr %24, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %115, label %84

84:                                               ; preds = %81
  store i32 1, ptr %74, align 4
  %85 = load i32, ptr %24, align 4
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %108, label %115

87:                                               ; preds = %77
  %88 = tail call fastcc ptr @ehci_qh_alloc(ptr noundef %2, i32 noundef 3264) #18
  %89 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 14
  store ptr %88, ptr %89, align 8
  %90 = icmp eq ptr %88, null
  br i1 %90, label %189, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %88, align 4
  store i32 1, ptr %92, align 32
  %93 = getelementptr inbounds %struct.ehci_qh_hw, ptr %92, i32 0, i32 4
  store i32 1, ptr %93, align 16
  %94 = getelementptr inbounds %struct.ehci_qh_hw, ptr %92, i32 0, i32 5
  store i32 1, ptr %94, align 4
  %95 = load ptr, ptr %89, align 8
  store ptr %92, ptr %95, align 4
  %96 = load i32, ptr %24, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %98, %91
  %99 = phi i32 [ %105, %98 ], [ 0, %91 ]
  %100 = load ptr, ptr %89, align 8
  %101 = getelementptr inbounds %struct.ehci_qh, ptr %100, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = load ptr, ptr %75, align 8
  %104 = getelementptr i32, ptr %103, i32 %99
  store i32 %102, ptr %104, align 4
  %105 = add nuw i32 %99, 1
  %106 = load i32, ptr %24, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %98, label %115

108:                                              ; preds = %108, %84
  %109 = phi i32 [ %112, %108 ], [ 1, %84 ]
  %110 = load ptr, ptr %75, align 8
  %111 = getelementptr i32, ptr %110, i32 %109
  store i32 1, ptr %111, align 4
  %112 = add nuw i32 %109, 1
  %113 = load i32, ptr %24, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %108, label %115

115:                                              ; preds = %108, %98, %91, %84, %81
  %116 = phi i32 [ 0, %91 ], [ 0, %81 ], [ %85, %84 ], [ %113, %108 ], [ %106, %98 ]
  %117 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %116, i32 4) #18
  %118 = extractvalue { i32, i1 } %117, 1
  br i1 %118, label %119, label %121, !prof !19

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3, i32 5
  store ptr null, ptr %120, align 4
  br label %189

121:                                              ; preds = %115
  %122 = extractvalue { i32, i1 } %117, 0
  %123 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %122, i32 noundef 3520) #20
  %124 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3, i32 5
  store ptr %123, ptr %124, align 4
  %125 = icmp eq ptr %123, null
  br i1 %125, label %189, label %126

126:                                              ; preds = %121
  %127 = and i32 %22, 128
  %128 = icmp eq i32 %127, 0
  %129 = lshr i32 %22, 4
  %130 = and i32 %129, 7
  %131 = add nuw nsw i32 %130, 2
  %132 = select i1 %128, i32 %131, i32 0
  %133 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3, i32 4
  store i32 %132, ptr %133, align 8
  %134 = load ptr, ptr %57, align 4
  %135 = getelementptr inbounds %struct.ehci_qh, ptr %134, i32 0, i32 2
  store ptr null, ptr %135, align 4
  %136 = load ptr, ptr %57, align 4
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.ehci_qh, ptr %136, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, -32
  %141 = or i32 %140, 2
  store i32 %141, ptr %137, align 32
  %142 = getelementptr inbounds %struct.ehci_qh_hw, ptr %137, i32 0, i32 1
  store i32 32768, ptr %142, align 4
  %143 = getelementptr inbounds %struct.ehci_qh_hw, ptr %137, i32 0, i32 6
  store i32 64, ptr %143, align 8
  %144 = getelementptr inbounds %struct.ehci_qh_hw, ptr %137, i32 0, i32 4
  store i32 1, ptr %144, align 16
  %145 = load ptr, ptr %57, align 4
  %146 = getelementptr inbounds %struct.ehci_qh, ptr %145, i32 0, i32 9
  store i8 1, ptr %146, align 4
  %147 = load ptr, ptr %57, align 4
  %148 = getelementptr inbounds %struct.ehci_qh, ptr %147, i32 0, i32 5
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.ehci_qtd, ptr %149, i32 0, i32 5
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr inbounds %struct.ehci_qh_hw, ptr %137, i32 0, i32 5
  store i32 %151, ptr %152, align 4
  %153 = load i32, ptr @log2_irq_thresh, align 4
  %154 = icmp ugt i32 %153, 6
  br i1 %154, label %155, label %156

155:                                              ; preds = %126
  store i32 0, ptr @log2_irq_thresh, align 4
  br label %156

156:                                              ; preds = %155, %126
  %157 = phi i32 [ %153, %126 ], [ 0, %155 ]
  %158 = shl nuw nsw i32 65536, %157
  %159 = and i32 %22, 262144
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 16
  %163 = load i8, ptr %162, align 4
  %164 = or i8 %163, 4
  store i8 %164, ptr %162, align 4
  %165 = or i32 %158, 32768
  br label %166

166:                                              ; preds = %161, %156
  %167 = phi i32 [ %165, %161 ], [ %158, %156 ]
  %168 = and i32 %22, 4
  %169 = icmp ne i32 %168, 0
  %170 = load i32, ptr @park, align 4
  %171 = icmp ne i32 %170, 0
  %172 = select i1 %169, i1 %171, i1 false
  br i1 %172, label %173, label %178

173:                                              ; preds = %166
  %174 = tail call i32 @llvm.umin.i32(i32 %170, i32 3) #18
  store i32 %174, ptr @park, align 4
  %175 = shl nuw nsw i32 %174, 8
  %176 = or i32 %167, %175
  %177 = or i32 %176, 2048
  br label %178

178:                                              ; preds = %173, %166
  %179 = phi i32 [ %177, %173 ], [ %167, %166 ]
  %180 = and i32 %179, -13
  %181 = or i32 %180, 4
  %182 = select i1 %42, i32 %179, i32 %181
  %183 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 4
  store i32 %182, ptr %183, align 8
  %184 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 28
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 7
  store i32 -1, ptr %188, align 4
  br label %190

189:                                              ; preds = %121, %119, %87, %69, %64, %59, %55, %50, %44
  tail call fastcc void @ehci_mem_cleanup(ptr noundef %2) #18
  br label %197

190:                                              ; preds = %187, %178
  %191 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 1
  store i32 -1, ptr %191, align 4
  %192 = tail call fastcc i32 @ehci_halt(ptr noundef %2)
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  tail call fastcc void @ehci_mem_cleanup(ptr noundef %2)
  br label %197

195:                                              ; preds = %190
  %196 = tail call i32 @ehci_reset(ptr noundef %2)
  br label %197

197:                                              ; preds = %195, %194, %189
  %198 = phi i32 [ %192, %194 ], [ 0, %195 ], [ -12, %189 ]
  ret i32 %198
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ehci_mem_cleanup(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/ehci-mem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 59, 0\0A.popsection", ""() #18, !srcloc !20
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 51
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.ehci_qtd, ptr %16, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  tail call void @dma_pool_free(ptr noundef %20, ptr noundef nonnull %16, i32 noundef %22) #18
  br label %23

23:                                               ; preds = %18, %14
  %24 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 50
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  tail call void @dma_pool_free(ptr noundef %25, ptr noundef %26, i32 noundef %28) #18
  tail call void @kfree(ptr noundef nonnull %3) #18
  br label %29

29:                                               ; preds = %23, %1
  store ptr null, ptr %2, align 4
  %30 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 16
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ehci_qh, ptr %31, i32 0, i32 3
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ehci_qh, ptr %31, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/ehci-mem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 59, 0\0A.popsection", ""() #18, !srcloc !20
  unreachable

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ehci_qh, ptr %31, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 51
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.ehci_qtd, ptr %44, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  tail call void @dma_pool_free(ptr noundef %48, ptr noundef nonnull %44, i32 noundef %50) #18
  br label %51

51:                                               ; preds = %46, %42
  %52 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 50
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %31, align 4
  %55 = getelementptr inbounds %struct.ehci_qh, ptr %31, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  tail call void @dma_pool_free(ptr noundef %53, ptr noundef %54, i32 noundef %56) #18
  tail call void @kfree(ptr noundef nonnull %31) #18
  br label %57

57:                                               ; preds = %51, %29
  store ptr null, ptr %30, align 8
  %58 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 51
  %59 = load ptr, ptr %58, align 8
  tail call void @dma_pool_destroy(ptr noundef %59) #18
  store ptr null, ptr %58, align 8
  %60 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 50
  %61 = load ptr, ptr %60, align 4
  tail call void @dma_pool_destroy(ptr noundef %61) #18
  store ptr null, ptr %60, align 4
  %62 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 52
  %63 = load ptr, ptr %62, align 4
  tail call void @dma_pool_destroy(ptr noundef %63) #18
  store ptr null, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 53
  %65 = load ptr, ptr %64, align 8
  tail call void @dma_pool_destroy(ptr noundef %65) #18
  store ptr null, ptr %64, align 8
  %66 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 24
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %57
  %70 = getelementptr i8, ptr %0, i32 -348
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 23
  %73 = load i32, ptr %72, align 4
  %74 = shl i32 %73, 2
  %75 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 25
  %76 = load i32, ptr %75, align 4
  tail call void @dma_free_attrs(ptr noundef %71, i32 noundef %74, ptr noundef nonnull %67, i32 noundef %76, i32 noundef 0) #18
  br label %77

77:                                               ; preds = %69, %57
  store ptr null, ptr %66, align 8
  %78 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 28
  %79 = load ptr, ptr %78, align 4
  tail call void @kfree(ptr noundef %79) #18
  store ptr null, ptr %78, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ehci_suspend(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = sub i32 %4, %6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @msleep(i32 noundef 10) #18
  br label %10

10:                                               ; preds = %9, %2
  tail call void @ehci_adjust_port_wakeup_flags(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext %1)
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #18
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr %12, align 8
  %19 = getelementptr inbounds %struct.ehci_regs, ptr %18, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #18, !srcloc !11
  br label %20

20:                                               ; preds = %17, %10
  %21 = load ptr, ptr %12, align 8
  %22 = getelementptr inbounds %struct.ehci_regs, ptr %21, i32 0, i32 2
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %24) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %25 = load i16, ptr %11, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %27 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 15
  %28 = load i32, ptr %27, align 4
  tail call void @synchronize_irq(i32 noundef %28) #18
  br i1 %1, label %29, label %35

29:                                               ; preds = %20
  %30 = load i32, ptr %24, align 8
  %31 = and i32 %30, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @ehci_resume(ptr noundef %0, i1 noundef zeroext false)
  br label %35

35:                                               ; preds = %33, %29, %20
  %36 = phi i32 [ -16, %33 ], [ 0, %29 ], [ 0, %20 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ehci_resume(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = sub i32 %4, %6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @msleep(i32 noundef 100) #18
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #18
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 11
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 32
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %83

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ehci_regs, ptr %18, i32 0, i32 10
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %21 = icmp ne i32 %20, 1
  %22 = or i1 %21, %1
  br i1 %22, label %51, label %23

23:                                               ; preds = %16
  tail call void @ehci_adjust_port_wakeup_flags(ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext false)
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %24) #18
  %25 = load i8, ptr %12, align 4
  %26 = and i8 %25, 32
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 16384
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load ptr, ptr %17, align 8
  %35 = getelementptr inbounds %struct.ehci_regs, ptr %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 40
  %39 = load i8, ptr %38, align 8
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i32 51, i32 55
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %42) #18, !srcloc !11
  br label %43

43:                                               ; preds = %33, %28
  %44 = load ptr, ptr %17, align 8
  %45 = getelementptr inbounds %struct.ehci_regs, ptr %44, i32 0, i32 2
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %47

47:                                               ; preds = %51, %43, %23
  %48 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %49 = load i16, ptr %48, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %48, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  br label %83

51:                                               ; preds = %16
  %52 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %53 = load ptr, ptr %52, align 8
  tail call void @usb_root_hub_lost_power(ptr noundef %53) #18
  %54 = tail call fastcc i32 @ehci_halt(ptr noundef %3)
  %55 = tail call i32 @ehci_reset(ptr noundef %3)
  %56 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %56) #18
  %57 = load i8, ptr %12, align 4
  %58 = and i8 %57, 32
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %47

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 16384
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load ptr, ptr %17, align 8
  %67 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 4
  %68 = load i32, ptr %67, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %68) #18, !srcloc !11
  %69 = load i32, ptr %61, align 4
  br label %70

70:                                               ; preds = %65, %60
  %71 = phi i32 [ %62, %60 ], [ %69, %65 ]
  %72 = and i32 %71, 16384
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load ptr, ptr %17, align 8
  %76 = getelementptr inbounds %struct.ehci_regs, ptr %75, i32 0, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 1) #18, !srcloc !11
  br label %77

77:                                               ; preds = %74, %70
  %78 = load ptr, ptr %17, align 8
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %80 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 10
  store i32 1, ptr %80, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %81 = load i16, ptr %56, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %56, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  br label %83

83:                                               ; preds = %77, %47, %10
  %84 = phi i32 [ 0, %47 ], [ 1, %77 ], [ 0, %10 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_root_hub_lost_power(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ehci_init_driver(ptr nocapture noundef %0, ptr noundef readonly %1) #5 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(184) %0, ptr noundef nonnull align 4 dereferenceable(184) @ehci_hc_driver, i32 184, i1 false)
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 2
  %7 = add i32 %5, 608
  store i32 %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ehci_driver_overrides, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 5
  store ptr %9, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %4
  %14 = getelementptr inbounds %struct.ehci_driver_overrides, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 44
  store ptr %15, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %13, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ehci_hcd_init() #7 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #18
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %18

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @hcd_name) #19
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull @usb_hcds_loaded) #18
  %5 = load volatile i32, ptr @usb_hcds_loaded, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load volatile i32, ptr @usb_hcds_loaded, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %3
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #19
  br label %14

14:                                               ; preds = %12, %8
  %15 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @platform_drivers, i32 noundef 0, ptr noundef null) #18
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @_clear_bit(i32 noundef 2, ptr noundef nonnull @usb_hcds_loaded) #18
  br label %18

18:                                               ; preds = %17, %14, %0
  %19 = phi i32 [ %15, %17 ], [ -19, %0 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ehci_hcd_cleanup() #7 section ".exit.text" {
  tail call void @platform_unregister_drivers(ptr noundef nonnull @platform_drivers, i32 noundef 0) #18
  tail call void @_clear_bit(i32 noundef 2, ptr noundef nonnull @usb_hcds_loaded) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_hrtimer_func(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  %4 = getelementptr i8, ptr %0, i32 76
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #18
  %6 = getelementptr i8, ptr %0, i32 -100
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %2, align 4
  store i32 0, ptr %6, align 4
  store i32 99, ptr %3, align 8
  %8 = tail call i64 @ktime_get() #18
  %9 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 12, i32 noundef 0) #18
  %10 = icmp ult i32 %9, 12
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 -96
  br label %13

13:                                               ; preds = %30, %11
  %14 = phi i32 [ %9, %11 ], [ %32, %30 ]
  %15 = getelementptr [12 x i64], ptr %12, i32 0, i32 %14
  %16 = load i64, ptr %15, align 8
  %17 = icmp slt i64 %8, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr [12 x ptr], ptr @event_handlers, i32 0, i32 %14
  %20 = load ptr, ptr %19, align 4
  call void %20(ptr noundef %3) #18
  br label %30

21:                                               ; preds = %13
  %22 = shl nuw nsw i32 1, %14
  %23 = load i32, ptr %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, ptr %6, align 4
  %25 = load i32, ptr %3, align 8
  %26 = icmp ugt i32 %25, %14
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = getelementptr %struct.ehci_hcd, ptr %3, i32 0, i32 2, i32 %14
  store i32 %14, ptr %3, align 8
  %29 = load i64, ptr %28, align 8
  call void @hrtimer_start_range_ns(ptr noundef %0, i64 noundef %29, i64 noundef 1000000, i32 noundef 0) #18
  br label %30

30:                                               ; preds = %27, %21, %18
  %31 = add nuw nsw i32 %14, 1
  %32 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 12, i32 noundef %31) #18
  %33 = icmp ult i32 %32, 12
  br i1 %33, label %13, label %34

34:                                               ; preds = %30, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ehci_enable_event(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 %1
  br i1 %2, label %5, label %11

5:                                                ; preds = %3
  %6 = tail call i64 @ktime_get() #18
  %7 = getelementptr [12 x i32], ptr @event_delays_ns, i32 0, i32 %1
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = add i64 %6, %9
  store i64 %10, ptr %4, align 8
  br label %11

11:                                               ; preds = %5, %3
  %12 = shl nuw i32 1, %1
  %13 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %12
  store i32 %15, ptr %13, align 4
  %16 = load i32, ptr %0, align 8
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  store i32 %1, ptr %0, align 8
  %19 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  %20 = load i64, ptr %4, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %19, i64 noundef %20, i64 noundef 1000000, i32 noundef 0) #18
  br label %21

21:                                               ; preds = %18, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_poll_ASS(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %63

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 57
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %7, 10
  %9 = and i32 %8, 32768
  %10 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ehci_regs, ptr %11, i32 0, i32 1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %14 = and i32 %13, 32768
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = icmp slt i32 %18, 2
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 0
  %23 = tail call i64 @ktime_get() #18
  %24 = add i64 %23, 1000000
  store i64 %24, ptr %22, align 8
  %25 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 1
  store i32 %27, ptr %25, align 4
  %28 = load i32, ptr %0, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %21
  store i32 0, ptr %0, align 8
  %31 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %31, i64 noundef %24, i64 noundef 1000000, i32 noundef 0) #18
  br label %63

32:                                               ; preds = %16, %5
  %33 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 5
  store i32 0, ptr %33, align 4
  %34 = icmp eq i32 %9, 0
  %35 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 20
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %34, label %38, label %51

38:                                               ; preds = %32
  br i1 %37, label %63, label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %6, align 8
  %41 = or i32 %40, 32
  store i32 %41, ptr %6, align 8
  %42 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 16384
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load ptr, ptr %10, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %41) #18, !srcloc !11
  br label %48

48:                                               ; preds = %46, %39
  %49 = load ptr, ptr %10, align 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %63

51:                                               ; preds = %32
  br i1 %37, label %52, label %63

52:                                               ; preds = %51
  %53 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 10
  %54 = tail call i64 @ktime_get() #18
  %55 = add i64 %54, 15000000
  store i64 %55, ptr %53, align 8
  %56 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 1024
  store i32 %58, ptr %56, align 4
  %59 = load i32, ptr %0, align 8
  %60 = icmp ugt i32 %59, 10
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  store i32 10, ptr %0, align 8
  %62 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %62, i64 noundef %55, i64 noundef 1000000, i32 noundef 0) #18
  br label %63

63:                                               ; preds = %61, %52, %51, %48, %38, %30, %21, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_poll_PSS(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %63

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 57
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %7, 10
  %9 = and i32 %8, 16384
  %10 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.ehci_regs, ptr %11, i32 0, i32 1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %14 = and i32 %13, 16384
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 8
  %20 = icmp slt i32 %18, 2
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 1
  %23 = tail call i64 @ktime_get() #18
  %24 = add i64 %23, 1000000
  store i64 %24, ptr %22, align 8
  %25 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 2
  store i32 %27, ptr %25, align 4
  %28 = load i32, ptr %0, align 8
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %63

30:                                               ; preds = %21
  store i32 1, ptr %0, align 8
  %31 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %31, i64 noundef %24, i64 noundef 1000000, i32 noundef 0) #18
  br label %63

32:                                               ; preds = %16, %5
  %33 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 4
  store i32 0, ptr %33, align 8
  %34 = icmp eq i32 %9, 0
  %35 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 37
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %34, label %38, label %51

38:                                               ; preds = %32
  br i1 %37, label %63, label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %6, align 8
  %41 = or i32 %40, 16
  store i32 %41, ptr %6, align 8
  %42 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 16384
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load ptr, ptr %10, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %41) #18, !srcloc !11
  br label %48

48:                                               ; preds = %46, %39
  %49 = load ptr, ptr %10, align 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %63

51:                                               ; preds = %32
  br i1 %37, label %52, label %63

52:                                               ; preds = %51
  %53 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 9
  %54 = tail call i64 @ktime_get() #18
  %55 = add i64 %54, 10000000
  store i64 %55, ptr %53, align 8
  %56 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 512
  store i32 %58, ptr %56, align 4
  %59 = load i32, ptr %0, align 8
  %60 = icmp ugt i32 %59, 9
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  store i32 9, ptr %0, align 8
  %62 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %62, i64 noundef %55, i64 noundef 1000000, i32 noundef 0) #18
  br label %63

63:                                               ; preds = %61, %52, %51, %48, %38, %30, %21, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_handle_controller_death(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ehci_regs, ptr %3, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %6 = and i32 %5, 4096
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  %12 = icmp slt i32 %10, 5
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 2
  %15 = tail call i64 @ktime_get() #18
  %16 = add i64 %15, 1000000
  store i64 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 4
  store i32 %19, ptr %17, align 4
  %20 = load i32, ptr %0, align 8
  %21 = icmp ugt i32 %20, 2
  br i1 %21, label %22, label %45

22:                                               ; preds = %13
  store i32 2, ptr %0, align 8
  %23 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %23, i64 noundef %16, i64 noundef 1000000, i32 noundef 0) #18
  br label %45

24:                                               ; preds = %8
  %25 = getelementptr i8, ptr %0, i32 -352
  %26 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.4) #19
  br label %27

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 16384
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.ehci_regs, ptr %34, i32 0, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 0) #18, !srcloc !11
  %36 = load i32, ptr %29, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i32 [ %30, %27 ], [ %36, %33 ]
  %39 = and i32 %38, 16384
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct.ehci_regs, ptr %42, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #18, !srcloc !11
  br label %44

44:                                               ; preds = %41, %37
  tail call void @ehci_work(ptr noundef %0)
  tail call void @end_unlink_async(ptr noundef %0)
  br label %45

45:                                               ; preds = %44, %22, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_handle_intr_unlinks(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 2
  %5 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 13
  %6 = load i8, ptr %5, align 4
  %7 = or i8 %6, 4
  store i8 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 30
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %58, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 32
  %13 = getelementptr i8, ptr %0, i32 -352
  %14 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 35
  %15 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 37
  br label %16

16:                                               ; preds = %55, %11
  %17 = phi ptr [ %9, %11 ], [ %56, %55 ]
  %18 = getelementptr i8, ptr %17, i32 -32
  br i1 %4, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %17, i32 40
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %12, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %58, label %24

24:                                               ; preds = %19, %16
  %25 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %17, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store volatile ptr %17, ptr %17, align 4
  store ptr %17, ptr %25, align 4
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr i8, ptr %17, i32 44
  store i8 3, ptr %30, align 4
  store i32 1, ptr %29, align 32
  %31 = getelementptr i8, ptr %17, i32 -20
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = tail call fastcc i32 @qh_completions(ptr noundef %0, ptr noundef %18) #18
  br label %36

36:                                               ; preds = %34, %24
  %37 = load volatile ptr, ptr %31, align 4
  %38 = icmp eq ptr %37, %31
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %2, align 8
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = tail call fastcc i32 @qh_schedule(ptr noundef %0, ptr noundef %18) #18
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call fastcc void @qh_refresh(ptr noundef %0, ptr noundef %18) #18
  tail call fastcc void @qh_link_periodic(ptr noundef %0, ptr noundef %18) #18
  br label %48

46:                                               ; preds = %42
  %47 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.5, ptr noundef %18, i32 noundef %43) #19
  br label %48

48:                                               ; preds = %46, %45, %39, %36
  %49 = load i32, ptr %14, align 8
  %50 = add i32 %49, -1
  store i32 %50, ptr %14, align 8
  %51 = load i32, ptr %15, align 8
  %52 = add i32 %51, -1
  store i32 %52, ptr %15, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  tail call void @ehci_poll_PSS(ptr noundef %0) #18
  br label %55

55:                                               ; preds = %54, %48
  %56 = load volatile ptr, ptr %8, align 4
  %57 = icmp eq ptr %56, %8
  br i1 %57, label %58, label %16

58:                                               ; preds = %55, %19, %1
  %59 = load volatile ptr, ptr %8, align 4
  %60 = icmp eq ptr %59, %8
  br i1 %60, label %76, label %61

61:                                               ; preds = %58
  %62 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 3
  %63 = tail call i64 @ktime_get() #18
  %64 = add i64 %63, 1125000
  store i64 %64, ptr %62, align 8
  %65 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, 8
  store i32 %67, ptr %65, align 4
  %68 = load i32, ptr %0, align 8
  %69 = icmp ugt i32 %68, 3
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  store i32 3, ptr %0, align 8
  %71 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %71, i64 noundef %64, i64 noundef 1000000, i32 noundef 0) #18
  br label %72

72:                                               ; preds = %70, %61
  %73 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 32
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %72, %58
  %77 = load i8, ptr %5, align 4
  %78 = and i8 %77, -5
  store i8 %78, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @end_free_itds(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 40
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 42
  store ptr null, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 39
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 52
  %12 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 40
  br label %13

13:                                               ; preds = %16, %8
  %14 = phi ptr [ %10, %8 ], [ %17, %16 ]
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr i8, ptr %14, i32 -108
  %19 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %17, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr i8, ptr %14, i32 -16
  %24 = load i32, ptr %23, align 4
  tail call void @dma_pool_free(ptr noundef %22, ptr noundef %18, i32 noundef %24) #18
  %25 = load ptr, ptr %12, align 8
  %26 = icmp eq ptr %18, %25
  br i1 %26, label %27, label %13

27:                                               ; preds = %16, %13
  %28 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 41
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 53
  %31 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 42
  br label %32

32:                                               ; preds = %35, %27
  %33 = phi ptr [ %29, %27 ], [ %36, %35 ]
  %34 = icmp eq ptr %33, %28
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 4
  %37 = getelementptr i8, ptr %33, i32 -52
  %38 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %36, ptr %39, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %33, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %38, align 4
  %41 = load ptr, ptr %30, align 8
  %42 = getelementptr i8, ptr %33, i32 -16
  %43 = load i32, ptr %42, align 4
  tail call void @dma_pool_free(ptr noundef %41, ptr noundef %37, i32 noundef %43) #18
  %44 = load ptr, ptr %31, align 4
  %45 = icmp eq ptr %37, %44
  br i1 %45, label %46, label %32

46:                                               ; preds = %35, %32
  %47 = load volatile ptr, ptr %9, align 4
  %48 = icmp eq ptr %47, %9
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load volatile ptr, ptr %28, align 4
  %51 = icmp eq ptr %50, %28
  br i1 %51, label %73, label %52

52:                                               ; preds = %49, %46
  %53 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 39, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 -108
  store ptr %60, ptr %12, align 8
  %61 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 41, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 -52
  store ptr %63, ptr %31, align 4
  %64 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 4
  %65 = tail call i64 @ktime_get() #18
  %66 = add i64 %65, 2000000
  store i64 %66, ptr %64, align 8
  %67 = load i32, ptr %53, align 4
  %68 = or i32 %67, 16
  store i32 %68, ptr %53, align 4
  %69 = load i32, ptr %0, align 8
  %70 = icmp ugt i32 %69, 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  store i32 4, ptr %0, align 8
  %72 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %72, i64 noundef %66, i64 noundef 1000000, i32 noundef 0) #18
  br label %73

73:                                               ; preds = %71, %57, %52, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @end_unlink_async(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 17
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %133, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 -32
  %7 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 13
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %25

12:                                               ; preds = %5
  %13 = load volatile ptr, ptr %2, align 4
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 18
  %17 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 18, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 17, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %18, ptr %21, align 4
  store ptr %13, ptr %18, align 4
  store ptr %16, ptr %20, align 4
  store ptr %20, ptr %17, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %19, align 4
  br label %22

22:                                               ; preds = %15, %12
  %23 = and i8 %8, 16
  %24 = icmp ne i8 %23, 0
  br label %71

25:                                               ; preds = %5
  %26 = getelementptr i8, ptr %3, i32 44
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 2
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 18
  %31 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  %35 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 18, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %3, ptr %35, align 4
  store ptr %30, ptr %3, align 4
  store ptr %36, ptr %31, align 4
  store volatile ptr %3, ptr %36, align 4
  %37 = and i8 %8, 16
  %38 = icmp ne i8 %37, 0
  br label %71

39:                                               ; preds = %25
  %40 = getelementptr i8, ptr %3, i32 46
  %41 = load i8, ptr %40, align 2
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %39
  %46 = and i32 %42, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr i8, ptr %3, i32 -20
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %70, label %52

52:                                               ; preds = %48, %45
  %53 = load ptr, ptr %6, align 4
  %54 = getelementptr inbounds %struct.ehci_qh_hw, ptr %53, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = and i32 %55, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.ehci_qh_hw, ptr %53, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 21
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 22
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %55, %66
  br i1 %67, label %70, label %68

68:                                               ; preds = %64, %58
  store i32 %60, ptr %61, align 4
  %69 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 22
  store i32 %55, ptr %69, align 8
  tail call fastcc void @ehci_enable_event(ptr noundef %0, i32 noundef 5, i1 noundef zeroext true)
  br label %133

70:                                               ; preds = %64, %52, %48, %39
  store i8 2, ptr %26, align 4
  br label %71

71:                                               ; preds = %70, %29, %22
  %72 = phi i1 [ %24, %22 ], [ %38, %29 ], [ true, %70 ]
  %73 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 21
  store i32 -1, ptr %73, align 4
  %74 = load volatile ptr, ptr %2, align 4
  %75 = icmp eq ptr %74, %2
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  tail call fastcc void @start_iaa_cycle(ptr noundef %0)
  br label %77

77:                                               ; preds = %76, %71
  br i1 %72, label %133, label %78

78:                                               ; preds = %77
  %79 = load i8, ptr %7, align 4
  %80 = or i8 %79, 16
  store i8 %80, ptr %7, align 4
  %81 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 18
  %82 = load volatile ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %81
  br i1 %83, label %130, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 20
  %86 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 15
  br label %87

87:                                               ; preds = %125, %84
  %88 = phi ptr [ %82, %84 ], [ %126, %125 ]
  %89 = getelementptr i8, ptr %88, i32 -32
  %90 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %88, align 4
  %93 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  store ptr %91, ptr %93, align 4
  store volatile ptr %92, ptr %91, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %88, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %90, align 4
  %94 = getelementptr i8, ptr %88, i32 44
  store i8 3, ptr %94, align 4
  %95 = getelementptr i8, ptr %88, i32 -24
  store ptr null, ptr %95, align 4
  %96 = getelementptr i8, ptr %88, i32 -20
  %97 = load volatile ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, %96
  br i1 %98, label %101, label %99

99:                                               ; preds = %87
  %100 = tail call fastcc i32 @qh_completions(ptr noundef %0, ptr noundef %89)
  br label %101

101:                                              ; preds = %99, %87
  %102 = load volatile ptr, ptr %96, align 4
  %103 = icmp eq ptr %102, %96
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %9, align 8
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  tail call fastcc void @qh_link_async(ptr noundef %0, ptr noundef %89)
  br label %108

108:                                              ; preds = %107, %104, %101
  %109 = load i32, ptr %85, align 8
  %110 = add i32 %109, -1
  store i32 %110, ptr %85, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = load ptr, ptr %86, align 4
  %114 = getelementptr inbounds %struct.ehci_qh, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load volatile ptr, ptr %2, align 4
  %119 = icmp eq ptr %118, %2
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load volatile ptr, ptr %81, align 4
  %122 = icmp eq ptr %121, %81
  br i1 %122, label %124, label %123, !prof !17

123:                                              ; preds = %120, %117, %112
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 973, i32 noundef 9, ptr noundef null) #18
  br label %124

124:                                              ; preds = %123, %120
  tail call void @ehci_poll_ASS(ptr noundef %0) #18
  br label %125

125:                                              ; preds = %124, %108
  %126 = load volatile ptr, ptr %81, align 4
  %127 = icmp eq ptr %126, %81
  br i1 %127, label %128, label %87

128:                                              ; preds = %125
  %129 = load i8, ptr %7, align 4
  br label %130

130:                                              ; preds = %128, %78
  %131 = phi i8 [ %129, %128 ], [ %80, %78 ]
  %132 = and i8 %131, -17
  store i8 %132, ptr %7, align 4
  br label %133

133:                                              ; preds = %130, %77, %68, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_handle_start_intr_unlinks(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 2
  %5 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 29
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 31
  br label %10

10:                                               ; preds = %18, %8
  %11 = phi ptr [ %6, %8 ], [ %26, %18 ]
  %12 = getelementptr i8, ptr %11, i32 -32
  br i1 %4, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %11, i32 40
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %9, align 8
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %13, %10
  %19 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %19, align 4
  %23 = getelementptr i8, ptr %11, i32 46
  %24 = load i8, ptr %23, align 2
  %25 = or i8 %24, 16
  store i8 %25, ptr %23, align 2
  tail call fastcc void @start_unlink_intr(ptr noundef %0, ptr noundef %12)
  %26 = load volatile ptr, ptr %5, align 4
  %27 = icmp eq ptr %26, %5
  br i1 %27, label %28, label %10

28:                                               ; preds = %18, %13, %1
  %29 = load volatile ptr, ptr %5, align 4
  %30 = icmp eq ptr %29, %5
  br i1 %30, label %46, label %31

31:                                               ; preds = %28
  %32 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 6
  %33 = tail call i64 @ktime_get() #18
  %34 = add i64 %33, 5000000
  store i64 %34, ptr %32, align 8
  %35 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 64
  store i32 %37, ptr %35, align 4
  %38 = load i32, ptr %0, align 8
  %39 = icmp ugt i32 %38, 6
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  store i32 6, ptr %0, align 8
  %41 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %41, i64 noundef %34, i64 noundef 1000000, i32 noundef 0) #18
  br label %42

42:                                               ; preds = %40, %31
  %43 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 31
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %42, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unlink_empty_async(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 17
  %9 = load volatile ptr, ptr %8, align 4
  br label %92

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 19
  br label %12

12:                                               ; preds = %30, %10
  %13 = phi ptr [ %5, %10 ], [ %34, %30 ]
  %14 = phi i32 [ 0, %10 ], [ %32, %30 ]
  %15 = phi ptr [ null, %10 ], [ %31, %30 ]
  %16 = getelementptr inbounds %struct.ehci_qh, ptr %13, i32 0, i32 3
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.ehci_qh, ptr %13, i32 0, i32 9
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = add i32 %14, 1
  %25 = getelementptr inbounds %struct.ehci_qh, ptr %13, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %11, align 4
  %28 = icmp eq i32 %26, %27
  %29 = select i1 %28, ptr %15, ptr %13
  br label %30

30:                                               ; preds = %23, %19, %12
  %31 = phi ptr [ %15, %19 ], [ %15, %12 ], [ %29, %23 ]
  %32 = phi i32 [ %14, %19 ], [ %14, %12 ], [ %24, %23 ]
  %33 = getelementptr inbounds %struct.ehci_qh, ptr %13, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %12

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 17
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  %40 = icmp ne ptr %31, null
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.ehci_qh, ptr %31, i32 0, i32 11
  %44 = load i8, ptr %43, align 2
  %45 = or i8 %44, 16
  store i8 %45, ptr %43, align 2
  %46 = getelementptr inbounds %struct.ehci_qh, ptr %31, i32 0, i32 9
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 1
  br i1 %48, label %49, label %72

49:                                               ; preds = %42
  store i8 4, ptr %46, align 4
  %50 = getelementptr inbounds %struct.ehci_qh, ptr %31, i32 0, i32 6
  %51 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 17, i32 1
  %52 = load ptr, ptr %51, align 4
  store ptr %50, ptr %51, align 4
  store ptr %37, ptr %50, align 4
  %53 = getelementptr inbounds %struct.ehci_qh, ptr %31, i32 0, i32 6, i32 1
  store ptr %52, ptr %53, align 4
  store volatile ptr %50, ptr %52, align 4
  %54 = load ptr, ptr %2, align 4
  br label %55

55:                                               ; preds = %55, %49
  %56 = phi ptr [ %54, %49 ], [ %58, %55 ]
  %57 = getelementptr inbounds %struct.ehci_qh, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %31
  br i1 %59, label %60, label %55

60:                                               ; preds = %55
  %61 = load ptr, ptr %31, align 4
  %62 = load i32, ptr %61, align 32
  %63 = load ptr, ptr %56, align 4
  store i32 %62, ptr %63, align 32
  %64 = getelementptr inbounds %struct.ehci_qh, ptr %31, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  store i32 %65, ptr %57, align 4
  %66 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 14
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, %31
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load ptr, ptr %64, align 4
  store ptr %70, ptr %66, align 8
  br label %71

71:                                               ; preds = %69, %60
  tail call fastcc void @start_iaa_cycle(ptr noundef %0) #18
  br label %72

72:                                               ; preds = %71, %42
  %73 = add i32 %32, -1
  br label %74

74:                                               ; preds = %72, %36
  %75 = phi i32 [ %73, %72 ], [ %32, %36 ]
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 7
  %79 = tail call i64 @ktime_get() #18
  %80 = add i64 %79, 6000000
  store i64 %80, ptr %78, align 8
  %81 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, 128
  store i32 %83, ptr %81, align 4
  %84 = load i32, ptr %0, align 8
  %85 = icmp ugt i32 %84, 7
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  store i32 7, ptr %0, align 8
  %87 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %87, i64 noundef %80, i64 noundef 1000000, i32 noundef 0) #18
  br label %88

88:                                               ; preds = %86, %77
  %89 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 19
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %88, %74, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_iaa_watchdog(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 13
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %45

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr inbounds %struct.ehci_regs, ptr %14, i32 0, i32 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %17 = and i32 %16, 32
  %18 = icmp ne i32 %17, 0
  %19 = and i32 %13, 64
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 16384
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load ptr, ptr %11, align 8
  %29 = getelementptr inbounds %struct.ehci_regs, ptr %28, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 32) #18, !srcloc !11
  br label %30

30:                                               ; preds = %27, %22, %10
  %31 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 18432
  %34 = icmp eq i32 %33, 2048
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load ptr, ptr %11, align 8
  %37 = getelementptr inbounds %struct.ehci_regs, ptr %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ehci_qh, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %41) #18, !srcloc !11
  br label %42

42:                                               ; preds = %35, %30
  %43 = load i8, ptr %2, align 4
  %44 = and i8 %43, -9
  store i8 %44, ptr %2, align 4
  tail call void @end_unlink_async(ptr noundef %0) #18
  br label %45

45:                                               ; preds = %42, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_disable_PSE(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 57
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -17
  store i32 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %6 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16384
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %4) #18, !srcloc !11
  br label %12

12:                                               ; preds = %10, %1
  %13 = load ptr, ptr %5, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_disable_ASE(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 57
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -33
  store i32 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %6 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16384
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %4) #18, !srcloc !11
  br label %12

12:                                               ; preds = %10, %1
  %13 = load ptr, ptr %5, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_work(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 13
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = or i8 %3, 2
  store i8 %7, ptr %2, align 4
  br label %649

8:                                                ; preds = %1
  %9 = or i8 %3, 1
  %10 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 20
  %11 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 15
  %12 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 14
  %13 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 19
  %14 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 17
  %15 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 17, i32 1
  %16 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %17 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %18 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 7
  %19 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  %20 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 35
  %21 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 26
  %22 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 31
  %23 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 29
  %24 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 29, i32 1
  %25 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 6
  %26 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 36
  %27 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 23
  %28 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 34
  %29 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %30 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %31 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 33
  %32 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 28
  %33 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 24
  %34 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 16
  %35 = getelementptr i8, ptr %0, i32 -276
  %36 = getelementptr i8, ptr %0, i32 -352
  %37 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 37
  %38 = getelementptr i8, ptr %0, i32 -272
  %39 = getelementptr i8, ptr %0, i32 -280
  %40 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 41
  %41 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 41, i32 1
  %42 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 39, i32 1
  %43 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 40
  %44 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 42
  %45 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 4
  %46 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 39
  br label %47

47:                                               ; preds = %616, %8
  %48 = phi i8 [ %617, %616 ], [ %9, %8 ]
  %49 = and i8 %48, -3
  store i8 %49, ptr %2, align 4
  %50 = load i32, ptr %10, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %128, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %11, align 4
  %54 = getelementptr inbounds %struct.ehci_qh, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  store ptr %55, ptr %12, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %128, label %57

57:                                               ; preds = %105, %52
  %58 = phi i1 [ %107, %105 ], [ false, %52 ]
  %59 = phi ptr [ %106, %105 ], [ %55, %52 ]
  %60 = getelementptr inbounds %struct.ehci_qh, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  store ptr %61, ptr %12, align 8
  %62 = getelementptr inbounds %struct.ehci_qh, ptr %59, i32 0, i32 3
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %105, label %65

65:                                               ; preds = %57
  %66 = tail call fastcc i32 @qh_completions(ptr noundef %0, ptr noundef nonnull %59) #18
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %92, label %68, !prof !17

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.ehci_qh, ptr %59, i32 0, i32 9
  %70 = load i8, ptr %69, align 4
  %71 = icmp eq i8 %70, 1
  br i1 %71, label %72, label %102

72:                                               ; preds = %68
  store i8 4, ptr %69, align 4
  %73 = getelementptr inbounds %struct.ehci_qh, ptr %59, i32 0, i32 6
  %74 = load ptr, ptr %15, align 4
  store ptr %73, ptr %15, align 4
  store ptr %14, ptr %73, align 4
  %75 = getelementptr inbounds %struct.ehci_qh, ptr %59, i32 0, i32 6, i32 1
  store ptr %74, ptr %75, align 4
  store volatile ptr %73, ptr %74, align 4
  %76 = load ptr, ptr %11, align 4
  br label %77

77:                                               ; preds = %77, %72
  %78 = phi ptr [ %76, %72 ], [ %80, %77 ]
  %79 = getelementptr inbounds %struct.ehci_qh, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %59
  br i1 %81, label %82, label %77

82:                                               ; preds = %77
  %83 = load ptr, ptr %59, align 4
  %84 = load i32, ptr %83, align 32
  %85 = load ptr, ptr %78, align 4
  store i32 %84, ptr %85, align 32
  %86 = load i32, ptr %60, align 4
  store i32 %86, ptr %79, align 4
  %87 = load ptr, ptr %12, align 8
  %88 = icmp eq ptr %87, %59
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load ptr, ptr %60, align 4
  store ptr %90, ptr %12, align 8
  br label %91

91:                                               ; preds = %89, %82
  tail call fastcc void @start_iaa_cycle(ptr noundef %0) #18
  br label %102

92:                                               ; preds = %65
  %93 = load volatile ptr, ptr %62, align 4
  %94 = icmp eq ptr %93, %62
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.ehci_qh, ptr %59, i32 0, i32 9
  %97 = load i8, ptr %96, align 4
  %98 = icmp eq i8 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, ptr %13, align 4
  %101 = getelementptr inbounds %struct.ehci_qh, ptr %59, i32 0, i32 8
  store i32 %100, ptr %101, align 4
  br label %102

102:                                              ; preds = %99, %95, %92, %91, %68
  %103 = phi i1 [ %58, %92 ], [ %58, %95 ], [ true, %99 ], [ %58, %68 ], [ %58, %91 ]
  %104 = load ptr, ptr %12, align 8
  br label %105

105:                                              ; preds = %102, %57
  %106 = phi ptr [ %104, %102 ], [ %61, %57 ]
  %107 = phi i1 [ %103, %102 ], [ %58, %57 ]
  %108 = icmp eq ptr %106, null
  br i1 %108, label %109, label %57

109:                                              ; preds = %105
  br i1 %107, label %110, label %128

110:                                              ; preds = %109
  %111 = load i32, ptr %16, align 8
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load i32, ptr %17, align 4
  %115 = and i32 %114, 128
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = tail call i64 @ktime_get() #18
  %119 = add i64 %118, 6000000
  store i64 %119, ptr %18, align 8
  %120 = load i32, ptr %17, align 4
  %121 = or i32 %120, 128
  store i32 %121, ptr %17, align 4
  %122 = load i32, ptr %0, align 8
  %123 = icmp ugt i32 %122, 7
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 7, ptr %0, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %19, i64 noundef %119, i64 noundef 1000000, i32 noundef 0) #18
  br label %125

125:                                              ; preds = %124, %117
  %126 = load i32, ptr %13, align 4
  %127 = add i32 %126, 1
  store i32 %127, ptr %13, align 4
  br label %128

128:                                              ; preds = %125, %113, %110, %109, %52, %47
  %129 = load i32, ptr %20, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %183, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %21, align 8
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr i8, ptr %133, i32 -20
  store ptr %134, ptr %12, align 8
  %135 = icmp eq ptr %132, %21
  br i1 %135, label %183, label %136

136:                                              ; preds = %131
  %137 = getelementptr i8, ptr %132, i32 -20
  br label %138

138:                                              ; preds = %177, %136
  %139 = phi ptr [ %178, %177 ], [ %137, %136 ]
  %140 = getelementptr inbounds %struct.ehci_qh, ptr %139, i32 0, i32 3
  %141 = load volatile ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, %140
  br i1 %142, label %177, label %143

143:                                              ; preds = %138
  %144 = tail call fastcc i32 @qh_completions(ptr noundef %0, ptr noundef %139) #18
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146, !prof !17

146:                                              ; preds = %143
  tail call fastcc void @start_unlink_intr(ptr noundef %0, ptr noundef %139) #18
  br label %177

147:                                              ; preds = %143
  %148 = load volatile ptr, ptr %140, align 4
  %149 = icmp eq ptr %148, %140
  br i1 %149, label %150, label %177

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.ehci_qh, ptr %139, i32 0, i32 9
  %152 = load i8, ptr %151, align 4
  %153 = icmp eq i8 %152, 1
  br i1 %153, label %154, label %177, !prof !19

154:                                              ; preds = %150
  %155 = load i32, ptr %22, align 8
  %156 = getelementptr inbounds %struct.ehci_qh, ptr %139, i32 0, i32 8
  store i32 %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.ehci_qh, ptr %139, i32 0, i32 6
  %158 = load ptr, ptr %24, align 4
  store ptr %157, ptr %24, align 4
  store ptr %23, ptr %157, align 4
  %159 = getelementptr inbounds %struct.ehci_qh, ptr %139, i32 0, i32 6, i32 1
  store ptr %158, ptr %159, align 4
  store volatile ptr %157, ptr %158, align 4
  %160 = load i32, ptr %16, align 8
  %161 = icmp ult i32 %160, 2
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  tail call void @ehci_handle_start_intr_unlinks(ptr noundef %0) #18
  br label %177

163:                                              ; preds = %154
  %164 = load ptr, ptr %23, align 8
  %165 = icmp eq ptr %164, %157
  br i1 %165, label %166, label %177

166:                                              ; preds = %163
  %167 = tail call i64 @ktime_get() #18
  %168 = add i64 %167, 5000000
  store i64 %168, ptr %25, align 8
  %169 = load i32, ptr %17, align 4
  %170 = or i32 %169, 64
  store i32 %170, ptr %17, align 4
  %171 = load i32, ptr %0, align 8
  %172 = icmp ugt i32 %171, 6
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  store i32 6, ptr %0, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %19, i64 noundef %168, i64 noundef 1000000, i32 noundef 0) #18
  br label %174

174:                                              ; preds = %173, %166
  %175 = load i32, ptr %22, align 8
  %176 = add i32 %175, 1
  store i32 %176, ptr %22, align 8
  br label %177

177:                                              ; preds = %174, %163, %162, %150, %147, %146, %138
  %178 = load ptr, ptr %12, align 8
  %179 = getelementptr inbounds %struct.ehci_qh, ptr %178, i32 0, i32 4
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr i8, ptr %180, i32 -20
  store ptr %181, ptr %12, align 8
  %182 = icmp eq ptr %179, %21
  br i1 %182, label %183, label %138

183:                                              ; preds = %177, %131, %128
  %184 = load i32, ptr %26, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %616, label %186

186:                                              ; preds = %183
  %187 = load i32, ptr %27, align 4
  %188 = add i32 %187, -1
  %189 = load i32, ptr %16, align 8
  %190 = icmp ugt i32 %189, 1
  br i1 %190, label %191, label %209

191:                                              ; preds = %186
  %192 = load i32, ptr %29, align 4
  %193 = and i32 %192, 4096
  %194 = icmp ne i32 %193, 0
  %195 = load ptr, ptr %30, align 8
  %196 = getelementptr inbounds %struct.ehci_regs, ptr %195, i32 0, i32 3
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %196) #18
  tail call void asm sideeffect "dsb ", "~{memory}"() #18
  %198 = and i32 %197, 7
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %194, i1 %199, i1 false
  br i1 %200, label %201, label %205, !prof !21

201:                                              ; preds = %191
  %202 = load ptr, ptr %30, align 8
  %203 = getelementptr inbounds %struct.ehci_regs, ptr %202, i32 0, i32 3
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %205

205:                                              ; preds = %201, %191
  %206 = phi i32 [ %204, %201 ], [ %197, %191 ]
  %207 = lshr i32 %206, 3
  %208 = load i32, ptr %28, align 4
  br label %212

209:                                              ; preds = %186
  %210 = load i32, ptr %28, align 4
  %211 = add i32 %210, -1
  br label %212

212:                                              ; preds = %209, %205
  %213 = phi i32 [ %208, %205 ], [ %210, %209 ]
  %214 = phi i32 [ %207, %205 ], [ %211, %209 ]
  %215 = and i32 %214, %188
  store i32 %215, ptr %31, align 8
  %216 = xor i1 %190, true
  br label %217

217:                                              ; preds = %615, %212
  %218 = phi i32 [ %221, %615 ], [ %213, %212 ]
  %219 = icmp eq i32 %218, %215
  %220 = add i32 %218, 1
  %221 = and i32 %220, %188
  %222 = icmp ne i32 %221, %215
  %223 = select i1 %222, i1 true, i1 %216
  %224 = icmp ne i32 %218, %215
  %225 = select i1 %224, i1 true, i1 %216
  br label %226

226:                                              ; preds = %601, %217
  %227 = load ptr, ptr %32, align 4
  %228 = getelementptr %union.ehci_shadow, ptr %227, i32 %218
  %229 = load ptr, ptr %33, align 8
  %230 = getelementptr i32, ptr %229, i32 %218
  %231 = load ptr, ptr %228, align 4
  %232 = load i32, ptr %230, align 4
  %233 = and i32 %232, 6
  br label %234

234:                                              ; preds = %608, %226
  %235 = phi i1 [ false, %226 ], [ %609, %608 ]
  %236 = phi ptr [ %231, %226 ], [ %610, %608 ]
  %237 = phi ptr [ %228, %226 ], [ %611, %608 ]
  %238 = phi i32 [ %233, %226 ], [ %612, %608 ]
  %239 = phi ptr [ %230, %226 ], [ %613, %608 ]
  br label %240

240:                                              ; preds = %597, %234
  %241 = phi i1 [ %235, %234 ], [ false, %597 ]
  %242 = phi ptr [ %236, %234 ], [ %598, %597 ]
  %243 = phi i32 [ %238, %234 ], [ %599, %597 ]
  br label %244

244:                                              ; preds = %600, %240
  %245 = phi i1 [ false, %600 ], [ %241, %240 ]
  %246 = phi ptr [ null, %600 ], [ %242, %240 ]
  %247 = icmp eq ptr %246, null
  br i1 %247, label %614, label %248

248:                                              ; preds = %244
  switch i32 %243, label %600 [
    i32 0, label %249
    i32 4, label %441
  ]

249:                                              ; preds = %248
  br i1 %225, label %287, label %250

250:                                              ; preds = %249
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !22
  %251 = getelementptr %struct.ehci_itd, ptr %242, i32 0, i32 1, i32 0
  %252 = load i32, ptr %251, align 4
  %253 = icmp sgt i32 %252, -1
  br i1 %253, label %254, label %282

254:                                              ; preds = %250
  %255 = getelementptr %struct.ehci_itd, ptr %242, i32 0, i32 1, i32 1
  %256 = load i32, ptr %255, align 4
  %257 = icmp sgt i32 %256, -1
  br i1 %257, label %258, label %282

258:                                              ; preds = %254
  %259 = getelementptr %struct.ehci_itd, ptr %242, i32 0, i32 1, i32 2
  %260 = load i32, ptr %259, align 4
  %261 = icmp sgt i32 %260, -1
  br i1 %261, label %262, label %282

262:                                              ; preds = %258
  %263 = getelementptr %struct.ehci_itd, ptr %242, i32 0, i32 1, i32 3
  %264 = load i32, ptr %263, align 4
  %265 = icmp sgt i32 %264, -1
  br i1 %265, label %266, label %282

266:                                              ; preds = %262
  %267 = getelementptr %struct.ehci_itd, ptr %242, i32 0, i32 1, i32 4
  %268 = load i32, ptr %267, align 4
  %269 = icmp sgt i32 %268, -1
  br i1 %269, label %270, label %282

270:                                              ; preds = %266
  %271 = getelementptr %struct.ehci_itd, ptr %242, i32 0, i32 1, i32 5
  %272 = load i32, ptr %271, align 4
  %273 = icmp sgt i32 %272, -1
  br i1 %273, label %274, label %282

274:                                              ; preds = %270
  %275 = getelementptr %struct.ehci_itd, ptr %242, i32 0, i32 1, i32 6
  %276 = load i32, ptr %275, align 4
  %277 = icmp sgt i32 %276, -1
  br i1 %277, label %278, label %282

278:                                              ; preds = %274
  %279 = getelementptr %struct.ehci_itd, ptr %242, i32 0, i32 1, i32 7
  %280 = load i32, ptr %279, align 4
  %281 = icmp sgt i32 %280, -1
  br i1 %281, label %287, label %282

282:                                              ; preds = %278, %274, %270, %266, %262, %258, %254, %250
  %283 = getelementptr inbounds %struct.ehci_itd, ptr %242, i32 0, i32 5
  %284 = load i32, ptr %242, align 32
  %285 = and i32 %284, 6
  %286 = load ptr, ptr %283, align 4
  br i1 %241, label %601, label %608

287:                                              ; preds = %278, %249
  %288 = getelementptr inbounds %struct.ehci_itd, ptr %242, i32 0, i32 5
  %289 = load i32, ptr %288, align 32
  store i32 %289, ptr %237, align 4
  %290 = load i32, ptr %29, align 4
  %291 = and i32 %290, 1024
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %299, label %293

293:                                              ; preds = %287
  %294 = load i32, ptr %242, align 32
  %295 = icmp eq i32 %294, 1
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load ptr, ptr %34, align 8
  %298 = getelementptr inbounds %struct.ehci_qh, ptr %297, i32 0, i32 1
  br label %299

299:                                              ; preds = %296, %293, %287
  %300 = phi ptr [ %298, %296 ], [ %242, %293 ], [ %242, %287 ]
  %301 = load i32, ptr %300, align 4
  store i32 %301, ptr %239, align 4
  %302 = load i32, ptr %242, align 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !23
  tail call void @arm_heavy_mb() #18
  %303 = getelementptr inbounds %struct.ehci_itd, ptr %242, i32 0, i32 6
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.ehci_itd, ptr %242, i32 0, i32 7
  %306 = load ptr, ptr %305, align 8
  %307 = getelementptr inbounds %struct.urb, ptr %304, i32 0, i32 26
  %308 = getelementptr inbounds %struct.urb, ptr %304, i32 0, i32 10
  %309 = getelementptr inbounds %struct.urb, ptr %304, i32 0, i32 20
  br label %310

310:                                              ; preds = %358, %299
  %311 = phi i32 [ -1, %299 ], [ %359, %358 ]
  %312 = phi i32 [ 0, %299 ], [ %360, %358 ]
  %313 = getelementptr %struct.ehci_itd, ptr %242, i32 0, i32 11, i32 %312
  %314 = load i32, ptr %313, align 4
  %315 = icmp eq i32 %314, -1
  br i1 %315, label %358, label %316, !prof !17

316:                                              ; preds = %310
  %317 = getelementptr %struct.ehci_itd, ptr %242, i32 0, i32 1, i32 %312
  %318 = load i32, ptr %317, align 4
  store i32 0, ptr %317, align 4
  %319 = and i32 %318, 1879048192
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %346, label %321, !prof !17

321:                                              ; preds = %316
  %322 = load i32, ptr %307, align 4
  %323 = add i32 %322, 1
  store i32 %323, ptr %307, align 4
  %324 = and i32 %318, 1073741824
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %321
  %327 = and i32 %318, 536870912
  %328 = icmp eq i32 %327, 0
  %329 = getelementptr %struct.urb, ptr %304, i32 0, i32 29, i32 %314, i32 3
  br i1 %328, label %331, label %330

330:                                              ; preds = %326
  store i32 -75, ptr %329, align 4
  br label %358

331:                                              ; preds = %326
  store i32 -71, ptr %329, align 4
  br label %340

332:                                              ; preds = %321
  %333 = load i32, ptr %308, align 4
  %334 = and i32 %333, 128
  %335 = icmp eq i32 %334, 0
  %336 = select i1 %335, i32 -70, i32 -63
  %337 = getelementptr %struct.urb, ptr %304, i32 0, i32 29, i32 %314, i32 3
  store i32 %336, ptr %337, align 4
  %338 = and i32 %318, 536870912
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %358

340:                                              ; preds = %332, %331
  %341 = lshr i32 %318, 16
  %342 = and i32 %341, 4095
  %343 = getelementptr %struct.urb, ptr %304, i32 0, i32 29, i32 %314, i32 2
  store i32 %342, ptr %343, align 4
  %344 = load i32, ptr %309, align 4
  %345 = add i32 %344, %342
  store i32 %345, ptr %309, align 4
  br label %358

346:                                              ; preds = %316
  %347 = icmp sgt i32 %318, -1
  br i1 %347, label %348, label %355, !prof !17

348:                                              ; preds = %346
  %349 = getelementptr %struct.urb, ptr %304, i32 0, i32 29, i32 %314, i32 3
  store i32 0, ptr %349, align 4
  %350 = lshr i32 %318, 16
  %351 = and i32 %350, 4095
  %352 = getelementptr %struct.urb, ptr %304, i32 0, i32 29, i32 %314, i32 2
  store i32 %351, ptr %352, align 4
  %353 = load i32, ptr %309, align 4
  %354 = add i32 %353, %351
  store i32 %354, ptr %309, align 4
  br label %358

355:                                              ; preds = %346
  %356 = load i32, ptr %307, align 4
  %357 = add i32 %356, 1
  store i32 %357, ptr %307, align 4
  br label %358

358:                                              ; preds = %355, %348, %340, %332, %330, %310
  %359 = phi i32 [ %311, %310 ], [ %314, %332 ], [ %314, %340 ], [ %314, %348 ], [ %314, %355 ], [ %314, %330 ]
  %360 = add nuw nsw i32 %312, 1
  %361 = icmp eq i32 %360, 8
  br i1 %361, label %362, label %310

362:                                              ; preds = %358
  %363 = and i32 %302, 6
  %364 = add i32 %359, 1
  %365 = getelementptr inbounds %struct.urb, ptr %304, i32 0, i32 24
  %366 = load i32, ptr %365, align 4
  %367 = icmp eq i32 %364, %366
  br i1 %367, label %368, label %404, !prof !19

368:                                              ; preds = %362
  %369 = load i32, ptr %308, align 4
  %370 = and i32 %369, -1073741824
  %371 = icmp eq i32 %370, 1073741824
  br i1 %371, label %372, label %375

372:                                              ; preds = %368
  %373 = load i32, ptr %35, align 4
  %374 = add i32 %373, -1
  store i32 %374, ptr %35, align 4
  br label %375

375:                                              ; preds = %372, %368
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %36, ptr noundef %304) #18
  tail call void @usb_hcd_giveback_urb(ptr noundef %36, ptr noundef %304, i32 noundef 0) #18
  %376 = load i32, ptr %26, align 4
  %377 = add i32 %376, -1
  store i32 %377, ptr %26, align 4
  %378 = load i32, ptr %37, align 8
  %379 = add i32 %378, -1
  store i32 %379, ptr %37, align 8
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %375
  tail call void @ehci_poll_PSS(ptr noundef %0) #18
  br label %382

382:                                              ; preds = %381, %375
  %383 = load i32, ptr %38, align 8
  %384 = add i32 %383, -1
  store i32 %384, ptr %38, align 8
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %382
  %387 = load i32, ptr %29, align 4
  %388 = and i32 %387, 512
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %386
  tail call void @usb_amd_quirk_pll_enable() #18
  br label %391

391:                                              ; preds = %390, %386, %382
  %392 = getelementptr inbounds %struct.ehci_iso_stream, ptr %306, i32 0, i32 3
  %393 = load volatile ptr, ptr %392, align 4
  %394 = icmp eq ptr %393, %392
  br i1 %394, label %404, label %395

395:                                              ; preds = %391
  %396 = getelementptr inbounds %struct.ehci_iso_stream, ptr %306, i32 0, i32 3, i32 1
  %397 = load ptr, ptr %396, align 4
  %398 = icmp eq ptr %393, %397
  br i1 %398, label %399, label %404, !prof !19

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.ehci_iso_stream, ptr %306, i32 0, i32 10
  %401 = load i32, ptr %400, align 4
  %402 = load i32, ptr %39, align 8
  %403 = sub i32 %402, %401
  store i32 %403, ptr %39, align 8
  br label %404

404:                                              ; preds = %399, %395, %391, %362
  store ptr null, ptr %303, align 4
  %405 = getelementptr inbounds %struct.ehci_itd, ptr %242, i32 0, i32 8
  %406 = getelementptr inbounds %struct.ehci_iso_stream, ptr %306, i32 0, i32 4
  %407 = getelementptr inbounds %struct.ehci_itd, ptr %242, i32 0, i32 8, i32 1
  %408 = load ptr, ptr %407, align 4
  %409 = load ptr, ptr %405, align 4
  %410 = getelementptr inbounds %struct.list_head, ptr %409, i32 0, i32 1
  store ptr %408, ptr %410, align 4
  store volatile ptr %409, ptr %408, align 4
  %411 = getelementptr inbounds %struct.ehci_iso_stream, ptr %306, i32 0, i32 4, i32 1
  %412 = load ptr, ptr %411, align 4
  store ptr %405, ptr %411, align 4
  store ptr %406, ptr %405, align 4
  store ptr %412, ptr %407, align 4
  store volatile ptr %405, ptr %412, align 4
  %413 = getelementptr inbounds %struct.ehci_iso_stream, ptr %306, i32 0, i32 3
  %414 = load volatile ptr, ptr %413, align 4
  %415 = icmp eq ptr %414, %413
  br i1 %415, label %416, label %439

416:                                              ; preds = %404
  %417 = load volatile ptr, ptr %406, align 4
  %418 = icmp eq ptr %417, %406
  br i1 %418, label %423, label %419

419:                                              ; preds = %416
  %420 = load ptr, ptr %42, align 4
  %421 = load ptr, ptr %411, align 4
  %422 = getelementptr inbounds %struct.list_head, ptr %417, i32 0, i32 1
  store ptr %420, ptr %422, align 4
  store ptr %417, ptr %420, align 4
  store ptr %46, ptr %421, align 4
  store ptr %421, ptr %42, align 4
  store volatile ptr %406, ptr %406, align 4
  store ptr %406, ptr %411, align 4
  br label %423

423:                                              ; preds = %419, %416
  %424 = load i32, ptr %17, align 4
  %425 = and i32 %424, 16
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %439

427:                                              ; preds = %423
  %428 = load ptr, ptr %42, align 4
  %429 = getelementptr i8, ptr %428, i32 -108
  store ptr %429, ptr %43, align 8
  %430 = load ptr, ptr %41, align 4
  %431 = getelementptr i8, ptr %430, i32 -52
  store ptr %431, ptr %44, align 4
  %432 = tail call i64 @ktime_get() #18
  %433 = add i64 %432, 2000000
  store i64 %433, ptr %45, align 8
  %434 = load i32, ptr %17, align 4
  %435 = or i32 %434, 16
  store i32 %435, ptr %17, align 4
  %436 = load i32, ptr %0, align 8
  %437 = icmp ugt i32 %436, 4
  br i1 %437, label %438, label %439

438:                                              ; preds = %427
  store i32 4, ptr %0, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %19, i64 noundef %433, i64 noundef 1000000, i32 noundef 0) #18
  br label %439

439:                                              ; preds = %438, %427, %423, %404
  %440 = load ptr, ptr %237, align 4
  br i1 %367, label %601, label %597

441:                                              ; preds = %248
  br i1 %219, label %443, label %442

442:                                              ; preds = %441
  br i1 %223, label %454, label %444

443:                                              ; preds = %441
  br i1 %190, label %444, label %454

444:                                              ; preds = %443, %442
  %445 = getelementptr inbounds %struct.ehci_sitd, ptr %242, i32 0, i32 3
  %446 = load i32, ptr %445, align 4
  %447 = and i32 %446, 128
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %454, label %449

449:                                              ; preds = %444
  %450 = getelementptr inbounds %struct.ehci_sitd, ptr %242, i32 0, i32 8
  %451 = load i32, ptr %242, align 32
  %452 = and i32 %451, 6
  %453 = load ptr, ptr %450, align 4
  br i1 %241, label %601, label %608

454:                                              ; preds = %444, %443, %442
  %455 = getelementptr inbounds %struct.ehci_sitd, ptr %242, i32 0, i32 8
  %456 = load i32, ptr %455, align 8
  store i32 %456, ptr %237, align 4
  %457 = load i32, ptr %29, align 4
  %458 = and i32 %457, 1024
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %466, label %460

460:                                              ; preds = %454
  %461 = load i32, ptr %242, align 32
  %462 = icmp eq i32 %461, 1
  br i1 %462, label %463, label %466

463:                                              ; preds = %460
  %464 = load ptr, ptr %34, align 8
  %465 = getelementptr inbounds %struct.ehci_qh, ptr %464, i32 0, i32 1
  br label %466

466:                                              ; preds = %463, %460, %454
  %467 = phi ptr [ %465, %463 ], [ %242, %460 ], [ %242, %454 ]
  %468 = load i32, ptr %467, align 4
  store i32 %468, ptr %239, align 4
  %469 = load i32, ptr %242, align 32
  %470 = and i32 %469, 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !24
  tail call void @arm_heavy_mb() #18
  %471 = getelementptr inbounds %struct.ehci_sitd, ptr %242, i32 0, i32 9
  %472 = load ptr, ptr %471, align 4
  %473 = getelementptr inbounds %struct.ehci_sitd, ptr %242, i32 0, i32 10
  %474 = load ptr, ptr %473, align 16
  %475 = getelementptr inbounds %struct.ehci_sitd, ptr %242, i32 0, i32 13
  %476 = load i32, ptr %475, align 32
  %477 = getelementptr inbounds %struct.ehci_sitd, ptr %242, i32 0, i32 3
  %478 = load i32, ptr %477, align 4
  %479 = and i32 %478, 124
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %500, label %481, !prof !17

481:                                              ; preds = %466
  %482 = getelementptr inbounds %struct.urb, ptr %472, i32 0, i32 26
  %483 = load i32, ptr %482, align 4
  %484 = add i32 %483, 1
  store i32 %484, ptr %482, align 4
  %485 = and i32 %478, 32
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %494, label %487

487:                                              ; preds = %481
  %488 = getelementptr inbounds %struct.urb, ptr %472, i32 0, i32 10
  %489 = load i32, ptr %488, align 4
  %490 = and i32 %489, 128
  %491 = icmp eq i32 %490, 0
  %492 = select i1 %491, i32 -70, i32 -63
  %493 = getelementptr %struct.urb, ptr %472, i32 0, i32 29, i32 %476, i32 3
  store i32 %492, ptr %493, align 4
  br label %518

494:                                              ; preds = %481
  %495 = and i32 %478, 16
  %496 = icmp eq i32 %495, 0
  %497 = getelementptr %struct.urb, ptr %472, i32 0, i32 29, i32 %476, i32 3
  br i1 %496, label %499, label %498

498:                                              ; preds = %494
  store i32 -75, ptr %497, align 4
  br label %518

499:                                              ; preds = %494
  store i32 -71, ptr %497, align 4
  br label %518

500:                                              ; preds = %466
  %501 = and i32 %478, 128
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %507, label %503, !prof !17

503:                                              ; preds = %500
  %504 = getelementptr inbounds %struct.urb, ptr %472, i32 0, i32 26
  %505 = load i32, ptr %504, align 4
  %506 = add i32 %505, 1
  store i32 %506, ptr %504, align 4
  br label %518

507:                                              ; preds = %500
  %508 = getelementptr %struct.urb, ptr %472, i32 0, i32 29, i32 %476, i32 3
  store i32 0, ptr %508, align 4
  %509 = getelementptr %struct.urb, ptr %472, i32 0, i32 29, i32 %476, i32 1
  %510 = load i32, ptr %509, align 4
  %511 = lshr i32 %478, 16
  %512 = and i32 %511, 1023
  %513 = sub i32 %510, %512
  %514 = getelementptr %struct.urb, ptr %472, i32 0, i32 29, i32 %476, i32 2
  store i32 %513, ptr %514, align 4
  %515 = getelementptr inbounds %struct.urb, ptr %472, i32 0, i32 20
  %516 = load i32, ptr %515, align 4
  %517 = add i32 %516, %513
  store i32 %517, ptr %515, align 4
  br label %518

518:                                              ; preds = %507, %503, %499, %498, %487
  %519 = add i32 %476, 1
  %520 = getelementptr inbounds %struct.urb, ptr %472, i32 0, i32 24
  %521 = load i32, ptr %520, align 4
  %522 = icmp eq i32 %519, %521
  br i1 %522, label %523, label %560

523:                                              ; preds = %518
  %524 = getelementptr inbounds %struct.urb, ptr %472, i32 0, i32 10
  %525 = load i32, ptr %524, align 4
  %526 = and i32 %525, -1073741824
  %527 = icmp eq i32 %526, 1073741824
  br i1 %527, label %528, label %531

528:                                              ; preds = %523
  %529 = load i32, ptr %35, align 4
  %530 = add i32 %529, -1
  store i32 %530, ptr %35, align 4
  br label %531

531:                                              ; preds = %528, %523
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %36, ptr noundef %472) #18
  tail call void @usb_hcd_giveback_urb(ptr noundef %36, ptr noundef %472, i32 noundef 0) #18
  %532 = load i32, ptr %26, align 4
  %533 = add i32 %532, -1
  store i32 %533, ptr %26, align 4
  %534 = load i32, ptr %37, align 8
  %535 = add i32 %534, -1
  store i32 %535, ptr %37, align 8
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %538

537:                                              ; preds = %531
  tail call void @ehci_poll_PSS(ptr noundef %0) #18
  br label %538

538:                                              ; preds = %537, %531
  %539 = load i32, ptr %38, align 8
  %540 = add i32 %539, -1
  store i32 %540, ptr %38, align 8
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %547

542:                                              ; preds = %538
  %543 = load i32, ptr %29, align 4
  %544 = and i32 %543, 512
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %547, label %546

546:                                              ; preds = %542
  tail call void @usb_amd_quirk_pll_enable() #18
  br label %547

547:                                              ; preds = %546, %542, %538
  %548 = getelementptr inbounds %struct.ehci_iso_stream, ptr %474, i32 0, i32 3
  %549 = load volatile ptr, ptr %548, align 4
  %550 = icmp eq ptr %549, %548
  br i1 %550, label %560, label %551

551:                                              ; preds = %547
  %552 = getelementptr inbounds %struct.ehci_iso_stream, ptr %474, i32 0, i32 3, i32 1
  %553 = load ptr, ptr %552, align 4
  %554 = icmp eq ptr %549, %553
  br i1 %554, label %555, label %560

555:                                              ; preds = %551
  %556 = getelementptr inbounds %struct.ehci_iso_stream, ptr %474, i32 0, i32 10
  %557 = load i32, ptr %556, align 4
  %558 = load i32, ptr %39, align 8
  %559 = sub i32 %558, %557
  store i32 %559, ptr %39, align 8
  br label %560

560:                                              ; preds = %555, %551, %547, %518
  store ptr null, ptr %471, align 4
  %561 = getelementptr inbounds %struct.ehci_sitd, ptr %242, i32 0, i32 11
  %562 = getelementptr inbounds %struct.ehci_iso_stream, ptr %474, i32 0, i32 4
  %563 = getelementptr inbounds %struct.ehci_sitd, ptr %242, i32 0, i32 11, i32 1
  %564 = load ptr, ptr %563, align 4
  %565 = load ptr, ptr %561, align 4
  %566 = getelementptr inbounds %struct.list_head, ptr %565, i32 0, i32 1
  store ptr %564, ptr %566, align 4
  store volatile ptr %565, ptr %564, align 4
  %567 = getelementptr inbounds %struct.ehci_iso_stream, ptr %474, i32 0, i32 4, i32 1
  %568 = load ptr, ptr %567, align 4
  store ptr %561, ptr %567, align 4
  store ptr %562, ptr %561, align 4
  store ptr %568, ptr %563, align 4
  store volatile ptr %561, ptr %568, align 4
  %569 = getelementptr inbounds %struct.ehci_iso_stream, ptr %474, i32 0, i32 3
  %570 = load volatile ptr, ptr %569, align 4
  %571 = icmp eq ptr %570, %569
  br i1 %571, label %572, label %595

572:                                              ; preds = %560
  %573 = load volatile ptr, ptr %562, align 4
  %574 = icmp eq ptr %573, %562
  br i1 %574, label %579, label %575

575:                                              ; preds = %572
  %576 = load ptr, ptr %41, align 4
  %577 = load ptr, ptr %567, align 4
  %578 = getelementptr inbounds %struct.list_head, ptr %573, i32 0, i32 1
  store ptr %576, ptr %578, align 4
  store ptr %573, ptr %576, align 4
  store ptr %40, ptr %577, align 4
  store ptr %577, ptr %41, align 4
  store volatile ptr %562, ptr %562, align 4
  store ptr %562, ptr %567, align 4
  br label %579

579:                                              ; preds = %575, %572
  %580 = load i32, ptr %17, align 4
  %581 = and i32 %580, 16
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %595

583:                                              ; preds = %579
  %584 = load ptr, ptr %42, align 4
  %585 = getelementptr i8, ptr %584, i32 -108
  store ptr %585, ptr %43, align 8
  %586 = load ptr, ptr %41, align 4
  %587 = getelementptr i8, ptr %586, i32 -52
  store ptr %587, ptr %44, align 4
  %588 = tail call i64 @ktime_get() #18
  %589 = add i64 %588, 2000000
  store i64 %589, ptr %45, align 8
  %590 = load i32, ptr %17, align 4
  %591 = or i32 %590, 16
  store i32 %591, ptr %17, align 4
  %592 = load i32, ptr %0, align 8
  %593 = icmp ugt i32 %592, 4
  br i1 %593, label %594, label %595

594:                                              ; preds = %583
  store i32 4, ptr %0, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %19, i64 noundef %589, i64 noundef 1000000, i32 noundef 0) #18
  br label %595

595:                                              ; preds = %594, %583, %579, %560
  %596 = load ptr, ptr %237, align 4
  br i1 %522, label %601, label %597

597:                                              ; preds = %595, %439
  %598 = phi ptr [ %596, %595 ], [ %440, %439 ]
  %599 = phi i32 [ %470, %595 ], [ %363, %439 ]
  br label %240

600:                                              ; preds = %248
  br i1 %245, label %601, label %244

601:                                              ; preds = %600, %595, %449, %439, %282
  %602 = phi ptr [ %242, %449 ], [ %242, %282 ], [ %239, %600 ], [ %239, %439 ], [ %239, %595 ]
  %603 = phi i32 [ %452, %449 ], [ %285, %282 ], [ %243, %600 ], [ %470, %595 ], [ %363, %439 ]
  %604 = phi ptr [ %450, %449 ], [ %283, %282 ], [ %237, %600 ], [ %237, %439 ], [ %237, %595 ]
  %605 = phi ptr [ %453, %449 ], [ %286, %282 ], [ null, %600 ], [ %596, %595 ], [ %440, %439 ]
  %606 = load i32, ptr %26, align 4
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %608, label %226, !prof !17

608:                                              ; preds = %601, %449, %282
  %609 = phi i1 [ false, %282 ], [ false, %449 ], [ true, %601 ]
  %610 = phi ptr [ %286, %282 ], [ %453, %449 ], [ %605, %601 ]
  %611 = phi ptr [ %283, %282 ], [ %450, %449 ], [ %604, %601 ]
  %612 = phi i32 [ %285, %282 ], [ %452, %449 ], [ %603, %601 ]
  %613 = phi ptr [ %242, %282 ], [ %242, %449 ], [ %602, %601 ]
  br label %234

614:                                              ; preds = %244
  br i1 %219, label %616, label %615

615:                                              ; preds = %614
  store i32 %218, ptr %28, align 4
  br label %217

616:                                              ; preds = %614, %183
  %617 = load i8, ptr %2, align 4
  %618 = and i8 %617, 2
  %619 = icmp eq i8 %618, 0
  br i1 %619, label %620, label %47

620:                                              ; preds = %616
  %621 = and i8 %617, -2
  store i8 %621, ptr %2, align 4
  %622 = load i32, ptr %16, align 8
  %623 = icmp eq i32 %622, 2
  br i1 %623, label %624, label %649

624:                                              ; preds = %620
  %625 = load i32, ptr %17, align 4
  %626 = and i32 %625, 2048
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %649

628:                                              ; preds = %624
  %629 = load i32, ptr %26, align 4
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %640

631:                                              ; preds = %628
  %632 = load i32, ptr %29, align 4
  %633 = and i32 %632, 256
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %649, label %635

635:                                              ; preds = %631
  %636 = load i32, ptr %10, align 8
  %637 = load i32, ptr %20, align 8
  %638 = sub i32 0, %637
  %639 = icmp eq i32 %636, %638
  br i1 %639, label %649, label %640

640:                                              ; preds = %635, %628
  %641 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 11
  %642 = tail call i64 @ktime_get() #18
  %643 = add i64 %642, 100000000
  store i64 %643, ptr %641, align 8
  %644 = load i32, ptr %17, align 4
  %645 = or i32 %644, 2048
  store i32 %645, ptr %17, align 4
  %646 = load i32, ptr %0, align 8
  %647 = icmp ugt i32 %646, 11
  br i1 %647, label %648, label %649

648:                                              ; preds = %640
  store i32 11, ptr %0, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %19, i64 noundef %643, i64 noundef 1000000, i32 noundef 0) #18
  br label %649

649:                                              ; preds = %648, %640, %635, %631, %624, %620, %6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @qh_completions(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 9
  %7 = load i8, ptr %6, align 4
  store i8 5, ptr %6, align 4
  %8 = icmp eq i8 %7, 3
  %9 = zext i1 %8 to i32
  %10 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 13
  %11 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 3
  %12 = getelementptr i8, ptr %0, i32 -276
  %13 = getelementptr i8, ptr %0, i32 -352
  %14 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 51
  %15 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 10
  %16 = getelementptr inbounds %struct.ehci_qh_hw, ptr %5, i32 0, i32 6
  %17 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 11
  %18 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %19 = getelementptr i8, ptr %0, i32 -152
  %20 = getelementptr i8, ptr %0, i32 -288
  %21 = xor i1 %8, true
  %22 = load i8, ptr %10, align 4
  br label %23

23:                                               ; preds = %275, %2
  %24 = phi i8 [ %22, %2 ], [ %276, %275 ]
  %25 = phi i32 [ %9, %2 ], [ %277, %275 ]
  %26 = and i8 %24, -5
  store i8 %26, ptr %10, align 4
  %27 = load ptr, ptr %11, align 4
  %28 = icmp eq ptr %27, %11
  br i1 %28, label %269, label %29

29:                                               ; preds = %240, %23
  %30 = phi ptr [ %243, %240 ], [ null, %23 ]
  %31 = phi ptr [ %34, %240 ], [ %27, %23 ]
  %32 = phi i32 [ %242, %240 ], [ %25, %23 ]
  %33 = phi i32 [ %241, %240 ], [ -115, %23 ]
  %34 = load ptr, ptr %31, align 4
  %35 = getelementptr i8, ptr %31, i32 -56
  %36 = getelementptr i8, ptr %31, i32 8
  %37 = load ptr, ptr %36, align 32
  %38 = icmp eq ptr %30, null
  br i1 %38, label %65, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.ehci_qtd, ptr %30, i32 0, i32 7
  %41 = load ptr, ptr %40, align 32
  %42 = icmp eq ptr %41, %37
  br i1 %42, label %60, label %43, !prof !19

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, -1073741824
  %47 = icmp eq i32 %46, 1073741824
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, ptr %12, align 4
  %50 = add i32 %49, -1
  store i32 %50, ptr %12, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = getelementptr inbounds %struct.urb, ptr %41, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = icmp eq i32 %33, -115
  %56 = icmp eq i32 %33, -121
  %57 = or i1 %55, %56
  %58 = and i1 %57, %54
  %59 = select i1 %58, i32 0, i32 %33, !prof !17
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %13, ptr noundef %41) #18
  tail call void @usb_hcd_giveback_urb(ptr noundef %13, ptr noundef %41, i32 noundef %59) #18
  br label %60

60:                                               ; preds = %51, %39
  %61 = phi i32 [ -115, %51 ], [ %33, %39 ]
  %62 = load ptr, ptr %14, align 8
  %63 = getelementptr inbounds %struct.ehci_qtd, ptr %30, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  tail call void @dma_pool_free(ptr noundef %62, ptr noundef nonnull %30, i32 noundef %64) #18
  br label %65

65:                                               ; preds = %60, %29
  %66 = phi i32 [ %61, %60 ], [ %33, %29 ]
  %67 = icmp eq ptr %35, %4
  br i1 %67, label %269, label %68

68:                                               ; preds = %65
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !25
  %69 = getelementptr i8, ptr %31, i32 -48
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 128
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %107

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 1
  %75 = and i32 %70, 64
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %73
  %78 = and i32 %70, 3080
  %79 = icmp eq i32 %78, 8
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i8, ptr %15, align 1
  %82 = add i8 %81, 1
  store i8 %82, ptr %15, align 1
  %83 = icmp ult i8 %82, 32
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32, ptr %74, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = and i32 %70, -3265
  %89 = or i32 %88, 3200
  store i32 %89, ptr %69, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !26
  tail call void @arm_heavy_mb() #18
  store i32 %89, ptr %16, align 8
  br label %107

90:                                               ; preds = %84, %80, %77
  %91 = load i8, ptr %17, align 2
  %92 = or i8 %91, 1
  store i8 %92, ptr %17, align 2
  br label %137

93:                                               ; preds = %73
  %94 = and i32 %70, 2147418112
  %95 = icmp ne i32 %94, 0
  %96 = and i32 %70, 768
  %97 = icmp eq i32 %96, 256
  %98 = and i1 %95, %97
  br i1 %98, label %99, label %137

99:                                               ; preds = %93
  %100 = getelementptr i8, ptr %31, i32 -52
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %99
  %105 = load i8, ptr %17, align 2
  %106 = or i8 %105, 2
  store i8 %106, ptr %17, align 2
  br label %137

107:                                              ; preds = %87, %68
  %108 = phi i32 [ %89, %87 ], [ %70, %68 ]
  %109 = icmp eq i32 %32, 0
  %110 = load i32, ptr %18, align 8
  br i1 %109, label %111, label %113, !prof !17

111:                                              ; preds = %107
  %112 = icmp ugt i32 %110, 1
  br i1 %112, label %278, label %115, !prof !17

113:                                              ; preds = %107
  %114 = icmp ult i32 %110, 2
  br i1 %114, label %115, label %118

115:                                              ; preds = %113, %111
  %116 = load i8, ptr %17, align 2
  %117 = or i8 %116, 8
  store i8 %117, ptr %17, align 2
  br label %124

118:                                              ; preds = %113
  %119 = icmp eq i32 %66, -115
  br i1 %119, label %120, label %124

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %240, label %124

124:                                              ; preds = %120, %118, %115
  %125 = phi i32 [ -108, %115 ], [ -115, %120 ], [ %66, %118 ]
  br i1 %8, label %126, label %137

126:                                              ; preds = %124
  %127 = load ptr, ptr %11, align 4
  %128 = icmp eq ptr %127, %31
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, ptr %16, align 8
  %131 = and i32 %130, 128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = and i32 %130, -129
  store i32 %134, ptr %16, align 8
  %135 = load i8, ptr %10, align 4
  %136 = or i8 %135, 8
  store i8 %136, ptr %10, align 4
  tail call fastcc void @ehci_clear_tt_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %37)
  br label %137

137:                                              ; preds = %133, %129, %126, %124, %104, %99, %93, %90
  %138 = phi i32 [ %66, %90 ], [ %66, %99 ], [ %66, %104 ], [ %66, %93 ], [ %125, %133 ], [ %125, %129 ], [ %125, %126 ], [ %125, %124 ]
  %139 = phi i32 [ 1, %90 ], [ %32, %99 ], [ 1, %104 ], [ %32, %93 ], [ 1, %133 ], [ 1, %129 ], [ 1, %126 ], [ 1, %124 ]
  %140 = phi i32 [ %70, %90 ], [ %70, %99 ], [ %70, %104 ], [ %70, %93 ], [ %130, %133 ], [ %108, %129 ], [ %108, %126 ], [ %108, %124 ]
  %141 = icmp eq i32 %138, -115
  br i1 %141, label %142, label %225

142:                                              ; preds = %137
  %143 = lshr i32 %140, 8
  %144 = and i32 %143, 3
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %155, label %146, !prof !19

146:                                              ; preds = %142
  %147 = getelementptr i8, ptr %31, i32 12
  %148 = load i32, ptr %147, align 4
  %149 = lshr i32 %140, 16
  %150 = and i32 %149, 32767
  %151 = sub i32 %148, %150
  %152 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 20
  %153 = load i32, ptr %152, align 4
  %154 = add i32 %151, %153
  store i32 %154, ptr %152, align 4
  br label %155

155:                                              ; preds = %146, %142
  %156 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 1
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %225, !prof !17

159:                                              ; preds = %155
  %160 = and i32 %140, 2147418112
  %161 = icmp ne i32 %160, 0
  %162 = icmp eq i32 %144, 1
  %163 = and i1 %161, %162
  %164 = and i32 %140, 64
  %165 = icmp eq i32 %164, 0
  br i1 %163, label %166, label %167, !prof !19

166:                                              ; preds = %159
  br i1 %165, label %186, label %168

167:                                              ; preds = %159
  br i1 %165, label %225, label %168

168:                                              ; preds = %167, %166
  %169 = and i32 %140, 16
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %195

171:                                              ; preds = %168
  %172 = and i32 %140, 4
  %173 = icmp eq i32 %172, 0
  %174 = xor i1 %162, true
  %175 = or i1 %173, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %171
  %177 = and i32 %140, 3072
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %173, true
  %180 = or i1 %178, %179
  %181 = select i1 %178, i32 -32, i32 -71
  br i1 %180, label %192, label %182

182:                                              ; preds = %176
  %183 = and i32 %140, 32
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %162, i32 -63, i32 -70
  br i1 %184, label %195, label %192

186:                                              ; preds = %166
  %187 = getelementptr i8, ptr %31, i32 -52
  %188 = load i32, ptr %187, align 4
  %189 = and i32 %188, 1
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, i32 -121, i32 -115
  br label %225

192:                                              ; preds = %182, %176
  %193 = phi i32 [ %185, %182 ], [ %181, %176 ]
  %194 = icmp eq i32 %193, -32
  br i1 %194, label %225, label %195

195:                                              ; preds = %192, %182, %171, %168
  %196 = phi i32 [ %193, %192 ], [ -75, %168 ], [ -71, %171 ], [ -71, %182 ]
  %197 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 8
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.usb_device, ptr %198, i32 0, i32 8
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %225, label %202

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.urb, ptr %37, i32 0, i32 10
  %204 = load i32, ptr %203, align 4
  %205 = and i32 %204, -1073741824
  %206 = icmp eq i32 %205, 1073741824
  br i1 %206, label %225, label %207

207:                                              ; preds = %202
  %208 = load i8, ptr %10, align 4
  %209 = and i8 %208, 2
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %207
  %212 = load i16, ptr %19, align 8
  %213 = and i16 %212, 128
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load ptr, ptr %200, align 4
  %217 = load ptr, ptr %20, align 8
  %218 = icmp eq ptr %216, %217
  br i1 %218, label %225, label %219

219:                                              ; preds = %215, %211
  %220 = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef %37) #18
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i8, ptr %10, align 4
  %224 = or i8 %223, 2
  store i8 %224, ptr %10, align 4
  br label %225

225:                                              ; preds = %222, %219, %215, %207, %202, %195, %192, %186, %167, %155, %137
  %226 = phi i32 [ %138, %137 ], [ %196, %195 ], [ %196, %202 ], [ %196, %207 ], [ %196, %215 ], [ %196, %219 ], [ %196, %222 ], [ -115, %155 ], [ %191, %186 ], [ -115, %167 ], [ -32, %192 ]
  %227 = icmp eq i32 %139, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, %11
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = getelementptr i8, ptr %230, i32 -56
  %234 = load i32, ptr %35, align 32
  store i32 %234, ptr %233, align 32
  br label %235

235:                                              ; preds = %232, %228, %225
  %236 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %237 = load ptr, ptr %236, align 4
  %238 = load ptr, ptr %31, align 4
  %239 = getelementptr inbounds %struct.list_head, ptr %238, i32 0, i32 1
  store ptr %237, ptr %239, align 4
  store volatile ptr %238, ptr %237, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %236, align 4
  store i8 0, ptr %15, align 1
  br label %240

240:                                              ; preds = %235, %120
  %241 = phi i32 [ %226, %235 ], [ -115, %120 ]
  %242 = phi i32 [ %139, %235 ], [ 1, %120 ]
  %243 = phi ptr [ %35, %235 ], [ null, %120 ]
  %244 = icmp eq ptr %34, %11
  br i1 %244, label %245, label %29

245:                                              ; preds = %240
  %246 = icmp eq ptr %243, null
  br i1 %246, label %269, label %247, !prof !19

247:                                              ; preds = %245
  %248 = getelementptr inbounds %struct.ehci_qtd, ptr %243, i32 0, i32 7
  %249 = load ptr, ptr %248, align 32
  %250 = getelementptr inbounds %struct.urb, ptr %249, i32 0, i32 10
  %251 = load i32, ptr %250, align 4
  %252 = and i32 %251, -1073741824
  %253 = icmp eq i32 %252, 1073741824
  br i1 %253, label %254, label %257

254:                                              ; preds = %247
  %255 = load i32, ptr %12, align 4
  %256 = add i32 %255, -1
  store i32 %256, ptr %12, align 4
  br label %257

257:                                              ; preds = %254, %247
  %258 = getelementptr inbounds %struct.urb, ptr %249, i32 0, i32 1
  %259 = load i32, ptr %258, align 4
  %260 = icmp eq i32 %259, 0
  %261 = icmp eq i32 %241, -115
  %262 = icmp eq i32 %241, -121
  %263 = or i1 %261, %262
  %264 = and i1 %263, %260
  %265 = select i1 %264, i32 0, i32 %241, !prof !17
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %13, ptr noundef %249) #18
  tail call void @usb_hcd_giveback_urb(ptr noundef %13, ptr noundef %249, i32 noundef %265) #18
  %266 = load ptr, ptr %14, align 8
  %267 = getelementptr inbounds %struct.ehci_qtd, ptr %243, i32 0, i32 5
  %268 = load i32, ptr %267, align 4
  tail call void @dma_pool_free(ptr noundef %266, ptr noundef nonnull %243, i32 noundef %268) #18
  br label %269

269:                                              ; preds = %257, %245, %65, %23
  %270 = phi i32 [ %242, %257 ], [ %242, %245 ], [ %25, %23 ], [ %32, %65 ]
  %271 = load i8, ptr %10, align 4
  %272 = and i8 %271, 4
  %273 = icmp eq i8 %272, 0
  %274 = select i1 %273, i1 true, i1 %21
  br i1 %274, label %284, label %275, !prof !27

275:                                              ; preds = %278, %269
  %276 = phi i8 [ %271, %269 ], [ %279, %278 ]
  %277 = phi i32 [ %270, %269 ], [ 0, %278 ]
  br label %23

278:                                              ; preds = %111
  %279 = load i8, ptr %10, align 4
  %280 = and i8 %279, 4
  %281 = icmp eq i8 %280, 0
  %282 = select i1 %281, i1 true, i1 %21
  br i1 %282, label %283, label %275, !prof !27

283:                                              ; preds = %278
  store i8 %7, ptr %6, align 4
  br label %286

284:                                              ; preds = %269
  store i8 %7, ptr %6, align 4
  %285 = icmp eq i32 %270, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %284, %283
  %287 = getelementptr inbounds %struct.ehci_qh_hw, ptr %5, i32 0, i32 4
  %288 = load i32, ptr %287, align 16
  %289 = icmp eq i32 %288, 1
  br i1 %289, label %292, label %290

290:                                              ; preds = %286
  %291 = load i8, ptr %17, align 2
  br label %295

292:                                              ; preds = %286, %284
  %293 = load i8, ptr %17, align 2
  %294 = or i8 %293, 4
  store i8 %294, ptr %17, align 2
  br label %295

295:                                              ; preds = %292, %290
  %296 = phi i8 [ %291, %290 ], [ %294, %292 ]
  %297 = zext i8 %296 to i32
  ret i32 %297
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @qh_schedule(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %4 = load ptr, ptr %1, align 4
  store i32 1, ptr %4, align 32
  %5 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 6
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 29999
  br i1 %7, label %8, label %249

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7
  store i32 0, ptr %3, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call fastcc ptr @find_tt(ptr noundef %10)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %11 to i32
  br label %249

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 63
  %17 = icmp eq ptr %11, null
  br i1 %17, label %130, label %18

18:                                               ; preds = %15
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(64) %16, i8 0, i32 64, i1 false) #18
  %19 = getelementptr inbounds %struct.ehci_tt, ptr %11, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %130, label %25

22:                                               ; preds = %125, %25
  %23 = load ptr, ptr %26, align 4
  %24 = icmp eq ptr %23, %19
  br i1 %24, label %130, label %25

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %23, %22 ], [ %20, %18 ]
  %27 = getelementptr i8, ptr %26, i32 16
  %28 = load i8, ptr %27, align 4
  %29 = icmp ult i8 %28, 8
  br i1 %29, label %30, label %22

30:                                               ; preds = %25
  %31 = zext i8 %28 to i32
  %32 = shl nuw nsw i32 %31, 3
  %33 = getelementptr i8, ptr %26, i32 8
  %34 = getelementptr i8, ptr %26, i32 17
  %35 = getelementptr i8, ptr %26, i32 20
  br label %36

36:                                               ; preds = %125, %30
  %37 = phi i32 [ %32, %30 ], [ %128, %125 ]
  %38 = getelementptr i8, ptr %16, i32 %37
  %39 = load i8, ptr %34, align 1
  %40 = icmp ult i8 %39, 8
  br i1 %40, label %41, label %125

41:                                               ; preds = %36
  %42 = zext i8 %39 to i32
  %43 = load i16, ptr %33, align 4
  %44 = zext i16 %43 to i32
  %45 = getelementptr i8, ptr %38, i32 %42
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = add nuw nsw i32 %44, %47
  %49 = icmp ult i32 %48, 126
  br i1 %49, label %50, label %54

50:                                               ; preds = %117, %107, %97, %87, %77, %67, %57, %41
  %51 = phi ptr [ %45, %41 ], [ %59, %57 ], [ %69, %67 ], [ %79, %77 ], [ %89, %87 ], [ %99, %97 ], [ %109, %107 ], [ %119, %117 ]
  %52 = phi i32 [ %48, %41 ], [ %62, %57 ], [ %72, %67 ], [ %82, %77 ], [ %92, %87 ], [ %102, %97 ], [ %112, %107 ], [ %122, %117 ]
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %51, align 1
  br label %125

54:                                               ; preds = %41
  store i8 125, ptr %45, align 1
  %55 = add nuw nsw i32 %42, 1
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %125, label %57

57:                                               ; preds = %54
  %58 = add nsw i32 %48, -125
  %59 = getelementptr i8, ptr %38, i32 %55
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %58, %61
  %63 = icmp ult i32 %62, 126
  br i1 %63, label %50, label %64

64:                                               ; preds = %57
  store i8 125, ptr %59, align 1
  %65 = add nuw nsw i32 %42, 2
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %125, label %67

67:                                               ; preds = %64
  %68 = add nsw i32 %62, -125
  %69 = getelementptr i8, ptr %38, i32 %65
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %68, %71
  %73 = icmp ult i32 %72, 126
  br i1 %73, label %50, label %74

74:                                               ; preds = %67
  store i8 125, ptr %69, align 1
  %75 = add nuw nsw i32 %42, 3
  %76 = icmp eq i32 %75, 8
  br i1 %76, label %125, label %77

77:                                               ; preds = %74
  %78 = add nsw i32 %72, -125
  %79 = getelementptr i8, ptr %38, i32 %75
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = add i32 %78, %81
  %83 = icmp ult i32 %82, 126
  br i1 %83, label %50, label %84

84:                                               ; preds = %77
  store i8 125, ptr %79, align 1
  %85 = add nuw nsw i32 %42, 4
  %86 = icmp eq i32 %85, 8
  br i1 %86, label %125, label %87

87:                                               ; preds = %84
  %88 = add i32 %82, -125
  %89 = getelementptr i8, ptr %38, i32 %85
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = add i32 %88, %91
  %93 = icmp ult i32 %92, 126
  br i1 %93, label %50, label %94

94:                                               ; preds = %87
  store i8 125, ptr %89, align 1
  %95 = add nuw nsw i32 %42, 5
  %96 = icmp eq i32 %95, 8
  br i1 %96, label %125, label %97

97:                                               ; preds = %94
  %98 = add i32 %92, -125
  %99 = getelementptr i8, ptr %38, i32 %95
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i32
  %102 = add i32 %98, %101
  %103 = icmp ult i32 %102, 126
  br i1 %103, label %50, label %104

104:                                              ; preds = %97
  store i8 125, ptr %99, align 1
  %105 = add nuw nsw i32 %42, 6
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %125, label %107

107:                                              ; preds = %104
  %108 = add i32 %102, -125
  %109 = getelementptr i8, ptr %38, i32 %105
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = add i32 %108, %111
  %113 = icmp ult i32 %112, 126
  br i1 %113, label %50, label %114

114:                                              ; preds = %107
  store i8 125, ptr %109, align 1
  %115 = add nuw nsw i32 %42, 7
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = add i32 %112, -125
  %119 = getelementptr i8, ptr %38, i32 %115
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = add i32 %118, %121
  %123 = icmp ult i32 %122, 126
  br i1 %123, label %50, label %124

124:                                              ; preds = %117
  store i8 125, ptr %119, align 1
  br label %125

125:                                              ; preds = %124, %114, %104, %94, %84, %74, %64, %54, %50, %36
  %126 = load i8, ptr %35, align 4
  %127 = zext i8 %126 to i32
  %128 = add i32 %37, %127
  %129 = icmp ult i32 %128, 64
  br i1 %129, label %36, label %22

130:                                              ; preds = %22, %18, %15
  %131 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 12
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %156, label %134

134:                                              ; preds = %130
  %135 = zext i8 %132 to i32
  %136 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 54
  %137 = load i32, ptr %136, align 4
  br label %138

138:                                              ; preds = %153, %134
  %139 = phi i32 [ %137, %134 ], [ %141, %153 ]
  %140 = phi i32 [ %135, %134 ], [ %154, %153 ]
  %141 = add i32 %139, 1
  store i32 %141, ptr %136, align 4
  %142 = load i8, ptr %131, align 1
  %143 = zext i8 %142 to i32
  %144 = add nsw i32 %143, -1
  %145 = and i32 %144, %141
  br label %146

146:                                              ; preds = %150, %138
  %147 = phi i32 [ 0, %138 ], [ %151, %150 ]
  %148 = call fastcc i32 @check_intr_schedule(ptr noundef %0, i32 noundef %145, i32 noundef %147, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %11)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %214, label %150

150:                                              ; preds = %146
  %151 = add nuw nsw i32 %147, 1
  %152 = icmp eq i32 %151, 8
  br i1 %152, label %153, label %146

153:                                              ; preds = %150
  %154 = add nsw i32 %140, -1
  %155 = icmp sgt i32 %140, 1
  br i1 %155, label %138, label %249

156:                                              ; preds = %130
  %157 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 10
  %158 = load i8, ptr %157, align 1
  %159 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 11
  %160 = load i8, ptr %159, align 4
  %161 = zext i8 %160 to i32
  %162 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 9
  %163 = load i8, ptr %162, align 2
  %164 = zext i8 %163 to i32
  %165 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 38
  %166 = load i32, ptr %165, align 4
  %167 = sub i32 %166, %164
  br label %171

168:                                              ; preds = %171
  %169 = add i32 %172, %161
  %170 = icmp ult i32 %169, 64
  br i1 %170, label %171, label %177

171:                                              ; preds = %168, %156
  %172 = phi i32 [ %169, %168 ], [ 0, %156 ]
  %173 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %172
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp ult i32 %167, %175
  br i1 %176, label %249, label %168

177:                                              ; preds = %168
  %178 = icmp eq i8 %158, 0
  br i1 %178, label %212, label %179

179:                                              ; preds = %177
  %180 = tail call fastcc i32 @tt_available(ptr noundef %0, ptr noundef %9, ptr noundef %11, i32 noundef 0, i32 noundef 0) #18
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %249, label %182

182:                                              ; preds = %179
  %183 = zext i8 %158 to i32
  %184 = sub i32 %166, %183
  br label %188

185:                                              ; preds = %188
  %186 = add i32 %189, %161
  %187 = icmp ult i32 %186, 64
  br i1 %187, label %188, label %194

188:                                              ; preds = %185, %182
  %189 = phi i32 [ %186, %185 ], [ 2, %182 ]
  %190 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %189
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp ult i32 %184, %192
  br i1 %193, label %249, label %185

194:                                              ; preds = %200, %185
  %195 = phi i32 [ %201, %200 ], [ 3, %185 ]
  %196 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %195
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp ult i32 %184, %198
  br i1 %199, label %249, label %200

200:                                              ; preds = %194
  %201 = add i32 %195, %161
  %202 = icmp ult i32 %201, 64
  br i1 %202, label %194, label %203

203:                                              ; preds = %209, %200
  %204 = phi i32 [ %210, %209 ], [ 4, %200 ]
  %205 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %204
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i32
  %208 = icmp ult i32 %184, %207
  br i1 %208, label %249, label %209

209:                                              ; preds = %203
  %210 = add i32 %204, %161
  %211 = icmp ult i32 %210, 64
  br i1 %211, label %203, label %212

212:                                              ; preds = %209, %177
  %213 = phi i32 [ 0, %177 ], [ 28, %209 ]
  store i32 %213, ptr %3, align 4
  br label %216

214:                                              ; preds = %146
  %215 = add i8 %142, -1
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i8 [ -1, %212 ], [ %215, %214 ]
  %218 = phi i32 [ 0, %212 ], [ %147, %214 ]
  %219 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 5
  %220 = load i16, ptr %219, align 4
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %229, label %222

222:                                              ; preds = %216
  %223 = zext i16 %220 to i32
  %224 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 54
  %225 = load i32, ptr %224, align 4
  %226 = add nuw nsw i32 %223, 65535
  %227 = and i32 %225, %226
  %228 = trunc i32 %227 to i16
  br label %229

229:                                              ; preds = %222, %216
  %230 = phi i16 [ %228, %222 ], [ 0, %216 ]
  store i16 %230, ptr %5, align 2
  %231 = trunc i16 %230 to i8
  %232 = and i8 %217, %231
  %233 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 7
  store i8 %232, ptr %233, align 4
  %234 = trunc i32 %218 to i8
  %235 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 8
  store i8 %234, ptr %235, align 1
  %236 = load i32, ptr %3, align 4
  %237 = shl i32 %236, 8
  %238 = shl nuw i32 1, %218
  %239 = or i32 %237, %238
  %240 = trunc i32 %239 to i16
  %241 = select i1 %221, i16 255, i16 %240
  %242 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 4
  store i16 %241, ptr %242, align 2
  %243 = getelementptr inbounds %struct.ehci_qh_hw, ptr %4, i32 0, i32 2
  %244 = load i32, ptr %243, align 8
  %245 = and i32 %244, -65536
  store i32 %245, ptr %243, align 8
  %246 = load i16, ptr %242, align 2
  %247 = zext i16 %246 to i32
  %248 = or i32 %245, %247
  store i32 %248, ptr %243, align 8
  tail call fastcc void @reserve_release_intr_bandwidth(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  br label %249

249:                                              ; preds = %229, %203, %194, %188, %179, %171, %153, %13, %2
  %250 = phi i32 [ 0, %2 ], [ %14, %13 ], [ 0, %229 ], [ -28, %179 ], [ -28, %203 ], [ -28, %194 ], [ -28, %188 ], [ -28, %171 ], [ %148, %153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %250
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @qh_refresh(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr inbounds %struct.ehci_qh_hw, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %4, i32 -56
  %12 = load i32, ptr %11, align 32
  %13 = getelementptr inbounds %struct.ehci_qh_hw, ptr %5, i32 0, i32 4
  store i32 %12, ptr %13, align 16
  %14 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 13
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %59, label %18

18:                                               ; preds = %10
  %19 = getelementptr i8, ptr %0, i32 -352
  %20 = load ptr, ptr %19, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.7, ptr noundef %1) #19
  br label %59

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 9
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 3
  br i1 %24, label %26, label %25, !prof !17

25:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 84, i32 noundef 9, ptr noundef null) #18
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr i8, ptr %4, i32 -4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ehci_qh_hw, ptr %5, i32 0, i32 4
  store i32 %28, ptr %29, align 16
  %30 = getelementptr inbounds %struct.ehci_qh_hw, ptr %5, i32 0, i32 5
  store i32 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ehci_qh_hw, ptr %5, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 16384
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 13
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 1
  %39 = zext i8 %38 to i32
  %40 = lshr i32 %32, 8
  %41 = and i32 %40, 15
  %42 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr %struct.usb_device, ptr %43, i32 0, i32 10, i32 %39
  %45 = load i32, ptr %44, align 4
  %46 = shl nuw nsw i32 1, %41
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56, !prof !19

49:                                               ; preds = %35
  %50 = load i32, ptr %6, align 8
  %51 = and i32 %50, 2147483647
  store i32 %51, ptr %6, align 8
  %52 = load ptr, ptr %42, align 4
  %53 = getelementptr %struct.usb_device, ptr %52, i32 0, i32 10, i32 %39
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, %46
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %49, %35, %26
  %57 = load i32, ptr %6, align 8
  %58 = and i32 %57, -2147483647
  store i32 %58, ptr %6, align 8
  br label %59

59:                                               ; preds = %56, %18, %10
  %60 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 13
  %61 = load i8, ptr %60, align 4
  %62 = and i8 %61, -9
  store i8 %62, ptr %60, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @qh_link_periodic(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 5
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  %6 = select i1 %5, i16 1, i16 %4
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 6
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 23
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %10
  br i1 %13, label %14, label %101

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 28
  %16 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 24
  %17 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 2
  %18 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 1
  %19 = icmp eq ptr %1, null
  br label %20

20:                                               ; preds = %97, %14
  %21 = phi i32 [ %12, %14 ], [ %98, %97 ]
  %22 = phi i32 [ %10, %14 ], [ %99, %97 ]
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr %union.ehci_shadow, ptr %23, i32 %22
  %25 = load ptr, ptr %16, align 8
  %26 = getelementptr i32, ptr %25, i32 %22
  %27 = load i32, ptr %24, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %80, label %29

29:                                               ; preds = %43, %20
  %30 = phi i32 [ %45, %43 ], [ %27, %20 ]
  %31 = phi ptr [ %34, %43 ], [ %26, %20 ]
  %32 = phi ptr [ %44, %43 ], [ %24, %20 ]
  %33 = inttoptr i32 %30 to ptr
  %34 = inttoptr i32 %30 to ptr
  %35 = load i32, ptr %31, align 4
  %36 = and i32 %35, 6
  switch i32 %36, label %41 [
    i32 2, label %47
    i32 0, label %39
    i32 6, label %37
  ]

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.ehci_fstn, ptr %33, i32 0, i32 3
  br label %43

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.ehci_itd, ptr %33, i32 0, i32 5
  br label %43

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.ehci_sitd, ptr %33, i32 0, i32 8
  br label %43

43:                                               ; preds = %41, %39, %37
  %44 = phi ptr [ %42, %41 ], [ %40, %39 ], [ %38, %37 ]
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %78, label %29

47:                                               ; preds = %29
  %48 = inttoptr i32 %30 to ptr
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %73, label %50

50:                                               ; preds = %47
  %51 = load i16, ptr %3, align 4
  %52 = getelementptr inbounds %struct.ehci_qh, ptr %48, i32 0, i32 7, i32 5
  %53 = load i16, ptr %52, align 4
  %54 = icmp ugt i16 %51, %53
  br i1 %54, label %73, label %59

55:                                               ; preds = %59
  %56 = getelementptr inbounds %struct.ehci_qh, ptr %63, i32 0, i32 7, i32 5
  %57 = load i16, ptr %56, align 4
  %58 = icmp ugt i16 %51, %57
  br i1 %58, label %70, label %59

59:                                               ; preds = %55, %50
  %60 = phi ptr [ %63, %55 ], [ %48, %50 ]
  %61 = getelementptr inbounds %struct.ehci_qh, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = inttoptr i32 %62 to ptr
  %64 = icmp ne i32 %62, 0
  %65 = icmp ne ptr %63, %1
  %66 = and i1 %64, %65
  br i1 %66, label %55, label %67

67:                                               ; preds = %59
  %68 = load ptr, ptr %60, align 4
  %69 = inttoptr i32 %62 to ptr
  br label %73

70:                                               ; preds = %55
  %71 = load ptr, ptr %60, align 4
  %72 = inttoptr i32 %62 to ptr
  br label %73

73:                                               ; preds = %70, %67, %50, %47
  %74 = phi ptr [ %48, %47 ], [ %69, %67 ], [ %48, %50 ], [ %72, %70 ]
  %75 = phi ptr [ %32, %47 ], [ %61, %67 ], [ %32, %50 ], [ %61, %70 ]
  %76 = phi ptr [ %31, %47 ], [ %68, %67 ], [ %31, %50 ], [ %71, %70 ]
  %77 = icmp eq ptr %74, %1
  br i1 %77, label %97, label %84

78:                                               ; preds = %43
  %79 = inttoptr i32 %30 to ptr
  br label %80

80:                                               ; preds = %78, %20
  %81 = phi ptr [ %24, %20 ], [ %44, %78 ]
  %82 = phi ptr [ %26, %20 ], [ %79, %78 ]
  br i1 %19, label %97, label %83

83:                                               ; preds = %80
  store i32 0, ptr %17, align 4
  br label %90

84:                                               ; preds = %73
  %85 = ptrtoint ptr %74 to i32
  store i32 %85, ptr %17, align 4
  %86 = icmp eq ptr %74, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %76, align 4
  %89 = load ptr, ptr %1, align 4
  store i32 %88, ptr %89, align 32
  br label %90

90:                                               ; preds = %87, %84, %83
  %91 = phi ptr [ %81, %83 ], [ %75, %84 ], [ %75, %87 ]
  %92 = phi ptr [ %82, %83 ], [ %76, %84 ], [ %76, %87 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !28
  tail call void @arm_heavy_mb() #18
  store ptr %1, ptr %91, align 4
  %93 = load i32, ptr %18, align 4
  %94 = and i32 %93, -32
  %95 = or i32 %94, 2
  store i32 %95, ptr %92, align 4
  %96 = load i32, ptr %11, align 4
  br label %97

97:                                               ; preds = %90, %80, %73
  %98 = phi i32 [ %96, %90 ], [ %21, %73 ], [ %21, %80 ]
  %99 = add i32 %22, %7
  %100 = icmp ult i32 %99, %98
  br i1 %100, label %20, label %101

101:                                              ; preds = %97, %2
  %102 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 9
  store i8 1, ptr %102, align 4
  %103 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 10
  store i8 0, ptr %103, align 1
  %104 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 11
  store i8 0, ptr %104, align 2
  %105 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 12
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 0
  %108 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 9
  %109 = load i8, ptr %108, align 2
  br i1 %107, label %119, label %110

110:                                              ; preds = %101
  %111 = zext i8 %109 to i16
  %112 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 10
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i16
  %115 = add nuw nsw i16 %114, %111
  %116 = zext i8 %106 to i16
  %117 = udiv i16 %115, %116
  %118 = zext i16 %117 to i32
  br label %122

119:                                              ; preds = %101
  %120 = zext i8 %109 to i32
  %121 = shl nuw nsw i32 %120, 3
  br label %122

122:                                              ; preds = %119, %110
  %123 = phi i32 [ %118, %110 ], [ %121, %119 ]
  %124 = getelementptr i8, ptr %0, i32 -280
  %125 = load i32, ptr %124, align 8
  %126 = add i32 %125, %123
  store i32 %126, ptr %124, align 8
  %127 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 4
  %128 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 26
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  store ptr %127, ptr %130, align 4
  store ptr %129, ptr %127, align 4
  %131 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 4, i32 1
  store ptr %128, ptr %131, align 4
  store volatile ptr %127, ptr %128, align 4
  %132 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 35
  %133 = load i32, ptr %132, align 8
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 8
  tail call fastcc void @enable_periodic(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ehci_urb_done(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -1073741824
  %7 = icmp eq i32 %6, 1073741824
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -276
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  store i32 %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = icmp eq i32 %2, -115
  %17 = icmp eq i32 %2, -121
  %18 = or i1 %16, %17
  %19 = and i1 %18, %15
  %20 = select i1 %19, i32 0, i32 %2, !prof !17
  %21 = getelementptr i8, ptr %0, i32 -352
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %21, ptr noundef %1) #18
  tail call void @usb_hcd_giveback_urb(ptr noundef %21, ptr noundef %1, i32 noundef %20) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ehci_clear_tt_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -1073741824
  %13 = icmp eq i32 %12, 1073741824
  br i1 %13, label %35, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 13
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %0, i32 -152
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, 128
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %0, i32 -288
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %24, %19
  %30 = tail call i32 @usb_hub_clear_tt_buffer(ptr noundef %2) #18
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8, ptr %15, align 4
  %34 = or i8 %33, 2
  store i8 %34, ptr %15, align 4
  br label %35

35:                                               ; preds = %32, %29, %24, %14, %9, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hub_clear_tt_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_tt(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_tt, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.usb_tt, ptr %3, i32 0, i32 3
  br i1 %8, label %30, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %9, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 35
  %16 = load i32, ptr %15, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 4) #18
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %56, label %19, !prof !19

19:                                               ; preds = %13
  %20 = extractvalue { i32, i1 } %17, 0
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 2848) #20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %19
  store ptr %21, ptr %9, align 4
  br label %24

24:                                               ; preds = %23, %10
  %25 = phi ptr [ %11, %10 ], [ %21, %23 ]
  %26 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 9
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, -1
  %29 = getelementptr ptr, ptr %25, i32 %28
  br label %30

30:                                               ; preds = %24, %5
  %31 = phi ptr [ %25, %24 ], [ null, %5 ]
  %32 = phi ptr [ %29, %24 ], [ %9, %5 ]
  %33 = phi i32 [ %28, %24 ], [ 0, %5 ]
  %34 = phi i1 [ %12, %24 ], [ false, %5 ]
  %35 = load ptr, ptr %32, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 2848, i32 noundef 40) #21
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  br i1 %34, label %44, label %56

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.usb_tt, ptr %3, i32 0, i32 3
  store ptr null, ptr %45, align 4
  tail call void @kfree(ptr noundef %31) #18
  br label %56

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.ehci_tt, ptr %41, i32 0, i32 1
  %48 = getelementptr inbounds %struct.usb_hcd, ptr %39, i32 2, i32 20, i32 3, i32 2
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %39, i32 2, i32 20, i32 3, i32 3
  %50 = load ptr, ptr %49, align 4
  store ptr %47, ptr %49, align 4
  store ptr %48, ptr %47, align 8
  %51 = getelementptr inbounds %struct.ehci_tt, ptr %41, i32 0, i32 1, i32 1
  store ptr %50, ptr %51, align 4
  store volatile ptr %47, ptr %50, align 4
  %52 = getelementptr inbounds %struct.ehci_tt, ptr %41, i32 0, i32 2
  store volatile ptr %52, ptr %52, align 8
  %53 = getelementptr inbounds %struct.ehci_tt, ptr %41, i32 0, i32 2, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.ehci_tt, ptr %41, i32 0, i32 3
  store ptr %3, ptr %54, align 8
  %55 = getelementptr inbounds %struct.ehci_tt, ptr %41, i32 0, i32 4
  store i32 %33, ptr %55, align 4
  store ptr %41, ptr %32, align 4
  br label %56

56:                                               ; preds = %46, %44, %43, %30, %19, %13, %1
  %57 = phi ptr [ null, %1 ], [ %35, %30 ], [ %41, %46 ], [ inttoptr (i32 -12 to ptr), %19 ], [ inttoptr (i32 -12 to ptr), %44 ], [ inttoptr (i32 -12 to ptr), %43 ], [ inttoptr (i32 -12 to ptr), %13 ]
  ret ptr %57
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @compute_tt_budget(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #8 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %116, label %4

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(64) %0, i8 0, i32 64, i1 false)
  %5 = getelementptr inbounds %struct.ehci_tt, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %116, label %11

8:                                                ; preds = %111, %11
  %9 = load ptr, ptr %12, align 4
  %10 = icmp eq ptr %9, %5
  br i1 %10, label %116, label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %9, %8 ], [ %6, %4 ]
  %13 = getelementptr i8, ptr %12, i32 16
  %14 = load i8, ptr %13, align 4
  %15 = icmp ult i8 %14, 8
  br i1 %15, label %16, label %8

16:                                               ; preds = %11
  %17 = zext i8 %14 to i32
  %18 = shl nuw nsw i32 %17, 3
  %19 = getelementptr i8, ptr %12, i32 8
  %20 = getelementptr i8, ptr %12, i32 17
  %21 = getelementptr i8, ptr %12, i32 20
  br label %22

22:                                               ; preds = %111, %16
  %23 = phi i32 [ %18, %16 ], [ %114, %111 ]
  %24 = getelementptr i8, ptr %0, i32 %23
  %25 = load i8, ptr %20, align 1
  %26 = icmp ult i8 %25, 8
  br i1 %26, label %27, label %111

27:                                               ; preds = %22
  %28 = zext i8 %25 to i32
  %29 = load i16, ptr %19, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %24, i32 %28
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = add nuw nsw i32 %30, %33
  %35 = icmp ult i32 %34, 126
  br i1 %35, label %36, label %40

36:                                               ; preds = %103, %93, %83, %73, %63, %53, %43, %27
  %37 = phi ptr [ %31, %27 ], [ %45, %43 ], [ %55, %53 ], [ %65, %63 ], [ %75, %73 ], [ %85, %83 ], [ %95, %93 ], [ %105, %103 ]
  %38 = phi i32 [ %34, %27 ], [ %48, %43 ], [ %58, %53 ], [ %68, %63 ], [ %78, %73 ], [ %88, %83 ], [ %98, %93 ], [ %108, %103 ]
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %37, align 1
  br label %111

40:                                               ; preds = %27
  store i8 125, ptr %31, align 1
  %41 = add nuw nsw i32 %28, 1
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %111, label %43

43:                                               ; preds = %40
  %44 = add nsw i32 %34, -125
  %45 = getelementptr i8, ptr %24, i32 %41
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %44, %47
  %49 = icmp ult i32 %48, 126
  br i1 %49, label %36, label %50

50:                                               ; preds = %43
  store i8 125, ptr %45, align 1
  %51 = add nuw nsw i32 %28, 2
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %111, label %53

53:                                               ; preds = %50
  %54 = add nsw i32 %48, -125
  %55 = getelementptr i8, ptr %24, i32 %51
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = add nsw i32 %54, %57
  %59 = icmp ult i32 %58, 126
  br i1 %59, label %36, label %60

60:                                               ; preds = %53
  store i8 125, ptr %55, align 1
  %61 = add nuw nsw i32 %28, 3
  %62 = icmp eq i32 %61, 8
  br i1 %62, label %111, label %63

63:                                               ; preds = %60
  %64 = add nsw i32 %58, -125
  %65 = getelementptr i8, ptr %24, i32 %61
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = add i32 %64, %67
  %69 = icmp ult i32 %68, 126
  br i1 %69, label %36, label %70

70:                                               ; preds = %63
  store i8 125, ptr %65, align 1
  %71 = add nuw nsw i32 %28, 4
  %72 = icmp eq i32 %71, 8
  br i1 %72, label %111, label %73

73:                                               ; preds = %70
  %74 = add i32 %68, -125
  %75 = getelementptr i8, ptr %24, i32 %71
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add i32 %74, %77
  %79 = icmp ult i32 %78, 126
  br i1 %79, label %36, label %80

80:                                               ; preds = %73
  store i8 125, ptr %75, align 1
  %81 = add nuw nsw i32 %28, 5
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %111, label %83

83:                                               ; preds = %80
  %84 = add i32 %78, -125
  %85 = getelementptr i8, ptr %24, i32 %81
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = add i32 %84, %87
  %89 = icmp ult i32 %88, 126
  br i1 %89, label %36, label %90

90:                                               ; preds = %83
  store i8 125, ptr %85, align 1
  %91 = add nuw nsw i32 %28, 6
  %92 = icmp eq i32 %91, 8
  br i1 %92, label %111, label %93

93:                                               ; preds = %90
  %94 = add i32 %88, -125
  %95 = getelementptr i8, ptr %24, i32 %91
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = add i32 %94, %97
  %99 = icmp ult i32 %98, 126
  br i1 %99, label %36, label %100

100:                                              ; preds = %93
  store i8 125, ptr %95, align 1
  %101 = add nuw nsw i32 %28, 7
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %111, label %103

103:                                              ; preds = %100
  %104 = add i32 %98, -125
  %105 = getelementptr i8, ptr %24, i32 %101
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = add i32 %104, %107
  %109 = icmp ult i32 %108, 126
  br i1 %109, label %36, label %110

110:                                              ; preds = %103
  store i8 125, ptr %105, align 1
  br label %111

111:                                              ; preds = %110, %100, %90, %80, %70, %60, %50, %40, %36, %22
  %112 = load i8, ptr %21, align 4
  %113 = zext i8 %112 to i32
  %114 = add i32 %23, %113
  %115 = icmp ult i32 %114, 64
  br i1 %115, label %22, label %8

116:                                              ; preds = %8, %4, %2
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_intr_schedule(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef readonly %5) unnamed_addr #9 {
  %7 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7
  %8 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 10
  %9 = load i8, ptr %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = icmp ugt i32 %2, 5
  %12 = and i1 %11, %10
  br i1 %12, label %73, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 11
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 9
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 38
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %21, %19
  %23 = shl i32 %1, 3
  %24 = add i32 %23, %2
  %25 = icmp ult i32 %24, 64
  br i1 %25, label %29, label %35

26:                                               ; preds = %29
  %27 = add i32 %30, %16
  %28 = icmp ult i32 %27, 64
  br i1 %28, label %29, label %35

29:                                               ; preds = %26, %13
  %30 = phi i32 [ %27, %26 ], [ %24, %13 ]
  %31 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ult i32 %22, %33
  br i1 %34, label %73, label %26

35:                                               ; preds = %26, %13
  %36 = icmp eq i8 %9, 0
  br i1 %36, label %71, label %37

37:                                               ; preds = %35
  %38 = tail call fastcc i32 @tt_available(ptr noundef %0, ptr noundef %7, ptr noundef %5, i32 noundef %1, i32 noundef %2)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %73, label %40

40:                                               ; preds = %37
  %41 = add i32 %2, 2
  %42 = add i32 %2, 4
  %43 = icmp ult i32 %41, 8
  %44 = icmp ule i32 %41, %42
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = zext i8 %9 to i32
  %48 = sub i32 %21, %47
  br label %49

49:                                               ; preds = %63, %46
  %50 = phi i32 [ %41, %46 ], [ %65, %63 ]
  %51 = phi i32 [ 0, %46 ], [ %67, %63 ]
  %52 = add i32 %50, %23
  %53 = icmp ult i32 %52, 64
  br i1 %53, label %57, label %63

54:                                               ; preds = %57
  %55 = add i32 %58, %16
  %56 = icmp ult i32 %55, 64
  br i1 %56, label %57, label %63

57:                                               ; preds = %54, %49
  %58 = phi i32 [ %55, %54 ], [ %52, %49 ]
  %59 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ult i32 %48, %61
  br i1 %62, label %73, label %54

63:                                               ; preds = %54, %49
  %64 = shl nuw i32 1, %50
  %65 = add i32 %50, 1
  %66 = and i32 %64, 255
  %67 = or i32 %66, %51
  %68 = icmp ult i32 %65, 8
  %69 = icmp ule i32 %65, %42
  %70 = and i1 %68, %69
  br i1 %70, label %49, label %71

71:                                               ; preds = %63, %40, %35
  %72 = phi i32 [ 0, %35 ], [ 0, %40 ], [ %67, %63 ]
  store i32 %72, ptr %4, align 4
  br label %73

73:                                               ; preds = %71, %57, %37, %29, %6
  %74 = phi i32 [ -28, %6 ], [ -28, %37 ], [ 0, %71 ], [ -28, %57 ], [ -28, %29 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reserve_release_intr_bandwidth(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7
  %5 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 10
  %6 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 6
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 29999
  br i1 %8, label %154, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 3
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = load i8, ptr %5, align 1
  %14 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 9
  %15 = load i8, ptr %14, align 2
  %16 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 7
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 3
  %20 = icmp slt i32 %2, 0
  %21 = sub i8 0, %15
  %22 = sub i8 0, %13
  %23 = sub nsw i32 0, %12
  %24 = select i1 %20, i8 %21, i8 %15
  %25 = select i1 %20, i8 %22, i8 %13
  %26 = select i1 %20, i32 %23, i32 %12
  %27 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 8
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %19, %29
  %31 = icmp ult i32 %30, 64
  br i1 %31, label %32, label %45

32:                                               ; preds = %9
  %33 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 11
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i32 [ %30, %32 ], [ %41, %34 ]
  %36 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %35
  %37 = load i8, ptr %36, align 1
  %38 = add i8 %37, %24
  store i8 %38, ptr %36, align 1
  %39 = load i8, ptr %33, align 4
  %40 = zext i8 %39 to i32
  %41 = add nuw nsw i32 %35, %40
  %42 = icmp ult i32 %41, 64
  br i1 %42, label %34, label %43

43:                                               ; preds = %34
  %44 = load i8, ptr %5, align 1
  br label %45

45:                                               ; preds = %43, %9
  %46 = phi i8 [ %44, %43 ], [ %13, %9 ]
  %47 = icmp ne i8 %46, 0
  %48 = icmp ult i8 %17, 8
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %124

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 4
  %52 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 11
  br label %53

53:                                               ; preds = %119, %50
  %54 = phi i32 [ %19, %50 ], [ %122, %119 ]
  %55 = load i16, ptr %51, align 2
  %56 = zext i16 %55 to i32
  %57 = and i32 %56, 1024
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = add i32 %54, 2
  %61 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = add i8 %62, %25
  store i8 %63, ptr %61, align 1
  %64 = load i16, ptr %51, align 2
  %65 = zext i16 %64 to i32
  br label %66

66:                                               ; preds = %59, %53
  %67 = phi i32 [ %56, %53 ], [ %65, %59 ]
  %68 = and i32 %67, 2048
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = add i32 %54, 3
  %72 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = add i8 %73, %25
  store i8 %74, ptr %72, align 1
  %75 = load i16, ptr %51, align 2
  %76 = zext i16 %75 to i32
  br label %77

77:                                               ; preds = %70, %66
  %78 = phi i32 [ %76, %70 ], [ %67, %66 ]
  %79 = and i32 %78, 4096
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = add i32 %54, 4
  %83 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %82
  %84 = load i8, ptr %83, align 1
  %85 = add i8 %84, %25
  store i8 %85, ptr %83, align 1
  %86 = load i16, ptr %51, align 2
  %87 = zext i16 %86 to i32
  br label %88

88:                                               ; preds = %81, %77
  %89 = phi i32 [ %87, %81 ], [ %78, %77 ]
  %90 = and i32 %89, 8192
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %88
  %93 = add i32 %54, 5
  %94 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %93
  %95 = load i8, ptr %94, align 1
  %96 = add i8 %95, %25
  store i8 %96, ptr %94, align 1
  %97 = load i16, ptr %51, align 2
  %98 = zext i16 %97 to i32
  br label %99

99:                                               ; preds = %92, %88
  %100 = phi i32 [ %98, %92 ], [ %89, %88 ]
  %101 = and i32 %100, 16384
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = add i32 %54, 6
  %105 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %104
  %106 = load i8, ptr %105, align 1
  %107 = add i8 %106, %25
  store i8 %107, ptr %105, align 1
  %108 = load i16, ptr %51, align 2
  %109 = zext i16 %108 to i32
  br label %110

110:                                              ; preds = %103, %99
  %111 = phi i32 [ %109, %103 ], [ %100, %99 ]
  %112 = and i32 %111, 32768
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = add i32 %54, 7
  %116 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = add i8 %117, %25
  store i8 %118, ptr %116, align 1
  br label %119

119:                                              ; preds = %114, %110
  %120 = load i8, ptr %52, align 4
  %121 = zext i8 %120 to i32
  %122 = add i32 %54, %121
  %123 = icmp ult i32 %122, 64
  br i1 %123, label %53, label %124

124:                                              ; preds = %119, %45
  %125 = icmp eq i32 %26, 0
  br i1 %125, label %154, label %126

126:                                              ; preds = %124
  %127 = load ptr, ptr %4, align 4
  %128 = tail call fastcc ptr @find_tt(ptr noundef %127)
  %129 = icmp sgt i32 %2, 0
  %130 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 2
  br i1 %129, label %131, label %136

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.ehci_tt, ptr %128, i32 0, i32 2
  %133 = getelementptr inbounds %struct.ehci_tt, ptr %128, i32 0, i32 2, i32 1
  %134 = load ptr, ptr %133, align 4
  store ptr %130, ptr %133, align 4
  store ptr %132, ptr %130, align 4
  %135 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 2, i32 1
  store ptr %134, ptr %135, align 4
  store volatile ptr %130, ptr %134, align 4
  br label %141

136:                                              ; preds = %126
  %137 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 2, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %130, align 4
  %140 = getelementptr inbounds %struct.list_head, ptr %139, i32 0, i32 1
  store ptr %138, ptr %140, align 4
  store volatile ptr %139, ptr %138, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %130, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %137, align 4
  br label %141

141:                                              ; preds = %136, %131
  br i1 %48, label %142, label %154

142:                                              ; preds = %141
  %143 = trunc i32 %26 to i16
  %144 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 12
  br label %145

145:                                              ; preds = %145, %142
  %146 = phi i32 [ %18, %142 ], [ %152, %145 ]
  %147 = getelementptr [8 x i16], ptr %128, i32 0, i32 %146
  %148 = load i16, ptr %147, align 2
  %149 = add i16 %148, %143
  store i16 %149, ptr %147, align 2
  %150 = load i8, ptr %144, align 1
  %151 = zext i8 %150 to i32
  %152 = add nuw nsw i32 %146, %151
  %153 = icmp ult i32 %152, 8
  br i1 %153, label %145, label %154

154:                                              ; preds = %145, %141, %124, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @tt_available(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #13 {
  %6 = alloca [8 x i16], align 2
  %7 = getelementptr inbounds %struct.ehci_per_sched, ptr %1, i32 0, i32 12
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.ehci_per_sched, ptr %1, i32 0, i32 3
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = icmp eq i8 %8, 0
  %14 = icmp ugt i32 %4, 6
  %15 = or i1 %14, %13
  br i1 %15, label %180, label %16

16:                                               ; preds = %5
  %17 = add nsw i32 %9, -1
  %18 = and i32 %17, %3
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %20, label %180

20:                                               ; preds = %16
  %21 = getelementptr [8 x i8], ptr @max_tt_usecs, i32 0, i32 %4
  %22 = getelementptr [8 x i16], ptr %6, i32 0, i32 %4
  %23 = icmp ult i16 %11, 126
  %24 = getelementptr inbounds i16, ptr %6, i32 1
  %25 = getelementptr inbounds i16, ptr %6, i32 2
  %26 = getelementptr inbounds i16, ptr %6, i32 3
  %27 = getelementptr inbounds i16, ptr %6, i32 4
  %28 = getelementptr inbounds i16, ptr %6, i32 5
  %29 = getelementptr inbounds i16, ptr %6, i32 6
  %30 = getelementptr inbounds i16, ptr %6, i32 7
  %31 = icmp ugt i16 %11, 249
  %32 = icmp ult i32 %4, 7
  %33 = and i1 %31, %32
  %34 = add nuw nsw i32 %4, 1
  %35 = getelementptr [8 x i16], ptr %6, i32 0, i32 %34
  %36 = icmp ugt i16 %11, 374
  %37 = icmp ult i32 %4, 6
  %38 = and i1 %36, %37
  %39 = add nuw nsw i32 %4, 2
  %40 = getelementptr [8 x i16], ptr %6, i32 0, i32 %39
  %41 = icmp ugt i16 %11, 499
  %42 = icmp ult i32 %4, 5
  %43 = and i1 %41, %42
  %44 = add nuw nsw i32 %4, 3
  %45 = getelementptr [8 x i16], ptr %6, i32 0, i32 %44
  %46 = icmp ugt i16 %11, 624
  %47 = icmp ult i32 %4, 4
  %48 = and i1 %46, %47
  %49 = add nuw nsw i32 %4, 4
  %50 = getelementptr [8 x i16], ptr %6, i32 0, i32 %49
  %51 = icmp ugt i16 %11, 749
  %52 = icmp ult i32 %4, 3
  %53 = and i1 %51, %52
  %54 = add nuw nsw i32 %4, 5
  %55 = getelementptr [8 x i16], ptr %6, i32 0, i32 %54
  %56 = icmp ugt i16 %11, 874
  %57 = icmp ult i32 %4, 2
  %58 = and i1 %56, %57
  %59 = add nuw nsw i32 %4, 6
  %60 = getelementptr [8 x i16], ptr %6, i32 0, i32 %59
  %61 = icmp ugt i16 %11, 999
  %62 = icmp eq i32 %4, 0
  %63 = and i1 %61, %62
  %64 = add nuw nsw i32 %4, 7
  %65 = getelementptr [8 x i16], ptr %6, i32 0, i32 %64
  br label %69

66:                                               ; preds = %159
  %67 = add i32 %70, %9
  %68 = icmp ult i32 %67, 8
  br i1 %68, label %69, label %180

69:                                               ; preds = %66, %20
  %70 = phi i32 [ %18, %20 ], [ %67, %66 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %71 = getelementptr [8 x i16], ptr %2, i32 0, i32 %70
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = add nuw nsw i32 %73, %12
  %75 = icmp ugt i32 %74, 900
  br i1 %75, label %178, label %76

76:                                               ; preds = %69
  %77 = shl nuw nsw i32 %70, 3
  %78 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 63, i32 %77
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i16
  store i16 %80, ptr %6, align 2
  %81 = or i32 %77, 1
  %82 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 63, i32 %81
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i16
  store i16 %84, ptr %24, align 2
  %85 = or i32 %77, 2
  %86 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 63, i32 %85
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i16
  store i16 %88, ptr %25, align 2
  %89 = or i32 %77, 3
  %90 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 63, i32 %89
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i16
  store i16 %92, ptr %26, align 2
  %93 = or i32 %77, 4
  %94 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 63, i32 %93
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i16
  store i16 %96, ptr %27, align 2
  %97 = or i32 %77, 5
  %98 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 63, i32 %97
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i16
  store i16 %100, ptr %28, align 2
  %101 = or i32 %77, 6
  %102 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 63, i32 %101
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i16
  store i16 %104, ptr %29, align 2
  %105 = or i32 %77, 7
  %106 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 63, i32 %105
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i16
  store i16 %108, ptr %30, align 2
  %109 = load i8, ptr %21, align 1
  %110 = load i16, ptr %22, align 2
  %111 = zext i8 %109 to i16
  %112 = icmp ult i16 %110, %111
  br i1 %112, label %113, label %179

113:                                              ; preds = %76
  br i1 %23, label %144, label %114

114:                                              ; preds = %113
  %115 = icmp eq i16 %110, 0
  br i1 %115, label %116, label %177

116:                                              ; preds = %114
  br i1 %33, label %117, label %144

117:                                              ; preds = %116
  %118 = load i16, ptr %35, align 2
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %177

120:                                              ; preds = %117
  br i1 %38, label %121, label %144

121:                                              ; preds = %120
  %122 = load i16, ptr %40, align 2
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %177

124:                                              ; preds = %121
  br i1 %43, label %125, label %144

125:                                              ; preds = %124
  %126 = load i16, ptr %45, align 2
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %177

128:                                              ; preds = %125
  br i1 %48, label %129, label %144

129:                                              ; preds = %128
  %130 = load i16, ptr %50, align 2
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %177

132:                                              ; preds = %129
  br i1 %53, label %133, label %144

133:                                              ; preds = %132
  %134 = load i16, ptr %55, align 2
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %177

136:                                              ; preds = %133
  br i1 %58, label %137, label %144

137:                                              ; preds = %136
  %138 = load i16, ptr %60, align 2
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %177

140:                                              ; preds = %137
  br i1 %63, label %141, label %144

141:                                              ; preds = %140
  %142 = load i16, ptr %65, align 2
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %144, label %177

144:                                              ; preds = %141, %140, %136, %132, %128, %124, %120, %116, %113
  %145 = add i16 %110, %11
  store i16 %145, ptr %22, align 2
  %146 = load i16, ptr %6, align 2
  %147 = icmp ugt i16 %146, 125
  %148 = load i16, ptr %24, align 2
  br i1 %147, label %149, label %152

149:                                              ; preds = %144
  %150 = add i16 %146, -125
  %151 = add i16 %150, %148
  store i16 %151, ptr %24, align 2
  store i16 125, ptr %6, align 2
  br label %152

152:                                              ; preds = %149, %144
  %153 = phi i16 [ %151, %149 ], [ %148, %144 ]
  %154 = icmp ugt i16 %153, 125
  %155 = load i16, ptr %25, align 2
  br i1 %154, label %156, label %159

156:                                              ; preds = %152
  %157 = add i16 %153, -125
  %158 = add i16 %157, %155
  store i16 %158, ptr %25, align 2
  br label %159

159:                                              ; preds = %156, %152
  %160 = phi i16 [ %158, %156 ], [ %155, %152 ]
  %161 = load i16, ptr %26, align 2
  %162 = call i16 @llvm.usub.sat.i16(i16 %160, i16 125)
  %163 = add i16 %161, %162
  %164 = load i16, ptr %27, align 2
  %165 = call i16 @llvm.usub.sat.i16(i16 %163, i16 125)
  %166 = add i16 %164, %165
  %167 = load i16, ptr %28, align 2
  %168 = call i16 @llvm.usub.sat.i16(i16 %166, i16 125)
  %169 = add i16 %167, %168
  %170 = load i16, ptr %29, align 2
  %171 = call i16 @llvm.usub.sat.i16(i16 %169, i16 125)
  %172 = add i16 %170, %171
  %173 = load i16, ptr %30, align 2
  %174 = call i16 @llvm.usub.sat.i16(i16 %172, i16 30)
  %175 = sub i16 0, %174
  %176 = icmp eq i16 %173, %175
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br i1 %176, label %66, label %180

177:                                              ; preds = %141, %137, %133, %129, %125, %121, %117, %114
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %180

178:                                              ; preds = %69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %180

179:                                              ; preds = %76
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %180

180:                                              ; preds = %179, %178, %177, %159, %66, %16, %5
  %181 = phi i32 [ 0, %5 ], [ 0, %177 ], [ 0, %178 ], [ 0, %179 ], [ 1, %16 ], [ 0, %159 ], [ 1, %66 ]
  ret i32 %181
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @enable_periodic(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 37
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %43

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -513
  store i32 %9, ptr %7, align 4
  tail call void @ehci_poll_PSS(ptr noundef %0)
  %10 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %43

13:                                               ; preds = %6
  %14 = load i32, ptr %7, align 4
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 36
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 20
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 35
  %30 = load i32, ptr %29, align 8
  %31 = sub i32 0, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %26, %17
  %34 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 11
  %35 = tail call i64 @ktime_get() #18
  %36 = add i64 %35, 100000000
  store i64 %36, ptr %34, align 8
  %37 = load i32, ptr %7, align 4
  %38 = or i32 %37, 2048
  store i32 %38, ptr %7, align 4
  %39 = load i32, ptr %0, align 8
  %40 = icmp ugt i32 %39, 11
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  store i32 11, ptr %0, align 8
  %42 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %42, i64 noundef %36, i64 noundef 1000000, i32 noundef 0) #18
  br label %43

43:                                               ; preds = %41, %33, %26, %21, %13, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @start_iaa_cycle(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %6, !prof !19

5:                                                ; preds = %1
  tail call void @end_unlink_async(ptr noundef %0)
  br label %39

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 2
  br i1 %7, label %8, label %39

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 13
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !29
  tail call void @arm_heavy_mb() #18
  %14 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %15 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 16384
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load ptr, ptr %14, align 8
  %21 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 57
  %22 = load i32, ptr %21, align 8
  %23 = or i32 %22, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %23) #18, !srcloc !11
  br label %24

24:                                               ; preds = %19, %13
  %25 = load ptr, ptr %14, align 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %27 = load i8, ptr %9, align 4
  %28 = or i8 %27, 8
  store i8 %28, ptr %9, align 4
  %29 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 8
  %30 = tail call i64 @ktime_get() #18
  %31 = add i64 %30, 10000000
  store i64 %31, ptr %29, align 8
  %32 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 256
  store i32 %34, ptr %32, align 4
  %35 = load i32, ptr %0, align 8
  %36 = icmp ugt i32 %35, 8
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  store i32 8, ptr %0, align 8
  %38 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %38, i64 noundef %31, i64 noundef 1000000, i32 noundef 0) #18
  br label %39

39:                                               ; preds = %37, %24, %8, %6, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @qh_link_async(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -32
  %6 = or i32 %5, 2
  %7 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 13
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %68, !prof !17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 9
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 3
  br i1 %14, label %16, label %15, !prof !17

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 990, i32 noundef 9, ptr noundef null) #18
  br label %16

16:                                               ; preds = %15, %11
  tail call fastcc void @qh_refresh(ptr noundef %0, ptr noundef %1)
  %17 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 2
  %20 = getelementptr inbounds %struct.ehci_qh, ptr %18, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %19, align 4
  %22 = load ptr, ptr %18, align 4
  %23 = load i32, ptr %22, align 32
  %24 = load ptr, ptr %1, align 4
  store i32 %23, ptr %24, align 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !30
  tail call void @arm_heavy_mb() #18
  store ptr %1, ptr %20, align 4
  %25 = load ptr, ptr %18, align 4
  store i32 %6, ptr %25, align 32
  store i8 1, ptr %12, align 4
  %26 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 10
  store i8 0, ptr %26, align 1
  %27 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 11
  store i8 0, ptr %27, align 2
  %28 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 20
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -1025
  store i32 %35, ptr %33, align 4
  tail call void @ehci_poll_ASS(ptr noundef %0) #18
  %36 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %68

39:                                               ; preds = %32
  %40 = load i32, ptr %33, align 4
  %41 = and i32 %40, 2048
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 36
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 256
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %28, align 8
  %54 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 35
  %55 = load i32, ptr %54, align 8
  %56 = sub i32 0, %55
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %52, %43
  %59 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 11
  %60 = tail call i64 @ktime_get() #18
  %61 = add i64 %60, 100000000
  store i64 %61, ptr %59, align 8
  %62 = load i32, ptr %33, align 4
  %63 = or i32 %62, 2048
  store i32 %63, ptr %33, align 4
  %64 = load i32, ptr %0, align 8
  %65 = icmp ugt i32 %64, 11
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  store i32 11, ptr %0, align 8
  %67 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %67, i64 noundef %61, i64 noundef 1000000, i32 noundef 0) #18
  br label %68

68:                                               ; preds = %66, %58, %52, %47, %39, %32, %16, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @start_unlink_intr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 9
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %184

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 6
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 6, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %8, ptr %12, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %11, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 5
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 0
  %18 = select i1 %17, i16 1, i16 %16
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 6
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 23
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, %22
  br i1 %25, label %26, label %114

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 28
  %28 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 24
  %29 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %30 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 16
  br label %31

31:                                               ; preds = %110, %26
  %32 = phi i32 [ %24, %26 ], [ %111, %110 ]
  %33 = phi i32 [ %22, %26 ], [ %112, %110 ]
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr %union.ehci_shadow, ptr %34, i32 %33
  %36 = load ptr, ptr %28, align 8
  %37 = getelementptr i32, ptr %36, i32 %33
  %38 = load i32, ptr %35, align 4
  %39 = inttoptr i32 %38 to ptr
  %40 = icmp ne i32 %38, 0
  %41 = icmp ne ptr %39, %1
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %57, %31
  %44 = phi ptr [ %61, %57 ], [ %39, %31 ]
  %45 = phi ptr [ %59, %57 ], [ %37, %31 ]
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 6
  switch i32 %47, label %55 [
    i32 2, label %48
    i32 6, label %51
    i32 0, label %53
  ]

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.ehci_qh, ptr %44, i32 0, i32 2
  %50 = load ptr, ptr %44, align 4
  br label %57

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.ehci_fstn, ptr %44, i32 0, i32 3
  br label %57

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.ehci_itd, ptr %44, i32 0, i32 5
  br label %57

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.ehci_sitd, ptr %44, i32 0, i32 8
  br label %57

57:                                               ; preds = %55, %53, %51, %48
  %58 = phi ptr [ %49, %48 ], [ %56, %55 ], [ %52, %51 ], [ %54, %53 ]
  %59 = phi ptr [ %50, %48 ], [ %44, %55 ], [ %44, %51 ], [ %44, %53 ]
  %60 = load i32, ptr %58, align 4
  %61 = inttoptr i32 %60 to ptr
  %62 = icmp ne i32 %60, 0
  %63 = icmp ne ptr %61, %1
  %64 = and i1 %62, %63
  br i1 %64, label %43, label %65

65:                                               ; preds = %57
  %66 = inttoptr i32 %60 to ptr
  br label %67

67:                                               ; preds = %65, %31
  %68 = phi ptr [ %39, %31 ], [ %66, %65 ]
  %69 = phi ptr [ %35, %31 ], [ %58, %65 ]
  %70 = phi ptr [ %37, %31 ], [ %59, %65 ]
  %71 = phi i1 [ %40, %31 ], [ %62, %65 ]
  br i1 %71, label %72, label %110

72:                                               ; preds = %67
  %73 = load i32, ptr %70, align 4
  %74 = and i32 %73, 6
  switch i32 %74, label %81 [
    i32 2, label %75
    i32 6, label %77
    i32 0, label %79
  ]

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.ehci_qh, ptr %68, i32 0, i32 2
  br label %83

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.ehci_fstn, ptr %68, i32 0, i32 3
  br label %83

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.ehci_itd, ptr %68, i32 0, i32 5
  br label %83

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.ehci_sitd, ptr %68, i32 0, i32 8
  br label %83

83:                                               ; preds = %81, %79, %77, %75
  %84 = phi ptr [ %82, %81 ], [ %80, %79 ], [ %78, %77 ], [ %76, %75 ]
  %85 = load i32, ptr %84, align 4
  store i32 %85, ptr %69, align 4
  %86 = load i32, ptr %29, align 4
  %87 = and i32 %86, 1024
  %88 = icmp eq i32 %87, 0
  %89 = load i32, ptr %70, align 4
  %90 = and i32 %89, 6
  br i1 %88, label %99, label %91

91:                                               ; preds = %83
  %92 = icmp eq i32 %90, 2
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = load ptr, ptr %68, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi ptr [ %94, %93 ], [ %68, %91 ]
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %103, label %99

99:                                               ; preds = %95, %83
  %100 = icmp eq i32 %90, 2
  br i1 %100, label %101, label %106

101:                                              ; preds = %99
  %102 = load ptr, ptr %68, align 4
  br label %106

103:                                              ; preds = %95
  %104 = load ptr, ptr %30, align 8
  %105 = getelementptr inbounds %struct.ehci_qh, ptr %104, i32 0, i32 1
  br label %106

106:                                              ; preds = %103, %101, %99
  %107 = phi ptr [ %105, %103 ], [ %102, %101 ], [ %68, %99 ]
  %108 = load i32, ptr %107, align 4
  store i32 %108, ptr %70, align 4
  %109 = load i32, ptr %23, align 4
  br label %110

110:                                              ; preds = %106, %67
  %111 = phi i32 [ %32, %67 ], [ %109, %106 ]
  %112 = add i32 %33, %19
  %113 = icmp ult i32 %112, %111
  br i1 %113, label %31, label %114

114:                                              ; preds = %110, %14
  %115 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 12
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %116, 0
  %118 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 9
  %119 = load i8, ptr %118, align 2
  br i1 %117, label %129, label %120

120:                                              ; preds = %114
  %121 = zext i8 %119 to i16
  %122 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 7, i32 10
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i16
  %125 = add nuw nsw i16 %124, %121
  %126 = zext i8 %116 to i16
  %127 = udiv i16 %125, %126
  %128 = zext i16 %127 to i32
  br label %132

129:                                              ; preds = %114
  %130 = zext i8 %119 to i32
  %131 = shl nuw nsw i32 %130, 3
  br label %132

132:                                              ; preds = %129, %120
  %133 = phi i32 [ %128, %120 ], [ %131, %129 ]
  %134 = getelementptr i8, ptr %0, i32 -280
  %135 = load i32, ptr %134, align 8
  %136 = sub i32 %135, %133
  store i32 %136, ptr %134, align 8
  store i8 2, ptr %3, align 4
  %137 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 2
  store ptr null, ptr %137, align 4
  %138 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 14
  %139 = load ptr, ptr %138, align 8
  %140 = icmp eq ptr %139, %1
  br i1 %140, label %141, label %145

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 4
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %143, i32 -20
  store ptr %144, ptr %138, align 8
  br label %145

145:                                              ; preds = %141, %132
  %146 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 4
  %147 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 4, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = load ptr, ptr %146, align 4
  %150 = getelementptr inbounds %struct.list_head, ptr %149, i32 0, i32 1
  store ptr %148, ptr %150, align 4
  store volatile ptr %149, ptr %148, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %146, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %147, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !31
  tail call void @arm_heavy_mb() #18
  %151 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 32
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 8
  store i32 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 30
  %155 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 30, i32 1
  %156 = load ptr, ptr %155, align 4
  store ptr %7, ptr %155, align 4
  store ptr %154, ptr %7, align 4
  %157 = getelementptr inbounds %struct.ehci_qh, ptr %1, i32 0, i32 6, i32 1
  store ptr %156, ptr %157, align 4
  store volatile ptr %7, ptr %156, align 4
  %158 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 13
  %159 = load i8, ptr %158, align 4
  %160 = and i8 %159, 4
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %184

162:                                              ; preds = %145
  %163 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  %164 = load i32, ptr %163, align 8
  %165 = icmp ult i32 %164, 2
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  tail call void @ehci_handle_intr_unlinks(ptr noundef %0)
  br label %184

167:                                              ; preds = %162
  %168 = load ptr, ptr %154, align 8
  %169 = icmp eq ptr %168, %7
  br i1 %169, label %170, label %184

170:                                              ; preds = %167
  %171 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 2, i32 3
  %172 = tail call i64 @ktime_get() #18
  %173 = add i64 %172, 1125000
  store i64 %173, ptr %171, align 8
  %174 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 1
  %175 = load i32, ptr %174, align 4
  %176 = or i32 %175, 8
  store i32 %176, ptr %174, align 4
  %177 = load i32, ptr %0, align 8
  %178 = icmp ugt i32 %177, 3
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  store i32 3, ptr %0, align 8
  %180 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 3
  tail call void @hrtimer_start_range_ns(ptr noundef %180, i64 noundef %173, i64 noundef 1000000, i32 noundef 0) #18
  br label %181

181:                                              ; preds = %179, %170
  %182 = load i32, ptr %151, align 4
  %183 = add i32 %182, 1
  store i32 %183, ptr %151, align 4
  br label %184

184:                                              ; preds = %181, %167, %166, %145, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_amd_quirk_pll_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ehci_qh_alloc(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 0, ptr %4, align 4, !annotation !32
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2848, i32 noundef 84) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 50
  %10 = load ptr, ptr %9, align 4
  %11 = or i32 %1, 256
  %12 = call ptr @dma_pool_alloc(ptr noundef %10, i32 noundef %11, ptr noundef nonnull %4) #18
  store ptr %12, ptr %6, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %4, align 4
  %16 = getelementptr inbounds %struct.ehci_qh, ptr %6, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ehci_qh, ptr %6, i32 0, i32 3
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ehci_qh, ptr %6, i32 0, i32 3, i32 1
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ehci_qh, ptr %6, i32 0, i32 6
  store volatile ptr %19, ptr %19, align 8
  %20 = getelementptr inbounds %struct.ehci_qh, ptr %6, i32 0, i32 6, i32 1
  store ptr %19, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 0, ptr %3, align 4, !annotation !32
  %21 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 51
  %22 = load ptr, ptr %21, align 8
  %23 = call ptr @dma_pool_alloc(ptr noundef %22, i32 noundef %1, ptr noundef nonnull %3) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %14
  %26 = load i32, ptr %3, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(96) %23, i8 0, i32 96, i1 false) #18
  %27 = getelementptr inbounds %struct.ehci_qtd, ptr %23, i32 0, i32 5
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ehci_qtd, ptr %23, i32 0, i32 2
  store i32 64, ptr %28, align 8
  store i32 1, ptr %23, align 32
  %29 = getelementptr inbounds %struct.ehci_qtd, ptr %23, i32 0, i32 1
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ehci_qtd, ptr %23, i32 0, i32 6
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ehci_qtd, ptr %23, i32 0, i32 6, i32 1
  store ptr %30, ptr %31, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %32 = getelementptr inbounds %struct.ehci_qh, ptr %6, i32 0, i32 5
  store ptr %23, ptr %32, align 4
  br label %39

33:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %34 = getelementptr inbounds %struct.ehci_qh, ptr %6, i32 0, i32 5
  store ptr null, ptr %34, align 4
  %35 = load ptr, ptr %9, align 4
  %36 = load ptr, ptr %6, align 8
  %37 = load i32, ptr %16, align 4
  call void @dma_pool_free(ptr noundef %35, ptr noundef %36, i32 noundef %37) #18
  br label %38

38:                                               ; preds = %33, %8
  call void @kfree(ptr noundef nonnull %6) #18
  br label %39

39:                                               ; preds = %38, %25, %2
  %40 = phi ptr [ null, %38 ], [ %6, %25 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  tail call void @_raw_spin_lock(ptr noundef %3) #18
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ehci_regs, ptr %5, i32 0, i32 1
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 10
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  br label %10

10:                                               ; preds = %31, %1
  %11 = phi i32 [ 0, %1 ], [ %15, %31 ]
  %12 = phi i32 [ %7, %1 ], [ %34, %31 ]
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %132, label %14

14:                                               ; preds = %10
  %15 = or i32 %12, %11
  %16 = and i32 %12, 63
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %8, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24, !prof !19

21:                                               ; preds = %18, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %22 = load i16, ptr %3, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  br label %162

24:                                               ; preds = %18
  %25 = load i32, ptr %9, align 4
  %26 = and i32 %25, 16384
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %struct.ehci_regs, ptr %29, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %16) #18, !srcloc !11
  br label %31

31:                                               ; preds = %28, %24
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.ehci_regs, ptr %32, i32 0, i32 1
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %35 = and i32 %34, 55
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %10

37:                                               ; preds = %31
  %38 = load ptr, ptr %4, align 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %40 = and i32 %15, 3
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %15, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, -257
  store i32 %47, ptr %45, align 4
  %48 = load i32, ptr %2, align 8
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 9, ptr %2, align 8
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i32, ptr %9, align 4
  %53 = and i32 %52, 18432
  %54 = icmp eq i32 %53, 2048
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load ptr, ptr %4, align 8
  %57 = getelementptr inbounds %struct.ehci_regs, ptr %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 13
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ehci_qh, ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %61) #18, !srcloc !11
  br label %62

62:                                               ; preds = %55, %51
  %63 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 11
  %64 = load i8, ptr %63, align 4
  %65 = and i8 %64, -9
  store i8 %65, ptr %63, align 4
  tail call void @end_unlink_async(ptr noundef %2) #18
  br label %66

66:                                               ; preds = %62, %37
  %67 = and i32 %15, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %126, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 15
  %73 = load i32, ptr %8, align 8
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  tail call void @usb_hcd_resume_root_hub(ptr noundef %0) #18
  br label %76

76:                                               ; preds = %75, %69
  %77 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 16
  %78 = load i8, ptr %77, align 4
  %79 = and i8 %78, 4
  %80 = icmp eq i8 %79, 0
  %81 = lshr i32 %15, 16
  %82 = select i1 %80, i32 -1, i32 %81
  %83 = icmp eq i32 %72, 0
  br i1 %83, label %126, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10, i32 0, i32 3
  %86 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 11
  %87 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 5
  br label %88

88:                                               ; preds = %124, %84
  %89 = phi i32 [ %72, %84 ], [ %90, %124 ]
  %90 = add nsw i32 %89, -1
  %91 = shl nuw i32 1, %90
  %92 = and i32 %91, %82
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %124, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %4, align 8
  %96 = getelementptr inbounds %struct.ehci_regs, ptr %95, i32 0, i32 11
  %97 = getelementptr [15 x i32], ptr %96, i32 0, i32 %90
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %99 = and i32 %98, 8192
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %94
  %102 = lshr i32 %90, 5
  %103 = getelementptr i32, ptr %85, i32 %102
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %90, 31
  %106 = shl nuw i32 1, %105
  %107 = and i32 %104, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %101
  %110 = and i32 %98, 192
  %111 = icmp eq i32 %110, 128
  %112 = and i32 %98, 4
  %113 = icmp eq i32 %112, 0
  %114 = or i1 %111, %113
  br i1 %114, label %124, label %115

115:                                              ; preds = %109
  %116 = getelementptr %struct.ehci_hcd, ptr %2, i32 0, i32 43, i32 %90
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load volatile i32, ptr @jiffies, align 64
  %121 = add i32 %120, 4
  store i32 %121, ptr %116, align 4
  tail call void @_set_bit(i32 noundef %90, ptr noundef %86) #18
  tail call void @usb_hcd_start_port_resume(ptr noundef %0, i32 noundef %90) #18
  %122 = load i32, ptr %116, align 4
  %123 = tail call i32 @mod_timer(ptr noundef %87, i32 noundef %122) #18
  br label %124

124:                                              ; preds = %119, %115, %109, %101, %94, %88
  %125 = icmp eq i32 %90, 0
  br i1 %125, label %126, label %88

126:                                              ; preds = %124, %76, %66
  %127 = phi i32 [ 0, %66 ], [ %15, %76 ], [ %15, %124 ]
  %128 = and i32 %15, 16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %154, label %130, !prof !17

130:                                              ; preds = %126
  %131 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.14) #19
  br label %132

132:                                              ; preds = %130, %10
  %133 = phi i32 [ %127, %130 ], [ 0, %10 ]
  tail call void @usb_hc_died(ptr noundef %0) #18
  %134 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 11
  %135 = load i8, ptr %134, align 4
  %136 = or i8 %135, 32
  store i8 %136, ptr %134, align 4
  store i32 3, ptr %8, align 8
  %137 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 4
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, -50
  store i32 %139, ptr %137, align 8
  %140 = load i32, ptr %9, align 4
  %141 = and i32 %140, 16384
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %132
  %144 = load ptr, ptr %4, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %139) #18, !srcloc !11
  %145 = load i32, ptr %9, align 4
  br label %146

146:                                              ; preds = %143, %132
  %147 = phi i32 [ %140, %132 ], [ %145, %143 ]
  %148 = and i32 %147, 16384
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load ptr, ptr %4, align 8
  %152 = getelementptr inbounds %struct.ehci_regs, ptr %151, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 0) #18, !srcloc !11
  br label %153

153:                                              ; preds = %150, %146
  tail call void @ehci_handle_controller_death(ptr noundef %2)
  br label %156

154:                                              ; preds = %126
  br i1 %41, label %156, label %155

155:                                              ; preds = %154
  tail call void @ehci_work(ptr noundef %2)
  br label %156

156:                                              ; preds = %155, %154, %153
  %157 = phi i32 [ %133, %153 ], [ %127, %155 ], [ %127, %154 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %158 = load i16, ptr %3, align 4
  %159 = add i16 %158, 1
  store i16 %159, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  %160 = icmp eq i32 %157, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  tail call void @usb_hcd_poll_rh_status(ptr noundef %0) #18
  br label %162

162:                                              ; preds = %161, %156, %21
  %163 = phi i32 [ 0, %21 ], [ 1, %161 ], [ 1, %156 ]
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_run(ptr nocapture noundef %0) #0 {
  %2 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 14
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 32
  store i16 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16384
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.ehci_regs, ptr %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3, i32 1
  %14 = load i32, ptr %13, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #18, !srcloc !11
  %15 = load i32, ptr %6, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i32 [ %7, %1 ], [ %15, %10 ]
  %18 = and i32 %17, 16384
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds %struct.ehci_regs, ptr %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ehci_qh, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %26) #18, !srcloc !11
  br label %27

27:                                               ; preds = %20, %16
  %28 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ehci_caps, ptr %29, i32 0, i32 2
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr %6, align 4
  %36 = and i32 %35, 16384
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load ptr, ptr %5, align 8
  %40 = getelementptr inbounds %struct.ehci_regs, ptr %39, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #18, !srcloc !11
  br label %41

41:                                               ; preds = %38, %34, %27
  %42 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, -244
  %45 = or i32 %44, 1
  store i32 %45, ptr %42, align 8
  %46 = load i32, ptr %6, align 4
  %47 = and i32 %46, 16384
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %45) #18, !srcloc !11
  br label %51

51:                                               ; preds = %49, %41
  tail call void @down_write(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #18
  %52 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 10
  store i32 2, ptr %52, align 8
  %53 = load i32, ptr %6, align 4
  %54 = and i32 %53, 16384
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load ptr, ptr %5, align 8
  %58 = getelementptr inbounds %struct.ehci_regs, ptr %57, i32 0, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 1) #18, !srcloc !11
  br label %59

59:                                               ; preds = %56, %51
  %60 = load ptr, ptr %5, align 8
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  tail call void @msleep(i32 noundef 5) #18
  %62 = load i32, ptr %6, align 4
  %63 = and i32 %62, 65536
  %64 = icmp eq i32 %63, 0
  %65 = load ptr, ptr %5, align 8
  br i1 %64, label %77, label %66

66:                                               ; preds = %73, %59
  %67 = phi i32 [ %75, %73 ], [ 100000, %59 ]
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %90, label %70

70:                                               ; preds = %66
  %71 = and i32 %68, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748) #18
  %75 = add nsw i32 %67, -1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %90, label %66

77:                                               ; preds = %59
  %78 = getelementptr inbounds %struct.ehci_regs, ptr %65, i32 0, i32 1
  br label %79

79:                                               ; preds = %86, %77
  %80 = phi i32 [ 100000, %77 ], [ %88, %86 ]
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %90, label %83

83:                                               ; preds = %79
  %84 = and i32 %81, 4096
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748) #18
  %88 = add nsw i32 %80, -1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %79

90:                                               ; preds = %86, %79, %73, %66
  %91 = phi i32 [ -19, %79 ], [ -110, %86 ], [ -19, %66 ], [ -110, %73 ]
  tail call void @up_write(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #18
  %92 = load ptr, ptr %0, align 8
  %93 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 17
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = lshr i32 %95, 4
  %97 = and i32 %95, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.17, i32 noundef %96, i32 noundef %97, i32 noundef %91) #19
  br label %137

98:                                               ; preds = %83, %70
  tail call void @up_write(ptr noundef nonnull @ehci_cf_port_reset_rwsem) #18
  %99 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #18
  %100 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 3
  store i64 %99, ptr %100, align 8
  %101 = load ptr, ptr %28, align 4
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %103 = lshr i32 %102, 16
  %104 = load ptr, ptr %0, align 8
  %105 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 17
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = lshr i32 %107, 4
  %109 = and i32 %107, 15
  %110 = lshr i32 %102, 24
  %111 = and i32 %103, 255
  %112 = load i8, ptr @ignore_oc, align 1, !range !34
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %98
  %115 = load i32, ptr %6, align 4
  %116 = and i32 %115, 32768
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, ptr @.str.20, ptr @.str.19
  br label %119

119:                                              ; preds = %114, %98
  %120 = phi ptr [ @.str.19, %98 ], [ %118, %114 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str.18, i32 noundef %108, i32 noundef %109, i32 noundef %110, i32 noundef %111, ptr noundef nonnull %120) #19
  %121 = load i32, ptr %6, align 4
  %122 = and i32 %121, 16384
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load ptr, ptr %5, align 8
  %126 = getelementptr inbounds %struct.ehci_regs, ptr %125, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 55) #18, !srcloc !11
  br label %127

127:                                              ; preds = %124, %119
  %128 = load ptr, ptr %0, align 8
  %129 = load i16, ptr %2, align 8
  %130 = and i16 %129, 128
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = tail call i32 @device_create_file(ptr noundef %128, ptr noundef nonnull @dev_attr_companion) #18
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132, %127
  %136 = tail call i32 @device_create_file(ptr noundef %128, ptr noundef nonnull @dev_attr_uframe_periodic_max) #18
  br label %137

137:                                              ; preds = %135, %132, %90
  %138 = phi i32 [ %91, %90 ], [ 0, %132 ], [ 0, %135 ]
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #18
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  store i32 0, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %5 = load i16, ptr %3, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  tail call fastcc void @ehci_quiesce(ptr noundef %2)
  tail call fastcc void @ehci_silence_controller(ptr noundef %2)
  %7 = tail call i32 @ehci_reset(ptr noundef %2)
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 4, i32 4
  %9 = tail call i32 @hrtimer_cancel(ptr noundef %8) #18
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 14
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 128
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  tail call void @device_remove_file(ptr noundef %10, ptr noundef nonnull @dev_attr_companion) #18
  br label %16

16:                                               ; preds = %15, %1
  tail call void @device_remove_file(ptr noundef %10, ptr noundef nonnull @dev_attr_uframe_periodic_max) #18
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #18
  tail call void @end_free_itds(ptr noundef %2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %17 = load i16, ptr %3, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  tail call fastcc void @ehci_mem_cleanup(ptr noundef %2)
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void @usb_amd_dev_put() #18
  br label %24

24:                                               ; preds = %23, %16
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.ehci_regs, ptr %26, i32 0, i32 1
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 17
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #18
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 11
  %9 = load i8, ptr %8, align 4
  %10 = or i8 %9, 32
  store i8 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 10
  store i32 3, ptr %11, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  store i32 0, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %13 = load i16, ptr %7, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  tail call fastcc void @ehci_silence_controller(ptr noundef %6)
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 4, i32 4
  %16 = tail call i32 @hrtimer_cancel(ptr noundef %15) #18
  br label %17

17:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_get_frame(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 4096
  %5 = icmp ne i32 %4, 0
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ehci_regs, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #18
  tail call void asm sideeffect "dsb ", "~{memory}"() #18
  %10 = and i32 %9, 7
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %5, i1 %11, i1 false
  br i1 %12, label %13, label %17, !prof !21

13:                                               ; preds = %1
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.ehci_regs, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %17

17:                                               ; preds = %13, %1
  %18 = phi i32 [ %16, %13 ], [ %9, %1 ]
  %19 = lshr i32 %18, 3
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 2, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = urem i32 %19, %21
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_urb_enqueue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head, align 8
  %7 = alloca %struct.list_head, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store volatile ptr %7, ptr %7, align 8
  %9 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 30
  switch i32 %12, label %17 [
    i32 2, label %13
    i32 1, label %49
    i32 0, label %123
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 16384
  br i1 %16, label %766, label %17

17:                                               ; preds = %13, %3
  %18 = call fastcc ptr @qh_urb_transaction(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %2)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %766, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %22, i32 0, i32 2
  %24 = load i8, ptr %23, align 2
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  %27 = call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #18
  %28 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 12
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32, !prof !19

32:                                               ; preds = %20
  %33 = call i32 @usb_hcd_link_urb_to_ep(ptr noundef %0, ptr noundef %1) #18
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47, !prof !17

35:                                               ; preds = %32
  %36 = load ptr, ptr %21, align 4
  %37 = getelementptr inbounds %struct.usb_host_endpoint, ptr %36, i32 0, i32 5
  %38 = call fastcc ptr @qh_append_tds(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %25, ptr noundef %37) #18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !19

40:                                               ; preds = %35
  call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #18
  br label %47

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ehci_qh, ptr %38, i32 0, i32 9
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 3
  br i1 %44, label %45, label %46, !prof !17

45:                                               ; preds = %41
  call fastcc void @qh_link_async(ptr noundef %8, ptr noundef nonnull %38) #18
  br label %46

46:                                               ; preds = %45, %41
  call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #18
  br label %766

47:                                               ; preds = %40, %32, %20
  %48 = phi i32 [ -108, %20 ], [ -12, %40 ], [ %33, %32 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #18
  call fastcc void @qtd_list_free(ptr noundef %8, ptr noundef nonnull %7) #18
  br label %766

49:                                               ; preds = %3
  %50 = call fastcc ptr @qh_urb_transaction(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %2)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %766, label %52

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store i64 0, ptr %6, align 8, !annotation !32
  %53 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %54, i32 0, i32 2
  %56 = load i8, ptr %55, align 2
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  %59 = call i32 @_raw_spin_lock_irqsave(ptr noundef %58) #18
  %60 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 12
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %104, label %64, !prof !19

64:                                               ; preds = %52
  %65 = call i32 @usb_hcd_link_urb_to_ep(ptr noundef %0, ptr noundef %1) #18
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %104, !prof !17

67:                                               ; preds = %64
  store volatile ptr %6, ptr %6, align 8
  %68 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %68, align 4
  %69 = load ptr, ptr %53, align 4
  %70 = getelementptr inbounds %struct.usb_host_endpoint, ptr %69, i32 0, i32 5
  %71 = call fastcc ptr @qh_append_tds(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %57, ptr noundef %70) #18
  %72 = icmp eq ptr %71, null
  br i1 %72, label %98, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.ehci_qh, ptr %71, i32 0, i32 9
  %75 = load i8, ptr %74, align 4
  %76 = icmp eq i8 %75, 3
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = call fastcc i32 @qh_schedule(ptr noundef %8, ptr noundef nonnull %71) #18
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %77, %73
  %81 = load ptr, ptr %53, align 4
  %82 = getelementptr inbounds %struct.usb_host_endpoint, ptr %81, i32 0, i32 5
  %83 = call fastcc ptr @qh_append_tds(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %57, ptr noundef %82) #18
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86, !prof !19

85:                                               ; preds = %80
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/ehci-sched.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 943, 0\0A.popsection", ""() #18, !srcloc !35
  unreachable

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.ehci_qh, ptr %83, i32 0, i32 9
  %88 = load i8, ptr %87, align 4
  switch i8 %88, label %100 [
    i8 3, label %89
    i8 1, label %90
  ]

89:                                               ; preds = %86
  call fastcc void @qh_refresh(ptr noundef %8, ptr noundef nonnull %83) #18
  call fastcc void @qh_link_periodic(ptr noundef %8, ptr noundef nonnull %83) #18
  br label %100

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.ehci_qh, ptr %83, i32 0, i32 6
  %92 = load volatile ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, %91
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ehci_qh, ptr %83, i32 0, i32 6, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  store ptr %96, ptr %97, align 4
  store volatile ptr %92, ptr %96, align 4
  store volatile ptr %91, ptr %91, align 4
  store ptr %91, ptr %95, align 4
  br label %100

98:                                               ; preds = %77, %67
  %99 = phi i32 [ -12, %67 ], [ %78, %77 ]
  call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #18
  br label %104

100:                                              ; preds = %94, %90, %89, %86
  %101 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 0, i32 14
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr %101, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %59) #18
  br label %121

104:                                              ; preds = %98, %64, %52
  %105 = phi i32 [ -108, %52 ], [ %99, %98 ], [ %65, %64 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %59) #18
  %106 = load ptr, ptr %7, align 8
  %107 = icmp eq ptr %106, %7
  br i1 %107, label %121, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 13
  br label %110

110:                                              ; preds = %110, %108
  %111 = phi ptr [ %106, %108 ], [ %112, %110 ]
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr i8, ptr %111, i32 -56
  %114 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  store ptr %115, ptr %116, align 4
  store volatile ptr %112, ptr %115, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %111, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %114, align 4
  %117 = load ptr, ptr %109, align 8
  %118 = getelementptr i8, ptr %111, i32 -4
  %119 = load i32, ptr %118, align 4
  call void @dma_pool_free(ptr noundef %117, ptr noundef %113, i32 noundef %119) #18
  %120 = icmp eq ptr %112, %7
  br i1 %120, label %121, label %110

121:                                              ; preds = %110, %104, %100
  %122 = phi i32 [ 0, %100 ], [ %105, %104 ], [ %105, %110 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %766

123:                                              ; preds = %3
  %124 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.usb_device, ptr %125, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 3
  %129 = lshr i32 %11, 15
  %130 = and i32 %129, 15
  %131 = and i32 %11, 128
  %132 = icmp eq i32 %131, 0
  %133 = getelementptr %struct.usb_device, ptr %125, i32 0, i32 21, i32 %130
  %134 = getelementptr %struct.usb_device, ptr %125, i32 0, i32 22, i32 %130
  %135 = select i1 %132, ptr %134, ptr %133
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  %138 = call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #18
  %139 = getelementptr inbounds %struct.usb_host_endpoint, ptr %136, i32 0, i32 5
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %128, label %142, label %477

142:                                              ; preds = %123
  br i1 %141, label %143, label %147, !prof !19

143:                                              ; preds = %142
  %144 = call fastcc ptr @iso_stream_alloc() #18
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146, !prof !19

146:                                              ; preds = %143
  store ptr %144, ptr %139, align 4
  call fastcc void @iso_stream_init(ptr noundef %8, ptr noundef nonnull %144, ptr noundef %1) #18
  br label %151

147:                                              ; preds = %142
  %148 = load ptr, ptr %140, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150, !prof !17

150:                                              ; preds = %147, %143
  call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %138) #18
  br label %766

151:                                              ; preds = %147, %146
  %152 = phi ptr [ %144, %146 ], [ %140, %147 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %138) #18
  %153 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 25
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.ehci_iso_stream, ptr %152, i32 0, i32 8
  %156 = load i16, ptr %155, align 4
  %157 = zext i16 %156 to i32
  %158 = icmp eq i32 %154, %157
  br i1 %158, label %159, label %766, !prof !17

159:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !32
  %160 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %161 = or i32 %2, 256
  %162 = load i32, ptr %160, align 4
  %163 = mul i32 %162, 24
  %164 = add i32 %163, 16
  %165 = call noalias align 64 ptr @__kmalloc(i32 noundef %164, i32 noundef %161) #20
  %166 = icmp eq ptr %165, null
  br i1 %166, label %278, label %167, !prof !19

167:                                              ; preds = %159
  store volatile ptr %165, ptr %165, align 64
  %168 = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  store ptr %165, ptr %168, align 4
  %169 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %170 = load i32, ptr %169, align 4
  %171 = load i32, ptr %160, align 4
  %172 = load i16, ptr %155, align 4
  %173 = zext i16 %172 to i32
  %174 = mul i32 %171, %173
  %175 = getelementptr inbounds %struct.ehci_iso_sched, ptr %165, i32 0, i32 1
  store i32 %174, ptr %175, align 8
  %176 = icmp eq i32 %171, 0
  br i1 %176, label %213, label %177

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %179 = load i32, ptr %160, align 4
  br label %180

180:                                              ; preds = %211, %177
  %181 = phi i32 [ %171, %177 ], [ %179, %211 ]
  %182 = phi i32 [ 0, %177 ], [ %191, %211 ]
  %183 = getelementptr %struct.ehci_iso_sched, ptr %165, i32 0, i32 3, i32 %182
  %184 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %182
  %185 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %182, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = load i32, ptr %184, align 4
  %188 = add i32 %187, %170
  %189 = and i32 %188, 4095
  %190 = or i32 %189, -2147483648
  %191 = add nuw i32 %182, 1
  %192 = icmp eq i32 %191, %181
  br i1 %192, label %193, label %199, !prof !19

193:                                              ; preds = %180
  %194 = load i32, ptr %178, align 4
  %195 = and i32 %194, 128
  %196 = icmp eq i32 %195, 0
  %197 = or i32 %189, -2147450880
  %198 = select i1 %196, i32 %197, i32 %190
  br label %199

199:                                              ; preds = %193, %180
  %200 = phi i32 [ %190, %180 ], [ %198, %193 ]
  %201 = shl i32 %186, 16
  %202 = or i32 %200, %201
  %203 = getelementptr %struct.ehci_iso_sched, ptr %165, i32 0, i32 3, i32 %182, i32 1
  store i32 %202, ptr %203, align 8
  %204 = and i32 %188, -4096
  %205 = zext i32 %204 to i64
  store i64 %205, ptr %183, align 8
  %206 = add i32 %188, %186
  %207 = and i32 %206, -4096
  %208 = icmp eq i32 %204, %207
  br i1 %208, label %211, label %209, !prof !17

209:                                              ; preds = %199
  %210 = getelementptr %struct.ehci_iso_sched, ptr %165, i32 0, i32 3, i32 %182, i32 2
  store i8 1, ptr %210, align 4
  br label %211

211:                                              ; preds = %209, %199
  %212 = icmp ult i32 %191, %179
  br i1 %212, label %180, label %213

213:                                              ; preds = %211, %167
  %214 = phi i32 [ 0, %167 ], [ %179, %211 ]
  %215 = load i32, ptr %153, align 4
  %216 = icmp slt i32 %215, 8
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = load i32, ptr %175, align 8
  %219 = add i32 %218, 7
  %220 = lshr i32 %219, 3
  %221 = add nuw nsw i32 %220, 1
  %222 = call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #18
  br label %226

223:                                              ; preds = %213
  %224 = call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #18
  %225 = icmp eq i32 %214, 0
  br i1 %225, label %279, label %226

226:                                              ; preds = %223, %217
  %227 = phi i32 [ %222, %217 ], [ %224, %223 ]
  %228 = phi i32 [ %221, %217 ], [ %214, %223 ]
  %229 = getelementptr inbounds %struct.ehci_iso_stream, ptr %152, i32 0, i32 4
  %230 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 21, i32 3, i32 1
  %231 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 14
  br label %232

232:                                              ; preds = %266, %226
  %233 = phi i32 [ 0, %226 ], [ %276, %266 ]
  %234 = phi i32 [ %227, %226 ], [ %268, %266 ]
  %235 = load volatile ptr, ptr %229, align 4
  %236 = icmp eq ptr %235, %229
  br i1 %236, label %250, label %237, !prof !19

237:                                              ; preds = %232
  %238 = getelementptr i8, ptr %235, i32 8
  %239 = load i32, ptr %238, align 4
  %240 = load i32, ptr %230, align 8
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %250, label %242

242:                                              ; preds = %237
  %243 = getelementptr i8, ptr %235, i32 -108
  %244 = getelementptr inbounds %struct.list_head, ptr %235, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = load ptr, ptr %235, align 4
  %247 = getelementptr inbounds %struct.list_head, ptr %246, i32 0, i32 1
  store ptr %245, ptr %247, align 4
  store volatile ptr %246, ptr %245, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %235, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %244, align 4
  %248 = getelementptr i8, ptr %235, i32 -16
  %249 = load i32, ptr %248, align 4
  store i32 %249, ptr %5, align 4
  br label %266

250:                                              ; preds = %237, %232
  call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %234) #18
  %251 = load ptr, ptr %231, align 4
  %252 = call ptr @dma_pool_alloc(ptr noundef %251, i32 noundef %2, ptr noundef nonnull %5) #18
  %253 = call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #18
  %254 = icmp eq ptr %252, null
  br i1 %254, label %257, label %255

255:                                              ; preds = %250
  %256 = load i32, ptr %5, align 4
  br label %266

257:                                              ; preds = %250
  %258 = load volatile ptr, ptr %165, align 64
  %259 = icmp eq ptr %258, %165
  br i1 %259, label %265, label %260

260:                                              ; preds = %257
  %261 = load ptr, ptr %229, align 4
  %262 = load ptr, ptr %168, align 4
  %263 = getelementptr inbounds %struct.list_head, ptr %258, i32 0, i32 1
  store ptr %229, ptr %263, align 4
  store ptr %258, ptr %229, align 4
  store ptr %261, ptr %262, align 4
  %264 = getelementptr inbounds %struct.list_head, ptr %261, i32 0, i32 1
  store ptr %262, ptr %264, align 4
  br label %265

265:                                              ; preds = %260, %257
  call void @kfree(ptr noundef nonnull %165) #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %253) #18
  br label %278

266:                                              ; preds = %255, %242
  %267 = phi i32 [ %256, %255 ], [ %249, %242 ]
  %268 = phi i32 [ %253, %255 ], [ %234, %242 ]
  %269 = phi ptr [ %252, %255 ], [ %243, %242 ]
  call void @llvm.memset.p0.i32(ptr noundef align 32 dereferenceable(160) %269, i8 0, i32 160, i1 false) #18
  %270 = getelementptr inbounds %struct.ehci_itd, ptr %269, i32 0, i32 4
  store i32 %267, ptr %270, align 4
  %271 = getelementptr inbounds %struct.ehci_itd, ptr %269, i32 0, i32 9
  store i32 29999, ptr %271, align 4
  %272 = getelementptr inbounds %struct.ehci_itd, ptr %269, i32 0, i32 8
  %273 = load ptr, ptr %165, align 64
  %274 = getelementptr inbounds %struct.list_head, ptr %273, i32 0, i32 1
  store ptr %272, ptr %274, align 4
  store ptr %273, ptr %272, align 4
  %275 = getelementptr inbounds %struct.ehci_itd, ptr %269, i32 0, i32 8, i32 1
  store ptr %165, ptr %275, align 4
  store volatile ptr %272, ptr %165, align 64
  %276 = add nuw i32 %233, 1
  %277 = icmp eq i32 %276, %228
  br i1 %277, label %279, label %232

278:                                              ; preds = %265, %159
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %766

279:                                              ; preds = %266, %223
  %280 = phi i32 [ %224, %223 ], [ %268, %266 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %280) #18
  %281 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  store ptr %165, ptr %281, align 4
  %282 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 26
  store i32 0, ptr %282, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  %283 = call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #18
  %284 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 12
  %285 = load i32, ptr %284, align 8
  %286 = and i32 %285, 1
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %475, label %288, !prof !19

288:                                              ; preds = %279
  %289 = call i32 @usb_hcd_link_urb_to_ep(ptr noundef %0, ptr noundef %1) #18
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %475, !prof !17

291:                                              ; preds = %288
  %292 = call fastcc i32 @iso_stream_schedule(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %152) #18
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %471, !prof !17

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 2, i32 1
  %296 = load i32, ptr %295, align 4
  %297 = shl i32 %296, 3
  %298 = load ptr, ptr %281, align 4
  %299 = getelementptr inbounds %struct.ehci_iso_stream, ptr %152, i32 0, i32 6
  %300 = load i32, ptr %299, align 4
  %301 = add i32 %297, -1
  %302 = and i32 %300, %301
  %303 = getelementptr inbounds %struct.ehci_iso_stream, ptr %152, i32 0, i32 3
  %304 = load volatile ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, %303
  br i1 %305, label %306, label %312, !prof !19

306:                                              ; preds = %294
  %307 = getelementptr inbounds %struct.ehci_iso_stream, ptr %152, i32 0, i32 10
  %308 = load i32, ptr %307, align 4
  %309 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 0, i32 13
  %310 = load i32, ptr %309, align 8
  %311 = add i32 %310, %308
  store i32 %311, ptr %309, align 8
  br label %312

312:                                              ; preds = %306, %294
  %313 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 0, i32 15
  %314 = load i32, ptr %313, align 8
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %318 = load i32, ptr %317, align 4
  %319 = and i32 %318, 512
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %323, label %321

321:                                              ; preds = %316
  call void @usb_amd_quirk_pll_disable() #18
  %322 = load i32, ptr %313, align 8
  br label %323

323:                                              ; preds = %321, %316, %312
  %324 = phi i32 [ 0, %316 ], [ %322, %321 ], [ %314, %312 ]
  %325 = add i32 %324, 1
  store i32 %325, ptr %313, align 8
  %326 = getelementptr inbounds %struct.ehci_iso_sched, ptr %298, i32 0, i32 2
  %327 = load i32, ptr %326, align 4
  %328 = load i32, ptr %160, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %453

330:                                              ; preds = %323
  %331 = getelementptr inbounds %struct.ehci_iso_stream, ptr %152, i32 0, i32 3, i32 1
  %332 = getelementptr inbounds %struct.ehci_iso_stream, ptr %152, i32 0, i32 11
  %333 = getelementptr inbounds %struct.ehci_iso_stream, ptr %152, i32 0, i32 12
  %334 = getelementptr inbounds %struct.ehci_iso_stream, ptr %152, i32 0, i32 13
  %335 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3, i32 5
  %336 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3
  br label %337

337:                                              ; preds = %449, %330
  %338 = phi i32 [ %327, %330 ], [ %404, %449 ]
  %339 = phi i32 [ %302, %330 ], [ %403, %449 ]
  %340 = phi ptr [ null, %330 ], [ %451, %449 ]
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %359

342:                                              ; preds = %337
  %343 = load ptr, ptr %298, align 8
  %344 = getelementptr i8, ptr %343, i32 -108
  %345 = getelementptr inbounds %struct.list_head, ptr %343, i32 0, i32 1
  %346 = load ptr, ptr %345, align 4
  %347 = load ptr, ptr %343, align 4
  %348 = getelementptr inbounds %struct.list_head, ptr %347, i32 0, i32 1
  store ptr %346, ptr %348, align 4
  store volatile ptr %347, ptr %346, align 4
  %349 = load ptr, ptr %331, align 4
  store ptr %343, ptr %331, align 4
  store ptr %303, ptr %343, align 4
  store ptr %349, ptr %345, align 4
  store volatile ptr %343, ptr %349, align 4
  %350 = getelementptr i8, ptr %343, i32 -4
  store ptr %152, ptr %350, align 8
  %351 = getelementptr i8, ptr %343, i32 -8
  store ptr %1, ptr %351, align 4
  store i32 1, ptr %344, align 32
  %352 = load i32, ptr %332, align 4
  %353 = getelementptr i8, ptr %343, i32 -72
  store i32 %352, ptr %353, align 4
  %354 = load i32, ptr %333, align 4
  %355 = getelementptr i8, ptr %343, i32 -68
  store i32 %354, ptr %355, align 4
  %356 = load i32, ptr %334, align 4
  %357 = getelementptr i8, ptr %343, i32 -64
  store i32 %356, ptr %357, align 4
  %358 = getelementptr i8, ptr %343, i32 16
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %358, i8 -1, i32 32, i1 false) #18
  br label %359

359:                                              ; preds = %342, %337
  %360 = phi ptr [ %344, %342 ], [ %340, %337 ]
  %361 = lshr i32 %339, 3
  %362 = and i32 %339, 7
  %363 = getelementptr %struct.ehci_iso_sched, ptr %298, i32 0, i32 3, i32 %338
  %364 = getelementptr inbounds %struct.ehci_itd, ptr %360, i32 0, i32 10
  %365 = load i32, ptr %364, align 8
  %366 = getelementptr %struct.ehci_itd, ptr %360, i32 0, i32 11, i32 %362
  store i32 %338, ptr %366, align 4
  %367 = getelementptr %struct.ehci_iso_sched, ptr %298, i32 0, i32 3, i32 %338, i32 1
  %368 = load i32, ptr %367, align 8
  %369 = getelementptr %struct.ehci_itd, ptr %360, i32 0, i32 1, i32 %362
  %370 = shl i32 %365, 12
  %371 = or i32 %368, %370
  store i32 %371, ptr %369, align 4
  %372 = load i64, ptr %363, align 8
  %373 = trunc i64 %372 to i32
  %374 = getelementptr %struct.ehci_itd, ptr %360, i32 0, i32 2, i32 %365
  %375 = load i32, ptr %374, align 4
  %376 = or i32 %375, %373
  store i32 %376, ptr %374, align 4
  %377 = load i64, ptr %363, align 8
  %378 = lshr i64 %377, 32
  %379 = trunc i64 %378 to i32
  %380 = getelementptr %struct.ehci_itd, ptr %360, i32 0, i32 3, i32 %365
  %381 = load i32, ptr %380, align 4
  %382 = or i32 %381, %379
  store i32 %382, ptr %380, align 4
  %383 = getelementptr %struct.ehci_iso_sched, ptr %298, i32 0, i32 3, i32 %338, i32 2
  %384 = load i8, ptr %383, align 4
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %399, label %386, !prof !17

386:                                              ; preds = %359
  %387 = load i64, ptr %363, align 8
  %388 = add i64 %387, 4096
  %389 = add i32 %365, 1
  store i32 %389, ptr %364, align 8
  %390 = trunc i64 %388 to i32
  %391 = getelementptr %struct.ehci_itd, ptr %360, i32 0, i32 2, i32 %389
  %392 = load i32, ptr %391, align 4
  %393 = or i32 %392, %390
  store i32 %393, ptr %391, align 4
  %394 = lshr i64 %388, 32
  %395 = trunc i64 %394 to i32
  %396 = getelementptr %struct.ehci_itd, ptr %360, i32 0, i32 3, i32 %389
  %397 = load i32, ptr %396, align 4
  %398 = or i32 %397, %395
  store i32 %398, ptr %396, align 4
  br label %399

399:                                              ; preds = %386, %359
  %400 = load i16, ptr %155, align 4
  %401 = zext i16 %400 to i32
  %402 = add i32 %339, %401
  %403 = and i32 %402, %301
  %404 = add nsw i32 %338, 1
  %405 = lshr i32 %403, 3
  %406 = icmp eq i32 %405, %361
  br i1 %406, label %407, label %410

407:                                              ; preds = %399
  %408 = load i32, ptr %160, align 4
  %409 = icmp eq i32 %404, %408
  br i1 %409, label %410, label %449

410:                                              ; preds = %407, %399
  %411 = load i32, ptr %295, align 4
  %412 = add i32 %411, 536870911
  %413 = and i32 %412, %361
  %414 = load ptr, ptr %335, align 4
  %415 = getelementptr %union.ehci_shadow, ptr %414, i32 %413
  %416 = load ptr, ptr %336, align 8
  %417 = getelementptr i32, ptr %416, i32 %413
  %418 = load i32, ptr %415, align 4
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %439, label %420

420:                                              ; preds = %433, %410
  %421 = phi i32 [ %435, %433 ], [ %418, %410 ]
  %422 = phi ptr [ %424, %433 ], [ %417, %410 ]
  %423 = phi ptr [ %434, %433 ], [ %415, %410 ]
  %424 = inttoptr i32 %421 to ptr
  %425 = load i32, ptr %422, align 4
  %426 = and i32 %425, 6
  switch i32 %426, label %431 [
    i32 2, label %439
    i32 0, label %429
    i32 6, label %427
  ]

427:                                              ; preds = %420
  %428 = getelementptr inbounds %struct.ehci_fstn, ptr %424, i32 0, i32 3
  br label %433

429:                                              ; preds = %420
  %430 = getelementptr inbounds %struct.ehci_itd, ptr %424, i32 0, i32 5
  br label %433

431:                                              ; preds = %420
  %432 = getelementptr inbounds %struct.ehci_sitd, ptr %424, i32 0, i32 8
  br label %433

433:                                              ; preds = %431, %429, %427
  %434 = phi ptr [ %432, %431 ], [ %430, %429 ], [ %428, %427 ]
  %435 = load i32, ptr %434, align 4
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %420

437:                                              ; preds = %433
  %438 = inttoptr i32 %421 to ptr
  br label %439

439:                                              ; preds = %437, %420, %410
  %440 = phi ptr [ %415, %410 ], [ %434, %437 ], [ %423, %420 ]
  %441 = phi ptr [ %417, %410 ], [ %438, %437 ], [ %422, %420 ]
  %442 = phi i32 [ 0, %410 ], [ 0, %437 ], [ %421, %420 ]
  %443 = getelementptr inbounds %struct.ehci_itd, ptr %360, i32 0, i32 5
  store i32 %442, ptr %443, align 32
  %444 = load i32, ptr %441, align 4
  store i32 %444, ptr %360, align 32
  store ptr %360, ptr %440, align 4
  %445 = getelementptr inbounds %struct.ehci_itd, ptr %360, i32 0, i32 9
  store i32 %413, ptr %445, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !36
  call void @arm_heavy_mb() #18
  %446 = getelementptr inbounds %struct.ehci_itd, ptr %360, i32 0, i32 4
  %447 = load i32, ptr %446, align 4
  store i32 %447, ptr %441, align 4
  %448 = load i32, ptr %160, align 4
  br label %449

449:                                              ; preds = %439, %407
  %450 = phi i32 [ %448, %439 ], [ %408, %407 ]
  %451 = phi ptr [ null, %439 ], [ %360, %407 ]
  %452 = icmp slt i32 %404, %450
  br i1 %452, label %337, label %453

453:                                              ; preds = %449, %323
  %454 = phi i32 [ %302, %323 ], [ %403, %449 ]
  store i32 %454, ptr %299, align 4
  %455 = icmp eq ptr %298, null
  br i1 %455, label %467, label %456

456:                                              ; preds = %453
  %457 = load volatile ptr, ptr %298, align 4
  %458 = icmp eq ptr %457, %298
  br i1 %458, label %466, label %459

459:                                              ; preds = %456
  %460 = getelementptr inbounds %struct.ehci_iso_stream, ptr %152, i32 0, i32 4
  %461 = load ptr, ptr %460, align 4
  %462 = getelementptr inbounds %struct.list_head, ptr %298, i32 0, i32 1
  %463 = load ptr, ptr %462, align 4
  %464 = getelementptr inbounds %struct.list_head, ptr %457, i32 0, i32 1
  store ptr %460, ptr %464, align 4
  store ptr %457, ptr %460, align 4
  store ptr %461, ptr %463, align 4
  %465 = getelementptr inbounds %struct.list_head, ptr %461, i32 0, i32 1
  store ptr %463, ptr %465, align 4
  br label %466

466:                                              ; preds = %459, %456
  call void @kfree(ptr noundef nonnull %298) #18
  br label %467

467:                                              ; preds = %466, %453
  store ptr %152, ptr %281, align 4
  %468 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 21, i32 3, i32 4
  %469 = load i32, ptr %468, align 4
  %470 = add i32 %469, 1
  store i32 %470, ptr %468, align 4
  call fastcc void @enable_periodic(ptr noundef %8) #18
  br label %475

471:                                              ; preds = %291
  %472 = icmp sgt i32 %292, 0
  br i1 %472, label %473, label %474

473:                                              ; preds = %471
  call fastcc void @ehci_urb_done(ptr noundef %8, ptr noundef %1, i32 noundef 0) #18
  br label %475

474:                                              ; preds = %471
  call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #18
  br label %475

475:                                              ; preds = %474, %473, %467, %288, %279
  %476 = phi i32 [ %289, %288 ], [ 0, %467 ], [ 0, %473 ], [ %292, %474 ], [ -108, %279 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %283) #18
  br label %766

477:                                              ; preds = %123
  br i1 %141, label %478, label %482, !prof !19

478:                                              ; preds = %477
  %479 = call fastcc ptr @iso_stream_alloc() #18
  %480 = icmp eq ptr %479, null
  br i1 %480, label %485, label %481, !prof !19

481:                                              ; preds = %478
  store ptr %479, ptr %139, align 4
  call fastcc void @iso_stream_init(ptr noundef %8, ptr noundef nonnull %479, ptr noundef %1) #18
  br label %486

482:                                              ; preds = %477
  %483 = load ptr, ptr %140, align 4
  %484 = icmp eq ptr %483, null
  br i1 %484, label %486, label %485, !prof !17

485:                                              ; preds = %482, %478
  call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %138) #18
  br label %766

486:                                              ; preds = %482, %481
  %487 = phi ptr [ %479, %481 ], [ %140, %482 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %138) #18
  %488 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 25
  %489 = load i32, ptr %488, align 4
  %490 = getelementptr inbounds %struct.ehci_iso_stream, ptr %487, i32 0, i32 5, i32 5
  %491 = load i16, ptr %490, align 4
  %492 = zext i16 %491 to i32
  %493 = icmp eq i32 %489, %492
  br i1 %493, label %494, label %766

494:                                              ; preds = %486
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 0, ptr %4, align 4, !annotation !32
  %495 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %496 = or i32 %2, 256
  %497 = load i32, ptr %495, align 4
  %498 = mul i32 %497, 24
  %499 = add i32 %498, 16
  %500 = call noalias align 64 ptr @__kmalloc(i32 noundef %499, i32 noundef %496) #20
  %501 = icmp eq ptr %500, null
  br i1 %501, label %502, label %503, !prof !19

502:                                              ; preds = %494
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %766

503:                                              ; preds = %494
  store volatile ptr %500, ptr %500, align 64
  %504 = getelementptr inbounds %struct.list_head, ptr %500, i32 0, i32 1
  store ptr %500, ptr %504, align 4
  %505 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %506 = load i32, ptr %505, align 4
  %507 = load i32, ptr %495, align 4
  %508 = load i16, ptr %490, align 4
  %509 = zext i16 %508 to i32
  %510 = mul i32 %507, %509
  %511 = getelementptr inbounds %struct.ehci_iso_sched, ptr %500, i32 0, i32 1
  store i32 %510, ptr %511, align 8
  %512 = icmp eq i32 %507, 0
  br i1 %512, label %562, label %513

513:                                              ; preds = %503
  %514 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %515 = getelementptr inbounds %struct.ehci_iso_stream, ptr %487, i32 0, i32 1
  %516 = load i32, ptr %495, align 4
  br label %517

517:                                              ; preds = %560, %513
  %518 = phi i32 [ %507, %513 ], [ %516, %560 ]
  %519 = phi i32 [ 0, %513 ], [ %527, %560 ]
  %520 = getelementptr %struct.ehci_iso_sched, ptr %500, i32 0, i32 3, i32 %519
  %521 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %519
  %522 = getelementptr %struct.urb, ptr %1, i32 0, i32 29, i32 %519, i32 1
  %523 = load i32, ptr %522, align 4
  %524 = and i32 %523, 1023
  %525 = load i32, ptr %521, align 4
  %526 = add i32 %525, %506
  %527 = add nuw i32 %519, 1
  %528 = icmp eq i32 %527, %518
  br i1 %528, label %529, label %534

529:                                              ; preds = %517
  %530 = load i32, ptr %514, align 4
  %531 = and i32 %530, 128
  %532 = icmp eq i32 %531, 0
  %533 = select i1 %532, i32 -2147483520, i32 128
  br label %534

534:                                              ; preds = %529, %517
  %535 = phi i32 [ 128, %517 ], [ %533, %529 ]
  %536 = shl nuw nsw i32 %524, 16
  %537 = or i32 %535, %536
  %538 = getelementptr %struct.ehci_iso_sched, ptr %500, i32 0, i32 3, i32 %519, i32 1
  store i32 %537, ptr %538, align 8
  %539 = zext i32 %526 to i64
  store i64 %539, ptr %520, align 8
  %540 = add i32 %526, %524
  %541 = and i32 %540, -4096
  %542 = getelementptr %struct.ehci_iso_sched, ptr %500, i32 0, i32 3, i32 %519, i32 3
  store i32 %541, ptr %542, align 8
  %543 = zext i32 %541 to i64
  %544 = and i64 %539, 4294963200
  %545 = icmp eq i64 %544, %543
  br i1 %545, label %548, label %546

546:                                              ; preds = %534
  %547 = getelementptr %struct.ehci_iso_sched, ptr %500, i32 0, i32 3, i32 %519, i32 2
  store i8 1, ptr %547, align 4
  br label %548

548:                                              ; preds = %546, %534
  %549 = load i8, ptr %515, align 4
  %550 = icmp sgt i8 %549, -1
  br i1 %550, label %551, label %560

551:                                              ; preds = %548
  %552 = trunc i32 %524 to i16
  %553 = add nuw nsw i16 %552, 187
  %554 = udiv i16 %553, 188
  %555 = zext i16 %554 to i32
  %556 = icmp ugt i32 %524, 188
  %557 = or i32 %555, 8
  %558 = select i1 %556, i32 %557, i32 %555
  %559 = or i32 %558, %541
  store i32 %559, ptr %542, align 8
  br label %560

560:                                              ; preds = %551, %548
  %561 = icmp ult i32 %527, %516
  br i1 %561, label %517, label %562

562:                                              ; preds = %560, %503
  %563 = call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #18
  %564 = load i32, ptr %495, align 4
  %565 = icmp sgt i32 %564, 0
  br i1 %565, label %566, label %617

566:                                              ; preds = %562
  %567 = getelementptr inbounds %struct.ehci_iso_stream, ptr %487, i32 0, i32 4
  %568 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 21, i32 3, i32 1
  %569 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 15
  br label %570

570:                                              ; preds = %604, %566
  %571 = phi i32 [ 0, %566 ], [ %614, %604 ]
  %572 = phi i32 [ %563, %566 ], [ %606, %604 ]
  %573 = load volatile ptr, ptr %567, align 4
  %574 = icmp eq ptr %573, %567
  br i1 %574, label %588, label %575, !prof !19

575:                                              ; preds = %570
  %576 = getelementptr i8, ptr %573, i32 8
  %577 = load i32, ptr %576, align 4
  %578 = load i32, ptr %568, align 8
  %579 = icmp eq i32 %577, %578
  br i1 %579, label %588, label %580

580:                                              ; preds = %575
  %581 = getelementptr i8, ptr %573, i32 -52
  %582 = getelementptr inbounds %struct.list_head, ptr %573, i32 0, i32 1
  %583 = load ptr, ptr %582, align 4
  %584 = load ptr, ptr %573, align 4
  %585 = getelementptr inbounds %struct.list_head, ptr %584, i32 0, i32 1
  store ptr %583, ptr %585, align 4
  store volatile ptr %584, ptr %583, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %573, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %582, align 4
  %586 = getelementptr i8, ptr %573, i32 -16
  %587 = load i32, ptr %586, align 4
  store i32 %587, ptr %4, align 4
  br label %604

588:                                              ; preds = %575, %570
  call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %572) #18
  %589 = load ptr, ptr %569, align 8
  %590 = call ptr @dma_pool_alloc(ptr noundef %589, i32 noundef %2, ptr noundef nonnull %4) #18
  %591 = call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #18
  %592 = icmp eq ptr %590, null
  br i1 %592, label %595, label %593

593:                                              ; preds = %588
  %594 = load i32, ptr %4, align 4
  br label %604

595:                                              ; preds = %588
  %596 = load volatile ptr, ptr %500, align 64
  %597 = icmp eq ptr %596, %500
  br i1 %597, label %603, label %598

598:                                              ; preds = %595
  %599 = load ptr, ptr %567, align 4
  %600 = load ptr, ptr %504, align 4
  %601 = getelementptr inbounds %struct.list_head, ptr %596, i32 0, i32 1
  store ptr %567, ptr %601, align 4
  store ptr %596, ptr %567, align 4
  store ptr %599, ptr %600, align 4
  %602 = getelementptr inbounds %struct.list_head, ptr %599, i32 0, i32 1
  store ptr %600, ptr %602, align 4
  br label %603

603:                                              ; preds = %598, %595
  call void @kfree(ptr noundef nonnull %500) #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %591) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %766

604:                                              ; preds = %593, %580
  %605 = phi i32 [ %594, %593 ], [ %587, %580 ]
  %606 = phi i32 [ %591, %593 ], [ %572, %580 ]
  %607 = phi ptr [ %590, %593 ], [ %581, %580 ]
  call void @llvm.memset.p0.i32(ptr noundef align 32 dereferenceable(96) %607, i8 0, i32 96, i1 false) #18
  %608 = getelementptr inbounds %struct.ehci_sitd, ptr %607, i32 0, i32 7
  store i32 %605, ptr %608, align 4
  %609 = getelementptr inbounds %struct.ehci_sitd, ptr %607, i32 0, i32 12
  store i32 29999, ptr %609, align 4
  %610 = getelementptr inbounds %struct.ehci_sitd, ptr %607, i32 0, i32 11
  %611 = load ptr, ptr %500, align 64
  %612 = getelementptr inbounds %struct.list_head, ptr %611, i32 0, i32 1
  store ptr %610, ptr %612, align 4
  store ptr %611, ptr %610, align 4
  %613 = getelementptr inbounds %struct.ehci_sitd, ptr %607, i32 0, i32 11, i32 1
  store ptr %500, ptr %613, align 4
  store volatile ptr %610, ptr %500, align 64
  %614 = add nuw nsw i32 %571, 1
  %615 = load i32, ptr %495, align 4
  %616 = icmp slt i32 %614, %615
  br i1 %616, label %570, label %617

617:                                              ; preds = %604, %562
  %618 = phi i32 [ %563, %562 ], [ %606, %604 ]
  %619 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  store ptr %500, ptr %619, align 4
  %620 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 26
  store i32 0, ptr %620, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %618) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  %621 = call i32 @_raw_spin_lock_irqsave(ptr noundef %137) #18
  %622 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 12
  %623 = load i32, ptr %622, align 8
  %624 = and i32 %623, 1
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %764, label %626, !prof !19

626:                                              ; preds = %617
  %627 = call i32 @usb_hcd_link_urb_to_ep(ptr noundef %0, ptr noundef %1) #18
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %764, !prof !17

629:                                              ; preds = %626
  %630 = call fastcc i32 @iso_stream_schedule(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %487) #18
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %760, !prof !17

632:                                              ; preds = %629
  %633 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 2, i32 1
  %634 = load i32, ptr %633, align 4
  %635 = shl i32 %634, 3
  %636 = load ptr, ptr %619, align 4
  %637 = getelementptr inbounds %struct.ehci_iso_stream, ptr %487, i32 0, i32 6
  %638 = load i32, ptr %637, align 4
  %639 = getelementptr inbounds %struct.ehci_iso_stream, ptr %487, i32 0, i32 3
  %640 = load volatile ptr, ptr %639, align 4
  %641 = icmp eq ptr %640, %639
  br i1 %641, label %642, label %648

642:                                              ; preds = %632
  %643 = getelementptr inbounds %struct.ehci_iso_stream, ptr %487, i32 0, i32 10
  %644 = load i32, ptr %643, align 4
  %645 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 0, i32 13
  %646 = load i32, ptr %645, align 8
  %647 = add i32 %646, %644
  store i32 %647, ptr %645, align 8
  br label %648

648:                                              ; preds = %642, %632
  %649 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 0, i32 15
  %650 = load i32, ptr %649, align 8
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %652, label %659

652:                                              ; preds = %648
  %653 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %654 = load i32, ptr %653, align 4
  %655 = and i32 %654, 512
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %659, label %657

657:                                              ; preds = %652
  call void @usb_amd_quirk_pll_disable() #18
  %658 = load i32, ptr %649, align 8
  br label %659

659:                                              ; preds = %657, %652, %648
  %660 = phi i32 [ 0, %652 ], [ %658, %657 ], [ %650, %648 ]
  %661 = add i32 %660, 1
  store i32 %661, ptr %649, align 8
  %662 = getelementptr inbounds %struct.ehci_iso_sched, ptr %636, i32 0, i32 2
  %663 = load i32, ptr %662, align 4
  %664 = load i32, ptr %495, align 4
  %665 = icmp slt i32 %663, %664
  br i1 %665, label %666, label %740

666:                                              ; preds = %659
  %667 = getelementptr inbounds %struct.ehci_iso_stream, ptr %487, i32 0, i32 3, i32 1
  %668 = getelementptr inbounds %struct.ehci_iso_stream, ptr %487, i32 0, i32 14
  %669 = getelementptr inbounds %struct.ehci_iso_stream, ptr %487, i32 0, i32 7
  %670 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3, i32 5
  %671 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3
  %672 = getelementptr inbounds %struct.ehci_iso_stream, ptr %487, i32 0, i32 8
  br label %673

673:                                              ; preds = %679, %666
  %674 = phi i32 [ %663, %666 ], [ %737, %679 ]
  %675 = phi i32 [ %638, %666 ], [ %736, %679 ]
  %676 = load volatile ptr, ptr %636, align 4
  %677 = icmp eq ptr %676, %636
  br i1 %677, label %678, label %679, !prof !19

678:                                              ; preds = %673
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/ehci-sched.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2175, 0\0A.popsection", ""() #18, !srcloc !37
  unreachable

679:                                              ; preds = %673
  %680 = getelementptr i8, ptr %676, i32 -52
  %681 = getelementptr inbounds %struct.list_head, ptr %676, i32 0, i32 1
  %682 = load ptr, ptr %681, align 4
  %683 = load ptr, ptr %676, align 4
  %684 = getelementptr inbounds %struct.list_head, ptr %683, i32 0, i32 1
  store ptr %682, ptr %684, align 4
  store volatile ptr %683, ptr %682, align 4
  %685 = load ptr, ptr %667, align 4
  store ptr %676, ptr %667, align 4
  store ptr %639, ptr %676, align 4
  store ptr %685, ptr %681, align 4
  store volatile ptr %676, ptr %685, align 4
  %686 = getelementptr i8, ptr %676, i32 -4
  store ptr %487, ptr %686, align 16
  %687 = getelementptr i8, ptr %676, i32 -8
  store ptr %1, ptr %687, align 4
  %688 = getelementptr %struct.ehci_iso_sched, ptr %636, i32 0, i32 3, i32 %674
  store i32 1, ptr %680, align 32
  %689 = load i32, ptr %668, align 4
  %690 = getelementptr i8, ptr %676, i32 -48
  store i32 %689, ptr %690, align 4
  %691 = load i32, ptr %669, align 4
  %692 = getelementptr i8, ptr %676, i32 -44
  store i32 %691, ptr %692, align 8
  %693 = getelementptr %struct.ehci_iso_sched, ptr %636, i32 0, i32 3, i32 %674, i32 1
  %694 = load i32, ptr %693, align 8
  %695 = getelementptr i8, ptr %676, i32 -40
  store i32 %694, ptr %695, align 4
  %696 = getelementptr i8, ptr %676, i32 -28
  store i32 1, ptr %696, align 8
  %697 = load i64, ptr %688, align 8
  %698 = trunc i64 %697 to i32
  %699 = getelementptr i8, ptr %676, i32 -36
  store i32 %698, ptr %699, align 16
  %700 = lshr i64 %697, 32
  %701 = trunc i64 %700 to i32
  %702 = getelementptr i8, ptr %676, i32 -24
  store i32 %701, ptr %702, align 4
  %703 = getelementptr %struct.ehci_iso_sched, ptr %636, i32 0, i32 3, i32 %674, i32 3
  %704 = load i32, ptr %703, align 8
  %705 = getelementptr i8, ptr %676, i32 -32
  store i32 %704, ptr %705, align 4
  %706 = getelementptr %struct.ehci_iso_sched, ptr %636, i32 0, i32 3, i32 %674, i32 2
  %707 = load i8, ptr %706, align 4
  %708 = icmp eq i8 %707, 0
  %709 = add i64 %697, 4096
  %710 = lshr i64 %709, 32
  %711 = trunc i64 %710 to i32
  %712 = select i1 %708, i32 %701, i32 %711
  %713 = getelementptr i8, ptr %676, i32 -20
  store i32 %712, ptr %713, align 4
  %714 = getelementptr i8, ptr %676, i32 12
  store i32 %674, ptr %714, align 32
  %715 = lshr i32 %675, 3
  %716 = load i32, ptr %633, align 4
  %717 = add i32 %716, 536870911
  %718 = and i32 %717, %715
  %719 = getelementptr i8, ptr %676, i32 -12
  %720 = load ptr, ptr %670, align 4
  %721 = getelementptr %union.ehci_shadow, ptr %720, i32 %718
  %722 = load i32, ptr %721, align 4
  store i32 %722, ptr %719, align 8
  %723 = load ptr, ptr %671, align 8
  %724 = getelementptr i32, ptr %723, i32 %718
  %725 = load i32, ptr %724, align 4
  store i32 %725, ptr %680, align 32
  %726 = load ptr, ptr %670, align 4
  %727 = getelementptr %union.ehci_shadow, ptr %726, i32 %718
  store ptr %680, ptr %727, align 4
  %728 = getelementptr i8, ptr %676, i32 8
  store i32 %718, ptr %728, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !38
  call void @arm_heavy_mb() #18
  %729 = getelementptr i8, ptr %676, i32 -16
  %730 = load i32, ptr %729, align 4
  %731 = or i32 %730, 4
  %732 = load ptr, ptr %671, align 8
  %733 = getelementptr i32, ptr %732, i32 %718
  store i32 %731, ptr %733, align 4
  %734 = load i16, ptr %672, align 4
  %735 = zext i16 %734 to i32
  %736 = add i32 %675, %735
  %737 = add nsw i32 %674, 1
  %738 = load i32, ptr %495, align 4
  %739 = icmp slt i32 %737, %738
  br i1 %739, label %673, label %740

740:                                              ; preds = %679, %659
  %741 = phi i32 [ %638, %659 ], [ %736, %679 ]
  %742 = add i32 %635, -1
  %743 = and i32 %741, %742
  store i32 %743, ptr %637, align 4
  %744 = icmp eq ptr %636, null
  br i1 %744, label %756, label %745

745:                                              ; preds = %740
  %746 = load volatile ptr, ptr %636, align 4
  %747 = icmp eq ptr %746, %636
  br i1 %747, label %755, label %748

748:                                              ; preds = %745
  %749 = getelementptr inbounds %struct.ehci_iso_stream, ptr %487, i32 0, i32 4
  %750 = load ptr, ptr %749, align 4
  %751 = getelementptr inbounds %struct.list_head, ptr %636, i32 0, i32 1
  %752 = load ptr, ptr %751, align 4
  %753 = getelementptr inbounds %struct.list_head, ptr %746, i32 0, i32 1
  store ptr %749, ptr %753, align 4
  store ptr %746, ptr %749, align 4
  store ptr %750, ptr %752, align 4
  %754 = getelementptr inbounds %struct.list_head, ptr %750, i32 0, i32 1
  store ptr %752, ptr %754, align 4
  br label %755

755:                                              ; preds = %748, %745
  call void @kfree(ptr noundef nonnull %636) #18
  br label %756

756:                                              ; preds = %755, %740
  store ptr %487, ptr %619, align 4
  %757 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 21, i32 3, i32 4
  %758 = load i32, ptr %757, align 4
  %759 = add i32 %758, 1
  store i32 %759, ptr %757, align 4
  call fastcc void @enable_periodic(ptr noundef %8) #18
  br label %764

760:                                              ; preds = %629
  %761 = icmp sgt i32 %630, 0
  br i1 %761, label %762, label %763

762:                                              ; preds = %760
  call fastcc void @ehci_urb_done(ptr noundef %8, ptr noundef %1, i32 noundef 0) #18
  br label %764

763:                                              ; preds = %760
  call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #18
  br label %764

764:                                              ; preds = %763, %762, %756, %626, %617
  %765 = phi i32 [ %627, %626 ], [ 0, %756 ], [ 0, %762 ], [ %630, %763 ], [ -108, %617 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %621) #18
  br label %766

766:                                              ; preds = %764, %603, %502, %486, %485, %475, %278, %151, %150, %121, %49, %47, %46, %17, %13
  %767 = phi i32 [ %122, %121 ], [ -90, %13 ], [ -12, %17 ], [ -12, %49 ], [ %48, %47 ], [ 0, %46 ], [ -22, %151 ], [ %476, %475 ], [ -12, %150 ], [ -12, %278 ], [ -22, %486 ], [ %765, %764 ], [ -12, %485 ], [ -12, %502 ], [ -12, %603 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  ret i32 %767
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_urb_dequeue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #18
  %7 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 1073741824
  br i1 %12, label %57, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ehci_qh, ptr %15, i32 0, i32 11
  %17 = load i8, ptr %16, align 2
  %18 = or i8 %17, 32
  store i8 %18, ptr %16, align 2
  %19 = getelementptr inbounds %struct.ehci_qh, ptr %15, i32 0, i32 9
  %20 = load i8, ptr %19, align 4
  switch i8 %20, label %57 [
    i8 1, label %21
    i8 5, label %51
    i8 3, label %55
  ]

21:                                               ; preds = %13
  %22 = load i32, ptr %10, align 4
  %23 = and i32 %22, -1073741824
  %24 = icmp eq i32 %23, 1073741824
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call fastcc void @start_unlink_intr(ptr noundef %4, ptr noundef %15)
  br label %57

26:                                               ; preds = %21
  store i8 4, ptr %19, align 4
  %27 = getelementptr inbounds %struct.ehci_qh, ptr %15, i32 0, i32 6
  %28 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 15
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 16
  %30 = load ptr, ptr %29, align 4
  store ptr %27, ptr %29, align 4
  store ptr %28, ptr %27, align 4
  %31 = getelementptr inbounds %struct.ehci_qh, ptr %15, i32 0, i32 6, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %27, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 13
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %34, %26
  %35 = phi ptr [ %33, %26 ], [ %37, %34 ]
  %36 = getelementptr inbounds %struct.ehci_qh, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %15
  br i1 %38, label %39, label %34

39:                                               ; preds = %34
  %40 = load ptr, ptr %15, align 4
  %41 = load i32, ptr %40, align 32
  %42 = load ptr, ptr %35, align 4
  store i32 %41, ptr %42, align 32
  %43 = getelementptr inbounds %struct.ehci_qh, ptr %15, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %36, align 4
  %45 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 12
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, %15
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load ptr, ptr %43, align 4
  store ptr %49, ptr %45, align 8
  br label %50

50:                                               ; preds = %48, %39
  tail call fastcc void @start_iaa_cycle(ptr noundef %4) #18
  br label %57

51:                                               ; preds = %13
  %52 = getelementptr inbounds %struct.ehci_qh, ptr %15, i32 0, i32 13
  %53 = load i8, ptr %52, align 4
  %54 = or i8 %53, 4
  store i8 %54, ptr %52, align 4
  br label %57

55:                                               ; preds = %13
  %56 = tail call fastcc i32 @qh_completions(ptr noundef %4, ptr noundef %15)
  br label %57

57:                                               ; preds = %55, %51, %50, %25, %13, %9, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #18
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_endpoint_disable(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #18
  %6 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %121, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 15
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 16
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 13
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 12
  br label %15

15:                                               ; preds = %67, %9
  %16 = phi ptr [ %7, %9 ], [ %70, %67 ]
  %17 = phi i32 [ %5, %9 ], [ %69, %67 ]
  %18 = load ptr, ptr %16, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ehci_iso_stream, ptr %16, i32 0, i32 3
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  tail call fastcc void @reserve_release_iso_bandwidth(ptr noundef %3, ptr noundef nonnull %16, i32 noundef -1)
  tail call void @kfree(ptr noundef nonnull %16) #18
  br label %121

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 11
  %27 = load i8, ptr %26, align 2
  %28 = or i8 %27, 32
  store i8 %28, ptr %26, align 2
  %29 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 9
  %30 = load i8, ptr %29, align 4
  switch i8 %30, label %109 [
    i8 1, label %31
    i8 5, label %67
    i8 2, label %67
    i8 4, label %67
    i8 3, label %72
  ]

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 3
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = or i8 %27, 48
  store i8 %36, ptr %26, align 2
  br label %38

37:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 1006, i32 noundef 9, ptr noundef null) #18
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i8, ptr %10, align 1
  %40 = and i8 %39, 3
  %41 = icmp eq i8 %40, 3
  br i1 %41, label %66, label %42

42:                                               ; preds = %38
  %43 = load i8, ptr %29, align 4
  %44 = icmp eq i8 %43, 1
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  store i8 4, ptr %29, align 4
  %46 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 6
  %47 = load ptr, ptr %12, align 4
  store ptr %46, ptr %12, align 4
  store ptr %11, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 6, i32 1
  store ptr %47, ptr %48, align 4
  store volatile ptr %46, ptr %47, align 4
  %49 = load ptr, ptr %13, align 4
  br label %50

50:                                               ; preds = %50, %45
  %51 = phi ptr [ %49, %45 ], [ %53, %50 ]
  %52 = getelementptr inbounds %struct.ehci_qh, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %16
  br i1 %54, label %55, label %50

55:                                               ; preds = %50
  %56 = load ptr, ptr %16, align 4
  %57 = load i32, ptr %56, align 32
  %58 = load ptr, ptr %51, align 4
  store i32 %57, ptr %58, align 32
  %59 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %52, align 4
  %61 = load ptr, ptr %14, align 8
  %62 = icmp eq ptr %61, %16
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load ptr, ptr %59, align 4
  store ptr %64, ptr %14, align 8
  br label %65

65:                                               ; preds = %63, %55
  tail call fastcc void @start_iaa_cycle(ptr noundef %3) #18
  br label %67

66:                                               ; preds = %38
  tail call fastcc void @start_unlink_intr(ptr noundef %3, ptr noundef nonnull %16)
  br label %67

67:                                               ; preds = %72, %66, %65, %42, %25, %25, %25, %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %17) #18
  %68 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #18
  %69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #18
  %70 = load ptr, ptr %6, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %121, label %15

72:                                               ; preds = %25
  %73 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 13
  %74 = load i8, ptr %73, align 4
  %75 = and i8 %74, 2
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %67

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 3
  %79 = load volatile ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %78
  br i1 %80, label %81, label %111

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 7, i32 11
  %83 = load i8, ptr %82, align 4
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  tail call fastcc void @reserve_release_intr_bandwidth(ptr noundef %3, ptr noundef nonnull %16, i32 noundef -1)
  br label %86

86:                                               ; preds = %85, %81
  %87 = load volatile ptr, ptr %78, align 4
  %88 = icmp eq ptr %87, %78
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89, %86
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/ehci-mem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 59, 0\0A.popsection", ""() #18, !srcloc !20
  unreachable

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 5
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 13
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.ehci_qtd, ptr %96, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  tail call void @dma_pool_free(ptr noundef %100, ptr noundef nonnull %96, i32 noundef %102) #18
  br label %103

103:                                              ; preds = %98, %94
  %104 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 12
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %16, align 4
  %107 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  tail call void @dma_pool_free(ptr noundef %105, ptr noundef %106, i32 noundef %108) #18
  tail call void @kfree(ptr noundef nonnull %16) #18
  br label %121

109:                                              ; preds = %25
  %110 = zext i8 %30 to i32
  br label %111

111:                                              ; preds = %109, %77
  %112 = phi i32 [ %110, %109 ], [ 3, %77 ]
  %113 = load ptr, ptr %0, align 8
  %114 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %115 = load i8, ptr %114, align 2
  %116 = zext i8 %115 to i32
  %117 = getelementptr inbounds %struct.ehci_qh, ptr %16, i32 0, i32 3
  %118 = load volatile ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, %117
  %120 = select i1 %119, ptr @.str.20, ptr @.str.34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.33, ptr noundef nonnull %16, i32 noundef %116, i32 noundef %112, ptr noundef nonnull %120) #19
  br label %121

121:                                              ; preds = %111, %103, %67, %24, %2
  %122 = phi i32 [ %17, %24 ], [ %17, %103 ], [ %17, %111 ], [ %5, %2 ], [ %69, %67 ]
  store ptr null, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %122) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_endpoint_reset(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 3
  %7 = zext i8 %5 to i32
  %8 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 15
  %11 = zext i8 %10 to i32
  %12 = xor i8 %9, -1
  %13 = lshr i8 %12, 7
  %14 = zext i8 %13 to i32
  %15 = or i32 %7, -4
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %73, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #18
  %20 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %72, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ehci_qh, ptr %21, i32 0, i32 3
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i1, ptr @ehci_endpoint_reset.__already_done, align 1
  br i1 %28, label %72, label %29, !prof !17

29:                                               ; preds = %27
  store i1 true, ptr @ehci_endpoint_reset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 1066, i32 noundef 9, ptr noundef nonnull @.str.35) #18
  br label %72

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ehci_qh, ptr %21, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr %struct.usb_device, ptr %32, i32 0, i32 10, i32 %14
  %34 = load i32, ptr %33, align 4
  %35 = shl nuw nsw i32 1, %11
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, ptr %33, align 4
  %38 = getelementptr inbounds %struct.ehci_qh, ptr %21, i32 0, i32 11
  %39 = load i8, ptr %38, align 2
  %40 = or i8 %39, 32
  store i8 %40, ptr %38, align 2
  %41 = icmp eq i8 %6, 2
  br i1 %41, label %42, label %71

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.ehci_qh, ptr %21, i32 0, i32 9
  %44 = load i8, ptr %43, align 4
  %45 = icmp eq i8 %44, 1
  br i1 %45, label %46, label %72

46:                                               ; preds = %42
  store i8 4, ptr %43, align 4
  %47 = getelementptr inbounds %struct.ehci_qh, ptr %21, i32 0, i32 6
  %48 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 15
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 16
  %50 = load ptr, ptr %49, align 4
  store ptr %47, ptr %49, align 4
  store ptr %48, ptr %47, align 4
  %51 = getelementptr inbounds %struct.ehci_qh, ptr %21, i32 0, i32 6, i32 1
  store ptr %50, ptr %51, align 4
  store volatile ptr %47, ptr %50, align 4
  %52 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 13
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %54, %46
  %55 = phi ptr [ %53, %46 ], [ %57, %54 ]
  %56 = getelementptr inbounds %struct.ehci_qh, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %21
  br i1 %58, label %59, label %54

59:                                               ; preds = %54
  %60 = load ptr, ptr %21, align 4
  %61 = load i32, ptr %60, align 32
  %62 = load ptr, ptr %55, align 4
  store i32 %61, ptr %62, align 32
  %63 = getelementptr inbounds %struct.ehci_qh, ptr %21, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %56, align 4
  %65 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 12
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, %21
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load ptr, ptr %63, align 4
  store ptr %69, ptr %65, align 8
  br label %70

70:                                               ; preds = %68, %59
  tail call fastcc void @start_iaa_cycle(ptr noundef %3) #18
  br label %72

71:                                               ; preds = %30
  tail call fastcc void @start_unlink_intr(ptr noundef %3, ptr noundef nonnull %21)
  br label %72

72:                                               ; preds = %71, %70, %42, %29, %27, %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #18
  br label %73

73:                                               ; preds = %72, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_hub_status_data(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  store i8 0, ptr %1, align 1
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 15
  %7 = icmp ugt i32 %6, 7
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %1, i32 1
  store i8 0, ptr %9, align 1
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ 2, %8 ], [ 1, %2 ]
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 11
  %13 = load i32, ptr %12, align 8
  %14 = load i8, ptr @ignore_oc, align 1, !range !34
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 32768
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %10
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i32 [ 10, %21 ], [ 42, %16 ]
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #18
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 16
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.ehci_regs, ptr %32, i32 0, i32 1
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %35 = lshr i32 %34, 16
  br label %36

36:                                               ; preds = %30, %22
  %37 = phi i32 [ %35, %30 ], [ -1, %22 ]
  %38 = icmp eq i32 %6, 0
  br i1 %38, label %87, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %41 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10, i32 0, i32 2
  br label %42

42:                                               ; preds = %83, %39
  %43 = phi i32 [ 0, %39 ], [ %85, %83 ]
  %44 = phi i32 [ %13, %39 ], [ %84, %83 ]
  %45 = shl nuw i32 1, %43
  %46 = and i32 %45, %37
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %40, align 8
  %50 = getelementptr inbounds %struct.ehci_regs, ptr %49, i32 0, i32 11
  %51 = getelementptr [15 x i32], ptr %50, i32 0, i32 %43
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i32 [ %52, %48 ], [ 0, %42 ]
  %55 = and i32 %54, %23
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = lshr i32 %43, 5
  %59 = getelementptr i32, ptr %41, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, %45
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = getelementptr %struct.ehci_hcd, ptr %3, i32 0, i32 43, i32 %43
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %63
  %68 = load volatile i32, ptr @jiffies, align 64
  %69 = sub i32 %68, %65
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %71, label %83

71:                                               ; preds = %67, %57, %53
  %72 = icmp ult i32 %43, 7
  %73 = shl nuw nsw i32 2, %43
  %74 = add nsw i32 %43, -7
  %75 = shl nuw i32 1, %74
  %76 = xor i1 %72, true
  %77 = zext i1 %76 to i32
  %78 = getelementptr i8, ptr %1, i32 %77
  %79 = select i1 %72, i32 %73, i32 %75
  %80 = load i8, ptr %78, align 1
  %81 = trunc i32 %79 to i8
  %82 = or i8 %80, %81
  store i8 %82, ptr %78, align 1
  br label %83

83:                                               ; preds = %71, %67, %63
  %84 = phi i32 [ %44, %67 ], [ %44, %63 ], [ 4, %71 ]
  %85 = add nuw nsw i32 %43, 1
  %86 = icmp eq i32 %85, %6
  br i1 %86, label %87, label %42

87:                                               ; preds = %83, %36
  %88 = phi i32 [ %13, %36 ], [ %84, %83 ]
  %89 = load i32, ptr %12, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 5
  %93 = load volatile i32, ptr @jiffies, align 64
  %94 = add i32 %93, 3
  %95 = tail call i32 @mod_timer(ptr noundef %92, i32 noundef %94) #18
  br label %96

96:                                               ; preds = %91, %87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #18
  %97 = icmp eq i32 %88, 0
  %98 = select i1 %97, i32 0, i32 %11
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_bus_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = sub i32 %3, %5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @msleep(i32 noundef 5) #18
  br label %9

9:                                                ; preds = %8, %1
  tail call fastcc void @ehci_quiesce(ptr noundef %2)
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 10
  %12 = load i32, ptr %11, align 8
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %254, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 40
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 11
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %26 = load i16, ptr %10, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  br label %262

28:                                               ; preds = %21, %14
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 9, i32 3, i32 1
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10, i32 0, i32 1
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %110, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %37 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 14
  %38 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 16
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  br label %40

40:                                               ; preds = %106, %35
  %41 = phi i32 [ %33, %35 ], [ %44, %106 ]
  %42 = phi i1 [ false, %35 ], [ %108, %106 ]
  %43 = phi i32 [ 0, %35 ], [ %107, %106 ]
  %44 = add nsw i32 %41, -1
  %45 = load ptr, ptr %36, align 8
  %46 = getelementptr inbounds %struct.ehci_regs, ptr %45, i32 0, i32 11
  %47 = getelementptr [15 x i32], ptr %46, i32 0, i32 %44
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %49 = and i32 %48, -43
  %50 = and i32 %48, -7340075
  %51 = and i32 %48, 8192
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = and i32 %48, 132
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = or i32 %50, 128
  br label %58

58:                                               ; preds = %56, %40
  %59 = phi ptr [ %29, %56 ], [ %30, %40 ]
  %60 = phi i32 [ %57, %56 ], [ %50, %40 ]
  tail call void @_set_bit(i32 noundef %44, ptr noundef %59) #18
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i32 [ %50, %53 ], [ %60, %58 ]
  %63 = load ptr, ptr %15, align 8
  %64 = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 40
  %65 = load i8, ptr %64, align 8
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = and i32 %48, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = or i32 %62, 6291456
  br label %75

73:                                               ; preds = %68
  %74 = or i32 %62, 5242880
  br label %75

75:                                               ; preds = %73, %71, %61
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ], [ %62, %61 ]
  %77 = icmp eq i32 %49, %76
  br i1 %77, label %106, label %78

78:                                               ; preds = %75
  %79 = and i32 %76, 2097152
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %100, label %81

81:                                               ; preds = %78
  %82 = load i16, ptr %37, align 8
  %83 = and i16 %82, 128
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %81
  %86 = load i8, ptr %38, align 4
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, i32 26, i32 25
  %90 = lshr i32 %76, %89
  %91 = and i32 %90, 3
  %92 = icmp eq i32 %91, 1
  %93 = select i1 %92, i32 512, i32 1024
  %94 = icmp eq i32 %91, 0
  %95 = select i1 %94, i32 0, i32 %93
  br label %96

96:                                               ; preds = %85, %81
  %97 = phi i32 [ %95, %85 ], [ 1024, %81 ]
  %98 = icmp eq i32 %97, 1024
  %99 = select i1 %98, i1 true, i1 %42
  br label %100

100:                                              ; preds = %96, %78
  %101 = phi i1 [ %42, %78 ], [ %99, %96 ]
  %102 = load i32, ptr %39, align 4
  %103 = and i32 %102, 16384
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %76) #18, !srcloc !11
  br label %106

106:                                              ; preds = %105, %100, %75
  %107 = phi i32 [ %43, %75 ], [ 1, %100 ], [ 1, %105 ]
  %108 = phi i1 [ %42, %75 ], [ %101, %100 ], [ %101, %105 ]
  %109 = icmp eq i32 %44, 0
  br i1 %109, label %110, label %40

110:                                              ; preds = %106, %28
  %111 = phi i32 [ 0, %28 ], [ %107, %106 ]
  %112 = phi i1 [ false, %28 ], [ %108, %106 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %113 = load i16, ptr %10, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %115 = icmp eq i32 %111, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #18
  br label %122

122:                                              ; preds = %121, %116
  %123 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 16
  %124 = load i8, ptr %123, align 4
  %125 = and i8 %124, 2
  %126 = icmp ne i8 %125, 0
  %127 = select i1 %126, i1 true, i1 %112
  br i1 %127, label %129, label %157

128:                                              ; preds = %110
  br i1 %112, label %156, label %157

129:                                              ; preds = %122
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #18
  %130 = load i8, ptr %123, align 4
  %131 = and i8 %130, 2
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %157, label %133

133:                                              ; preds = %129
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #18
  %134 = load i32, ptr %31, align 8
  %135 = and i32 %134, 15
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %153, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  br label %139

139:                                              ; preds = %150, %137
  %140 = phi i32 [ %135, %137 ], [ %141, %150 ]
  %141 = add nsw i32 %140, -1
  %142 = load ptr, ptr %138, align 8
  %143 = getelementptr %struct.ehci_regs, ptr %142, i32 0, i32 12, i32 0, i32 1, i32 %141
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %145 = load i32, ptr %117, align 4
  %146 = and i32 %145, 16384
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = or i32 %144, 4194304
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %149) #18, !srcloc !11
  br label %150

150:                                              ; preds = %148, %139
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %152 = icmp eq i32 %141, 0
  br i1 %152, label %153, label %139

153:                                              ; preds = %150, %133
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %154 = load i16, ptr %10, align 4
  %155 = add i16 %154, 1
  store i16 %155, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  br label %157

156:                                              ; preds = %128
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #18
  br label %157

157:                                              ; preds = %156, %153, %129, %128, %122
  %158 = load i32, ptr %29, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %161(i32 noundef 32212200) #18
  br label %162

162:                                              ; preds = %160, %157
  %163 = tail call fastcc i32 @ehci_halt(ptr noundef %2)
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #18
  %164 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = and i32 %165, 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %162
  tail call void @ehci_handle_controller_death(ptr noundef %2)
  br label %169

169:                                              ; preds = %168, %162
  %170 = load i32, ptr %11, align 8
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %172, label %254

172:                                              ; preds = %169
  store i32 1, ptr %11, align 8
  %173 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 13
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.ehci_qh, ptr %174, i32 0, i32 2
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %214, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 15
  %180 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 16
  %181 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 12
  br label %182

182:                                              ; preds = %209, %178
  %183 = phi ptr [ %176, %178 ], [ %212, %209 ]
  %184 = getelementptr inbounds %struct.ehci_qh, ptr %183, i32 0, i32 3
  %185 = load volatile ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, %184
  br i1 %186, label %188, label %187, !prof !17

187:                                              ; preds = %182
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1463, i32 noundef 9, ptr noundef null) #18
  br label %188

188:                                              ; preds = %187, %182
  %189 = getelementptr inbounds %struct.ehci_qh, ptr %183, i32 0, i32 9
  store i8 4, ptr %189, align 4
  %190 = getelementptr inbounds %struct.ehci_qh, ptr %183, i32 0, i32 6
  %191 = load ptr, ptr %180, align 4
  store ptr %190, ptr %180, align 4
  store ptr %179, ptr %190, align 4
  %192 = getelementptr inbounds %struct.ehci_qh, ptr %183, i32 0, i32 6, i32 1
  store ptr %191, ptr %192, align 4
  store volatile ptr %190, ptr %191, align 4
  %193 = load ptr, ptr %173, align 4
  br label %194

194:                                              ; preds = %194, %188
  %195 = phi ptr [ %193, %188 ], [ %197, %194 ]
  %196 = getelementptr inbounds %struct.ehci_qh, ptr %195, i32 0, i32 2
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, %183
  br i1 %198, label %199, label %194

199:                                              ; preds = %194
  %200 = load ptr, ptr %183, align 4
  %201 = load i32, ptr %200, align 32
  %202 = load ptr, ptr %195, align 4
  store i32 %201, ptr %202, align 32
  %203 = getelementptr inbounds %struct.ehci_qh, ptr %183, i32 0, i32 2
  %204 = load i32, ptr %203, align 4
  store i32 %204, ptr %196, align 4
  %205 = load ptr, ptr %181, align 8
  %206 = icmp eq ptr %205, %183
  br i1 %206, label %207, label %209

207:                                              ; preds = %199
  %208 = load ptr, ptr %203, align 4
  store ptr %208, ptr %181, align 8
  br label %209

209:                                              ; preds = %207, %199
  %210 = load ptr, ptr %173, align 4
  %211 = getelementptr inbounds %struct.ehci_qh, ptr %210, i32 0, i32 2
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %182

214:                                              ; preds = %209, %172
  %215 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %216 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %217 = load i32, ptr %216, align 4
  %218 = and i32 %217, 16384
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %214
  %221 = load ptr, ptr %215, align 8
  %222 = getelementptr inbounds %struct.ehci_regs, ptr %221, i32 0, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 32) #18, !srcloc !11
  %223 = load i32, ptr %216, align 4
  br label %224

224:                                              ; preds = %220, %214
  %225 = phi i32 [ %217, %214 ], [ %223, %220 ]
  %226 = and i32 %225, 18432
  %227 = icmp eq i32 %226, 2048
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = load ptr, ptr %215, align 8
  %230 = getelementptr inbounds %struct.ehci_regs, ptr %229, i32 0, i32 6
  %231 = load ptr, ptr %173, align 4
  %232 = getelementptr inbounds %struct.ehci_qh, ptr %231, i32 0, i32 1
  %233 = load i32, ptr %232, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %233) #18, !srcloc !11
  br label %234

234:                                              ; preds = %228, %224
  %235 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 11
  %236 = load i8, ptr %235, align 4
  %237 = and i8 %236, -9
  store i8 %237, ptr %235, align 4
  tail call void @end_unlink_async(ptr noundef %2) #18
  tail call void @ehci_handle_start_intr_unlinks(ptr noundef %2)
  tail call void @ehci_handle_intr_unlinks(ptr noundef %2)
  tail call void @end_free_itds(ptr noundef %2)
  %238 = load i32, ptr %216, align 4
  %239 = and i32 %238, 16384
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %234
  %242 = load ptr, ptr %215, align 8
  %243 = getelementptr inbounds %struct.ehci_regs, ptr %242, i32 0, i32 2
  %244 = load ptr, ptr %15, align 8
  %245 = getelementptr inbounds %struct.usb_device, ptr %244, i32 0, i32 40
  %246 = load i8, ptr %245, align 8
  %247 = and i8 %246, 1
  %248 = icmp eq i8 %247, 0
  %249 = select i1 %248, i32 51, i32 55
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 %249) #18, !srcloc !11
  br label %250

250:                                              ; preds = %241, %234
  %251 = load ptr, ptr %215, align 8
  %252 = getelementptr inbounds %struct.ehci_regs, ptr %251, i32 0, i32 2
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %252) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %254

254:                                              ; preds = %250, %169, %9
  %255 = load volatile i32, ptr @jiffies, align 64
  %256 = add i32 %255, 1
  store i32 %256, ptr %4, align 8
  %257 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 0, i32 1
  store i32 0, ptr %257, align 4
  store i32 99, ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %258 = load i16, ptr %10, align 4
  %259 = add i16 %258, 1
  store i16 %259, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %260 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 4, i32 4
  %261 = tail call i32 @hrtimer_cancel(ptr noundef %260) #18
  br label %262

262:                                              ; preds = %254, %25
  %263 = phi i32 [ 0, %254 ], [ -16, %25 ]
  ret i32 %263
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_bus_resume(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 0, ptr %3, align 4
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = sub i32 %4, %6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @msleep(i32 noundef 5) #18
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #18
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %365, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 11
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 32
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %365

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.ehci_regs, ptr %23, i32 0, i32 2
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 16384
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load ptr, ptr %22, align 8
  %32 = getelementptr inbounds %struct.ehci_regs, ptr %31, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #18, !srcloc !11
  %33 = load i32, ptr %26, align 4
  br label %34

34:                                               ; preds = %30, %21
  %35 = phi i32 [ %27, %21 ], [ %33, %30 ]
  %36 = and i32 %35, 16384
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load ptr, ptr %22, align 8
  %40 = getelementptr inbounds %struct.ehci_regs, ptr %39, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #18, !srcloc !11
  %41 = load i32, ptr %26, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %35, %34 ], [ %41, %38 ]
  %44 = and i32 %43, 16384
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load ptr, ptr %22, align 8
  %48 = getelementptr inbounds %struct.ehci_regs, ptr %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 20, i32 3, i32 1
  %50 = load i32, ptr %49, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %50) #18, !srcloc !11
  %51 = load i32, ptr %26, align 4
  br label %52

52:                                               ; preds = %46, %42
  %53 = phi i32 [ %43, %42 ], [ %51, %46 ]
  %54 = and i32 %53, 16384
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load ptr, ptr %22, align 8
  %58 = getelementptr inbounds %struct.ehci_regs, ptr %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 13
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ehci_qh, ptr %60, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %62) #18, !srcloc !11
  %63 = load i32, ptr %26, align 4
  br label %64

64:                                               ; preds = %56, %52
  %65 = phi i32 [ %53, %52 ], [ %63, %56 ]
  %66 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 4
  %67 = load i32, ptr %66, align 8
  %68 = or i32 %67, 1
  store i32 %68, ptr %66, align 8
  %69 = and i32 %65, 16384
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load ptr, ptr %22, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %68) #18, !srcloc !11
  br label %73

73:                                               ; preds = %71, %64
  %74 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 10
  store i32 2, ptr %74, align 8
  %75 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 15
  br label %78

78:                                               ; preds = %81, %73
  %79 = phi i32 [ %77, %73 ], [ %82, %81 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %78
  %82 = add nsw i32 %79, -1
  %83 = load ptr, ptr %22, align 8
  %84 = getelementptr inbounds %struct.ehci_regs, ptr %83, i32 0, i32 11
  %85 = getelementptr [15 x i32], ptr %84, i32 0, i32 %82
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %87 = and i32 %86, 196
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %78

89:                                               ; preds = %81
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %90 = load i16, ptr %11, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  tail call void @msleep(i32 noundef 8) #18
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #18
  br label %92

92:                                               ; preds = %89, %78
  %93 = load i8, ptr %17, align 4
  %94 = and i8 %93, 32
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %365

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 9, i32 3, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %136, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 16
  %102 = load i8, ptr %101, align 4
  %103 = and i8 %102, 2
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %136, label %105

105:                                              ; preds = %100
  %106 = load i32, ptr %75, align 8
  %107 = and i32 %106, 15
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %130, label %109

109:                                              ; preds = %128, %105
  %110 = phi i32 [ %111, %128 ], [ %107, %105 ]
  %111 = add nsw i32 %110, -1
  %112 = lshr i32 %111, 5
  %113 = getelementptr i32, ptr %97, i32 %112
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %111, 31
  %116 = shl nuw i32 1, %115
  %117 = and i32 %114, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %109
  %120 = load ptr, ptr %22, align 8
  %121 = getelementptr %struct.ehci_regs, ptr %120, i32 0, i32 12, i32 0, i32 1, i32 %111
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %123 = load i32, ptr %26, align 4
  %124 = and i32 %123, 16384
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = and i32 %122, -4194305
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %127) #18, !srcloc !11
  br label %128

128:                                              ; preds = %126, %119, %109
  %129 = icmp eq i32 %111, 0
  br i1 %129, label %130, label %109

130:                                              ; preds = %128, %105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %131 = load i16, ptr %11, align 4
  %132 = add i16 %131, 1
  store i16 %132, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  tail call void @msleep(i32 noundef 5) #18
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #18
  %133 = load i8, ptr %17, align 4
  %134 = and i8 %133, 32
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %365

136:                                              ; preds = %130, %100, %96
  %137 = load i32, ptr %75, align 8
  %138 = and i32 %137, 15
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %180, label %140

140:                                              ; preds = %169, %136
  %141 = phi i32 [ %142, %169 ], [ %138, %136 ]
  %142 = add nsw i32 %141, -1
  %143 = load ptr, ptr %22, align 8
  %144 = getelementptr inbounds %struct.ehci_regs, ptr %143, i32 0, i32 11
  %145 = getelementptr [15 x i32], ptr %144, i32 0, i32 %142
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #18, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %147 = and i32 %146, -7340075
  %148 = lshr i32 %142, 5
  %149 = getelementptr i32, ptr %97, i32 %148
  %150 = load volatile i32, ptr %149, align 4
  %151 = and i32 %142, 31
  %152 = shl nuw i32 1, %151
  %153 = and i32 %150, %152
  %154 = icmp eq i32 %153, 0
  %155 = and i32 %146, 128
  %156 = icmp eq i32 %155, 0
  %157 = select i1 %154, i1 true, i1 %156
  br i1 %157, label %160, label %158

158:                                              ; preds = %140
  %159 = or i32 %147, 64
  call void @_set_bit(i32 noundef %142, ptr noundef nonnull %3) #18
  br label %160

160:                                              ; preds = %158, %140
  %161 = phi i32 [ %159, %158 ], [ %147, %140 ]
  %162 = load i32, ptr %26, align 4
  %163 = and i32 %162, 16384
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load ptr, ptr %22, align 8
  %167 = getelementptr inbounds %struct.ehci_regs, ptr %166, i32 0, i32 11
  %168 = getelementptr [15 x i32], ptr %167, i32 0, i32 %142
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %161) #18, !srcloc !11
  br label %169

169:                                              ; preds = %165, %160
  %170 = icmp eq i32 %142, 0
  br i1 %170, label %171, label %140

171:                                              ; preds = %169
  %172 = load i32, ptr %3, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %171
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %175 = load i16, ptr %11, align 4
  %176 = add i16 %175, 1
  store i16 %176, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  call void @msleep(i32 noundef 40) #18
  call void @_raw_spin_lock_irq(ptr noundef %11) #18
  %177 = load i8, ptr %17, align 4
  %178 = and i8 %177, 32
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %365

180:                                              ; preds = %174, %171, %136
  %181 = load i32, ptr %75, align 8
  %182 = and i32 %181, 15
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %207, label %184

184:                                              ; preds = %205, %180
  %185 = phi i32 [ %186, %205 ], [ %182, %180 ]
  %186 = add nsw i32 %185, -1
  %187 = load ptr, ptr %22, align 8
  %188 = getelementptr inbounds %struct.ehci_regs, ptr %187, i32 0, i32 11
  %189 = getelementptr [15 x i32], ptr %188, i32 0, i32 %186
  %190 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #18, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %191 = load volatile i32, ptr %3, align 4
  %192 = and i32 %186, 31
  %193 = shl nuw i32 1, %192
  %194 = and i32 %191, %193
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %184
  %197 = load i32, ptr %26, align 4
  %198 = and i32 %197, 16384
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load ptr, ptr %22, align 8
  %202 = getelementptr inbounds %struct.ehci_regs, ptr %201, i32 0, i32 11
  %203 = getelementptr [15 x i32], ptr %202, i32 0, i32 %186
  %204 = and i32 %190, -235
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %204) #18, !srcloc !11
  br label %205

205:                                              ; preds = %200, %196, %184
  %206 = icmp eq i32 %186, 0
  br i1 %206, label %207, label %184

207:                                              ; preds = %205, %180
  %208 = load volatile i32, ptr @jiffies, align 64
  %209 = add i32 %208, 1
  store i32 %209, ptr %5, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %210 = load i16, ptr %11, align 4
  %211 = add i16 %210, 1
  store i16 %211, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  %212 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10, i32 0, i32 1
  %213 = load i32, ptr %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %348, label %215

215:                                              ; preds = %207
  %216 = call i32 @usb_for_each_dev(ptr noundef null, ptr noundef nonnull @persist_enabled_on_companion) #18
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %348, label %218

218:                                              ; preds = %215
  %219 = load i32, ptr %75, align 8
  %220 = and i32 %219, 15
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %261, label %222

222:                                              ; preds = %218
  %223 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 9
  br label %224

224:                                              ; preds = %259, %222
  %225 = phi i32 [ %220, %222 ], [ %226, %259 ]
  %226 = add nsw i32 %225, -1
  %227 = lshr i32 %226, 5
  %228 = getelementptr i32, ptr %212, i32 %227
  %229 = load volatile i32, ptr %228, align 4
  %230 = and i32 %226, 31
  %231 = shl nuw i32 1, %230
  %232 = and i32 %231, %229
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %259, label %234

234:                                              ; preds = %224
  %235 = load ptr, ptr %22, align 8
  %236 = getelementptr inbounds %struct.ehci_regs, ptr %235, i32 0, i32 11
  %237 = getelementptr [15 x i32], ptr %236, i32 0, i32 %226
  %238 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %237) #18, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %239 = and i32 %238, 4096
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %259

241:                                              ; preds = %234
  %242 = load ptr, ptr %22, align 8
  %243 = getelementptr inbounds %struct.ehci_regs, ptr %242, i32 0, i32 11
  %244 = getelementptr [15 x i32], ptr %243, i32 0, i32 %226
  %245 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #18, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %246 = load i32, ptr %26, align 4
  %247 = and i32 %246, 16384
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = and i32 %245, -4139
  %251 = or i32 %250, 4096
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %251) #18, !srcloc !11
  br label %252

252:                                              ; preds = %249, %241
  %253 = load ptr, ptr %223, align 4
  %254 = getelementptr inbounds %struct.hc_driver, ptr %253, i32 0, i32 44
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %259, label %257

257:                                              ; preds = %252
  %258 = call i32 %255(ptr noundef %0, i32 noundef %226, i1 noundef zeroext true) #18
  br label %259

259:                                              ; preds = %257, %252, %234, %224
  %260 = icmp eq i32 %226, 0
  br i1 %260, label %261, label %224

261:                                              ; preds = %259, %218
  call void @msleep(i32 noundef 20) #18
  call void @_raw_spin_lock_irq(ptr noundef %11) #18
  %262 = load i32, ptr %75, align 8
  %263 = and i32 %262, 15
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %303, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 10
  br label %267

267:                                              ; preds = %301, %265
  %268 = phi i32 [ %263, %265 ], [ %269, %301 ]
  %269 = add nsw i32 %268, -1
  %270 = lshr i32 %269, 5
  %271 = getelementptr i32, ptr %212, i32 %270
  %272 = load volatile i32, ptr %271, align 4
  %273 = and i32 %269, 31
  %274 = shl nuw i32 1, %273
  %275 = and i32 %274, %272
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %301, label %277

277:                                              ; preds = %267
  %278 = load ptr, ptr %22, align 8
  %279 = getelementptr inbounds %struct.ehci_regs, ptr %278, i32 0, i32 11
  %280 = getelementptr [15 x i32], ptr %279, i32 0, i32 %269
  %281 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %280) #18, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %282 = and i32 %281, 8192
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %277
  call void @_clear_bit(i32 noundef %269, ptr noundef %212) #18
  br label %301

285:                                              ; preds = %277
  %286 = getelementptr i32, ptr %266, i32 %270
  %287 = load volatile i32, ptr %286, align 4
  %288 = and i32 %287, %274
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %296, label %290

290:                                              ; preds = %285
  %291 = load i32, ptr %26, align 4
  %292 = and i32 %291, 16384
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %301

294:                                              ; preds = %290
  %295 = and i32 %281, -47
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %295) #18, !srcloc !11
  br label %301

296:                                              ; preds = %285
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %297 = load i16, ptr %11, align 4
  %298 = add i16 %297, 1
  store i16 %298, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %299 = trunc i32 %268 to i16
  %300 = call i32 @ehci_hub_control(ptr noundef %0, i16 noundef zeroext 8963, i16 noundef zeroext 4, i16 noundef zeroext %299, ptr noundef null, i16 zeroext undef) #18
  call void @_raw_spin_lock_irq(ptr noundef %11) #18
  br label %301

301:                                              ; preds = %296, %294, %290, %284, %267
  %302 = icmp eq i32 %269, 0
  br i1 %302, label %303, label %267

303:                                              ; preds = %301, %261
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %304 = load i16, ptr %11, align 4
  %305 = add i16 %304, 1
  store i16 %305, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %306 = load i32, ptr %212, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %348, label %308

308:                                              ; preds = %303
  call void @msleep(i32 noundef 90) #18
  call void @_raw_spin_lock_irq(ptr noundef %11) #18
  %309 = load i32, ptr %75, align 8
  %310 = and i32 %309, 15
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %345, label %312

312:                                              ; preds = %343, %308
  %313 = phi i32 [ %314, %343 ], [ %310, %308 ]
  %314 = add nsw i32 %313, -1
  %315 = lshr i32 %314, 5
  %316 = getelementptr i32, ptr %212, i32 %315
  %317 = load volatile i32, ptr %316, align 4
  %318 = and i32 %314, 31
  %319 = shl nuw i32 1, %318
  %320 = and i32 %319, %317
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %343, label %322

322:                                              ; preds = %312
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %323 = load i16, ptr %11, align 4
  %324 = add i16 %323, 1
  store i16 %324, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %325 = trunc i32 %313 to i16
  %326 = call i32 @ehci_hub_control(ptr noundef %0, i16 noundef zeroext -23808, i16 noundef zeroext 0, i16 noundef zeroext %325, ptr noundef nonnull %2, i16 zeroext undef) #18
  call void @_raw_spin_lock_irq(ptr noundef %11) #18
  %327 = load ptr, ptr %22, align 8
  %328 = getelementptr inbounds %struct.ehci_regs, ptr %327, i32 0, i32 11
  %329 = getelementptr [15 x i32], ptr %328, i32 0, i32 %314
  %330 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %329) #18, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %331 = and i32 %330, 8192
  %332 = icmp eq i32 %331, 0
  %333 = load i32, ptr %26, align 4
  %334 = and i32 %333, 16384
  %335 = icmp eq i32 %334, 0
  br i1 %332, label %340, label %336

336:                                              ; preds = %322
  br i1 %335, label %337, label %343

337:                                              ; preds = %336
  %338 = and i32 %330, -43
  %339 = or i32 %338, 2
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %329, i32 %339) #18, !srcloc !11
  br label %343

340:                                              ; preds = %322
  br i1 %335, label %341, label %343

341:                                              ; preds = %340
  %342 = and i32 %330, -47
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %329, i32 %342) #18, !srcloc !11
  br label %343

343:                                              ; preds = %341, %340, %337, %336, %312
  %344 = icmp eq i32 %314, 0
  br i1 %344, label %345, label %312

345:                                              ; preds = %343, %308
  store i32 0, ptr %212, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %346 = load i16, ptr %11, align 4
  %347 = add i16 %346, 1
  store i16 %347, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  br label %348

348:                                              ; preds = %345, %303, %215, %207
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @_raw_spin_lock_irq(ptr noundef %11) #18
  %349 = load i8, ptr %17, align 4
  %350 = and i8 %349, 32
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %352, label %365

352:                                              ; preds = %348
  %353 = load i32, ptr %26, align 4
  %354 = and i32 %353, 16384
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %352
  %357 = load ptr, ptr %22, align 8
  %358 = getelementptr inbounds %struct.ehci_regs, ptr %357, i32 0, i32 2
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 55) #18, !srcloc !11
  br label %359

359:                                              ; preds = %356, %352
  %360 = load ptr, ptr %22, align 8
  %361 = getelementptr inbounds %struct.ehci_regs, ptr %360, i32 0, i32 2
  %362 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %361) #18, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %363 = load i16, ptr %11, align 4
  %364 = add i16 %363, 1
  store i16 %364, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  br label %368

365:                                              ; preds = %348, %174, %130, %92, %16, %10
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %366 = load i16, ptr %11, align 4
  %367 = add i16 %366, 1
  store i16 %367, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  br label %368

368:                                              ; preds = %365, %359
  %369 = phi i32 [ -108, %365 ], [ 0, %359 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %369
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ehci_get_resuming_ports(ptr nocapture noundef readonly %0) #14 {
  %2 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 0, i32 11
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_relinquish_port(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 128
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = add i32 %1, -1
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ehci_regs, ptr %10, i32 0, i32 11
  %12 = getelementptr [15 x i32], ptr %11, i32 0, i32 %8
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 2, i32 4, i32 8
  br label %15

15:                                               ; preds = %35, %7
  %16 = phi i32 [ 4, %7 ], [ %36, %35 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #18
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %18 = and i32 %17, 8192
  %19 = icmp ne i32 %18, 0
  %20 = and i32 %17, 8193
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %19, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %15
  %24 = load i32, ptr %14, align 4
  %25 = and i32 %24, 16384
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = and i32 %17, -47
  %29 = xor i32 %28, 8192
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %29) #18, !srcloc !11
  br label %30

30:                                               ; preds = %27, %23, %15
  %31 = phi i32 [ 0, %15 ], [ %16, %23 ], [ %16, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %32 = load i16, ptr %13, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %34 = icmp ugt i32 %31, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  tail call void @msleep(i32 noundef 5) #18
  %36 = add nsw i32 %31, -1
  %37 = icmp sgt i32 %31, 1
  br i1 %37, label %15, label %38

38:                                               ; preds = %35, %30, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ehci_port_handed_over(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 128
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 8, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ehci_regs, ptr %9, i32 0, i32 11
  %11 = add i32 %1, -1
  %12 = getelementptr [15 x i32], ptr %10, i32 0, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %14 = and i32 %13, 8192
  br label %15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %14, %7 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_clear_tt_buffer_complete(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 29
  %4 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #18
  %8 = getelementptr inbounds %struct.ehci_qh, ptr %5, i32 0, i32 13
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, -3
  store i8 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.ehci_qh, ptr %5, i32 0, i32 9
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ehci_qh, ptr %5, i32 0, i32 3
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 10
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call fastcc void @qh_link_async(ptr noundef %3, ptr noundef %5)
  br label %23

23:                                               ; preds = %22, %18, %14, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ehci_remove_device(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 1, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #18
  %4 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_tt, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.usb_tt, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 9
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, -1
  %19 = getelementptr ptr, ptr %9, i32 %18
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 35
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %24, %15
  %25 = phi i32 [ %32, %24 ], [ 0, %15 ]
  %26 = phi i32 [ %31, %24 ], [ 0, %15 ]
  %27 = getelementptr ptr, ptr %9, i32 %25
  %28 = load ptr, ptr %27, align 4
  %29 = icmp ne ptr %28, null
  %30 = zext i1 %29 to i32
  %31 = add i32 %26, %30
  %32 = add nuw nsw i32 %25, 1
  %33 = icmp eq i32 %32, %22
  br i1 %33, label %34, label %24

34:                                               ; preds = %24, %15, %11
  %35 = phi ptr [ null, %11 ], [ %9, %15 ], [ %9, %24 ]
  %36 = phi ptr [ %8, %11 ], [ %19, %15 ], [ %19, %24 ]
  %37 = phi i32 [ 0, %11 ], [ 0, %15 ], [ %31, %24 ]
  %38 = load ptr, ptr %36, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.ehci_tt, ptr %38, i32 0, i32 2
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ehci_tt, ptr %38, i32 0, i32 1
  %46 = getelementptr inbounds %struct.ehci_tt, ptr %38, i32 0, i32 1, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  store ptr null, ptr %36, align 4
  tail call void @kfree(ptr noundef nonnull %38) #18
  %50 = icmp eq i32 %37, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store ptr null, ptr %8, align 4
  tail call void @kfree(ptr noundef %35) #18
  br label %52

52:                                               ; preds = %51, %44, %40, %34, %7, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %53 = load i16, ptr %3, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hc_died(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @companion_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 1, i32 8, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 2, i32 0, i32 10
  br label %12

12:                                               ; preds = %27, %10
  %13 = phi ptr [ %2, %10 ], [ %29, %27 ]
  %14 = phi i32 [ 4096, %10 ], [ %28, %27 ]
  %15 = phi i32 [ 0, %10 ], [ %22, %27 ]
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr %11, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = shl nuw i32 1, %15
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = add nuw nsw i32 %15, 1
  br i1 %21, label %27, label %23

23:                                               ; preds = %12
  %24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %13, i32 noundef %14, ptr noundef nonnull @.str.22, i32 noundef %22) #18
  %25 = getelementptr i8, ptr %13, i32 %24
  %26 = sub i32 %14, %24
  br label %27

27:                                               ; preds = %23, %12
  %28 = phi i32 [ %26, %23 ], [ %14, %12 ]
  %29 = phi ptr [ %25, %23 ], [ %13, %12 ]
  %30 = icmp eq i32 %22, %8
  br i1 %30, label %31, label %12

31:                                               ; preds = %27, %3
  %32 = phi ptr [ %2, %3 ], [ %29, %27 ]
  %33 = ptrtoint ptr %32 to i32
  %34 = ptrtoint ptr %2 to i32
  %35 = sub i32 %33, %34
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @companion_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !32
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull %5)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %59

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 0
  %13 = call i32 @llvm.abs.i32(i32 %11, i1 false)
  %14 = lshr i32 %11, 18
  %15 = and i32 %14, 8192
  %16 = xor i32 %15, 8192
  %17 = icmp slt i32 %13, 1
  br i1 %17, label %59, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 1, i32 8, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 15
  %22 = icmp ugt i32 %13, %21
  br i1 %22, label %59, label %23

23:                                               ; preds = %18
  %24 = add nsw i32 %13, -1
  store i32 %24, ptr %5, align 4
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 2, i32 0, i32 10
  br i1 %12, label %27, label %26

26:                                               ; preds = %23
  call void @_set_bit(i32 noundef %24, ptr noundef %25) #18
  br label %28

27:                                               ; preds = %23
  call void @_clear_bit(i32 noundef %24, ptr noundef %25) #18
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, ptr %5, align 4
  %30 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 1, i32 8, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.ehci_regs, ptr %31, i32 0, i32 11
  %33 = getelementptr [15 x i32], ptr %32, i32 0, i32 %29
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 1, i32 9
  %35 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 2, i32 4, i32 8
  br label %36

36:                                               ; preds = %56, %28
  %37 = phi i32 [ 4, %28 ], [ %57, %56 ]
  call void @_raw_spin_lock_irq(ptr noundef %34) #18
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #18, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %39 = and i32 %38, 8192
  %40 = icmp eq i32 %39, %16
  %41 = and i32 %38, 8193
  %42 = icmp eq i32 %41, 0
  %43 = or i1 %40, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %36
  %45 = load i32, ptr %35, align 4
  %46 = and i32 %45, 16384
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = and i32 %38, -47
  %50 = xor i32 %49, 8192
  call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  call void @arm_heavy_mb() #18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %50) #18, !srcloc !11
  br label %51

51:                                               ; preds = %48, %44, %36
  %52 = phi i32 [ 0, %36 ], [ %37, %44 ], [ %37, %48 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %53 = load i16, ptr %34, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %34, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %55 = icmp ugt i32 %52, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  call void @msleep(i32 noundef 5) #18
  %57 = add nsw i32 %52, -1
  %58 = icmp sgt i32 %52, 1
  br i1 %58, label %36, label %59

59:                                               ; preds = %56, %51, %18, %10, %4
  %60 = phi i32 [ -22, %4 ], [ -2, %18 ], [ -2, %10 ], [ %3, %51 ], [ %3, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uframe_periodic_max_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %5, i32 1, i32 21, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.22, i32 noundef %7) #18
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uframe_periodic_max_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !32
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 29
  %9 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #18
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %5, align 4
  %13 = add i32 %12, -125
  %14 = icmp ult i32 %13, -25
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.25, i32 noundef %12) #19
  br label %50

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 1, i32 9
  %19 = call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #18
  %20 = load i32, ptr %5, align 4
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 1, i32 21, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %24, %17
  %25 = phi i32 [ %31, %24 ], [ 0, %17 ]
  %26 = phi i32 [ %30, %24 ], [ 0, %17 ]
  %27 = getelementptr %struct.ehci_hcd, ptr %8, i32 0, i32 62, i32 %25
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 @llvm.smax.i32(i32 %26, i32 %29)
  %31 = add nuw nsw i32 %25, 1
  %32 = icmp eq i32 %31, 64
  br i1 %32, label %33, label %24

33:                                               ; preds = %24
  %34 = icmp ugt i32 %30, %20
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.26, i32 noundef %30, i32 noundef %20) #19
  br label %48

37:                                               ; preds = %33, %17
  %38 = load ptr, ptr %7, align 8
  %39 = mul i32 %20, 100
  %40 = udiv i32 %39, 125
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.27, i32 noundef %40, i32 noundef %20) #19
  %41 = load i32, ptr %5, align 4
  %42 = icmp eq i32 %41, 100
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %7, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.28) #19
  %45 = load i32, ptr %5, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi i32 [ %45, %43 ], [ 100, %37 ]
  store i32 %47, ptr %21, align 4
  br label %48

48:                                               ; preds = %46, %35
  %49 = phi i32 [ -22, %35 ], [ %3, %46 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #18
  br label %50

50:                                               ; preds = %48, %15, %4
  %51 = phi i32 [ -22, %15 ], [ %49, %48 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ehci_silence_controller(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @ehci_halt(ptr noundef %0)
  %3 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #18
  %4 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 12
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -352
  %11 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %13 = getelementptr i8, ptr %0, i32 -172
  br label %14

14:                                               ; preds = %43, %9
  %15 = phi i32 [ %7, %9 ], [ %16, %43 ]
  %16 = add nsw i32 %15, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %17 = load i16, ptr %3, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr inbounds %struct.ehci_regs, ptr %19, i32 0, i32 11
  %21 = getelementptr [15 x i32], ptr %20, i32 0, i32 %16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  %23 = load i32, ptr %12, align 4
  %24 = and i32 %23, 16384
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = and i32 %22, -4139
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %27) #18, !srcloc !11
  br label %28

28:                                               ; preds = %26, %14
  %29 = load ptr, ptr %13, align 4
  %30 = getelementptr inbounds %struct.hc_driver, ptr %29, i32 0, i32 44
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = tail call i32 %31(ptr noundef %10, i32 noundef %16, i1 noundef zeroext false) #18
  br label %35

35:                                               ; preds = %33, %28
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #18
  %36 = load i32, ptr %12, align 4
  %37 = and i32 %36, 16384
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds %struct.ehci_regs, ptr %40, i32 0, i32 11
  %42 = getelementptr [15 x i32], ptr %41, i32 0, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 42) #18, !srcloc !11
  br label %43

43:                                               ; preds = %39, %35
  %44 = icmp eq i32 %16, 0
  br i1 %44, label %45, label %14

45:                                               ; preds = %43, %1
  %46 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %47 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 16384
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load ptr, ptr %46, align 8
  %53 = getelementptr inbounds %struct.ehci_regs, ptr %52, i32 0, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !10
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #18, !srcloc !11
  br label %54

54:                                               ; preds = %51, %45
  %55 = load ptr, ptr %46, align 8
  %56 = getelementptr inbounds %struct.ehci_regs, ptr %55, i32 0, i32 10
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !12
  %58 = load i16, ptr %3, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_amd_dev_put() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @qh_urb_transaction(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store i32 0, ptr %8, align 4, !annotation !32
  %9 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 51
  %10 = load ptr, ptr %9, align 8
  %11 = call ptr @dma_pool_alloc(ptr noundef %10, i32 noundef %3, ptr noundef nonnull %8) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  br label %288

14:                                               ; preds = %4
  %15 = load i32, ptr %8, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(96) %11, i8 0, i32 96, i1 false) #18
  %16 = getelementptr inbounds %struct.ehci_qtd, ptr %11, i32 0, i32 5
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ehci_qtd, ptr %11, i32 0, i32 2
  store i32 64, ptr %17, align 8
  store i32 1, ptr %11, align 32
  %18 = getelementptr inbounds %struct.ehci_qtd, ptr %11, i32 0, i32 1
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ehci_qtd, ptr %11, i32 0, i32 6
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ehci_qtd, ptr %11, i32 0, i32 6, i32 1
  store ptr %19, ptr %20, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  %21 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  store ptr %19, ptr %21, align 4
  store ptr %2, ptr %19, align 4
  store ptr %22, ptr %20, align 4
  store volatile ptr %19, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ehci_qtd, ptr %11, i32 0, i32 7
  store ptr %1, ptr %23, align 32
  %24 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 128
  %29 = and i32 %27, -1073741824
  %30 = icmp eq i32 %29, -2147483648
  br i1 %30, label %31, label %62

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 22
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ehci_qtd, ptr %11, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ehci_qtd, ptr %11, i32 0, i32 4
  store i32 0, ptr %35, align 32
  %36 = and i32 %33, 4095
  %37 = icmp ult i32 %36, 4088
  br i1 %37, label %45, label %38, !prof !17

38:                                               ; preds = %31
  %39 = icmp eq i32 %36, 4088
  br i1 %39, label %45, label %40

40:                                               ; preds = %38
  %41 = add i32 %33, 4096
  %42 = and i32 %41, -4096
  %43 = getelementptr %struct.ehci_qtd, ptr %11, i32 0, i32 3, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr %struct.ehci_qtd, ptr %11, i32 0, i32 4, i32 1
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %40, %38, %31
  store i32 528000, ptr %17, align 8
  %46 = getelementptr inbounds %struct.ehci_qtd, ptr %11, i32 0, i32 8
  store i32 8, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store i32 0, ptr %7, align 4, !annotation !32
  %47 = load ptr, ptr %9, align 8
  %48 = call ptr @dma_pool_alloc(ptr noundef %47, i32 noundef %3, ptr noundef nonnull %7) #18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  br label %274

51:                                               ; preds = %45
  %52 = load i32, ptr %7, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(96) %48, i8 0, i32 96, i1 false) #18
  %53 = getelementptr inbounds %struct.ehci_qtd, ptr %48, i32 0, i32 5
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.ehci_qtd, ptr %48, i32 0, i32 2
  store i32 64, ptr %54, align 8
  store i32 1, ptr %48, align 32
  %55 = getelementptr inbounds %struct.ehci_qtd, ptr %48, i32 0, i32 1
  store i32 1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.ehci_qtd, ptr %48, i32 0, i32 6
  store volatile ptr %56, ptr %56, align 4
  %57 = getelementptr inbounds %struct.ehci_qtd, ptr %48, i32 0, i32 6, i32 1
  store ptr %56, ptr %57, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  %58 = getelementptr inbounds %struct.ehci_qtd, ptr %48, i32 0, i32 7
  store ptr %1, ptr %58, align 32
  store i32 %52, ptr %11, align 32
  %59 = load ptr, ptr %21, align 4
  store ptr %56, ptr %21, align 4
  store ptr %2, ptr %56, align 4
  store ptr %59, ptr %57, align 4
  store volatile ptr %56, ptr %59, align 4
  %60 = icmp eq i32 %25, 0
  %61 = select i1 %60, i32 -2147480192, i32 -2147480448
  br label %62

62:                                               ; preds = %51, %14
  %63 = phi i32 [ 3200, %14 ], [ %61, %51 ]
  %64 = phi ptr [ %11, %14 ], [ %48, %51 ]
  %65 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 17
  %66 = load i32, ptr %65, align 4
  %67 = icmp sgt i32 %25, 0
  %68 = icmp sgt i32 %66, 0
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 16
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.scatterlist, ptr %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.scatterlist, ptr %72, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = call i32 @llvm.smin.i32(i32 %75, i32 %25)
  br label %79

77:                                               ; preds = %62
  %78 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  br label %79

79:                                               ; preds = %77, %70
  %80 = phi ptr [ %72, %70 ], [ null, %77 ]
  %81 = phi i32 [ %76, %70 ], [ %25, %77 ]
  %82 = phi ptr [ %73, %70 ], [ %78, %77 ]
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %28, 0
  %85 = shl nuw nsw i32 %28, 1
  %86 = or i32 %63, %85
  %87 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr %26, align 4
  %90 = lshr i32 %89, 15
  %91 = and i32 %90, 15
  %92 = and i32 %89, 128
  %93 = icmp eq i32 %92, 0
  br i1 %84, label %94, label %98

94:                                               ; preds = %79
  br i1 %93, label %96, label %95, !prof !17

95:                                               ; preds = %94
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 1981, i32 noundef 9, ptr noundef null) #18
  br label %96

96:                                               ; preds = %95, %94
  %97 = getelementptr %struct.usb_device, ptr %88, i32 0, i32 22, i32 %91
  br label %102

98:                                               ; preds = %79
  br i1 %93, label %99, label %100, !prof !19

99:                                               ; preds = %98
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 1984, i32 noundef 9, ptr noundef null) #18
  br label %100

100:                                              ; preds = %99, %98
  %101 = getelementptr %struct.usb_device, ptr %88, i32 0, i32 21, i32 %91
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi ptr [ %97, %96 ], [ %101, %100 ]
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %104, i32 0, i32 4
  %108 = load i16, ptr %107, align 1
  %109 = and i16 %108, 2047
  %110 = zext i16 %109 to i32
  br label %111

111:                                              ; preds = %106, %102
  %112 = phi i32 [ %110, %106 ], [ 0, %102 ]
  %113 = add nuw nsw i32 %112, 2047
  %114 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 15
  br label %115

115:                                              ; preds = %207, %111
  %116 = phi i32 [ %86, %111 ], [ %184, %207 ]
  %117 = phi i32 [ %66, %111 ], [ %199, %207 ]
  %118 = phi ptr [ %80, %111 ], [ %200, %207 ]
  %119 = phi i32 [ %81, %111 ], [ %201, %207 ]
  %120 = phi i32 [ %25, %111 ], [ %171, %207 ]
  %121 = phi i32 [ %83, %111 ], [ %202, %207 ]
  %122 = phi ptr [ %64, %111 ], [ %204, %207 ]
  %123 = getelementptr inbounds %struct.ehci_qtd, ptr %122, i32 0, i32 3
  store i32 %121, ptr %123, align 4
  %124 = getelementptr inbounds %struct.ehci_qtd, ptr %122, i32 0, i32 4
  store i32 0, ptr %124, align 32
  %125 = and i32 %121, 4095
  %126 = sub nuw nsw i32 4096, %125
  %127 = icmp ugt i32 %126, %119
  br i1 %127, label %164, label %128, !prof !17

128:                                              ; preds = %115
  %129 = icmp ult i32 %126, %119
  br i1 %129, label %130, label %158

130:                                              ; preds = %128
  %131 = add i32 %121, 4096
  %132 = and i32 %131, -4096
  %133 = getelementptr %struct.ehci_qtd, ptr %122, i32 0, i32 3, i32 1
  store i32 %132, ptr %133, align 4
  %134 = getelementptr %struct.ehci_qtd, ptr %122, i32 0, i32 4, i32 1
  store i32 0, ptr %134, align 4
  %135 = sub nuw nsw i32 8192, %125
  %136 = call i32 @llvm.umin.i32(i32 %135, i32 %119) #18
  %137 = icmp ult i32 %135, %119
  br i1 %137, label %138, label %158

138:                                              ; preds = %130
  %139 = add i32 %132, 4096
  %140 = getelementptr %struct.ehci_qtd, ptr %122, i32 0, i32 3, i32 2
  store i32 %139, ptr %140, align 4
  %141 = getelementptr %struct.ehci_qtd, ptr %122, i32 0, i32 4, i32 2
  store i32 0, ptr %141, align 4
  %142 = add nuw nsw i32 %136, 4096
  %143 = call i32 @llvm.umin.i32(i32 %142, i32 %119) #18
  %144 = icmp ult i32 %142, %119
  br i1 %144, label %145, label %158

145:                                              ; preds = %138
  %146 = add i32 %132, 8192
  %147 = getelementptr %struct.ehci_qtd, ptr %122, i32 0, i32 3, i32 3
  store i32 %146, ptr %147, align 4
  %148 = getelementptr %struct.ehci_qtd, ptr %122, i32 0, i32 4, i32 3
  store i32 0, ptr %148, align 4
  %149 = add nuw nsw i32 %143, 4096
  %150 = call i32 @llvm.umin.i32(i32 %149, i32 %119) #18
  %151 = icmp ult i32 %149, %119
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = add i32 %132, 12288
  %154 = getelementptr %struct.ehci_qtd, ptr %122, i32 0, i32 3, i32 4
  store i32 %153, ptr %154, align 4
  %155 = getelementptr %struct.ehci_qtd, ptr %122, i32 0, i32 4, i32 4
  store i32 0, ptr %155, align 4
  %156 = add i32 %150, 4096
  %157 = call i32 @llvm.umin.i32(i32 %156, i32 %119) #18
  br label %158

158:                                              ; preds = %152, %145, %138, %130, %128
  %159 = phi i32 [ %126, %128 ], [ %136, %130 ], [ %143, %138 ], [ %150, %145 ], [ %157, %152 ]
  %160 = icmp eq i32 %159, %119
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = srem i32 %159, %112
  %163 = sub i32 %159, %162
  br label %164

164:                                              ; preds = %161, %158, %115
  %165 = phi i32 [ %163, %161 ], [ %119, %158 ], [ %119, %115 ]
  %166 = shl i32 %165, 16
  %167 = or i32 %166, %116
  %168 = getelementptr inbounds %struct.ehci_qtd, ptr %122, i32 0, i32 2
  store i32 %167, ptr %168, align 8
  %169 = getelementptr inbounds %struct.ehci_qtd, ptr %122, i32 0, i32 8
  store i32 %165, ptr %169, align 4
  %170 = sub i32 %119, %165
  %171 = sub i32 %120, %165
  %172 = add i32 %165, %121
  br i1 %84, label %179, label %173

173:                                              ; preds = %164
  %174 = load ptr, ptr %114, align 4
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.ehci_qh_hw, ptr %175, i32 0, i32 5
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.ehci_qtd, ptr %122, i32 0, i32 1
  store i32 %177, ptr %178, align 4
  br label %179

179:                                              ; preds = %173, %164
  %180 = add i32 %113, %165
  %181 = and i32 %180, %112
  %182 = icmp eq i32 %181, 0
  %183 = xor i32 %116, -2147483648
  %184 = select i1 %182, i32 %183, i32 %116
  %185 = icmp slt i32 %170, 1
  br i1 %185, label %186, label %198, !prof !17

186:                                              ; preds = %179
  %187 = add i32 %117, -1
  %188 = icmp slt i32 %187, 1
  %189 = icmp slt i32 %171, 1
  %190 = select i1 %188, i1 true, i1 %189
  br i1 %190, label %216, label %191

191:                                              ; preds = %186
  %192 = call ptr @sg_next(ptr noundef %118) #18
  %193 = getelementptr inbounds %struct.scatterlist, ptr %192, i32 0, i32 3
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr inbounds %struct.scatterlist, ptr %192, i32 0, i32 4
  %196 = load i32, ptr %195, align 4
  %197 = call i32 @llvm.smin.i32(i32 %196, i32 %171)
  br label %198

198:                                              ; preds = %191, %179
  %199 = phi i32 [ %187, %191 ], [ %117, %179 ]
  %200 = phi ptr [ %192, %191 ], [ %118, %179 ]
  %201 = phi i32 [ %197, %191 ], [ %170, %179 ]
  %202 = phi i32 [ %194, %191 ], [ %172, %179 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !32
  %203 = load ptr, ptr %9, align 8
  %204 = call ptr @dma_pool_alloc(ptr noundef %203, i32 noundef %3, ptr noundef nonnull %6) #18
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %274

207:                                              ; preds = %198
  %208 = load i32, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(96) %204, i8 0, i32 96, i1 false) #18
  %209 = getelementptr inbounds %struct.ehci_qtd, ptr %204, i32 0, i32 5
  store i32 %208, ptr %209, align 4
  %210 = getelementptr inbounds %struct.ehci_qtd, ptr %204, i32 0, i32 2
  store i32 64, ptr %210, align 8
  store i32 1, ptr %204, align 32
  %211 = getelementptr inbounds %struct.ehci_qtd, ptr %204, i32 0, i32 1
  store i32 1, ptr %211, align 4
  %212 = getelementptr inbounds %struct.ehci_qtd, ptr %204, i32 0, i32 6
  store volatile ptr %212, ptr %212, align 4
  %213 = getelementptr inbounds %struct.ehci_qtd, ptr %204, i32 0, i32 6, i32 1
  store ptr %212, ptr %213, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  %214 = getelementptr inbounds %struct.ehci_qtd, ptr %204, i32 0, i32 7
  store ptr %1, ptr %214, align 32
  store i32 %208, ptr %122, align 32
  %215 = load ptr, ptr %21, align 4
  store ptr %212, ptr %21, align 4
  store ptr %2, ptr %212, align 4
  store ptr %215, ptr %213, align 4
  store volatile ptr %212, ptr %215, align 4
  br label %115

216:                                              ; preds = %186
  %217 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %218 = load i32, ptr %217, align 4
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %216
  %222 = load i32, ptr %26, align 4
  %223 = and i32 %222, -1073741824
  %224 = icmp eq i32 %223, -2147483648
  br i1 %224, label %225, label %227, !prof !17

225:                                              ; preds = %221, %216
  %226 = getelementptr inbounds %struct.ehci_qtd, ptr %122, i32 0, i32 1
  store i32 1, ptr %226, align 4
  br label %227

227:                                              ; preds = %225, %221
  %228 = load i32, ptr %24, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %265, label %230, !prof !19

230:                                              ; preds = %227
  %231 = load i32, ptr %26, align 4
  %232 = and i32 %231, -1073741824
  %233 = icmp eq i32 %232, -2147483648
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = and i32 %184, 2147483647
  %236 = xor i32 %235, -2147483392
  br label %247

237:                                              ; preds = %230
  %238 = and i32 %231, 128
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %265

240:                                              ; preds = %237
  %241 = load i32, ptr %217, align 4
  %242 = and i32 %241, 64
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %265, label %244

244:                                              ; preds = %240
  %245 = urem i32 %228, %112
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %265

247:                                              ; preds = %244, %234
  %248 = phi i32 [ %236, %234 ], [ %184, %244 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !32
  %249 = load ptr, ptr %9, align 8
  %250 = call ptr @dma_pool_alloc(ptr noundef %249, i32 noundef %3, ptr noundef nonnull %5) #18
  %251 = icmp eq ptr %250, null
  br i1 %251, label %264, label %252

252:                                              ; preds = %247
  %253 = load i32, ptr %5, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(96) %250, i8 0, i32 96, i1 false) #18
  %254 = getelementptr inbounds %struct.ehci_qtd, ptr %250, i32 0, i32 5
  store i32 %253, ptr %254, align 4
  %255 = getelementptr inbounds %struct.ehci_qtd, ptr %250, i32 0, i32 2
  store i32 64, ptr %255, align 8
  store i32 1, ptr %250, align 32
  %256 = getelementptr inbounds %struct.ehci_qtd, ptr %250, i32 0, i32 1
  store i32 1, ptr %256, align 4
  %257 = getelementptr inbounds %struct.ehci_qtd, ptr %250, i32 0, i32 6
  store volatile ptr %257, ptr %257, align 4
  %258 = getelementptr inbounds %struct.ehci_qtd, ptr %250, i32 0, i32 6, i32 1
  store ptr %257, ptr %258, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  %259 = getelementptr inbounds %struct.ehci_qtd, ptr %250, i32 0, i32 7
  store ptr %1, ptr %259, align 32
  store i32 %253, ptr %122, align 32
  %260 = load ptr, ptr %21, align 4
  store ptr %257, ptr %21, align 4
  store ptr %2, ptr %257, align 4
  store ptr %260, ptr %258, align 4
  store volatile ptr %257, ptr %260, align 4
  %261 = getelementptr inbounds %struct.ehci_qtd, ptr %250, i32 0, i32 3
  store i32 0, ptr %261, align 4
  %262 = getelementptr inbounds %struct.ehci_qtd, ptr %250, i32 0, i32 4
  store i32 0, ptr %262, align 32
  store i32 %248, ptr %255, align 8
  %263 = getelementptr inbounds %struct.ehci_qtd, ptr %250, i32 0, i32 8
  store i32 0, ptr %263, align 4
  br label %265

264:                                              ; preds = %247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %274

265:                                              ; preds = %252, %244, %240, %237, %227
  %266 = phi i32 [ %167, %227 ], [ %167, %244 ], [ %248, %252 ], [ %167, %237 ], [ %167, %240 ]
  %267 = phi ptr [ %122, %227 ], [ %122, %244 ], [ %250, %252 ], [ %122, %237 ], [ %122, %240 ]
  %268 = load i32, ptr %217, align 4
  %269 = and i32 %268, 128
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %288, !prof !17

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.ehci_qtd, ptr %267, i32 0, i32 2
  %273 = or i32 %266, 32768
  store i32 %273, ptr %272, align 8
  br label %288

274:                                              ; preds = %264, %206, %50
  %275 = load ptr, ptr %2, align 4
  %276 = icmp eq ptr %275, %2
  br i1 %276, label %288, label %277

277:                                              ; preds = %277, %274
  %278 = phi ptr [ %279, %277 ], [ %275, %274 ]
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr i8, ptr %278, i32 -56
  %281 = getelementptr inbounds %struct.list_head, ptr %278, i32 0, i32 1
  %282 = load ptr, ptr %281, align 4
  %283 = getelementptr inbounds %struct.list_head, ptr %279, i32 0, i32 1
  store ptr %282, ptr %283, align 4
  store volatile ptr %279, ptr %282, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %278, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %281, align 4
  %284 = load ptr, ptr %9, align 8
  %285 = getelementptr i8, ptr %278, i32 -4
  %286 = load i32, ptr %285, align 4
  call void @dma_pool_free(ptr noundef %284, ptr noundef %280, i32 noundef %286) #18
  %287 = icmp eq ptr %279, %2
  br i1 %287, label %288, label %277

288:                                              ; preds = %277, %274, %271, %265, %13
  %289 = phi ptr [ %2, %271 ], [ %2, %265 ], [ null, %13 ], [ null, %274 ], [ null, %277 ]
  ret ptr %289
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @qtd_list_free(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 51
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %3, %5 ], [ %9, %7 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %8, i32 -56
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %9, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr i8, ptr %8, i32 -4
  %16 = load i32, ptr %15, align 4
  tail call void @dma_pool_free(ptr noundef %14, ptr noundef %10, i32 noundef %16) #18
  %17 = icmp eq ptr %9, %1
  br i1 %17, label %18, label %7

18:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_link_urb_to_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @qh_append_tds(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11, !prof !19

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @qh_make(ptr noundef %0, ptr noundef %1)
  store ptr %9, ptr %4, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %65, label %11, !prof !19

11:                                               ; preds = %8, %5
  %12 = phi ptr [ %9, %8 ], [ %6, %5 ]
  %13 = load volatile ptr, ptr %2, align 4
  %14 = icmp eq ptr %13, %2
  %15 = getelementptr i8, ptr %13, i32 -56
  %16 = select i1 %14, ptr null, ptr %15, !prof !19
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %18, label %28, !prof !19

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 32512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr inbounds %struct.ehci_qh_hw, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -128
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %23, %18, %11
  %29 = icmp eq ptr %16, null
  br i1 %29, label %65, label %30, !prof !19

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.ehci_qtd, ptr %16, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  store i32 64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.ehci_qh, ptr %12, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ehci_qtd, ptr %34, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 32 dereferenceable(96) %34, ptr noundef nonnull align 32 dereferenceable(96) %16, i32 96, i1 false)
  store i32 %36, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ehci_qtd, ptr %16, i32 0, i32 6
  %38 = getelementptr inbounds %struct.ehci_qtd, ptr %16, i32 0, i32 6, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store volatile ptr %40, ptr %39, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %38, align 4
  %42 = getelementptr inbounds %struct.ehci_qtd, ptr %34, i32 0, i32 6
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store ptr %43, ptr %42, align 4
  %45 = getelementptr inbounds %struct.ehci_qtd, ptr %34, i32 0, i32 6, i32 1
  store ptr %2, ptr %45, align 4
  store volatile ptr %42, ptr %2, align 4
  %46 = load volatile ptr, ptr %2, align 4
  %47 = icmp eq ptr %46, %2
  br i1 %47, label %55, label %48

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.ehci_qh, ptr %12, i32 0, i32 3
  %50 = getelementptr inbounds %struct.ehci_qh, ptr %12, i32 0, i32 3, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %51, ptr %54, align 4
  store ptr %46, ptr %51, align 4
  store ptr %49, ptr %53, align 4
  store ptr %53, ptr %50, align 4
  br label %55

55:                                               ; preds = %48, %30
  %56 = getelementptr inbounds %struct.ehci_qtd, ptr %16, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 32 dereferenceable(96) %16, i8 0, i32 96, i1 false) #18
  store i32 %57, ptr %56, align 4
  store i32 64, ptr %31, align 8
  store i32 1, ptr %16, align 32
  %58 = getelementptr inbounds %struct.ehci_qtd, ptr %16, i32 0, i32 1
  store i32 1, ptr %58, align 4
  store volatile ptr %37, ptr %37, align 4
  store ptr %37, ptr %38, align 4
  store ptr %16, ptr %33, align 4
  %59 = load i32, ptr %56, align 4
  %60 = getelementptr inbounds %struct.ehci_qh, ptr %12, i32 0, i32 3, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 -56
  store i32 %59, ptr %62, align 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #18, !srcloc !39
  tail call void @arm_heavy_mb() #18
  %63 = getelementptr inbounds %struct.ehci_qtd, ptr %34, i32 0, i32 2
  store i32 %32, ptr %63, align 8
  %64 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  store ptr %12, ptr %64, align 4
  br label %65

65:                                               ; preds = %55, %28, %8
  %66 = phi ptr [ %12, %28 ], [ %12, %55 ], [ null, %8 ]
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @qh_make(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ehci_qh_alloc(ptr noundef %0, i32 noundef 2592)
  %4 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %3, null
  br i1 %8, label %224, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 7
  %13 = and i32 %12, 3840
  %14 = lshr i32 %11, 8
  %15 = and i32 %14, 127
  %16 = or i32 %13, %15
  %17 = and i32 %11, 128
  %18 = lshr i32 %11, 30
  %19 = icmp eq i32 %17, 0
  %20 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 21
  %21 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 22
  %22 = select i1 %19, ptr %21, ptr %20
  %23 = lshr i32 %11, 15
  %24 = and i32 %23, 15
  %25 = getelementptr ptr, ptr %22, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %26, i32 0, i32 4
  %28 = load i16, ptr %27, align 1
  %29 = and i16 %28, 2047
  %30 = zext i16 %29 to i32
  %31 = lshr i16 %28, 11
  %32 = and i16 %31, 3
  %33 = add nuw nsw i16 %32, 1
  %34 = zext i16 %33 to i32
  %35 = icmp ugt i16 %29, 1024
  br i1 %35, label %178, label %36

36:                                               ; preds = %9
  %37 = icmp eq i32 %18, 1
  br i1 %37, label %38, label %134

38:                                               ; preds = %36
  %39 = mul nuw nsw i32 %34, %30
  %40 = tail call i32 @usb_calc_bus_time(i32 noundef 3, i32 noundef %17, i32 noundef 0, i32 noundef %39) #18
  %41 = add i32 %40, 999
  %42 = sdiv i32 %41, 1000
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 9
  store i8 %43, ptr %44, align 2
  %45 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 6
  store i16 29999, ptr %45, align 2
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %84

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 10
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 12
  store i8 0, ptr %52, align 1
  %53 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 25
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -2
  %56 = icmp ult i32 %55, 6
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 23
  %59 = load i32, ptr %58, align 4
  %60 = shl i32 %59, 3
  %61 = icmp ugt i32 %54, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57, %50
  %63 = phi i32 [ 1, %50 ], [ %60, %57 ]
  store i32 %63, ptr %53, align 4
  br label %64

64:                                               ; preds = %62, %57
  %65 = phi i32 [ %54, %57 ], [ %63, %62 ]
  %66 = lshr i32 %65, 3
  %67 = trunc i32 %66 to i16
  %68 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 5
  store i16 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %70, i32 0, i32 5
  %72 = load i8, ptr %71, align 2
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %73, -1
  %75 = shl nuw i32 1, %74
  %76 = load i32, ptr %53, align 4
  %77 = tail call i32 @llvm.umin.i32(i32 %75, i32 %76)
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 64)
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 11
  store i8 %79, ptr %80, align 4
  %81 = lshr i32 %78, 3
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 12
  store i8 %82, ptr %83, align 1
  br label %134

84:                                               ; preds = %38
  %85 = tail call i32 @usb_calc_bus_time(i32 noundef %48, i32 noundef %17, i32 noundef 0, i32 noundef %30) #18
  %86 = sdiv i32 %85, 125000
  %87 = trunc i32 %86 to i8
  %88 = add i8 %87, 1
  %89 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 12
  store i8 %88, ptr %89, align 1
  %90 = load i8, ptr %44, align 2
  %91 = add i8 %90, 1
  %92 = select i1 %19, i8 %91, i8 1
  %93 = select i1 %19, i8 1, i8 %91
  store i8 %92, ptr %44, align 2
  %94 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 10
  store i8 %93, ptr %94, align 1
  %95 = icmp eq ptr %7, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.usb_tt, ptr %7, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, 999
  br label %100

100:                                              ; preds = %96, %84
  %101 = phi i32 [ %99, %96 ], [ 999, %84 ]
  %102 = load ptr, ptr %4, align 4
  %103 = getelementptr inbounds %struct.usb_device, ptr %102, i32 0, i32 4
  %104 = load i32, ptr %103, align 4
  %105 = tail call i32 @usb_calc_bus_time(i32 noundef %104, i32 noundef %17, i32 noundef 0, i32 noundef %30) #18
  %106 = add i32 %101, %105
  %107 = sdiv i32 %106, 1000
  %108 = trunc i32 %107 to i16
  %109 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 3
  store i16 %108, ptr %109, align 4
  %110 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 25
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 23
  %113 = load i32, ptr %112, align 4
  %114 = icmp ugt i32 %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  store i32 %113, ptr %110, align 4
  br label %116

116:                                              ; preds = %115, %100
  %117 = phi i32 [ %113, %115 ], [ %111, %100 ]
  %118 = trunc i32 %117 to i16
  %119 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 5
  store i16 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %121, i32 0, i32 5
  %123 = load i8, ptr %122, align 2
  %124 = tail call i8 @llvm.umin.i8(i8 %123, i8 8)
  %125 = zext i8 %124 to i32
  %126 = tail call i32 @llvm.ctlz.i32(i32 %125, i1 false) #18, !range !40
  %127 = lshr i32 -2147483648, %126
  %128 = load i32, ptr %110, align 4
  %129 = tail call i32 @llvm.umin.i32(i32 %127, i32 %128)
  %130 = trunc i32 %129 to i8
  %131 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 12
  store i8 %130, ptr %131, align 1
  %132 = shl i8 %130, 3
  %133 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 11
  store i8 %132, ptr %133, align 4
  br label %134

134:                                              ; preds = %116, %64, %36
  %135 = load ptr, ptr %4, align 4
  %136 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7
  store ptr %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 7, i32 1
  store ptr %138, ptr %139, align 4
  %140 = load ptr, ptr %4, align 4
  %141 = getelementptr inbounds %struct.usb_device, ptr %140, i32 0, i32 4
  %142 = load i32, ptr %141, align 4
  switch i32 %142, label %178 [
    i32 1, label %143
    i32 2, label %145
    i32 3, label %166
  ]

143:                                              ; preds = %134
  %144 = or i32 %16, 4096
  br label %145

145:                                              ; preds = %143, %134
  %146 = phi i32 [ %16, %134 ], [ %144, %143 ]
  %147 = icmp eq i32 %18, 2
  %148 = or i32 %146, 134234112
  %149 = select i1 %147, i32 %148, i32 %146
  %150 = shl nuw nsw i32 %30, 16
  %151 = or i32 %149, %150
  %152 = getelementptr inbounds %struct.usb_device, ptr %140, i32 0, i32 9
  %153 = load i32, ptr %152, align 8
  %154 = shl i32 %153, 23
  %155 = or i32 %154, 1073741824
  %156 = icmp eq ptr %7, null
  br i1 %156, label %202, label %157

157:                                              ; preds = %145
  %158 = load ptr, ptr %7, align 4
  %159 = getelementptr i8, ptr %0, i32 -288
  %160 = load ptr, ptr %159, align 8
  %161 = icmp eq ptr %158, %160
  br i1 %161, label %202, label %162

162:                                              ; preds = %157
  %163 = load i32, ptr %158, align 8
  %164 = shl i32 %163, 16
  %165 = or i32 %164, %155
  br label %202

166:                                              ; preds = %134
  switch i32 %18, label %173 [
    i32 2, label %167
    i32 3, label %169
  ]

167:                                              ; preds = %166
  %168 = or i32 %16, 1077960704
  br label %202

169:                                              ; preds = %166
  %170 = shl nuw nsw i32 %30, 16
  %171 = or i32 %170, %16
  %172 = or i32 %171, 1073750016
  br label %202

173:                                              ; preds = %166
  %174 = shl nuw nsw i32 %30, 16
  %175 = or i32 %174, %16
  %176 = or i32 %175, 8192
  %177 = shl i32 %34, 30
  br label %202

178:                                              ; preds = %134, %9
  %179 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 3
  %180 = load volatile ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, %179
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 2
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %182, %178
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/ehci-mem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 59, 0\0A.popsection", ""() #18, !srcloc !20
  unreachable

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 5
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 51
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds %struct.ehci_qtd, ptr %189, i32 0, i32 5
  %195 = load i32, ptr %194, align 4
  tail call void @dma_pool_free(ptr noundef %193, ptr noundef nonnull %189, i32 noundef %195) #18
  br label %196

196:                                              ; preds = %191, %187
  %197 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 50
  %198 = load ptr, ptr %197, align 4
  %199 = load ptr, ptr %3, align 4
  %200 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 1
  %201 = load i32, ptr %200, align 4
  tail call void @dma_pool_free(ptr noundef %198, ptr noundef %199, i32 noundef %201) #18
  tail call void @kfree(ptr noundef nonnull %3) #18
  br label %224

202:                                              ; preds = %173, %169, %167, %162, %157, %145
  %203 = phi i32 [ 1073741824, %167 ], [ 1073741824, %169 ], [ %177, %173 ], [ %165, %162 ], [ %155, %157 ], [ %155, %145 ]
  %204 = phi i32 [ %168, %167 ], [ %172, %169 ], [ %176, %173 ], [ %151, %162 ], [ %151, %157 ], [ %151, %145 ]
  %205 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 9
  store i8 3, ptr %205, align 4
  %206 = load ptr, ptr %3, align 4
  %207 = getelementptr inbounds %struct.ehci_qh_hw, ptr %206, i32 0, i32 1
  store i32 %204, ptr %207, align 4
  %208 = getelementptr inbounds %struct.ehci_qh_hw, ptr %206, i32 0, i32 2
  store i32 %203, ptr %208, align 8
  %209 = lshr exact i32 %17, 7
  %210 = xor i32 %209, 1
  %211 = getelementptr inbounds %struct.ehci_qh, ptr %3, i32 0, i32 13
  %212 = trunc i32 %210 to i8
  %213 = load i8, ptr %211, align 4
  %214 = and i8 %213, -2
  %215 = or i8 %214, %212
  store i8 %215, ptr %211, align 4
  %216 = load ptr, ptr %4, align 4
  %217 = getelementptr %struct.usb_device, ptr %216, i32 0, i32 10, i32 %210
  %218 = load i32, ptr %217, align 4
  %219 = load i32, ptr %10, align 4
  %220 = lshr i32 %219, 15
  %221 = and i32 %220, 15
  %222 = shl nuw nsw i32 1, %221
  %223 = or i32 %222, %218
  store i32 %223, ptr %217, align 4
  br label %224

224:                                              ; preds = %202, %196, %2
  %225 = phi ptr [ null, %196 ], [ %3, %202 ], [ null, %2 ]
  ret ptr %225
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_calc_bus_time(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iso_stream_schedule(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 23
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 3
  %7 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 3
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, %9
  %12 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 8
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = sub nsw i32 0, %14
  %16 = getelementptr inbounds %struct.ehci_iso_sched, ptr %8, i32 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  %21 = shl i32 %17, 3
  %22 = select i1 %20, i32 %21, i32 %17
  br i1 %11, label %118, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %0, i32 -88
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, %25
  br i1 %28, label %118, label %29, !prof !17

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 5, i32 6
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, 29999
  br i1 %32, label %33, label %108

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = tail call fastcc ptr @find_tt(ptr noundef %35)
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = ptrtoint ptr %36 to i32
  br label %234

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 63
  tail call fastcc void @compute_tt_budget(ptr noundef %41, ptr noundef %36)
  %42 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 54
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = xor i32 %43, -1
  %46 = shl i32 %45, 3
  %47 = add nsw i32 %14, -1
  %48 = and i32 %46, %47
  %49 = add i32 %48, %14
  %50 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 38
  %51 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 5, i32 9
  %52 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 5, i32 11
  br label %53

53:                                               ; preds = %84, %40
  %54 = phi i32 [ %49, %40 ], [ %55, %84 ]
  %55 = add i32 %54, -1
  %56 = load i8, ptr %18, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr %50, align 4
  %60 = load i8, ptr %51, align 2
  %61 = zext i8 %60 to i32
  %62 = sub i32 %59, %61
  %63 = load i8, ptr %52, align 4
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %64, -1
  %66 = and i32 %65, %55
  %67 = icmp ult i32 %66, 64
  br i1 %67, label %71, label %90

68:                                               ; preds = %71
  %69 = add i32 %72, %64
  %70 = icmp ult i32 %69, 64
  br i1 %70, label %71, label %90

71:                                               ; preds = %68, %58
  %72 = phi i32 [ %69, %68 ], [ %66, %58 ]
  %73 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %72
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ult i32 %62, %75
  br i1 %76, label %84, label %68

77:                                               ; preds = %53
  %78 = and i32 %55, 6
  %79 = icmp eq i32 %78, 6
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = tail call fastcc i32 @sitd_slot_ok(ptr noundef %0, ptr noundef %2, i32 noundef %55, ptr noundef %36)
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  br label %84

84:                                               ; preds = %80, %77, %71
  %85 = phi i32 [ 0, %77 ], [ %83, %80 ], [ 0, %71 ]
  %86 = icmp ugt i32 %55, %48
  %87 = icmp eq i32 %85, 0
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %53, label %89

89:                                               ; preds = %84
  br i1 %87, label %234, label %90

90:                                               ; preds = %89, %68, %58
  %91 = lshr i32 %55, 3
  %92 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 5, i32 5
  %93 = load i16, ptr %92, align 4
  %94 = zext i16 %93 to i32
  %95 = add nuw nsw i32 %94, 65535
  %96 = and i32 %95, %91
  %97 = trunc i32 %96 to i16
  store i16 %97, ptr %30, align 2
  %98 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 5, i32 12
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = add nuw nsw i32 %100, 255
  %102 = and i32 %101, %96
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 5, i32 7
  store i8 %103, ptr %104, align 4
  %105 = trunc i32 %55 to i8
  %106 = and i8 %105, 7
  %107 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 5, i32 8
  store i8 %106, ptr %107, align 1
  tail call fastcc void @reserve_release_iso_bandwidth(ptr noundef %0, ptr noundef %2, i32 noundef 1)
  br label %115

108:                                              ; preds = %29
  %109 = zext i16 %31 to i32
  %110 = shl nuw nsw i32 %109, 3
  %111 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 5, i32 8
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = add nuw nsw i32 %110, %113
  br label %115

115:                                              ; preds = %108, %90
  %116 = phi i32 [ %55, %90 ], [ %114, %108 ]
  %117 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 6
  store i32 %116, ptr %117, align 4
  br label %118

118:                                              ; preds = %115, %23, %3
  %119 = phi i1 [ true, %115 ], [ false, %23 ], [ false, %3 ]
  %120 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 58
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 4096
  %123 = icmp ne i32 %122, 0
  %124 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 8
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.ehci_regs, ptr %125, i32 0, i32 3
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #18
  tail call void asm sideeffect "dsb ", "~{memory}"() #18
  %128 = and i32 %127, 7
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %123, i1 %129, i1 false
  br i1 %130, label %131, label %135, !prof !21

131:                                              ; preds = %118
  %132 = load ptr, ptr %124, align 8
  %133 = getelementptr inbounds %struct.ehci_regs, ptr %132, i32 0, i32 3
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #18, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #18, !srcloc !9
  br label %135

135:                                              ; preds = %131, %118
  %136 = phi i32 [ %134, %131 ], [ %127, %118 ]
  %137 = add i32 %6, -1
  %138 = and i32 %136, %137
  %139 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 27
  %140 = load i32, ptr %139, align 8
  %141 = icmp eq i32 %140, 0
  %142 = add i32 %138, %140
  %143 = add i32 %138, 9
  %144 = and i32 %143, -8
  %145 = select i1 %141, i32 %144, i32 %142
  %146 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 36
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %135
  %150 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 34
  %151 = load i32, ptr %150, align 4
  br label %155

152:                                              ; preds = %135
  %153 = lshr i32 %138, 3
  %154 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 34
  store i32 %153, ptr %154, align 4
  br label %155

155:                                              ; preds = %152, %149
  %156 = phi i32 [ %151, %149 ], [ %153, %152 ]
  %157 = shl i32 %156, 3
  %158 = sub i32 %145, %157
  %159 = and i32 %158, %137
  %160 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 6
  %161 = load i32, ptr %160, align 4
  %162 = sub i32 %161, %157
  %163 = and i32 %162, %137
  br i1 %119, label %209, label %164, !prof !19

164:                                              ; preds = %155
  %165 = sub i32 %138, %157
  %166 = and i32 %165, %137
  %167 = icmp ult i32 %163, %14
  %168 = select i1 %11, i1 %167, i1 false
  br i1 %168, label %234, label %169, !prof !19

169:                                              ; preds = %164
  %170 = add i32 %166, %14
  %171 = icmp ule i32 %163, %170
  %172 = select i1 %11, i1 true, i1 %171
  br i1 %172, label %173, label %182, !prof !17

173:                                              ; preds = %169
  %174 = icmp ult i32 %163, %159
  br i1 %174, label %175, label %180

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %177 = load i32, ptr %176, align 4
  %178 = and i32 %177, 2
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %209, !prof !17

180:                                              ; preds = %175, %173
  %181 = icmp ult i32 %163, %166
  br i1 %181, label %189, label %214, !prof !19

182:                                              ; preds = %169
  %183 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %184 = load i32, ptr %183, align 4
  %185 = and i32 %184, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %209

187:                                              ; preds = %182
  %188 = add i32 %166, %6
  br label %189

189:                                              ; preds = %187, %180
  %190 = phi i32 [ %166, %180 ], [ %188, %187 ]
  %191 = phi i32 [ 0, %180 ], [ %6, %187 ]
  %192 = xor i32 %163, -1
  %193 = add i32 %192, %14
  %194 = add i32 %193, %190
  %195 = and i32 %194, %15
  %196 = icmp ult i32 %195, %22
  br i1 %196, label %202, label %197

197:                                              ; preds = %189
  %198 = sub i32 %22, %14
  br i1 %11, label %202, label %199

199:                                              ; preds = %197
  tail call fastcc void @iso_sched_free(ptr noundef %2, ptr noundef %8)
  %200 = udiv i32 %22, %14
  %201 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 26
  store i32 %200, ptr %201, align 4
  br label %214

202:                                              ; preds = %197, %189
  %203 = phi i32 [ %198, %197 ], [ %195, %189 ]
  %204 = udiv i32 %203, %14
  %205 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 26
  store i32 %204, ptr %205, align 4
  %206 = icmp eq ptr %8, null
  br i1 %206, label %214, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.ehci_iso_sched, ptr %8, i32 0, i32 2
  store i32 %204, ptr %208, align 4
  br label %214

209:                                              ; preds = %182, %175, %155
  %210 = sub i32 %163, %159
  %211 = add nsw i32 %14, -1
  %212 = and i32 %210, %211
  %213 = add i32 %212, %159
  br label %214

214:                                              ; preds = %209, %207, %202, %199, %180
  %215 = phi i32 [ %213, %209 ], [ %163, %180 ], [ %163, %207 ], [ %163, %202 ], [ %163, %199 ]
  %216 = phi i32 [ 0, %209 ], [ 0, %180 ], [ %191, %207 ], [ %191, %202 ], [ %191, %199 ]
  %217 = phi i32 [ 0, %209 ], [ 0, %180 ], [ %203, %207 ], [ %203, %202 ], [ %22, %199 ]
  %218 = phi i32 [ 0, %209 ], [ 0, %180 ], [ 0, %207 ], [ 0, %202 ], [ 1, %199 ]
  %219 = phi ptr [ %8, %209 ], [ %8, %180 ], [ %8, %207 ], [ null, %202 ], [ null, %199 ]
  %220 = sub i32 %22, %14
  %221 = add i32 %220, %215
  %222 = add i32 %216, %6
  %223 = icmp ult i32 %221, %222
  br i1 %223, label %224, label %234, !prof !17

224:                                              ; preds = %214
  %225 = add i32 %215, %157
  %226 = add i32 %217, %225
  %227 = and i32 %226, %137
  store i32 %227, ptr %160, align 4
  %228 = and i32 %225, %137
  %229 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 23
  store i32 %228, ptr %229, align 4
  %230 = load i8, ptr %18, align 1
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %224
  %233 = ashr i32 %228, 3
  store i32 %233, ptr %229, align 4
  br label %237

234:                                              ; preds = %214, %164, %89, %38
  %235 = phi i32 [ -27, %164 ], [ -27, %214 ], [ -28, %89 ], [ %39, %38 ]
  %236 = phi ptr [ %8, %164 ], [ %219, %214 ], [ %8, %89 ], [ %8, %38 ]
  tail call fastcc void @iso_sched_free(ptr noundef %2, ptr noundef %236)
  store ptr null, ptr %7, align 4
  br label %237

237:                                              ; preds = %234, %232, %224
  %238 = phi i32 [ %235, %234 ], [ %218, %232 ], [ %218, %224 ]
  ret i32 %238
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @iso_stream_alloc() unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 88) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4, !prof !19

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 3
  store volatile ptr %5, ptr %5, align 8
  %6 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 3, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 4
  store volatile ptr %7, ptr %7, align 8
  %8 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 4, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 6
  store i32 29999, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ehci_iso_stream, ptr %2, i32 0, i32 5, i32 6
  store i16 29999, ptr %10, align 2
  br label %11

11:                                               ; preds = %4, %0
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iso_stream_init(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 15
  %9 = and i32 %8, 15
  %10 = and i32 %7, 128
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %13, i32 0, i32 4
  %15 = load i16, ptr %14, align 1
  %16 = and i16 %15, 2047
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %71

21:                                               ; preds = %3
  %22 = shl nuw nsw i32 %10, 4
  %23 = lshr i16 %15, 11
  %24 = and i16 %23, 3
  %25 = add nuw nsw i16 %24, 1
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 2
  store i8 1, ptr %27, align 1
  %28 = or i32 %22, %17
  %29 = mul nuw nsw i32 %26, %17
  %30 = shl nuw nsw i32 %9, 8
  %31 = load i32, ptr %5, align 8
  %32 = or i32 %31, %30
  %33 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 12
  store i32 %28, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 13
  store i32 %26, ptr %35, align 4
  %36 = mul nuw nsw i32 %29, 56
  %37 = udiv i32 %36, 6
  %38 = mul nuw nsw i32 %37, 2083
  %39 = add nuw nsw i32 %38, 639481
  %40 = udiv i32 %39, 1000
  %41 = add nuw nsw i32 %40, 1004
  %42 = udiv i32 %41, 1000
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 9
  store i8 %43, ptr %44, align 2
  %45 = load ptr, ptr %12, align 4
  %46 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %45, i32 0, i32 5
  %47 = load i8, ptr %46, align 2
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %48, -1
  %50 = shl nuw i32 1, %49
  %51 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 25
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 @llvm.umin.i32(i32 %50, i32 %52)
  %54 = tail call i32 @llvm.umin.i32(i32 %53, i32 64)
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 11
  store i8 %55, ptr %56, align 4
  %57 = load i32, ptr %51, align 4
  %58 = trunc i32 %57 to i16
  %59 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 8
  store i16 %58, ptr %59, align 4
  %60 = load i32, ptr %51, align 4
  %61 = lshr i32 %60, 3
  %62 = trunc i32 %61 to i16
  %63 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 5
  store i16 %62, ptr %63, align 4
  %64 = trunc i32 %42 to i16
  %65 = shl nuw nsw i16 %64, 3
  %66 = and i16 %65, 2040
  %67 = trunc i32 %54 to i16
  %68 = udiv i16 %66, %67
  %69 = zext i16 %68 to i32
  %70 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 10
  store i32 %69, ptr %70, align 4
  br label %172

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 9
  %73 = load i32, ptr %72, align 8
  %74 = shl i32 %73, 24
  %75 = getelementptr i8, ptr %0, i32 -152
  %76 = load i16, ptr %75, align 8
  %77 = and i16 %76, 128
  %78 = icmp eq i16 %77, 0
  %79 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 8
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %80, align 4
  br i1 %78, label %86, label %82

82:                                               ; preds = %71
  %83 = getelementptr i8, ptr %0, i32 -288
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %81, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82, %71
  %87 = load i32, ptr %81, align 8
  %88 = shl i32 %87, 16
  %89 = or i32 %88, %74
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i32 [ %89, %86 ], [ %74, %82 ]
  %92 = shl nuw nsw i32 %9, 8
  %93 = or i32 %91, %92
  %94 = load i32, ptr %5, align 8
  %95 = or i32 %93, %94
  %96 = mul nuw nsw i32 %17, 56
  %97 = udiv i32 %96, 6
  %98 = mul nuw nsw i32 %97, 2083
  %99 = add nuw nsw i32 %98, 639481
  %100 = udiv i32 %99, 1000
  %101 = trunc i32 %100 to i16
  %102 = add nuw i16 %101, 1004
  %103 = udiv i16 %102, 1000
  %104 = trunc i16 %103 to i8
  %105 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 9
  store i8 %104, ptr %105, align 2
  %106 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 8
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.usb_tt, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = load i32, ptr %18, align 4
  %111 = tail call i32 @usb_calc_bus_time(i32 noundef %110, i32 noundef %10, i32 noundef 1, i32 noundef %17) #18
  %112 = add i32 %109, 999
  %113 = add i32 %112, %111
  %114 = sdiv i32 %113, 1000
  %115 = trunc i32 %114 to i16
  %116 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 3
  store i16 %115, ptr %116, align 4
  %117 = add nuw nsw i16 %16, 187
  %118 = udiv i16 %117, 188
  %119 = icmp eq i16 %16, 0
  %120 = select i1 %119, i16 1, i16 %118
  %121 = zext i16 %120 to i32
  br i1 %11, label %129, label %122

122:                                              ; preds = %90
  %123 = or i32 %95, -2147483648
  %124 = load i8, ptr %105, align 2
  %125 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 10
  store i8 %124, ptr %125, align 1
  store i8 1, ptr %105, align 2
  %126 = shl nuw nsw i32 4096, %121
  %127 = trunc i32 %126 to i16
  %128 = add i16 %127, -1023
  br label %137

129:                                              ; preds = %90
  %130 = add nsw i32 %121, -1
  %131 = getelementptr [6 x i8], ptr @iso_stream_init.smask_out, i32 0, i32 %130
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i16
  %134 = load i8, ptr %105, align 2
  %135 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 10
  %136 = load i8, ptr %135, align 1
  br label %137

137:                                              ; preds = %129, %122
  %138 = phi i8 [ %136, %129 ], [ %124, %122 ]
  %139 = phi i8 [ %134, %129 ], [ 1, %122 ]
  %140 = phi i16 [ %133, %129 ], [ %128, %122 ]
  %141 = phi i32 [ %95, %129 ], [ %123, %122 ]
  %142 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 4
  store i16 %140, ptr %142, align 2
  %143 = load ptr, ptr %12, align 4
  %144 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %143, i32 0, i32 5
  %145 = load i8, ptr %144, align 2
  %146 = zext i8 %145 to i32
  %147 = add nsw i32 %146, -1
  %148 = shl nuw i32 1, %147
  %149 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 25
  %150 = load i32, ptr %149, align 4
  %151 = tail call i32 @llvm.umin.i32(i32 %148, i32 %150)
  %152 = tail call i32 @llvm.umin.i32(i32 %151, i32 8)
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 12
  store i8 %153, ptr %154, align 1
  %155 = shl nuw nsw i8 %153, 3
  %156 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 11
  store i8 %155, ptr %156, align 4
  %157 = load i32, ptr %149, align 4
  %158 = trunc i32 %157 to i16
  %159 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 5
  store i16 %158, ptr %159, align 4
  %160 = load i32, ptr %149, align 4
  %161 = trunc i32 %160 to i16
  %162 = shl i16 %161, 3
  %163 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 8
  store i16 %162, ptr %163, align 4
  %164 = zext i8 %139 to i16
  %165 = zext i8 %138 to i16
  %166 = add nuw nsw i16 %165, %164
  %167 = trunc i32 %152 to i16
  %168 = udiv i16 %166, %167
  %169 = zext i16 %168 to i32
  %170 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 10
  store i32 %169, ptr %170, align 4
  %171 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 14
  store i32 %141, ptr %171, align 4
  br label %172

172:                                              ; preds = %137, %21
  %173 = phi i32 [ %29, %21 ], [ %17, %137 ]
  %174 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5
  store ptr %5, ptr %174, align 4
  %175 = load ptr, ptr %12, align 4
  %176 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 1
  store ptr %175, ptr %176, align 4
  %177 = or i32 %9, %10
  %178 = trunc i32 %177 to i8
  %179 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 1
  store i8 %178, ptr %179, align 4
  %180 = trunc i32 %173 to i16
  %181 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 9
  store i16 %180, ptr %181, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iso_sched_free(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = load volatile ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ehci_iso_stream, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %8, ptr %12, align 4
  store ptr %5, ptr %8, align 4
  store ptr %9, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  br label %14

14:                                               ; preds = %7, %4
  tail call void @kfree(ptr noundef nonnull %1) #18
  br label %15

15:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: argmemonly inlinehint nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sitd_slot_ok(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #16 {
  %5 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5
  %6 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 4
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = and i32 %2, 7
  %10 = and i32 %8, 255
  %11 = shl nuw nsw i32 %10, %9
  %12 = icmp ugt i32 %11, 127
  br i1 %12, label %140, label %13

13:                                               ; preds = %4
  %14 = lshr i32 8323072, %9
  %15 = and i32 %14, %8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %140

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 11
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %20, -1
  %22 = and i32 %21, %2
  %23 = lshr i32 %22, 3
  %24 = and i32 %22, 7
  %25 = tail call fastcc i32 @tt_available(ptr noundef %0, ptr noundef %5, ptr noundef %3, i32 noundef %23, i32 noundef %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %140, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.ehci_hcd, ptr %0, i32 0, i32 38
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 9
  %31 = load i8, ptr %30, align 2
  %32 = zext i8 %31 to i32
  %33 = sub i32 %29, %32
  %34 = and i16 %7, 255
  %35 = zext i16 %34 to i32
  %36 = icmp eq i16 %34, 0
  %37 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 10
  %38 = and i32 %8, 1024
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %8, 2048
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %8, 4096
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %8, 8192
  %45 = icmp eq i32 %44, 0
  %46 = and i32 %8, 16384
  %47 = icmp eq i32 %46, 0
  %48 = and i32 %8, 32768
  %49 = icmp eq i32 %48, 0
  br label %50

50:                                               ; preds = %131, %27
  %51 = phi i32 [ %132, %131 ], [ %22, %27 ]
  br i1 %36, label %63, label %52

52:                                               ; preds = %59, %50
  %53 = phi i32 [ %61, %59 ], [ %51, %50 ]
  %54 = phi i32 [ %60, %59 ], [ %35, %50 ]
  %55 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %53
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ult i32 %33, %57
  br i1 %58, label %140, label %59

59:                                               ; preds = %52
  %60 = lshr i32 %54, 1
  %61 = add i32 %53, 1
  %62 = icmp ult i32 %54, 2
  br i1 %62, label %63, label %52

63:                                               ; preds = %59, %50
  %64 = load i8, ptr %37, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %131, label %66

66:                                               ; preds = %63
  %67 = zext i8 %64 to i32
  %68 = sub i32 %29, %67
  %69 = and i32 %51, -8
  %70 = and i32 %51, 7
  %71 = icmp ult i32 %70, 6
  br i1 %71, label %72, label %131

72:                                               ; preds = %66
  %73 = add nuw nsw i32 %70, 2
  br i1 %39, label %80, label %74

74:                                               ; preds = %72
  %75 = add i32 %73, %69
  %76 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp ult i32 %68, %78
  br i1 %79, label %140, label %80

80:                                               ; preds = %74, %72
  %81 = add nuw nsw i32 %70, 3
  %82 = icmp ult i32 %70, 5
  br i1 %82, label %83, label %131

83:                                               ; preds = %80
  br i1 %41, label %90, label %84

84:                                               ; preds = %83
  %85 = add i32 %81, %69
  %86 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %85
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp ult i32 %68, %88
  br i1 %89, label %140, label %90

90:                                               ; preds = %84, %83
  %91 = add nuw nsw i32 %70, 4
  %92 = icmp ult i32 %70, 4
  br i1 %92, label %93, label %131

93:                                               ; preds = %90
  br i1 %43, label %100, label %94

94:                                               ; preds = %93
  %95 = add i32 %91, %69
  %96 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %95
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ult i32 %68, %98
  br i1 %99, label %140, label %100

100:                                              ; preds = %94, %93
  %101 = add nuw nsw i32 %70, 5
  %102 = icmp ult i32 %70, 3
  br i1 %102, label %103, label %131

103:                                              ; preds = %100
  br i1 %45, label %110, label %104

104:                                              ; preds = %103
  %105 = add i32 %101, %69
  %106 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %105
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp ult i32 %68, %108
  br i1 %109, label %140, label %110

110:                                              ; preds = %104, %103
  %111 = add nuw nsw i32 %70, 6
  %112 = icmp ult i32 %70, 2
  br i1 %112, label %113, label %131

113:                                              ; preds = %110
  br i1 %47, label %120, label %114

114:                                              ; preds = %113
  %115 = add i32 %111, %69
  %116 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ult i32 %68, %118
  br i1 %119, label %140, label %120

120:                                              ; preds = %114, %113
  %121 = add nuw nsw i32 %70, 7
  %122 = icmp eq i32 %70, 0
  %123 = xor i1 %122, true
  %124 = select i1 %123, i1 true, i1 %49
  br i1 %124, label %131, label %125

125:                                              ; preds = %120
  %126 = add i32 %121, %69
  %127 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %126
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp ult i32 %68, %129
  br i1 %130, label %140, label %131

131:                                              ; preds = %125, %120, %110, %100, %90, %80, %66, %63
  %132 = add i32 %51, %20
  %133 = icmp ult i32 %132, 64
  br i1 %133, label %50, label %134

134:                                              ; preds = %131
  %135 = and i32 %132, 7
  %136 = shl i32 %8, %135
  %137 = trunc i32 %136 to i16
  store i16 %137, ptr %6, align 2
  %138 = and i32 %136, 65535
  %139 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 7
  store i32 %138, ptr %139, align 4
  br label %140

140:                                              ; preds = %134, %125, %114, %104, %94, %84, %74, %52, %17, %13, %4
  %141 = phi i32 [ 1, %134 ], [ 0, %4 ], [ 0, %13 ], [ 0, %17 ], [ 0, %125 ], [ 0, %114 ], [ 0, %104 ], [ 0, %94 ], [ 0, %84 ], [ 0, %74 ], [ 0, %52 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reserve_release_iso_bandwidth(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5
  %5 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 6
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 29999
  br i1 %7, label %220, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 3
  %10 = load i16, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 9
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 7
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 3
  %20 = icmp slt i32 %2, 0
  %21 = sub nsw i32 0, %15
  %22 = sub i8 0, %12
  %23 = sub i16 0, %10
  %24 = select i1 %20, i32 %21, i32 %15
  %25 = select i1 %20, i8 %22, i8 %12
  %26 = select i1 %20, i16 %23, i16 %10
  %27 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %8
  %31 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 8
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = add nuw nsw i32 %19, %33
  %35 = icmp ult i32 %34, 64
  br i1 %35, label %36, label %220

36:                                               ; preds = %30
  %37 = trunc i32 %24 to i8
  %38 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 11
  br label %39

39:                                               ; preds = %39, %36
  %40 = phi i32 [ %34, %36 ], [ %46, %39 ]
  %41 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = add i8 %42, %37
  store i8 %43, ptr %41, align 1
  %44 = load i8, ptr %38, align 4
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %40, %45
  %47 = icmp ult i32 %46, 64
  br i1 %47, label %39, label %220

48:                                               ; preds = %8
  %49 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 4
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = lshr i32 %51, 8
  %53 = icmp ult i8 %17, 8
  br i1 %53, label %54, label %193

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 8
  %56 = trunc i32 %24 to i8
  %57 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 11
  br label %58

58:                                               ; preds = %188, %54
  %59 = phi i32 [ %19, %54 ], [ %191, %188 ]
  %60 = load i8, ptr %55, align 1
  %61 = icmp ult i8 %60, 8
  br i1 %61, label %62, label %188

62:                                               ; preds = %58
  %63 = zext i8 %60 to i32
  %64 = shl nuw nsw i32 1, %63
  %65 = and i32 %64, %51
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = and i32 %64, %52
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67, %62
  %71 = phi i8 [ %56, %62 ], [ %25, %67 ]
  %72 = add i32 %59, %63
  %73 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %72
  %74 = load i8, ptr %73, align 1
  %75 = add i8 %74, %71
  store i8 %75, ptr %73, align 1
  br label %76

76:                                               ; preds = %70, %67
  %77 = add nuw nsw i32 %63, 1
  %78 = shl i32 %64, 1
  %79 = icmp eq i32 %77, 8
  br i1 %79, label %188, label %80

80:                                               ; preds = %76
  %81 = and i32 %78, %51
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = and i32 %78, %52
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %83, %80
  %87 = phi i8 [ %56, %80 ], [ %25, %83 ]
  %88 = add i32 %77, %59
  %89 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %88
  %90 = load i8, ptr %89, align 1
  %91 = add i8 %90, %87
  store i8 %91, ptr %89, align 1
  br label %92

92:                                               ; preds = %86, %83
  %93 = add nuw nsw i32 %63, 2
  %94 = shl i32 %64, 2
  %95 = icmp eq i32 %93, 8
  br i1 %95, label %188, label %96

96:                                               ; preds = %92
  %97 = and i32 %94, %51
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = and i32 %94, %52
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99, %96
  %103 = phi i8 [ %56, %96 ], [ %25, %99 ]
  %104 = add i32 %93, %59
  %105 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %104
  %106 = load i8, ptr %105, align 1
  %107 = add i8 %106, %103
  store i8 %107, ptr %105, align 1
  br label %108

108:                                              ; preds = %102, %99
  %109 = add nuw nsw i32 %63, 3
  %110 = shl i32 %64, 3
  %111 = icmp eq i32 %109, 8
  br i1 %111, label %188, label %112

112:                                              ; preds = %108
  %113 = and i32 %110, %51
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = and i32 %110, %52
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %115, %112
  %119 = phi i8 [ %56, %112 ], [ %25, %115 ]
  %120 = add i32 %109, %59
  %121 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %120
  %122 = load i8, ptr %121, align 1
  %123 = add i8 %122, %119
  store i8 %123, ptr %121, align 1
  br label %124

124:                                              ; preds = %118, %115
  %125 = add nuw nsw i32 %63, 4
  %126 = shl i32 %64, 4
  %127 = icmp eq i32 %125, 8
  br i1 %127, label %188, label %128

128:                                              ; preds = %124
  %129 = and i32 %126, %51
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = and i32 %126, %52
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %131, %128
  %135 = phi i8 [ %56, %128 ], [ %25, %131 ]
  %136 = add i32 %125, %59
  %137 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %136
  %138 = load i8, ptr %137, align 1
  %139 = add i8 %138, %135
  store i8 %139, ptr %137, align 1
  br label %140

140:                                              ; preds = %134, %131
  %141 = add nuw nsw i32 %63, 5
  %142 = shl i32 %64, 5
  %143 = icmp eq i32 %141, 8
  br i1 %143, label %188, label %144

144:                                              ; preds = %140
  %145 = and i32 %142, %51
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = and i32 %142, %52
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %147, %144
  %151 = phi i8 [ %56, %144 ], [ %25, %147 ]
  %152 = add i32 %141, %59
  %153 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %152
  %154 = load i8, ptr %153, align 1
  %155 = add i8 %154, %151
  store i8 %155, ptr %153, align 1
  br label %156

156:                                              ; preds = %150, %147
  %157 = add nuw nsw i32 %63, 6
  %158 = shl i32 %64, 6
  %159 = icmp eq i32 %157, 8
  br i1 %159, label %188, label %160

160:                                              ; preds = %156
  %161 = and i32 %158, %51
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = and i32 %158, %52
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %163, %160
  %167 = phi i8 [ %56, %160 ], [ %25, %163 ]
  %168 = add i32 %157, %59
  %169 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %168
  %170 = load i8, ptr %169, align 1
  %171 = add i8 %170, %167
  store i8 %171, ptr %169, align 1
  br label %172

172:                                              ; preds = %166, %163
  %173 = add nuw nsw i32 %63, 7
  %174 = shl i32 %64, 7
  %175 = icmp eq i32 %173, 8
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = and i32 %174, %51
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = and i32 %174, %52
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %179, %176
  %183 = phi i8 [ %56, %176 ], [ %25, %179 ]
  %184 = add i32 %173, %59
  %185 = getelementptr %struct.ehci_hcd, ptr %0, i32 0, i32 62, i32 %184
  %186 = load i8, ptr %185, align 1
  %187 = add i8 %186, %183
  store i8 %187, ptr %185, align 1
  br label %188

188:                                              ; preds = %182, %179, %172, %156, %140, %124, %108, %92, %76, %58
  %189 = load i8, ptr %57, align 4
  %190 = zext i8 %189 to i32
  %191 = add i32 %59, %190
  %192 = icmp ult i32 %191, 64
  br i1 %192, label %58, label %193

193:                                              ; preds = %188, %48
  %194 = load ptr, ptr %4, align 4
  %195 = tail call fastcc ptr @find_tt(ptr noundef %194)
  %196 = icmp sgt i32 %2, 0
  %197 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 2
  br i1 %196, label %198, label %203

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.ehci_tt, ptr %195, i32 0, i32 2
  %200 = getelementptr inbounds %struct.ehci_tt, ptr %195, i32 0, i32 2, i32 1
  %201 = load ptr, ptr %200, align 4
  store ptr %197, ptr %200, align 4
  store ptr %199, ptr %197, align 4
  %202 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 2, i32 1
  store ptr %201, ptr %202, align 4
  store volatile ptr %197, ptr %201, align 4
  br label %208

203:                                              ; preds = %193
  %204 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 2, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = load ptr, ptr %197, align 4
  %207 = getelementptr inbounds %struct.list_head, ptr %206, i32 0, i32 1
  store ptr %205, ptr %207, align 4
  store volatile ptr %206, ptr %205, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %197, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %204, align 4
  br label %208

208:                                              ; preds = %203, %198
  br i1 %53, label %209, label %220

209:                                              ; preds = %208
  %210 = getelementptr inbounds %struct.ehci_iso_stream, ptr %1, i32 0, i32 5, i32 12
  br label %211

211:                                              ; preds = %211, %209
  %212 = phi i32 [ %18, %209 ], [ %218, %211 ]
  %213 = getelementptr [8 x i16], ptr %195, i32 0, i32 %212
  %214 = load i16, ptr %213, align 2
  %215 = add i16 %214, %26
  store i16 %215, ptr %213, align 2
  %216 = load i8, ptr %210, align 1
  %217 = zext i8 %216 to i32
  %218 = add nuw nsw i32 %212, %217
  %219 = icmp ult i32 %218, 8
  br i1 %219, label %211, label %220

220:                                              ; preds = %211, %208, %39, %30, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_amd_quirk_pll_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_for_each_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @persist_enabled_on_companion(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #17 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 35
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 28
  %8 = load i16, ptr %7, align 1
  %9 = and i16 %8, 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 12
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.usb_bus, ptr %13, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 3
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %11, %6, %2
  %21 = phi i32 [ 0, %6 ], [ 0, %2 ], [ %19, %11 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly inlinehint nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }

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
!8 = !{i64 3852246}
!9 = !{i64 2154237627}
!10 = !{i64 2154238137}
!11 = !{i64 3851828}
!12 = !{i64 2148962836}
!13 = !{i64 2148958660}
!14 = !{i64 2148958735, i64 2148958762, i64 2148958809, i64 2148958831, i64 2148958859, i64 2148958879}
!15 = !{i64 484234}
!16 = !{i64 2148986980}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2154365839}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2154378397, i64 2154378888, i64 2154378434, i64 2154378490, i64 2154378524, i64 2154378548, i64 2154378589, i64 2154378610, i64 2154378638, i64 2154378672}
!21 = !{!"branch_weights", i32 1, i32 4001}
!22 = !{i64 2154586358}
!23 = !{i64 2154586664}
!24 = !{i64 2154586983}
!25 = !{i64 2154431459}
!26 = !{i64 2154434166}
!27 = !{!"branch_weights", i32 4001, i32 1}
!28 = !{i64 2154540011}
!29 = !{i64 2154464027}
!30 = !{i64 2154459695}
!31 = !{i64 2154542610}
!32 = !{!"auto-init"}
!33 = !{i64 2148985839}
!34 = !{i8 0, i8 2}
!35 = !{i64 2154545102, i64 2154545596, i64 2154545139, i64 2154545195, i64 2154545229, i64 2154545253, i64 2154545294, i64 2154545315, i64 2154545343, i64 2154545377}
!36 = !{i64 2154572170}
!37 = !{i64 2154580794, i64 2154581289, i64 2154580831, i64 2154580887, i64 2154580921, i64 2154580945, i64 2154580986, i64 2154581007, i64 2154581035, i64 2154581069}
!38 = !{i64 2154580412}
!39 = !{i64 2154463139}
!40 = !{i32 0, i32 33}
