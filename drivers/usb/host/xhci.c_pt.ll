; ModuleID = '/llk/IR/drivers/usb/host/xhci.c_pt.bc'
source_filename = "../drivers/usb/host/xhci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_run:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_run\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_run:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_resume\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_get_endpoint_index:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_get_endpoint_index\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_get_endpoint_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_drop_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_drop_endpoint\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_drop_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_add_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_add_endpoint\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_add_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_check_bandwidth:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_check_bandwidth\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_check_bandwidth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_reset_bandwidth:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_reset_bandwidth\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_reset_bandwidth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_gen_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_gen_setup\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_gen_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_init_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_init_driver\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_init_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xhci_op_regs = type { i32, i32, i32, i32, i32, i32, i64, [4 x i32], i64, i32, [241 x i32], i32, i32, i32, i32, [1016 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.xhci_intr_reg = type { i32, i32, i32, i32, i64, i64 }
%struct.xhci_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%union.xhci_trb = type { %struct.xhci_link_trb }
%struct.xhci_link_trb = type { i64, i32, i32 }
%struct.xhci_segment = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.xhci_run_regs = type { i32, [7 x i32], [128 x %struct.xhci_intr_reg] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.xhci_virt_device = type { i32, ptr, ptr, ptr, [31 x %struct.xhci_virt_ep], i8, i8, ptr, ptr, i32, i16, ptr }
%struct.xhci_virt_ep = type { ptr, i32, ptr, ptr, ptr, i32, %struct.list_head, %struct.timer_list, ptr, ptr, ptr, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.xhci_input_control_ctx = type { i32, i32, [6 x i32] }
%struct.xhci_tt_bw_info = type { %struct.list_head, i32, i32, %struct.xhci_interval_bw_table, i32 }
%struct.xhci_interval_bw_table = type { i32, [16 x %struct.xhci_interval_bw], i32, i32, i32 }
%struct.xhci_interval_bw = type { i32, %struct.list_head, [3 x i32] }
%struct.xhci_root_port_bw_info = type { %struct.list_head, i32, %struct.xhci_interval_bw_table }
%struct.xhci_command = type { ptr, i32, i32, ptr, ptr, %struct.list_head }
%struct.xhci_container_ctx = type { i32, i32, ptr, i32 }
%struct.xhci_cap_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xhci_port = type { ptr, i32, i32, ptr, ptr }
%struct.xhci_driver_overrides = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.urb_priv = type { i32, i32, [0 x %struct.xhci_td] }
%struct.xhci_td = type { %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.xhci_stream_info = type { ptr, i32, ptr, i32, i32, %struct.xarray, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.xhci_slot_ctx = type { i32, i32, i32, i32, [4 x i32] }
%struct.usb_host_bos = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.xhci_ep_ctx = type { i32, i32, i64, i32, [3 x i32] }
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }

@__param_str_link_quirk = internal constant [20 x i8] c"xhci_hcd.link_quirk\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@link_quirk = internal global i32 0, align 4
@__param_link_quirk = internal constant %struct.kernel_param { ptr @__param_str_link_quirk, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @link_quirk } }, section "__param", align 4
@__UNIQUE_ID_link_quirktype340 = internal constant [33 x i8] c"xhci_hcd.parmtype=link_quirk:int\00", section ".modinfo", align 1
@__UNIQUE_ID_link_quirk341 = internal constant [65 x i8] c"xhci_hcd.parm=link_quirk:Don't clear the chain bit on a link TRB\00", section ".modinfo", align 1
@__param_str_quirks = internal constant [16 x i8] c"xhci_hcd.quirks\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@quirks = internal global i64 0, align 8
@__param_quirks = internal constant %struct.kernel_param { ptr @__param_str_quirks, ptr null, ptr @param_ops_ullong, i16 292, i8 -1, i8 0, %union.anon.63 { ptr @quirks } }, section "__param", align 4
@__UNIQUE_ID_quirkstype342 = internal constant [32 x i8] c"xhci_hcd.parmtype=quirks:ullong\00", section ".modinfo", align 1
@__UNIQUE_ID_quirks343 = internal constant [67 x i8] c"xhci_hcd.parm=quirks:Bit flags for quirks to be enabled as default\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [15 x i8] c"// Halt the HC\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Host halt failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"// Turn on HC, cmd = 0x%x.\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Host took too long to start, waited %u microseconds.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Host not accessible, reset failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Host controller not halted, aborting reset.\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"// Reset the HC\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Wait for controller to be ready for doorbell rings\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"xhci_run\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"ERST deq = 64'h%0lx\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"// Set the interrupt modulation register\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"// Enable interrupts, cmd = 0x%x.\00", align 1
@.str.12 = private unnamed_addr constant [69 x i8] c"// Enabling event ring interrupter %p by writing 0x%x to irq_pending\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Finished xhci_run for USB2 roothub\00", align 1
@__kstrtab_xhci_run = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_run = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_run = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_run to i32), ptr @__kstrtab_xhci_run, ptr @__kstrtabns_xhci_run }, section "___ksymtab_gpl+xhci_run", align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"xhci_shutdown completed - status = %x\00", align 1
@__kstrtab_xhci_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_shutdown to i32), ptr @__kstrtab_xhci_shutdown, ptr @__kstrtabns_xhci_shutdown }, section "___ksymtab_gpl+xhci_shutdown", align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"WARN: xHC CMD_RUN timeout\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"WARN: xHC save state timeout\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"%s: compliance mode recovery timer deleted\00", align 1
@__func__.xhci_suspend = private unnamed_addr constant [13 x i8] c"xhci_suspend\00", align 1
@__kstrtab_xhci_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_suspend to i32), ptr @__kstrtab_xhci_suspend, ptr @__kstrtabns_xhci_suspend }, section "___ksymtab_gpl+xhci_suspend", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.18 = private unnamed_addr constant [35 x i8] c"Controller not ready at resume %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"WARN: xHC restore state timeout\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"xHC error in resume, USBSTS 0x%x, Reinit\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Compliance Mode Recovery Timer deleted!\00", align 1
@__kstrtab_xhci_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_resume to i32), ptr @__kstrtab_xhci_resume, ptr @__kstrtabns_xhci_resume }, section "___ksymtab_gpl+xhci_resume", align 4
@__kstrtab_xhci_get_endpoint_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_get_endpoint_index = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_get_endpoint_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_get_endpoint_index to i32), ptr @__kstrtab_xhci_get_endpoint_index, ptr @__kstrtabns_xhci_get_endpoint_index }, section "___ksymtab_gpl+xhci_get_endpoint_index", align 4
@__func__.xhci_drop_endpoint = private unnamed_addr constant [19 x i8] c"xhci_drop_endpoint\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"%s: Could not get input context, bad type.\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"xHCI %s called with disabled ep %p\0A\00", align 1
@__kstrtab_xhci_drop_endpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_drop_endpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_drop_endpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_drop_endpoint to i32), ptr @__kstrtab_xhci_drop_endpoint, ptr @__kstrtabns_xhci_drop_endpoint }, section "___ksymtab_gpl+xhci_drop_endpoint", align 4
@__func__.xhci_add_endpoint = private unnamed_addr constant [18 x i8] c"xhci_add_endpoint\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"Trying to add endpoint 0x%x without dropping it.\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"xHCI %s called with enabled ep %p\0A\00", align 1
@__kstrtab_xhci_add_endpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_add_endpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_add_endpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_add_endpoint to i32), ptr @__kstrtab_xhci_add_endpoint, ptr @__kstrtabns_xhci_add_endpoint }, section "___ksymtab_gpl+xhci_add_endpoint", align 4
@__func__.xhci_check_bandwidth = private unnamed_addr constant [21 x i8] c"xhci_check_bandwidth\00", align 1
@__kstrtab_xhci_check_bandwidth = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_check_bandwidth = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_check_bandwidth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_check_bandwidth to i32), ptr @__kstrtab_xhci_check_bandwidth, ptr @__kstrtabns_xhci_check_bandwidth }, section "___ksymtab_gpl+xhci_check_bandwidth", align 4
@__kstrtab_xhci_reset_bandwidth = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_reset_bandwidth = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_reset_bandwidth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_reset_bandwidth to i32), ptr @__kstrtab_xhci_reset_bandwidth, ptr @__kstrtabns_xhci_reset_bandwidth }, section "___ksymtab_gpl+xhci_reset_bandwidth", align 4
@.str.26 = private unnamed_addr constant [49 x i8] c"Dropped %u ep ctxs, flags = 0x%x, %u now active.\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"Unsuccessful disable slot %u command, status %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"Error while assigning device slot ID\0A\00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"Max number of devices this xHCI host supports is %u.\0A\00", align 1
@.str.30 = private unnamed_addr constant [58 x i8] c"Not enough host resources, active endpoint contexts = %u\0A\00", align 1
@.str.31 = private unnamed_addr constant [52 x i8] c"Could not allocate xHCI USB device data structures\0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Host supports USB 3.%x %sSuperSpeed\0A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"Enhanced \00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@xhci_gen_setup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"&xhci->mutex\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"hcc params 0x%08x hci version 0x%x quirks 0x%016llx\0A\00", align 1
@__kstrtab_xhci_gen_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_gen_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_gen_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_gen_setup to i32), ptr @__kstrtab_xhci_gen_setup, ptr @__kstrtabns_xhci_gen_setup }, section "___ksymtab_gpl+xhci_gen_setup", align 4
@xhci_hc_driver = internal unnamed_addr constant %struct.hc_driver { ptr @.str.90, ptr @.str.91, i32 3752, ptr @xhci_irq, i32 327, ptr null, ptr @xhci_run, ptr null, ptr null, ptr @xhci_stop, ptr @xhci_shutdown, ptr @xhci_get_frame, ptr @xhci_urb_enqueue, ptr @xhci_urb_dequeue, ptr @xhci_map_urb_for_dma, ptr @xhci_unmap_urb_for_dma, ptr @xhci_endpoint_disable, ptr @xhci_endpoint_reset, ptr @xhci_hub_status_data, ptr @xhci_hub_control, ptr @xhci_bus_suspend, ptr @xhci_bus_resume, ptr null, ptr @xhci_get_resuming_ports, ptr null, ptr null, ptr @xhci_clear_tt_buffer_complete, ptr @xhci_alloc_dev, ptr @xhci_free_dev, ptr @xhci_alloc_streams, ptr @xhci_free_streams, ptr @xhci_add_endpoint, ptr @xhci_drop_endpoint, ptr @xhci_check_bandwidth, ptr @xhci_reset_bandwidth, ptr @xhci_address_device, ptr @xhci_enable_device, ptr @xhci_update_hub_device, ptr @xhci_discover_or_reset_device, ptr @xhci_update_device, ptr @xhci_set_usb2_hardware_lpm, ptr @xhci_enable_usb3_lpm_timeout, ptr @xhci_disable_usb3_lpm_timeout, ptr @xhci_find_raw_port_number, ptr null, ptr null }, align 4
@__kstrtab_xhci_init_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_init_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_init_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_init_driver to i32), ptr @__kstrtab_xhci_init_driver, ptr @__kstrtabns_xhci_init_driver }, section "___ksymtab_gpl+xhci_init_driver", align 4
@__UNIQUE_ID_description350 = internal constant [63 x i8] c"xhci_hcd.description='eXtensible' Host Controller (xHC) Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author351 = internal constant [28 x i8] c"xhci_hcd.author=Sarah Sharp\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [40 x i8] c"xhci_hcd.file=drivers/usb/host/xhci-hcd\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [21 x i8] c"xhci_hcd.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_xhci_hcd__363_5521_xhci_hcd_init6 = internal global ptr @xhci_hcd_init, section ".initcall6.init", align 4
@__exitcall_xhci_hcd_fini = internal global ptr @xhci_hcd_fini, section ".exitcall.exit", align 4
@__tracepoint_xhci_dbg_init = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.38 = private unnamed_addr constant [35 x i8] c"Finished xhci_run for USB3 roothub\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"No msi-x/msi found and no IRQ in BIOS\0A\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"%s:usb%d\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"request interrupt %d failed\0A\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"Failed to enable MSI-X\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"xhci_hcd\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"disable MSI-X interrupt\00", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.45 = private unnamed_addr constant [29 x i8] c"failed to allocate MSI entry\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"disable MSI interrupt\00", align 1
@__tracepoint_xhci_dbg_quirks = external dso_local global %struct.tracepoint, align 4
@.str.47 = private unnamed_addr constant [42 x i8] c"// Setting command ring address to 0x%llx\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"Zeroing 64bit base registers, expecting fault\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"Fault detected\0A\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"xhci_init\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"QUIRK: Not clearing Link TRB chain bits.\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"xHCI doesn't need link TRB QUIRK\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"Finished xhci_init\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"Hewlett-Packard\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"Z420\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"Z620\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"Z820\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"Z1 Workstation\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"Compliance mode recovery timer initialized\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"Compliance mode detected->port %d\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"Attempting compliance mode recovery\00", align 1
@__tracepoint_xhci_add_endpoint = external dso_local global %struct.tracepoint, align 4
@__func__.xhci_configure_endpoint = private unnamed_addr constant [24 x i8] c"xhci_configure_endpoint\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"Not enough bandwidth\0A\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"FIXME allocate a new ring segment\00", align 1
@.str.64 = private unnamed_addr constant [60 x i8] c"Not enough ep ctxs: %u active, need to add %u, limit is %u.\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"Adding %u ep ctxs, %u now active.\00", align 1
@__func__.xhci_reserve_bandwidth = private unnamed_addr constant [23 x i8] c"xhci_reserve_bandwidth\00", align 1
@.str.66 = private unnamed_addr constant [33 x i8] c"Recalculating BW for rootport %u\00", align 1
@.str.67 = private unnamed_addr constant [56 x i8] c"Not enough bandwidth on HS bus for newly activated TT.\0A\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c"Recalculating BW for TT slot %u port %u\00", align 1
@.str.69 = private unnamed_addr constant [45 x i8] c"Not enough bandwidth. Proposed: %u, Max: %u\0A\00", align 1
@.str.70 = private unnamed_addr constant [68 x i8] c"Final bandwidth: %u, Limit: %u, Reserved: %u, Available: %u percent\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"Removing %u failed ep ctxs, %u now active.\00", align 1
@__tracepoint_xhci_configure_endpoint_ctrl_ctx = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_configure_endpoint = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_dbg_context_change = external dso_local global %struct.tracepoint, align 4
@.str.72 = private unnamed_addr constant [54 x i8] c"Timeout while waiting for configure endpoint command\0A\00", align 1
@.str.73 = private unnamed_addr constant [60 x i8] c"Not enough host controller resources for new device state.\0A\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"Not enough bandwidth for new device state.\0A\00", align 1
@.str.75 = private unnamed_addr constant [76 x i8] c"ERROR: Endpoint drop flag = 0, add flag = 1, and endpoint is not disabled.\0A\00", align 1
@.str.76 = private unnamed_addr constant [60 x i8] c"ERROR: Incompatible device for endpoint configure command.\0A\00", align 1
@.str.77 = private unnamed_addr constant [38 x i8] c"Successful Endpoint Configure command\00", align 1
@.str.78 = private unnamed_addr constant [49 x i8] c"ERROR: unexpected command completion code 0x%x.\0A\00", align 1
@.str.79 = private unnamed_addr constant [52 x i8] c"Timeout while waiting for evaluate context command\0A\00", align 1
@.str.80 = private unnamed_addr constant [59 x i8] c"WARN: xHCI driver setup invalid evaluate context command.\0A\00", align 1
@.str.81 = private unnamed_addr constant [54 x i8] c"WARN: slot not enabled for evaluate context command.\0A\00", align 1
@.str.82 = private unnamed_addr constant [59 x i8] c"WARN: invalid context state for evaluate context command.\0A\00", align 1
@.str.83 = private unnamed_addr constant [58 x i8] c"ERROR: Incompatible device for evaluate context command.\0A\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"WARN: Max Exit Latency too large\0A\00", align 1
@.str.85 = private unnamed_addr constant [36 x i8] c"Successful evaluate context command\00", align 1
@.str.86 = private unnamed_addr constant [44 x i8] c"Removing %u dropped ep ctxs, %u now active.\00", align 1
@.str.87 = private unnamed_addr constant [70 x i8] c"WARN: endpoint 0x%02x has streams on set_interface, freeing streams.\0A\00", align 1
@__func__.xhci_zero_in_ctx = private unnamed_addr constant [17 x i8] c"xhci_zero_in_ctx\00", align 1
@.str.88 = private unnamed_addr constant [59 x i8] c"Not enough ep ctxs: %u active, need to add 1, limit is %u.\00", align 1
@.str.89 = private unnamed_addr constant [32 x i8] c"Adding 1 ep ctx, %u now active.\00", align 1
@__tracepoint_xhci_alloc_dev = external dso_local global %struct.tracepoint, align 4
@.str.90 = private unnamed_addr constant [9 x i8] c"xhci-hcd\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"xHCI Host Controller\00", align 1
@__func__.xhci_stop = private unnamed_addr constant [10 x i8] c"xhci_stop\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"// Disabling event ring interrupts\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"cleaning up memory\00", align 1
@.str.94 = private unnamed_addr constant [34 x i8] c"xhci_stop completed - status = %x\00", align 1
@.str.95 = private unnamed_addr constant [60 x i8] c"WARN: Can't enqueue URB, ep in streams transition state %x\0A\00", align 1
@.str.96 = private unnamed_addr constant [50 x i8] c"Can't enqueue URB while manually clearing toggle\0A\00", align 1
@__tracepoint_xhci_urb_enqueue = external dso_local global %struct.tracepoint, align 4
@.str.97 = private unnamed_addr constant [34 x i8] c"Max Packet Size for ep 0 changed.\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"Max packet size in usb_device = %d\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"Max packet size in xHCI HW = %d\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c"Issuing evaluate context command.\00", align 1
@__func__.xhci_check_maxpacket = private unnamed_addr constant [21 x i8] c"xhci_check_maxpacket\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"Canceled URB td not found on endpoint ring\00", align 1
@.str.102 = private unnamed_addr constant [32 x i8] c"HC halted, freeing TD manually.\00", align 1
@.str.103 = private unnamed_addr constant [58 x i8] c"Cancel URB %p, dev %s, ep 0x%x, starting at offset 0x%llx\00", align 1
@__tracepoint_xhci_urb_dequeue = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_dbg_cancel_urb = external dso_local global %struct.tracepoint, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.105 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.106 = private unnamed_addr constant [28 x i8] c"EP not empty, refuse reset\0A\00", align 1
@__func__.xhci_endpoint_reset = private unnamed_addr constant [20 x i8] c"xhci_endpoint_reset\00", align 1
@__tracepoint_xhci_free_dev = external dso_local global %struct.tracepoint, align 4
@__func__.xhci_alloc_streams = private unnamed_addr constant [19 x i8] c"xhci_alloc_streams\00", align 1
@.str.107 = private unnamed_addr constant [52 x i8] c"WARN: endpoints can't handle more than one stream.\0A\00", align 1
@.str.108 = private unnamed_addr constant [85 x i8] c"WARN: SuperSpeed Endpoint Companion descriptor for ep 0x%x does not support streams\0A\00", align 1
@.str.109 = private unnamed_addr constant [65 x i8] c"WARN: SuperSpeed bulk endpoint 0x%x already has streams set up.\0A\00", align 1
@.str.110 = private unnamed_addr constant [86 x i8] c"Send email to xHCI maintainer and ask for dynamic stream context array reallocation.\0A\00", align 1
@.str.111 = private unnamed_addr constant [75 x i8] c"Cannot setup streams for SuperSpeed bulk endpoint 0x%x; URBs are pending.\0A\00", align 1
@__func__.xhci_free_streams = private unnamed_addr constant [18 x i8] c"xhci_free_streams\00", align 1
@.str.112 = private unnamed_addr constant [82 x i8] c"WARN Can't disable streams for endpoint 0x%x, streams are being disabled already\0A\00", align 1
@.str.113 = private unnamed_addr constant [77 x i8] c"WARN Can't disable streams for endpoint 0x%x, streams are already disabled!\0A\00", align 1
@.str.114 = private unnamed_addr constant [59 x i8] c"WARN xhci_free_streams() called with non-streams endpoint\0A\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"Bad Slot ID %d\00", align 1
@.str.118 = private unnamed_addr constant [24 x i8] c"drivers/usb/host/xhci.c\00", align 1
@.str.119 = private unnamed_addr constant [36 x i8] c"Virt dev invalid for slot_id 0x%x!\0A\00", align 1
@__func__.xhci_setup_device = private unnamed_addr constant [18 x i8] c"xhci_setup_device\00", align 1
@.str.120 = private unnamed_addr constant [39 x i8] c"FIXME: allocate a command ring segment\00", align 1
@.str.121 = private unnamed_addr constant [48 x i8] c"Timeout while waiting for setup device command\0A\00", align 1
@.str.122 = private unnamed_addr constant [44 x i8] c"Setup ERROR: setup %s command for slot %d.\0A\00", align 1
@.str.123 = private unnamed_addr constant [36 x i8] c"Device not responding to setup %s.\0A\00", align 1
@.str.124 = private unnamed_addr constant [49 x i8] c"ERROR: Incompatible device for setup %s command\0A\00", align 1
@.str.125 = private unnamed_addr constant [28 x i8] c"Successful setup %s command\00", align 1
@.str.126 = private unnamed_addr constant [58 x i8] c"ERROR: unexpected setup %s command completion code 0x%x.\0A\00", align 1
@.str.127 = private unnamed_addr constant [29 x i8] c"Op regs DCBAA ptr = %#016llx\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"Slot ID %d dcbaa entry @%p = %#016llx\00", align 1
@.str.129 = private unnamed_addr constant [37 x i8] c"Output Context DMA address = %#08llx\00", align 1
@.str.130 = private unnamed_addr constant [29 x i8] c"Internal device address = %d\00", align 1
@__tracepoint_xhci_dbg_address = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_setup_device_slot = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_address_ctx = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_address_ctrl_ctx = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_setup_device = external dso_local global %struct.tracepoint, align 4
@.str.131 = private unnamed_addr constant [44 x i8] c"Cannot update hub desc for unknown device.\0A\00", align 1
@__func__.xhci_update_hub_device = private unnamed_addr constant [23 x i8] c"xhci_update_hub_device\00", align 1
@.str.132 = private unnamed_addr constant [42 x i8] c"Timeout waiting for reset device command\0A\00", align 1
@.str.133 = private unnamed_addr constant [54 x i8] c"Unknown completion code %u for reset device command.\0A\00", align 1
@.str.134 = private unnamed_addr constant [69 x i8] c"WARN: endpoint 0x%02x has streams on device reset, freeing streams.\0A\00", align 1
@__tracepoint_xhci_discover_or_reset_device = external dso_local global %struct.tracepoint, align 4
@xhci_besl_encoding = internal unnamed_addr constant [16 x i32] [i32 125, i32 150, i32 200, i32 300, i32 400, i32 500, i32 1000, i32 2000, i32 3000, i32 4000, i32 5000, i32 6000, i32 7000, i32 8000, i32 9000, i32 10000], align 4
@__func__.xhci_change_max_exit_latency = private unnamed_addr constant [29 x i8] c"xhci_change_max_exit_latency\00", align 1
@.str.135 = private unnamed_addr constant [44 x i8] c"Set up evaluate context for LPM MEL change.\00", align 1
@.str.138 = private unnamed_addr constant [36 x i8] c"Can't enable unknown link state %i\0A\00", align 1
@.str.139 = private unnamed_addr constant [47 x i8] c"%s: Can't get timeout for non-U1 or U2 state.\0A\00", align 1
@__func__.xhci_get_timeout_no_hub_lpm = private unnamed_addr constant [28 x i8] c"xhci_get_timeout_no_hub_lpm\00", align 1
@.str.140 = private unnamed_addr constant [48 x i8] c"Link PM max exit latency of %lluus is too big.\0A\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__UNIQUE_ID_link_quirk341, ptr @__UNIQUE_ID_link_quirktype340, ptr @__UNIQUE_ID_quirks343, ptr @__UNIQUE_ID_quirkstype342, ptr @__exitcall_xhci_hcd_fini, ptr @__initcall__kmod_xhci_hcd__363_5521_xhci_hcd_init6, ptr @__ksymtab_xhci_add_endpoint, ptr @__ksymtab_xhci_check_bandwidth, ptr @__ksymtab_xhci_drop_endpoint, ptr @__ksymtab_xhci_gen_setup, ptr @__ksymtab_xhci_get_endpoint_index, ptr @__ksymtab_xhci_init_driver, ptr @__ksymtab_xhci_reset_bandwidth, ptr @__ksymtab_xhci_resume, ptr @__ksymtab_xhci_run, ptr @__ksymtab_xhci_shutdown, ptr @__ksymtab_xhci_suspend, ptr @__param_link_quirk, ptr @__param_quirks, ptr @xhci_hcd_fini], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_handshake(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %3 to i64
  %6 = tail call i64 @ktime_get() #21
  %7 = mul nsw i64 %5, 1000
  %8 = add i64 %6, %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %10 = and i32 %9, %1
  %11 = icmp eq i32 %10, %2
  %12 = icmp eq i32 %9, -1
  %13 = or i1 %12, %11
  br i1 %13, label %30, label %14

14:                                               ; preds = %4
  %15 = icmp eq i32 %3, 0
  br label %16

16:                                               ; preds = %23, %14
  br i1 %15, label %23, label %17

17:                                               ; preds = %16
  %18 = tail call i64 @ktime_get() #21
  %19 = icmp sgt i64 %18, %8
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !10
  %22 = and i32 %21, %1
  br label %30

23:                                               ; preds = %17, %16
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #21
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %26 = and i32 %25, %1
  %27 = icmp eq i32 %26, %2
  %28 = icmp eq i32 %25, -1
  %29 = or i1 %28, %27
  br i1 %29, label %30, label %16

30:                                               ; preds = %23, %20, %4
  %31 = phi i32 [ %10, %4 ], [ %22, %20 ], [ %26, %23 ]
  %32 = phi i32 [ %9, %4 ], [ %21, %20 ], [ %25, %23 ]
  %33 = icmp eq i32 %32, -1
  %34 = icmp eq i32 %31, %2
  %35 = or i1 %33, %34
  %36 = select i1 %35, i32 0, i32 -110
  %37 = select i1 %33, i32 -19, i32 %36
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_quiesce(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xhci_op_regs, ptr %3, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !11
  %6 = and i32 %5, 1
  %7 = or i32 %6, -1038
  %8 = load ptr, ptr %2, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !12
  %10 = and i32 %9, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !13
  tail call void @arm_heavy_mb() #21
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #21, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_halt(ptr noundef %0) local_unnamed_addr #0 {
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str) #21
  %2 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xhci_op_regs, ptr %3, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !11
  %6 = and i32 %5, 1
  %7 = or i32 %6, -1038
  %8 = load ptr, ptr %2, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !12
  %10 = and i32 %9, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !13
  tail call void @arm_heavy_mb() #21
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #21, !srcloc !14
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.xhci_op_regs, ptr %12, i32 0, i32 1
  %14 = tail call i64 @ktime_get() #21
  %15 = add i64 %14, 32000000
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %26, %1
  %20 = tail call i64 @ktime_get() #21
  %21 = icmp sgt i64 %20, %15
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !10
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br label %31

26:                                               ; preds = %19
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #21
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %19, label %31

31:                                               ; preds = %26, %22, %1
  %32 = phi i1 [ true, %1 ], [ %25, %22 ], [ true, %26 ]
  %33 = phi i32 [ %16, %1 ], [ %23, %22 ], [ %28, %26 ]
  %34 = icmp eq i32 %33, -1
  %35 = or i1 %32, %34
  %36 = select i1 %35, i32 0, i32 -110
  %37 = select i1 %34, i32 -19, i32 %36
  %38 = xor i1 %34, true
  %39 = select i1 %38, i1 %35, i1 false
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load ptr, ptr %0, align 8
  %42 = load ptr, ptr %41, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.1, i32 noundef %37) #22
  br label %48

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 48
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %45, 2
  store i32 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 30
  store i32 4, ptr %47, align 8
  br label %48

48:                                               ; preds = %43, %40
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_dbg_trace(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_init(ptr noundef %0) #3 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_init, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #21
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !15
  %16 = tail call i32 @__traceiter_xhci_dbg_init(ptr noundef null, ptr noundef %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !16
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !17
  %5 = or i32 %4, 1
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.2, i32 noundef %5) #21
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !18
  tail call void @arm_heavy_mb() #21
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #21, !srcloc !14
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.xhci_op_regs, ptr %7, i32 0, i32 1
  %9 = tail call i64 @ktime_get() #21
  %10 = add i64 %9, 32000000
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %11, -1
  %15 = or i1 %14, %13
  br i1 %15, label %29, label %16

16:                                               ; preds = %22, %1
  %17 = tail call i64 @ktime_get() #21
  %18 = icmp sgt i64 %17, %10
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !10
  %21 = and i32 %20, 1
  br label %29

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #21
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq i32 %24, -1
  %28 = or i1 %27, %26
  br i1 %28, label %29, label %16

29:                                               ; preds = %22, %19, %1
  %30 = phi i32 [ %12, %1 ], [ %21, %19 ], [ %25, %22 ]
  %31 = phi i32 [ %11, %1 ], [ %20, %19 ], [ %24, %22 ]
  %32 = icmp eq i32 %31, -1
  %33 = icmp eq i32 %30, 0
  %34 = or i1 %33, %32
  %35 = select i1 %34, i32 0, i32 -110
  %36 = select i1 %32, i32 -19, i32 %35
  switch i32 %36, label %42 [
    i32 -110, label %37
    i32 0, label %40
  ]

37:                                               ; preds = %29
  %38 = load ptr, ptr %0, align 8
  %39 = load ptr, ptr %38, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.3, i32 noundef 32000) #22
  br label %42

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 48
  store i32 0, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %37, %29
  ret i32 %36
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xhci_op_regs, ptr %3, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !19
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8
  %9 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.4) #22
  br label %104

10:                                               ; preds = %1
  %11 = and i32 %5, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.5) #22
  br label %104

16:                                               ; preds = %10
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.6) #21
  %17 = load ptr, ptr %2, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !20
  %19 = or i32 %18, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !21
  tail call void @arm_heavy_mb() #21
  %20 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #21, !srcloc !14
  %21 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 4096
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #21
  br label %27

27:                                               ; preds = %25, %16
  %28 = load ptr, ptr %2, align 4
  %29 = tail call i64 @ktime_get() #21
  %30 = add i64 %29, 10000000000
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = icmp eq i32 %31, -1
  %35 = or i1 %34, %33
  br i1 %35, label %49, label %36

36:                                               ; preds = %42, %27
  %37 = tail call i64 @ktime_get() #21
  %38 = icmp sgt i64 %37, %30
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !10
  %41 = and i32 %40, 2
  br label %49

42:                                               ; preds = %36
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #21
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  %47 = icmp eq i32 %44, -1
  %48 = or i1 %47, %46
  br i1 %48, label %49, label %36

49:                                               ; preds = %42, %39, %27
  %50 = phi i32 [ %32, %27 ], [ %41, %39 ], [ %45, %42 ]
  %51 = phi i32 [ %31, %27 ], [ %40, %39 ], [ %44, %42 ]
  %52 = icmp eq i32 %51, -1
  %53 = icmp eq i32 %50, 0
  %54 = or i1 %53, %52
  %55 = select i1 %54, i32 0, i32 -110
  %56 = select i1 %52, i32 -19, i32 %55
  %57 = xor i1 %52, true
  %58 = select i1 %57, i1 %54, i1 false
  br i1 %58, label %59, label %104

59:                                               ; preds = %49
  %60 = load i64, ptr %21, align 8
  %61 = and i64 %60, 268435456
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %0, align 8
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr i8, ptr %65, i32 -136
  tail call void @usb_asmedia_modifyflowcontrol(ptr noundef %66) #21
  br label %67

67:                                               ; preds = %63, %59
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.7) #21
  %68 = load ptr, ptr %2, align 4
  %69 = getelementptr inbounds %struct.xhci_op_regs, ptr %68, i32 0, i32 1
  %70 = tail call i64 @ktime_get() #21
  %71 = add i64 %70, 10000000000
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %73 = and i32 %72, 2048
  %74 = icmp eq i32 %73, 0
  %75 = icmp eq i32 %72, -1
  %76 = or i1 %75, %74
  br i1 %76, label %90, label %77

77:                                               ; preds = %83, %67
  %78 = tail call i64 @ktime_get() #21
  %79 = icmp sgt i64 %78, %71
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !10
  %82 = and i32 %81, 2048
  br label %90

83:                                               ; preds = %77
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %84(i32 noundef 214748) #21
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %86 = and i32 %85, 2048
  %87 = icmp eq i32 %86, 0
  %88 = icmp eq i32 %85, -1
  %89 = or i1 %88, %87
  br i1 %89, label %90, label %77

90:                                               ; preds = %83, %80, %67
  %91 = phi i32 [ %73, %67 ], [ %82, %80 ], [ %86, %83 ]
  %92 = phi i32 [ %72, %67 ], [ %81, %80 ], [ %85, %83 ]
  %93 = icmp eq i32 %92, -1
  %94 = icmp eq i32 %91, 0
  %95 = or i1 %94, %93
  %96 = select i1 %95, i32 0, i32 -110
  %97 = select i1 %93, i32 -19, i32 %96
  %98 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 3, i32 2
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 3, i32 3
  store i32 0, ptr %99, align 4
  %100 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 3, i32 6
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 3, i32 2
  store i32 0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 3, i32 3
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 3, i32 6
  store i32 0, ptr %103, align 4
  br label %104

104:                                              ; preds = %90, %49, %13, %7
  %105 = phi i32 [ -19, %7 ], [ 0, %13 ], [ %97, %90 ], [ %56, %49 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_asmedia_modifyflowcontrol(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_run(ptr noundef %0) #0 {
  %2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 29
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %11 = load i16, ptr %10, align 8
  %12 = or i16 %11, 32
  store i16 %12, ptr %10, align 8
  %13 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %7
  %16 = tail call i32 @xhci_start(ptr noundef %9) #21
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @xhci_halt(ptr noundef %9) #21
  br label %191

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %22, i32 0, i32 27
  store i32 1, ptr %23, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 4, i32 4
  store i32 1, ptr %24, align 8
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 21, i32 3, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 4
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  tail call void @xhci_ring_cmd_db(ptr noundef %9) #21
  br label %30

30:                                               ; preds = %29, %20
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.38) #21
  br label %191

31:                                               ; preds = %7
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.8) #21
  %32 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi ptr [ %36, %34 ], [ %0, %31 ]
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %38, i32 0, i32 29
  %40 = getelementptr inbounds %struct.usb_hcd, ptr %38, i32 4, i32 21, i32 3, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65536
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %149

44:                                               ; preds = %37
  %45 = load ptr, ptr %39, align 8
  %46 = load ptr, ptr %45, align 8
  %47 = and i64 %41, 64
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %126

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @free_irq(i32 noundef %51, ptr noundef %0) #21
  br label %55

55:                                               ; preds = %53, %49
  store i32 0, ptr %50, align 4
  %56 = load ptr, ptr %39, align 8
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr i8, ptr %57, i32 -136
  %59 = load volatile i32, ptr @__num_online_cpus, align 4
  %60 = add i32 %59, 1
  %61 = getelementptr inbounds %struct.usb_hcd, ptr %38, i32 1, i32 0, i32 9
  %62 = load i32, ptr %61, align 4
  %63 = lshr i32 %62, 8
  %64 = and i32 %63, 2047
  %65 = tail call i32 @llvm.umin.i32(i32 %60, i32 %64) #21
  %66 = getelementptr inbounds %struct.usb_hcd, ptr %38, i32 1, i32 0, i32 15
  store i32 %65, ptr %66, align 8
  %67 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %58, i32 noundef %65, i32 noundef %65, i32 noundef 4, ptr noundef null) #21
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %55
  %70 = load i32, ptr %66, align 8
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %73, label %97

72:                                               ; preds = %55
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %39, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.42) #21
  br label %102

73:                                               ; preds = %79, %69
  %74 = phi i32 [ %80, %79 ], [ 0, %69 ]
  %75 = tail call i32 @pci_irq_vector(ptr noundef %58, i32 noundef %74) #21
  %76 = load ptr, ptr %39, align 8
  %77 = tail call i32 @request_threaded_irq(i32 noundef %75, ptr noundef nonnull @xhci_msi_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.43, ptr noundef %76) #21
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = add nuw nsw i32 %74, 1
  %81 = load i32, ptr %66, align 8
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %73, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.usb_hcd, ptr %56, i32 0, i32 14
  %85 = load i16, ptr %84, align 8
  %86 = or i16 %85, 4
  store i16 %86, ptr %84, align 8
  br label %116

87:                                               ; preds = %73
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %39, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.44) #21
  %88 = icmp eq i32 %74, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %89, %87
  %90 = phi i32 [ %91, %89 ], [ %74, %87 ]
  %91 = add nsw i32 %90, -1
  %92 = tail call i32 @pci_irq_vector(ptr noundef %58, i32 noundef %91) #21
  %93 = load ptr, ptr %39, align 8
  %94 = tail call ptr @free_irq(i32 noundef %92, ptr noundef %93) #21
  %95 = icmp sgt i32 %90, 1
  br i1 %95, label %89, label %96

96:                                               ; preds = %89, %87
  tail call void @pci_free_irq_vectors(ptr noundef %58) #21
  br label %102

97:                                               ; preds = %69
  %98 = getelementptr inbounds %struct.usb_hcd, ptr %56, i32 0, i32 14
  %99 = load i16, ptr %98, align 8
  %100 = or i16 %99, 4
  store i16 %100, ptr %98, align 8
  %101 = icmp eq i32 %67, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %97, %96, %72
  %103 = load ptr, ptr %39, align 8
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr i8, ptr %104, i32 -136
  %106 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %105, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef null) #21
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %39, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.45) #21
  br label %119

109:                                              ; preds = %102
  %110 = getelementptr i8, ptr %104, i32 476
  %111 = load i32, ptr %110, align 4
  %112 = load ptr, ptr %39, align 8
  %113 = tail call i32 @request_threaded_irq(i32 noundef %111, ptr noundef nonnull @xhci_msi_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.43, ptr noundef %112) #21
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %39, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.46) #21
  tail call void @pci_free_irq_vectors(ptr noundef %105) #21
  br label %119

116:                                              ; preds = %109, %97, %83
  %117 = load i16, ptr %10, align 8
  %118 = or i16 %117, 8
  store i16 %118, ptr %10, align 8
  br label %149

119:                                              ; preds = %115, %108
  %120 = getelementptr i8, ptr %46, i32 476
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load ptr, ptr %39, align 8
  %125 = load ptr, ptr %124, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.39) #22
  br label %191

126:                                              ; preds = %119, %44
  %127 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 4
  %128 = load i8, ptr %127, align 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %132 = load ptr, ptr %131, align 4
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 2
  %135 = load i32, ptr %134, align 8
  %136 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %127, i32 noundef 24, ptr noundef nonnull @.str.40, ptr noundef %133, i32 noundef %135) #21
  br label %137

137:                                              ; preds = %130, %126
  %138 = getelementptr i8, ptr %46, i32 476
  %139 = load i32, ptr %138, align 4
  %140 = tail call i32 @request_threaded_irq(i32 noundef %139, ptr noundef nonnull @usb_hcd_irq, ptr noundef null, i32 noundef 128, ptr noundef %127, ptr noundef %0) #21
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %39, align 8
  %144 = load ptr, ptr %143, align 8
  %145 = load i32, ptr %138, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.41, i32 noundef %145) #22
  br label %191

146:                                              ; preds = %137
  %147 = load i32, ptr %138, align 4
  %148 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 15
  store i32 %147, ptr %148, align 4
  br label %149

149:                                              ; preds = %146, %116, %37
  %150 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 8
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.xhci_intr_reg, ptr %151, i32 0, i32 5
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !22
  %154 = getelementptr i32, ptr %152, i32 1
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !23
  %156 = and i32 %153, -16
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.9, i32 noundef %156) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.10) #21
  %157 = load ptr, ptr %150, align 8
  %158 = getelementptr inbounds %struct.xhci_intr_reg, ptr %157, i32 0, i32 1
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !24
  %160 = and i32 %159, -65536
  %161 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 10, i32 0, i32 3
  %162 = load i32, ptr %161, align 4
  %163 = udiv i32 %162, 250
  %164 = and i32 %163, 65535
  %165 = or i32 %164, %160
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !25
  tail call void @arm_heavy_mb() #21
  %166 = load ptr, ptr %150, align 8
  %167 = getelementptr inbounds %struct.xhci_intr_reg, ptr %166, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #21, !srcloc !14
  %168 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 3
  %169 = load ptr, ptr %168, align 4
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !26
  %171 = or i32 %170, 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.11, i32 noundef %171) #21
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !27
  tail call void @arm_heavy_mb() #21
  %172 = load ptr, ptr %168, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %171) #21, !srcloc !14
  %173 = load ptr, ptr %150, align 8
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !28
  %175 = load ptr, ptr %150, align 8
  %176 = and i32 %174, -4
  %177 = or i32 %176, 2
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.12, ptr noundef %175, i32 noundef %177) #21
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !29
  tail call void @arm_heavy_mb() #21
  %178 = load ptr, ptr %150, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %177) #21, !srcloc !14
  %179 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 21, i32 3, i32 1
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 4
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %149
  %184 = tail call ptr @xhci_alloc_command(ptr noundef %9, i1 noundef zeroext false, i32 noundef 3264) #21
  %185 = icmp eq ptr %184, null
  br i1 %185, label %191, label %186

186:                                              ; preds = %183
  %187 = tail call i32 @xhci_queue_vendor_command(ptr noundef %9, ptr noundef nonnull %184, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 50176) #21
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  tail call void @xhci_free_command(ptr noundef %9, ptr noundef nonnull %184) #21
  br label %190

190:                                              ; preds = %189, %186, %149
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.13) #21
  tail call void @xhci_debugfs_init(ptr noundef %9) #21
  br label %191

191:                                              ; preds = %190, %183, %142, %123, %30, %18
  %192 = phi i32 [ 0, %190 ], [ -12, %183 ], [ -19, %18 ], [ 0, %30 ], [ %140, %142 ], [ -22, %123 ]
  ret i32 %192
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_alloc_command(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_vendor_command(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_free_command(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_shutdown(ptr noundef %0) #0 {
  %2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 29
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 21, i32 3, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 8192
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -136
  tail call void @usb_disable_xhci_ports(ptr noundef %17) #21
  br label %18

18:                                               ; preds = %14, %7
  %19 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #21
  %20 = tail call i32 @xhci_halt(ptr noundef %9)
  %21 = load i64, ptr %10, align 8
  %22 = and i64 %21, 262144
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = tail call i32 @xhci_reset(ptr noundef %9)
  br label %26

26:                                               ; preds = %24, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !30
  %27 = load i16, ptr %19, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !32
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call fastcc void @xhci_cleanup_msix(ptr noundef %9)
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.xhci_op_regs, ptr %30, i32 0, i32 1
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !35
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.14, i32 noundef %32) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disable_xhci_ports(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_cleanup_msix(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -136
  %5 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65536
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %2, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %2, i32 0, i32 14
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 24
  %20 = load i32, ptr %19, align 8
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %22, %18
  %23 = phi i32 [ %27, %22 ], [ 0, %18 ]
  %24 = tail call i32 @pci_irq_vector(ptr noundef %4, i32 noundef %23) #21
  %25 = load ptr, ptr %0, align 8
  %26 = tail call ptr @free_irq(i32 noundef %24, ptr noundef %25) #21
  %27 = add nuw nsw i32 %23, 1
  %28 = load i32, ptr %19, align 8
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %22, label %34

30:                                               ; preds = %13
  %31 = tail call i32 @pci_irq_vector(ptr noundef %4, i32 noundef 0) #21
  %32 = load ptr, ptr %0, align 8
  %33 = tail call ptr @free_irq(i32 noundef %31, ptr noundef %32) #21
  br label %34

34:                                               ; preds = %30, %22, %18
  tail call void @pci_free_irq_vectors(ptr noundef %4) #21
  %35 = load i16, ptr %14, align 8
  %36 = and i16 %35, -5
  store i16 %36, ptr %14, align 8
  br label %37

37:                                               ; preds = %34, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_suspend(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 27
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %12 [
    i32 0, label %273
    i32 4, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 27
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %13, label %12

12:                                               ; preds = %6, %2
  br label %273

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56
  tail call fastcc void @xhci_disable_hub_port_wake(ptr noundef %0, ptr noundef %14, i1 noundef zeroext %1)
  %15 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55
  tail call fastcc void @xhci_disable_hub_port_wake(ptr noundef %0, ptr noundef %15, i1 noundef zeroext %1)
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 12
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %273, label %20

20:                                               ; preds = %13
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %16) #21
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 5
  %22 = tail call i32 @del_timer_sync(ptr noundef %21) #21
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %23, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %24) #21
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %25, i32 0, i32 5
  %27 = tail call i32 @del_timer_sync(ptr noundef %26) #21
  %28 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 1073741824
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #21
  br label %33

33:                                               ; preds = %32, %20
  %34 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %34) #21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %16) #21
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %35, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %36) #21
  %37 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !36
  %40 = and i32 %39, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !37
  tail call void @arm_heavy_mb() #21
  %41 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %40) #21, !srcloc !14
  %42 = load i64, ptr %28, align 8
  %43 = and i64 %42, 131072
  %44 = icmp eq i64 %43, 0
  %45 = load ptr, ptr %37, align 4
  %46 = getelementptr inbounds %struct.xhci_op_regs, ptr %45, i32 0, i32 1
  %47 = tail call i64 @ktime_get() #21
  %48 = select i1 %44, i64 64000000, i64 640000000
  %49 = add i64 %48, %47
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %60, %33
  %54 = tail call i64 @ktime_get() #21
  %55 = icmp sgt i64 %54, %49
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !10
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br label %65

60:                                               ; preds = %53
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748) #21
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %53, label %65

65:                                               ; preds = %60, %56, %33
  %66 = phi i1 [ true, %33 ], [ %59, %56 ], [ true, %60 ]
  %67 = phi i32 [ %50, %33 ], [ %57, %56 ], [ %62, %60 ]
  %68 = icmp eq i32 %67, -1
  %69 = or i1 %66, %68
  %70 = xor i1 %68, true
  %71 = select i1 %70, i1 %69, i1 false
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load ptr, ptr %0, align 8
  %74 = load ptr, ptr %73, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.15) #22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !30
  %75 = load i16, ptr %34, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !32
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %273

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 29
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.xhci_ring, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %82, %77
  %83 = phi ptr [ %81, %77 ], [ %90, %82 ]
  %84 = load ptr, ptr %83, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(4080) %84, i8 0, i32 4080, i1 false) #21
  %85 = load ptr, ptr %83, align 4
  %86 = getelementptr %union.xhci_trb, ptr %85, i32 255, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, -2
  store i32 %88, ptr %86, align 4
  %89 = getelementptr inbounds %struct.xhci_segment, ptr %83, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %80, align 4
  %92 = icmp eq ptr %90, %91
  br i1 %92, label %93, label %82

93:                                               ; preds = %82
  %94 = load ptr, ptr %79, align 4
  store ptr %94, ptr %80, align 4
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.xhci_ring, ptr %79, i32 0, i32 4
  store ptr %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.xhci_ring, ptr %79, i32 0, i32 3
  store ptr %94, ptr %97, align 4
  %98 = getelementptr inbounds %struct.xhci_ring, ptr %79, i32 0, i32 2
  store ptr %95, ptr %98, align 4
  %99 = getelementptr inbounds %struct.xhci_ring, ptr %79, i32 0, i32 10
  %100 = load i32, ptr %99, align 4
  %101 = mul i32 %100, 255
  %102 = add i32 %101, -1
  %103 = getelementptr inbounds %struct.xhci_ring, ptr %79, i32 0, i32 11
  store i32 %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.xhci_ring, ptr %79, i32 0, i32 7
  store i32 1, ptr %104, align 4
  %105 = load ptr, ptr %37, align 4
  %106 = getelementptr inbounds %struct.xhci_op_regs, ptr %105, i32 0, i32 6
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !22
  %108 = getelementptr i32, ptr %106, i32 1
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !23
  %110 = and i32 %107, 63
  %111 = load ptr, ptr %78, align 4
  %112 = getelementptr inbounds %struct.xhci_ring, ptr %111, i32 0, i32 5
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.xhci_ring, ptr %111, i32 0, i32 4
  %115 = load ptr, ptr %114, align 4
  %116 = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %113, ptr noundef %115) #21
  %117 = and i32 %116, -64
  %118 = or i32 %117, %110
  %119 = load ptr, ptr %78, align 4
  %120 = getelementptr inbounds %struct.xhci_ring, ptr %119, i32 0, i32 7
  %121 = load i32, ptr %120, align 4
  %122 = or i32 %118, %121
  %123 = zext i32 %122 to i64
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.47, i64 noundef %123) #21
  %124 = load ptr, ptr %37, align 4
  %125 = getelementptr inbounds %struct.xhci_op_regs, ptr %124, i32 0, i32 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !38
  tail call void @arm_heavy_mb() #21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %122) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !39
  tail call void @arm_heavy_mb() #21
  %126 = getelementptr i8, ptr %125, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 0) #21, !srcloc !14
  %127 = load ptr, ptr %37, align 4
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !40
  %129 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50
  store i32 %128, ptr %129, align 8
  %130 = load ptr, ptr %37, align 4
  %131 = getelementptr inbounds %struct.xhci_op_regs, ptr %130, i32 0, i32 5
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !41
  %133 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 1
  store i32 %132, ptr %133, align 4
  %134 = load ptr, ptr %37, align 4
  %135 = getelementptr inbounds %struct.xhci_op_regs, ptr %134, i32 0, i32 8
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !22
  %137 = getelementptr i32, ptr %135, i32 1
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !23
  %139 = zext i32 %136 to i64
  %140 = zext i32 %138 to i64
  %141 = shl nuw i64 %140, 32
  %142 = or i64 %141, %139
  %143 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 2
  store i64 %142, ptr %143, align 8
  %144 = load ptr, ptr %37, align 4
  %145 = getelementptr inbounds %struct.xhci_op_regs, ptr %144, i32 0, i32 9
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !42
  %147 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 3
  store i32 %146, ptr %147, align 8
  %148 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 6
  %149 = load ptr, ptr %148, align 8
  %150 = getelementptr inbounds %struct.xhci_intr_reg, ptr %149, i32 0, i32 2
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !43
  %152 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 6
  store i32 %151, ptr %152, align 4
  %153 = load ptr, ptr %148, align 8
  %154 = getelementptr inbounds %struct.xhci_intr_reg, ptr %153, i32 0, i32 4
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !22
  %156 = getelementptr i32, ptr %154, i32 1
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !23
  %158 = zext i32 %155 to i64
  %159 = zext i32 %157 to i64
  %160 = shl nuw i64 %159, 32
  %161 = or i64 %160, %158
  %162 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 7
  store i64 %161, ptr %162, align 8
  %163 = load ptr, ptr %148, align 8
  %164 = getelementptr inbounds %struct.xhci_intr_reg, ptr %163, i32 0, i32 5
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !22
  %166 = getelementptr i32, ptr %164, i32 1
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %166) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !23
  %168 = zext i32 %165 to i64
  %169 = zext i32 %167 to i64
  %170 = shl nuw i64 %169, 32
  %171 = or i64 %170, %168
  %172 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 8
  store i64 %171, ptr %172, align 8
  %173 = load ptr, ptr %148, align 8
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %173) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !44
  %175 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 4
  store i32 %174, ptr %175, align 4
  %176 = load ptr, ptr %148, align 8
  %177 = getelementptr inbounds %struct.xhci_intr_reg, ptr %176, i32 0, i32 1
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !45
  %179 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 5
  store i32 %178, ptr %179, align 8
  %180 = load ptr, ptr %37, align 4
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %180) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !46
  %182 = or i32 %181, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !47
  tail call void @arm_heavy_mb() #21
  %183 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %182) #21, !srcloc !14
  %184 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 57
  %185 = load i8, ptr %184, align 4
  %186 = and i8 %185, -3
  store i8 %186, ptr %184, align 4
  %187 = load ptr, ptr %37, align 4
  %188 = getelementptr inbounds %struct.xhci_op_regs, ptr %187, i32 0, i32 1
  %189 = tail call i64 @ktime_get() #21
  %190 = add i64 %189, 20000000
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %192 = and i32 %191, 256
  %193 = icmp eq i32 %192, 0
  %194 = icmp eq i32 %191, -1
  %195 = or i1 %194, %193
  br i1 %195, label %209, label %196

196:                                              ; preds = %202, %93
  %197 = tail call i64 @ktime_get() #21
  %198 = icmp sgt i64 %197, %190
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !10
  %201 = and i32 %200, 256
  br label %209

202:                                              ; preds = %196
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %203(i32 noundef 214748) #21
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %205 = and i32 %204, 256
  %206 = icmp eq i32 %205, 0
  %207 = icmp eq i32 %204, -1
  %208 = or i1 %207, %206
  br i1 %208, label %209, label %196

209:                                              ; preds = %202, %199, %93
  %210 = phi i32 [ %192, %93 ], [ %201, %199 ], [ %205, %202 ]
  %211 = phi i32 [ %191, %93 ], [ %200, %199 ], [ %204, %202 ]
  %212 = icmp eq i32 %211, -1
  %213 = icmp eq i32 %210, 0
  %214 = or i1 %213, %212
  %215 = xor i1 %212, true
  %216 = select i1 %215, i1 %214, i1 false
  br i1 %216, label %238, label %217

217:                                              ; preds = %209
  %218 = load ptr, ptr %37, align 4
  %219 = getelementptr inbounds %struct.xhci_op_regs, ptr %218, i32 0, i32 1
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %219) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !48
  %221 = load i64, ptr %28, align 8
  %222 = and i64 %221, 34359738368
  %223 = icmp ne i64 %222, 0
  %224 = and i32 %220, 1024
  %225 = icmp eq i32 %224, 0
  %226 = select i1 %223, i1 %225, i1 false
  %227 = and i32 %220, 4096
  %228 = icmp eq i32 %227, 0
  %229 = select i1 %226, i1 %228, i1 false
  br i1 %229, label %230, label %233

230:                                              ; preds = %217
  %231 = load i8, ptr %184, align 4
  %232 = or i8 %231, 2
  store i8 %232, ptr %184, align 4
  br label %238

233:                                              ; preds = %217
  %234 = load ptr, ptr %0, align 8
  %235 = load ptr, ptr %234, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %235, ptr noundef nonnull @.str.16) #22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !30
  %236 = load i16, ptr %34, align 4
  %237 = add i16 %236, 1
  store i16 %237, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !32
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %273

238:                                              ; preds = %230, %209
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !30
  %239 = load i16, ptr %34, align 4
  %240 = add i16 %239, 1
  store i16 %240, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !32
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %241 = load i64, ptr %28, align 8
  %242 = and i64 %241, 16384
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %255, label %244

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 63
  %246 = load i32, ptr %245, align 4
  %247 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 1
  %248 = load i32, ptr %247, align 4
  %249 = shl nsw i32 -1, %248
  %250 = xor i32 %249, -1
  %251 = icmp eq i32 %246, %250
  br i1 %251, label %255, label %252

252:                                              ; preds = %244
  %253 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 62
  %254 = tail call i32 @del_timer_sync(ptr noundef %253) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.xhci_suspend) #21
  br label %255

255:                                              ; preds = %252, %244, %238
  %256 = load ptr, ptr %0, align 8
  %257 = getelementptr inbounds %struct.usb_hcd, ptr %256, i32 0, i32 14
  %258 = load i16, ptr %257, align 8
  %259 = and i16 %258, 4
  %260 = icmp eq i16 %259, 0
  br i1 %260, label %273, label %261

261:                                              ; preds = %255
  %262 = load ptr, ptr %256, align 8
  %263 = getelementptr i8, ptr %262, i32 -136
  %264 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 24
  %265 = load i32, ptr %264, align 8
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %267, %261
  %268 = phi i32 [ %270, %267 ], [ 0, %261 ]
  %269 = tail call i32 @pci_irq_vector(ptr noundef %263, i32 noundef %268) #21
  tail call void @synchronize_irq(i32 noundef %269) #21
  %270 = add nuw nsw i32 %268, 1
  %271 = load i32, ptr %264, align 8
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %267, label %273

273:                                              ; preds = %267, %261, %255, %233, %72, %13, %12, %2
  %274 = phi i32 [ -22, %12 ], [ -110, %72 ], [ -110, %233 ], [ %5, %2 ], [ 0, %13 ], [ 0, %255 ], [ 0, %261 ], [ 0, %267 ]
  ret i32 %274
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_disable_hub_port_wake(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 12
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #21
  %6 = getelementptr inbounds %struct.xhci_hub, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %29, %3
  %10 = phi i32 [ %30, %29 ], [ 0, %3 ]
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !49
  %16 = tail call i32 @xhci_port_state_to_neutral(i32 noundef %15) #21
  %17 = and i32 %16, -234881025
  %18 = select i1 %2, i32 %16, i32 %17
  %19 = and i32 %15, 131073
  %20 = icmp eq i32 %19, 0
  %21 = or i32 %18, 131072
  %22 = select i1 %20, i32 %21, i32 %18
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !50
  tail call void @arm_heavy_mb() #21
  %25 = load ptr, ptr %1, align 4
  %26 = getelementptr ptr, ptr %25, i32 %10
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %22) #21, !srcloc !14
  br label %29

29:                                               ; preds = %24, %9
  %30 = add nuw i32 %10, 1
  %31 = load i32, ptr %6, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %9, label %33

33:                                               ; preds = %29, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_quirks(ptr noundef %0) #3 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_quirks, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #21
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !51
  %16 = tail call i32 @__traceiter_xhci_dbg_quirks(ptr noundef null, ptr noundef %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !52
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_resume(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 27
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %401, label %7

7:                                                ; preds = %2
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 3, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 3, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %7
  tail call void @msleep(i32 noundef 100) #21
  br label %20

20:                                               ; preds = %19, %13
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %21) #21
  %22 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_hcd, ptr %23, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %24) #21
  %25 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %25) #21
  br i1 %1, label %185, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 128
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %185

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 57
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %185

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.xhci_op_regs, ptr %38, i32 0, i32 1
  %40 = tail call i64 @ktime_get() #21
  %41 = add i64 %40, 10000000000
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %43 = and i32 %42, 2048
  %44 = icmp eq i32 %43, 0
  %45 = icmp eq i32 %42, -1
  %46 = or i1 %45, %44
  br i1 %46, label %60, label %47

47:                                               ; preds = %53, %36
  %48 = tail call i64 @ktime_get() #21
  %49 = icmp sgt i64 %48, %41
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !10
  %52 = and i32 %51, 2048
  br label %60

53:                                               ; preds = %47
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #21
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %56 = and i32 %55, 2048
  %57 = icmp eq i32 %56, 0
  %58 = icmp eq i32 %55, -1
  %59 = or i1 %58, %57
  br i1 %59, label %60, label %47

60:                                               ; preds = %53, %50, %36
  %61 = phi i32 [ %43, %36 ], [ %52, %50 ], [ %56, %53 ]
  %62 = phi i32 [ %42, %36 ], [ %51, %50 ], [ %55, %53 ]
  %63 = icmp eq i32 %62, -1
  %64 = icmp eq i32 %61, 0
  %65 = or i1 %64, %63
  %66 = xor i1 %63, true
  %67 = select i1 %66, i1 %65, i1 false
  br i1 %67, label %75, label %68

68:                                               ; preds = %60
  %69 = select i1 %65, i32 0, i32 -110
  %70 = select i1 %63, i32 -19, i32 %69
  %71 = load ptr, ptr %0, align 8
  %72 = load ptr, ptr %71, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.18, i32 noundef %70) #22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !30
  %73 = load i16, ptr %25, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !32
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %401

75:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !53
  tail call void @arm_heavy_mb() #21
  %76 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50
  %77 = load i32, ptr %76, align 8
  %78 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %77) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !54
  tail call void @arm_heavy_mb() #21
  %79 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %37, align 4
  %82 = getelementptr inbounds %struct.xhci_op_regs, ptr %81, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #21, !srcloc !14
  %83 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 2
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %37, align 4
  %86 = getelementptr inbounds %struct.xhci_op_regs, ptr %85, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !38
  tail call void @arm_heavy_mb() #21
  %87 = trunc i64 %84 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %87) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !39
  tail call void @arm_heavy_mb() #21
  %88 = lshr i64 %84, 32
  %89 = trunc i64 %88 to i32
  %90 = getelementptr i8, ptr %86, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %89) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !55
  tail call void @arm_heavy_mb() #21
  %91 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 3
  %92 = load i32, ptr %91, align 8
  %93 = load ptr, ptr %37, align 4
  %94 = getelementptr inbounds %struct.xhci_op_regs, ptr %93, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !56
  tail call void @arm_heavy_mb() #21
  %95 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 6
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds %struct.xhci_intr_reg, ptr %98, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %96) #21, !srcloc !14
  %100 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 7
  %101 = load i64, ptr %100, align 8
  %102 = load ptr, ptr %97, align 8
  %103 = getelementptr inbounds %struct.xhci_intr_reg, ptr %102, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !38
  tail call void @arm_heavy_mb() #21
  %104 = trunc i64 %101 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %104) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !39
  tail call void @arm_heavy_mb() #21
  %105 = lshr i64 %101, 32
  %106 = trunc i64 %105 to i32
  %107 = getelementptr i8, ptr %103, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %106) #21, !srcloc !14
  %108 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 8
  %109 = load i64, ptr %108, align 8
  %110 = load ptr, ptr %97, align 8
  %111 = getelementptr inbounds %struct.xhci_intr_reg, ptr %110, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !38
  tail call void @arm_heavy_mb() #21
  %112 = trunc i64 %109 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %112) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !39
  tail call void @arm_heavy_mb() #21
  %113 = lshr i64 %109, 32
  %114 = trunc i64 %113 to i32
  %115 = getelementptr i8, ptr %111, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %114) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !57
  tail call void @arm_heavy_mb() #21
  %116 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = load ptr, ptr %97, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %117) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !58
  tail call void @arm_heavy_mb() #21
  %119 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 50, i32 5
  %120 = load i32, ptr %119, align 8
  %121 = load ptr, ptr %97, align 8
  %122 = getelementptr inbounds %struct.xhci_intr_reg, ptr %121, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #21, !srcloc !14
  %123 = load ptr, ptr %37, align 4
  %124 = getelementptr inbounds %struct.xhci_op_regs, ptr %123, i32 0, i32 6
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !22
  %126 = getelementptr i32, ptr %124, i32 1
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !23
  %128 = and i32 %125, 63
  %129 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 29
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.xhci_ring, ptr %130, i32 0, i32 5
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.xhci_ring, ptr %130, i32 0, i32 4
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %132, ptr noundef %134) #21
  %136 = and i32 %135, -64
  %137 = or i32 %136, %128
  %138 = load ptr, ptr %129, align 4
  %139 = getelementptr inbounds %struct.xhci_ring, ptr %138, i32 0, i32 7
  %140 = load i32, ptr %139, align 4
  %141 = or i32 %137, %140
  %142 = zext i32 %141 to i64
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.47, i64 noundef %142) #21
  %143 = load ptr, ptr %37, align 4
  %144 = getelementptr inbounds %struct.xhci_op_regs, ptr %143, i32 0, i32 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !38
  tail call void @arm_heavy_mb() #21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %141) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !39
  tail call void @arm_heavy_mb() #21
  %145 = getelementptr i8, ptr %144, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 0) #21, !srcloc !14
  %146 = load ptr, ptr %37, align 4
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !59
  %148 = or i32 %147, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !60
  tail call void @arm_heavy_mb() #21
  %149 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %148) #21, !srcloc !14
  %150 = load ptr, ptr %37, align 4
  %151 = getelementptr inbounds %struct.xhci_op_regs, ptr %150, i32 0, i32 1
  %152 = tail call i64 @ktime_get() #21
  %153 = add i64 %152, 100000000
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %155 = and i32 %154, 512
  %156 = icmp eq i32 %155, 0
  %157 = icmp eq i32 %154, -1
  %158 = or i1 %157, %156
  br i1 %158, label %172, label %159

159:                                              ; preds = %165, %75
  %160 = tail call i64 @ktime_get() #21
  %161 = icmp sgt i64 %160, %153
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !10
  %164 = and i32 %163, 512
  br label %172

165:                                              ; preds = %159
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %166(i32 noundef 214748) #21
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %168 = and i32 %167, 512
  %169 = icmp eq i32 %168, 0
  %170 = icmp eq i32 %167, -1
  %171 = or i1 %170, %169
  br i1 %171, label %172, label %159

172:                                              ; preds = %165, %162, %75
  %173 = phi i32 [ %155, %75 ], [ %164, %162 ], [ %168, %165 ]
  %174 = phi i32 [ %154, %75 ], [ %163, %162 ], [ %167, %165 ]
  %175 = icmp eq i32 %174, -1
  %176 = icmp eq i32 %173, 0
  %177 = or i1 %176, %175
  %178 = xor i1 %175, true
  %179 = select i1 %178, i1 %177, i1 false
  br i1 %179, label %185, label %180

180:                                              ; preds = %172
  %181 = load ptr, ptr %0, align 8
  %182 = load ptr, ptr %181, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %182, ptr noundef nonnull @.str.19) #22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !30
  %183 = load i16, ptr %25, align 4
  %184 = add i16 %183, 1
  store i16 %184, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !32
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %401

185:                                              ; preds = %172, %31, %26, %20
  %186 = phi i1 [ false, %172 ], [ true, %20 ], [ true, %26 ], [ true, %31 ]
  %187 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 3
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.xhci_op_regs, ptr %188, i32 0, i32 1
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !61
  %191 = and i32 %190, 5120
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %185
  %194 = load ptr, ptr %0, align 8
  %195 = load ptr, ptr %194, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %195, ptr noundef nonnull @.str.20, i32 noundef %190) #22
  br label %197

196:                                              ; preds = %185
  br i1 %186, label %197, label %255

197:                                              ; preds = %196, %193
  %198 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %199 = load i64, ptr %198, align 8
  %200 = and i64 %199, 16384
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 63
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 1
  %206 = load i32, ptr %205, align 4
  %207 = shl nsw i32 -1, %206
  %208 = xor i32 %207, -1
  %209 = icmp eq i32 %204, %208
  br i1 %209, label %213, label %210

210:                                              ; preds = %202
  %211 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 62
  %212 = tail call i32 @del_timer_sync(ptr noundef %211) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.21) #21
  br label %213

213:                                              ; preds = %210, %202, %197
  %214 = load ptr, ptr %0, align 8
  %215 = getelementptr inbounds %struct.usb_bus, ptr %214, i32 0, i32 11
  %216 = load ptr, ptr %215, align 8
  tail call void @usb_root_hub_lost_power(ptr noundef %216) #21
  %217 = load ptr, ptr %22, align 4
  %218 = getelementptr inbounds %struct.usb_bus, ptr %217, i32 0, i32 11
  %219 = load ptr, ptr %218, align 8
  tail call void @usb_root_hub_lost_power(ptr noundef %219) #21
  %220 = tail call i32 @xhci_halt(ptr noundef %0)
  tail call fastcc void @xhci_zero_64b_regs(ptr noundef %0)
  %221 = tail call i32 @xhci_reset(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !30
  %222 = load i16, ptr %25, align 4
  %223 = add i16 %222, 1
  store i16 %223, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !32
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  %224 = icmp eq i32 %221, 0
  br i1 %224, label %225, label %401

225:                                              ; preds = %213
  tail call fastcc void @xhci_cleanup_msix(ptr noundef %0)
  %226 = load ptr, ptr %187, align 4
  %227 = getelementptr inbounds %struct.xhci_op_regs, ptr %226, i32 0, i32 1
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !62
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !63
  tail call void @arm_heavy_mb() #21
  %229 = and i32 %228, -8192
  %230 = or i32 %229, 8
  %231 = load ptr, ptr %187, align 4
  %232 = getelementptr inbounds %struct.xhci_op_regs, ptr %231, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %230) #21, !srcloc !14
  %233 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 6
  %234 = load ptr, ptr %233, align 8
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !64
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !65
  tail call void @arm_heavy_mb() #21
  %236 = and i32 %235, -4
  %237 = load ptr, ptr %233, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %237, i32 %236) #21, !srcloc !14
  tail call void @xhci_mem_cleanup(ptr noundef %0) #21
  tail call void @xhci_debugfs_exit(ptr noundef %0) #21
  %238 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %3) #21
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %225
  %241 = load ptr, ptr %22, align 4
  br label %242

242:                                              ; preds = %240, %225
  %243 = phi ptr [ %241, %240 ], [ %3, %225 ]
  %244 = getelementptr inbounds %struct.usb_hcd, ptr %3, i32 0, i32 25
  %245 = load ptr, ptr %244, align 4
  %246 = tail call fastcc i32 @xhci_init(ptr noundef %245)
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %401

248:                                              ; preds = %242
  %249 = load ptr, ptr %244, align 4
  %250 = tail call i32 @xhci_run(ptr noundef %249)
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %284, label %252

252:                                              ; preds = %248
  store i32 4, ptr %4, align 8
  %253 = load ptr, ptr %22, align 4
  %254 = getelementptr inbounds %struct.usb_hcd, ptr %253, i32 0, i32 27
  store i32 4, ptr %254, align 8
  br label %388

255:                                              ; preds = %196
  %256 = load ptr, ptr %187, align 4
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %256) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !66
  %258 = or i32 %257, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !67
  tail call void @arm_heavy_mb() #21
  %259 = load ptr, ptr %187, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %258) #21, !srcloc !14
  %260 = load ptr, ptr %187, align 4
  %261 = getelementptr inbounds %struct.xhci_op_regs, ptr %260, i32 0, i32 1
  %262 = tail call i64 @ktime_get() #21
  %263 = add i64 %262, 250000000
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %261) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %265 = and i32 %264, 1
  %266 = icmp eq i32 %265, 0
  %267 = icmp eq i32 %264, -1
  %268 = or i1 %267, %266
  br i1 %268, label %281, label %269

269:                                              ; preds = %274, %255
  %270 = tail call i64 @ktime_get() #21
  %271 = icmp sgt i64 %270, %263
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %261) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !10
  br label %281

274:                                              ; preds = %269
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %275(i32 noundef 214748) #21
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %261) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %277 = and i32 %276, 1
  %278 = icmp eq i32 %277, 0
  %279 = icmp eq i32 %276, -1
  %280 = or i1 %279, %278
  br i1 %280, label %281, label %269

281:                                              ; preds = %274, %272, %255
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !30
  %282 = load i16, ptr %25, align 4
  %283 = add i16 %282, 1
  store i16 %283, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !32
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  br label %289

284:                                              ; preds = %248
  %285 = tail call i32 @xhci_run(ptr noundef %243)
  store i32 4, ptr %4, align 8
  %286 = load ptr, ptr %22, align 4
  %287 = getelementptr inbounds %struct.usb_hcd, ptr %286, i32 0, i32 27
  store i32 4, ptr %287, align 8
  %288 = icmp eq i32 %285, 0
  br i1 %288, label %289, label %388

289:                                              ; preds = %284, %281
  %290 = phi i1 [ false, %281 ], [ true, %284 ]
  %291 = load ptr, ptr %187, align 4
  %292 = getelementptr inbounds %struct.xhci_op_regs, ptr %291, i32 0, i32 1
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %292) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !68
  %294 = and i32 %293, 8
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %374

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55
  %298 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 1
  %299 = load i32, ptr %298, align 4
  %300 = load ptr, ptr %297, align 4
  br label %301

301:                                              ; preds = %304, %296
  %302 = phi i32 [ %299, %296 ], [ %305, %304 ]
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %315, label %304

304:                                              ; preds = %301
  %305 = add i32 %302, -1
  %306 = getelementptr ptr, ptr %300, i32 %305
  %307 = load ptr, ptr %306, align 4
  %308 = load ptr, ptr %307, align 4
  %309 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %308) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !69
  %310 = and i32 %309, 16646144
  %311 = icmp ne i32 %310, 0
  %312 = and i32 %309, 480
  %313 = icmp eq i32 %312, 480
  %314 = or i1 %311, %313
  br i1 %314, label %374, label %301

315:                                              ; preds = %301
  %316 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56
  %317 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 1
  %318 = load i32, ptr %317, align 4
  %319 = load ptr, ptr %316, align 4
  br label %320

320:                                              ; preds = %323, %315
  %321 = phi i32 [ %318, %315 ], [ %324, %323 ]
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %334, label %323

323:                                              ; preds = %320
  %324 = add i32 %321, -1
  %325 = getelementptr ptr, ptr %319, i32 %324
  %326 = load ptr, ptr %325, align 4
  %327 = load ptr, ptr %326, align 4
  %328 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %327) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !70
  %329 = and i32 %328, 16646144
  %330 = icmp ne i32 %329, 0
  %331 = and i32 %328, 480
  %332 = icmp eq i32 %331, 480
  %333 = or i1 %330, %332
  br i1 %333, label %374, label %320

334:                                              ; preds = %320
  tail call void @msleep(i32 noundef 120) #21
  %335 = load ptr, ptr %187, align 4
  %336 = getelementptr inbounds %struct.xhci_op_regs, ptr %335, i32 0, i32 1
  %337 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %336) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !68
  %338 = and i32 %337, 8
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %374

340:                                              ; preds = %334
  %341 = load i32, ptr %298, align 4
  %342 = load ptr, ptr %297, align 4
  br label %343

343:                                              ; preds = %346, %340
  %344 = phi i32 [ %341, %340 ], [ %347, %346 ]
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %357, label %346

346:                                              ; preds = %343
  %347 = add i32 %344, -1
  %348 = getelementptr ptr, ptr %342, i32 %347
  %349 = load ptr, ptr %348, align 4
  %350 = load ptr, ptr %349, align 4
  %351 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %350) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !69
  %352 = and i32 %351, 16646144
  %353 = icmp ne i32 %352, 0
  %354 = and i32 %351, 480
  %355 = icmp eq i32 %354, 480
  %356 = or i1 %353, %355
  br i1 %356, label %374, label %343

357:                                              ; preds = %343
  %358 = load i32, ptr %317, align 4
  %359 = load ptr, ptr %316, align 4
  br label %360

360:                                              ; preds = %363, %357
  %361 = phi i32 [ %358, %357 ], [ %364, %363 ]
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %376, label %363

363:                                              ; preds = %360
  %364 = add i32 %361, -1
  %365 = getelementptr ptr, ptr %359, i32 %364
  %366 = load ptr, ptr %365, align 4
  %367 = load ptr, ptr %366, align 4
  %368 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %367) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !70
  %369 = and i32 %368, 16646144
  %370 = icmp ne i32 %369, 0
  %371 = and i32 %368, 480
  %372 = icmp eq i32 %371, 480
  %373 = or i1 %370, %372
  br i1 %373, label %374, label %360

374:                                              ; preds = %363, %346, %334, %323, %304, %289
  %375 = load ptr, ptr %22, align 4
  tail call void @usb_hcd_resume_root_hub(ptr noundef %375) #21
  tail call void @usb_hcd_resume_root_hub(ptr noundef %3) #21
  br label %376

376:                                              ; preds = %374, %360
  %377 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %378 = load i64, ptr %377, align 8
  %379 = and i64 %378, 16384
  %380 = icmp eq i64 %379, 0
  %381 = or i1 %290, %380
  br i1 %381, label %388, label %382

382:                                              ; preds = %376
  %383 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 63
  store i32 0, ptr %383, align 4
  %384 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 62
  tail call void @init_timer_key(ptr noundef %384, ptr noundef nonnull @compliance_mode_recovery, i32 noundef 0, ptr noundef null, ptr noundef null) #21
  %385 = load volatile i32, ptr @jiffies, align 64
  %386 = add i32 %385, 200
  %387 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 62, i32 1
  store i32 %386, ptr %387, align 8
  tail call void @add_timer(ptr noundef %384) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.59) #21
  br label %388

388:                                              ; preds = %382, %376, %284, %252
  %389 = phi ptr [ %377, %376 ], [ %377, %382 ], [ %198, %284 ], [ %198, %252 ]
  %390 = phi i32 [ 0, %376 ], [ 0, %382 ], [ %285, %284 ], [ %250, %252 ]
  %391 = load i64, ptr %389, align 8
  %392 = and i64 %391, 268435456
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %388
  %395 = load ptr, ptr %3, align 8
  %396 = getelementptr i8, ptr %395, i32 -136
  tail call void @usb_asmedia_modifyflowcontrol(ptr noundef %396) #21
  br label %397

397:                                              ; preds = %394, %388
  %398 = load ptr, ptr %22, align 4
  %399 = getelementptr inbounds %struct.usb_hcd, ptr %398, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %399) #21
  %400 = load ptr, ptr %22, align 4
  tail call void @usb_hcd_poll_rh_status(ptr noundef %400) #21
  tail call void @_set_bit(i32 noundef 2, ptr noundef %21) #21
  tail call void @usb_hcd_poll_rh_status(ptr noundef %3) #21
  br label %401

401:                                              ; preds = %397, %242, %213, %180, %68, %2
  %402 = phi i32 [ %390, %397 ], [ %70, %68 ], [ -110, %180 ], [ 0, %2 ], [ %221, %213 ], [ %246, %242 ]
  ret i32 %402
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_root_hub_lost_power(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_zero_64b_regs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 4294967296
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %103, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_bus, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 34
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %103, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.48) #22
  %15 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !71
  %18 = and i32 %17, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !72
  tail call void @arm_heavy_mb() #21
  %19 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #21, !srcloc !14
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr inbounds %struct.xhci_op_regs, ptr %20, i32 0, i32 1
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !73
  %23 = or i32 %22, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !74
  tail call void @arm_heavy_mb() #21
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr inbounds %struct.xhci_op_regs, ptr %24, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #21, !srcloc !14
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr inbounds %struct.xhci_op_regs, ptr %26, i32 0, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !22
  %29 = getelementptr i32, ptr %27, i32 1
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %13
  %33 = load ptr, ptr %15, align 4
  %34 = getelementptr inbounds %struct.xhci_op_regs, ptr %33, i32 0, i32 8
  tail call fastcc void @xhci_write_64(i64 noundef 0, ptr noundef %34)
  br label %35

35:                                               ; preds = %32, %13
  %36 = load ptr, ptr %15, align 4
  %37 = getelementptr inbounds %struct.xhci_op_regs, ptr %36, i32 0, i32 6
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !22
  %39 = getelementptr i32, ptr %37, i32 1
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !23
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %15, align 4
  %44 = getelementptr inbounds %struct.xhci_op_regs, ptr %43, i32 0, i32 6
  tail call fastcc void @xhci_write_64(i64 noundef 0, ptr noundef %44)
  br label %45

45:                                               ; preds = %42, %35
  %46 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %47, 8
  %49 = and i32 %48, 2047
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 128)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 4
  br label %54

54:                                               ; preds = %70, %52
  %55 = phi i32 [ 0, %52 ], [ %71, %70 ]
  %56 = load ptr, ptr %53, align 8
  %57 = getelementptr %struct.xhci_run_regs, ptr %56, i32 0, i32 2, i32 %55, i32 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !22
  %59 = getelementptr i32, ptr %57, i32 1
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !23
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !38
  tail call void @arm_heavy_mb() #21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 0) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !39
  tail call void @arm_heavy_mb() #21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #21, !srcloc !14
  br label %63

63:                                               ; preds = %62, %54
  %64 = getelementptr %struct.xhci_run_regs, ptr %56, i32 0, i32 2, i32 %55, i32 5
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !22
  %66 = getelementptr i32, ptr %64, i32 1
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !23
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !38
  tail call void @arm_heavy_mb() #21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !39
  tail call void @arm_heavy_mb() #21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 0) #21, !srcloc !14
  br label %70

70:                                               ; preds = %69, %63
  %71 = add nuw nsw i32 %55, 1
  %72 = icmp eq i32 %71, %50
  br i1 %72, label %73, label %54

73:                                               ; preds = %70, %45
  %74 = load ptr, ptr %15, align 4
  %75 = getelementptr inbounds %struct.xhci_op_regs, ptr %74, i32 0, i32 1
  %76 = tail call i64 @ktime_get() #21
  %77 = add i64 %76, 32000000
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %87, %73
  %82 = tail call i64 @ktime_get() #21
  %83 = icmp sgt i64 %82, %77
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !10
  %86 = and i32 %85, 4
  br label %92

87:                                               ; preds = %81
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 214748) #21
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !9
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %81, label %92

92:                                               ; preds = %87, %84, %73
  %93 = phi i32 [ %79, %73 ], [ %86, %84 ], [ %90, %87 ]
  %94 = phi i32 [ %78, %73 ], [ %85, %84 ], [ %89, %87 ]
  %95 = icmp eq i32 %94, -1
  %96 = icmp eq i32 %93, 4
  %97 = or i1 %96, %95
  %98 = xor i1 %95, true
  %99 = select i1 %98, i1 %97, i1 false
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load ptr, ptr %0, align 8
  %102 = load ptr, ptr %101, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.49) #22
  br label %103

103:                                              ; preds = %100, %92, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_mem_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_debugfs_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_init(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 29
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.50) #21
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 10
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.xhci_hcd, ptr %9, i32 0, i32 14
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, 149
  %14 = load i32, ptr @link_quirk, align 4
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.51) #21
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 21, i32 3, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = or i64 %19, 1
  store i64 %20, ptr %18, align 8
  br label %22

21:                                               ; preds = %7
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.52) #21
  br label %22

22:                                               ; preds = %21, %17
  %23 = tail call i32 @xhci_mem_init(ptr noundef %9, i32 noundef 3264) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.53) #21
  %24 = tail call ptr @dmi_get_system_info(i32 noundef 7) #21
  %25 = tail call ptr @dmi_get_system_info(i32 noundef 6) #21
  %26 = icmp ne ptr %24, null
  %27 = icmp ne ptr %25, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %53

29:                                               ; preds = %22
  %30 = tail call ptr @strstr(ptr noundef nonnull %25, ptr noundef nonnull @.str.54) #21
  %31 = icmp eq ptr %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %29
  %33 = tail call ptr @strstr(ptr noundef nonnull %24, ptr noundef nonnull @.str.55) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = tail call ptr @strstr(ptr noundef nonnull %24, ptr noundef nonnull @.str.56) #21
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = tail call ptr @strstr(ptr noundef nonnull %24, ptr noundef nonnull @.str.57) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = tail call ptr @strstr(ptr noundef nonnull %24, ptr noundef nonnull @.str.58) #21
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %41, %38, %35, %32
  %45 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 21, i32 3, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = or i64 %46, 16384
  store i64 %47, ptr %45, align 8
  %48 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 11, i32 15
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 11, i32 10
  tail call void @init_timer_key(ptr noundef %49, ptr noundef nonnull @compliance_mode_recovery, i32 noundef 0, ptr noundef null, ptr noundef null) #21
  %50 = load volatile i32, ptr @jiffies, align 64
  %51 = add i32 %50, 200
  %52 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 11, i32 12
  store i32 %51, ptr %52, align 8
  tail call void @add_timer(ptr noundef %49) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.59) #21
  br label %53

53:                                               ; preds = %44, %41, %29, %22
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_resume_root_hub(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_poll_rh_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @xhci_get_endpoint_index(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 3
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = shl i8 %7, 1
  %9 = and i8 %8, 30
  %10 = zext i8 %9 to i32
  %11 = lshr i8 %7, 7
  %12 = or i8 %9, %11
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %13, -1
  %15 = select i1 %5, i32 %10, i32 %14
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @xhci_get_endpoint_address(i32 noundef %0) local_unnamed_addr #6 {
  %2 = add i32 %0, 1
  %3 = lshr i32 %2, 1
  %4 = shl i32 %0, 7
  %5 = and i32 %4, 128
  %6 = xor i32 %5, 128
  %7 = or i32 %6, %3
  ret i32 %7
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @xhci_last_valid_endpoint(i32 noundef %0) local_unnamed_addr #7 {
  %2 = icmp eq i32 %0, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 false) #21, !range !75
  %4 = sub nsw i32 31, %3
  %5 = select i1 %2, i32 -1, i32 %4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_drop_endpoint(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %139, label %5

5:                                                ; preds = %3
  %6 = icmp ne ptr %2, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %139

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %139, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %18, %16 ], [ %0, %13 ]
  %21 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %139, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 0, i32 29
  %26 = getelementptr %struct.xhci_hcd, ptr %25, i32 0, i32 42, i32 %22
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %139, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.xhci_virt_device, ptr %27, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %139

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 4, i32 20, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %139

38:                                               ; preds = %33
  %39 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #21
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi ptr [ %43, %41 ], [ %0, %38 ]
  %46 = getelementptr inbounds %struct.usb_hcd, ptr %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.usb_hcd, ptr %45, i32 4, i32 20, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %139

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 3
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, 3
  %55 = icmp eq i8 %54, 0
  %56 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 2
  %57 = load i8, ptr %56, align 1
  %58 = shl i8 %57, 1
  %59 = and i8 %58, 30
  %60 = zext i8 %59 to i32
  %61 = lshr i8 %57, 7
  %62 = or i8 %59, %61
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %63, -1
  %65 = select i1 %55, i32 %60, i32 %64
  %66 = add nsw i32 %65, 1
  %67 = shl nuw i32 1, %66
  %68 = icmp ugt i32 %66, 1
  br i1 %68, label %69, label %139

69:                                               ; preds = %51
  %70 = load i32, ptr %21, align 8
  %71 = getelementptr %struct.xhci_hcd, ptr %46, i32 0, i32 42, i32 %70
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.xhci_virt_device, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.xhci_virt_device, ptr %72, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %74) #21
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load ptr, ptr %46, align 8
  %81 = load ptr, ptr %80, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %81, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_drop_endpoint) #22
  br label %139

82:                                               ; preds = %69
  %83 = load i8, ptr %52, align 1
  %84 = and i8 %83, 3
  %85 = icmp eq i8 %84, 0
  %86 = load i8, ptr %56, align 1
  %87 = shl i8 %86, 1
  %88 = and i8 %87, 30
  %89 = zext i8 %88 to i32
  %90 = lshr i8 %86, 7
  %91 = or i8 %88, %90
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %92, -1
  %94 = select i1 %85, i32 %89, i32 %93
  %95 = tail call ptr @xhci_get_ep_ctx(ptr noundef %46, ptr noundef %76, i32 noundef %94) #21
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 7
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %82
  %100 = load i32, ptr %77, align 4
  %101 = load i8, ptr %52, align 1
  %102 = and i8 %101, 3
  %103 = icmp eq i8 %102, 0
  %104 = load i8, ptr %56, align 1
  %105 = shl i8 %104, 1
  %106 = and i8 %105, 30
  %107 = zext i8 %106 to i32
  %108 = lshr i8 %104, 7
  %109 = or i8 %106, %108
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %110, -1
  %112 = select i1 %103, i32 %107, i32 %111
  %113 = add nsw i32 %112, 1
  %114 = shl nuw i32 1, %113
  %115 = and i32 %114, %100
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %99, %82
  %118 = load i32, ptr %21, align 8
  %119 = getelementptr %struct.xhci_hcd, ptr %46, i32 0, i32 42, i32 %118
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr %struct.xhci_virt_device, ptr %120, i32 0, i32 4, i32 %94, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %139, label %124

124:                                              ; preds = %117
  %125 = load ptr, ptr %46, align 8
  %126 = load ptr, ptr %125, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %126, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.xhci_drop_endpoint, ptr noundef nonnull %2) #22
  br label %139

127:                                              ; preds = %99
  %128 = or i32 %100, %67
  store i32 %128, ptr %77, align 4
  %129 = xor i32 %67, -1
  %130 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %77, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, %129
  store i32 %132, ptr %130, align 4
  %133 = load i32, ptr %21, align 8
  %134 = getelementptr %struct.xhci_hcd, ptr %46, i32 0, i32 42, i32 %133
  %135 = load ptr, ptr %134, align 4
  tail call void @xhci_debugfs_remove_endpoint(ptr noundef %46, ptr noundef %135, i32 noundef %94) #21
  %136 = load i32, ptr %21, align 8
  %137 = getelementptr %struct.xhci_hcd, ptr %46, i32 0, i32 42, i32 %136
  %138 = load ptr, ptr %137, align 4
  tail call void @xhci_endpoint_zero(ptr noundef %46, ptr noundef %138, ptr noundef nonnull %2) #21
  br label %139

139:                                              ; preds = %127, %124, %117, %79, %51, %44, %33, %29, %24, %19, %9, %5, %3
  %140 = phi i32 [ 0, %127 ], [ 0, %79 ], [ -19, %44 ], [ 0, %51 ], [ 0, %124 ], [ 0, %117 ], [ -19, %33 ], [ -22, %29 ], [ -22, %19 ], [ -22, %24 ], [ 0, %9 ], [ -22, %3 ], [ -22, %5 ]
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_input_control_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_ep_ctx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_debugfs_remove_endpoint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_endpoint_zero(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_add_endpoint(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = icmp ne ptr %2, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %18, %16 ], [ %0, %13 ]
  %21 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 0, i32 29
  %26 = getelementptr %struct.xhci_hcd, ptr %25, i32 0, i32 42, i32 %22
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.xhci_virt_device, ptr %27, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 4, i32 20, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %29, %24, %19, %9, %5, %3
  %39 = phi i32 [ -19, %33 ], [ -22, %29 ], [ -22, %19 ], [ -22, %24 ], [ 0, %9 ], [ -22, %3 ], [ -22, %5 ]
  %40 = getelementptr inbounds %struct.usb_host_endpoint, ptr %2, i32 0, i32 5
  store ptr null, ptr %40, align 4
  br label %139

41:                                               ; preds = %33
  %42 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi ptr [ %46, %44 ], [ %0, %41 ]
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %48, i32 0, i32 29
  %50 = getelementptr inbounds %struct.usb_hcd, ptr %48, i32 4, i32 20, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %139

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %56, 3
  %58 = icmp eq i8 %57, 0
  %59 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = shl i8 %60, 1
  %62 = and i8 %61, 30
  %63 = zext i8 %62 to i32
  %64 = lshr i8 %60, 7
  %65 = or i8 %62, %64
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %66, -1
  %68 = select i1 %58, i32 %63, i32 %67
  %69 = add nsw i32 %68, 1
  %70 = shl nuw i32 1, %69
  %71 = icmp ugt i32 %69, 1
  br i1 %71, label %72, label %139

72:                                               ; preds = %54
  %73 = load i32, ptr %21, align 8
  %74 = getelementptr %struct.xhci_hcd, ptr %49, i32 0, i32 42, i32 %73
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.xhci_virt_device, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %77) #21
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load ptr, ptr %49, align 8
  %82 = load ptr, ptr %81, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %82, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_add_endpoint) #22
  br label %139

83:                                               ; preds = %72
  %84 = load i8, ptr %55, align 1
  %85 = and i8 %84, 3
  %86 = icmp eq i8 %85, 0
  %87 = load i8, ptr %59, align 1
  %88 = shl i8 %87, 1
  %89 = and i8 %88, 30
  %90 = zext i8 %89 to i32
  %91 = lshr i8 %87, 7
  %92 = or i8 %89, %91
  %93 = zext i8 %92 to i32
  %94 = add nsw i32 %93, -1
  %95 = select i1 %86, i32 %90, i32 %94
  %96 = getelementptr %struct.xhci_virt_device, ptr %75, i32 0, i32 4, i32 %95, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %83
  %100 = load i32, ptr %78, align 4
  %101 = and i32 %100, %70
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load ptr, ptr %49, align 8
  %105 = load ptr, ptr %104, align 8
  %106 = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %105, ptr noundef nonnull @.str.24, i32 noundef %106) #22
  br label %139

107:                                              ; preds = %99, %83
  %108 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %78, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, %70
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load ptr, ptr %49, align 8
  %114 = load ptr, ptr %113, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %114, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.xhci_add_endpoint, ptr noundef nonnull %2) #22
  br label %139

115:                                              ; preds = %107
  %116 = tail call i32 @xhci_endpoint_init(ptr noundef %49, ptr noundef %75, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 3072) #21
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %139, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr %108, align 4
  %120 = or i32 %119, %70
  store i32 %120, ptr %108, align 4
  %121 = getelementptr inbounds %struct.usb_host_endpoint, ptr %2, i32 0, i32 5
  store ptr %1, ptr %121, align 4
  %122 = load ptr, ptr %76, align 4
  %123 = tail call ptr @xhci_get_ep_ctx(ptr noundef %49, ptr noundef %122, i32 noundef %95) #21
  %124 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_add_endpoint, i32 0, i32 1), align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %118
  %127 = tail call ptr @llvm.thread.pointer() #21
  %128 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %129 = load i32, ptr %128, align 8
  %130 = lshr i32 %129, 5
  %131 = getelementptr i32, ptr @__cpu_online_mask, i32 %130
  %132 = load volatile i32, ptr %131, align 4
  %133 = and i32 %129, 31
  %134 = shl nuw i32 1, %133
  %135 = and i32 %134, %132
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %126
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !76
  %138 = tail call i32 @__traceiter_xhci_add_endpoint(ptr noundef null, ptr noundef %123) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !77
  br label %139

139:                                              ; preds = %137, %126, %118, %115, %112, %103, %80, %54, %47, %38
  %140 = phi i32 [ %39, %38 ], [ 0, %112 ], [ -22, %103 ], [ 0, %80 ], [ -19, %47 ], [ 0, %54 ], [ -12, %115 ], [ 0, %118 ], [ 0, %126 ], [ 0, %137 ]
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_endpoint_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xhci_update_tt_active_eps(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 43
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, -1
  %14 = icmp eq i32 %2, 0
  %15 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %14, label %18, label %19

18:                                               ; preds = %7
  br i1 %17, label %29, label %20

19:                                               ; preds = %7
  br i1 %17, label %20, label %29

20:                                               ; preds = %19, %18
  %21 = phi i32 [ 1, %18 ], [ -1, %19 ]
  %22 = phi i32 [ 125, %18 ], [ -125, %19 ]
  %23 = getelementptr %struct.xhci_root_port_bw_info, ptr %9, i32 %13, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %21
  store i32 %25, ptr %23, align 4
  %26 = getelementptr %struct.xhci_root_port_bw_info, ptr %9, i32 %13, i32 2, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %22
  store i32 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %20, %19, %18, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_check_bandwidth(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %187

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %187, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi ptr [ %15, %13 ], [ %0, %10 ]
  %18 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %187, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 0, i32 29
  %23 = getelementptr %struct.xhci_hcd, ptr %22, i32 0, i32 42, i32 %19
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %187, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.xhci_virt_device, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %30, label %187

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 4, i32 20, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %187

35:                                               ; preds = %30
  %36 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #21
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi ptr [ %40, %38 ], [ %0, %35 ]
  %43 = getelementptr inbounds %struct.usb_hcd, ptr %42, i32 0, i32 29
  %44 = getelementptr inbounds %struct.usb_hcd, ptr %42, i32 4, i32 20, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 5
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %187

48:                                               ; preds = %41
  %49 = load i32, ptr %18, align 8
  %50 = getelementptr %struct.xhci_hcd, ptr %43, i32 0, i32 42, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = tail call ptr @xhci_alloc_command(ptr noundef %43, i1 noundef zeroext true, i32 noundef 3264) #21
  %53 = icmp eq ptr %52, null
  br i1 %53, label %187, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.xhci_virt_device, ptr %51, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  store ptr %56, ptr %52, align 4
  %57 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %56) #21
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load ptr, ptr %43, align 8
  %61 = load ptr, ptr %60, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_check_bandwidth) #22
  br label %183

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %57, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, -4
  %66 = or i32 %65, 1
  store i32 %66, ptr %63, align 4
  %67 = load i32, ptr %57, align 4
  %68 = and i32 %67, -4
  store i32 %68, ptr %57, align 4
  %69 = icmp eq i32 %65, 0
  %70 = icmp eq i32 %68, 0
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %183, label %72

72:                                               ; preds = %62
  %73 = load ptr, ptr %55, align 4
  %74 = tail call ptr @xhci_get_slot_ctx(ptr noundef %43, ptr noundef %73) #21
  br label %75

75:                                               ; preds = %86, %72
  %76 = phi i32 [ 31, %72 ], [ %78, %86 ]
  %77 = shl nuw i32 1, %76
  %78 = add nsw i32 %76, -1
  %79 = getelementptr %struct.xhci_virt_device, ptr %51, i32 0, i32 4, i32 %78, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %75
  %83 = load i32, ptr %57, align 4
  %84 = and i32 %83, %77
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82, %75
  %87 = load i32, ptr %63, align 4
  %88 = and i32 %87, %77
  %89 = icmp ne i32 %88, 0
  %90 = icmp eq i32 %76, 1
  %91 = select i1 %89, i1 true, i1 %90
  br i1 %91, label %92, label %75

92:                                               ; preds = %86, %82
  %93 = load i32, ptr %74, align 4
  %94 = and i32 %93, 134217727
  %95 = shl i32 %76, 27
  %96 = or i32 %94, %95
  store i32 %96, ptr %74, align 4
  %97 = tail call fastcc i32 @xhci_configure_endpoint(ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull %52, i1 noundef zeroext false, i1 noundef zeroext false)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %183

99:                                               ; preds = %127, %92
  %100 = phi i32 [ %102, %127 ], [ 1, %92 ]
  %101 = load i32, ptr %57, align 4
  %102 = add nuw nsw i32 %100, 1
  %103 = shl nuw i32 2, %100
  %104 = and i32 %101, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %99
  %107 = load i32, ptr %63, align 4
  %108 = and i32 %107, %103
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  tail call void @xhci_free_endpoint_ring(ptr noundef %43, ptr noundef %51, i32 noundef %100) #21
  %111 = getelementptr %struct.xhci_virt_device, ptr %51, i32 0, i32 4, i32 %100, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr %43, align 8
  %117 = load ptr, ptr %116, align 8
  %118 = lshr i32 %102, 1
  %119 = shl i32 %100, 7
  %120 = and i32 %119, 128
  %121 = xor i32 %120, 128
  %122 = or i32 %121, %118
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %117, ptr noundef nonnull @.str.87, i32 noundef %122) #22
  %123 = getelementptr %struct.xhci_virt_device, ptr %51, i32 0, i32 4, i32 %100, i32 3
  %124 = load ptr, ptr %123, align 4
  tail call void @xhci_free_stream_info(ptr noundef %43, ptr noundef %124) #21
  store ptr null, ptr %123, align 4
  %125 = load i32, ptr %111, align 4
  %126 = and i32 %125, -17
  store i32 %126, ptr %111, align 4
  br label %127

127:                                              ; preds = %115, %110, %106, %99
  %128 = icmp eq i32 %102, 31
  br i1 %128, label %129, label %99

129:                                              ; preds = %127
  %130 = load ptr, ptr %55, align 4
  %131 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %130) #21
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load ptr, ptr %43, align 8
  %135 = load ptr, ptr %134, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %135, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_zero_in_ctx) #22
  br label %149

136:                                              ; preds = %129
  store i32 0, ptr %131, align 4
  %137 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %131, i32 0, i32 1
  store i32 0, ptr %137, align 4
  %138 = load ptr, ptr %55, align 4
  %139 = tail call ptr @xhci_get_slot_ctx(ptr noundef %43, ptr noundef %138) #21
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, 134217727
  %142 = or i32 %141, 134217728
  store i32 %142, ptr %139, align 4
  br label %143

143:                                              ; preds = %143, %136
  %144 = phi i32 [ 1, %136 ], [ %147, %143 ]
  %145 = load ptr, ptr %55, align 4
  %146 = tail call ptr @xhci_get_ep_ctx(ptr noundef %43, ptr noundef %145, i32 noundef %144) #21
  %147 = add nuw nsw i32 %144, 1
  %148 = icmp eq i32 %147, 31
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %146, i8 0, i64 20, i1 false) #21
  br i1 %148, label %149, label %143

149:                                              ; preds = %143, %133
  br label %150

150:                                              ; preds = %180, %149
  %151 = phi i32 [ %181, %180 ], [ 1, %149 ]
  %152 = getelementptr %struct.xhci_virt_device, ptr %51, i32 0, i32 4, i32 %151, i32 4
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %180, label %155

155:                                              ; preds = %150
  %156 = getelementptr %struct.xhci_virt_device, ptr %51, i32 0, i32 4, i32 %151, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  tail call void @xhci_free_endpoint_ring(ptr noundef %43, ptr noundef %51, i32 noundef %151) #21
  br label %160

160:                                              ; preds = %159, %155
  %161 = getelementptr %struct.xhci_virt_device, ptr %51, i32 0, i32 4, i32 %151, i32 5
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 16
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %178, label %165

165:                                              ; preds = %160
  %166 = load ptr, ptr %43, align 8
  %167 = load ptr, ptr %166, align 8
  %168 = add nuw nsw i32 %151, 1
  %169 = lshr i32 %168, 1
  %170 = shl i32 %151, 7
  %171 = and i32 %170, 128
  %172 = xor i32 %171, 128
  %173 = or i32 %172, %169
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %167, ptr noundef nonnull @.str.87, i32 noundef %173) #22
  %174 = getelementptr %struct.xhci_virt_device, ptr %51, i32 0, i32 4, i32 %151, i32 3
  %175 = load ptr, ptr %174, align 4
  tail call void @xhci_free_stream_info(ptr noundef %43, ptr noundef %175) #21
  store ptr null, ptr %174, align 4
  %176 = load i32, ptr %161, align 4
  %177 = and i32 %176, -17
  store i32 %177, ptr %161, align 4
  br label %178

178:                                              ; preds = %165, %160
  %179 = load ptr, ptr %152, align 4
  store ptr %179, ptr %156, align 4
  store ptr null, ptr %152, align 4
  tail call void @xhci_debugfs_create_endpoint(ptr noundef %43, ptr noundef %51, i32 noundef %151) #21
  br label %180

180:                                              ; preds = %178, %150
  %181 = add nuw nsw i32 %151, 1
  %182 = icmp eq i32 %181, 31
  br i1 %182, label %183, label %150

183:                                              ; preds = %180, %92, %62, %59
  %184 = phi i32 [ %97, %92 ], [ -12, %59 ], [ 0, %62 ], [ 0, %180 ]
  %185 = getelementptr inbounds %struct.xhci_command, ptr %52, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  tail call void @kfree(ptr noundef %186) #21
  tail call void @kfree(ptr noundef nonnull %52) #21
  br label %187

187:                                              ; preds = %183, %48, %41, %30, %26, %21, %16, %6, %2
  %188 = phi i32 [ %184, %183 ], [ -19, %41 ], [ -12, %48 ], [ -19, %30 ], [ -22, %26 ], [ -22, %16 ], [ -22, %21 ], [ 0, %6 ], [ -22, %2 ]
  ret i32 %188
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_slot_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_configure_endpoint(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [31 x %struct.xhci_bw_info], align 4
  %7 = icmp eq ptr %2, null
  br i1 %7, label %476, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 12
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #21
  %11 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 48
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #21
  br label %476

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %2, align 4
  %22 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %21) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #21
  %25 = load ptr, ptr %0, align 8
  %26 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_configure_endpoint) #22
  br label %476

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 32
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %22, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 2
  %36 = load i32, ptr %22, align 4
  %37 = lshr i32 %36, 2
  %38 = tail call i32 @__sw_hweight32(i32 noundef %35) #21
  %39 = and i32 %37, %35
  %40 = tail call i32 @__sw_hweight32(i32 noundef %39) #21
  %41 = sub i32 %38, %40
  %42 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 52
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, %41
  %45 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 53
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %44, %46
  br i1 %47, label %50, label %48

48:                                               ; preds = %32
  store i32 %44, ptr %42, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.65, i32 noundef %41, i32 noundef %44) #21
  %49 = load i64, ptr %28, align 8
  br label %54

50:                                               ; preds = %32
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.64, i32 noundef %43, i32 noundef %41, i32 noundef %46) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #21
  %51 = load ptr, ptr %0, align 8
  %52 = load ptr, ptr %51, align 8
  %53 = load i32, ptr %42, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.30, i32 noundef %53) #22
  br label %476

54:                                               ; preds = %48, %27
  %55 = phi i64 [ %49, %48 ], [ %29, %27 ]
  %56 = and i64 %55, 256
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %341, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 744, ptr nonnull %6) #21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(744) %6, i8 0, i32 744, i1 false) #21, !annotation !78
  %60 = getelementptr inbounds %struct.xhci_virt_device, ptr %20, i32 0, i32 8
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %61, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %58
  %67 = phi i32 [ %65, %63 ], [ 0, %58 ]
  %68 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %59) #21
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %68, i32 0, i32 1
  %72 = getelementptr inbounds %struct.xhci_virt_device, ptr %20, i32 0, i32 7
  %73 = getelementptr inbounds %struct.xhci_virt_device, ptr %20, i32 0, i32 1
  br label %77

74:                                               ; preds = %66
  %75 = load ptr, ptr %0, align 8
  %76 = load ptr, ptr %75, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_reserve_bandwidth) #22
  br label %333

77:                                               ; preds = %101, %70
  %78 = phi i32 [ 0, %70 ], [ %80, %101 ]
  %79 = load i32, ptr %71, align 4
  %80 = add nuw nsw i32 %78, 1
  %81 = shl i32 2, %78
  %82 = and i32 %79, %81
  %83 = icmp eq i32 %82, 0
  %84 = load i32, ptr %68, align 4
  %85 = and i32 %84, %81
  br i1 %83, label %86, label %91

86:                                               ; preds = %77
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %86
  %89 = getelementptr [31 x %struct.xhci_bw_info], ptr %6, i32 0, i32 %78
  %90 = getelementptr %struct.xhci_virt_device, ptr %20, i32 0, i32 4, i32 %78, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %89, ptr noundef align 4 dereferenceable(24) %90, i32 24, i1 false) #21
  br label %95

91:                                               ; preds = %77
  %92 = getelementptr [31 x %struct.xhci_bw_info], ptr %6, i32 0, i32 %78
  %93 = getelementptr %struct.xhci_virt_device, ptr %20, i32 0, i32 4, i32 %78, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %92, ptr noundef align 4 dereferenceable(24) %93, i32 24, i1 false) #21
  %94 = icmp eq i32 %85, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %91, %88
  %96 = phi ptr [ %90, %88 ], [ %93, %91 ]
  %97 = getelementptr %struct.xhci_virt_device, ptr %20, i32 0, i32 4, i32 %78
  %98 = load ptr, ptr %72, align 4
  %99 = load ptr, ptr %73, align 4
  %100 = load ptr, ptr %60, align 4
  tail call fastcc void @xhci_drop_ep_from_interval_table(ptr noundef %0, ptr noundef %96, ptr noundef %98, ptr noundef %99, ptr noundef %97, ptr noundef %100) #21
  br label %101

101:                                              ; preds = %95, %91, %86
  %102 = icmp eq i32 %80, 31
  br i1 %102, label %103, label %77

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.xhci_virt_device, ptr %20, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  tail call void @xhci_update_bw_info(ptr noundef %0, ptr noundef %105, ptr noundef nonnull %68, ptr noundef %20) #21
  br label %106

106:                                              ; preds = %119, %103
  %107 = phi i32 [ 0, %103 ], [ %109, %119 ]
  %108 = load i32, ptr %71, align 4
  %109 = add nuw nsw i32 %107, 1
  %110 = shl nuw i32 2, %107
  %111 = and i32 %108, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %106
  %114 = getelementptr %struct.xhci_virt_device, ptr %20, i32 0, i32 4, i32 %107
  %115 = getelementptr %struct.xhci_virt_device, ptr %20, i32 0, i32 4, i32 %107, i32 12
  %116 = load ptr, ptr %72, align 4
  %117 = load ptr, ptr %73, align 4
  %118 = load ptr, ptr %60, align 4
  tail call fastcc void @xhci_add_ep_to_interval_table(ptr noundef %0, ptr noundef %115, ptr noundef %116, ptr noundef %117, ptr noundef %114, ptr noundef %118) #21
  br label %119

119:                                              ; preds = %113, %106
  %120 = icmp eq i32 %109, 31
  br i1 %120, label %121, label %106

121:                                              ; preds = %119
  %122 = load ptr, ptr %73, align 4
  %123 = getelementptr inbounds %struct.usb_device, ptr %122, i32 0, i32 4
  %124 = load i32, ptr %123, align 4
  %125 = icmp ugt i32 %124, 4
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load ptr, ptr %72, align 4
  %128 = getelementptr inbounds %struct.xhci_interval_bw_table, ptr %127, i32 0, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = icmp ugt i32 %129, 3515
  br i1 %130, label %131, label %132

131:                                              ; preds = %272, %240, %163, %132, %126
  br label %302

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.xhci_interval_bw_table, ptr %127, i32 0, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = icmp ugt i32 %134, 3515
  br i1 %135, label %131, label %277

136:                                              ; preds = %121
  %137 = icmp eq i32 %124, 3
  %138 = select i1 %137, i32 1607, i32 1285
  %139 = select i1 %137, i32 322, i32 129
  %140 = load ptr, ptr %72, align 4
  %141 = load ptr, ptr %60, align 4
  %142 = icmp eq ptr %141, null
  %143 = getelementptr inbounds %struct.xhci_virt_device, ptr %20, i32 0, i32 6
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.66, i32 noundef %145) #21
  br i1 %142, label %171, label %146

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 43
  %148 = load ptr, ptr %147, align 8
  %149 = load i8, ptr %143, align 1
  %150 = zext i8 %149 to i32
  %151 = add nsw i32 %150, -1
  %152 = icmp eq i32 %67, 0
  %153 = load ptr, ptr %60, align 4
  br i1 %152, label %154, label %166

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %153, i32 0, i32 4
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  %159 = getelementptr %struct.xhci_root_port_bw_info, ptr %148, i32 %151, i32 2, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, -1483
  %162 = icmp ult i32 %161, -1608
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load ptr, ptr %0, align 8
  %165 = load ptr, ptr %164, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %165, ptr noundef nonnull @.str.67) #22
  br label %131

166:                                              ; preds = %158, %154, %146
  %167 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %153, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %153, i32 0, i32 2
  %170 = load i32, ptr %169, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.68, i32 noundef %168, i32 noundef %170) #21
  br label %171

171:                                              ; preds = %166, %136
  %172 = load i32, ptr %140, align 4
  %173 = select i1 %137, i32 3, i32 0
  %174 = add i32 %172, %173
  %175 = select i1 %137, i32 2, i32 0
  %176 = lshr i32 %174, %175
  %177 = getelementptr inbounds %struct.xhci_interval_bw_table, ptr %140, i32 0, i32 1
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr inbounds %struct.xhci_interval_bw_table, ptr %140, i32 0, i32 1, i32 0, i32 2
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %171
  %183 = getelementptr %struct.xhci_interval_bw_table, ptr %140, i32 0, i32 1, i32 0, i32 2, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %185, i32 26, i32 20
  br label %187

187:                                              ; preds = %182, %171
  %188 = phi i32 [ 128, %171 ], [ %186, %182 ]
  %189 = mul i32 %188, %178
  %190 = add i32 %189, %176
  br label %191

191:                                              ; preds = %222, %187
  %192 = phi i32 [ 0, %187 ], [ %236, %222 ]
  %193 = phi i32 [ 0, %187 ], [ %237, %222 ]
  %194 = phi i32 [ 0, %187 ], [ %231, %222 ]
  %195 = phi i32 [ 1, %187 ], [ %225, %222 ]
  %196 = phi i32 [ %190, %187 ], [ %238, %222 ]
  %197 = icmp eq i32 %195, 16
  br i1 %197, label %243, label %198

198:                                              ; preds = %191
  %199 = shl i32 %194, 1
  %200 = getelementptr %struct.xhci_interval_bw_table, ptr %140, i32 0, i32 1, i32 %195
  %201 = load i32, ptr %200, align 4
  %202 = add i32 %201, %199
  %203 = getelementptr %struct.xhci_interval_bw_table, ptr %140, i32 0, i32 1, i32 %195, i32 1
  %204 = load volatile ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, %203
  br i1 %205, label %211, label %206

206:                                              ; preds = %198
  %207 = getelementptr i8, ptr %204, i32 -12
  %208 = load i32, ptr %207, align 4
  %209 = add i32 %208, %173
  %210 = lshr i32 %209, %175
  br label %211

211:                                              ; preds = %206, %198
  %212 = phi i32 [ %210, %206 ], [ 0, %198 ]
  %213 = tail call i32 @llvm.umax.i32(i32 %212, i32 %192) #21
  %214 = getelementptr %struct.xhci_interval_bw_table, ptr %140, i32 0, i32 1, i32 %195, i32 2
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = getelementptr %struct.xhci_interval_bw_table, ptr %140, i32 0, i32 1, i32 %195, i32 2, i32 1
  %219 = load i32, ptr %218, align 4
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %220, i32 26, i32 20
  br label %222

222:                                              ; preds = %217, %211
  %223 = phi i32 [ 128, %211 ], [ %221, %217 ]
  %224 = tail call i32 @llvm.umax.i32(i32 %223, i32 %193) #21
  %225 = add nuw nsw i32 %195, 1
  %226 = lshr i32 %202, %225
  %227 = add i32 %224, %213
  %228 = mul i32 %227, %226
  %229 = shl i32 -2, %195
  %230 = xor i32 %229, -1
  %231 = and i32 %202, %230
  %232 = icmp eq i32 %231, 0
  %233 = icmp eq i32 %226, 0
  %234 = select i1 %233, i32 %213, i32 %212
  %235 = select i1 %233, i32 %224, i32 %223
  %236 = select i1 %232, i32 0, i32 %234
  %237 = select i1 %232, i32 0, i32 %235
  %238 = add i32 %228, %196
  %239 = icmp ugt i32 %238, %138
  br i1 %239, label %240, label %191

240:                                              ; preds = %222
  %241 = load ptr, ptr %0, align 8
  %242 = load ptr, ptr %241, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %242, ptr noundef nonnull @.str.69, i32 noundef %238, i32 noundef %138) #22
  br label %131

243:                                              ; preds = %191
  %244 = icmp eq i32 %194, 0
  %245 = add i32 %193, %192
  %246 = select i1 %244, i32 0, i32 %245
  %247 = add i32 %196, %246
  %248 = load ptr, ptr %60, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %265

250:                                              ; preds = %243
  %251 = load ptr, ptr %73, align 4
  %252 = getelementptr inbounds %struct.usb_device, ptr %251, i32 0, i32 4
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, 3
  br i1 %254, label %255, label %265

255:                                              ; preds = %250
  %256 = load i8, ptr %143, align 1
  %257 = zext i8 %256 to i32
  %258 = add nsw i32 %257, -1
  %259 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 43
  %260 = load ptr, ptr %259, align 8
  %261 = getelementptr %struct.xhci_root_port_bw_info, ptr %260, i32 %258, i32 1
  %262 = load i32, ptr %261, align 4
  %263 = mul i32 %262, 125
  %264 = add i32 %263, %247
  br label %265

265:                                              ; preds = %255, %250, %243
  %266 = phi i32 [ %247, %243 ], [ %264, %255 ], [ %247, %250 ]
  %267 = add i32 %266, %139
  %268 = sub i32 %138, %267
  %269 = mul i32 %268, 100
  %270 = udiv i32 %269, %138
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.70, i32 noundef %266, i32 noundef %138, i32 noundef %139, i32 noundef %270) #21
  %271 = icmp ult i32 %138, %267
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load ptr, ptr %0, align 8
  %274 = load ptr, ptr %273, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %274, ptr noundef nonnull @.str.69, i32 noundef %267, i32 noundef %138) #22
  br label %131

275:                                              ; preds = %265
  %276 = getelementptr inbounds %struct.xhci_interval_bw_table, ptr %140, i32 0, i32 2
  store i32 %267, ptr %276, align 4
  br label %277

277:                                              ; preds = %275, %132
  %278 = load ptr, ptr %60, align 4
  %279 = icmp eq ptr %278, null
  br i1 %279, label %332, label %280

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 43
  %282 = load ptr, ptr %281, align 8
  %283 = getelementptr inbounds %struct.xhci_virt_device, ptr %20, i32 0, i32 6
  %284 = load i8, ptr %283, align 1
  %285 = zext i8 %284 to i32
  %286 = add nsw i32 %285, -1
  %287 = icmp eq i32 %67, 0
  %288 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %278, i32 0, i32 4
  %289 = load i32, ptr %288, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %287, label %291, label %292

291:                                              ; preds = %280
  br i1 %290, label %332, label %293

292:                                              ; preds = %280
  br i1 %290, label %293, label %332

293:                                              ; preds = %292, %291
  %294 = phi i32 [ 1, %291 ], [ -1, %292 ]
  %295 = phi i32 [ 125, %291 ], [ -125, %292 ]
  %296 = getelementptr %struct.xhci_root_port_bw_info, ptr %282, i32 %286, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = add i32 %297, %294
  store i32 %298, ptr %296, align 4
  %299 = getelementptr %struct.xhci_root_port_bw_info, ptr %282, i32 %286, i32 2, i32 2
  %300 = load i32, ptr %299, align 4
  %301 = add i32 %300, %295
  store i32 %301, ptr %299, align 4
  br label %332

302:                                              ; preds = %330, %131
  %303 = phi i32 [ %305, %330 ], [ 0, %131 ]
  %304 = load i32, ptr %71, align 4
  %305 = add nuw nsw i32 %303, 1
  %306 = shl nuw i32 2, %303
  %307 = and i32 %304, %306
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %302
  %310 = load i32, ptr %68, align 4
  %311 = and i32 %310, %306
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %330, label %319

313:                                              ; preds = %302
  %314 = getelementptr %struct.xhci_virt_device, ptr %20, i32 0, i32 4, i32 %303
  %315 = getelementptr %struct.xhci_virt_device, ptr %20, i32 0, i32 4, i32 %303, i32 12
  %316 = load ptr, ptr %72, align 4
  %317 = load ptr, ptr %73, align 4
  %318 = load ptr, ptr %60, align 4
  tail call fastcc void @xhci_drop_ep_from_interval_table(ptr noundef %0, ptr noundef %315, ptr noundef %316, ptr noundef %317, ptr noundef %314, ptr noundef %318) #21
  br label %319

319:                                              ; preds = %313, %309
  %320 = getelementptr %struct.xhci_virt_device, ptr %20, i32 0, i32 4, i32 %303, i32 12
  %321 = getelementptr [31 x %struct.xhci_bw_info], ptr %6, i32 0, i32 %303
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %320, ptr noundef align 4 dereferenceable(24) %321, i32 24, i1 false) #21
  %322 = load i32, ptr %68, align 4
  %323 = and i32 %322, %306
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %330, label %325

325:                                              ; preds = %319
  %326 = getelementptr %struct.xhci_virt_device, ptr %20, i32 0, i32 4, i32 %303
  %327 = load ptr, ptr %72, align 4
  %328 = load ptr, ptr %73, align 4
  %329 = load ptr, ptr %60, align 4
  tail call fastcc void @xhci_add_ep_to_interval_table(ptr noundef %0, ptr noundef %320, ptr noundef %327, ptr noundef %328, ptr noundef %326, ptr noundef %329) #21
  br label %330

330:                                              ; preds = %325, %319, %309
  %331 = icmp eq i32 %305, 31
  br i1 %331, label %333, label %302

332:                                              ; preds = %293, %292, %291, %277
  call void @llvm.lifetime.end.p0(i64 744, ptr nonnull %6) #21
  br label %341

333:                                              ; preds = %330, %74
  call void @llvm.lifetime.end.p0(i64 744, ptr nonnull %6) #21
  %334 = load i64, ptr %28, align 8
  %335 = and i64 %334, 32
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %338, label %337

337:                                              ; preds = %333
  tail call fastcc void @xhci_free_host_resources(ptr noundef %0, ptr noundef nonnull %22)
  br label %338

338:                                              ; preds = %337, %333
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #21
  %339 = load ptr, ptr %0, align 8
  %340 = load ptr, ptr %339, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %340, ptr noundef nonnull @.str.62) #22
  br label %476

341:                                              ; preds = %332, %54
  %342 = load ptr, ptr %2, align 4
  %343 = tail call ptr @xhci_get_slot_ctx(ptr noundef %0, ptr noundef %342) #21
  %344 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx, i32 0, i32 1), align 4
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %359

346:                                              ; preds = %341
  %347 = tail call ptr @llvm.thread.pointer() #21
  %348 = getelementptr inbounds %struct.thread_info, ptr %347, i32 0, i32 2
  %349 = load i32, ptr %348, align 8
  %350 = lshr i32 %349, 5
  %351 = getelementptr i32, ptr @__cpu_online_mask, i32 %350
  %352 = load volatile i32, ptr %351, align 4
  %353 = and i32 %349, 31
  %354 = shl nuw i32 1, %353
  %355 = and i32 %354, %352
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %346
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !79
  %358 = tail call i32 @__traceiter_xhci_configure_endpoint_ctrl_ctx(ptr noundef null, ptr noundef nonnull %22) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !80
  br label %359

359:                                              ; preds = %357, %346, %341
  %360 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_configure_endpoint, i32 0, i32 1), align 4
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %375

362:                                              ; preds = %359
  %363 = tail call ptr @llvm.thread.pointer() #21
  %364 = getelementptr inbounds %struct.thread_info, ptr %363, i32 0, i32 2
  %365 = load i32, ptr %364, align 8
  %366 = lshr i32 %365, 5
  %367 = getelementptr i32, ptr @__cpu_online_mask, i32 %366
  %368 = load volatile i32, ptr %367, align 4
  %369 = and i32 %365, 31
  %370 = shl nuw i32 1, %369
  %371 = and i32 %370, %368
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %375, label %373

373:                                              ; preds = %362
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !81
  %374 = tail call i32 @__traceiter_xhci_configure_endpoint(ptr noundef null, ptr noundef %343) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !82
  br label %375

375:                                              ; preds = %373, %362, %359
  %376 = load ptr, ptr %2, align 4
  %377 = getelementptr inbounds %struct.xhci_container_ctx, ptr %376, i32 0, i32 3
  %378 = load i32, ptr %377, align 4
  %379 = load i32, ptr %17, align 8
  br i1 %3, label %382, label %380

380:                                              ; preds = %375
  %381 = tail call i32 @xhci_queue_configure_endpoint(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %378, i32 noundef %379, i1 noundef zeroext %4) #21
  br label %384

382:                                              ; preds = %375
  %383 = tail call i32 @xhci_queue_evaluate_context(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %378, i32 noundef %379, i1 noundef zeroext %4) #21
  br label %384

384:                                              ; preds = %382, %380
  %385 = phi i32 [ %383, %382 ], [ %381, %380 ]
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %405

387:                                              ; preds = %384
  %388 = load i64, ptr %28, align 8
  %389 = and i64 %388, 32
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %404, label %391

391:                                              ; preds = %387
  %392 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %22, i32 0, i32 1
  %393 = load i32, ptr %392, align 4
  %394 = lshr i32 %393, 2
  %395 = load i32, ptr %22, align 4
  %396 = lshr i32 %395, 2
  %397 = tail call i32 @__sw_hweight32(i32 noundef %394) #21
  %398 = and i32 %396, %394
  %399 = tail call i32 @__sw_hweight32(i32 noundef %398) #21
  %400 = sub i32 %397, %399
  %401 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 52
  %402 = load i32, ptr %401, align 8
  %403 = sub i32 %402, %400
  store i32 %403, ptr %401, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.71, i32 noundef %400, i32 noundef %403) #21
  br label %404

404:                                              ; preds = %391, %387
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_context_change, ptr noundef nonnull @.str.63) #21
  br label %476

405:                                              ; preds = %384
  tail call void @xhci_ring_cmd_db(ptr noundef %0) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #21
  %406 = getelementptr inbounds %struct.xhci_command, ptr %2, i32 0, i32 3
  %407 = load ptr, ptr %406, align 4
  tail call void @wait_for_completion(ptr noundef %407) #21
  %408 = getelementptr inbounds %struct.xhci_command, ptr %2, i32 0, i32 1
  %409 = load i32, ptr %408, align 4
  br i1 %3, label %426, label %410

410:                                              ; preds = %405
  switch i32 %409, label %423 [
    i32 25, label %411
    i32 24, label %411
    i32 7, label %414
    i32 8, label %416
    i32 35, label %416
    i32 5, label %418
    i32 22, label %420
    i32 1, label %422
  ]

411:                                              ; preds = %410, %410
  %412 = load ptr, ptr %0, align 8
  %413 = load ptr, ptr %412, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %413, ptr noundef nonnull @.str.72) #22
  br label %444

414:                                              ; preds = %410
  %415 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %415, ptr noundef nonnull @.str.73) #22
  br label %444

416:                                              ; preds = %410, %410
  %417 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %417, ptr noundef nonnull @.str.74) #22
  br label %444

418:                                              ; preds = %410
  %419 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %419, ptr noundef nonnull @.str.75) #22
  br label %444

420:                                              ; preds = %410
  %421 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %421, ptr noundef nonnull @.str.76) #22
  br label %444

422:                                              ; preds = %410
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_context_change, ptr noundef nonnull @.str.77) #21
  br label %444

423:                                              ; preds = %410
  %424 = load ptr, ptr %0, align 8
  %425 = load ptr, ptr %424, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %425, ptr noundef nonnull @.str.78, i32 noundef %409) #22
  br label %444

426:                                              ; preds = %405
  switch i32 %409, label %441 [
    i32 25, label %427
    i32 24, label %427
    i32 17, label %430
    i32 11, label %432
    i32 19, label %434
    i32 22, label %436
    i32 29, label %438
    i32 1, label %440
  ]

427:                                              ; preds = %426, %426
  %428 = load ptr, ptr %0, align 8
  %429 = load ptr, ptr %428, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %429, ptr noundef nonnull @.str.79) #22
  br label %444

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %431, ptr noundef nonnull @.str.80) #22
  br label %444

432:                                              ; preds = %426
  %433 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %433, ptr noundef nonnull @.str.81) #22
  br label %444

434:                                              ; preds = %426
  %435 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %435, ptr noundef nonnull @.str.82) #22
  br label %444

436:                                              ; preds = %426
  %437 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %437, ptr noundef nonnull @.str.83) #22
  br label %444

438:                                              ; preds = %426
  %439 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %439, ptr noundef nonnull @.str.84) #22
  br label %444

440:                                              ; preds = %426
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_context_change, ptr noundef nonnull @.str.85) #21
  br label %444

441:                                              ; preds = %426
  %442 = load ptr, ptr %0, align 8
  %443 = load ptr, ptr %442, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %443, ptr noundef nonnull @.str.78, i32 noundef %409) #22
  br label %444

444:                                              ; preds = %441, %440, %438, %436, %434, %432, %430, %427, %423, %422, %420, %418, %416, %414, %411
  %445 = phi i1 [ false, %441 ], [ true, %440 ], [ false, %438 ], [ false, %436 ], [ false, %434 ], [ false, %432 ], [ false, %430 ], [ false, %427 ], [ false, %423 ], [ true, %422 ], [ false, %420 ], [ false, %418 ], [ false, %416 ], [ false, %414 ], [ false, %411 ]
  %446 = phi i32 [ -22, %441 ], [ 0, %440 ], [ -22, %438 ], [ -19, %436 ], [ -22, %434 ], [ -22, %432 ], [ -22, %430 ], [ -62, %427 ], [ -22, %423 ], [ 0, %422 ], [ -19, %420 ], [ -22, %418 ], [ -28, %416 ], [ -12, %414 ], [ -62, %411 ]
  %447 = load i64, ptr %28, align 8
  %448 = and i64 %447, 32
  %449 = icmp eq i64 %448, 0
  br i1 %449, label %476, label %450

450:                                              ; preds = %444
  %451 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #21
  %452 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %22, i32 0, i32 1
  %453 = load i32, ptr %452, align 4
  %454 = lshr i32 %453, 2
  %455 = load i32, ptr %22, align 4
  %456 = lshr i32 %455, 2
  br i1 %445, label %465, label %457

457:                                              ; preds = %450
  %458 = tail call i32 @__sw_hweight32(i32 noundef %454) #21
  %459 = and i32 %456, %454
  %460 = tail call i32 @__sw_hweight32(i32 noundef %459) #21
  %461 = sub i32 %458, %460
  %462 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 52
  %463 = load i32, ptr %462, align 8
  %464 = sub i32 %463, %461
  store i32 %464, ptr %462, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.71, i32 noundef %461, i32 noundef %464) #21
  br label %475

465:                                              ; preds = %450
  %466 = tail call i32 @__sw_hweight32(i32 noundef %456) #21
  %467 = and i32 %456, %454
  %468 = tail call i32 @__sw_hweight32(i32 noundef %467) #21
  %469 = sub i32 %466, %468
  %470 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 52
  %471 = load i32, ptr %470, align 8
  %472 = sub i32 %471, %469
  store i32 %472, ptr %470, align 8
  %473 = icmp eq i32 %466, %468
  br i1 %473, label %475, label %474

474:                                              ; preds = %465
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.86, i32 noundef %469, i32 noundef %472) #21
  br label %475

475:                                              ; preds = %474, %465, %457
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %451) #21
  br label %476

476:                                              ; preds = %475, %444, %404, %338, %50, %24, %15, %5
  %477 = phi i32 [ -108, %15 ], [ -12, %50 ], [ -12, %338 ], [ -12, %404 ], [ -12, %24 ], [ -22, %5 ], [ %446, %475 ], [ %446, %444 ]
  ret i32 %477
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_free_endpoint_ring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_debugfs_create_endpoint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_reset_bandwidth(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %78

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %78, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi ptr [ %15, %13 ], [ %0, %10 ]
  %18 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %78, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 0, i32 29
  %23 = getelementptr %struct.xhci_hcd, ptr %22, i32 0, i32 42, i32 %19
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %78, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.xhci_virt_device, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %30, label %78

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 4, i32 20, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %30
  %36 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #21
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi ptr [ %40, %38 ], [ %0, %35 ]
  %43 = getelementptr inbounds %struct.usb_hcd, ptr %42, i32 0, i32 29
  %44 = load i32, ptr %18, align 8
  %45 = getelementptr %struct.xhci_hcd, ptr %43, i32 0, i32 42, i32 %44
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %54, %41
  %48 = phi i32 [ 0, %41 ], [ %55, %54 ]
  %49 = getelementptr %struct.xhci_virt_device, ptr %46, i32 0, i32 4, i32 %48, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  tail call void @xhci_debugfs_remove_endpoint(ptr noundef %43, ptr noundef %46, i32 noundef %48) #21
  %53 = load ptr, ptr %49, align 4
  tail call void @xhci_ring_free(ptr noundef %43, ptr noundef %53) #21
  store ptr null, ptr %49, align 4
  br label %54

54:                                               ; preds = %52, %47
  %55 = add nuw nsw i32 %48, 1
  %56 = icmp eq i32 %55, 31
  br i1 %56, label %57, label %47

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.xhci_virt_device, ptr %46, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %59) #21
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load ptr, ptr %43, align 8
  %64 = load ptr, ptr %63, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_zero_in_ctx) #22
  br label %78

65:                                               ; preds = %57
  store i32 0, ptr %60, align 4
  %66 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %60, i32 0, i32 1
  store i32 0, ptr %66, align 4
  %67 = load ptr, ptr %58, align 4
  %68 = tail call ptr @xhci_get_slot_ctx(ptr noundef %43, ptr noundef %67) #21
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 134217727
  %71 = or i32 %70, 134217728
  store i32 %71, ptr %68, align 4
  br label %72

72:                                               ; preds = %72, %65
  %73 = phi i32 [ 1, %65 ], [ %76, %72 ]
  %74 = load ptr, ptr %58, align 4
  %75 = tail call ptr @xhci_get_ep_ctx(ptr noundef %43, ptr noundef %74, i32 noundef %73) #21
  %76 = add nuw nsw i32 %73, 1
  %77 = icmp eq i32 %76, 31
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %75, i8 0, i64 20, i1 false) #21
  br i1 %77, label %78, label %72

78:                                               ; preds = %72, %62, %30, %26, %21, %16, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_ring_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_free_device_endpoint_resources(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = xor i1 %2, true
  %5 = zext i1 %4 to i32
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ 0, %3 ], [ %18, %6 ]
  %8 = phi i32 [ 0, %3 ], [ %16, %6 ]
  %9 = phi i32 [ %5, %3 ], [ %19, %6 ]
  %10 = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %9, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = shl nuw nsw i32 1, %9
  %14 = xor i1 %12, true
  %15 = zext i1 %14 to i32
  %16 = add i32 %8, %15
  %17 = select i1 %12, i32 0, i32 %13
  %18 = or i32 %17, %7
  %19 = add nuw nsw i32 %9, 1
  %20 = icmp eq i32 %19, 31
  br i1 %20, label %21, label %6

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 52
  %23 = load i32, ptr %22, align 8
  %24 = sub i32 %23, %16
  store i32 %24, ptr %22, align 8
  %25 = icmp eq i32 %16, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.26, i32 noundef %16, i32 noundef %18, i32 noundef %24) #21
  br label %27

27:                                               ; preds = %26, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_disable_slot(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @xhci_alloc_command(ptr noundef %0, i1 noundef zeroext true, i32 noundef 3264) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  tail call void @xhci_debugfs_remove_slot(ptr noundef %0, i32 noundef %1) #21
  %6 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 12
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #21
  %8 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xhci_op_regs, ptr %9, i32 0, i32 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !83
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 48
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #21
  tail call void @kfree(ptr noundef nonnull %3) #21
  br label %33

19:                                               ; preds = %13
  %20 = tail call i32 @xhci_queue_slot_control(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 10, i32 noundef %1) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #21
  tail call void @kfree(ptr noundef nonnull %3) #21
  br label %33

23:                                               ; preds = %19
  tail call void @xhci_ring_cmd_db(ptr noundef %0) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #21
  %24 = getelementptr inbounds %struct.xhci_command, ptr %3, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void @wait_for_completion(ptr noundef %25) #21
  %26 = getelementptr inbounds %struct.xhci_command, ptr %3, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %0, align 8
  %31 = load ptr, ptr %30, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.27, i32 noundef %1, i32 noundef %27) #22
  br label %32

32:                                               ; preds = %29, %23
  tail call void @xhci_free_command(ptr noundef %0, ptr noundef nonnull %3) #21
  br label %33

33:                                               ; preds = %32, %22, %18, %2
  %34 = phi i32 [ -19, %18 ], [ %20, %22 ], [ 0, %32 ], [ -12, %2 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_debugfs_remove_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_slot_control(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_ring_cmd_db(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_alloc_dev(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 29
  %11 = tail call ptr @xhci_alloc_command(ptr noundef %10, i1 noundef zeroext true, i32 noundef 3264) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %98, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 1, i32 0, i32 10
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #21
  %16 = tail call i32 @xhci_queue_slot_control(ptr noundef %10, ptr noundef nonnull %11, i32 noundef 9, i32 noundef 0) #21
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #21
  tail call void @xhci_free_command(ptr noundef %10, ptr noundef nonnull %11) #21
  br label %98

19:                                               ; preds = %13
  tail call void @xhci_ring_cmd_db(ptr noundef %10) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #21
  %20 = getelementptr inbounds %struct.xhci_command, ptr %11, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void @wait_for_completion(ptr noundef %21) #21
  %22 = getelementptr inbounds %struct.xhci_command, ptr %11, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.xhci_command, ptr %11, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %39, label %29

29:                                               ; preds = %25, %19
  %30 = load ptr, ptr %10, align 8
  %31 = load ptr, ptr %30, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.28) #22
  %32 = load ptr, ptr %10, align 8
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 1, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.xhci_cap_regs, ptr %35, i32 0, i32 1
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !84
  %38 = and i32 %37, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.29, i32 noundef %38) #22
  tail call void @xhci_free_command(ptr noundef %10, ptr noundef nonnull %11) #21
  br label %98

39:                                               ; preds = %25
  tail call void @xhci_free_command(ptr noundef %10, ptr noundef nonnull %11) #21
  %40 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 4, i32 21, i32 3, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 32
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %39
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #21
  %46 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 4, i32 21, i32 3, i32 3
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, 1
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 4, i32 21, i32 3, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %10, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.88, i32 noundef %47, i32 noundef %50) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %45) #21
  %53 = load ptr, ptr %10, align 8
  %54 = load ptr, ptr %53, align 8
  %55 = load i32, ptr %46, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.30, i32 noundef %55) #22
  br label %93

56:                                               ; preds = %44
  store i32 %48, ptr %46, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %10, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.89, i32 noundef %48) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %45) #21
  br label %57

57:                                               ; preds = %56, %39
  %58 = tail call i32 @xhci_alloc_virt_device(ptr noundef %10, i32 noundef %23, ptr noundef %1, i32 noundef 3072) #21
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load ptr, ptr %10, align 8
  %62 = load ptr, ptr %61, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.31) #22
  br label %93

63:                                               ; preds = %57
  %64 = getelementptr %struct.xhci_hcd, ptr %10, i32 0, i32 42, i32 %23
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.xhci_virt_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = tail call ptr @xhci_get_slot_ctx(ptr noundef %10, ptr noundef %67) #21
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_alloc_dev, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %63
  %72 = tail call ptr @llvm.thread.pointer() #21
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !85
  %83 = tail call i32 @__traceiter_xhci_alloc_dev(ptr noundef null, ptr noundef %68) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !86
  br label %84

84:                                               ; preds = %82, %71, %63
  %85 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  store i32 %23, ptr %85, align 8
  tail call void @xhci_debugfs_create_slot(ptr noundef %10, i32 noundef %23) #21
  %86 = load i64, ptr %40, align 8
  %87 = and i64 %86, 128
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr %0, align 8
  %91 = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #21, !srcloc !87
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #21, !srcloc !88
  br label %98

93:                                               ; preds = %60, %52
  %94 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %95 = load i32, ptr %94, align 8
  %96 = tail call i32 @xhci_disable_slot(ptr noundef %10, i32 noundef %95)
  %97 = load i32, ptr %94, align 8
  tail call void @xhci_free_virt_device(ptr noundef %10, i32 noundef %97) #21
  br label %98

98:                                               ; preds = %93, %89, %84, %29, %18, %8
  %99 = phi i32 [ 0, %18 ], [ 0, %29 ], [ 0, %93 ], [ 0, %8 ], [ 1, %89 ], [ 1, %84 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_alloc_virt_device(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_debugfs_create_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_free_virt_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_find_raw_port_number(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @xhci_get_rhub(ptr noundef %0) #21
  %4 = load ptr, ptr %3, align 4
  %5 = add i32 %1, -1
  %6 = getelementptr ptr, ptr %4, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xhci_port, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_rhub(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_gen_setup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 7
  store i32 -1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 2
  %8 = or i8 %7, 12
  store i8 %8, ptr %6, align 2
  %9 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi ptr [ %13, %11 ], [ %0, %2 ]
  %16 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 0, i32 29
  %17 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %67, label %19

19:                                               ; preds = %14
  store ptr %0, ptr %16, align 8
  %20 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 4, i32 23
  store ptr %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  store i32 32, ptr %21, align 8
  %22 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 4
  store i32 3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 14
  %26 = load i16, ptr %25, align 8
  %27 = or i16 %26, 128
  store i16 %27, ptr %25, align 8
  %28 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 18
  tail call void @__mutex_init(ptr noundef %28, ptr noundef nonnull @.str.35, ptr noundef nonnull @xhci_gen_setup.__key) #21
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 16
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 2
  store ptr %30, ptr %31, align 8
  %32 = load ptr, ptr %29, align 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !89
  %34 = and i32 %33, 255
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 3
  store ptr %35, ptr %36, align 4
  %37 = load ptr, ptr %29, align 8
  %38 = load ptr, ptr %31, align 8
  %39 = getelementptr inbounds %struct.xhci_cap_regs, ptr %38, i32 0, i32 6
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !90
  %41 = and i32 %40, -32
  %42 = getelementptr i8, ptr %37, i32 %41
  %43 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 4
  store ptr %42, ptr %43, align 8
  %44 = load ptr, ptr %31, align 8
  %45 = getelementptr inbounds %struct.xhci_cap_regs, ptr %44, i32 0, i32 1
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !91
  %47 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 9
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %31, align 8
  %49 = getelementptr inbounds %struct.xhci_cap_regs, ptr %48, i32 0, i32 2
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !92
  %51 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 9, i32 1
  store i32 %50, ptr %51, align 8
  %52 = load ptr, ptr %31, align 8
  %53 = getelementptr inbounds %struct.xhci_cap_regs, ptr %52, i32 0, i32 3
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !93
  %55 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 9, i32 2
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr %31, align 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !94
  %58 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 9, i32 3
  store i32 %57, ptr %58, align 8
  %59 = lshr i32 %57, 16
  %60 = trunc i32 %59 to i16
  %61 = getelementptr inbounds %struct.xhci_hcd, ptr %16, i32 0, i32 14
  store i16 %60, ptr %61, align 2
  %62 = load ptr, ptr %31, align 8
  %63 = getelementptr inbounds %struct.xhci_cap_regs, ptr %62, i32 0, i32 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !95
  store i32 %64, ptr %58, align 8
  %65 = load i16, ptr %61, align 2
  %66 = icmp ugt i16 %65, 256
  br i1 %66, label %100, label %105

67:                                               ; preds = %14
  %68 = getelementptr inbounds %struct.xhci_hcd, ptr %16, i32 0, i32 56, i32 5
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 1
  %71 = lshr i8 %69, 4
  %72 = select i1 %70, i8 1, i8 %71
  %73 = zext i8 %72 to i32
  %74 = trunc i8 %72 to i4
  switch i4 %74, label %94 [
    i4 2, label %75
    i4 1, label %84
  ]

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  store i32 96, ptr %76, align 8
  %77 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.usb_device, ptr %78, i32 0, i32 4
  store i32 6, ptr %79, align 4
  %80 = load ptr, ptr %77, align 8
  %81 = getelementptr inbounds %struct.usb_device, ptr %80, i32 0, i32 5
  store i32 2, ptr %81, align 8
  %82 = load ptr, ptr %77, align 8
  %83 = getelementptr inbounds %struct.usb_device, ptr %82, i32 0, i32 6
  store i32 2, ptr %83, align 4
  br label %89

84:                                               ; preds = %67
  %85 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  store i32 80, ptr %85, align 8
  %86 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 11
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.usb_device, ptr %87, i32 0, i32 4
  store i32 6, ptr %88, align 4
  br label %89

89:                                               ; preds = %84, %75
  %90 = phi ptr [ %77, %75 ], [ %86, %84 ]
  %91 = phi i32 [ 3, %75 ], [ 1, %84 ]
  %92 = load ptr, ptr %90, align 8
  %93 = getelementptr inbounds %struct.usb_device, ptr %92, i32 0, i32 7
  store i32 %91, ptr %93, align 8
  br label %94

94:                                               ; preds = %89, %67
  %95 = load ptr, ptr %16, align 8
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq i8 %72, 0
  %98 = select i1 %97, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %96, ptr noundef nonnull @.str.32, i32 noundef %73, ptr noundef nonnull %98) #22
  %99 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 8, i32 0, i32 12
  store ptr %0, ptr %99, align 4
  br label %150

100:                                              ; preds = %19
  %101 = load ptr, ptr %31, align 8
  %102 = getelementptr inbounds %struct.xhci_cap_regs, ptr %101, i32 0, i32 7
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !96
  %104 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 1, i32 0, i32 9, i32 3, i32 1
  store i32 %103, ptr %104, align 4
  br label %105

105:                                              ; preds = %100, %19
  %106 = load i64, ptr @quirks, align 8
  %107 = getelementptr inbounds %struct.usb_hcd, ptr %15, i32 4, i32 21, i32 3, i32 1
  %108 = load i64, ptr %107, align 8
  %109 = or i64 %108, %106
  store i64 %109, ptr %107, align 8
  tail call void %1(ptr noundef %4, ptr noundef %16) #21
  %110 = load i16, ptr %61, align 2
  %111 = icmp ugt i16 %110, 150
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i64, ptr %107, align 8
  %114 = or i64 %113, 16
  store i64 %114, ptr %107, align 8
  br label %115

115:                                              ; preds = %112, %105
  %116 = tail call i32 @xhci_halt(ptr noundef %16)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %150

118:                                              ; preds = %115
  tail call fastcc void @xhci_zero_64b_regs(ptr noundef %16)
  %119 = tail call i32 @xhci_reset(ptr noundef %16)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %118
  %122 = load i64, ptr %107, align 8
  %123 = and i64 %122, 8388608
  %124 = icmp eq i64 %123, 0
  %125 = load i32, ptr %58, align 8
  br i1 %124, label %128, label %126

126:                                              ; preds = %121
  %127 = and i32 %125, -2
  store i32 %127, ptr %58, align 8
  br label %128

128:                                              ; preds = %126, %121
  %129 = phi i32 [ %127, %126 ], [ %125, %121 ]
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = tail call i32 @dma_set_mask(ptr noundef %4, i64 noundef -1) #21
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132, %128
  %136 = tail call i32 @dma_set_mask(ptr noundef %4, i64 noundef 4294967295) #21
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %135, %132
  %139 = phi i64 [ -1, %132 ], [ 4294967295, %135 ]
  %140 = tail call i32 @dma_set_coherent_mask(ptr noundef %4, i64 noundef %139) #21
  %141 = tail call fastcc i32 @xhci_init(ptr noundef %0)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load ptr, ptr %16, align 8
  %145 = load ptr, ptr %144, align 8
  %146 = load i32, ptr %58, align 8
  %147 = load i16, ptr %61, align 2
  %148 = zext i16 %147 to i32
  %149 = load i64, ptr %107, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %145, ptr noundef nonnull @.str.36, i32 noundef %146, i32 noundef %148, i64 noundef %149) #22
  br label %150

150:                                              ; preds = %143, %138, %135, %118, %115, %94
  %151 = phi i32 [ 0, %143 ], [ 0, %94 ], [ %116, %115 ], [ %119, %118 ], [ %136, %135 ], [ %141, %138 ]
  ret i32 %151
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_init_driver(ptr nocapture noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5, !prof !97

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/xhci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5457, 0\0A.popsection", ""() #21, !srcloc !98
  unreachable

5:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(184) %0, ptr noundef nonnull align 4 dereferenceable(184) @xhci_hc_driver, i32 184, i1 false)
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 2
  %8 = add i32 %6, 3752
  store i32 %8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xhci_driver_overrides, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 5
  store ptr %10, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %5
  %15 = getelementptr inbounds %struct.xhci_driver_overrides, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 6
  store ptr %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.xhci_driver_overrides, ptr %1, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 31
  store ptr %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.xhci_driver_overrides, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 32
  store ptr %28, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.xhci_driver_overrides, ptr %1, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 33
  store ptr %34, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.xhci_driver_overrides, ptr %1, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.hc_driver, ptr %0, i32 0, i32 34
  store ptr %40, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %38
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @xhci_hcd_fini() #10 section ".exit.text" {
  tail call void @xhci_debugfs_remove_root() #22
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @xhci_debugfs_remove_root() local_unnamed_addr #4 section ".exit.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @xhci_hcd_init() #10 section ".init.text" {
  %1 = tail call i32 @usb_disabled() #21
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @xhci_debugfs_create_root() #22
  br label %4

4:                                                ; preds = %3, %0
  %5 = phi i32 [ 0, %3 ], [ -19, %0 ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_irq(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_msi_irq(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_port_state_to_neutral(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_quirks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_write_64(i64 noundef %0, ptr noundef %1) unnamed_addr #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !38
  tail call void @arm_heavy_mb() #21
  %3 = trunc i64 %0 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #21, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !39
  tail call void @arm_heavy_mb() #21
  %4 = lshr i64 %0, 32
  %5 = trunc i64 %4 to i32
  %6 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #21, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_trb_virt_to_dma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_mem_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmi_get_system_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @compliance_mode_recovery(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -3704
  %3 = getelementptr i8, ptr %0, i32 -1180
  %4 = getelementptr i8, ptr %0, i32 -1176
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -3700
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ 0, %7 ], [ %18, %26 ]
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !99
  %16 = and i32 %15, 480
  %17 = icmp eq i32 %16, 320
  %18 = add nuw i32 %10, 1
  br i1 %17, label %19, label %26

19:                                               ; preds = %9
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %2, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.60, i32 noundef %18) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %2, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.61) #21
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %20, i32 0, i32 27
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @usb_hcd_resume_root_hub(ptr noundef %20) #21
  br label %25

25:                                               ; preds = %24, %19
  tail call void @usb_hcd_poll_rh_status(ptr noundef %20) #21
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i32, ptr %4, align 4
  %28 = icmp ult i32 %18, %27
  br i1 %28, label %9, label %29

29:                                               ; preds = %26, %1
  %30 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %31 = getelementptr i8, ptr %0, i32 20
  %32 = load i32, ptr %31, align 4
  %33 = shl nsw i32 -1, %30
  %34 = xor i32 %33, -1
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = add i32 %37, 200
  %39 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %38) #21
  br label %40

40:                                               ; preds = %36, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_add_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_free_host_resources(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 2
  %6 = load i32, ptr %1, align 4
  %7 = lshr i32 %6, 2
  %8 = tail call i32 @__sw_hweight32(i32 noundef %5) #21
  %9 = and i32 %7, %5
  %10 = tail call i32 @__sw_hweight32(i32 noundef %9) #21
  %11 = sub i32 %8, %10
  %12 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 52
  %13 = load i32, ptr %12, align 8
  %14 = sub i32 %13, %11
  store i32 %14, ptr %12, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.71, i32 noundef %11, i32 noundef %14) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_configure_endpoint(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_evaluate_context(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_context_change(ptr noundef %0) #3 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_context_change, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #21
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !100
  %16 = tail call i32 @__traceiter_xhci_dbg_context_change(ptr noundef null, ptr noundef %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !101
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_drop_ep_from_interval_table(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #16 {
  %7 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = and i32 %9, -7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %122

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 4
  br i1 %15, label %16, label %79

16:                                               ; preds = %12
  %17 = and i32 %8, -3
  %18 = icmp eq i32 %17, 5
  %19 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 15
  %22 = lshr i32 %21, 4
  %23 = load i32, ptr %1, align 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  br i1 %18, label %29, label %54

29:                                               ; preds = %16
  br i1 %24, label %30, label %35

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %22, 8
  %32 = mul i32 %28, %26
  %33 = mul i32 %32, %31
  %34 = add i32 %33, 32
  br label %43

35:                                               ; preds = %29
  %36 = add nuw nsw i32 %22, 40
  %37 = mul i32 %28, %26
  %38 = mul i32 %37, %36
  %39 = shl nsw i32 -1, %23
  %40 = xor i32 %39, -1
  %41 = add i32 %38, %40
  %42 = lshr i32 %41, %23
  br label %43

43:                                               ; preds = %35, %30
  %44 = phi i32 [ %34, %30 ], [ %42, %35 ]
  %45 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 43
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.xhci_virt_device, ptr %48, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.xhci_interval_bw_table, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 %52, %44
  store i32 %53, ptr %51, align 4
  br label %122

54:                                               ; preds = %16
  br i1 %24, label %55, label %60

55:                                               ; preds = %54
  %56 = add nuw nsw i32 %22, 8
  %57 = mul i32 %28, %26
  %58 = mul i32 %57, %56
  %59 = add i32 %58, 32
  br label %68

60:                                               ; preds = %54
  %61 = add nuw nsw i32 %22, 40
  %62 = mul i32 %28, %26
  %63 = mul i32 %62, %61
  %64 = shl nsw i32 -1, %23
  %65 = xor i32 %64, -1
  %66 = add i32 %63, %65
  %67 = lshr i32 %66, %23
  br label %68

68:                                               ; preds = %60, %55
  %69 = phi i32 [ %59, %55 ], [ %67, %60 ]
  %70 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 43
  %71 = load i32, ptr %70, align 8
  %72 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.xhci_virt_device, ptr %73, i32 0, i32 7
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.xhci_interval_bw_table, ptr %75, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = sub i32 %77, %69
  store i32 %78, ptr %76, align 4
  br label %122

79:                                               ; preds = %12
  %80 = getelementptr inbounds %struct.xhci_virt_ep, ptr %4, i32 0, i32 13
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %122, label %83

83:                                               ; preds = %79
  %84 = icmp eq i32 %14, 3
  %85 = load i32, ptr %1, align 4
  %86 = add i32 %85, -3
  %87 = select i1 %84, i32 %85, i32 %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = load i32, ptr %2, align 4
  %93 = sub i32 %92, %91
  store i32 %93, ptr %2, align 4
  br label %94

94:                                               ; preds = %89, %83
  %95 = getelementptr %struct.xhci_interval_bw_table, ptr %2, i32 0, i32 1, i32 %87
  %96 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %95, align 4
  %99 = sub i32 %98, %97
  store i32 %99, ptr %95, align 4
  %100 = load i32, ptr %13, align 4
  switch i32 %100, label %111 [
    i32 1, label %101
    i32 2, label %103
    i32 3, label %105
    i32 5, label %122
    i32 6, label %122
    i32 0, label %122
    i32 4, label %122
  ]

101:                                              ; preds = %94
  %102 = getelementptr %struct.xhci_interval_bw_table, ptr %2, i32 0, i32 1, i32 %87, i32 2
  br label %107

103:                                              ; preds = %94
  %104 = getelementptr %struct.xhci_interval_bw_table, ptr %2, i32 0, i32 1, i32 %87, i32 2, i32 1
  br label %107

105:                                              ; preds = %94
  %106 = getelementptr %struct.xhci_interval_bw_table, ptr %2, i32 0, i32 1, i32 %87, i32 2, i32 2
  br label %107

107:                                              ; preds = %105, %103, %101
  %108 = phi ptr [ %106, %105 ], [ %104, %103 ], [ %102, %101 ]
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, -1
  store i32 %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %107, %94
  %112 = icmp eq ptr %5, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %5, i32 0, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, -1
  store i32 %116, ptr %114, align 4
  br label %117

117:                                              ; preds = %113, %111
  %118 = getelementptr inbounds %struct.xhci_virt_ep, ptr %4, i32 0, i32 13, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %80, align 4
  %121 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  store ptr %119, ptr %121, align 4
  store volatile ptr %120, ptr %119, align 4
  store volatile ptr %80, ptr %80, align 4
  store ptr %80, ptr %118, align 4
  br label %122

122:                                              ; preds = %117, %94, %94, %94, %94, %79, %68, %43, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_update_bw_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_add_ep_to_interval_table(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #16 {
  %7 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = and i32 %9, -7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %136

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %80 [
    i32 5, label %15
    i32 3, label %78
  ]

15:                                               ; preds = %12
  %16 = and i32 %8, -3
  %17 = icmp eq i32 %16, 5
  %18 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 15
  %21 = lshr i32 %20, 4
  %22 = load i32, ptr %1, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  br i1 %17, label %28, label %53

28:                                               ; preds = %15
  br i1 %23, label %29, label %34

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %21, 8
  %31 = mul i32 %27, %25
  %32 = mul i32 %31, %30
  %33 = add i32 %32, 32
  br label %42

34:                                               ; preds = %28
  %35 = add nuw nsw i32 %21, 40
  %36 = mul i32 %27, %25
  %37 = mul i32 %36, %35
  %38 = shl nsw i32 -1, %22
  %39 = xor i32 %38, -1
  %40 = add i32 %37, %39
  %41 = lshr i32 %40, %22
  br label %42

42:                                               ; preds = %34, %29
  %43 = phi i32 [ %33, %29 ], [ %41, %34 ]
  %44 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 43
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.xhci_virt_device, ptr %47, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.xhci_interval_bw_table, ptr %49, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %43
  store i32 %52, ptr %50, align 4
  br label %136

53:                                               ; preds = %15
  br i1 %23, label %54, label %59

54:                                               ; preds = %53
  %55 = add nuw nsw i32 %21, 8
  %56 = mul i32 %27, %25
  %57 = mul i32 %56, %55
  %58 = add i32 %57, 32
  br label %67

59:                                               ; preds = %53
  %60 = add nuw nsw i32 %21, 40
  %61 = mul i32 %27, %25
  %62 = mul i32 %61, %60
  %63 = shl nsw i32 -1, %22
  %64 = xor i32 %63, -1
  %65 = add i32 %62, %64
  %66 = lshr i32 %65, %22
  br label %67

67:                                               ; preds = %59, %54
  %68 = phi i32 [ %58, %54 ], [ %66, %59 ]
  %69 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 43
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %70
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.xhci_virt_device, ptr %72, i32 0, i32 7
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.xhci_interval_bw_table, ptr %74, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, %68
  store i32 %77, ptr %75, align 4
  br label %136

78:                                               ; preds = %12
  %79 = load i32, ptr %1, align 4
  br label %83

80:                                               ; preds = %12
  %81 = load i32, ptr %1, align 4
  %82 = add i32 %81, -3
  br label %83

83:                                               ; preds = %80, %78
  %84 = phi i32 [ %79, %78 ], [ %82, %80 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = load i32, ptr %2, align 4
  %90 = add i32 %89, %88
  store i32 %90, ptr %2, align 4
  br label %91

91:                                               ; preds = %86, %83
  %92 = getelementptr %struct.xhci_interval_bw_table, ptr %2, i32 0, i32 1, i32 %84
  %93 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %92, align 4
  %96 = add i32 %95, %94
  store i32 %96, ptr %92, align 4
  %97 = load i32, ptr %13, align 4
  switch i32 %97, label %108 [
    i32 1, label %98
    i32 2, label %100
    i32 3, label %102
    i32 5, label %136
    i32 6, label %136
    i32 0, label %136
    i32 4, label %136
  ]

98:                                               ; preds = %91
  %99 = getelementptr %struct.xhci_interval_bw_table, ptr %2, i32 0, i32 1, i32 %84, i32 2
  br label %104

100:                                              ; preds = %91
  %101 = getelementptr %struct.xhci_interval_bw_table, ptr %2, i32 0, i32 1, i32 %84, i32 2, i32 1
  br label %104

102:                                              ; preds = %91
  %103 = getelementptr %struct.xhci_interval_bw_table, ptr %2, i32 0, i32 1, i32 %84, i32 2, i32 2
  br label %104

104:                                              ; preds = %102, %100, %98
  %105 = phi ptr [ %103, %102 ], [ %101, %100 ], [ %99, %98 ]
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %104, %91
  %109 = icmp eq ptr %5, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %5, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 4
  br label %114

114:                                              ; preds = %110, %108
  %115 = getelementptr %struct.xhci_interval_bw_table, ptr %2, i32 0, i32 1, i32 %84, i32 1
  %116 = getelementptr inbounds %struct.xhci_bw_info, ptr %1, i32 0, i32 3
  br label %117

117:                                              ; preds = %121, %114
  %118 = phi ptr [ %115, %114 ], [ %119, %121 ]
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, %115
  br i1 %120, label %131, label %121

121:                                              ; preds = %117
  %122 = load i32, ptr %116, align 4
  %123 = getelementptr i8, ptr %119, i32 -12
  %124 = load i32, ptr %123, align 4
  %125 = icmp ult i32 %122, %124
  br i1 %125, label %117, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.xhci_virt_ep, ptr %4, i32 0, i32 13
  %128 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  store ptr %127, ptr %128, align 4
  store ptr %119, ptr %127, align 4
  %130 = getelementptr inbounds %struct.xhci_virt_ep, ptr %4, i32 0, i32 13, i32 1
  store ptr %129, ptr %130, align 4
  store volatile ptr %127, ptr %129, align 4
  br label %136

131:                                              ; preds = %117
  %132 = getelementptr inbounds %struct.xhci_virt_ep, ptr %4, i32 0, i32 13
  %133 = getelementptr %struct.xhci_interval_bw_table, ptr %2, i32 0, i32 1, i32 %84, i32 1, i32 1
  %134 = load ptr, ptr %133, align 4
  store ptr %132, ptr %133, align 4
  store ptr %115, ptr %132, align 4
  %135 = getelementptr inbounds %struct.xhci_virt_ep, ptr %4, i32 0, i32 13, i32 1
  store ptr %134, ptr %135, align 4
  store volatile ptr %132, ptr %134, align 4
  br label %136

136:                                              ; preds = %131, %126, %91, %91, %91, %91, %67, %42, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_configure_endpoint_ctrl_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_configure_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_context_change(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_free_stream_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_alloc_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_irq(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xhci_stop(ptr noundef %0) #0 {
  %2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 29
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 18
  tail call void @mutex_lock(ptr noundef %10) #21
  %11 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %61, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 10
  tail call void @_raw_spin_lock_irq(ptr noundef %14) #21
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 20, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 2
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 4, i32 4
  store i32 4, ptr %18, align 8
  %19 = tail call i32 @xhci_halt(ptr noundef %9)
  %20 = tail call i32 @xhci_reset(ptr noundef %9)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !30
  %21 = load i16, ptr %14, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #21, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #21, !srcloc !32
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #21, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !34
  tail call fastcc void @xhci_cleanup_msix(ptr noundef %9)
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 4, i32 21, i32 3, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 16384
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 11, i32 15
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 8, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = shl nsw i32 -1, %31
  %33 = xor i32 %32, -1
  %34 = icmp eq i32 %29, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 11, i32 10
  %37 = tail call i32 @del_timer_sync(ptr noundef %36) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.xhci_stop) #21
  %38 = load i64, ptr %23, align 8
  br label %39

39:                                               ; preds = %35, %27, %13
  %40 = phi i64 [ %38, %35 ], [ %24, %27 ], [ %24, %13 ]
  %41 = and i64 %40, 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @usb_amd_dev_put() #21
  br label %44

44:                                               ; preds = %43, %39
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.92) #21
  %45 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.xhci_op_regs, ptr %46, i32 0, i32 1
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !102
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !103
  tail call void @arm_heavy_mb() #21
  %49 = and i32 %48, -8192
  %50 = or i32 %49, 8
  %51 = load ptr, ptr %45, align 4
  %52 = getelementptr inbounds %struct.xhci_op_regs, ptr %51, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #21, !srcloc !14
  %53 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 8
  %54 = load ptr, ptr %53, align 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !104
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !105
  tail call void @arm_heavy_mb() #21
  %56 = and i32 %55, -4
  %57 = load ptr, ptr %53, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %56) #21, !srcloc !14
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.93) #21
  tail call void @xhci_mem_cleanup(ptr noundef %9) #21
  tail call void @xhci_debugfs_exit(ptr noundef %9) #21
  %58 = load ptr, ptr %45, align 4
  %59 = getelementptr inbounds %struct.xhci_op_regs, ptr %58, i32 0, i32 1
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !106
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %9, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.94, i32 noundef %60) #21
  br label %61

61:                                               ; preds = %44, %7
  tail call void @mutex_unlock(ptr noundef %10) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_get_frame(ptr noundef %0) #0 {
  %2 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 1, i32 0, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !107
  %12 = lshr i32 %11, 3
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_urb_enqueue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 29
  %12 = icmp eq ptr %1, null
  br i1 %12, label %192, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %17 = icmp eq ptr %0, null
  br i1 %17, label %192, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %16, align 4
  %20 = icmp ne ptr %19, null
  %21 = icmp ne ptr %15, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %192

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %192, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi ptr [ %32, %30 ], [ %0, %27 ]
  %35 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 43
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %192, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %34, i32 0, i32 29
  %40 = getelementptr %struct.xhci_hcd, ptr %39, i32 0, i32 42, i32 %36
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %192, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.xhci_virt_device, ptr %41, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %15
  br i1 %46, label %47, label %192

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.usb_hcd, ptr %34, i32 4, i32 20, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %192

52:                                               ; preds = %47
  %53 = load ptr, ptr %14, align 4
  %54 = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 43
  %55 = load i32, ptr %54, align 8
  %56 = load ptr, ptr %16, align 4
  %57 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %56, i32 0, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = and i8 %58, 3
  %60 = icmp eq i8 %59, 0
  %61 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %56, i32 0, i32 2
  %62 = load i8, ptr %61, align 1
  %63 = shl i8 %62, 1
  %64 = and i8 %63, 30
  %65 = zext i8 %64 to i32
  %66 = lshr i8 %62, 7
  %67 = or i8 %64, %66
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %68, -1
  %70 = select i1 %60, i32 %65, i32 %69
  %71 = getelementptr %struct.xhci_hcd, ptr %11, i32 0, i32 42, i32 %55
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr %struct.xhci_virt_device, ptr %72, i32 0, i32 4, i32 %70, i32 5
  %74 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 12
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %192, label %78

78:                                               ; preds = %52
  %79 = getelementptr inbounds %struct.xhci_virt_device, ptr %72, i32 0, i32 9
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %192

83:                                               ; preds = %78
  %84 = trunc i8 %58 to i2
  switch i2 %84, label %106 [
    i2 1, label %85
    i2 -2, label %88
  ]

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %87 = load i32, ptr %86, align 4
  br label %107

88:                                               ; preds = %83
  %89 = icmp slt i8 %62, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 64
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %56, i32 0, i32 4
  %101 = load i16, ptr %100, align 1
  %102 = and i16 %101, 2047
  %103 = zext i16 %102 to i32
  %104 = urem i32 %92, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %99, %94, %90, %88, %83
  br label %107

107:                                              ; preds = %106, %99, %85
  %108 = phi i32 [ %87, %85 ], [ 1, %106 ], [ 2, %99 ]
  %109 = or i32 %2, 256
  %110 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %108, i32 56) #21
  %111 = extractvalue { i32, i1 } %110, 1
  %112 = extractvalue { i32, i1 } %110, 0
  %113 = add nuw i32 %112, 8
  %114 = select i1 %111, i32 -1, i32 %113
  %115 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %114, i32 noundef %109) #23
  %116 = icmp eq ptr %115, null
  br i1 %116, label %192, label %117

117:                                              ; preds = %107
  store i32 %108, ptr %115, align 64
  %118 = getelementptr inbounds %struct.urb_priv, ptr %115, i32 0, i32 1
  store i32 0, ptr %118, align 4
  %119 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  store ptr %115, ptr %119, align 4
  %120 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_urb_enqueue, i32 0, i32 1), align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %117
  %123 = tail call ptr @llvm.thread.pointer() #21
  %124 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %125 = load i32, ptr %124, align 8
  %126 = lshr i32 %125, 5
  %127 = getelementptr i32, ptr @__cpu_online_mask, i32 %126
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %125, 31
  %130 = shl nuw i32 1, %129
  %131 = and i32 %130, %128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %122
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !108
  %134 = tail call i32 @__traceiter_xhci_urb_enqueue(ptr noundef null, ptr noundef nonnull %1) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !109
  br label %135

135:                                              ; preds = %133, %122, %117
  %136 = load ptr, ptr %16, align 4
  %137 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %136, i32 0, i32 3
  %138 = load i8, ptr %137, align 1
  %139 = and i8 %138, 3
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %135
  %142 = load ptr, ptr %14, align 4
  %143 = getelementptr inbounds %struct.usb_device, ptr %142, i32 0, i32 4
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = tail call fastcc i32 @xhci_check_maxpacket(ptr noundef %11, i32 noundef %55, i32 noundef %70, ptr noundef nonnull %1, i32 noundef %2)
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  tail call void @xhci_urb_free_priv(ptr noundef nonnull %115) #21
  store ptr null, ptr %119, align 4
  br label %192

150:                                              ; preds = %146, %141, %135
  %151 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 1, i32 0, i32 10
  %152 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %151) #21
  %153 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 4, i32 20, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %188

157:                                              ; preds = %150
  %158 = load i32, ptr %73, align 4
  %159 = and i32 %158, 40
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr %11, align 8
  %163 = load ptr, ptr %162, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %163, ptr noundef nonnull @.str.95, i32 noundef %158) #22
  br label %188

164:                                              ; preds = %157
  %165 = and i32 %158, 128
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %11, align 8
  %169 = load ptr, ptr %168, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %169, ptr noundef nonnull @.str.96) #22
  br label %188

170:                                              ; preds = %164
  %171 = load ptr, ptr %16, align 4
  %172 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %171, i32 0, i32 3
  %173 = load i8, ptr %172, align 1
  %174 = and i8 %173, 3
  %175 = zext i8 %174 to i32
  switch i32 %175, label %184 [
    i32 0, label %176
    i32 2, label %178
    i32 3, label %180
    i32 1, label %182
  ]

176:                                              ; preds = %170
  %177 = tail call i32 @xhci_queue_ctrl_tx(ptr noundef %11, i32 noundef 2592, ptr noundef nonnull %1, i32 noundef %55, i32 noundef %70) #21
  br label %185

178:                                              ; preds = %170
  %179 = tail call i32 @xhci_queue_bulk_tx(ptr noundef %11, i32 noundef 2592, ptr noundef nonnull %1, i32 noundef %55, i32 noundef %70) #21
  br label %185

180:                                              ; preds = %170
  %181 = tail call i32 @xhci_queue_intr_tx(ptr noundef %11, i32 noundef 2592, ptr noundef nonnull %1, i32 noundef %55, i32 noundef %70) #21
  br label %185

182:                                              ; preds = %170
  %183 = tail call i32 @xhci_queue_isoc_tx_prepare(ptr noundef %11, i32 noundef 2592, ptr noundef nonnull %1, i32 noundef %55, i32 noundef %70) #21
  br label %185

184:                                              ; preds = %170
  unreachable

185:                                              ; preds = %182, %180, %178, %176
  %186 = phi i32 [ %183, %182 ], [ %181, %180 ], [ %179, %178 ], [ %177, %176 ]
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %185, %167, %161, %150
  %189 = phi i32 [ -22, %161 ], [ -22, %167 ], [ %186, %185 ], [ -108, %150 ]
  tail call void @xhci_urb_free_priv(ptr noundef nonnull %115) #21
  store ptr null, ptr %119, align 4
  br label %190

190:                                              ; preds = %188, %185
  %191 = phi i32 [ %189, %188 ], [ 0, %185 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %151, i32 noundef %152) #21
  br label %192

192:                                              ; preds = %190, %149, %107, %78, %52, %47, %43, %38, %33, %23, %18, %13, %9
  %193 = phi i32 [ %147, %149 ], [ %191, %190 ], [ -22, %9 ], [ -108, %52 ], [ -19, %78 ], [ -12, %107 ], [ -22, %23 ], [ -22, %18 ], [ -22, %13 ], [ -22, %38 ], [ -22, %33 ], [ -22, %43 ], [ -19, %47 ]
  ret i32 %193
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_urb_dequeue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 29
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 1, i32 0, i32 10
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #21
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_urb_dequeue, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %9
  %17 = tail call ptr @llvm.thread.pointer() #21
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !110
  %28 = tail call i32 @__traceiter_xhci_urb_dequeue(ptr noundef null, ptr noundef %1) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !111
  br label %29

29:                                               ; preds = %27, %16, %9
  %30 = tail call i32 @usb_hcd_check_unlink_urb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %207

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 43
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr %struct.xhci_hcd, ptr %11, i32 0, i32 42, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ne ptr %38, null
  %42 = icmp ne ptr %40, null
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %209

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 3
  %50 = icmp eq i8 %49, 0
  %51 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = shl i8 %52, 1
  %54 = and i8 %53, 30
  %55 = zext i8 %54 to i32
  %56 = lshr i8 %52, 7
  %57 = or i8 %54, %56
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %58, -1
  %60 = select i1 %50, i32 %55, i32 %59
  %61 = getelementptr %struct.xhci_virt_device, ptr %38, i32 0, i32 4, i32 %60
  %62 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 11
  %63 = load i32, ptr %62, align 4
  %64 = tail call ptr @xhci_triad_to_transfer_ring(ptr noundef %11, i32 noundef %36, i32 noundef %60, i32 noundef %63) #21
  %65 = icmp ne ptr %61, null
  %66 = icmp ne ptr %64, null
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %209

68:                                               ; preds = %44
  %69 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 1, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.xhci_op_regs, ptr %70, i32 0, i32 1
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !112
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 4, i32 20, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74, %68
  tail call void @xhci_hc_died(ptr noundef %11) #21
  br label %207

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.urb_priv, ptr %40, i32 0, i32 2
  %82 = icmp eq ptr %81, null
  br i1 %82, label %97, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %64, align 4
  %85 = getelementptr inbounds %struct.urb_priv, ptr %40, i32 4, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %91, %83
  %89 = phi ptr [ %93, %91 ], [ %84, %83 ]
  %90 = icmp eq ptr %89, %86
  br i1 %90, label %119, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.xhci_segment, ptr %89, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  %95 = icmp eq ptr %93, %84
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %97, label %88

97:                                               ; preds = %91, %83, %80
  %98 = load ptr, ptr %11, align 8
  %99 = load ptr, ptr %98, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.101) #22
  %100 = getelementptr inbounds %struct.urb_priv, ptr %40, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %40, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %209

104:                                              ; preds = %115, %97
  %105 = phi i32 [ %116, %115 ], [ %102, %97 ]
  %106 = phi i32 [ %117, %115 ], [ %101, %97 ]
  %107 = getelementptr %struct.urb_priv, ptr %40, i32 0, i32 2, i32 %106, i32 1
  %108 = load volatile ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %107
  br i1 %109, label %115, label %110

110:                                              ; preds = %104
  %111 = getelementptr %struct.urb_priv, ptr %40, i32 0, i32 2, i32 %106, i32 1, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  store ptr %112, ptr %113, align 4
  store volatile ptr %108, ptr %112, align 4
  store volatile ptr %107, ptr %107, align 4
  store ptr %107, ptr %111, align 4
  %114 = load i32, ptr %40, align 4
  br label %115

115:                                              ; preds = %110, %104
  %116 = phi i32 [ %105, %104 ], [ %114, %110 ]
  %117 = add nsw i32 %106, 1
  %118 = icmp slt i32 %117, %116
  br i1 %118, label %104, label %209

119:                                              ; preds = %88
  %120 = and i32 %76, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %148, label %122

122:                                              ; preds = %119
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %11, ptr noundef nonnull @trace_xhci_dbg_cancel_urb, ptr noundef nonnull @.str.102) #21
  %123 = getelementptr inbounds %struct.urb_priv, ptr %40, i32 0, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = load i32, ptr %40, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %209

127:                                              ; preds = %144, %122
  %128 = phi i32 [ %145, %144 ], [ %124, %122 ]
  %129 = getelementptr %struct.urb_priv, ptr %40, i32 0, i32 2, i32 %128
  %130 = load volatile ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, %129
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  store ptr %134, ptr %135, align 4
  store volatile ptr %130, ptr %134, align 4
  store volatile ptr %129, ptr %129, align 4
  store ptr %129, ptr %133, align 4
  br label %136

136:                                              ; preds = %132, %127
  %137 = getelementptr %struct.urb_priv, ptr %40, i32 0, i32 2, i32 %128, i32 1
  %138 = load volatile ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, %137
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = getelementptr %struct.urb_priv, ptr %40, i32 0, i32 2, i32 %128, i32 1, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  store ptr %142, ptr %143, align 4
  store volatile ptr %138, ptr %142, align 4
  store volatile ptr %137, ptr %137, align 4
  store ptr %137, ptr %141, align 4
  br label %144

144:                                              ; preds = %140, %136
  %145 = add nsw i32 %128, 1
  %146 = load i32, ptr %40, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %127, label %209

148:                                              ; preds = %119
  %149 = getelementptr inbounds %struct.urb_priv, ptr %40, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = load i32, ptr %40, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %148
  %154 = load ptr, ptr %33, align 4
  %155 = getelementptr inbounds %struct.usb_device, ptr %154, i32 0, i32 1
  %156 = load ptr, ptr %45, align 4
  %157 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %156, i32 0, i32 2
  %158 = load i8, ptr %157, align 2
  %159 = zext i8 %158 to i32
  %160 = getelementptr %struct.urb_priv, ptr %40, i32 0, i32 2, i32 %150, i32 5
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr %struct.urb_priv, ptr %40, i32 0, i32 2, i32 %150, i32 6
  %163 = load ptr, ptr %162, align 4
  %164 = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %161, ptr noundef %163) #21
  %165 = zext i32 %164 to i64
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %11, ptr noundef nonnull @trace_xhci_dbg_cancel_urb, ptr noundef nonnull @.str.103, ptr noundef %1, ptr noundef %155, i32 noundef %159, i64 noundef %165) #21
  %166 = load i32, ptr %40, align 4
  br label %167

167:                                              ; preds = %153, %148
  %168 = phi i32 [ %166, %153 ], [ %151, %148 ]
  %169 = icmp slt i32 %150, %168
  br i1 %169, label %170, label %188

170:                                              ; preds = %167
  %171 = getelementptr %struct.xhci_virt_device, ptr %38, i32 0, i32 4, i32 %60, i32 6
  %172 = getelementptr %struct.xhci_virt_device, ptr %38, i32 0, i32 4, i32 %60, i32 6, i32 1
  br label %173

173:                                              ; preds = %184, %170
  %174 = phi i32 [ %168, %170 ], [ %185, %184 ]
  %175 = phi i32 [ %150, %170 ], [ %186, %184 ]
  %176 = getelementptr %struct.urb_priv, ptr %40, i32 0, i32 2, i32 %175, i32 1
  %177 = load volatile ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, %176
  br i1 %178, label %179, label %184

179:                                              ; preds = %173
  %180 = getelementptr %struct.urb_priv, ptr %40, i32 0, i32 2, i32 %175, i32 3
  store i32 0, ptr %180, align 4
  %181 = load ptr, ptr %172, align 4
  store ptr %176, ptr %172, align 4
  store ptr %171, ptr %176, align 4
  %182 = getelementptr %struct.urb_priv, ptr %40, i32 0, i32 2, i32 %175, i32 1, i32 1
  store ptr %181, ptr %182, align 4
  store volatile ptr %176, ptr %181, align 4
  %183 = load i32, ptr %40, align 4
  br label %184

184:                                              ; preds = %179, %173
  %185 = phi i32 [ %174, %173 ], [ %183, %179 ]
  %186 = add nsw i32 %175, 1
  %187 = icmp slt i32 %186, %185
  br i1 %187, label %173, label %188

188:                                              ; preds = %184, %167
  %189 = getelementptr %struct.xhci_virt_device, ptr %38, i32 0, i32 4, i32 %60, i32 5
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %188
  %194 = tail call ptr @xhci_alloc_command(ptr noundef %11, i1 noundef zeroext false, i32 noundef 2592) #21
  %195 = icmp eq ptr %194, null
  br i1 %195, label %207, label %196

196:                                              ; preds = %193
  %197 = load i32, ptr %189, align 4
  %198 = or i32 %197, 4
  store i32 %198, ptr %189, align 4
  %199 = load volatile i32, ptr @jiffies, align 64
  %200 = add i32 %199, 500
  %201 = getelementptr %struct.xhci_virt_device, ptr %38, i32 0, i32 4, i32 %60, i32 7
  %202 = getelementptr %struct.xhci_virt_device, ptr %38, i32 0, i32 4, i32 %60, i32 7, i32 1
  store i32 %200, ptr %202, align 4
  tail call void @add_timer(ptr noundef %201) #21
  %203 = load ptr, ptr %33, align 4
  %204 = getelementptr inbounds %struct.usb_device, ptr %203, i32 0, i32 43
  %205 = load i32, ptr %204, align 8
  %206 = tail call i32 @xhci_queue_stop_endpoint(ptr noundef %11, ptr noundef nonnull %194, i32 noundef %205, i32 noundef %60, i32 noundef 0) #21
  tail call void @xhci_ring_cmd_db(ptr noundef %11) #21
  br label %207

207:                                              ; preds = %196, %193, %188, %79, %29
  %208 = phi i32 [ %30, %29 ], [ 0, %79 ], [ 0, %188 ], [ 0, %196 ], [ -12, %193 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #21
  br label %212

209:                                              ; preds = %144, %122, %115, %97, %44, %32
  br i1 %42, label %210, label %211

210:                                              ; preds = %209
  tail call void @xhci_urb_free_priv(ptr noundef nonnull %40) #21
  br label %211

211:                                              ; preds = %210, %209
  tail call void @usb_hcd_unlink_urb_from_ep(ptr noundef %0, ptr noundef %1) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #21
  tail call void @usb_hcd_giveback_urb(ptr noundef %0, ptr noundef %1, i32 noundef -108) #21
  br label %212

212:                                              ; preds = %211, %207
  %213 = phi i32 [ %208, %207 ], [ 0, %211 ]
  ret i32 %213
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_map_urb_for_dma(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %11 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 3
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %38, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 4
  %24 = load i16, ptr %23, align 1
  %25 = and i16 %24, 2040
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, 9
  %31 = and i32 %19, 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 18
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %142, label %38

38:                                               ; preds = %34, %27, %22, %17, %9
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 4, i32 21, i32 3, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 549755813888
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %140, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 16
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 4
  %47 = load i16, ptr %46, align 1
  %48 = and i16 %47, 2047
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 18
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %140, label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp ugt i32 %57, 4
  %59 = select i1 %58, i32 14, i32 6
  %60 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %140, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %140

68:                                               ; preds = %84, %63
  %69 = phi ptr [ %86, %84 ], [ %45, %63 ]
  %70 = phi ptr [ %88, %84 ], [ %45, %63 ]
  %71 = phi i32 [ %85, %84 ], [ 0, %63 ]
  %72 = phi i32 [ %87, %84 ], [ 0, %63 ]
  %73 = getelementptr inbounds %struct.scatterlist, ptr %70, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, %71
  %76 = icmp ugt i32 %72, %59
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.scatterlist, ptr %69, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = sub i32 %75, %79
  %81 = icmp ult i32 %80, %49
  br i1 %81, label %91, label %82

82:                                               ; preds = %77
  %83 = tail call ptr @sg_next(ptr noundef %69) #21
  br label %84

84:                                               ; preds = %82, %68
  %85 = phi i32 [ %80, %82 ], [ %75, %68 ]
  %86 = phi ptr [ %83, %82 ], [ %69, %68 ]
  %87 = add nuw i32 %72, 1
  %88 = tail call ptr @sg_next(ptr noundef %70) #21
  %89 = load i32, ptr %50, align 4
  %90 = icmp ult i32 %87, %89
  br i1 %90, label %68, label %140

91:                                               ; preds = %77
  %92 = load i32, ptr %64, align 4
  %93 = and i32 %92, 512
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 1, i32 2
  %96 = load i32, ptr %60, align 4
  %97 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %98 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %96, i32 noundef 2848) #23
  %99 = load i32, ptr %64, align 4
  %100 = and i32 %99, 512
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %91
  %103 = load ptr, ptr %44, align 4
  %104 = load i32, ptr %50, align 4
  %105 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %103, i32 noundef %104, ptr noundef %98, i32 noundef %96, i32 noundef 0) #21
  br label %106

106:                                              ; preds = %102, %91
  %107 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  store ptr %98, ptr %107, align 4
  %108 = load ptr, ptr %97, align 4
  %109 = load i32, ptr %60, align 4
  %110 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %98) #21
  %111 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %112 = xor i1 %111, true
  %113 = select i1 %110, i1 %112, i1 false
  br i1 %113, label %114, label %123, !prof !97

114:                                              ; preds = %106
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %115 = tail call ptr @dev_driver_string(ptr noundef %108) #21
  %116 = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load ptr, ptr %108, align 4
  br label %121

121:                                              ; preds = %119, %114
  %122 = phi ptr [ %120, %119 ], [ %117, %114 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.104, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.105, ptr noundef %115, ptr noundef %122) #21
  br label %123

123:                                              ; preds = %121, %106
  br i1 %110, label %124, label %126

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  store i32 -1, ptr %125, align 4
  br label %136

126:                                              ; preds = %123
  %127 = load ptr, ptr @mem_map, align 4
  %128 = ptrtoint ptr %98 to i32
  %129 = add i32 %128, 1073741824
  %130 = lshr i32 %129, 12
  %131 = getelementptr %struct.page, ptr %127, i32 %130
  %132 = and i32 %128, 4032
  %133 = tail call i32 @dma_map_page_attrs(ptr noundef %108, ptr noundef %131, i32 noundef %132, i32 noundef %109, i32 noundef %95, i32 noundef 0) #21
  %134 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  store i32 %133, ptr %134, align 4
  %135 = icmp eq i32 %133, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %126, %124
  tail call void @kfree(ptr noundef %98) #21
  br label %142

137:                                              ; preds = %126
  %138 = load i32, ptr %64, align 4
  %139 = or i32 %138, 65536
  store i32 %139, ptr %64, align 4
  br label %142

140:                                              ; preds = %84, %63, %53, %43, %38
  %141 = tail call i32 @usb_hcd_map_urb_for_dma(ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  br label %142

142:                                              ; preds = %140, %137, %136, %34
  %143 = phi i32 [ %141, %140 ], [ -11, %136 ], [ 0, %137 ], [ 0, %34 ]
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xhci_unmap_urb_for_dma(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 4, i32 21, i32 3, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 549755813888
  %21 = icmp eq i64 %20, 0
  %22 = select i1 %21, i1 true, i1 %17
  br i1 %22, label %51, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %15, 512
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 1, i32 2
  %29 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 15
  %32 = load i32, ptr %31, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %30, i32 noundef %32, i32 noundef %25, i32 noundef %28, i32 noundef 0) #21
  %33 = load i32, ptr %14, align 4
  %34 = and i32 %33, 512
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 16
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %10, align 4
  %40 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @sg_pcopy_from_buffer(ptr noundef %38, i32 noundef %39, ptr noundef %41, i32 noundef %25, i32 noundef 0) #21
  %43 = icmp eq i32 %42, %25
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  store i32 %42, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %36, %23
  %47 = load i32, ptr %14, align 4
  %48 = and i32 %47, -65537
  store i32 %48, ptr %14, align 4
  %49 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %50 = load ptr, ptr %49, align 4
  tail call void @kfree(ptr noundef %50) #21
  store ptr null, ptr %49, align 4
  br label %52

51:                                               ; preds = %13, %8
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %0, ptr noundef %1) #21
  br label %52

52:                                               ; preds = %51, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xhci_endpoint_disable(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 1, i32 0, i32 10
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #21
  %14 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %54, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  br label %19

19:                                               ; preds = %49, %17
  %20 = phi ptr [ %15, %17 ], [ %52, %49 ]
  %21 = phi i32 [ %13, %17 ], [ %51, %49 ]
  %22 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 43
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %19
  %26 = getelementptr %struct.xhci_hcd, ptr %10, i32 0, i32 42, i32 %23
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %25
  %30 = load i8, ptr %11, align 1
  %31 = and i8 %30, 3
  %32 = icmp eq i8 %31, 0
  %33 = load i8, ptr %18, align 1
  %34 = shl i8 %33, 1
  %35 = and i8 %34, 30
  %36 = zext i8 %35 to i32
  %37 = lshr i8 %33, 7
  %38 = or i8 %35, %37
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %39, -1
  %41 = select i1 %32, i32 %36, i32 %40
  %42 = getelementptr %struct.xhci_virt_device, ptr %27, i32 0, i32 4, i32 %41
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %29
  %45 = getelementptr %struct.xhci_virt_device, ptr %27, i32 0, i32 4, i32 %41, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %21) #21
  %50 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #21
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #21
  %52 = load ptr, ptr %14, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %19

54:                                               ; preds = %49, %44, %29, %25, %19, %8
  %55 = phi i32 [ %13, %8 ], [ %21, %44 ], [ %21, %29 ], [ %21, %25 ], [ %51, %49 ], [ %21, %19 ]
  store ptr null, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %55) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xhci_endpoint_reset(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %124, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 43
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr %struct.xhci_hcd, ptr %10, i32 0, i32 42, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ne i32 %16, 0
  %20 = icmp ne ptr %18, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %124

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 3
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = shl i8 %28, 1
  %30 = and i8 %29, 30
  %31 = zext i8 %30 to i32
  %32 = lshr i8 %28, 7
  %33 = or i8 %30, %32
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, -1
  %36 = select i1 %26, i32 %31, i32 %35
  %37 = getelementptr %struct.xhci_virt_device, ptr %18, i32 0, i32 4, i32 %36
  %38 = icmp eq ptr %37, null
  br i1 %38, label %124, label %39

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 1, i32 0, i32 10
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #21
  %42 = getelementptr %struct.xhci_virt_device, ptr %18, i32 0, i32 4, i32 %36, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 64
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = and i32 %43, -65
  br label %119

48:                                               ; preds = %39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #21
  %49 = load i8, ptr %23, align 1
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %124, label %52

52:                                               ; preds = %48
  %53 = load i8, ptr %27, align 1
  %54 = shl i8 %53, 1
  %55 = and i8 %54, 30
  %56 = lshr i8 %53, 7
  %57 = or i8 %55, %56
  %58 = zext i8 %57 to i32
  %59 = shl nuw i32 1, %58
  %60 = icmp ugt i8 %57, 1
  br i1 %60, label %61, label %124

61:                                               ; preds = %52
  %62 = tail call ptr @xhci_alloc_command(ptr noundef %10, i1 noundef zeroext true, i32 noundef 2048) #21
  %63 = icmp eq ptr %62, null
  br i1 %63, label %124, label %64

64:                                               ; preds = %61
  %65 = tail call ptr @xhci_alloc_command_with_ctx(ptr noundef %10, i1 noundef zeroext true, i32 noundef 2048) #21
  %66 = icmp eq ptr %65, null
  br i1 %66, label %112, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #21
  %69 = load i32, ptr %42, align 4
  %70 = or i32 %69, 128
  store i32 %70, ptr %42, align 4
  %71 = getelementptr %struct.xhci_virt_device, ptr %18, i32 0, i32 4, i32 %36, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.xhci_ring, ptr %72, i32 0, i32 6
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %78, label %76

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.106) #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %68) #21
  tail call void @xhci_free_command(ptr noundef %10, ptr noundef nonnull %65) #21
  br label %112

78:                                               ; preds = %67
  %79 = load i32, ptr %15, align 8
  %80 = tail call i32 @xhci_queue_stop_endpoint(ptr noundef %10, ptr noundef nonnull %62, i32 noundef %79, i32 noundef %36, i32 noundef 0) #21
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %68) #21
  tail call void @xhci_free_command(ptr noundef %10, ptr noundef nonnull %65) #21
  br label %112

83:                                               ; preds = %78
  tail call void @xhci_ring_cmd_db(ptr noundef %10) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %68) #21
  %84 = getelementptr inbounds %struct.xhci_command, ptr %62, i32 0, i32 3
  %85 = load ptr, ptr %84, align 4
  tail call void @wait_for_completion(ptr noundef %85) #21
  %86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #21
  %87 = load ptr, ptr %65, align 4
  %88 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %87) #21
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %86) #21
  tail call void @xhci_free_command(ptr noundef %10, ptr noundef nonnull %65) #21
  %91 = load ptr, ptr %10, align 8
  %92 = load ptr, ptr %91, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_endpoint_reset) #22
  br label %112

93:                                               ; preds = %83
  %94 = load ptr, ptr %65, align 4
  %95 = getelementptr inbounds %struct.xhci_virt_device, ptr %18, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %88, i32 0, i32 1
  store i32 %59, ptr %97, align 4
  store i32 %59, ptr %88, align 4
  tail call void @xhci_slot_copy(ptr noundef %10, ptr noundef %94, ptr noundef %96) #21
  %98 = load i32, ptr %97, align 4
  %99 = or i32 %98, 1
  store i32 %99, ptr %97, align 4
  %100 = load ptr, ptr %65, align 4
  %101 = load ptr, ptr %95, align 4
  tail call void @xhci_endpoint_copy(ptr noundef %10, ptr noundef %100, ptr noundef %101, i32 noundef %36) #21
  %102 = load ptr, ptr %65, align 4
  %103 = getelementptr inbounds %struct.xhci_container_ctx, ptr %102, i32 0, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = load i32, ptr %15, align 8
  %106 = tail call i32 @xhci_queue_configure_endpoint(ptr noundef %10, ptr noundef nonnull %65, i32 noundef %104, i32 noundef %105, i1 noundef zeroext false) #21
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %93
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %86) #21
  tail call void @xhci_free_command(ptr noundef %10, ptr noundef nonnull %65) #21
  br label %112

109:                                              ; preds = %93
  tail call void @xhci_ring_cmd_db(ptr noundef %10) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %86) #21
  %110 = getelementptr inbounds %struct.xhci_command, ptr %65, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  tail call void @wait_for_completion(ptr noundef %111) #21
  tail call void @xhci_free_command(ptr noundef %10, ptr noundef nonnull %65) #21
  br label %112

112:                                              ; preds = %109, %108, %90, %82, %76, %64
  tail call void @xhci_free_command(ptr noundef %10, ptr noundef nonnull %62) #21
  %113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #21
  %114 = load i32, ptr %42, align 4
  %115 = and i32 %114, 128
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = and i32 %114, -129
  br label %119

119:                                              ; preds = %117, %46
  %120 = phi i32 [ %118, %117 ], [ %47, %46 ]
  %121 = phi i32 [ %113, %117 ], [ %41, %46 ]
  store i32 %120, ptr %42, align 4
  br label %122

122:                                              ; preds = %119, %112
  %123 = phi i32 [ %113, %112 ], [ %121, %119 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %123) #21
  br label %124

124:                                              ; preds = %122, %61, %52, %48, %22, %14, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_hub_status_data(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_hub_control(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_bus_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_bus_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_get_resuming_ports(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xhci_clear_tt_buffer_complete(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 1, i32 0, i32 10
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #21
  %13 = getelementptr inbounds %struct.usb_host_endpoint, ptr %1, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 43
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 3
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = shl i8 %22, 1
  %24 = and i8 %23, 30
  %25 = zext i8 %24 to i32
  %26 = lshr i8 %22, 7
  %27 = or i8 %24, %26
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %28, -1
  %30 = select i1 %20, i32 %25, i32 %29
  %31 = getelementptr %struct.xhci_hcd, ptr %10, i32 0, i32 42, i32 %16
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr %struct.xhci_virt_device, ptr %32, i32 0, i32 4, i32 %30, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -257
  store i32 %35, ptr %33, align 4
  tail call void @xhci_ring_doorbell_for_active_rings(ptr noundef %10, i32 noundef %16, i32 noundef %30) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xhci_free_dev(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 4, i32 21, i32 3, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 128
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !113
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #21, !srcloc !87
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 -1, ptr elementtype(i32) %17) #21, !srcloc !114
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #21, !srcloc !115
  br label %22

22:                                               ; preds = %21, %15, %8
  %23 = icmp ne ptr %0, null
  %24 = icmp ne ptr %1, null
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi ptr [ %35, %33 ], [ %0, %30 ]
  %38 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.usb_hcd, ptr %37, i32 0, i32 29
  %43 = getelementptr %struct.xhci_hcd, ptr %42, i32 0, i32 42, i32 %39
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.xhci_virt_device, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.usb_hcd, ptr %37, i32 4, i32 20, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 1, i32 -19
  br label %56

56:                                               ; preds = %50, %46, %41, %36, %26, %22
  %57 = phi i32 [ -22, %22 ], [ 0, %26 ], [ -22, %41 ], [ -22, %36 ], [ -22, %46 ], [ %55, %50 ]
  %58 = icmp slt i32 %57, 1
  %59 = icmp ne i32 %57, -19
  %60 = and i1 %58, %59
  br i1 %60, label %99, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr %struct.xhci_hcd, ptr %10, i32 0, i32 42, i32 %63
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.xhci_virt_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = tail call ptr @xhci_get_slot_ctx(ptr noundef %10, ptr noundef %67) #21
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_free_dev, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %61
  %72 = tail call ptr @llvm.thread.pointer() #21
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !116
  %83 = tail call i32 @__traceiter_xhci_free_dev(ptr noundef null, ptr noundef %68) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !117
  br label %84

84:                                               ; preds = %82, %71, %61
  br label %85

85:                                               ; preds = %85, %84
  %86 = phi i32 [ %92, %85 ], [ 0, %84 ]
  %87 = getelementptr %struct.xhci_virt_device, ptr %65, i32 0, i32 4, i32 %86, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, -5
  store i32 %89, ptr %87, align 4
  %90 = getelementptr %struct.xhci_virt_device, ptr %65, i32 0, i32 4, i32 %86, i32 7
  %91 = tail call i32 @del_timer_sync(ptr noundef %90) #21
  %92 = add nuw nsw i32 %86, 1
  %93 = icmp eq i32 %92, 31
  br i1 %93, label %94, label %85

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.xhci_virt_device, ptr %65, i32 0, i32 1
  store ptr null, ptr %95, align 4
  %96 = load i32, ptr %62, align 8
  %97 = tail call i32 @xhci_disable_slot(ptr noundef %10, i32 noundef %96)
  %98 = load i32, ptr %62, align 8
  tail call void @xhci_free_virt_device(ptr noundef %10, i32 noundef %98) #21
  br label %99

99:                                               ; preds = %94, %56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_alloc_streams(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %373, label %8

8:                                                ; preds = %6
  %9 = add i32 %4, 1
  %10 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %14, %12 ], [ %0, %8 ]
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %16, i32 0, i32 29
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %16, i32 4, i32 21, i32 3, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 524288
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %373

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.usb_hcd, ptr %16, i32 1, i32 0, i32 9, i32 3
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 12
  %26 = and i32 %25, 15
  %27 = shl nuw nsw i32 2, %26
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %373, label %29

29:                                               ; preds = %22
  %30 = tail call ptr @xhci_alloc_command_with_ctx(ptr noundef %17, i1 noundef zeroext true, i32 noundef %5) #21
  %31 = icmp eq ptr %30, null
  br i1 %31, label %373, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 4
  %34 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %33) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load ptr, ptr %17, align 8
  %38 = load ptr, ptr %37, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_alloc_streams) #22
  tail call void @xhci_free_command(ptr noundef %17, ptr noundef nonnull %30) #21
  br label %373

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.usb_hcd, ptr %16, i32 1, i32 0, i32 10
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #21
  %42 = icmp eq i32 %3, 0
  br i1 %42, label %174, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %45 = icmp ne ptr %1, null
  %46 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %47 = load i32, ptr %44, align 8
  br label %48

48:                                               ; preds = %155, %43
  %49 = phi i32 [ %47, %43 ], [ %71, %155 ]
  %50 = phi i32 [ %9, %43 ], [ %166, %155 ]
  %51 = phi i32 [ 0, %43 ], [ %167, %155 ]
  %52 = phi i32 [ 0, %43 ], [ %168, %155 ]
  %53 = getelementptr ptr, ptr %2, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %170, label %56

56:                                               ; preds = %48
  %57 = load ptr, ptr %17, align 8
  %58 = icmp ne ptr %57, null
  %59 = and i1 %45, %58
  br i1 %59, label %60, label %170

60:                                               ; preds = %56
  %61 = load ptr, ptr %46, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %170, label %63

63:                                               ; preds = %60
  %64 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %57) #21
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.usb_hcd, ptr %57, i32 0, i32 25
  %68 = load ptr, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi ptr [ %68, %66 ], [ %57, %63 ]
  %71 = load i32, ptr %44, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %170, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.usb_hcd, ptr %70, i32 0, i32 29
  %75 = getelementptr %struct.xhci_hcd, ptr %74, i32 0, i32 42, i32 %71
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %170, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.xhci_virt_device, ptr %76, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %1
  br i1 %81, label %82, label %170

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.usb_hcd, ptr %70, i32 4, i32 20, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %170

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.usb_host_endpoint, ptr %54, i32 0, i32 1, i32 3
  %89 = load i8, ptr %88, align 1
  %90 = and i8 %89, 31
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %113, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %54, i32 0, i32 3
  %94 = load i8, ptr %93, align 1
  %95 = and i8 %94, 3
  %96 = icmp eq i8 %95, 0
  %97 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %54, i32 0, i32 2
  %98 = load i8, ptr %97, align 1
  %99 = shl i8 %98, 1
  %100 = and i8 %99, 30
  %101 = zext i8 %100 to i32
  %102 = lshr i8 %98, 7
  %103 = or i8 %100, %102
  %104 = zext i8 %103 to i32
  %105 = add nsw i32 %104, -1
  %106 = select i1 %96, i32 %101, i32 %105
  %107 = getelementptr %struct.xhci_hcd, ptr %17, i32 0, i32 42, i32 %49
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr %struct.xhci_virt_device, ptr %108, i32 0, i32 4, i32 %106, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 24
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %125, label %119

113:                                              ; preds = %87
  %114 = load ptr, ptr %17, align 8
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %54, i32 0, i32 2
  %117 = load i8, ptr %116, align 2
  %118 = zext i8 %117 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %115, ptr noundef nonnull @.str.108, i32 noundef %118) #22
  br label %170

119:                                              ; preds = %92
  %120 = load ptr, ptr %17, align 8
  %121 = load ptr, ptr %120, align 8
  %122 = zext i8 %98 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %121, ptr noundef nonnull @.str.109, i32 noundef %122) #22
  %123 = load ptr, ptr %17, align 8
  %124 = load ptr, ptr %123, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %124, ptr noundef nonnull @.str.110) #22
  br label %170

125:                                              ; preds = %92
  %126 = getelementptr %struct.xhci_virt_device, ptr %108, i32 0, i32 4, i32 %106, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.xhci_ring, ptr %127, i32 0, i32 6
  %129 = load volatile ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, %128
  br i1 %130, label %135, label %131

131:                                              ; preds = %125
  %132 = load ptr, ptr %17, align 8
  %133 = load ptr, ptr %132, align 8
  %134 = zext i8 %98 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %133, ptr noundef nonnull @.str.111, i32 noundef %134) #22
  br label %170

135:                                              ; preds = %125
  %136 = load ptr, ptr %53, align 4
  %137 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %136, i32 0, i32 3
  %138 = load i8, ptr %137, align 1
  %139 = and i8 %138, 3
  %140 = icmp eq i8 %139, 0
  %141 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %136, i32 0, i32 2
  %142 = load i8, ptr %141, align 1
  %143 = shl i8 %142, 1
  %144 = and i8 %143, 30
  %145 = zext i8 %144 to i32
  %146 = lshr i8 %142, 7
  %147 = or i8 %144, %146
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %148, -1
  %150 = select i1 %140, i32 %145, i32 %149
  %151 = add nsw i32 %150, 1
  %152 = shl nuw i32 1, %151
  %153 = and i32 %152, %51
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %135
  %156 = getelementptr inbounds %struct.usb_host_endpoint, ptr %136, i32 0, i32 1, i32 3
  %157 = load i8, ptr %156, align 1
  %158 = and i8 %157, 31
  %159 = icmp eq i8 %158, 0
  %160 = zext i8 %158 to i32
  %161 = shl nuw i32 1, %160
  %162 = select i1 %159, i32 0, i32 %161
  %163 = add i32 %50, -1
  %164 = icmp ult i32 %162, %163
  %165 = add nuw i32 %162, 1
  %166 = select i1 %164, i32 %165, i32 %50
  %167 = or i32 %152, %51
  %168 = add nuw i32 %52, 1
  %169 = icmp eq i32 %168, %3
  br i1 %169, label %172, label %48

170:                                              ; preds = %135, %131, %119, %113, %82, %78, %73, %69, %60, %56, %48
  %171 = phi i32 [ -22, %113 ], [ -22, %119 ], [ -22, %131 ], [ -22, %135 ], [ -22, %48 ], [ -22, %60 ], [ -22, %56 ], [ -22, %73 ], [ -22, %69 ], [ -22, %78 ], [ -19, %82 ]
  tail call void @xhci_free_command(ptr noundef %17, ptr noundef nonnull %30) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #21
  br label %373

172:                                              ; preds = %155
  %173 = icmp ult i32 %166, 2
  br i1 %173, label %181, label %184

174:                                              ; preds = %39
  %175 = icmp ult i32 %9, 2
  br i1 %175, label %181, label %176

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %178 = load i32, ptr %177, align 8
  %179 = getelementptr %struct.xhci_hcd, ptr %17, i32 0, i32 42, i32 %178
  %180 = load ptr, ptr %179, align 4
  br label %212

181:                                              ; preds = %174, %172
  %182 = load ptr, ptr %17, align 8
  %183 = load ptr, ptr %182, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %183, ptr noundef nonnull @.str.107) #22
  tail call void @xhci_free_command(ptr noundef %17, ptr noundef nonnull %30) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #21
  br label %373

184:                                              ; preds = %172
  %185 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %186 = load i32, ptr %185, align 8
  %187 = getelementptr %struct.xhci_hcd, ptr %17, i32 0, i32 42, i32 %186
  %188 = load ptr, ptr %187, align 4
  br i1 %42, label %212, label %189

189:                                              ; preds = %189, %184
  %190 = phi i32 [ %210, %189 ], [ 0, %184 ]
  %191 = getelementptr ptr, ptr %2, i32 %190
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %192, i32 0, i32 3
  %194 = load i8, ptr %193, align 1
  %195 = and i8 %194, 3
  %196 = icmp eq i8 %195, 0
  %197 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %192, i32 0, i32 2
  %198 = load i8, ptr %197, align 1
  %199 = shl i8 %198, 1
  %200 = and i8 %199, 30
  %201 = zext i8 %200 to i32
  %202 = lshr i8 %198, 7
  %203 = or i8 %200, %202
  %204 = zext i8 %203 to i32
  %205 = add nsw i32 %204, -1
  %206 = select i1 %196, i32 %201, i32 %205
  %207 = getelementptr %struct.xhci_virt_device, ptr %188, i32 0, i32 4, i32 %206, i32 5
  %208 = load i32, ptr %207, align 4
  %209 = or i32 %208, 8
  store i32 %209, ptr %207, align 4
  %210 = add nuw i32 %190, 1
  %211 = icmp eq i32 %210, %3
  br i1 %211, label %212, label %189

212:                                              ; preds = %189, %184, %176
  %213 = phi ptr [ %180, %176 ], [ %188, %184 ], [ %188, %189 ]
  %214 = phi i32 [ %9, %176 ], [ %166, %184 ], [ %166, %189 ]
  %215 = phi i32 [ 0, %176 ], [ %167, %184 ], [ %167, %189 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #21
  %216 = add i32 %214, -1
  %217 = icmp eq i32 %216, 0
  %218 = tail call i32 @llvm.ctlz.i32(i32 %216, i1 false) #21, !range !75
  %219 = sub nuw nsw i32 32, %218
  %220 = shl nuw i32 1, %219
  %221 = select i1 %217, i32 1, i32 %220
  %222 = load i32, ptr %23, align 8
  %223 = lshr i32 %222, 12
  %224 = and i32 %223, 15
  %225 = shl nuw nsw i32 2, %224
  %226 = icmp ugt i32 %221, %225
  %227 = select i1 %226, i32 %225, i32 %214
  %228 = tail call i32 @llvm.umin.i32(i32 %221, i32 %225)
  br i1 %42, label %286, label %235

229:                                              ; preds = %235
  %230 = add nuw i32 %236, 1
  %231 = icmp eq i32 %230, %3
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  br i1 %42, label %286, label %233

233:                                              ; preds = %232
  %234 = getelementptr inbounds %struct.xhci_virt_device, ptr %213, i32 0, i32 2
  br label %260

235:                                              ; preds = %229, %212
  %236 = phi i32 [ %230, %229 ], [ 0, %212 ]
  %237 = getelementptr ptr, ptr %2, i32 %236
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %238, i32 0, i32 3
  %240 = load i8, ptr %239, align 1
  %241 = and i8 %240, 3
  %242 = icmp eq i8 %241, 0
  %243 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %238, i32 0, i32 2
  %244 = load i8, ptr %243, align 1
  %245 = shl i8 %244, 1
  %246 = and i8 %245, 30
  %247 = zext i8 %246 to i32
  %248 = lshr i8 %244, 7
  %249 = or i8 %246, %248
  %250 = zext i8 %249 to i32
  %251 = add nsw i32 %250, -1
  %252 = select i1 %242, i32 %247, i32 %251
  %253 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %238, i32 0, i32 4
  %254 = load i16, ptr %253, align 1
  %255 = and i16 %254, 2047
  %256 = zext i16 %255 to i32
  %257 = tail call ptr @xhci_alloc_stream_info(ptr noundef %17, i32 noundef %228, i32 noundef %227, i32 noundef %256, i32 noundef %5) #21
  %258 = getelementptr %struct.xhci_virt_device, ptr %213, i32 0, i32 4, i32 %252, i32 3
  store ptr %257, ptr %258, align 4
  %259 = icmp eq ptr %257, null
  br i1 %259, label %345, label %229

260:                                              ; preds = %260, %233
  %261 = phi i32 [ 0, %233 ], [ %284, %260 ]
  %262 = getelementptr ptr, ptr %2, i32 %261
  %263 = load ptr, ptr %262, align 4
  %264 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %263, i32 0, i32 3
  %265 = load i8, ptr %264, align 1
  %266 = and i8 %265, 3
  %267 = icmp eq i8 %266, 0
  %268 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %263, i32 0, i32 2
  %269 = load i8, ptr %268, align 1
  %270 = shl i8 %269, 1
  %271 = and i8 %270, 30
  %272 = zext i8 %271 to i32
  %273 = lshr i8 %269, 7
  %274 = or i8 %271, %273
  %275 = zext i8 %274 to i32
  %276 = add nsw i32 %275, -1
  %277 = select i1 %267, i32 %272, i32 %276
  %278 = load ptr, ptr %30, align 4
  %279 = tail call ptr @xhci_get_ep_ctx(ptr noundef %17, ptr noundef %278, i32 noundef %277) #21
  %280 = load ptr, ptr %30, align 4
  %281 = load ptr, ptr %234, align 4
  tail call void @xhci_endpoint_copy(ptr noundef %17, ptr noundef %280, ptr noundef %281, i32 noundef %277) #21
  %282 = getelementptr %struct.xhci_virt_device, ptr %213, i32 0, i32 4, i32 %277, i32 3
  %283 = load ptr, ptr %282, align 4
  tail call void @xhci_setup_streams_ep_input_ctx(ptr noundef %17, ptr noundef %279, ptr noundef %283) #21
  %284 = add nuw i32 %261, 1
  %285 = icmp eq i32 %284, %3
  br i1 %285, label %286, label %260

286:                                              ; preds = %260, %232, %212
  %287 = load ptr, ptr %30, align 4
  %288 = getelementptr inbounds %struct.xhci_virt_device, ptr %213, i32 0, i32 2
  %289 = load ptr, ptr %288, align 4
  %290 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %34, i32 0, i32 1
  store i32 %215, ptr %290, align 4
  store i32 %215, ptr %34, align 4
  tail call void @xhci_slot_copy(ptr noundef %17, ptr noundef %287, ptr noundef %289) #21
  %291 = load i32, ptr %290, align 4
  %292 = or i32 %291, 1
  store i32 %292, ptr %290, align 4
  %293 = tail call fastcc i32 @xhci_configure_endpoint(ptr noundef %17, ptr noundef %1, ptr noundef nonnull %30, i1 noundef zeroext false, i1 noundef zeroext false)
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %345, label %295

295:                                              ; preds = %286
  %296 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #21
  br i1 %42, label %342, label %297

297:                                              ; preds = %297, %295
  %298 = phi i32 [ %319, %297 ], [ 0, %295 ]
  %299 = getelementptr ptr, ptr %2, i32 %298
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %300, i32 0, i32 3
  %302 = load i8, ptr %301, align 1
  %303 = and i8 %302, 3
  %304 = icmp eq i8 %303, 0
  %305 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %300, i32 0, i32 2
  %306 = load i8, ptr %305, align 1
  %307 = shl i8 %306, 1
  %308 = and i8 %307, 30
  %309 = zext i8 %308 to i32
  %310 = lshr i8 %306, 7
  %311 = or i8 %308, %310
  %312 = zext i8 %311 to i32
  %313 = add nsw i32 %312, -1
  %314 = select i1 %304, i32 %309, i32 %313
  %315 = getelementptr %struct.xhci_virt_device, ptr %213, i32 0, i32 4, i32 %314, i32 5
  %316 = load i32, ptr %315, align 4
  %317 = and i32 %316, -25
  %318 = or i32 %317, 16
  store i32 %318, ptr %315, align 4
  %319 = add nuw i32 %298, 1
  %320 = icmp eq i32 %319, %3
  br i1 %320, label %321, label %297

321:                                              ; preds = %297
  tail call void @xhci_free_command(ptr noundef %17, ptr noundef nonnull %30) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %296) #21
  br i1 %42, label %343, label %322

322:                                              ; preds = %322, %321
  %323 = phi i32 [ %340, %322 ], [ 0, %321 ]
  %324 = getelementptr ptr, ptr %2, i32 %323
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %325, i32 0, i32 3
  %327 = load i8, ptr %326, align 1
  %328 = and i8 %327, 3
  %329 = icmp eq i8 %328, 0
  %330 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %325, i32 0, i32 2
  %331 = load i8, ptr %330, align 1
  %332 = shl i8 %331, 1
  %333 = and i8 %332, 30
  %334 = zext i8 %333 to i32
  %335 = lshr i8 %331, 7
  %336 = or i8 %333, %335
  %337 = zext i8 %336 to i32
  %338 = add nsw i32 %337, -1
  %339 = select i1 %329, i32 %334, i32 %338
  tail call void @xhci_debugfs_create_stream_files(ptr noundef %17, ptr noundef %213, i32 noundef %339) #21
  %340 = add nuw i32 %323, 1
  %341 = icmp eq i32 %340, %3
  br i1 %341, label %343, label %322

342:                                              ; preds = %295
  tail call void @xhci_free_command(ptr noundef %17, ptr noundef nonnull %30) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %296) #21
  br label %343

343:                                              ; preds = %342, %322, %321
  %344 = add i32 %227, -1
  br label %373

345:                                              ; preds = %286, %235
  br i1 %42, label %372, label %346

346:                                              ; preds = %346, %345
  %347 = phi i32 [ %370, %346 ], [ 0, %345 ]
  %348 = getelementptr ptr, ptr %2, i32 %347
  %349 = load ptr, ptr %348, align 4
  %350 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %349, i32 0, i32 3
  %351 = load i8, ptr %350, align 1
  %352 = and i8 %351, 3
  %353 = icmp eq i8 %352, 0
  %354 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %349, i32 0, i32 2
  %355 = load i8, ptr %354, align 1
  %356 = shl i8 %355, 1
  %357 = and i8 %356, 30
  %358 = zext i8 %357 to i32
  %359 = lshr i8 %355, 7
  %360 = or i8 %357, %359
  %361 = zext i8 %360 to i32
  %362 = add nsw i32 %361, -1
  %363 = select i1 %353, i32 %358, i32 %362
  %364 = getelementptr %struct.xhci_virt_device, ptr %213, i32 0, i32 4, i32 %363, i32 3
  %365 = load ptr, ptr %364, align 4
  tail call void @xhci_free_stream_info(ptr noundef %17, ptr noundef %365) #21
  store ptr null, ptr %364, align 4
  %366 = getelementptr %struct.xhci_virt_device, ptr %213, i32 0, i32 4, i32 %363, i32 5
  %367 = load i32, ptr %366, align 4
  %368 = and i32 %367, -25
  store i32 %368, ptr %366, align 4
  %369 = load ptr, ptr %348, align 4
  tail call void @xhci_endpoint_zero(ptr noundef %17, ptr noundef %213, ptr noundef %369) #21
  %370 = add nuw i32 %347, 1
  %371 = icmp eq i32 %370, %3
  br i1 %371, label %372, label %346

372:                                              ; preds = %346, %345
  tail call void @xhci_free_command(ptr noundef %17, ptr noundef nonnull %30) #21
  br label %373

373:                                              ; preds = %372, %343, %181, %170, %36, %29, %22, %15, %6
  %374 = phi i32 [ %171, %170 ], [ -22, %181 ], [ -12, %372 ], [ %344, %343 ], [ -12, %36 ], [ -22, %6 ], [ -38, %22 ], [ -38, %15 ], [ -12, %29 ]
  ret i32 %374
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_free_streams(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi ptr [ %10, %8 ], [ %0, %5 ]
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 0, i32 29
  %14 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr %struct.xhci_hcd, ptr %13, i32 0, i32 42, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 1, i32 0, i32 10
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #21
  %20 = load i32, ptr %14, align 8
  %21 = getelementptr %struct.xhci_hcd, ptr %13, i32 0, i32 42, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ne ptr %22, null
  %24 = icmp ne i32 %3, 0
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %68

26:                                               ; preds = %62, %11
  %27 = phi i32 [ %66, %62 ], [ 0, %11 ]
  %28 = phi i32 [ %65, %62 ], [ 0, %11 ]
  %29 = getelementptr ptr, ptr %2, i32 %27
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %30, i32 0, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 3
  %34 = icmp eq i8 %33, 0
  %35 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %30, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = shl i8 %36, 1
  %38 = and i8 %37, 30
  %39 = zext i8 %38 to i32
  %40 = lshr i8 %36, 7
  %41 = or i8 %38, %40
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %42, -1
  %44 = select i1 %34, i32 %39, i32 %43
  %45 = getelementptr %struct.xhci_virt_device, ptr %22, i32 0, i32 4, i32 %44, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %26
  %50 = load ptr, ptr %13, align 8
  %51 = load ptr, ptr %50, align 8
  %52 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.112, i32 noundef %52) #22
  br label %68

53:                                               ; preds = %26
  %54 = and i32 %46, 24
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load ptr, ptr %13, align 8
  %58 = load ptr, ptr %57, align 8
  %59 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.113, i32 noundef %59) #22
  %60 = load ptr, ptr %13, align 8
  %61 = load ptr, ptr %60, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.114) #22
  br label %68

62:                                               ; preds = %53
  %63 = add nsw i32 %44, 1
  %64 = shl nuw i32 1, %63
  %65 = or i32 %64, %28
  %66 = add nuw i32 %27, 1
  %67 = icmp eq i32 %66, %3
  br i1 %67, label %69, label %26

68:                                               ; preds = %56, %49, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #21
  br label %166

69:                                               ; preds = %62
  %70 = load ptr, ptr %2, align 4
  %71 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %70, i32 0, i32 3
  %72 = load i8, ptr %71, align 1
  %73 = and i8 %72, 3
  %74 = icmp eq i8 %73, 0
  %75 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %70, i32 0, i32 2
  %76 = load i8, ptr %75, align 1
  %77 = shl i8 %76, 1
  %78 = and i8 %77, 30
  %79 = zext i8 %78 to i32
  %80 = lshr i8 %76, 7
  %81 = or i8 %78, %80
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %82, -1
  %84 = select i1 %74, i32 %79, i32 %83
  %85 = getelementptr %struct.xhci_virt_device, ptr %17, i32 0, i32 4, i32 %84, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.xhci_stream_info, ptr %86, i32 0, i32 6
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %89) #21
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %69
  %93 = getelementptr inbounds %struct.xhci_virt_device, ptr %17, i32 0, i32 2
  br label %97

94:                                               ; preds = %69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #21
  %95 = load ptr, ptr %13, align 8
  %96 = load ptr, ptr %95, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %96, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_free_streams) #22
  br label %166

97:                                               ; preds = %97, %92
  %98 = phi i32 [ 0, %92 ], [ %126, %97 ]
  %99 = getelementptr ptr, ptr %2, i32 %98
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %100, i32 0, i32 3
  %102 = load i8, ptr %101, align 1
  %103 = and i8 %102, 3
  %104 = icmp eq i8 %103, 0
  %105 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %100, i32 0, i32 2
  %106 = load i8, ptr %105, align 1
  %107 = shl i8 %106, 1
  %108 = and i8 %107, 30
  %109 = zext i8 %108 to i32
  %110 = lshr i8 %106, 7
  %111 = or i8 %108, %110
  %112 = zext i8 %111 to i32
  %113 = add nsw i32 %112, -1
  %114 = select i1 %104, i32 %109, i32 %113
  %115 = load ptr, ptr %88, align 4
  %116 = tail call ptr @xhci_get_ep_ctx(ptr noundef %13, ptr noundef %115, i32 noundef %114) #21
  %117 = load i32, ptr %14, align 8
  %118 = getelementptr %struct.xhci_hcd, ptr %13, i32 0, i32 42, i32 %117
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr %struct.xhci_virt_device, ptr %119, i32 0, i32 4, i32 %114, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = or i32 %121, 32
  store i32 %122, ptr %120, align 4
  %123 = load ptr, ptr %88, align 4
  %124 = load ptr, ptr %93, align 4
  tail call void @xhci_endpoint_copy(ptr noundef %13, ptr noundef %123, ptr noundef %124, i32 noundef %114) #21
  %125 = getelementptr %struct.xhci_virt_device, ptr %17, i32 0, i32 4, i32 %114
  tail call void @xhci_setup_no_streams_ep_input_ctx(ptr noundef %116, ptr noundef %125) #21
  %126 = add nuw i32 %98, 1
  %127 = icmp eq i32 %126, %3
  br i1 %127, label %128, label %97

128:                                              ; preds = %97
  %129 = load ptr, ptr %88, align 4
  %130 = getelementptr inbounds %struct.xhci_virt_device, ptr %17, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %90, i32 0, i32 1
  store i32 %65, ptr %132, align 4
  store i32 %65, ptr %90, align 4
  tail call void @xhci_slot_copy(ptr noundef %13, ptr noundef %129, ptr noundef %131) #21
  %133 = load i32, ptr %132, align 4
  %134 = or i32 %133, 1
  store i32 %134, ptr %132, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #21
  %135 = tail call fastcc i32 @xhci_configure_endpoint(ptr noundef %13, ptr noundef %1, ptr noundef %88, i1 noundef zeroext false, i1 noundef zeroext true)
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %166, label %137

137:                                              ; preds = %128
  %138 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #21
  %139 = call i32 @llvm.umax.i32(i32 %3, i32 1)
  br label %140

140:                                              ; preds = %140, %137
  %141 = phi i32 [ %163, %140 ], [ 0, %137 ]
  %142 = getelementptr ptr, ptr %2, i32 %141
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %143, i32 0, i32 3
  %145 = load i8, ptr %144, align 1
  %146 = and i8 %145, 3
  %147 = icmp eq i8 %146, 0
  %148 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %143, i32 0, i32 2
  %149 = load i8, ptr %148, align 1
  %150 = shl i8 %149, 1
  %151 = and i8 %150, 30
  %152 = zext i8 %151 to i32
  %153 = lshr i8 %149, 7
  %154 = or i8 %151, %153
  %155 = zext i8 %154 to i32
  %156 = add nsw i32 %155, -1
  %157 = select i1 %147, i32 %152, i32 %156
  %158 = getelementptr %struct.xhci_virt_device, ptr %17, i32 0, i32 4, i32 %157, i32 3
  %159 = load ptr, ptr %158, align 4
  tail call void @xhci_free_stream_info(ptr noundef %13, ptr noundef %159) #21
  store ptr null, ptr %158, align 4
  %160 = getelementptr %struct.xhci_virt_device, ptr %17, i32 0, i32 4, i32 %157, i32 5
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, -49
  store i32 %162, ptr %160, align 4
  %163 = add nuw i32 %141, 1
  %164 = icmp eq i32 %163, %139
  br i1 %164, label %165, label %140

165:                                              ; preds = %140
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %138) #21
  br label %166

166:                                              ; preds = %165, %128, %94, %68
  %167 = phi i32 [ -22, %68 ], [ 0, %165 ], [ -22, %94 ], [ %135, %128 ]
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_address_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @xhci_setup_device(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_enable_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @xhci_setup_device(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_update_hub_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %9, %7 ], [ %0, %4 ]
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 0, i32 29
  %13 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %101, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr %struct.xhci_hcd, ptr %12, i32 0, i32 42, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load ptr, ptr %12, align 8
  %24 = load ptr, ptr %23, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.131) #22
  br label %101

25:                                               ; preds = %16
  %26 = tail call ptr @xhci_alloc_command_with_ctx(ptr noundef %12, i1 noundef zeroext true, i32 noundef %3) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %101, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 4
  %30 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %29) #21
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load ptr, ptr %12, align 8
  %34 = load ptr, ptr %33, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_update_hub_device) #22
  tail call void @xhci_free_command(ptr noundef %12, ptr noundef nonnull %26) #21
  br label %101

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 1, i32 0, i32 10
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #21
  %38 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = tail call i32 @xhci_alloc_tt_info(ptr noundef %12, ptr noundef nonnull %20, ptr noundef %1, ptr noundef %2, i32 noundef 2592) #21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @xhci_free_command(ptr noundef %12, ptr noundef nonnull %26) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #21
  br label %101

45:                                               ; preds = %41, %35
  %46 = load ptr, ptr %26, align 4
  %47 = getelementptr inbounds %struct.xhci_virt_device, ptr %20, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  tail call void @xhci_slot_copy(ptr noundef %12, ptr noundef %46, ptr noundef %48) #21
  %49 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %30, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = load ptr, ptr %26, align 4
  %53 = tail call ptr @xhci_get_slot_ctx(ptr noundef %12, ptr noundef %52) #21
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, 67108864
  store i32 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.usb_tt, ptr %2, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %45
  %60 = or i32 %54, 100663296
  br label %66

61:                                               ; preds = %45
  %62 = load i32, ptr %38, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = and i32 %55, -33554433
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi i32 [ %65, %64 ], [ %60, %59 ]
  store i32 %67, ptr %53, align 4
  br label %68

68:                                               ; preds = %66, %61
  %69 = getelementptr inbounds %struct.xhci_hcd, ptr %12, i32 0, i32 14
  %70 = load i16, ptr %69, align 2
  %71 = icmp ugt i16 %70, 149
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 35
  %74 = load i32, ptr %73, align 4
  %75 = shl i32 %74, 24
  %76 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %53, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, ptr %76, align 4
  %79 = getelementptr inbounds %struct.usb_tt, ptr %2, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  %82 = udiv i32 %80, 666
  %83 = shl i32 %82, 16
  %84 = add i32 %83, 196608
  %85 = and i32 %84, 196608
  %86 = select i1 %81, i32 0, i32 %85
  %87 = load i16, ptr %69, align 2
  %88 = icmp ult i16 %87, 256
  br i1 %88, label %92, label %89

89:                                               ; preds = %72
  %90 = load i32, ptr %38, align 4
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %92, label %96

92:                                               ; preds = %89, %72
  %93 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %53, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = or i32 %94, %86
  store i32 %95, ptr %93, align 4
  br label %96

96:                                               ; preds = %92, %89, %68
  %97 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %53, i32 0, i32 3
  store i32 0, ptr %97, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #21
  %98 = load i16, ptr %69, align 2
  %99 = icmp ult i16 %98, 150
  %100 = tail call fastcc i32 @xhci_configure_endpoint(ptr noundef %12, ptr noundef %1, ptr noundef nonnull %26, i1 noundef zeroext %99, i1 noundef zeroext false)
  tail call void @xhci_free_command(ptr noundef %12, ptr noundef nonnull %26) #21
  br label %101

101:                                              ; preds = %96, %44, %32, %25, %22, %10
  %102 = phi i32 [ -12, %44 ], [ %100, %96 ], [ -12, %32 ], [ -22, %22 ], [ 0, %10 ], [ -12, %25 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_discover_or_reset_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %152

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %152, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi ptr [ %15, %13 ], [ %0, %10 ]
  %18 = getelementptr inbounds %struct.usb_hcd, ptr %17, i32 4, i32 20, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %152

22:                                               ; preds = %16
  %23 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef nonnull %0) #21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi ptr [ %27, %25 ], [ %0, %22 ]
  %30 = getelementptr inbounds %struct.usb_hcd, ptr %29, i32 0, i32 29
  %31 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr %struct.xhci_hcd, ptr %30, i32 0, i32 42, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = tail call i32 @xhci_alloc_dev(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %38 = icmp eq i32 %37, 1
  %39 = select i1 %38, i32 0, i32 -22
  br label %152

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.xhci_virt_device, ptr %34, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %42, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i32 [ %46, %44 ], [ 0, %40 ]
  %49 = getelementptr inbounds %struct.xhci_virt_device, ptr %34, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %1
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = tail call i32 @xhci_alloc_dev(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %54 = icmp eq i32 %53, 1
  %55 = select i1 %54, i32 0, i32 -22
  br label %152

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.xhci_virt_device, ptr %34, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = tail call ptr @xhci_get_slot_ctx(ptr noundef %30, ptr noundef %58) #21
  %60 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = icmp ult i32 %61, 134217728
  br i1 %62, label %152, label %63

63:                                               ; preds = %56
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_discover_or_reset_device, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = tail call ptr @llvm.thread.pointer() #21
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !118
  %78 = tail call i32 @__traceiter_xhci_discover_or_reset_device(ptr noundef null, ptr noundef %59) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !119
  br label %79

79:                                               ; preds = %77, %66, %63
  %80 = tail call ptr @xhci_alloc_command(ptr noundef %30, i1 noundef zeroext true, i32 noundef 3072) #21
  %81 = icmp eq ptr %80, null
  br i1 %81, label %152, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.usb_hcd, ptr %29, i32 1, i32 0, i32 10
  %84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %83) #21
  %85 = tail call i32 @xhci_queue_reset_device(ptr noundef %30, ptr noundef nonnull %80, i32 noundef %32) #21
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %84) #21
  br label %150

88:                                               ; preds = %82
  tail call void @xhci_ring_cmd_db(ptr noundef %30) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %84) #21
  %89 = getelementptr inbounds %struct.xhci_command, ptr %80, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  tail call void @wait_for_completion(ptr noundef %90) #21
  %91 = getelementptr inbounds %struct.xhci_command, ptr %80, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  switch i32 %92, label %96 [
    i32 25, label %93
    i32 24, label %93
    i32 11, label %150
    i32 19, label %150
    i32 1, label %102
  ]

93:                                               ; preds = %88, %88
  %94 = load ptr, ptr %30, align 8
  %95 = load ptr, ptr %94, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.132) #22
  br label %150

96:                                               ; preds = %88
  %97 = tail call i32 @xhci_is_vendor_info_code(ptr noundef %30, i32 noundef %92) #21
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load ptr, ptr %30, align 8
  %101 = load ptr, ptr %100, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %101, ptr noundef nonnull @.str.133, i32 noundef %92) #22
  br label %150

102:                                              ; preds = %96, %88
  %103 = getelementptr inbounds %struct.usb_hcd, ptr %29, i32 4, i32 21, i32 3, i32 1
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 32
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %83) #21
  tail call void @xhci_free_device_endpoint_resources(ptr noundef %30, ptr noundef nonnull %34, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %83, i32 noundef %108) #21
  br label %109

109:                                              ; preds = %107, %102
  %110 = getelementptr inbounds %struct.xhci_virt_device, ptr %34, i32 0, i32 7
  br label %111

111:                                              ; preds = %144, %109
  %112 = phi i32 [ 1, %109 ], [ %146, %144 ]
  %113 = getelementptr %struct.xhci_virt_device, ptr %34, i32 0, i32 4, i32 %112
  %114 = getelementptr %struct.xhci_virt_device, ptr %34, i32 0, i32 4, i32 %112, i32 5
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %115, 16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %111
  %119 = load ptr, ptr %30, align 8
  %120 = load ptr, ptr %119, align 8
  %121 = add nuw nsw i32 %112, 1
  %122 = lshr i32 %121, 1
  %123 = shl i32 %112, 7
  %124 = and i32 %123, 128
  %125 = xor i32 %124, 128
  %126 = or i32 %125, %122
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.134, i32 noundef %126) #22
  %127 = getelementptr %struct.xhci_virt_device, ptr %34, i32 0, i32 4, i32 %112, i32 3
  %128 = load ptr, ptr %127, align 4
  tail call void @xhci_free_stream_info(ptr noundef %30, ptr noundef %128) #21
  store ptr null, ptr %127, align 4
  %129 = load i32, ptr %114, align 4
  %130 = and i32 %129, -17
  store i32 %130, ptr %114, align 4
  br label %131

131:                                              ; preds = %118, %111
  %132 = getelementptr %struct.xhci_virt_device, ptr %34, i32 0, i32 4, i32 %112, i32 2
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  tail call void @xhci_debugfs_remove_endpoint(ptr noundef %30, ptr noundef nonnull %34, i32 noundef %112) #21
  tail call void @xhci_free_endpoint_ring(ptr noundef %30, ptr noundef nonnull %34, i32 noundef %112) #21
  br label %136

136:                                              ; preds = %135, %131
  %137 = getelementptr %struct.xhci_virt_device, ptr %34, i32 0, i32 4, i32 %112, i32 13
  %138 = load volatile ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, %137
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = getelementptr %struct.xhci_virt_device, ptr %34, i32 0, i32 4, i32 %112, i32 12
  %142 = load ptr, ptr %110, align 4
  %143 = load ptr, ptr %41, align 4
  tail call fastcc void @xhci_drop_ep_from_interval_table(ptr noundef %30, ptr noundef %141, ptr noundef %142, ptr noundef nonnull %1, ptr noundef %113, ptr noundef %143)
  br label %144

144:                                              ; preds = %140, %136
  %145 = getelementptr %struct.xhci_virt_device, ptr %34, i32 0, i32 4, i32 %112, i32 12
  tail call void @xhci_clear_endpoint_bw_info(ptr noundef %145) #21
  %146 = add nuw nsw i32 %112, 1
  %147 = icmp eq i32 %146, 31
  br i1 %147, label %148, label %111

148:                                              ; preds = %144
  tail call void @xhci_update_tt_active_eps(ptr noundef %30, ptr noundef nonnull %34, i32 noundef %48)
  %149 = getelementptr inbounds %struct.xhci_virt_device, ptr %34, i32 0, i32 9
  store i32 0, ptr %149, align 4
  br label %150

150:                                              ; preds = %148, %99, %93, %88, %88, %87
  %151 = phi i32 [ %85, %87 ], [ 0, %148 ], [ -22, %99 ], [ -62, %93 ], [ 0, %88 ], [ 0, %88 ]
  tail call void @xhci_free_command(ptr noundef %30, ptr noundef nonnull %80) #21
  br label %152

152:                                              ; preds = %150, %79, %56, %52, %36, %16, %6, %2
  %153 = phi i32 [ %151, %150 ], [ %39, %36 ], [ %55, %52 ], [ 0, %56 ], [ -12, %79 ], [ -19, %16 ], [ 0, %6 ], [ -22, %2 ]
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_update_device(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 25
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %13, -1
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = icmp sgt i32 %16, 63
  br i1 %17, label %51, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 28
  %20 = load i16, ptr %19, align 1
  %21 = and i16 %20, 64
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 3
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 9
  br i1 %34, label %51, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 11, i32 8
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = tail call fastcc i32 @xhci_check_usb2_port_capability(ptr noundef %10, i32 noundef %14, i32 noundef 524288)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = or i16 %20, 128
  store i16 %44, ptr %19, align 1
  %45 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 44
  %46 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 44, i32 1
  store i32 512, ptr %46, align 4
  store i32 4, ptr %45, align 4
  %47 = tail call fastcc i32 @xhci_check_usb2_port_capability(ptr noundef %10, i32 noundef %14, i32 noundef 1048576)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = or i16 %20, 384
  store i16 %50, ptr %19, align 1
  br label %51

51:                                               ; preds = %49, %43, %40, %35, %31, %27, %23, %18, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_set_usb2_hardware_lpm(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 29
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 4, i32 21, i32 3, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 536870912
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %147

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = icmp sgt i32 %18, 63
  br i1 %19, label %147, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 11, i32 8
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %147, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 28
  %27 = load i16, ptr %26, align 1
  %28 = and i16 %27, 64
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %147, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %147, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %147

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 16, i32 3
  %40 = load i8, ptr %39, align 4
  %41 = icmp eq i8 %40, 9
  %42 = and i16 %27, 128
  %43 = icmp eq i16 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %147, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 1, i32 0, i32 10
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #21
  %48 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 4, i32 21, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 25
  %51 = load i8, ptr %50, align 2
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %52, -1
  %54 = getelementptr ptr, ptr %49, i32 %53
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i32, ptr %56, i32 1
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !120
  %59 = load ptr, ptr %54, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i32, ptr %60, i32 3
  %62 = icmp eq i32 %2, 0
  br i1 %62, label %114, label %63

63:                                               ; preds = %45
  %64 = load i16, ptr %26, align 1
  %65 = and i16 %64, 256
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 18
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.usb_host_bos, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.usb_ext_cap_descriptor, ptr %71, i32 0, i32 3
  %73 = load i32, ptr %72, align 1
  %74 = and i32 %73, 12
  %75 = icmp eq i32 %74, 12
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = lshr i32 %73, 8
  %78 = and i32 %77, 15
  br label %82

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 44
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i32 [ %78, %76 ], [ %81, %79 ]
  %84 = getelementptr [16 x i32], ptr @xhci_besl_encoding, i32 0, i32 %83
  %85 = load i32, ptr %84, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %47) #21
  %86 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 23
  %87 = load ptr, ptr %86, align 4
  tail call void @mutex_lock(ptr noundef %87) #21
  %88 = trunc i32 %85 to i16
  %89 = tail call fastcc i32 @xhci_change_max_exit_latency(ptr noundef %11, ptr noundef %1, i16 noundef zeroext %88)
  %90 = load ptr, ptr %86, align 4
  tail call void @mutex_unlock(ptr noundef %90) #21
  %91 = icmp slt i32 %89, 0
  br i1 %91, label %147, label %92

92:                                               ; preds = %82
  %93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #21
  %94 = tail call fastcc i32 @xhci_calculate_usb2_hw_lpm_params(ptr noundef %1)
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !121
  tail call void @arm_heavy_mb() #21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %94) #21, !srcloc !14
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !122
  br label %98

96:                                               ; preds = %63
  %97 = tail call fastcc i32 @xhci_calculate_hird_besl(ptr noundef %11, ptr noundef %1)
  br label %98

98:                                               ; preds = %96, %92
  %99 = phi i32 [ %83, %92 ], [ %97, %96 ]
  %100 = phi i32 [ %93, %92 ], [ %47, %96 ]
  %101 = and i32 %58, -249
  %102 = shl i32 %99, 4
  %103 = and i32 %102, 240
  %104 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %105 = load i32, ptr %104, align 8
  %106 = shl i32 %105, 8
  %107 = and i32 %106, 65280
  %108 = or i32 %101, %103
  %109 = or i32 %108, %107
  %110 = or i32 %109, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !123
  tail call void @arm_heavy_mb() #21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %110) #21, !srcloc !14
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !124
  %112 = or i32 %111, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !125
  tail call void @arm_heavy_mb() #21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %112) #21, !srcloc !14
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !126
  br label %145

114:                                              ; preds = %45
  %115 = and i32 %58, -131065
  tail call void asm sideeffect "dsb st", "~{memory}"() #21, !srcloc !127
  tail call void @arm_heavy_mb() #21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %115) #21, !srcloc !14
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !128
  %117 = load i16, ptr %26, align 1
  %118 = and i16 %117, 256
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %145, label %120

120:                                              ; preds = %114
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %47) #21
  %121 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 23
  %122 = load ptr, ptr %121, align 4
  tail call void @mutex_lock(ptr noundef %122) #21
  %123 = tail call fastcc i32 @xhci_change_max_exit_latency(ptr noundef %11, ptr noundef %1, i16 noundef zeroext 0)
  %124 = load ptr, ptr %121, align 4
  tail call void @mutex_unlock(ptr noundef %124) #21
  %125 = tail call i64 @ktime_get() #21
  %126 = add i64 %125, 10000000
  %127 = load ptr, ptr %54, align 4
  %128 = load ptr, ptr %127, align 4
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !129
  %130 = and i32 %129, 480
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %147, label %132

132:                                              ; preds = %139, %120
  %133 = tail call i64 @ktime_get() #21
  %134 = icmp sgt i64 %133, %126
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load ptr, ptr %54, align 4
  %137 = load ptr, ptr %136, align 4
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !130
  br label %147

139:                                              ; preds = %132
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #21
  %140 = load ptr, ptr %54, align 4
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !129
  %143 = and i32 %142, 480
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %132

145:                                              ; preds = %114, %98
  %146 = phi i32 [ %100, %98 ], [ %47, %114 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %146) #21
  br label %147

147:                                              ; preds = %145, %139, %135, %120, %82, %38, %34, %30, %25, %20, %16, %9
  %148 = phi i32 [ 0, %145 ], [ -1, %9 ], [ -1, %25 ], [ -1, %20 ], [ -1, %16 ], [ -1, %38 ], [ -1, %34 ], [ -1, %30 ], [ %89, %82 ], [ 0, %135 ], [ 0, %120 ], [ 0, %139 ]
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_enable_usb3_lpm_timeout(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 0, i32 29
  %13 = icmp eq ptr %12, null
  br i1 %13, label %199, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %11, i32 4, i32 21, i32 3, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 2048
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %199, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr %struct.xhci_hcd, ptr %12, i32 0, i32 42, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %199, label %25

25:                                               ; preds = %19
  %26 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi ptr [ %30, %28 ], [ %0, %25 ]
  %33 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #21
  store i16 0, ptr %4, align 2
  %34 = add i32 %2, -1
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.138, i32 noundef %2) #22
  br label %145

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.usb_hcd, ptr %32, i32 4, i32 21, i32 3, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 4096
  %42 = icmp eq i64 %41, 0
  %43 = icmp eq i32 %2, 2
  %44 = or i1 %43, %42
  br i1 %44, label %57, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %48, %45
  %49 = phi ptr [ %47, %45 ], [ %52, %48 ]
  %50 = phi i32 [ 0, %45 ], [ %54, %48 ]
  %51 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 11
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  %54 = add i32 %50, 1
  br i1 %53, label %55, label %48

55:                                               ; preds = %48
  %56 = icmp ult i32 %50, 2
  br i1 %56, label %57, label %145

57:                                               ; preds = %55, %38
  %58 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 13
  %59 = call fastcc i32 @xhci_update_timeout_for_endpoint(ptr noundef %33, ptr noundef %1, ptr noundef %58, i32 noundef %2, ptr noundef nonnull %4) #21
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i16, ptr %4, align 2
  br label %145

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 20
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.usb_config_descriptor, ptr %65, i32 0, i32 3
  %69 = load i8, ptr %68, align 4
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %143, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46, i32 2
  %73 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46, i32 1
  %74 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 2
  %75 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 1
  br label %78

76:                                               ; preds = %63
  %77 = load i16, ptr %4, align 2
  br label %145

78:                                               ; preds = %138, %71
  %79 = phi i8 [ %69, %71 ], [ %139, %138 ]
  %80 = phi i32 [ 0, %71 ], [ %140, %138 ]
  %81 = getelementptr %struct.usb_host_config, ptr %65, i32 0, i32 3, i32 %80
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %138, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.usb_interface, ptr %82, i32 0, i32 7, i32 6
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  %88 = getelementptr i8, ptr %86, i32 -56
  %89 = icmp eq ptr %88, null
  %90 = or i1 %87, %89
  br i1 %90, label %114, label %91

91:                                               ; preds = %84
  %92 = getelementptr i8, ptr %86, i32 80
  %93 = load i8, ptr %92, align 4
  %94 = and i8 %93, 4
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %114, label %96

96:                                               ; preds = %91
  switch i32 %2, label %98 [
    i32 1, label %100
    i32 2, label %97
  ]

97:                                               ; preds = %96
  br label %100

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %99, ptr noundef nonnull @.str.139, ptr noundef nonnull @__func__.xhci_get_timeout_no_hub_lpm) #22
  br label %145

100:                                              ; preds = %97, %96
  %101 = phi ptr [ %72, %97 ], [ %74, %96 ]
  %102 = phi ptr [ %73, %97 ], [ %75, %96 ]
  %103 = phi i32 [ 65535, %97 ], [ 255, %96 ]
  %104 = load i32, ptr %101, align 4
  %105 = add i32 %104, 999
  %106 = udiv i32 %105, 1000
  %107 = icmp ugt i32 %106, %103
  br i1 %107, label %145, label %108

108:                                              ; preds = %100
  %109 = load i32, ptr %102, align 4
  %110 = add i32 %109, 999
  %111 = udiv i32 %110, 1000
  %112 = icmp ugt i32 %111, %103
  br i1 %112, label %145, label %113

113:                                              ; preds = %108
  store i16 255, ptr %4, align 2
  br label %114

114:                                              ; preds = %113, %91, %84
  %115 = getelementptr inbounds %struct.usb_interface, ptr %82, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %138, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.usb_host_interface, ptr %116, i32 0, i32 3
  %120 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %116, i32 0, i32 4
  %121 = load i8, ptr %120, align 4
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %138, label %128

123:                                              ; preds = %128
  %124 = add nuw nsw i32 %129, 1
  %125 = load i8, ptr %120, align 4
  %126 = zext i8 %125 to i32
  %127 = icmp ult i32 %124, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %123, %118
  %129 = phi i32 [ %124, %123 ], [ 0, %118 ]
  %130 = load ptr, ptr %119, align 4
  %131 = getelementptr %struct.usb_host_endpoint, ptr %130, i32 %129
  %132 = call fastcc i32 @xhci_update_timeout_for_endpoint(ptr noundef %33, ptr noundef %1, ptr noundef %131, i32 noundef %2, ptr noundef nonnull %4) #21
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %123, label %134

134:                                              ; preds = %128
  %135 = load i16, ptr %4, align 2
  br label %145

136:                                              ; preds = %123
  %137 = load i8, ptr %68, align 4
  br label %138

138:                                              ; preds = %136, %118, %114, %78
  %139 = phi i8 [ %137, %136 ], [ %79, %118 ], [ %79, %78 ], [ %79, %114 ]
  %140 = add nuw nsw i32 %80, 1
  %141 = zext i8 %139 to i32
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %78, label %143

143:                                              ; preds = %138, %67
  %144 = load i16, ptr %4, align 2
  br label %145

145:                                              ; preds = %143, %134, %108, %100, %98, %76, %61, %55, %36
  %146 = phi i16 [ %62, %61 ], [ %144, %143 ], [ %77, %76 ], [ 0, %36 ], [ 0, %55 ], [ %135, %134 ], [ 0, %98 ], [ 0, %108 ], [ 0, %100 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #21
  %147 = icmp eq i32 %2, 1
  %148 = icmp eq i16 %146, 0
  %149 = icmp eq i32 %2, 2
  %150 = and i1 %149, %148
  %151 = icmp ne i16 %146, 0
  %152 = and i1 %147, %151
  %153 = and i1 %149, %151
  %154 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  %157 = and i1 %147, %148
  %158 = or i1 %157, %156
  %159 = xor i1 %158, true
  %160 = or i1 %152, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %145
  %162 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %163, 999
  %165 = udiv i32 %164, 1000
  %166 = zext i32 %165 to i64
  br label %167

167:                                              ; preds = %161, %145
  %168 = phi i64 [ %166, %161 ], [ 0, %145 ]
  %169 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46, i32 3
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  %172 = or i1 %150, %171
  %173 = xor i1 %172, true
  %174 = or i1 %153, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, 999
  %179 = udiv i32 %178, 1000
  %180 = zext i32 %179 to i64
  br label %181

181:                                              ; preds = %175, %167
  %182 = phi i64 [ %180, %175 ], [ 0, %167 ]
  %183 = tail call i64 @llvm.umax.i64(i64 %168, i64 %182) #21
  %184 = icmp ugt i64 %183, 65535
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %186, ptr noundef nonnull @.str.140, i64 noundef %183) #22
  br label %189

187:                                              ; preds = %181
  %188 = trunc i64 %183 to i32
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ -7, %185 ], [ %188, %187 ]
  %191 = tail call i32 @llvm.smax.i32(i32 %190, i32 0)
  %192 = trunc i32 %191 to i16
  %193 = tail call fastcc i32 @xhci_change_max_exit_latency(ptr noundef nonnull %12, ptr noundef %1, i16 noundef zeroext %192)
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = icmp slt i32 %190, 0
  %197 = zext i16 %146 to i32
  %198 = select i1 %196, i32 0, i32 %197
  br label %199

199:                                              ; preds = %195, %189, %19, %14, %10
  %200 = phi i32 [ %198, %195 ], [ 0, %19 ], [ 0, %14 ], [ 0, %10 ], [ %193, %189 ]
  ret i32 %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xhci_disable_usb3_lpm_timeout(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %11 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 0, i32 29
  %12 = icmp eq ptr %11, null
  br i1 %12, label %60, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %10, i32 4, i32 21, i32 3, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 2048
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %60, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr %struct.xhci_hcd, ptr %11, i32 0, i32 42, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %60, label %24

24:                                               ; preds = %18
  %25 = icmp ne i32 %2, 1
  %26 = icmp ne i32 %2, 2
  %27 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = and i1 %25, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 999
  %35 = udiv i32 %34, 1000
  %36 = zext i32 %35 to i64
  br label %37

37:                                               ; preds = %31, %24
  %38 = phi i64 [ %36, %31 ], [ 0, %24 ]
  %39 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = and i1 %26, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 999
  %47 = udiv i32 %46, 1000
  %48 = zext i32 %47 to i64
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i64 [ %48, %43 ], [ 0, %37 ]
  %51 = tail call i64 @llvm.umax.i64(i64 %38, i64 %50) #21
  %52 = icmp ugt i64 %51, 65535
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.140, i64 noundef %51) #22
  br label %57

55:                                               ; preds = %49
  %56 = trunc i64 %51 to i16
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i16 [ -7, %53 ], [ %56, %55 ]
  %59 = tail call fastcc i32 @xhci_change_max_exit_latency(ptr noundef nonnull %11, ptr noundef %1, i16 noundef zeroext %58)
  br label %60

60:                                               ; preds = %57, %18, %13, %9
  %61 = phi i32 [ %59, %57 ], [ 0, %18 ], [ 0, %13 ], [ 0, %9 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_amd_dev_put() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_check_maxpacket(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xhci_virt_device, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %9, i32 noundef %2) #21
  %11 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 16
  %14 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 13, i32 0, i32 4
  %17 = load i16, ptr %16, align 1
  %18 = and i16 %17, 2047
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %13, %19
  br i1 %20, label %55, label %21

21:                                               ; preds = %5
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_context_change, ptr noundef nonnull @.str.97) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_context_change, ptr noundef nonnull @.str.98, i32 noundef %19) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_context_change, ptr noundef nonnull @.str.99, i32 noundef %13) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_context_change, ptr noundef nonnull @.str.100) #21
  %22 = tail call ptr @xhci_alloc_command(ptr noundef %0, i1 noundef zeroext true, i32 noundef %4) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.xhci_virt_device, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr %22, align 4
  %28 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %27) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load ptr, ptr %0, align 8
  %32 = load ptr, ptr %31, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_check_maxpacket) #22
  br label %51

33:                                               ; preds = %24
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr inbounds %struct.xhci_virt_device, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.xhci_virt_device, ptr %34, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void @xhci_endpoint_copy(ptr noundef %0, ptr noundef %36, ptr noundef %38, i32 noundef %2) #21
  %39 = load ptr, ptr %22, align 4
  %40 = tail call ptr @xhci_get_ep_ctx(ptr noundef %0, ptr noundef %39, i32 noundef %2) #21
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, -8
  store i32 %42, ptr %40, align 8
  %43 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %40, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 65535
  %46 = shl nuw nsw i32 %19, 16
  %47 = or i32 %45, %46
  store i32 %47, ptr %43, align 4
  %48 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %28, i32 0, i32 1
  store i32 2, ptr %48, align 4
  store i32 0, ptr %28, align 4
  %49 = load ptr, ptr %14, align 4
  %50 = tail call fastcc i32 @xhci_configure_endpoint(ptr noundef %0, ptr noundef %49, ptr noundef nonnull %22, i1 noundef zeroext true, i1 noundef zeroext false)
  store i32 1, ptr %48, align 4
  br label %51

51:                                               ; preds = %33, %30
  %52 = phi i32 [ %50, %33 ], [ -12, %30 ]
  %53 = getelementptr inbounds %struct.xhci_command, ptr %22, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  tail call void @kfree(ptr noundef %54) #21
  tail call void @kfree(ptr noundef nonnull %22) #21
  br label %55

55:                                               ; preds = %51, %21, %5
  %56 = phi i32 [ -12, %21 ], [ %52, %51 ], [ 0, %5 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_urb_free_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_ctrl_tx(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_bulk_tx(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_intr_tx(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_isoc_tx_prepare(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_urb_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_endpoint_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_check_unlink_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_hc_died(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_cancel_urb(ptr noundef %0) #3 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_cancel_urb, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #21
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !131
  %16 = tail call i32 @__traceiter_xhci_dbg_cancel_urb(ptr noundef null, ptr noundef %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !132
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_stop_endpoint(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unlink_urb_from_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_giveback_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_urb_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_triad_to_transfer_ring(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_cancel_urb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_map_urb_for_dma(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unmap_urb_for_dma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_alloc_command_with_ctx(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_slot_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_ring_doorbell_for_active_rings(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_free_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_alloc_stream_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_setup_streams_ep_input_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_debugfs_create_stream_files(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_setup_no_streams_ep_input_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_setup_device(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, ptr @.str.115, ptr @.str.116
  %6 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %0) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %10, %8 ], [ %0, %3 ]
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 0, i32 29
  %14 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 1, i32 18
  tail call void @mutex_lock(ptr noundef %14) #21
  %15 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 4, i32 20, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %233

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %13, ptr noundef nonnull @trace_xhci_dbg_address, ptr noundef nonnull @.str.117, i32 noundef 0) #21
  br label %233

23:                                               ; preds = %18
  %24 = getelementptr %struct.xhci_hcd, ptr %13, i32 0, i32 42, i32 %20
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31, !prof !97

27:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.118, i32 noundef 4164, i32 noundef 9, ptr noundef null) #21
  %28 = load ptr, ptr %13, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = load i32, ptr %19, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.119, i32 noundef %30) #22
  br label %233

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.xhci_virt_device, ptr %25, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @xhci_get_slot_ctx(ptr noundef %13, ptr noundef %33) #21
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_setup_device_slot, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = tail call ptr @llvm.thread.pointer() #21
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !133
  %49 = tail call i32 @__traceiter_xhci_setup_device_slot(ptr noundef null, ptr noundef %34) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !134
  br label %50

50:                                               ; preds = %48, %37, %31
  br i1 %4, label %51, label %56

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %34, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, -134217728
  %55 = icmp eq i32 %54, 134217728
  br i1 %55, label %233, label %56

56:                                               ; preds = %51, %50
  %57 = tail call ptr @xhci_alloc_command(ptr noundef %13, i1 noundef zeroext true, i32 noundef 3264) #21
  %58 = icmp eq ptr %57, null
  br i1 %58, label %233, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.xhci_virt_device, ptr %25, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  store ptr %61, ptr %57, align 4
  %62 = load ptr, ptr %60, align 4
  %63 = tail call ptr @xhci_get_slot_ctx(ptr noundef %13, ptr noundef %62) #21
  %64 = load ptr, ptr %60, align 4
  %65 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %64) #21
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %59
  %68 = load ptr, ptr %13, align 8
  %69 = load ptr, ptr %68, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %69, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_setup_device) #22
  br label %235

70:                                               ; preds = %59
  %71 = load i32, ptr %63, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = tail call i32 @xhci_setup_addressable_virt_dev(ptr noundef %13, ptr noundef %1) #21
  br label %76

75:                                               ; preds = %70
  tail call void @xhci_copy_ep0_dequeue_into_input_ctx(ptr noundef %13, ptr noundef %1) #21
  br label %76

76:                                               ; preds = %75, %73
  %77 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %65, i32 0, i32 1
  store i32 3, ptr %77, align 4
  store i32 0, ptr %65, align 4
  %78 = load ptr, ptr %60, align 4
  %79 = load i32, ptr %63, align 4
  %80 = lshr i32 %79, 27
  %81 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_address_ctx, i32 0, i32 1), align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %76
  %84 = tail call ptr @llvm.thread.pointer() #21
  %85 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = lshr i32 %86, 5
  %88 = getelementptr i32, ptr @__cpu_online_mask, i32 %87
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %86, 31
  %91 = shl nuw i32 1, %90
  %92 = and i32 %91, %89
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %83
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !135
  %95 = tail call i32 @__traceiter_xhci_address_ctx(ptr noundef null, ptr noundef %13, ptr noundef %78, i32 noundef %80) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !136
  br label %96

96:                                               ; preds = %94, %83, %76
  %97 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_address_ctrl_ctx, i32 0, i32 1), align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = tail call ptr @llvm.thread.pointer() #21
  %101 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 5
  %104 = getelementptr i32, ptr @__cpu_online_mask, i32 %103
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %102, 31
  %107 = shl nuw i32 1, %106
  %108 = and i32 %107, %105
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %99
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !137
  %111 = tail call i32 @__traceiter_xhci_address_ctrl_ctx(ptr noundef null, ptr noundef nonnull %65) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !138
  br label %112

112:                                              ; preds = %110, %99, %96
  %113 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 1, i32 0, i32 10
  %114 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %113) #21
  %115 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_setup_device, i32 0, i32 1), align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = tail call ptr @llvm.thread.pointer() #21
  %119 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %120 = load i32, ptr %119, align 8
  %121 = lshr i32 %120, 5
  %122 = getelementptr i32, ptr @__cpu_online_mask, i32 %121
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %120, 31
  %125 = shl nuw i32 1, %124
  %126 = and i32 %125, %123
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %117
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !139
  %129 = tail call i32 @__traceiter_xhci_setup_device(ptr noundef null, ptr noundef nonnull %25) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !140
  br label %130

130:                                              ; preds = %128, %117, %112
  %131 = load ptr, ptr %60, align 4
  %132 = getelementptr inbounds %struct.xhci_container_ctx, ptr %131, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = load i32, ptr %19, align 8
  %135 = tail call i32 @xhci_queue_address_device(ptr noundef %13, ptr noundef nonnull %57, i32 noundef %133, i32 noundef %134, i32 noundef %2) #21
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %113, i32 noundef %114) #21
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %13, ptr noundef nonnull @trace_xhci_dbg_address, ptr noundef nonnull @.str.120) #21
  br label %235

138:                                              ; preds = %130
  tail call void @xhci_ring_cmd_db(ptr noundef %13) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %113, i32 noundef %114) #21
  %139 = getelementptr inbounds %struct.xhci_command, ptr %57, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  tail call void @wait_for_completion(ptr noundef %140) #21
  %141 = getelementptr inbounds %struct.xhci_command, ptr %57, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  switch i32 %142, label %162 [
    i32 25, label %143
    i32 24, label %143
    i32 19, label %146
    i32 11, label %146
    i32 4, label %150
    i32 22, label %160
    i32 1, label %166
  ]

143:                                              ; preds = %138, %138
  %144 = load ptr, ptr %13, align 8
  %145 = load ptr, ptr %144, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %145, ptr noundef nonnull @.str.121) #22
  br label %235

146:                                              ; preds = %138, %138
  %147 = load ptr, ptr %13, align 8
  %148 = load ptr, ptr %147, align 8
  %149 = load i32, ptr %19, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.122, ptr noundef nonnull %5, i32 noundef %149) #22
  br label %235

150:                                              ; preds = %138
  %151 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.123, ptr noundef nonnull %5) #22
  tail call void @mutex_unlock(ptr noundef %14) #21
  %152 = load i32, ptr %19, align 8
  %153 = tail call i32 @xhci_disable_slot(ptr noundef %13, i32 noundef %152)
  %154 = load i32, ptr %19, align 8
  tail call void @xhci_free_virt_device(ptr noundef %13, i32 noundef %154) #21
  %155 = icmp eq i32 %153, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = tail call i32 @xhci_alloc_dev(ptr noundef %0, ptr noundef %1)
  br label %158

158:                                              ; preds = %156, %150
  %159 = load ptr, ptr %139, align 4
  tail call void @kfree(ptr noundef %159) #21
  tail call void @kfree(ptr noundef nonnull %57) #21
  br label %239

160:                                              ; preds = %138
  %161 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.124, ptr noundef nonnull %5) #22
  br label %235

162:                                              ; preds = %138
  %163 = load ptr, ptr %13, align 8
  %164 = load ptr, ptr %163, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.126, ptr noundef nonnull %5, i32 noundef %142) #22
  %165 = load ptr, ptr %32, align 4
  tail call fastcc void @trace_xhci_address_ctx(ptr noundef %13, ptr noundef %165, i32 noundef 1)
  br label %235

166:                                              ; preds = %138
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %13, ptr noundef nonnull @trace_xhci_dbg_address, ptr noundef nonnull @.str.125, ptr noundef nonnull %5) #21
  %167 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 1, i32 0, i32 3
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.xhci_op_regs, ptr %168, i32 0, i32 8
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !22
  %171 = getelementptr i32, ptr %169, i32 1
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #21, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #21, !srcloc !23
  %173 = zext i32 %170 to i64
  %174 = zext i32 %172 to i64
  %175 = shl nuw i64 %174, 32
  %176 = or i64 %175, %173
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %13, ptr noundef nonnull @trace_xhci_dbg_address, ptr noundef nonnull @.str.127, i64 noundef %176) #21
  %177 = load i32, ptr %19, align 8
  %178 = getelementptr inbounds %struct.usb_hcd, ptr %12, i32 1, i32 3
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr [256 x i64], ptr %179, i32 0, i32 %177
  %181 = load i64, ptr %180, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %13, ptr noundef nonnull @trace_xhci_dbg_address, ptr noundef nonnull @.str.128, i32 noundef %177, ptr noundef %180, i64 noundef %181) #21
  %182 = load ptr, ptr %32, align 4
  %183 = getelementptr inbounds %struct.xhci_container_ctx, ptr %182, i32 0, i32 3
  %184 = load i32, ptr %183, align 4
  %185 = zext i32 %184 to i64
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %13, ptr noundef nonnull @trace_xhci_dbg_address, ptr noundef nonnull @.str.129, i64 noundef %185) #21
  %186 = load ptr, ptr %60, align 4
  %187 = load i32, ptr %63, align 4
  %188 = lshr i32 %187, 27
  %189 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_address_ctx, i32 0, i32 1), align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %166
  %192 = tail call ptr @llvm.thread.pointer() #21
  %193 = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 2
  %194 = load i32, ptr %193, align 8
  %195 = lshr i32 %194, 5
  %196 = getelementptr i32, ptr @__cpu_online_mask, i32 %195
  %197 = load volatile i32, ptr %196, align 4
  %198 = and i32 %194, 31
  %199 = shl nuw i32 1, %198
  %200 = and i32 %199, %197
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %191
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !135
  %203 = tail call i32 @__traceiter_xhci_address_ctx(ptr noundef null, ptr noundef %13, ptr noundef %186, i32 noundef %188) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !136
  %204 = load i32, ptr %63, align 4
  %205 = lshr i32 %204, 27
  br label %206

206:                                              ; preds = %202, %191, %166
  %207 = phi i32 [ %188, %166 ], [ %188, %191 ], [ %205, %202 ]
  %208 = load ptr, ptr %32, align 4
  %209 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_address_ctx, i32 0, i32 1), align 4
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %206
  %212 = tail call ptr @llvm.thread.pointer() #21
  %213 = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 2
  %214 = load i32, ptr %213, align 8
  %215 = lshr i32 %214, 5
  %216 = getelementptr i32, ptr @__cpu_online_mask, i32 %215
  %217 = load volatile i32, ptr %216, align 4
  %218 = and i32 %214, 31
  %219 = shl nuw i32 1, %218
  %220 = and i32 %219, %217
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %211
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !135
  %223 = tail call i32 @__traceiter_xhci_address_ctx(ptr noundef null, ptr noundef %13, ptr noundef %208, i32 noundef %207) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !136
  br label %224

224:                                              ; preds = %222, %211, %206
  store i32 0, ptr %77, align 4
  store i32 0, ptr %65, align 4
  %225 = load ptr, ptr %32, align 4
  %226 = tail call ptr @xhci_get_slot_ctx(ptr noundef %13, ptr noundef %225) #21
  %227 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %226, i32 0, i32 3
  %228 = load i32, ptr %227, align 4
  %229 = trunc i32 %228 to i8
  %230 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 27
  store i8 %229, ptr %230, align 8
  %231 = load i32, ptr %227, align 4
  %232 = and i32 %231, 255
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %13, ptr noundef nonnull @trace_xhci_dbg_address, ptr noundef nonnull @.str.130, i32 noundef %232) #21
  br label %235

233:                                              ; preds = %56, %51, %27, %22, %11
  %234 = phi i32 [ -12, %56 ], [ -108, %11 ], [ -22, %22 ], [ 0, %51 ], [ -22, %27 ]
  tail call void @mutex_unlock(ptr noundef %14) #21
  br label %239

235:                                              ; preds = %224, %162, %160, %146, %143, %137, %67
  %236 = phi i32 [ %135, %137 ], [ 0, %224 ], [ -22, %67 ], [ -62, %143 ], [ -22, %146 ], [ -19, %160 ], [ -22, %162 ]
  tail call void @mutex_unlock(ptr noundef %14) #21
  %237 = getelementptr inbounds %struct.xhci_command, ptr %57, i32 0, i32 3
  %238 = load ptr, ptr %237, align 4
  tail call void @kfree(ptr noundef %238) #21
  tail call void @kfree(ptr noundef nonnull %57) #21
  br label %239

239:                                              ; preds = %235, %233, %158
  %240 = phi i32 [ -71, %158 ], [ %236, %235 ], [ %234, %233 ]
  ret i32 %240
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_address(ptr noundef %0) #3 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_address, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #21
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !141
  %16 = tail call i32 @__traceiter_xhci_dbg_address(ptr noundef null, ptr noundef %0) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !142
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_setup_addressable_virt_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_copy_ep0_dequeue_into_input_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_xhci_address_ctx(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_address_ctx, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #21
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !135
  %18 = tail call i32 @__traceiter_xhci_address_ctx(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !136
  br label %19

19:                                               ; preds = %17, %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_address_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_setup_device_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_address_ctx(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_address_ctrl_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_setup_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_alloc_tt_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_queue_reset_device(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_is_vendor_info_code(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_clear_endpoint_bw_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_discover_or_reset_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @xhci_check_usb2_port_capability(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #18 {
  %4 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 59
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 58
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %25, %7
  %11 = phi i32 [ 0, %7 ], [ %26, %25 ]
  %12 = getelementptr i32, ptr %9, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %10
  %17 = and i32 %13, 255
  %18 = add nsw i32 %17, -1
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = lshr i32 %13, 8
  %22 = and i32 %21, 255
  %23 = add nsw i32 %18, %22
  %24 = icmp ugt i32 %23, %1
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %16, %10
  %26 = add nuw i32 %11, 1
  %27 = icmp eq i32 %26, %5
  br i1 %27, label %28, label %10

28:                                               ; preds = %25, %20, %3
  %29 = phi i32 [ 0, %3 ], [ 0, %25 ], [ 1, %20 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_change_max_exit_latency(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 12
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #21
  %6 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = zext i16 %2 to i32
  %13 = getelementptr inbounds %struct.xhci_virt_device, ptr %9, i32 0, i32 10
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, %2
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #21
  br label %44

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 41
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr @xhci_get_input_control_ctx(ptr noundef %20) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #21
  %24 = load ptr, ptr %0, align 8
  %25 = load ptr, ptr %24, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.xhci_change_max_exit_latency) #22
  br label %44

26:                                               ; preds = %17
  %27 = load ptr, ptr %19, align 4
  %28 = getelementptr inbounds %struct.xhci_virt_device, ptr %9, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void @xhci_slot_copy(ptr noundef %0, ptr noundef %27, ptr noundef %29) #21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #21
  %30 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %21, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 4
  %33 = load ptr, ptr %19, align 4
  %34 = tail call ptr @xhci_get_slot_ctx(ptr noundef %0, ptr noundef %33) #21
  %35 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, -65536
  %38 = or i32 %37, %12
  store i32 %38, ptr %35, align 4
  %39 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %34, i32 0, i32 3
  store i32 0, ptr %39, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_context_change, ptr noundef nonnull @.str.135) #21
  %40 = tail call fastcc i32 @xhci_configure_endpoint(ptr noundef %0, ptr noundef %1, ptr noundef %19, i1 noundef zeroext true, i1 noundef zeroext true)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #21
  store i16 %2, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %43) #21
  br label %44

44:                                               ; preds = %42, %26, %23, %16
  %45 = phi i32 [ 0, %16 ], [ -12, %23 ], [ 0, %42 ], [ %40, %26 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xhci_calculate_usb2_hw_lpm_params(ptr nocapture noundef readonly %0) unnamed_addr #19 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_host_bos, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_ext_cap_descriptor, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 1
  %8 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 44, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 16
  %11 = icmp eq i32 %10, 0
  %12 = lshr i32 %7, 2
  %13 = and i32 %12, 15360
  %14 = select i1 %11, i32 0, i32 %13
  %15 = xor i1 %11, true
  %16 = zext i1 %15 to i32
  %17 = sdiv i32 %9, 256
  %18 = shl nsw i32 %17, 2
  %19 = and i32 %18, 1020
  %20 = or i32 %14, %16
  %21 = or i32 %20, %19
  ret i32 %21
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @xhci_calculate_hird_besl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 16
  %6 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_host_bos, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_ext_cap_descriptor, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 1
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %60, label %14

14:                                               ; preds = %2
  %15 = icmp ugt i32 %4, 8257535
  br i1 %15, label %16, label %47

16:                                               ; preds = %14
  %17 = icmp ugt i32 %4, 9895935
  br i1 %17, label %18, label %47

18:                                               ; preds = %16
  %19 = icmp ugt i32 %4, 13172735
  br i1 %19, label %20, label %47

20:                                               ; preds = %18
  %21 = icmp ugt i32 %4, 19726335
  br i1 %21, label %22, label %47

22:                                               ; preds = %20
  %23 = icmp ugt i32 %4, 26279935
  br i1 %23, label %24, label %47

24:                                               ; preds = %22
  %25 = icmp ugt i32 %4, 32833535
  br i1 %25, label %26, label %47

26:                                               ; preds = %24
  %27 = icmp ugt i32 %4, 65601535
  br i1 %27, label %28, label %47

28:                                               ; preds = %26
  %29 = icmp ugt i32 %4, 131137535
  br i1 %29, label %30, label %47

30:                                               ; preds = %28
  %31 = icmp ugt i32 %4, 196673535
  br i1 %31, label %32, label %47

32:                                               ; preds = %30
  %33 = icmp ugt i32 %4, 262209535
  br i1 %33, label %34, label %47

34:                                               ; preds = %32
  %35 = icmp ugt i32 %4, 327745535
  br i1 %35, label %36, label %47

36:                                               ; preds = %34
  %37 = icmp ugt i32 %4, 393281535
  br i1 %37, label %38, label %47

38:                                               ; preds = %36
  %39 = icmp ugt i32 %4, 458817535
  br i1 %39, label %40, label %47

40:                                               ; preds = %38
  %41 = icmp ugt i32 %4, 524353535
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = icmp ugt i32 %4, 589889535
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = icmp ugt i32 %4, 655425535
  %46 = select i1 %45, i32 16, i32 15
  br label %47

47:                                               ; preds = %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14
  %48 = phi i32 [ 0, %14 ], [ 1, %16 ], [ 2, %18 ], [ 3, %20 ], [ 4, %22 ], [ 5, %24 ], [ 6, %26 ], [ 7, %28 ], [ 8, %30 ], [ 9, %32 ], [ 10, %34 ], [ 11, %36 ], [ 12, %38 ], [ 13, %40 ], [ 14, %42 ], [ %46, %44 ]
  %49 = and i32 %11, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = lshr i32 %11, 8
  %53 = and i32 %52, 15
  br label %66

54:                                               ; preds = %47
  %55 = and i32 %11, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = lshr i32 %11, 12
  %59 = and i32 %58, 15
  br label %66

60:                                               ; preds = %2
  %61 = icmp ult i32 %4, 3342336
  br i1 %61, label %66, label %62

62:                                               ; preds = %60
  %63 = add nsw i32 %5, -51
  %64 = sdiv i32 %63, 75
  %65 = add nuw nsw i32 %64, 1
  br label %66

66:                                               ; preds = %62, %60, %57, %54, %51
  %67 = phi i32 [ %48, %51 ], [ %48, %57 ], [ %48, %54 ], [ %65, %62 ], [ 0, %60 ]
  %68 = phi i32 [ %53, %51 ], [ %59, %57 ], [ 0, %54 ], [ 0, %62 ], [ 0, %60 ]
  %69 = add nuw nsw i32 %68, %67
  %70 = tail call i32 @llvm.smin.i32(i32 %69, i32 15)
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_update_timeout_for_endpoint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  switch i32 %3, label %170 [
    i32 1, label %6
    i32 2, label %95
  ]

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 3
  %10 = trunc i8 %8 to i2
  switch i2 %10, label %23 [
    i2 -1, label %11
    i2 1, label %11
  ]

11:                                               ; preds = %6, %6
  %12 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %14, -1
  %16 = zext i32 %15 to i64
  %17 = shl i64 125, %16
  %18 = mul i64 %17, 1000
  %19 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %18, %21
  br i1 %22, label %23, label %170

23:                                               ; preds = %11, %6
  %24 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 4096
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %69, label %28

28:                                               ; preds = %23
  %29 = zext i8 %9 to i32
  switch i32 %29, label %68 [
    i32 0, label %30
    i32 2, label %35
    i32 3, label %40
    i32 1, label %48
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, 3
  %34 = zext i32 %33 to i64
  br label %73

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = mul i32 %37, 5
  %39 = zext i32 %38 to i64
  br label %73

40:                                               ; preds = %28
  %41 = and i8 %8, 48
  %42 = icmp eq i8 %41, 16
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, 3
  %47 = zext i32 %46 to i64
  br label %73

48:                                               ; preds = %40, %28
  %49 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 5
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %51, -1
  %53 = zext i32 %52 to i64
  %54 = shl i64 125, %53
  %55 = mul i64 %54, 105000
  %56 = add i64 %55, 99
  %57 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %56, i32 0) #24, !srcloc !143
  %58 = extractvalue { i64, i32 } %57, 0
  %59 = extractvalue { i64, i32 } %57, 1
  %60 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %56, i64 %58, i32 %59) #24, !srcloc !144
  %61 = extractvalue { i64, i32 } %60, 0
  %62 = lshr i64 %61, 6
  %63 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = shl i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = tail call i64 @llvm.umax.i64(i64 %62, i64 %66) #21
  br label %73

68:                                               ; preds = %28
  unreachable

69:                                               ; preds = %23
  %70 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = zext i32 %71 to i64
  br label %73

73:                                               ; preds = %69, %48, %43, %35, %30
  %74 = phi i32 [ %71, %69 ], [ %45, %43 ], [ %37, %35 ], [ %32, %30 ], [ %64, %48 ]
  %75 = phi i64 [ %72, %69 ], [ %47, %43 ], [ %39, %35 ], [ %34, %30 ], [ %67, %48 ]
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %166, label %77

77:                                               ; preds = %73
  %78 = add nuw nsw i64 %75, 999
  %79 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %78, i32 0) #24, !srcloc !143
  %80 = extractvalue { i64, i32 } %79, 0
  %81 = extractvalue { i64, i32 } %79, 1
  %82 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %78, i64 %80, i32 %81) #24, !srcloc !144
  %83 = extractvalue { i64, i32 } %82, 0
  %84 = lshr i64 %83, 9
  %85 = icmp ult i64 %83, 65536
  %86 = trunc i64 %84 to i16
  br i1 %85, label %163, label %87

87:                                               ; preds = %77
  %88 = add i32 %74, -255001
  %89 = icmp ult i32 %88, -256000
  br i1 %89, label %170, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 45, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, -255001
  %94 = icmp ult i32 %93, -256000
  br i1 %94, label %170, label %166

95:                                               ; preds = %5
  %96 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 3
  %97 = load i8, ptr %96, align 1
  %98 = trunc i8 %97 to i2
  switch i2 %98, label %111 [
    i2 -1, label %99
    i2 1, label %99
  ]

99:                                               ; preds = %95, %95
  %100 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 5
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %102, -1
  %104 = zext i32 %103 to i64
  %105 = shl i64 125, %104
  %106 = mul i64 %105, 1000
  %107 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46
  %108 = load i32, ptr %107, align 4
  %109 = zext i32 %108 to i64
  %110 = icmp ugt i64 %106, %109
  br i1 %110, label %111, label %170

111:                                              ; preds = %99, %95
  %112 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %113 = load i64, ptr %112, align 8
  %114 = and i64 %113, 4096
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %111
  switch i2 %98, label %126 [
    i2 -1, label %117
    i2 1, label %117
  ]

117:                                              ; preds = %116, %116
  %118 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %2, i32 0, i32 5
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i32
  %121 = add nsw i32 %120, -1
  %122 = zext i32 %121 to i64
  %123 = shl i64 125, %122
  %124 = mul i64 %123, 1000
  %125 = tail call i64 @llvm.umax.i64(i64 %124, i64 10000000) #21
  br label %126

126:                                              ; preds = %117, %116
  %127 = phi i64 [ %125, %117 ], [ 10000000, %116 ]
  %128 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 18
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.usb_host_bos, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %131, i32 0, i32 7
  %133 = load i16, ptr %132, align 1
  %134 = zext i16 %133 to i64
  %135 = mul nuw nsw i64 %134, 1000
  %136 = tail call i64 @llvm.umax.i64(i64 %135, i64 %127) #21
  br label %141

137:                                              ; preds = %111
  %138 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = zext i32 %139 to i64
  br label %141

141:                                              ; preds = %137, %126
  %142 = phi i64 [ %136, %126 ], [ %140, %137 ]
  %143 = add i64 %142, 255999
  %144 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %143, i32 0) #24, !srcloc !143
  %145 = extractvalue { i64, i32 } %144, 0
  %146 = extractvalue { i64, i32 } %144, 1
  %147 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %143, i64 %145, i32 %146) #24, !srcloc !144
  %148 = extractvalue { i64, i32 } %147, 0
  %149 = icmp ult i64 %148, 33423360
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = lshr i64 %148, 17
  %152 = trunc i64 %151 to i16
  br label %163

153:                                              ; preds = %141
  %154 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46, i32 2
  %155 = load i32, ptr %154, align 4
  %156 = add i32 %155, -65535001
  %157 = icmp ult i32 %156, -65536000
  br i1 %157, label %170, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 46, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = add i32 %160, -65535001
  %162 = icmp ult i32 %161, -65536000
  br i1 %162, label %170, label %166

163:                                              ; preds = %150, %77
  %164 = phi i16 [ %86, %77 ], [ %152, %150 ]
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %163, %158, %90, %73
  %167 = phi i16 [ %164, %163 ], [ 255, %158 ], [ 1, %73 ], [ 255, %90 ]
  %168 = load i16, ptr %4, align 2
  %169 = icmp ugt i16 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %166, %163, %158, %153, %99, %90, %87, %11, %5
  %171 = phi i16 [ 0, %153 ], [ 0, %158 ], [ 0, %87 ], [ 0, %90 ], [ 0, %99 ], [ 0, %11 ], [ 0, %5 ], [ 0, %163 ], [ %167, %166 ]
  %172 = phi i32 [ -7, %153 ], [ -7, %158 ], [ -7, %87 ], [ -7, %90 ], [ -7, %99 ], [ -7, %11 ], [ -7, %5 ], [ -7, %163 ], [ 0, %166 ]
  store i16 %171, ptr %4, align 2
  br label %173

173:                                              ; preds = %170, %166
  %174 = phi i32 [ 0, %166 ], [ %172, %170 ]
  ret i32 %174
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @xhci_debugfs_create_root() local_unnamed_addr #4 section ".init.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readnone }

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
!8 = !{i64 3978945}
!9 = !{i64 2154942548}
!10 = !{i64 2154942840}
!11 = !{i64 2154943872}
!12 = !{i64 2154944267}
!13 = !{i64 2154944458}
!14 = !{i64 3978527}
!15 = !{i64 2154068402}
!16 = !{i64 2154068546}
!17 = !{i64 2154945714}
!18 = !{i64 2154945928}
!19 = !{i64 2154947471}
!20 = !{i64 2154949476}
!21 = !{i64 2154949680}
!22 = !{i64 2153621554}
!23 = !{i64 2153621852}
!24 = !{i64 2154974929}
!25 = !{i64 2154975142}
!26 = !{i64 2154975634}
!27 = !{i64 2154975848}
!28 = !{i64 2154976346}
!29 = !{i64 2154976682}
!30 = !{i64 2149285806}
!31 = !{i64 2149281630}
!32 = !{i64 2149281705, i64 2149281732, i64 2149281779, i64 2149281801, i64 2149281829, i64 2149281849}
!33 = !{i64 868774}
!34 = !{i64 2149309950}
!35 = !{i64 2154982257}
!36 = !{i64 2154993415}
!37 = !{i64 2154993632}
!38 = !{i64 2153622193}
!39 = !{i64 2153622491}
!40 = !{i64 2154983790}
!41 = !{i64 2154984169}
!42 = !{i64 2154984530}
!43 = !{i64 2154984885}
!44 = !{i64 2154985246}
!45 = !{i64 2154985607}
!46 = !{i64 2154994987}
!47 = !{i64 2154995191}
!48 = !{i64 2154995692}
!49 = !{i64 2154988653}
!50 = !{i64 2154988945}
!51 = !{i64 2154016447}
!52 = !{i64 2154016595}
!53 = !{i64 2154985811}
!54 = !{i64 2154986184}
!55 = !{i64 2154986562}
!56 = !{i64 2154986939}
!57 = !{i64 2154987316}
!58 = !{i64 2154987699}
!59 = !{i64 2155004367}
!60 = !{i64 2155004571}
!61 = !{i64 2155005838}
!62 = !{i64 2155008577}
!63 = !{i64 2155008800}
!64 = !{i64 2155009343}
!65 = !{i64 2155009630}
!66 = !{i64 2155014344}
!67 = !{i64 2155014561}
!68 = !{i64 2154990499}
!69 = !{i64 2154990860}
!70 = !{i64 2154991387}
!71 = !{i64 2154953424}
!72 = !{i64 2154953639}
!73 = !{i64 2154954123}
!74 = !{i64 2154954322}
!75 = !{i32 0, i32 33}
!76 = !{i64 2154457462}
!77 = !{i64 2154461675}
!78 = !{!"auto-init"}
!79 = !{i64 2154656222}
!80 = !{i64 2154656414}
!81 = !{i64 2154618237}
!82 = !{i64 2154618401}
!83 = !{i64 2155129825}
!84 = !{i64 2155134614}
!85 = !{i64 2154477461}
!86 = !{i64 2154477607}
!87 = !{i64 962851, i64 2148452822, i64 2148452848, i64 2148452895, i64 2148452917, i64 2148452945, i64 2148452965}
!88 = !{i64 2148465034, i64 2148465060, i64 2148465089, i64 2148465123, i64 2148465154, i64 2148465177}
!89 = !{i64 2155192621}
!90 = !{i64 2155192993}
!91 = !{i64 2155193368}
!92 = !{i64 2155193735}
!93 = !{i64 2155194102}
!94 = !{i64 2155194466}
!95 = !{i64 2155194870}
!96 = !{i64 2155195237}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2155202933, i64 2155203422, i64 2155202970, i64 2155203026, i64 2155203060, i64 2155203084, i64 2155203125, i64 2155203146, i64 2155203174, i64 2155203208}
!99 = !{i64 2154973378}
!100 = !{i64 2154000209}
!101 = !{i64 2154000373}
!102 = !{i64 2154978802}
!103 = !{i64 2154979025}
!104 = !{i64 2154979568}
!105 = !{i64 2154979855}
!106 = !{i64 2154980412}
!107 = !{i64 2155190752}
!108 = !{i64 2154334830}
!109 = !{i64 2154334980}
!110 = !{i64 2154370591}
!111 = !{i64 2154370741}
!112 = !{i64 2155032767}
!113 = !{i64 2148464541}
!114 = !{i64 949420, i64 949445, i64 949467, i64 949483, i64 949495, i64 949515, i64 949539, i64 949555, i64 949567}
!115 = !{i64 2148464667}
!116 = !{i64 2154493203}
!117 = !{i64 2154493347}
!118 = !{i64 2154530628}
!119 = !{i64 2154530804}
!120 = !{i64 2155148452}
!121 = !{i64 2155150015}
!122 = !{i64 2155150456}
!123 = !{i64 2155150712}
!124 = !{i64 2155151141}
!125 = !{i64 2155151329}
!126 = !{i64 2155151758}
!127 = !{i64 2155151978}
!128 = !{i64 2155152407}
!129 = !{i64 2155153907}
!130 = !{i64 2155154253}
!131 = !{i64 2154052456}
!132 = !{i64 2154052612}
!133 = !{i64 2154547522}
!134 = !{i64 2154547684}
!135 = !{i64 2154105652}
!136 = !{i64 2154105830}
!137 = !{i64 2154635010}
!138 = !{i64 2154635180}
!139 = !{i64 2154285190}
!140 = !{i64 2154285344}
!141 = !{i64 2153984045}
!142 = !{i64 2153984195}
!143 = !{i64 1396791, i64 1396818, i64 1396840, i64 1396868}
!144 = !{i64 1397199, i64 1397226, i64 1397259, i64 1397280, i64 1397307, i64 1397333}
