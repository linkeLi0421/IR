; ModuleID = '/llk/IR/drivers/usb/host/xhci-mem.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-mem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xhci_get_ep_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22xhci_get_ep_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_xhci_get_ep_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xhci_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xhci_segment = type { ptr, ptr, i32, i32, ptr, i32, i32 }
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
%union.xhci_trb = type { %struct.xhci_link_trb }
%struct.xhci_link_trb = type { i64, i32, i32 }
%struct.xhci_virt_device = type { i32, ptr, ptr, ptr, [31 x %struct.xhci_virt_ep], i8, i8, ptr, ptr, i32, i16, ptr }
%struct.xhci_virt_ep = type { ptr, i32, ptr, ptr, ptr, i32, %struct.list_head, %struct.timer_list, ptr, ptr, ptr, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.xhci_container_ctx = type { i32, i32, ptr, i32 }
%struct.xhci_stream_info = type { ptr, i32, ptr, i32, i32, %struct.xarray, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.xhci_stream_ctx = type { i64, [2 x i32] }
%struct.xhci_command = type { ptr, i32, i32, ptr, ptr, %struct.list_head }
%struct.xhci_ep_ctx = type { i32, i32, i64, i32, [3 x i32] }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.xhci_root_port_bw_info = type { %struct.list_head, i32, %struct.xhci_interval_bw_table }
%struct.xhci_interval_bw_table = type { i32, [16 x %struct.xhci_interval_bw], i32, i32, i32 }
%struct.xhci_interval_bw = type { i32, %struct.list_head, [3 x i32] }
%struct.xhci_tt_bw_info = type { %struct.list_head, i32, i32, %struct.xhci_interval_bw_table, i32 }
%struct.xhci_slot_ctx = type { i32, i32, i32, i32, [4 x i32] }
%struct.xhci_input_control_ctx = type { i32, i32, [6 x i32] }
%struct.xhci_erst_entry = type { i64, i32, i32 }
%struct.xhci_device_context_array = type { [256 x i64], i32 }
%struct.xhci_scratchpad = type { ptr, i32, ptr }
%struct.xhci_port_cap = type { ptr, i8, i8, i8, i8 }
%struct.anon.71 = type { i32, ptr }
%struct.anon.72 = type { ptr, ptr, ptr, i32, ptr }
%struct.xhci_op_regs = type { i32, i32, i32, i32, i32, i32, i64, [4 x i32], i64, i32, [241 x i32], i32, i32, i32, i32, [1016 x i32] }
%struct.xhci_cap_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xhci_run_regs = type { i32, [7 x i32], [128 x %struct.xhci_intr_reg] }
%struct.xhci_intr_reg = type { i32, i32, i32, i32, i64, i64 }
%struct.xhci_port = type { ptr, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [44 x i8] c"ring expansion succeed, now has %d segments\00", align 1
@__kstrtab_xhci_get_ep_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_xhci_get_ep_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_xhci_get_ep_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xhci_get_ep_ctx to i32), ptr @__kstrtab_xhci_get_ep_ctx, ptr @__kstrtabns_xhci_get_ep_ctx }, section "___ksymtab_gpl+xhci_get_ep_ctx", align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Setting number of stream ctx array entries to %u\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Slot %u endpoint %u not removed from BW list!\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Bad Slot ID %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Slot ID %d is not assigned to this device\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"WARN: Didn't find a matching TT\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Freed event ring\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Freed command ring\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Freed segment pool\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Freed device context pool\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Freed small stream array pool\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Freed medium stream array pool\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Supported page size register = 0x%x\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Supported page size of %iK\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"WARN: no supported page size\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"HCD page size set to %iK\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"// xHC can handle at most %d device slots.\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"// Setting Max device slots reg = 0x%x.\00", align 1
@.str.18 = private unnamed_addr constant [63 x i8] c"// Device context base array address = 0x%llx (DMA), %p (virt)\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"xHCI ring segments\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"xHCI input/output contexts\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"xHCI 256 byte stream ctx arrays\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"xHCI 1KB stream ctx arrays\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Allocated command ring at %p\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"First segment DMA is 0x%llx\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"// Setting command ring address to 0x%016llx\00", align 1
@.str.26 = private unnamed_addr constant [68 x i8] c"// Doorbell array is located at offset 0x%x from cap regs base addr\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"// Allocating event ring\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"// Write ERST size = %i to ir_set 0 (some bits preserved)\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"// Set ERST entries to point to event ring.\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"// Set ERST base address for ir_set 0 = 0x%llx\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"Wrote ERST address to ir_set 0.\00", align 1
@__tracepoint_xhci_ring_free = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@xhci_remove_stream_mapping.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"drivers/usb/host/xhci-mem.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_xhci_ring_alloc = external dso_local global %struct.tracepoint, align 4
@xhci_update_stream_segment_mapping.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_xhci_ring_expansion = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_dbg_ring_expansion = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_dbg_context_change = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_free_virt_device = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_alloc_virt_device = external dso_local global %struct.tracepoint, align 4
@__tracepoint_xhci_setup_addressable_virt_device = external dso_local global %struct.tracepoint, align 4
@.str.34 = private unnamed_addr constant [43 x i8] c"ep %#x - rounding interval to %d %sframes\0A\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"micro\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@__tracepoint_xhci_dbg_init = external dso_local global %struct.tracepoint, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"Simple\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"Complex\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"WARN: %s TRB math test %d failed!\0A\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"Tested TRB math w/ seg %p and input DMA 0x%llx\0A\00", align 1
@.str.42 = private unnamed_addr constant [58 x i8] c"starting TRB %p (0x%llx DMA), ending TRB %p (0x%llx DMA)\0A\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"Expected seg %p, got seg %p\0A\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"WARN something wrong with SW event ring dequeue ptr.\0A\00", align 1
@.str.45 = private unnamed_addr constant [56 x i8] c"// Write event ring dequeue pointer, preserving EHB bit\00", align 1
@.str.46 = private unnamed_addr constant [33 x i8] c"Allocating %d scratchpad buffers\00", align 1
@.str.47 = private unnamed_addr constant [60 x i8] c"No Extended Capability registers, unable to set up roothub\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"No ports on the roothubs?\0A\00", align 1
@.str.49 = private unnamed_addr constant [45 x i8] c"Found %u USB 2.0 ports and %u USB 3.0 ports.\00", align 1
@.str.50 = private unnamed_addr constant [38 x i8] c"Limiting USB 3.0 roothub ports to %u.\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"Limiting USB 2.0 roothub ports to %u.\00", align 1
@.str.52 = private unnamed_addr constant [58 x i8] c"Ignoring unknown port speed, Ext Cap %p, revision = 0x%x\0A\00", align 1
@.str.53 = private unnamed_addr constant [58 x i8] c"Ext Cap %p, port offset = %u, count = %u, revision = 0x%x\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"xHCI 1.0: support USB2 hardware lpm\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"Duplicate port entry, Ext Cap %p, port %u\0A\00", align 1
@.str.56 = private unnamed_addr constant [49 x i8] c"Port was marked as USB %u, duplicated as USB %u\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_xhci_get_ep_ctx], section "llvm.metadata"
@switch.table.xhci_setup_addressable_virt_dev = private unnamed_addr constant [6 x i32] [i32 136314880, i32 135266304, i32 137363456, i32 139460608, i32 138412032, i32 139460608], align 4
@switch.table.xhci_setup_addressable_virt_dev.57 = private unnamed_addr constant [6 x i32] [i32 524326, i32 4194342, i32 4194342, i32 33554470, i32 33554470, i32 33554470], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_ring_free(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %85, label %4

4:                                                ; preds = %2
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_free, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #15
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %19 = tail call i32 @__traceiter_xhci_ring_free(ptr noundef null, ptr noundef nonnull %1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %20

20:                                               ; preds = %18, %7, %4
  %21 = load ptr, ptr %1, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %84, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 14
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 16
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = load i1, ptr @xhci_remove_stream_mapping.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !11

34:                                               ; preds = %27
  store i1 true, ptr @xhci_remove_stream_mapping.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 263, i32 noundef 9, ptr noundef null) #15
  br label %35

35:                                               ; preds = %34, %27
  %36 = load ptr, ptr %1, align 4
  br i1 %30, label %52, label %37

37:                                               ; preds = %47, %35
  %38 = phi ptr [ %49, %47 ], [ %36, %35 ]
  %39 = load ptr, ptr %28, align 4
  %40 = getelementptr inbounds %struct.xhci_segment, ptr %38, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 12
  %43 = tail call ptr @radix_tree_lookup(ptr noundef %39, i32 noundef %42) #15
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = tail call ptr @radix_tree_delete(ptr noundef %39, i32 noundef %42) #15
  br label %47

47:                                               ; preds = %45, %37
  %48 = getelementptr inbounds %struct.xhci_segment, ptr %38, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %1, align 4
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %37

52:                                               ; preds = %47, %35, %23
  %53 = phi ptr [ %21, %23 ], [ %36, %35 ], [ %49, %47 ]
  %54 = getelementptr inbounds %struct.xhci_segment, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %53
  br i1 %56, label %73, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 45
  br label %59

59:                                               ; preds = %69, %57
  %60 = phi ptr [ %55, %57 ], [ %62, %69 ]
  %61 = getelementptr inbounds %struct.xhci_segment, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %60, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %58, align 8
  %67 = getelementptr inbounds %struct.xhci_segment, ptr %60, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  tail call void @dma_pool_free(ptr noundef %66, ptr noundef nonnull %63, i32 noundef %68) #15
  store ptr null, ptr %60, align 4
  br label %69

69:                                               ; preds = %65, %59
  %70 = getelementptr inbounds %struct.xhci_segment, ptr %60, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  tail call void @kfree(ptr noundef %71) #15
  tail call void @kfree(ptr noundef %60) #15
  %72 = icmp eq ptr %62, %53
  br i1 %72, label %73, label %59

73:                                               ; preds = %69, %52
  %74 = load ptr, ptr %53, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 45
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.xhci_segment, ptr %53, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  tail call void @dma_pool_free(ptr noundef %78, ptr noundef nonnull %74, i32 noundef %80) #15
  store ptr null, ptr %53, align 4
  br label %81

81:                                               ; preds = %76, %73
  %82 = getelementptr inbounds %struct.xhci_segment, ptr %53, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  tail call void @kfree(ptr noundef %83) #15
  tail call void @kfree(ptr noundef %53) #15
  br label %84

84:                                               ; preds = %81, %20
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %85

85:                                               ; preds = %84, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xhci_initialize_ring_info(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xhci_ring, ptr %0, i32 0, i32 2
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.xhci_ring, ptr %0, i32 0, i32 3
  store ptr %3, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xhci_ring, ptr %0, i32 0, i32 4
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xhci_ring, ptr %0, i32 0, i32 5
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xhci_ring, ptr %0, i32 0, i32 7
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.xhci_ring, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, 255
  %13 = add i32 %12, -1
  %14 = getelementptr inbounds %struct.xhci_ring, ptr %0, i32 0, i32 11
  store i32 %13, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xhci_ring_alloc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = or i32 %5, 256
  %8 = and i32 %5, 17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !12

10:                                               ; preds = %6
  %11 = and i32 %5, 1
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 1, i32 2
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 0, %6 ], [ %13, %10 ]
  %16 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %15, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef %7, i32 noundef 72) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %67, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.xhci_ring, ptr %18, i32 0, i32 10
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.xhci_ring, ptr %18, i32 0, i32 13
  store i32 %4, ptr %22, align 8
  %23 = getelementptr inbounds %struct.xhci_ring, ptr %18, i32 0, i32 6
  store volatile ptr %23, ptr %23, align 8
  %24 = getelementptr inbounds %struct.xhci_ring, ptr %18, i32 0, i32 6, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.xhci_ring, ptr %18, i32 0, i32 14
  store i32 %3, ptr %25, align 4
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %67, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.xhci_ring, ptr %18, i32 0, i32 1
  %29 = tail call fastcc i32 @xhci_alloc_segments_for_ring(ptr noundef %0, ptr noundef nonnull %18, ptr noundef %28, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = icmp eq i32 %3, 6
  br i1 %32, label %39, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr %28, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr %union.xhci_trb, ptr %35, i32 255, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, 2
  store i32 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %33, %31
  %40 = load ptr, ptr %18, align 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.xhci_ring, ptr %18, i32 0, i32 2
  store ptr %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.xhci_ring, ptr %18, i32 0, i32 3
  store ptr %40, ptr %43, align 4
  %44 = getelementptr inbounds %struct.xhci_ring, ptr %18, i32 0, i32 4
  store ptr %41, ptr %44, align 8
  %45 = getelementptr inbounds %struct.xhci_ring, ptr %18, i32 0, i32 5
  store ptr %40, ptr %45, align 4
  %46 = getelementptr inbounds %struct.xhci_ring, ptr %18, i32 0, i32 7
  store i32 %2, ptr %46, align 8
  %47 = load i32, ptr %21, align 4
  %48 = mul i32 %47, 255
  %49 = add i32 %48, -1
  %50 = getelementptr inbounds %struct.xhci_ring, ptr %18, i32 0, i32 11
  store i32 %49, ptr %50, align 8
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_alloc, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %39
  %54 = tail call ptr @llvm.thread.pointer() #15
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 5
  %58 = getelementptr i32, ptr @__cpu_online_mask, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %56, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  %65 = tail call i32 @__traceiter_xhci_ring_alloc(ptr noundef null, ptr noundef nonnull %18) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !14
  br label %67

66:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %18) #15
  br label %67

67:                                               ; preds = %66, %64, %53, %39, %20, %14
  %68 = phi ptr [ null, %66 ], [ null, %14 ], [ %18, %20 ], [ %18, %39 ], [ %18, %53 ], [ %18, %64 ]
  ret ptr %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_alloc_segments_for_ring(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = icmp eq i32 %5, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = and i64 %10, 512
  %17 = icmp eq i64 %16, 0
  %18 = select i1 %17, i32 6144, i32 6160
  br label %19

19:                                               ; preds = %15, %13, %8
  %20 = phi i32 [ 6160, %8 ], [ 6144, %13 ], [ %18, %15 ]
  %21 = tail call fastcc ptr @xhci_segment_alloc(ptr noundef %0, i32 noundef %4, i32 noundef %6, i32 noundef %7)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %90, label %23

23:                                               ; preds = %19
  %24 = add i32 %3, -1
  store ptr %21, ptr %1, align 4
  %25 = icmp eq i32 %5, 6
  %26 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 45
  br label %27

27:                                               ; preds = %68, %23
  %28 = phi i32 [ %24, %23 ], [ %69, %68 ]
  %29 = phi ptr [ %21, %23 ], [ %70, %68 ]
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %71, label %31

31:                                               ; preds = %27
  %32 = tail call fastcc ptr @xhci_segment_alloc(ptr noundef %0, i32 noundef %4, i32 noundef %6, i32 noundef %7)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load ptr, ptr %1, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %90, label %37

37:                                               ; preds = %47, %34
  %38 = phi ptr [ %40, %47 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.xhci_segment, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %38, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %26, align 8
  %45 = getelementptr inbounds %struct.xhci_segment, ptr %38, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  tail call void @dma_pool_free(ptr noundef %44, ptr noundef nonnull %41, i32 noundef %46) #15
  store ptr null, ptr %38, align 4
  br label %47

47:                                               ; preds = %43, %37
  %48 = getelementptr inbounds %struct.xhci_segment, ptr %38, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  tail call void @kfree(ptr noundef %49) #15
  tail call void @kfree(ptr noundef nonnull %38) #15
  %50 = icmp eq ptr %40, null
  br i1 %50, label %68, label %37

51:                                               ; preds = %31
  %52 = icmp eq ptr %29, null
  br i1 %52, label %66, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.xhci_segment, ptr %29, i32 0, i32 1
  store ptr %32, ptr %54, align 4
  br i1 %25, label %66, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.xhci_segment, ptr %32, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = zext i32 %57 to i64
  %59 = load ptr, ptr %29, align 4
  %60 = getelementptr %union.xhci_trb, ptr %59, i32 255
  store i64 %58, ptr %60, align 8
  %61 = load ptr, ptr %29, align 4
  %62 = getelementptr %union.xhci_trb, ptr %61, i32 255, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, -64513
  %65 = or i32 %64, %20
  store i32 %65, ptr %62, align 4
  br label %66

66:                                               ; preds = %55, %53, %51
  %67 = add i32 %28, -1
  br label %68

68:                                               ; preds = %66, %47
  %69 = phi i32 [ %67, %66 ], [ %28, %47 ]
  %70 = phi ptr [ %32, %66 ], [ null, %47 ]
  br i1 %33, label %90, label %27

71:                                               ; preds = %27
  %72 = load ptr, ptr %1, align 4
  %73 = icmp ne ptr %29, null
  %74 = icmp ne ptr %72, null
  %75 = and i1 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.xhci_segment, ptr %29, i32 0, i32 1
  store ptr %72, ptr %77, align 4
  br i1 %25, label %89, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.xhci_segment, ptr %72, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = zext i32 %80 to i64
  %82 = load ptr, ptr %29, align 4
  %83 = getelementptr %union.xhci_trb, ptr %82, i32 255
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %29, align 4
  %85 = getelementptr %union.xhci_trb, ptr %84, i32 255, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, -64513
  %88 = or i32 %87, %20
  store i32 %88, ptr %85, align 4
  br label %89

89:                                               ; preds = %78, %76, %71
  store ptr %29, ptr %2, align 4
  br label %90

90:                                               ; preds = %89, %68, %34, %19
  %91 = phi i32 [ 0, %89 ], [ -12, %19 ], [ -12, %68 ], [ -12, %34 ]
  ret i32 %91
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_free_endpoint_ring(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %2, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @xhci_ring_free(ptr noundef %0, ptr noundef %5)
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_ring_expansion(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store ptr null, ptr %5, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store ptr null, ptr %6, align 4, !annotation !15
  %7 = add i32 %2, 254
  %8 = udiv i32 %7, 255
  %9 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 %8)
  %12 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 14
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = call fastcc i32 @xhci_alloc_segments_for_ring(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %3)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %173

20:                                               ; preds = %4
  %21 = load i32, ptr %14, align 4
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 4
  %25 = load ptr, ptr %6, align 4
  br label %49

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %5, align 4
  %30 = load ptr, ptr %6, align 4
  %31 = tail call fastcc i32 @xhci_update_stream_segment_mapping(ptr noundef %28, ptr noundef %1, ptr noundef %29, ptr noundef %30, i32 noundef %3)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 45
  br label %35

35:                                               ; preds = %45, %33
  %36 = phi ptr [ %29, %33 ], [ %38, %45 ]
  %37 = getelementptr inbounds %struct.xhci_segment, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %36, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %34, align 8
  %43 = getelementptr inbounds %struct.xhci_segment, ptr %36, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  tail call void @dma_pool_free(ptr noundef %42, ptr noundef nonnull %39, i32 noundef %44) #15
  store ptr null, ptr %36, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = getelementptr inbounds %struct.xhci_segment, ptr %36, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  tail call void @kfree(ptr noundef %47) #15
  tail call void @kfree(ptr noundef %36) #15
  %48 = icmp eq ptr %36, %30
  br i1 %48, label %173, label %35

49:                                               ; preds = %26, %23
  %50 = phi ptr [ %25, %23 ], [ %30, %26 ]
  %51 = phi ptr [ %24, %23 ], [ %29, %26 ]
  %52 = icmp ne ptr %1, null
  %53 = icmp ne ptr %51, null
  %54 = and i1 %52, %53
  %55 = icmp ne ptr %50, null
  %56 = and i1 %54, %55
  br i1 %56, label %57, label %155

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 1
  %61 = icmp eq i64 %60, 0
  %62 = load i32, ptr %14, align 4
  br i1 %61, label %63, label %65

63:                                               ; preds = %57
  %64 = icmp eq i32 %62, 1
  br i1 %64, label %72, label %65

65:                                               ; preds = %63, %57
  %66 = phi i32 [ 6144, %63 ], [ 6160, %57 ]
  %67 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.xhci_segment, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %68, null
  br i1 %71, label %104, label %82

72:                                               ; preds = %63
  %73 = and i64 %59, 512
  %74 = icmp eq i64 %73, 0
  %75 = select i1 %74, i32 6144, i32 6160
  %76 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.xhci_segment, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %77, null
  br i1 %80, label %110, label %81

81:                                               ; preds = %72
  store ptr %51, ptr %78, align 4
  br label %84

82:                                               ; preds = %65
  store ptr %51, ptr %69, align 4
  %83 = icmp eq i32 %62, 6
  br i1 %83, label %99, label %84

84:                                               ; preds = %82, %81
  %85 = phi i32 [ %75, %81 ], [ %66, %82 ]
  %86 = phi ptr [ %76, %81 ], [ %67, %82 ]
  %87 = phi ptr [ %77, %81 ], [ %68, %82 ]
  %88 = phi ptr [ %79, %81 ], [ %70, %82 ]
  %89 = getelementptr inbounds %struct.xhci_segment, ptr %51, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = zext i32 %90 to i64
  %92 = load ptr, ptr %87, align 4
  %93 = getelementptr %union.xhci_trb, ptr %92, i32 255
  store i64 %91, ptr %93, align 8
  %94 = load ptr, ptr %87, align 4
  %95 = getelementptr %union.xhci_trb, ptr %94, i32 255, i32 0, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, -64513
  %98 = or i32 %97, %85
  store i32 %98, ptr %95, align 4
  br label %99

99:                                               ; preds = %84, %82
  %100 = phi ptr [ %86, %84 ], [ %67, %82 ]
  %101 = phi ptr [ %88, %84 ], [ %70, %82 ]
  %102 = phi i32 [ %85, %84 ], [ %66, %82 ]
  %103 = load i32, ptr %14, align 4
  br label %104

104:                                              ; preds = %99, %65
  %105 = phi ptr [ %101, %99 ], [ %70, %65 ]
  %106 = phi ptr [ %100, %99 ], [ %67, %65 ]
  %107 = phi i32 [ %102, %99 ], [ %66, %65 ]
  %108 = phi i32 [ %103, %99 ], [ %62, %65 ]
  %109 = icmp eq ptr %105, null
  br i1 %109, label %131, label %114

110:                                              ; preds = %72
  %111 = icmp eq ptr %79, null
  br i1 %111, label %131, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.xhci_segment, ptr %50, i32 0, i32 1
  store ptr %79, ptr %113, align 4
  br label %117

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.xhci_segment, ptr %50, i32 0, i32 1
  store ptr %105, ptr %115, align 4
  %116 = icmp eq i32 %108, 6
  br i1 %116, label %131, label %117

117:                                              ; preds = %114, %112
  %118 = phi ptr [ %79, %112 ], [ %105, %114 ]
  %119 = phi ptr [ %76, %112 ], [ %106, %114 ]
  %120 = phi i32 [ %75, %112 ], [ %107, %114 ]
  %121 = getelementptr inbounds %struct.xhci_segment, ptr %118, i32 0, i32 2
  %122 = load i32, ptr %121, align 4
  %123 = zext i32 %122 to i64
  %124 = load ptr, ptr %50, align 4
  %125 = getelementptr %union.xhci_trb, ptr %124, i32 255
  store i64 %123, ptr %125, align 8
  %126 = load ptr, ptr %50, align 4
  %127 = getelementptr %union.xhci_trb, ptr %126, i32 255, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, -64513
  %130 = or i32 %129, %120
  store i32 %130, ptr %127, align 4
  br label %131

131:                                              ; preds = %117, %114, %110, %104
  %132 = phi ptr [ %76, %110 ], [ %106, %104 ], [ %106, %114 ], [ %119, %117 ]
  %133 = load i32, ptr %9, align 4
  %134 = add i32 %133, %11
  store i32 %134, ptr %9, align 4
  %135 = mul i32 %11, 255
  %136 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 11
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, %135
  store i32 %138, ptr %136, align 4
  %139 = load i32, ptr %14, align 4
  %140 = icmp eq i32 %139, 6
  br i1 %140, label %155, label %141

141:                                              ; preds = %131
  %142 = load ptr, ptr %132, align 4
  %143 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %142, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load ptr, ptr %142, align 4
  %148 = getelementptr %union.xhci_trb, ptr %147, i32 255, i32 0, i32 2
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, -3
  store i32 %150, ptr %148, align 4
  %151 = load ptr, ptr %50, align 4
  %152 = getelementptr %union.xhci_trb, ptr %151, i32 255, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = or i32 %153, 2
  store i32 %154, ptr %152, align 4
  store ptr %50, ptr %143, align 4
  br label %155

155:                                              ; preds = %146, %141, %131, %49
  %156 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_expansion, i32 0, i32 1), align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = tail call ptr @llvm.thread.pointer() #15
  %160 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 2
  %161 = load i32, ptr %160, align 8
  %162 = lshr i32 %161, 5
  %163 = getelementptr i32, ptr @__cpu_online_mask, i32 %162
  %164 = load volatile i32, ptr %163, align 4
  %165 = and i32 %161, 31
  %166 = shl nuw i32 1, %165
  %167 = and i32 %166, %164
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %158
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %170 = tail call i32 @__traceiter_xhci_ring_expansion(ptr noundef null, ptr noundef %1) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  br label %171

171:                                              ; preds = %169, %158, %155
  %172 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_ring_expansion, ptr noundef nonnull @.str, i32 noundef %172) #15
  br label %173

173:                                              ; preds = %171, %45, %4
  %174 = phi i32 [ 0, %171 ], [ -12, %4 ], [ %31, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %174
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_update_stream_segment_mapping(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readnone %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  %7 = load i1, ptr @xhci_update_stream_segment_mapping.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %5
  store i1 true, ptr @xhci_update_stream_segment_mapping.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %5
  br i1 %6, label %51, label %12

12:                                               ; preds = %32, %11
  %13 = phi ptr [ %34, %32 ], [ %2, %11 ]
  %14 = getelementptr inbounds %struct.xhci_segment, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 12
  %17 = tail call ptr @radix_tree_lookup(ptr noundef nonnull %0, i32 noundef %16) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = tail call i32 @radix_tree_maybe_preload(i32 noundef %4) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = tail call i32 @radix_tree_insert(ptr noundef nonnull %0, i32 noundef %16, ptr noundef %1) #15
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #13, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %27 = icmp eq i32 %23, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22, %19
  %29 = phi i32 [ %23, %22 ], [ %20, %19 ]
  br label %36

30:                                               ; preds = %22, %12
  %31 = icmp eq ptr %13, %3
  br i1 %31, label %51, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.xhci_segment, ptr %13, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %2
  br i1 %35, label %51, label %12

36:                                               ; preds = %47, %28
  %37 = phi ptr [ %49, %47 ], [ %2, %28 ]
  %38 = getelementptr inbounds %struct.xhci_segment, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 12
  %41 = tail call ptr @radix_tree_lookup(ptr noundef nonnull %0, i32 noundef %40) #15
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = tail call ptr @radix_tree_delete(ptr noundef nonnull %0, i32 noundef %40) #15
  br label %45

45:                                               ; preds = %43, %36
  %46 = icmp eq ptr %37, %13
  br i1 %46, label %51, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.xhci_segment, ptr %37, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %2
  br i1 %50, label %51, label %36

51:                                               ; preds = %47, %45, %32, %30, %11
  %52 = phi i32 [ 0, %11 ], [ %29, %45 ], [ %29, %47 ], [ 0, %30 ], [ 0, %32 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_dbg_trace(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_ring_expansion(ptr noundef %0) #4 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_ring_expansion, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %16 = tail call i32 @__traceiter_xhci_dbg_ring_expansion(ptr noundef null, ptr noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xhci_alloc_container_ctx(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %1, -3
  %5 = icmp ult i32 %4, -2
  br i1 %5, label %37, label %6

6:                                                ; preds = %3
  %7 = or i32 %2, 256
  %8 = and i32 %2, 17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !12

10:                                               ; preds = %6
  %11 = and i32 %2, 1
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 1, i32 2
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 0, %6 ], [ %13, %10 ]
  %16 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %15, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef %7, i32 noundef 16) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %14
  store i32 %1, ptr %18, align 8
  %21 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 1024, i32 2048
  %26 = getelementptr inbounds %struct.xhci_container_ctx, ptr %18, i32 0, i32 1
  %27 = icmp eq i32 %1, 2
  %28 = select i1 %24, i32 1056, i32 2112
  %29 = select i1 %27, i32 %28, i32 %25
  store i32 %29, ptr %26, align 4
  %30 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.xhci_container_ctx, ptr %18, i32 0, i32 3
  %33 = tail call ptr @dma_pool_alloc(ptr noundef %31, i32 noundef %7, ptr noundef %32) #15
  %34 = getelementptr inbounds %struct.xhci_container_ctx, ptr %18, i32 0, i32 2
  store ptr %33, ptr %34, align 8
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  tail call void @kfree(ptr noundef nonnull %18) #15
  br label %37

37:                                               ; preds = %36, %20, %14, %3
  %38 = phi ptr [ null, %36 ], [ null, %3 ], [ null, %14 ], [ %18, %20 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_free_container_ctx(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xhci_container_ctx, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xhci_container_ctx, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  tail call void @dma_pool_free(ptr noundef %6, ptr noundef %8, i32 noundef %10) #15
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @xhci_get_input_control_ctx(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.xhci_container_ctx, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @xhci_get_slot_ctx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 1
  %5 = getelementptr inbounds %struct.xhci_container_ctx, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 32, i32 64
  %13 = getelementptr i8, ptr %6, i32 %12
  br label %14

14:                                               ; preds = %7, %2
  %15 = phi ptr [ %13, %7 ], [ %6, %2 ]
  ret ptr %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @xhci_get_ep_ctx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, 2
  %6 = select i1 %5, i32 2, i32 1
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %struct.xhci_container_ctx, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 32, i32 64
  %15 = mul i32 %14, %7
  %16 = getelementptr i8, ptr %9, i32 %15
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xhci_dma_to_transfer_ring(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.xhci_virt_ep, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.xhci_virt_ep, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xhci_stream_info, ptr %9, i32 0, i32 5
  %11 = lshr i64 %1, 12
  %12 = trunc i64 %11 to i32
  %13 = tail call ptr @radix_tree_lookup(ptr noundef %10, i32 noundef %12) #15
  br label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.xhci_virt_ep, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi ptr [ %13, %7 ], [ %16, %14 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xhci_alloc_stream_info(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 32
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 253
  br i1 %8, label %135, label %9

9:                                                ; preds = %5
  %10 = add i32 %7, 1
  store i32 %10, ptr %6, align 4
  %11 = or i32 %4, 256
  %12 = and i32 %4, 17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !12

14:                                               ; preds = %9
  %15 = and i32 %4, 1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 1, i32 2
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i32 [ 0, %9 ], [ %17, %14 ]
  %20 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %19, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef %11, i32 noundef 36) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %132, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.xhci_stream_info, ptr %22, i32 0, i32 1
  store i32 %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.xhci_stream_info, ptr %22, i32 0, i32 3
  store i32 %1, ptr %26, align 4
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #15
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %29, label %30, !prof !11

29:                                               ; preds = %24
  store ptr null, ptr %22, align 8
  br label %131

30:                                               ; preds = %24
  %31 = extractvalue { i32, i1 } %27, 0
  %32 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %31, i32 noundef %11) #17
  store ptr %32, ptr %22, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %131, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.xhci_stream_info, ptr %22, i32 0, i32 4
  %36 = shl i32 %1, 4
  %37 = icmp ugt i32 %36, 1024
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr inbounds %struct.usb_bus, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = lshr i32 %4, 5
  %43 = and i32 %42, 256
  %44 = tail call ptr @dma_alloc_attrs(ptr noundef %41, i32 noundef %36, ptr noundef %35, i32 noundef %4, i32 noundef %43) #15
  br label %55

45:                                               ; preds = %34
  %46 = icmp ult i32 %36, 257
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 46
  %49 = load ptr, ptr %48, align 4
  %50 = tail call ptr @dma_pool_alloc(ptr noundef %49, i32 noundef %4, ptr noundef %35) #15
  br label %55

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 47
  %53 = load ptr, ptr %52, align 8
  %54 = tail call ptr @dma_pool_alloc(ptr noundef %53, i32 noundef %4, ptr noundef %35) #15
  br label %55

55:                                               ; preds = %51, %47, %38
  %56 = phi ptr [ %44, %38 ], [ %50, %47 ], [ %54, %51 ]
  %57 = getelementptr inbounds %struct.xhci_stream_info, ptr %22, i32 0, i32 2
  store ptr %56, ptr %57, align 8
  %58 = icmp eq ptr %56, null
  br i1 %58, label %129, label %59

59:                                               ; preds = %55
  tail call void @llvm.memset.p0.i32(ptr nonnull align 8 %56, i8 0, i32 %36, i1 false)
  %60 = tail call ptr @xhci_alloc_command_with_ctx(ptr noundef %0, i1 noundef zeroext true, i32 noundef %4)
  %61 = getelementptr inbounds %struct.xhci_stream_info, ptr %22, i32 0, i32 6
  store ptr %60, ptr %61, align 8
  %62 = icmp eq ptr %60, null
  br i1 %62, label %129, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.xhci_stream_info, ptr %22, i32 0, i32 5
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.xhci_stream_info, ptr %22, i32 0, i32 5, i32 1
  store i32 2592, ptr %65, align 8
  %66 = getelementptr inbounds %struct.xhci_stream_info, ptr %22, i32 0, i32 5, i32 2
  store ptr null, ptr %66, align 4
  %67 = icmp ugt i32 %2, 1
  br i1 %67, label %68, label %135

68:                                               ; preds = %100, %63
  %69 = phi i32 [ %101, %100 ], [ 1, %63 ]
  %70 = tail call ptr @xhci_ring_alloc(ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 4, i32 noundef %3, i32 noundef %4)
  %71 = load ptr, ptr %22, align 8
  %72 = getelementptr ptr, ptr %71, i32 %69
  store ptr %70, ptr %72, align 4
  %73 = load ptr, ptr %22, align 8
  %74 = getelementptr ptr, ptr %73, i32 %69
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %99, label %77

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.xhci_ring, ptr %75, i32 0, i32 9
  store i32 %69, ptr %78, align 4
  %79 = getelementptr inbounds %struct.xhci_ring, ptr %75, i32 0, i32 16
  store ptr %64, ptr %79, align 4
  %80 = load ptr, ptr %75, align 4
  %81 = getelementptr inbounds %struct.xhci_segment, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.xhci_ring, ptr %75, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  %85 = or i32 %82, %84
  %86 = or i32 %85, 2
  %87 = zext i32 %86 to i64
  %88 = load ptr, ptr %57, align 8
  %89 = getelementptr %struct.xhci_stream_ctx, ptr %88, i32 %69
  store i64 %87, ptr %89, align 8
  %90 = load ptr, ptr %79, align 4
  %91 = load ptr, ptr %75, align 4
  %92 = getelementptr inbounds %struct.xhci_ring, ptr %75, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = tail call fastcc i32 @xhci_update_stream_segment_mapping(ptr noundef %90, ptr noundef nonnull %75, ptr noundef %91, ptr noundef %93, i32 noundef %4) #15
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %77
  tail call void @xhci_ring_free(ptr noundef %0, ptr noundef nonnull %75)
  %97 = load ptr, ptr %22, align 8
  %98 = getelementptr ptr, ptr %97, i32 %69
  store ptr null, ptr %98, align 4
  br label %99

99:                                               ; preds = %96, %68
  br label %103

100:                                              ; preds = %77
  %101 = add nuw i32 %69, 1
  %102 = icmp eq i32 %101, %2
  br i1 %102, label %135, label %68

103:                                              ; preds = %112, %99
  %104 = phi i32 [ %113, %112 ], [ 1, %99 ]
  %105 = load ptr, ptr %22, align 8
  %106 = getelementptr ptr, ptr %105, i32 %104
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  tail call void @xhci_ring_free(ptr noundef %0, ptr noundef nonnull %107)
  %110 = load ptr, ptr %22, align 8
  %111 = getelementptr ptr, ptr %110, i32 %104
  store ptr null, ptr %111, align 4
  br label %112

112:                                              ; preds = %109, %103
  %113 = add nuw i32 %104, 1
  %114 = icmp eq i32 %113, %2
  br i1 %114, label %115, label %103

115:                                              ; preds = %112
  %116 = load ptr, ptr %61, align 8
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.xhci_container_ctx, ptr %117, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.xhci_container_ctx, ptr %117, i32 0, i32 3
  %125 = load i32, ptr %124, align 4
  tail call void @dma_pool_free(ptr noundef %121, ptr noundef %123, i32 noundef %125) #15
  tail call void @kfree(ptr noundef nonnull %117) #15
  br label %126

126:                                              ; preds = %119, %115
  %127 = getelementptr inbounds %struct.xhci_command, ptr %116, i32 0, i32 3
  %128 = load ptr, ptr %127, align 4
  tail call void @kfree(ptr noundef %128) #15
  tail call void @kfree(ptr noundef %116) #15
  br label %129

129:                                              ; preds = %126, %59, %55
  %130 = load ptr, ptr %22, align 8
  tail call void @kfree(ptr noundef %130) #15
  br label %131

131:                                              ; preds = %129, %30, %29
  tail call void @kfree(ptr noundef nonnull %22) #15
  br label %132

132:                                              ; preds = %131, %18
  %133 = load i32, ptr %6, align 4
  %134 = add i32 %133, -1
  store i32 %134, ptr %6, align 4
  br label %135

135:                                              ; preds = %132, %100, %63, %5
  %136 = phi ptr [ null, %132 ], [ null, %5 ], [ %22, %63 ], [ %22, %100 ]
  ret ptr %136
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xhci_alloc_command_with_ctx(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @xhci_alloc_command(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  %7 = or i32 %2, 256
  %8 = and i32 %2, 17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !12

10:                                               ; preds = %6
  %11 = and i32 %2, 1
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 1, i32 2
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 0, %6 ], [ %13, %10 ]
  %16 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %15, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef %7, i32 noundef 16) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %14
  store i32 2, ptr %18, align 8
  %21 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.xhci_container_ctx, ptr %18, i32 0, i32 1
  %26 = select i1 %24, i32 1056, i32 2112
  store i32 %26, ptr %25, align 4
  %27 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.xhci_container_ctx, ptr %18, i32 0, i32 3
  %30 = tail call ptr @dma_pool_alloc(ptr noundef %28, i32 noundef %7, ptr noundef %29) #15
  %31 = getelementptr inbounds %struct.xhci_container_ctx, ptr %18, i32 0, i32 2
  store ptr %30, ptr %31, align 8
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  tail call void @kfree(ptr noundef nonnull %18) #15
  br label %35

34:                                               ; preds = %20
  store ptr %18, ptr %4, align 4
  br label %38

35:                                               ; preds = %33, %14
  store ptr null, ptr %4, align 4
  %36 = getelementptr inbounds %struct.xhci_command, ptr %4, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  tail call void @kfree(ptr noundef %37) #15
  tail call void @kfree(ptr noundef nonnull %4) #15
  br label %38

38:                                               ; preds = %35, %34, %3
  %39 = phi ptr [ null, %35 ], [ null, %3 ], [ %4, %34 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_free_command(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xhci_container_ctx, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xhci_container_ctx, ptr %3, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  tail call void @dma_pool_free(ptr noundef %7, ptr noundef %9, i32 noundef %11) #15
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %12

12:                                               ; preds = %5, %2
  %13 = getelementptr inbounds %struct.xhci_command, ptr %1, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %14) #15
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_setup_streams_ep_input_ctx(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.xhci_stream_info, ptr %2, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 false) #15, !range !22
  %8 = sub nuw nsw i32 32, %7
  %9 = select i1 %6, i32 0, i32 %8
  %10 = add nsw i32 %9, -1
  %11 = shl nuw i32 1, %10
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_context_change, ptr noundef nonnull @.str.1, i32 noundef %11) #15
  %12 = load i32, ptr %1, align 8
  %13 = and i32 %12, -64513
  %14 = shl nuw nsw i32 %9, 10
  %15 = add nuw nsw i32 %14, 30720
  %16 = and i32 %15, 31744
  %17 = or i32 %13, %16
  %18 = or i32 %17, 32768
  store i32 %18, ptr %1, align 8
  %19 = getelementptr inbounds %struct.xhci_stream_info, ptr %2, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %1, i32 0, i32 2
  store i64 %21, ptr %22, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_context_change(ptr noundef %0) #4 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_context_change, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !23
  %16 = tail call i32 @__traceiter_xhci_dbg_context_change(ptr noundef null, ptr noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !24
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_setup_no_streams_ep_input_ctx(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, -64513
  store i32 %4, ptr %0, align 8
  %5 = getelementptr inbounds %struct.xhci_virt_ep, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xhci_ring, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xhci_ring, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %8, ptr noundef %10) #15
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.xhci_ring, ptr %12, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %11
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %0, i32 0, i32 2
  store i64 %16, ptr %17, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_trb_virt_to_dma(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_free_stream_info(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %65, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.xhci_stream_info, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %19, %4
  %9 = phi i32 [ %20, %19 ], [ %6, %4 ]
  %10 = phi i32 [ %21, %19 ], [ 1, %4 ]
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  tail call void @xhci_ring_free(ptr noundef %0, ptr noundef nonnull %13)
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr ptr, ptr %16, i32 %10
  store ptr null, ptr %17, align 4
  %18 = load i32, ptr %5, align 4
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi i32 [ %9, %8 ], [ %18, %15 ]
  %21 = add nuw i32 %10, 1
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %8, label %23

23:                                               ; preds = %19, %4
  %24 = getelementptr inbounds %struct.xhci_stream_info, ptr %1, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.xhci_container_ctx, ptr %26, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.xhci_container_ctx, ptr %26, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  tail call void @dma_pool_free(ptr noundef %30, ptr noundef %32, i32 noundef %34) #15
  tail call void @kfree(ptr noundef nonnull %26) #15
  br label %35

35:                                               ; preds = %28, %23
  %36 = getelementptr inbounds %struct.xhci_command, ptr %25, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  tail call void @kfree(ptr noundef %37) #15
  tail call void @kfree(ptr noundef %25) #15
  %38 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 32
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.xhci_stream_info, ptr %1, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %63, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.xhci_stream_info, ptr %1, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.xhci_stream_info, ptr %1, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = shl i32 %46, 4
  %50 = icmp ugt i32 %49, 1024
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr inbounds %struct.usb_bus, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void @dma_free_attrs(ptr noundef %54, i32 noundef %49, ptr noundef nonnull %42, i32 noundef %48, i32 noundef 0) #15
  br label %63

55:                                               ; preds = %44
  %56 = icmp ult i32 %49, 257
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 46
  %59 = load ptr, ptr %58, align 4
  tail call void @dma_pool_free(ptr noundef %59, ptr noundef nonnull %42, i32 noundef %48) #15
  br label %63

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 47
  %62 = load ptr, ptr %61, align 8
  tail call void @dma_pool_free(ptr noundef %62, ptr noundef nonnull %42, i32 noundef %48) #15
  br label %63

63:                                               ; preds = %60, %57, %51, %35
  %64 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %64) #15
  tail call void @kfree(ptr noundef nonnull %1) #15
  br label %65

65:                                               ; preds = %63, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_alloc_tt_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.usb_tt, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 35
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %120, label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %11, %9 ], [ 1, %5 ]
  %15 = or i32 %4, 256
  %16 = and i32 %4, 17
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %4, 1
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 1, i32 2
  %21 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 43
  %22 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 6
  %23 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 1
  br label %24

24:                                               ; preds = %51, %13
  %25 = phi i32 [ 0, %13 ], [ %48, %51 ]
  br i1 %17, label %27, label %26, !prof !12

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ 0, %24 ], [ %20, %26 ]
  %29 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %28, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef %15, i32 noundef 420) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %85, label %33

33:                                               ; preds = %27
  store volatile ptr %31, ptr %31, align 8
  %34 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %31, ptr %34, align 4
  %35 = load ptr, ptr %21, align 8
  %36 = load i8, ptr %22, align 1
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %37, -1
  %39 = getelementptr %struct.xhci_root_port_bw_info, ptr %35, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %31, ptr %41, align 4
  store ptr %40, ptr %31, align 8
  store ptr %39, ptr %34, align 4
  store volatile ptr %31, ptr %39, align 4
  %42 = load ptr, ptr %23, align 4
  %43 = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 43
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 1
  store i32 %44, ptr %45, align 8
  %46 = load i32, ptr %6, align 4
  %47 = icmp eq i32 %46, 0
  %48 = add nuw i32 %25, 1
  br i1 %47, label %51, label %49

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 2
  store i32 %48, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %33
  %52 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 0, i32 1
  store volatile ptr %52, ptr %52, align 8
  %53 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 0, i32 1, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 1, i32 1
  store volatile ptr %54, ptr %54, align 8
  %55 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 1, i32 1, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 2, i32 1
  store volatile ptr %56, ptr %56, align 8
  %57 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 2, i32 1, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 3, i32 1
  store volatile ptr %58, ptr %58, align 8
  %59 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 3, i32 1, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 4, i32 1
  store volatile ptr %60, ptr %60, align 8
  %61 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 4, i32 1, i32 1
  store ptr %60, ptr %61, align 4
  %62 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 5, i32 1
  store volatile ptr %62, ptr %62, align 8
  %63 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 5, i32 1, i32 1
  store ptr %62, ptr %63, align 4
  %64 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 6, i32 1
  store volatile ptr %64, ptr %64, align 8
  %65 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 6, i32 1, i32 1
  store ptr %64, ptr %65, align 4
  %66 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 7, i32 1
  store volatile ptr %66, ptr %66, align 8
  %67 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 7, i32 1, i32 1
  store ptr %66, ptr %67, align 4
  %68 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 8, i32 1
  store volatile ptr %68, ptr %68, align 8
  %69 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 8, i32 1, i32 1
  store ptr %68, ptr %69, align 4
  %70 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 9, i32 1
  store volatile ptr %70, ptr %70, align 8
  %71 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 9, i32 1, i32 1
  store ptr %70, ptr %71, align 4
  %72 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 10, i32 1
  store volatile ptr %72, ptr %72, align 8
  %73 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 10, i32 1, i32 1
  store ptr %72, ptr %73, align 4
  %74 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 11, i32 1
  store volatile ptr %74, ptr %74, align 8
  %75 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 11, i32 1, i32 1
  store ptr %74, ptr %75, align 4
  %76 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 12, i32 1
  store volatile ptr %76, ptr %76, align 8
  %77 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 12, i32 1, i32 1
  store ptr %76, ptr %77, align 4
  %78 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 13, i32 1
  store volatile ptr %78, ptr %78, align 8
  %79 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 13, i32 1, i32 1
  store ptr %78, ptr %79, align 4
  %80 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 14, i32 1
  store volatile ptr %80, ptr %80, align 8
  %81 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 14, i32 1, i32 1
  store ptr %80, ptr %81, align 4
  %82 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 15, i32 1
  store volatile ptr %82, ptr %82, align 8
  %83 = getelementptr %struct.xhci_tt_bw_info, ptr %31, i32 0, i32 3, i32 1, i32 15, i32 1, i32 1
  store ptr %82, ptr %83, align 4
  %84 = icmp eq i32 %48, %14
  br i1 %84, label %120, label %24

85:                                               ; preds = %27
  %86 = load ptr, ptr %23, align 4
  %87 = getelementptr inbounds %struct.usb_device, ptr %86, i32 0, i32 43
  %88 = load i32, ptr %87, align 8
  %89 = load i8, ptr %22, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i8 %89, 0
  br i1 %91, label %120, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 7
  %94 = load i32, ptr %93, align 4
  %95 = lshr i32 %94, 24
  %96 = and i32 %95, 127
  %97 = icmp ult i32 %96, %90
  br i1 %97, label %120, label %98

98:                                               ; preds = %92
  %99 = load ptr, ptr %21, align 8
  %100 = add nsw i32 %90, -1
  %101 = getelementptr %struct.xhci_root_port_bw_info, ptr %99, i32 %100
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %101
  br i1 %103, label %120, label %104

104:                                              ; preds = %116, %98
  %105 = phi ptr [ %107, %116 ], [ %102, %98 ]
  %106 = phi i1 [ %110, %116 ], [ false, %98 ]
  %107 = load ptr, ptr %105, align 4
  %108 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %105, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, %88
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  store ptr %113, ptr %114, align 4
  store volatile ptr %107, ptr %113, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %105, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %112, align 4
  tail call void @kfree(ptr noundef %105) #15
  %115 = icmp eq ptr %107, %101
  br i1 %115, label %120, label %116

116:                                              ; preds = %117, %111
  br label %104

117:                                              ; preds = %104
  %118 = icmp eq ptr %107, %101
  %119 = select i1 %106, i1 true, i1 %118
  br i1 %119, label %120, label %116

120:                                              ; preds = %117, %111, %98, %92, %85, %51, %9
  %121 = phi i32 [ -12, %85 ], [ -12, %92 ], [ -12, %98 ], [ 0, %9 ], [ -12, %111 ], [ -12, %117 ], [ 0, %51 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_free_virt_device(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %124, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %124, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 28
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr [256 x i64], ptr %10, i32 0, i32 %1
  store i64 0, ptr %11, align 8
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_free_virt_device, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = tail call ptr @llvm.thread.pointer() #15
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = lshr i32 %17, 5
  %19 = getelementptr i32, ptr @__cpu_online_mask, i32 %18
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %17, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !25
  %26 = tail call i32 @__traceiter_xhci_free_virt_device(ptr noundef null, ptr noundef nonnull %6) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %27

27:                                               ; preds = %25, %14, %8
  %28 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %29, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %33, %31 ], [ 0, %27 ]
  br label %36

36:                                               ; preds = %54, %34
  %37 = phi i32 [ 0, %34 ], [ %55, %54 ]
  %38 = getelementptr %struct.xhci_virt_device, ptr %6, i32 0, i32 4, i32 %37, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @xhci_ring_free(ptr noundef %0, ptr noundef nonnull %39)
  br label %42

42:                                               ; preds = %41, %36
  %43 = getelementptr %struct.xhci_virt_device, ptr %6, i32 0, i32 4, i32 %37, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @xhci_free_stream_info(ptr noundef %0, ptr noundef nonnull %44)
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr %struct.xhci_virt_device, ptr %6, i32 0, i32 4, i32 %37, i32 13
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8
  %53 = load ptr, ptr %52, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.2, i32 noundef %1, i32 noundef %37) #18
  br label %54

54:                                               ; preds = %51, %47
  %55 = add nuw nsw i32 %37, 1
  %56 = icmp eq i32 %55, 31
  br i1 %56, label %57, label %36

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 6
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i8 %59, 0
  br i1 %61, label %91, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = lshr i32 %64, 24
  %66 = and i32 %65, 127
  %67 = icmp ult i32 %66, %60
  br i1 %67, label %91, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 43
  %70 = load ptr, ptr %69, align 8
  %71 = add nsw i32 %60, -1
  %72 = getelementptr %struct.xhci_root_port_bw_info, ptr %70, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %91, label %75

75:                                               ; preds = %87, %68
  %76 = phi ptr [ %78, %87 ], [ %73, %68 ]
  %77 = phi i1 [ %81, %87 ], [ false, %68 ]
  %78 = load ptr, ptr %76, align 4
  %79 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %76, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, %1
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %84, ptr %85, align 4
  store volatile ptr %78, ptr %84, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %76, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %83, align 4
  tail call void @kfree(ptr noundef %76) #15
  %86 = icmp eq ptr %78, %72
  br i1 %86, label %91, label %87

87:                                               ; preds = %88, %82
  br label %75

88:                                               ; preds = %75
  %89 = icmp eq ptr %78, %72
  %90 = select i1 %77, i1 true, i1 %89
  br i1 %90, label %91, label %87

91:                                               ; preds = %88, %82, %68, %62, %57
  tail call void @xhci_update_tt_active_eps(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %35) #15
  %92 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.xhci_container_ctx, ptr %93, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.xhci_container_ctx, ptr %93, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  tail call void @dma_pool_free(ptr noundef %97, ptr noundef %99, i32 noundef %101) #15
  tail call void @kfree(ptr noundef nonnull %93) #15
  br label %102

102:                                              ; preds = %95, %91
  %103 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.xhci_container_ctx, ptr %104, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.xhci_container_ctx, ptr %104, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  tail call void @dma_pool_free(ptr noundef %108, ptr noundef %110, i32 noundef %112) #15
  tail call void @kfree(ptr noundef nonnull %104) #15
  br label %113

113:                                              ; preds = %106, %102
  %114 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.usb_device, ptr %115, i32 0, i32 43
  %119 = load i32, ptr %118, align 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  store i32 0, ptr %118, align 8
  br label %122

122:                                              ; preds = %121, %117, %113
  %123 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %123) #15
  store ptr null, ptr %5, align 4
  br label %124

124:                                              ; preds = %122, %4, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_update_tt_active_eps(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_alloc_virt_device(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6, %4
  %11 = load ptr, ptr %0, align 8
  %12 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.3, i32 noundef %1) #18
  br label %146

13:                                               ; preds = %6
  %14 = and i32 %3, 17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !12

16:                                               ; preds = %13
  %17 = and i32 %3, 1
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 1, i32 2
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ 0, %13 ], [ %19, %16 ]
  %22 = or i32 %3, 256
  %23 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %21, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef %22, i32 noundef 3388) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %146, label %27

27:                                               ; preds = %20
  store i32 %1, ptr %25, align 8
  br i1 %15, label %32, label %28, !prof !12

28:                                               ; preds = %27
  %29 = and i32 %3, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 1, i32 2
  br label %32

32:                                               ; preds = %28, %27
  %33 = phi i32 [ 0, %27 ], [ %31, %28 ]
  %34 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %33, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef %22, i32 noundef 16) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %32
  store i32 1, ptr %36, align 8
  %39 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 1024, i32 2048
  %44 = getelementptr inbounds %struct.xhci_container_ctx, ptr %36, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.xhci_container_ctx, ptr %36, i32 0, i32 3
  %48 = tail call ptr @dma_pool_alloc(ptr noundef %46, i32 noundef %22, ptr noundef %47) #15
  %49 = getelementptr inbounds %struct.xhci_container_ctx, ptr %36, i32 0, i32 2
  store ptr %48, ptr %49, align 8
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  tail call void @kfree(ptr noundef nonnull %36) #15
  br label %52

52:                                               ; preds = %51, %32
  %53 = getelementptr inbounds %struct.xhci_virt_device, ptr %25, i32 0, i32 2
  store ptr null, ptr %53, align 8
  br label %123

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.xhci_virt_device, ptr %25, i32 0, i32 2
  store ptr %36, ptr %55, align 8
  br i1 %15, label %60, label %56, !prof !12

56:                                               ; preds = %54
  %57 = and i32 %3, 1
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 1, i32 2
  br label %60

60:                                               ; preds = %56, %54
  %61 = phi i32 [ 0, %54 ], [ %59, %56 ]
  %62 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %61, i32 6
  %63 = load ptr, ptr %62, align 4
  %64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef %22, i32 noundef 16) #16
  %65 = icmp eq ptr %64, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %60
  store i32 2, ptr %64, align 8
  %67 = load i32, ptr %39, align 8
  %68 = and i32 %67, 4
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr inbounds %struct.xhci_container_ctx, ptr %64, i32 0, i32 1
  %71 = select i1 %69, i32 1056, i32 2112
  store i32 %71, ptr %70, align 4
  %72 = load ptr, ptr %45, align 4
  %73 = getelementptr inbounds %struct.xhci_container_ctx, ptr %64, i32 0, i32 3
  %74 = tail call ptr @dma_pool_alloc(ptr noundef %72, i32 noundef %22, ptr noundef %73) #15
  %75 = getelementptr inbounds %struct.xhci_container_ctx, ptr %64, i32 0, i32 2
  store ptr %74, ptr %75, align 8
  %76 = icmp eq ptr %74, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  tail call void @kfree(ptr noundef nonnull %64) #15
  br label %78

78:                                               ; preds = %77, %60
  %79 = getelementptr inbounds %struct.xhci_virt_device, ptr %25, i32 0, i32 3
  store ptr null, ptr %79, align 4
  br label %123

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.xhci_virt_device, ptr %25, i32 0, i32 3
  store ptr %64, ptr %81, align 4
  br label %82

82:                                               ; preds = %82, %80
  %83 = phi i32 [ 0, %80 ], [ %92, %82 ]
  %84 = getelementptr %struct.xhci_virt_device, ptr %25, i32 0, i32 4, i32 %83
  %85 = getelementptr %struct.xhci_virt_device, ptr %25, i32 0, i32 4, i32 %83, i32 1
  store i32 %83, ptr %85, align 4
  store ptr %25, ptr %84, align 4
  %86 = getelementptr %struct.xhci_virt_device, ptr %25, i32 0, i32 4, i32 %83, i32 7
  tail call void @init_timer_key(ptr noundef %86, ptr noundef nonnull @xhci_stop_endpoint_command_watchdog, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  %87 = getelementptr %struct.xhci_virt_device, ptr %25, i32 0, i32 4, i32 %83, i32 8
  store ptr %0, ptr %87, align 4
  %88 = getelementptr %struct.xhci_virt_device, ptr %25, i32 0, i32 4, i32 %83, i32 6
  store volatile ptr %88, ptr %88, align 4
  %89 = getelementptr %struct.xhci_virt_device, ptr %25, i32 0, i32 4, i32 %83, i32 6, i32 1
  store ptr %88, ptr %89, align 4
  %90 = getelementptr %struct.xhci_virt_device, ptr %25, i32 0, i32 4, i32 %83, i32 13
  store volatile ptr %90, ptr %90, align 4
  %91 = getelementptr %struct.xhci_virt_device, ptr %25, i32 0, i32 4, i32 %83, i32 13, i32 1
  store ptr %90, ptr %91, align 4
  %92 = add nuw nsw i32 %83, 1
  %93 = icmp eq i32 %92, 31
  br i1 %93, label %94, label %82

94:                                               ; preds = %82
  %95 = tail call ptr @xhci_ring_alloc(ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %3)
  %96 = getelementptr inbounds %struct.xhci_virt_device, ptr %25, i32 0, i32 4, i32 0, i32 2
  store ptr %95, ptr %96, align 8
  %97 = icmp eq ptr %95, null
  br i1 %97, label %123, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.xhci_virt_device, ptr %25, i32 0, i32 1
  store ptr %2, ptr %99, align 4
  %100 = load ptr, ptr %55, align 8
  %101 = getelementptr inbounds %struct.xhci_container_ctx, ptr %100, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 28
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr [256 x i64], ptr %105, i32 0, i32 %1
  store i64 %103, ptr %106, align 8
  %107 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_alloc_virt_device, i32 0, i32 1), align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %98
  %110 = tail call ptr @llvm.thread.pointer() #15
  %111 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 8
  %113 = lshr i32 %112, 5
  %114 = getelementptr i32, ptr @__cpu_online_mask, i32 %113
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %112, 31
  %117 = shl nuw i32 1, %116
  %118 = and i32 %117, %115
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %109
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  %121 = tail call i32 @__traceiter_xhci_alloc_virt_device(ptr noundef null, ptr noundef nonnull %25) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !28
  br label %122

122:                                              ; preds = %120, %109, %98
  store ptr %25, ptr %7, align 4
  br label %146

123:                                              ; preds = %94, %78, %52
  %124 = phi ptr [ %53, %52 ], [ %55, %94 ], [ %55, %78 ]
  %125 = getelementptr inbounds %struct.xhci_virt_device, ptr %25, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.xhci_container_ctx, ptr %126, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.xhci_container_ctx, ptr %126, i32 0, i32 3
  %134 = load i32, ptr %133, align 4
  tail call void @dma_pool_free(ptr noundef %130, ptr noundef %132, i32 noundef %134) #15
  tail call void @kfree(ptr noundef nonnull %126) #15
  br label %135

135:                                              ; preds = %128, %123
  %136 = load ptr, ptr %124, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.xhci_container_ctx, ptr %136, i32 0, i32 2
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.xhci_container_ctx, ptr %136, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  tail call void @dma_pool_free(ptr noundef %140, ptr noundef %142, i32 noundef %144) #15
  tail call void @kfree(ptr noundef nonnull %136) #15
  br label %145

145:                                              ; preds = %138, %135
  tail call void @kfree(ptr noundef nonnull %25) #15
  br label %146

146:                                              ; preds = %145, %122, %20, %10
  %147 = phi i32 [ 0, %10 ], [ 1, %122 ], [ 0, %145 ], [ 0, %20 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_copy_ep0_dequeue_into_input_ctx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  %11 = select i1 %10, i32 2, i32 1
  %12 = getelementptr inbounds %struct.xhci_container_ctx, ptr %8, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 32, i32 64
  %19 = mul nuw nsw i32 %18, %11
  %20 = getelementptr i8, ptr %13, i32 %19
  %21 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 4, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.xhci_ring, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.xhci_ring, ptr %22, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %24, ptr noundef %26) #15
  %28 = getelementptr inbounds %struct.xhci_ring, ptr %22, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %27
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %20, i32 0, i32 2
  store i64 %31, ptr %32, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_setup_addressable_virt_dev(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 43
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne i32 %4, 0
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8
  %12 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.4, i32 noundef %4) #18
  br label %204

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  %18 = select i1 %17, i32 2, i32 1
  %19 = getelementptr inbounds %struct.xhci_container_ctx, ptr %15, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 32, i32 64
  %26 = mul nuw nsw i32 %25, %18
  %27 = getelementptr i8, ptr %20, i32 %26
  %28 = icmp eq i32 %16, 1
  %29 = select i1 %28, i32 0, i32 %25
  %30 = getelementptr i8, ptr %20, i32 %29
  %31 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %30, align 4
  %34 = or i32 %32, %33
  %35 = or i32 %34, 134217728
  store i32 %35, ptr %30, align 4
  %36 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -1
  %39 = icmp ult i32 %38, 6
  br i1 %39, label %40, label %204

40:                                               ; preds = %13
  %41 = trunc i32 %38 to i8
  %42 = lshr i8 55, %41
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %204, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds [6 x i32], ptr @switch.table.xhci_setup_addressable_virt_dev, i32 0, i32 %38
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds [6 x i32], ptr @switch.table.xhci_setup_addressable_virt_dev.57, i32 0, i32 %38
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %34, %47
  store i32 %50, ptr %30, align 4
  %51 = load i32, ptr %36, align 4
  %52 = icmp ugt i32 %51, 4
  %53 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 1
  %54 = select i1 %52, ptr %53, ptr %0
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 11
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %59, %45
  %60 = phi ptr [ %61, %59 ], [ %1, %45 ]
  %61 = phi ptr [ %63, %59 ], [ %57, %45 ]
  %62 = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 11
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %59

65:                                               ; preds = %59, %45
  %66 = phi ptr [ %1, %45 ], [ %60, %59 ]
  %67 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 25
  %68 = load i8, ptr %67, align 2
  %69 = zext i8 %68 to i32
  %70 = tail call i32 @xhci_find_raw_port_number(ptr noundef %55, i32 noundef %69) #15
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %204, label %72

72:                                               ; preds = %65
  %73 = shl i32 %70, 16
  %74 = and i32 %73, 16711680
  %75 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %30, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, ptr %75, align 4
  %78 = load ptr, ptr %56, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %80, %72
  %81 = phi ptr [ %82, %80 ], [ %1, %72 ]
  %82 = phi ptr [ %84, %80 ], [ %78, %72 ]
  %83 = getelementptr inbounds %struct.usb_device, ptr %82, i32 0, i32 11
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %80

86:                                               ; preds = %80, %72
  %87 = phi ptr [ %1, %72 ], [ %81, %80 ]
  %88 = getelementptr inbounds %struct.usb_device, ptr %87, i32 0, i32 25
  %89 = load i8, ptr %88, align 2
  %90 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 5
  store i8 %89, ptr %90, align 4
  %91 = trunc i32 %70 to i8
  %92 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 6
  store i8 %91, ptr %92, align 1
  %93 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 8
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %86
  %97 = load ptr, ptr %94, align 4
  %98 = getelementptr inbounds %struct.usb_device, ptr %97, i32 0, i32 11
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %96, %86
  %102 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 43
  %103 = load ptr, ptr %102, align 8
  %104 = add i32 %70, -1
  %105 = getelementptr %struct.xhci_root_port_bw_info, ptr %103, i32 %104, i32 2
  %106 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 7
  store ptr %105, ptr %106, align 4
  br label %154

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 43
  %109 = load ptr, ptr %108, align 8
  %110 = add i32 %70, -1
  %111 = getelementptr %struct.xhci_root_port_bw_info, ptr %109, i32 %110
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, %111
  br i1 %113, label %147, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.usb_device, ptr %97, i32 0, i32 43
  %116 = load i32, ptr %115, align 8
  %117 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 1
  %118 = getelementptr inbounds %struct.usb_tt, ptr %94, i32 0, i32 1
  br label %119

119:                                              ; preds = %144, %114
  %120 = phi ptr [ %112, %114 ], [ %145, %144 ]
  %121 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %120, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, %116
  br i1 %123, label %124, label %144

124:                                              ; preds = %119
  %125 = load ptr, ptr %117, align 4
  %126 = getelementptr inbounds %struct.usb_device, ptr %125, i32 0, i32 8
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.usb_tt, ptr %127, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %124
  %132 = load i32, ptr %118, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %120, i32 0, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.usb_device, ptr %125, i32 0, i32 9
  %138 = load i32, ptr %137, align 8
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134, %124
  %141 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %120, i32 0, i32 3
  %142 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 7
  store ptr %141, ptr %142, align 4
  %143 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 8
  store ptr %120, ptr %143, align 4
  br label %147

144:                                              ; preds = %134, %131, %119
  %145 = load ptr, ptr %120, align 4
  %146 = icmp eq ptr %145, %111
  br i1 %146, label %147, label %119

147:                                              ; preds = %144, %140, %107
  %148 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 8
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load ptr, ptr %0, align 8
  %153 = load ptr, ptr %152, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %153, ptr noundef nonnull @.str.5) #18
  br label %154

154:                                              ; preds = %151, %147, %101
  %155 = load ptr, ptr %93, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %177, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %155, align 4
  %159 = getelementptr inbounds %struct.usb_device, ptr %158, i32 0, i32 11
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %177, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.usb_device, ptr %158, i32 0, i32 43
  %164 = load i32, ptr %163, align 8
  %165 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 9
  %166 = load i32, ptr %165, align 8
  %167 = shl i32 %166, 8
  %168 = or i32 %167, %164
  %169 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %30, i32 0, i32 2
  store i32 %168, ptr %169, align 4
  %170 = load ptr, ptr %93, align 4
  %171 = getelementptr inbounds %struct.usb_tt, ptr %170, i32 0, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %162
  %175 = load i32, ptr %30, align 4
  %176 = or i32 %175, 33554432
  store i32 %176, ptr %30, align 4
  br label %177

177:                                              ; preds = %174, %162, %157, %154
  %178 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %27, i32 0, i32 1
  store i32 %49, ptr %178, align 4
  %179 = getelementptr inbounds %struct.xhci_virt_device, ptr %6, i32 0, i32 4, i32 0, i32 2
  %180 = load ptr, ptr %179, align 4
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.xhci_segment, ptr %181, i32 0, i32 2
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds %struct.xhci_ring, ptr %180, i32 0, i32 7
  %185 = load i32, ptr %184, align 4
  %186 = or i32 %185, %183
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %27, i32 0, i32 2
  store i64 %187, ptr %188, align 8
  %189 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_setup_addressable_virt_device, i32 0, i32 1), align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %177
  %192 = tail call ptr @llvm.thread.pointer() #15
  %193 = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 2
  %194 = load i32, ptr %193, align 8
  %195 = lshr i32 %194, 5
  %196 = getelementptr i32, ptr @__cpu_online_mask, i32 %195
  %197 = load volatile i32, ptr %196, align 4
  %198 = and i32 %194, 31
  %199 = shl nuw i32 1, %198
  %200 = and i32 %199, %197
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %191
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !29
  %203 = tail call i32 @__traceiter_xhci_setup_addressable_virt_device(ptr noundef null, ptr noundef nonnull %6) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  br label %204

204:                                              ; preds = %202, %191, %177, %65, %40, %13, %10
  %205 = phi i32 [ -22, %10 ], [ -22, %13 ], [ -22, %65 ], [ 0, %177 ], [ 0, %191 ], [ 0, %202 ], [ -22, %40 ]
  ret i32 %205
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_endpoint_init(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @xhci_get_endpoint_index(ptr noundef %3) #15
  %7 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  %11 = select i1 %10, i32 2, i32 1
  %12 = add i32 %11, %6
  %13 = getelementptr inbounds %struct.xhci_container_ctx, ptr %8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 32, i32 64
  %20 = mul i32 %19, %12
  %21 = getelementptr i8, ptr %14, i32 %20
  %22 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 3
  %27 = zext i8 %26 to i32
  switch i32 %27, label %37 [
    i32 0, label %38
    i32 2, label %28
    i32 1, label %31
    i32 3, label %34
  ]

28:                                               ; preds = %5
  %29 = icmp sgt i8 %23, -1
  %30 = select i1 %29, i32 16, i32 48
  br label %38

31:                                               ; preds = %5
  %32 = icmp sgt i8 %23, -1
  %33 = select i1 %32, i32 8, i32 40
  br label %38

34:                                               ; preds = %5
  %35 = icmp sgt i8 %23, -1
  %36 = select i1 %35, i32 24, i32 56
  br label %38

37:                                               ; preds = %5
  unreachable

38:                                               ; preds = %34, %31, %28, %5
  %39 = phi i32 [ %36, %34 ], [ %33, %31 ], [ %30, %28 ], [ 32, %5 ]
  %40 = trunc i8 %25 to i2
  switch i2 %40, label %41 [
    i2 0, label %67
    i2 -2, label %67
  ]

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, 5
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.usb_host_endpoint, ptr %3, i32 0, i32 1, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = icmp sgt i8 %47, -1
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.usb_host_endpoint, ptr %3, i32 0, i32 2, i32 3
  %51 = load i32, ptr %50, align 1
  br label %67

52:                                               ; preds = %41
  %53 = icmp eq i32 %43, 5
  br i1 %53, label %54, label %58

54:                                               ; preds = %52, %45
  %55 = getelementptr inbounds %struct.usb_host_endpoint, ptr %3, i32 0, i32 1, i32 4
  %56 = load i16, ptr %55, align 1
  %57 = zext i16 %56 to i32
  br label %67

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 4
  %60 = load i16, ptr %59, align 1
  %61 = and i16 %60, 2047
  %62 = lshr i16 %60, 11
  %63 = and i16 %62, 3
  %64 = add nuw nsw i16 %63, 1
  %65 = mul nuw nsw i16 %64, %61
  %66 = zext i16 %65 to i32
  br label %67

67:                                               ; preds = %58, %54, %49, %38, %38
  %68 = phi i32 [ %51, %49 ], [ %57, %54 ], [ %66, %58 ], [ 0, %38 ], [ 0, %38 ]
  %69 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  switch i32 %70, label %130 [
    i32 3, label %71
    i32 6, label %81
    i32 5, label %81
    i32 2, label %100
    i32 1, label %118
  ]

71:                                               ; preds = %67
  switch i2 %40, label %131 [
    i2 0, label %72
    i2 -2, label %72
    i2 -1, label %82
    i2 1, label %82
  ]

72:                                               ; preds = %71, %71
  %73 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 5
  %74 = load i8, ptr %73, align 2
  %75 = icmp eq i8 %74, 0
  %76 = zext i8 %74 to i32
  %77 = tail call i32 @llvm.ctlz.i32(i32 %76, i1 false) #15, !range !31
  %78 = sub nsw i32 31, %77
  %79 = tail call i32 @llvm.umin.i32(i32 %78, i32 15) #15
  %80 = select i1 %75, i32 0, i32 %79
  br label %132

81:                                               ; preds = %67, %67
  switch i2 %40, label %132 [
    i2 -1, label %82
    i2 1, label %82
  ]

82:                                               ; preds = %81, %81, %71, %71
  %83 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 5
  %84 = load i8, ptr %83, align 2
  %85 = zext i8 %84 to i32
  %86 = tail call i32 @llvm.umax.i32(i32 %85, i32 1) #15
  %87 = tail call i32 @llvm.umin.i32(i32 %86, i32 16) #15
  %88 = add nsw i32 %87, -1
  %89 = icmp eq i32 %87, %85
  br i1 %89, label %95, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %92 = zext i8 %23 to i32
  %93 = shl nuw nsw i32 1, %88
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.34, i32 noundef %92, i32 noundef %93, ptr noundef nonnull @.str.36) #18
  %94 = load i32, ptr %69, align 4
  br label %95

95:                                               ; preds = %90, %82
  %96 = phi i32 [ %70, %82 ], [ %94, %90 ]
  %97 = icmp eq i32 %96, 2
  %98 = add nuw nsw i32 %87, 2
  %99 = select i1 %97, i32 %98, i32 %88
  br label %132

100:                                              ; preds = %67
  %101 = icmp eq i8 %26, 1
  br i1 %101, label %102, label %118

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 5
  %104 = load i8, ptr %103, align 2
  %105 = zext i8 %104 to i32
  %106 = tail call i32 @llvm.umax.i32(i32 %105, i32 1) #15
  %107 = tail call i32 @llvm.umin.i32(i32 %106, i32 16) #15
  %108 = icmp eq i32 %107, %105
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = add nsw i32 %107, -1
  %111 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %112 = zext i8 %23 to i32
  %113 = shl nuw nsw i32 1, %110
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.34, i32 noundef %112, i32 noundef %113, ptr noundef nonnull @.str.35) #18
  %114 = load i32, ptr %69, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %132

116:                                              ; preds = %109, %102
  %117 = add nuw nsw i32 %107, 2
  br label %132

118:                                              ; preds = %100, %67
  switch i2 %40, label %132 [
    i2 -1, label %119
    i2 1, label %119
  ]

119:                                              ; preds = %118, %118
  %120 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 5
  %121 = load i8, ptr %120, align 2
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i32 %122, 3
  %124 = icmp eq i8 %121, 0
  %125 = tail call i32 @llvm.ctlz.i32(i32 %123, i1 false) #15, !range !22
  %126 = sub nsw i32 31, %125
  %127 = tail call i32 @llvm.umax.i32(i32 %126, i32 3) #15
  %128 = tail call i32 @llvm.umin.i32(i32 %127, i32 10) #15
  %129 = select i1 %124, i32 10, i32 %128
  br label %132

130:                                              ; preds = %67
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/host/xhci-mem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1331, 0\0A.popsection", ""() #15, !srcloc !32
  unreachable

131:                                              ; preds = %71
  unreachable

132:                                              ; preds = %119, %118, %116, %109, %95, %81, %72
  %133 = phi i32 [ %70, %119 ], [ %96, %95 ], [ 3, %72 ], [ %70, %81 ], [ %70, %118 ], [ 2, %116 ], [ %114, %109 ]
  %134 = phi i32 [ %129, %119 ], [ %99, %95 ], [ %80, %72 ], [ 0, %81 ], [ 0, %118 ], [ %117, %116 ], [ %110, %109 ]
  %135 = load i8, ptr %24, align 1
  %136 = and i8 %135, 3
  %137 = trunc i8 %135 to i2
  switch i2 %137, label %148 [
    i2 -1, label %138
    i2 1, label %138
  ]

138:                                              ; preds = %132, %132
  %139 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %140 = load i64, ptr %139, align 8
  %141 = and i64 %140, 67108864
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = icmp ugt i32 %133, 2
  %145 = icmp ugt i32 %134, 6
  %146 = select i1 %144, i1 %145, i1 false
  %147 = select i1 %146, i32 6, i32 %134
  br label %148

148:                                              ; preds = %143, %138, %132
  %149 = phi i32 [ %147, %143 ], [ %134, %132 ], [ %134, %138 ]
  %150 = icmp ult i32 %133, 5
  br i1 %150, label %164, label %151

151:                                              ; preds = %148
  %152 = icmp eq i8 %136, 1
  br i1 %152, label %153, label %157

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.usb_host_endpoint, ptr %3, i32 0, i32 1, i32 3
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  br label %157

157:                                              ; preds = %153, %151
  %158 = phi i32 [ 0, %151 ], [ %156, %153 ]
  %159 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 4
  %160 = load i16, ptr %159, align 1
  %161 = getelementptr inbounds %struct.usb_host_endpoint, ptr %3, i32 0, i32 1, i32 2
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i32
  br label %173

164:                                              ; preds = %148
  %165 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %3, i32 0, i32 4
  %166 = load i16, ptr %165, align 1
  %167 = icmp eq i32 %133, 3
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  switch i2 %137, label %173 [
    i2 1, label %169
    i2 -1, label %169
  ]

169:                                              ; preds = %168, %168
  %170 = lshr i16 %166, 11
  %171 = and i16 %170, 3
  %172 = zext i16 %171 to i32
  br label %173

173:                                              ; preds = %169, %168, %164, %157
  %174 = phi i16 [ %160, %157 ], [ %166, %169 ], [ %166, %164 ], [ %166, %168 ]
  %175 = phi i32 [ %158, %157 ], [ 0, %169 ], [ 0, %164 ], [ 0, %168 ]
  %176 = phi i32 [ %163, %157 ], [ %172, %169 ], [ 0, %164 ], [ 0, %168 ]
  %177 = and i16 %174, 2047
  %178 = zext i16 %177 to i32
  %179 = icmp eq i8 %136, 1
  %180 = select i1 %179, i32 0, i32 6
  %181 = trunc i8 %135 to i2
  switch i2 %181, label %191 [
    i2 -2, label %182
    i2 0, label %195
  ]

182:                                              ; preds = %173
  %183 = icmp eq i32 %133, 3
  %184 = select i1 %183, i32 512, i32 %178
  %185 = icmp eq i32 %133, 2
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = tail call i32 @llvm.ctlz.i32(i32 %184, i1 false) #15, !range !22
  %188 = lshr i32 -2147483648, %187
  %189 = tail call i32 @llvm.umax.i32(i32 %188, i32 8)
  %190 = tail call i32 @llvm.umin.i32(i32 %189, i32 64)
  br label %191

191:                                              ; preds = %186, %182, %173
  %192 = phi i32 [ %184, %182 ], [ %190, %186 ], [ %178, %173 ]
  %193 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 14
  %194 = load i16, ptr %193, align 2
  br label %200

195:                                              ; preds = %173
  %196 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 14
  %197 = load i16, ptr %196, align 2
  %198 = icmp ugt i16 %197, 255
  %199 = select i1 %198, i32 8, i32 %68
  br label %200

200:                                              ; preds = %195, %191
  %201 = phi i32 [ %192, %191 ], [ %178, %195 ]
  %202 = phi i16 [ %194, %191 ], [ %197, %195 ]
  %203 = phi i32 [ %68, %191 ], [ %199, %195 ]
  %204 = icmp ugt i16 %202, 256
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 11
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 16
  %209 = icmp eq i32 %208, 0
  %210 = select i1 %209, i32 %175, i32 0
  br label %211

211:                                              ; preds = %205, %200
  %212 = phi i32 [ %175, %200 ], [ %210, %205 ]
  %213 = tail call ptr @xhci_ring_alloc(ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef %27, i32 noundef %201, i32 noundef %4)
  %214 = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %6, i32 4
  store ptr %213, ptr %214, align 4
  %215 = icmp eq ptr %213, null
  br i1 %215, label %245, label %216

216:                                              ; preds = %211
  %217 = getelementptr %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 %6, i32 11
  store i8 0, ptr %217, align 4
  %218 = shl i32 %68, 8
  %219 = and i32 %218, -16777216
  %220 = shl nuw nsw i32 %149, 16
  %221 = and i32 %220, 16711680
  %222 = or i32 %221, %219
  %223 = shl nuw nsw i32 %212, 8
  %224 = and i32 %223, 768
  %225 = or i32 %222, %224
  store i32 %225, ptr %21, align 8
  %226 = shl nuw nsw i32 %201, 16
  %227 = or i32 %226, %39
  %228 = shl nuw nsw i32 %176, 8
  %229 = and i32 %228, 65280
  %230 = or i32 %227, %229
  %231 = or i32 %230, %180
  %232 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %21, i32 0, i32 1
  store i32 %231, ptr %232, align 4
  %233 = load ptr, ptr %213, align 4
  %234 = getelementptr inbounds %struct.xhci_segment, ptr %233, i32 0, i32 2
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds %struct.xhci_ring, ptr %213, i32 0, i32 7
  %237 = load i32, ptr %236, align 4
  %238 = or i32 %237, %235
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %21, i32 0, i32 2
  store i64 %239, ptr %240, align 8
  %241 = shl i32 %68, 16
  %242 = and i32 %203, 65535
  %243 = or i32 %242, %241
  %244 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %21, i32 0, i32 3
  store i32 %243, ptr %244, align 8
  br label %245

245:                                              ; preds = %216, %211
  %246 = phi i32 [ 0, %216 ], [ -12, %211 ]
  ret i32 %246
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_get_endpoint_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_endpoint_zero(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @xhci_get_endpoint_index(ptr noundef %2) #15
  %5 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  %9 = select i1 %8, i32 2, i32 1
  %10 = add i32 %9, %4
  %11 = getelementptr inbounds %struct.xhci_container_ctx, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 32, i32 64
  %18 = mul i32 %17, %10
  %19 = getelementptr i8, ptr %12, i32 %18
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(20) %19, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xhci_clear_endpoint_bw_info(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_update_bw_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.xhci_container_ctx, ptr %1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  br label %8

8:                                                ; preds = %65, %4
  %9 = phi i32 [ 1, %4 ], [ %12, %65 ]
  %10 = getelementptr %struct.xhci_virt_device, ptr %3, i32 0, i32 4, i32 %9, i32 12
  %11 = load i32, ptr %5, align 4
  %12 = add nuw nsw i32 %9, 1
  %13 = shl nuw i32 2, %9
  %14 = and i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = load i32, ptr %2, align 4
  %18 = and i32 %17, %13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %65, label %20

20:                                               ; preds = %16
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %10, i8 0, i64 24, i1 false) #15
  br label %65

21:                                               ; preds = %8
  %22 = load i32, ptr %1, align 4
  %23 = icmp eq i32 %22, 2
  %24 = select i1 %23, i32 2, i32 1
  %25 = add nuw nsw i32 %24, %9
  %26 = load ptr, ptr %6, align 4
  %27 = load i32, ptr %7, align 8
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 32, i32 64
  %31 = mul i32 %30, %25
  %32 = getelementptr i8, ptr %26, i32 %31
  %33 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 3
  %36 = and i32 %35, 7
  %37 = and i32 %34, 40
  %38 = icmp ne i32 %37, 8
  %39 = icmp ne i32 %36, 5
  %40 = select i1 %38, i1 %39, i1 false
  %41 = icmp ne i32 %36, 7
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %65, label %43

43:                                               ; preds = %21
  %44 = load i32, ptr %32, align 8
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 255
  store i32 %46, ptr %10, align 4
  %47 = load i32, ptr %32, align 8
  %48 = lshr i32 %47, 8
  %49 = and i32 %48, 3
  %50 = add nuw nsw i32 %49, 1
  %51 = getelementptr %struct.xhci_virt_device, ptr %3, i32 0, i32 4, i32 %9, i32 12, i32 1
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %33, align 4
  %53 = lshr i32 %52, 8
  %54 = and i32 %53, 255
  %55 = add nuw nsw i32 %54, 1
  %56 = getelementptr %struct.xhci_virt_device, ptr %3, i32 0, i32 4, i32 %9, i32 12, i32 2
  store i32 %55, ptr %56, align 4
  %57 = load i32, ptr %33, align 4
  %58 = lshr i32 %57, 16
  %59 = getelementptr %struct.xhci_virt_device, ptr %3, i32 0, i32 4, i32 %9, i32 12, i32 3
  store i32 %58, ptr %59, align 4
  %60 = getelementptr %struct.xhci_virt_device, ptr %3, i32 0, i32 4, i32 %9, i32 12, i32 5
  store i32 %36, ptr %60, align 4
  %61 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %32, i32 0, i32 3
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 16
  %64 = getelementptr %struct.xhci_virt_device, ptr %3, i32 0, i32 4, i32 %9, i32 12, i32 4
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %43, %21, %20, %16
  %66 = icmp eq i32 %12, 31
  br i1 %66, label %67, label %8

67:                                               ; preds = %65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xhci_endpoint_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 2
  %7 = select i1 %6, i32 2, i32 1
  %8 = add i32 %7, %3
  %9 = getelementptr inbounds %struct.xhci_container_ctx, ptr %2, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 32, i32 64
  %16 = mul i32 %15, %8
  %17 = getelementptr i8, ptr %10, i32 %16
  %18 = load i32, ptr %1, align 4
  %19 = icmp eq i32 %18, 2
  %20 = select i1 %19, i32 2, i32 1
  %21 = add i32 %20, %3
  %22 = getelementptr inbounds %struct.xhci_container_ctx, ptr %1, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = mul i32 %21, %15
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = load i32, ptr %17, align 8
  store i32 %26, ptr %25, align 8
  %27 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %17, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %25, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %17, i32 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %25, i32 0, i32 2
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %17, i32 0, i32 3
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %25, i32 0, i32 3
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 51
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 2097152
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %17, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %25, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  %44 = getelementptr %struct.xhci_ep_ctx, ptr %17, i32 0, i32 4, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.xhci_ep_ctx, ptr %25, i32 0, i32 4, i32 1
  store i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %40, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xhci_slot_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, 1
  %6 = getelementptr inbounds %struct.xhci_container_ctx, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 32, i32 64
  %14 = getelementptr i8, ptr %7, i32 %13
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi ptr [ %14, %8 ], [ %7, %3 ]
  %17 = load i32, ptr %2, align 4
  %18 = icmp eq i32 %17, 1
  %19 = getelementptr inbounds %struct.xhci_container_ctx, ptr %2, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  br i1 %18, label %28, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 10
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 32, i32 64
  %27 = getelementptr i8, ptr %20, i32 %26
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi ptr [ %27, %21 ], [ %20, %15 ]
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %16, align 4
  %31 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %29, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %16, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %29, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %16, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %29, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %16, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xhci_alloc_command(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = or i32 %2, 256
  %5 = and i32 %2, 17
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !12

7:                                                ; preds = %3
  %8 = and i32 %2, 1
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 1, i32 2
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 0, %3 ], [ %10, %7 ]
  %13 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %12, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef %4, i32 noundef 28) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %37, label %17

17:                                               ; preds = %11
  br i1 %1, label %18, label %33

18:                                               ; preds = %17
  br i1 %6, label %23, label %19, !prof !12

19:                                               ; preds = %18
  %20 = and i32 %2, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 2
  br label %23

23:                                               ; preds = %19, %18
  %24 = phi i32 [ 0, %18 ], [ %22, %19 ]
  %25 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %24, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef %4, i32 noundef 16) #16
  %28 = getelementptr inbounds %struct.xhci_command, ptr %15, i32 0, i32 3
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  tail call void @kfree(ptr noundef nonnull %15) #15
  br label %37

31:                                               ; preds = %23
  store i32 0, ptr %27, align 8
  %32 = getelementptr inbounds %struct.completion, ptr %27, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %32, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #15
  br label %33

33:                                               ; preds = %31, %17
  %34 = getelementptr inbounds %struct.xhci_command, ptr %15, i32 0, i32 1
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.xhci_command, ptr %15, i32 0, i32 5
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.xhci_command, ptr %15, i32 0, i32 5, i32 1
  store ptr %35, ptr %36, align 8
  br label %37

37:                                               ; preds = %33, %30, %11
  %38 = phi ptr [ %15, %33 ], [ null, %30 ], [ null, %11 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_urb_free_priv(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_alloc_erst(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 4
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.usb_bus, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xhci_erst, ptr %2, i32 0, i32 2
  %12 = lshr i32 %3, 5
  %13 = and i32 %12, 256
  %14 = tail call ptr @dma_alloc_attrs(ptr noundef %10, i32 noundef %7, ptr noundef %11, i32 noundef %3, i32 noundef %13) #15
  store ptr %14, ptr %2, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %4
  %17 = load i32, ptr %5, align 4
  %18 = getelementptr inbounds %struct.xhci_erst, ptr %2, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.xhci_segment, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  store i64 %25, ptr %14, align 8
  %26 = getelementptr %struct.xhci_erst_entry, ptr %14, i32 0, i32 1
  store i32 256, ptr %26, align 8
  %27 = getelementptr %struct.xhci_erst_entry, ptr %14, i32 0, i32 2
  store i32 0, ptr %27, align 4
  %28 = load i32, ptr %5, align 4
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %45

30:                                               ; preds = %30, %21
  %31 = phi i32 [ %42, %30 ], [ 1, %21 ]
  %32 = phi ptr [ %35, %30 ], [ %22, %21 ]
  %33 = getelementptr inbounds %struct.xhci_segment, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %2, align 4
  %35 = load ptr, ptr %33, align 4
  %36 = getelementptr %struct.xhci_erst_entry, ptr %34, i32 %31
  %37 = getelementptr inbounds %struct.xhci_segment, ptr %35, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = zext i32 %38 to i64
  store i64 %39, ptr %36, align 8
  %40 = getelementptr %struct.xhci_erst_entry, ptr %34, i32 %31, i32 1
  store i32 256, ptr %40, align 8
  %41 = getelementptr %struct.xhci_erst_entry, ptr %34, i32 %31, i32 2
  store i32 0, ptr %41, align 4
  %42 = add nuw i32 %31, 1
  %43 = load i32, ptr %5, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %30, label %45

45:                                               ; preds = %30, %21, %16, %4
  %46 = phi i32 [ -12, %4 ], [ 0, %16 ], [ 0, %21 ], [ 0, %30 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_free_erst(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.xhci_erst, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 4
  %10 = getelementptr inbounds %struct.usb_bus, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.xhci_erst, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %9, ptr noundef nonnull %3, i32 noundef %13, i32 noundef 0) #15
  br label %14

14:                                               ; preds = %5, %2
  store ptr null, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xhci_mem_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.usb_bus, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 33
  %6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %5) #15
  %7 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 37
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 37, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 4
  %15 = getelementptr inbounds %struct.usb_bus, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 37, i32 2
  %18 = load i32, ptr %17, align 4
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef %14, ptr noundef nonnull %8, i32 noundef %18, i32 noundef 0) #15
  br label %19

19:                                               ; preds = %10, %1
  store ptr null, ptr %7, align 4
  %20 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 36
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @xhci_ring_free(ptr noundef %0, ptr noundef nonnull %21)
  br label %24

24:                                               ; preds = %23, %19
  store ptr null, ptr %20, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.6) #15
  %25 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 41
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.xhci_container_ctx, ptr %29, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.xhci_container_ctx, ptr %29, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  tail call void @dma_pool_free(ptr noundef %33, ptr noundef %35, i32 noundef %37) #15
  tail call void @kfree(ptr noundef nonnull %29) #15
  br label %38

38:                                               ; preds = %31, %28
  %39 = getelementptr inbounds %struct.xhci_command, ptr %26, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  tail call void @kfree(ptr noundef %40) #15
  tail call void @kfree(ptr noundef nonnull %26) #15
  br label %41

41:                                               ; preds = %38, %24
  store ptr null, ptr %25, align 4
  %42 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 29
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @xhci_ring_free(ptr noundef %0, ptr noundef nonnull %43)
  br label %46

46:                                               ; preds = %45, %41
  store ptr null, ptr %42, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.7) #15
  tail call void @xhci_cleanup_command_queue(ptr noundef %0) #15
  %47 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 24
  %50 = and i32 %49, 127
  %51 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 43
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %73, %46
  %54 = phi i32 [ %74, %73 ], [ 0, %46 ]
  %55 = load ptr, ptr %51, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %76, label %57

57:                                               ; preds = %70, %53
  %58 = phi i32 [ %71, %70 ], [ 0, %53 ]
  %59 = getelementptr %struct.xhci_root_port_bw_info, ptr %55, i32 %54, i32 2, i32 1, i32 %58, i32 1
  %60 = load volatile ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %59
  br i1 %61, label %70, label %62

62:                                               ; preds = %62, %57
  %63 = phi ptr [ %68, %62 ], [ %60, %57 ]
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = load ptr, ptr %63, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %65, ptr %67, align 4
  store volatile ptr %66, ptr %65, align 4
  store volatile ptr %63, ptr %63, align 4
  store ptr %63, ptr %64, align 4
  %68 = load volatile ptr, ptr %59, align 4
  %69 = icmp eq ptr %68, %59
  br i1 %69, label %70, label %62

70:                                               ; preds = %62, %57
  %71 = add nuw nsw i32 %58, 1
  %72 = icmp eq i32 %71, 16
  br i1 %72, label %73, label %57

73:                                               ; preds = %70
  %74 = add nuw nsw i32 %54, 1
  %75 = icmp eq i32 %74, %50
  br i1 %75, label %76, label %53

76:                                               ; preds = %73, %53
  %77 = load i32, ptr %47, align 4
  br label %78

78:                                               ; preds = %76, %46
  %79 = phi i32 [ %77, %76 ], [ %48, %46 ]
  %80 = and i32 %79, 255
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %82, %78
  %83 = phi i32 [ %84, %82 ], [ %80, %78 ]
  tail call fastcc void @xhci_free_virt_devices_depth_first(ptr noundef %0, i32 noundef %83)
  %84 = add nsw i32 %83, -1
  %85 = icmp ugt i32 %83, 1
  br i1 %85, label %82, label %86

86:                                               ; preds = %82, %78
  %87 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 45
  %88 = load ptr, ptr %87, align 8
  tail call void @dma_pool_destroy(ptr noundef %88) #15
  store ptr null, ptr %87, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.8) #15
  %89 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  %90 = load ptr, ptr %89, align 4
  tail call void @dma_pool_destroy(ptr noundef %90) #15
  store ptr null, ptr %89, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.9) #15
  %91 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 46
  %92 = load ptr, ptr %91, align 4
  tail call void @dma_pool_destroy(ptr noundef %92) #15
  store ptr null, ptr %91, align 4
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.10) #15
  %93 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 47
  %94 = load ptr, ptr %93, align 8
  tail call void @dma_pool_destroy(ptr noundef %94) #15
  store ptr null, ptr %93, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.11) #15
  %95 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 28
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.xhci_device_context_array, ptr %96, i32 0, i32 1
  %100 = load i32, ptr %99, align 8
  tail call void @dma_free_attrs(ptr noundef %4, i32 noundef 2056, ptr noundef nonnull %96, i32 noundef %100, i32 noundef 0) #15
  br label %101

101:                                              ; preds = %98, %86
  store ptr null, ptr %95, align 8
  %102 = load ptr, ptr %0, align 8
  %103 = getelementptr inbounds %struct.usb_bus, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 38
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %143, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 8
  %110 = load i32, ptr %109, align 8
  %111 = lshr i32 %110, 16
  %112 = and i32 %111, 992
  %113 = lshr i32 %110, 27
  %114 = or i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %133, label %116

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 22
  br label %118

118:                                              ; preds = %118, %116
  %119 = phi ptr [ %106, %116 ], [ %132, %118 ]
  %120 = phi i32 [ 0, %116 ], [ %130, %118 ]
  %121 = load i32, ptr %117, align 8
  %122 = getelementptr inbounds %struct.xhci_scratchpad, ptr %119, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr ptr, ptr %123, i32 %120
  %125 = load ptr, ptr %124, align 4
  %126 = load ptr, ptr %119, align 4
  %127 = getelementptr i64, ptr %126, i32 %120
  %128 = load i64, ptr %127, align 8
  %129 = trunc i64 %128 to i32
  tail call void @dma_free_attrs(ptr noundef %104, i32 noundef %121, ptr noundef %125, i32 noundef %129, i32 noundef 0) #15
  %130 = add nuw nsw i32 %120, 1
  %131 = icmp eq i32 %130, %114
  %132 = load ptr, ptr %105, align 4
  br i1 %131, label %133, label %118

133:                                              ; preds = %118, %108
  %134 = phi ptr [ %106, %108 ], [ %132, %118 ]
  %135 = getelementptr inbounds %struct.xhci_scratchpad, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  tail call void @kfree(ptr noundef %136) #15
  %137 = shl nuw nsw i32 %114, 3
  %138 = load ptr, ptr %105, align 4
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.xhci_scratchpad, ptr %138, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  tail call void @dma_free_attrs(ptr noundef %104, i32 noundef %137, ptr noundef %139, i32 noundef %141, i32 noundef 0) #15
  %142 = load ptr, ptr %105, align 4
  tail call void @kfree(ptr noundef %142) #15
  store ptr null, ptr %105, align 4
  br label %143

143:                                              ; preds = %133, %101
  %144 = load ptr, ptr %51, align 8
  %145 = icmp ne ptr %144, null
  %146 = icmp ne i32 %50, 0
  %147 = select i1 %145, i1 %146, i1 false
  br i1 %147, label %148, label %167

148:                                              ; preds = %163, %143
  %149 = phi ptr [ %164, %163 ], [ %144, %143 ]
  %150 = phi i32 [ %165, %163 ], [ 0, %143 ]
  %151 = getelementptr %struct.xhci_root_port_bw_info, ptr %149, i32 %150
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, %151
  br i1 %153, label %163, label %154

154:                                              ; preds = %154, %148
  %155 = phi ptr [ %156, %154 ], [ %152, %148 ]
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  store ptr %158, ptr %159, align 4
  store volatile ptr %156, ptr %158, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %155, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %157, align 4
  tail call void @kfree(ptr noundef %155) #15
  %160 = load ptr, ptr %51, align 8
  %161 = getelementptr %struct.xhci_root_port_bw_info, ptr %160, i32 %150
  %162 = icmp eq ptr %156, %161
  br i1 %162, label %163, label %154

163:                                              ; preds = %154, %148
  %164 = phi ptr [ %149, %148 ], [ %160, %154 ]
  %165 = add nuw nsw i32 %150, 1
  %166 = icmp eq i32 %165, %50
  br i1 %166, label %167, label %148

167:                                              ; preds = %163, %143
  %168 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 32
  store i32 0, ptr %168, align 4
  %169 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55
  %170 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 1
  store i32 0, ptr %170, align 4
  %171 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56
  %172 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 1
  store i32 0, ptr %172, align 4
  %173 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 52
  store i32 0, ptr %173, align 8
  %174 = load ptr, ptr %169, align 4
  tail call void @kfree(ptr noundef %174) #15
  %175 = load ptr, ptr %171, align 4
  tail call void @kfree(ptr noundef %175) #15
  %176 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 54
  %177 = load ptr, ptr %176, align 8
  tail call void @kfree(ptr noundef %177) #15
  %178 = load ptr, ptr %51, align 8
  tail call void @kfree(ptr noundef %178) #15
  %179 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 58
  %180 = load ptr, ptr %179, align 8
  tail call void @kfree(ptr noundef %180) #15
  %181 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 61
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %194, label %184

184:                                              ; preds = %167
  %185 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 60
  br label %186

186:                                              ; preds = %186, %184
  %187 = phi i32 [ 0, %184 ], [ %191, %186 ]
  %188 = load ptr, ptr %185, align 8
  %189 = getelementptr %struct.xhci_port_cap, ptr %188, i32 %187
  %190 = load ptr, ptr %189, align 4
  tail call void @kfree(ptr noundef %190) #15
  %191 = add nuw i32 %187, 1
  %192 = load i32, ptr %181, align 4
  %193 = icmp ult i32 %191, %192
  br i1 %193, label %186, label %194

194:                                              ; preds = %186, %167
  %195 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 60
  %196 = load ptr, ptr %195, align 8
  tail call void @kfree(ptr noundef %196) #15
  store i32 0, ptr %181, align 4
  store ptr null, ptr %169, align 4
  store ptr null, ptr %171, align 4
  store ptr null, ptr %176, align 8
  store ptr null, ptr %51, align 8
  store ptr null, ptr %179, align 8
  store ptr null, ptr %195, align 8
  %197 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 22
  store i32 0, ptr %197, align 8
  %198 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 23
  store i32 0, ptr %198, align 4
  %199 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 3
  store i32 0, ptr %199, align 4
  %200 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 3
  store i32 0, ptr %200, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_init(ptr noundef %0) #4 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_init, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #15
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
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !33
  %16 = tail call i32 @__traceiter_xhci_dbg_init(ptr noundef null, ptr noundef %0) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !34
  br label %17

17:                                               ; preds = %15, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_cleanup_command_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_free_virt_devices_depth_first(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %57, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.xhci_virt_device, ptr %4, i32 0, i32 6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %56, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 24
  %15 = and i32 %14, 127
  %16 = icmp ult i32 %15, %9
  br i1 %16, label %56, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 43
  %19 = load ptr, ptr %18, align 8
  %20 = add nsw i32 %9, -1
  %21 = getelementptr %struct.xhci_root_port_bw_info, ptr %19, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %56, label %24

24:                                               ; preds = %52, %17
  %25 = phi i32 [ %53, %52 ], [ %13, %17 ]
  %26 = phi i32 [ %54, %52 ], [ %13, %17 ]
  %27 = phi ptr [ %28, %52 ], [ %22, %17 ]
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.xhci_tt_bw_info, ptr %27, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, %1
  %32 = and i32 %26, 254
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %52, label %35

35:                                               ; preds = %47, %24
  %36 = phi i32 [ %48, %47 ], [ %25, %24 ]
  %37 = phi i32 [ %49, %47 ], [ 1, %24 ]
  %38 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 42, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.xhci_virt_device, ptr %39, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %27
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  tail call fastcc void @xhci_free_virt_devices_depth_first(ptr noundef %0, i32 noundef %37)
  %46 = load i32, ptr %12, align 4
  br label %47

47:                                               ; preds = %45, %41, %35
  %48 = phi i32 [ %36, %35 ], [ %36, %41 ], [ %46, %45 ]
  %49 = add nuw nsw i32 %37, 1
  %50 = and i32 %48, 255
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %35, label %52

52:                                               ; preds = %47, %24
  %53 = phi i32 [ %25, %24 ], [ %48, %47 ]
  %54 = phi i32 [ %26, %24 ], [ %48, %47 ]
  %55 = icmp eq ptr %28, %21
  br i1 %55, label %56, label %24

56:                                               ; preds = %52, %17, %11, %6
  tail call void @xhci_debugfs_remove_slot(ptr noundef %0, i32 noundef %1) #15
  tail call void @xhci_free_virt_device(ptr noundef %0, i32 noundef %1)
  br label %57

57:                                               ; preds = %56, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xhci_mem_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x %struct.anon.71], align 8
  %4 = alloca [8 x %struct.anon.72], align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !15
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.usb_bus, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 31
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 31, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 33
  store i32 -32, ptr %11, align 8
  %12 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 33, i32 0, i32 1
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 33, i32 0, i32 1, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 33, i32 0, i32 2
  store ptr @xhci_handle_command_timeout, ptr %14, align 4
  %15 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 33, i32 1
  tail call void @init_timer_key(ptr noundef %15, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #15
  %16 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 34
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 34, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %17, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #15
  %18 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.xhci_op_regs, ptr %19, i32 0, i32 2
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !36
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.12, i32 noundef %21) #15
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %24, %2
  %25 = phi i32 [ %27, %24 ], [ %21, %2 ]
  %26 = phi i32 [ %28, %24 ], [ 0, %2 ]
  %27 = lshr i32 %25, 1
  %28 = add nuw nsw i32 %26, 1
  %29 = icmp ult i32 %26, 15
  %30 = and i32 %25, 2
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %24, label %33

33:                                               ; preds = %24
  br i1 %29, label %34, label %38

34:                                               ; preds = %33, %2
  %35 = phi i32 [ %28, %33 ], [ 0, %2 ]
  %36 = shl nuw nsw i32 4096, %35
  %37 = lshr exact i32 %36, 10
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.13, i32 noundef %37) #15
  br label %41

38:                                               ; preds = %33
  %39 = load ptr, ptr %0, align 8
  %40 = load ptr, ptr %39, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.14) #18
  br label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 23
  store i32 12, ptr %42, align 4
  %43 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 22
  store i32 4096, ptr %43, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.15, i32 noundef 4) #15
  %44 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.xhci_cap_regs, ptr %45, i32 0, i32 1
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !37
  %48 = and i32 %47, 255
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.16, i32 noundef %48) #15
  %49 = load ptr, ptr %18, align 4
  %50 = getelementptr inbounds %struct.xhci_op_regs, ptr %49, i32 0, i32 9
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !38
  %52 = and i32 %51, -256
  %53 = or i32 %52, %48
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.17, i32 noundef %53) #15
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !39
  tail call void @arm_heavy_mb() #15
  %54 = load ptr, ptr %18, align 4
  %55 = getelementptr inbounds %struct.xhci_op_regs, ptr %54, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #15, !srcloc !40
  %56 = lshr i32 %1, 5
  %57 = and i32 %56, 256
  %58 = call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef 2056, ptr noundef nonnull %5, i32 noundef %1, i32 noundef %57) #15
  %59 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 28
  store ptr %58, ptr %59, align 8
  %60 = icmp eq ptr %58, null
  br i1 %60, label %402, label %61

61:                                               ; preds = %41
  %62 = load i32, ptr %5, align 4
  %63 = getelementptr inbounds %struct.xhci_device_context_array, ptr %58, i32 0, i32 1
  store i32 %62, ptr %63, align 8
  %64 = load ptr, ptr %59, align 8
  %65 = getelementptr inbounds %struct.xhci_device_context_array, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 8
  %67 = zext i32 %66 to i64
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.18, i64 noundef %67, ptr noundef %64) #15
  %68 = load i32, ptr %5, align 4
  %69 = load ptr, ptr %18, align 4
  %70 = getelementptr inbounds %struct.xhci_op_regs, ptr %69, i32 0, i32 8
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !41
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #15, !srcloc !40
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !42
  call void @arm_heavy_mb() #15
  %71 = getelementptr i8, ptr %70, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 0) #15, !srcloc !40
  %72 = load i32, ptr %43, align 8
  %73 = call ptr @dma_pool_create(ptr noundef nonnull @.str.19, ptr noundef %8, i32 noundef 4096, i32 noundef 4096, i32 noundef %72) #15
  %74 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 45
  store ptr %73, ptr %74, align 8
  %75 = load i32, ptr %43, align 8
  %76 = call ptr @dma_pool_create(ptr noundef nonnull @.str.20, ptr noundef %8, i32 noundef 2112, i32 noundef 64, i32 noundef %75) #15
  %77 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 44
  store ptr %76, ptr %77, align 4
  %78 = load ptr, ptr %74, align 8
  %79 = icmp eq ptr %78, null
  %80 = icmp eq ptr %76, null
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %402, label %82

82:                                               ; preds = %61
  %83 = call ptr @dma_pool_create(ptr noundef nonnull @.str.21, ptr noundef %8, i32 noundef 256, i32 noundef 16, i32 noundef 0) #15
  %84 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 46
  store ptr %83, ptr %84, align 4
  %85 = call ptr @dma_pool_create(ptr noundef nonnull @.str.22, ptr noundef %8, i32 noundef 1024, i32 noundef 16, i32 noundef 0) #15
  %86 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 47
  store ptr %85, ptr %86, align 8
  %87 = load ptr, ptr %84, align 4
  %88 = icmp eq ptr %87, null
  %89 = icmp eq ptr %85, null
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %402, label %91

91:                                               ; preds = %82
  %92 = call ptr @xhci_ring_alloc(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 0, i32 noundef %1)
  %93 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 29
  store ptr %92, ptr %93, align 4
  %94 = icmp eq ptr %92, null
  br i1 %94, label %402, label %95

95:                                               ; preds = %91
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.23, ptr noundef nonnull %92) #15
  %96 = load ptr, ptr %93, align 4
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.xhci_segment, ptr %97, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = zext i32 %99 to i64
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.24, i64 noundef %100) #15
  %101 = load ptr, ptr %18, align 4
  %102 = getelementptr inbounds %struct.xhci_op_regs, ptr %101, i32 0, i32 6
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #15, !srcloc !35
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !43
  %104 = getelementptr i32, ptr %102, i32 1
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #15, !srcloc !35
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !44
  %106 = and i32 %103, 63
  %107 = load ptr, ptr %93, align 4
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.xhci_segment, ptr %108, i32 0, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, -64
  %112 = or i32 %111, %106
  %113 = getelementptr inbounds %struct.xhci_ring, ptr %107, i32 0, i32 7
  %114 = load i32, ptr %113, align 4
  %115 = or i32 %112, %114
  %116 = zext i32 %115 to i64
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.25, i64 noundef %116) #15
  %117 = load ptr, ptr %18, align 4
  %118 = getelementptr inbounds %struct.xhci_op_regs, ptr %117, i32 0, i32 6
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !41
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %115) #15, !srcloc !40
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !42
  call void @arm_heavy_mb() #15
  %119 = getelementptr i8, ptr %118, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 0) #15, !srcloc !40
  %120 = call ptr @xhci_alloc_command_with_ctx(ptr noundef %0, i1 noundef zeroext true, i32 noundef %1)
  %121 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 41
  store ptr %120, ptr %121, align 4
  %122 = icmp eq ptr %120, null
  br i1 %122, label %402, label %123

123:                                              ; preds = %95
  %124 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 32
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %124, align 4
  %127 = load ptr, ptr %44, align 8
  %128 = getelementptr inbounds %struct.xhci_cap_regs, ptr %127, i32 0, i32 5
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #15, !srcloc !35
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !45
  %130 = and i32 %129, -4
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.26, i32 noundef %130) #15
  %131 = load ptr, ptr %44, align 8
  %132 = getelementptr i8, ptr %131, i32 %130
  %133 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 5
  store ptr %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 4
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.xhci_run_regs, ptr %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 6
  store ptr %136, ptr %137, align 8
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.27) #15
  %138 = call ptr @xhci_ring_alloc(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef 6, i32 noundef 0, i32 noundef %1)
  %139 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 36
  store ptr %138, ptr %139, align 8
  %140 = icmp eq ptr %138, null
  br i1 %140, label %402, label %141

141:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %142 = getelementptr inbounds %struct.anon.71, ptr %3, i32 1
  store i64 0, ptr %3, align 8
  %143 = load ptr, ptr %138, align 4
  %144 = getelementptr inbounds %struct.xhci_segment, ptr %143, i32 0, i32 2
  %145 = load i32, ptr %144, align 4
  %146 = add i32 %145, -16
  store i32 %146, ptr %142, align 8
  %147 = getelementptr inbounds %struct.anon.71, ptr %3, i32 1, i32 1
  store ptr null, ptr %147, align 4
  %148 = getelementptr inbounds %struct.anon.71, ptr %3, i32 2
  %149 = add i32 %145, -1
  store i32 %149, ptr %148, align 8
  %150 = getelementptr inbounds %struct.anon.71, ptr %3, i32 2, i32 1
  store ptr null, ptr %150, align 4
  %151 = getelementptr inbounds %struct.anon.71, ptr %3, i32 3
  store i32 %145, ptr %151, align 8
  %152 = getelementptr inbounds %struct.anon.71, ptr %3, i32 3, i32 1
  store ptr %143, ptr %152, align 4
  %153 = getelementptr inbounds %struct.anon.71, ptr %3, i32 4
  %154 = add i32 %145, 4080
  store i32 %154, ptr %153, align 8
  %155 = getelementptr inbounds %struct.anon.71, ptr %3, i32 4, i32 1
  store ptr %143, ptr %155, align 4
  %156 = getelementptr inbounds %struct.anon.71, ptr %3, i32 5
  %157 = add i32 %145, 4081
  store i32 %157, ptr %156, align 8
  %158 = getelementptr inbounds %struct.anon.71, ptr %3, i32 5, i32 1
  store ptr null, ptr %158, align 4
  %159 = getelementptr inbounds %struct.anon.71, ptr %3, i32 6
  %160 = add i32 %145, 4096
  store i32 %160, ptr %159, align 8
  %161 = getelementptr inbounds %struct.anon.71, ptr %3, i32 6, i32 1
  store ptr null, ptr %161, align 4
  %162 = getelementptr inbounds %struct.anon.71, ptr %3, i32 7
  store i32 -1, ptr %162, align 8
  %163 = getelementptr inbounds %struct.anon.71, ptr %3, i32 7, i32 1
  store ptr null, ptr %163, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %4, i8 0, i32 160, i1 false) #15, !annotation !15
  %164 = load ptr, ptr %138, align 4
  store ptr %164, ptr %4, align 4
  %165 = getelementptr inbounds %struct.anon.72, ptr %4, i32 0, i32 1
  %166 = load ptr, ptr %164, align 4
  store ptr %166, ptr %165, align 4
  %167 = getelementptr inbounds %struct.anon.72, ptr %4, i32 0, i32 2
  %168 = load ptr, ptr %138, align 4
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr %union.xhci_trb, ptr %169, i32 255
  store ptr %170, ptr %167, align 4
  %171 = getelementptr inbounds %struct.anon.72, ptr %4, i32 0, i32 3
  %172 = load ptr, ptr %93, align 4
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.xhci_segment, ptr %173, i32 0, i32 2
  %175 = load i32, ptr %174, align 4
  store i32 %175, ptr %171, align 4
  %176 = getelementptr inbounds %struct.anon.72, ptr %4, i32 0, i32 4
  store ptr null, ptr %176, align 4
  %177 = getelementptr inbounds %struct.anon.72, ptr %4, i32 1
  %178 = load ptr, ptr %138, align 4
  store ptr %178, ptr %177, align 4
  %179 = getelementptr inbounds %struct.anon.72, ptr %4, i32 1, i32 1
  %180 = load ptr, ptr %178, align 4
  store ptr %180, ptr %179, align 4
  %181 = getelementptr inbounds %struct.anon.72, ptr %4, i32 1, i32 2
  %182 = load ptr, ptr %172, align 4
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr %union.xhci_trb, ptr %183, i32 255
  store ptr %184, ptr %181, align 4
  %185 = getelementptr inbounds %struct.anon.72, ptr %4, i32 1, i32 3
  %186 = getelementptr inbounds %struct.xhci_segment, ptr %182, i32 0, i32 2
  %187 = load i32, ptr %186, align 4
  store i32 %187, ptr %185, align 4
  %188 = getelementptr inbounds %struct.anon.72, ptr %4, i32 1, i32 4
  store ptr null, ptr %188, align 4
  %189 = getelementptr inbounds %struct.anon.72, ptr %4, i32 2
  %190 = load ptr, ptr %138, align 4
  store ptr %190, ptr %189, align 4
  %191 = getelementptr inbounds %struct.anon.72, ptr %4, i32 2, i32 1
  %192 = load ptr, ptr %172, align 4
  %193 = load ptr, ptr %192, align 4
  store ptr %193, ptr %191, align 4
  %194 = getelementptr inbounds %struct.anon.72, ptr %4, i32 2, i32 2
  %195 = getelementptr %union.xhci_trb, ptr %193, i32 255
  store ptr %195, ptr %194, align 4
  %196 = getelementptr inbounds %struct.anon.72, ptr %4, i32 2, i32 3
  %197 = load ptr, ptr %172, align 4
  %198 = getelementptr inbounds %struct.xhci_segment, ptr %197, i32 0, i32 2
  %199 = load i32, ptr %198, align 4
  store i32 %199, ptr %196, align 4
  %200 = getelementptr inbounds %struct.anon.72, ptr %4, i32 2, i32 4
  store ptr null, ptr %200, align 4
  %201 = getelementptr inbounds %struct.anon.72, ptr %4, i32 3
  %202 = load ptr, ptr %138, align 4
  store ptr %202, ptr %201, align 4
  %203 = getelementptr inbounds %struct.anon.72, ptr %4, i32 3, i32 1
  %204 = load ptr, ptr %138, align 4
  %205 = load ptr, ptr %204, align 4
  store ptr %205, ptr %203, align 4
  %206 = getelementptr inbounds %struct.anon.72, ptr %4, i32 3, i32 2
  %207 = load ptr, ptr %138, align 4
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr %union.xhci_trb, ptr %208, i32 3
  store ptr %209, ptr %206, align 4
  %210 = getelementptr inbounds %struct.anon.72, ptr %4, i32 3, i32 3
  %211 = load ptr, ptr %138, align 4
  %212 = getelementptr inbounds %struct.xhci_segment, ptr %211, i32 0, i32 2
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, 64
  store i32 %214, ptr %210, align 4
  %215 = getelementptr inbounds %struct.anon.72, ptr %4, i32 3, i32 4
  store ptr null, ptr %215, align 4
  %216 = getelementptr inbounds %struct.anon.72, ptr %4, i32 4
  %217 = load ptr, ptr %138, align 4
  store ptr %217, ptr %216, align 4
  %218 = getelementptr inbounds %struct.anon.72, ptr %4, i32 4, i32 1
  %219 = load ptr, ptr %138, align 4
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr %union.xhci_trb, ptr %220, i32 3
  store ptr %221, ptr %218, align 4
  %222 = getelementptr inbounds %struct.anon.72, ptr %4, i32 4, i32 2
  %223 = load ptr, ptr %138, align 4
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr %union.xhci_trb, ptr %224, i32 6
  store ptr %225, ptr %222, align 4
  %226 = getelementptr inbounds %struct.anon.72, ptr %4, i32 4, i32 3
  %227 = load ptr, ptr %138, align 4
  %228 = getelementptr inbounds %struct.xhci_segment, ptr %227, i32 0, i32 2
  %229 = load i32, ptr %228, align 4
  %230 = add i32 %229, 32
  store i32 %230, ptr %226, align 4
  %231 = getelementptr inbounds %struct.anon.72, ptr %4, i32 4, i32 4
  store ptr null, ptr %231, align 4
  %232 = getelementptr inbounds %struct.anon.72, ptr %4, i32 5
  %233 = load ptr, ptr %138, align 4
  store ptr %233, ptr %232, align 4
  %234 = getelementptr inbounds %struct.anon.72, ptr %4, i32 5, i32 1
  %235 = load ptr, ptr %138, align 4
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr %union.xhci_trb, ptr %236, i32 253
  store ptr %237, ptr %234, align 4
  %238 = getelementptr inbounds %struct.anon.72, ptr %4, i32 5, i32 2
  %239 = load ptr, ptr %138, align 4
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr %union.xhci_trb, ptr %240, i32 1
  store ptr %241, ptr %238, align 4
  %242 = getelementptr inbounds %struct.anon.72, ptr %4, i32 5, i32 3
  %243 = load ptr, ptr %138, align 4
  %244 = getelementptr inbounds %struct.xhci_segment, ptr %243, i32 0, i32 2
  %245 = load i32, ptr %244, align 4
  %246 = add i32 %245, 32
  store i32 %246, ptr %242, align 4
  %247 = getelementptr inbounds %struct.anon.72, ptr %4, i32 5, i32 4
  store ptr null, ptr %247, align 4
  %248 = getelementptr inbounds %struct.anon.72, ptr %4, i32 6
  %249 = load ptr, ptr %138, align 4
  store ptr %249, ptr %248, align 4
  %250 = getelementptr inbounds %struct.anon.72, ptr %4, i32 6, i32 1
  %251 = load ptr, ptr %138, align 4
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr %union.xhci_trb, ptr %252, i32 253
  store ptr %253, ptr %250, align 4
  %254 = getelementptr inbounds %struct.anon.72, ptr %4, i32 6, i32 2
  %255 = load ptr, ptr %138, align 4
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr %union.xhci_trb, ptr %256, i32 1
  store ptr %257, ptr %254, align 4
  %258 = getelementptr inbounds %struct.anon.72, ptr %4, i32 6, i32 3
  %259 = load ptr, ptr %138, align 4
  %260 = getelementptr inbounds %struct.xhci_segment, ptr %259, i32 0, i32 2
  %261 = load i32, ptr %260, align 4
  %262 = add i32 %261, 4032
  store i32 %262, ptr %258, align 4
  %263 = getelementptr inbounds %struct.anon.72, ptr %4, i32 6, i32 4
  store ptr null, ptr %263, align 4
  %264 = getelementptr inbounds %struct.anon.72, ptr %4, i32 7
  %265 = load ptr, ptr %138, align 4
  store ptr %265, ptr %264, align 4
  %266 = getelementptr inbounds %struct.anon.72, ptr %4, i32 7, i32 1
  %267 = load ptr, ptr %138, align 4
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr %union.xhci_trb, ptr %268, i32 253
  store ptr %269, ptr %266, align 4
  %270 = getelementptr inbounds %struct.anon.72, ptr %4, i32 7, i32 2
  %271 = load ptr, ptr %138, align 4
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr %union.xhci_trb, ptr %272, i32 1
  store ptr %273, ptr %270, align 4
  %274 = getelementptr inbounds %struct.anon.72, ptr %4, i32 7, i32 3
  %275 = load ptr, ptr %172, align 4
  %276 = getelementptr inbounds %struct.xhci_segment, ptr %275, i32 0, i32 2
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %277, 32
  store i32 %278, ptr %274, align 4
  %279 = getelementptr inbounds %struct.anon.72, ptr %4, i32 7, i32 4
  store ptr null, ptr %279, align 4
  br label %283

280:                                              ; preds = %283
  %281 = add nuw nsw i32 %284, 1
  %282 = icmp eq i32 %281, 8
  br i1 %282, label %298, label %283

283:                                              ; preds = %280, %141
  %284 = phi i32 [ 0, %141 ], [ %281, %280 ]
  %285 = load ptr, ptr %139, align 8
  %286 = load ptr, ptr %285, align 4
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr %union.xhci_trb, ptr %287, i32 255
  %289 = getelementptr [8 x %struct.anon.71], ptr %3, i32 0, i32 %284
  %290 = load i32, ptr %289, align 8
  %291 = getelementptr [8 x %struct.anon.71], ptr %3, i32 0, i32 %284, i32 1
  %292 = load ptr, ptr %291, align 4
  %293 = call fastcc i32 @xhci_test_trb_in_td(ptr noundef %0, ptr noundef %286, ptr noundef %287, ptr noundef %288, i32 noundef %290, ptr noundef %292, ptr noundef nonnull @.str.38, i32 noundef %284) #15
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %312, label %280

295:                                              ; preds = %298
  %296 = add nuw nsw i32 %299, 1
  %297 = icmp eq i32 %296, 8
  br i1 %297, label %313, label %298

298:                                              ; preds = %295, %280
  %299 = phi i32 [ %296, %295 ], [ 0, %280 ]
  %300 = getelementptr [8 x %struct.anon.72], ptr %4, i32 0, i32 %299
  %301 = load ptr, ptr %300, align 4
  %302 = getelementptr [8 x %struct.anon.72], ptr %4, i32 0, i32 %299, i32 1
  %303 = load ptr, ptr %302, align 4
  %304 = getelementptr [8 x %struct.anon.72], ptr %4, i32 0, i32 %299, i32 2
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr [8 x %struct.anon.72], ptr %4, i32 0, i32 %299, i32 3
  %307 = load i32, ptr %306, align 4
  %308 = getelementptr [8 x %struct.anon.72], ptr %4, i32 0, i32 %299, i32 4
  %309 = load ptr, ptr %308, align 4
  %310 = call fastcc i32 @xhci_test_trb_in_td(ptr noundef %0, ptr noundef %301, ptr noundef %303, ptr noundef %305, i32 noundef %307, ptr noundef %309, ptr noundef nonnull @.str.39, i32 noundef %299) #15
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %295

312:                                              ; preds = %298, %283
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  br label %402

313:                                              ; preds = %295
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  %314 = load ptr, ptr %139, align 8
  %315 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 37
  %316 = getelementptr inbounds %struct.xhci_ring, ptr %314, i32 0, i32 10
  %317 = load i32, ptr %316, align 4
  %318 = shl i32 %317, 4
  %319 = load ptr, ptr %0, align 8
  %320 = getelementptr inbounds %struct.usb_bus, ptr %319, i32 0, i32 1
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 37, i32 2
  %323 = call ptr @dma_alloc_attrs(ptr noundef %321, i32 noundef %318, ptr noundef %322, i32 noundef %1, i32 noundef %57) #15
  store ptr %323, ptr %315, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %402, label %325

325:                                              ; preds = %313
  %326 = load i32, ptr %316, align 4
  %327 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 37, i32 1
  store i32 %326, ptr %327, align 4
  %328 = load i32, ptr %316, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %354, label %330

330:                                              ; preds = %325
  %331 = load ptr, ptr %314, align 4
  %332 = getelementptr inbounds %struct.xhci_segment, ptr %331, i32 0, i32 2
  %333 = load i32, ptr %332, align 4
  %334 = zext i32 %333 to i64
  store i64 %334, ptr %323, align 8
  %335 = getelementptr %struct.xhci_erst_entry, ptr %323, i32 0, i32 1
  store i32 256, ptr %335, align 8
  %336 = getelementptr %struct.xhci_erst_entry, ptr %323, i32 0, i32 2
  store i32 0, ptr %336, align 4
  %337 = load i32, ptr %316, align 4
  %338 = icmp ugt i32 %337, 1
  br i1 %338, label %339, label %354

339:                                              ; preds = %339, %330
  %340 = phi i32 [ %351, %339 ], [ 1, %330 ]
  %341 = phi ptr [ %344, %339 ], [ %331, %330 ]
  %342 = getelementptr inbounds %struct.xhci_segment, ptr %341, i32 0, i32 1
  %343 = load ptr, ptr %315, align 4
  %344 = load ptr, ptr %342, align 4
  %345 = getelementptr %struct.xhci_erst_entry, ptr %343, i32 %340
  %346 = getelementptr inbounds %struct.xhci_segment, ptr %344, i32 0, i32 2
  %347 = load i32, ptr %346, align 4
  %348 = zext i32 %347 to i64
  store i64 %348, ptr %345, align 8
  %349 = getelementptr %struct.xhci_erst_entry, ptr %343, i32 %340, i32 1
  store i32 256, ptr %349, align 8
  %350 = getelementptr %struct.xhci_erst_entry, ptr %343, i32 %340, i32 2
  store i32 0, ptr %350, align 4
  %351 = add nuw i32 %340, 1
  %352 = load i32, ptr %316, align 4
  %353 = icmp ult i32 %351, %352
  br i1 %353, label %339, label %354

354:                                              ; preds = %339, %330, %325
  %355 = load ptr, ptr %137, align 8
  %356 = getelementptr inbounds %struct.xhci_intr_reg, ptr %355, i32 0, i32 2
  %357 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %356) #15, !srcloc !35
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !46
  %358 = and i32 %357, -65536
  %359 = or i32 %358, 1
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.28, i32 noundef %359) #15
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !47
  call void @arm_heavy_mb() #15
  %360 = load ptr, ptr %137, align 8
  %361 = getelementptr inbounds %struct.xhci_intr_reg, ptr %360, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %361, i32 %359) #15, !srcloc !40
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.29) #15
  %362 = load i32, ptr %322, align 4
  %363 = zext i32 %362 to i64
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.30, i64 noundef %363) #15
  %364 = load ptr, ptr %137, align 8
  %365 = getelementptr inbounds %struct.xhci_intr_reg, ptr %364, i32 0, i32 4
  %366 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %365) #15, !srcloc !35
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !43
  %367 = getelementptr i32, ptr %365, i32 1
  %368 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %367) #15, !srcloc !35
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !44
  %369 = and i32 %366, 15
  %370 = load i32, ptr %322, align 4
  %371 = and i32 %370, -16
  %372 = or i32 %371, %369
  %373 = zext i32 %372 to i64
  %374 = load ptr, ptr %137, align 8
  %375 = getelementptr inbounds %struct.xhci_intr_reg, ptr %374, i32 0, i32 4
  call fastcc void @xhci_write_64(i64 noundef %373, ptr noundef %375)
  call fastcc void @xhci_set_hc_event_deq(ptr noundef %0)
  call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.31) #15
  %376 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 20
  store i32 32, ptr %376, align 8
  %377 = getelementptr i8, ptr %0, i32 240
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(1024) %377, i8 0, i32 1024, i1 false)
  br label %378

378:                                              ; preds = %378, %354
  %379 = phi i32 [ %386, %378 ], [ 0, %354 ]
  %380 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 3, i32 5, i32 %379
  store i32 0, ptr %380, align 4
  %381 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 3, i32 5, i32 %379
  store i32 0, ptr %381, align 4
  %382 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 3, i32 8, i32 %379
  store i32 0, ptr %382, align 4
  %383 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 3, i32 8, i32 %379, i32 1
  call void @__init_swait_queue_head(ptr noundef %383, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #15
  %384 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 3, i32 9, i32 %379
  store i32 0, ptr %384, align 4
  %385 = getelementptr %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 3, i32 9, i32 %379, i32 1
  call void @__init_swait_queue_head(ptr noundef %385, ptr noundef nonnull @.str.37, ptr noundef nonnull @init_completion.__key) #15
  %386 = add nuw nsw i32 %379, 1
  %387 = icmp eq i32 %386, 31
  br i1 %387, label %388, label %378

388:                                              ; preds = %378
  %389 = call fastcc i32 @scratchpad_alloc(ptr noundef %0, i32 noundef %1)
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %402

391:                                              ; preds = %388
  %392 = call fastcc i32 @xhci_setup_port_arrays(ptr noundef %0, i32 noundef %1)
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %402

394:                                              ; preds = %391
  %395 = load ptr, ptr %18, align 4
  %396 = getelementptr inbounds %struct.xhci_op_regs, ptr %395, i32 0, i32 5
  %397 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %396) #15, !srcloc !35
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !48
  %398 = and i32 %397, -65536
  %399 = or i32 %398, 2
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !49
  call void @arm_heavy_mb() #15
  %400 = load ptr, ptr %18, align 4
  %401 = getelementptr inbounds %struct.xhci_op_regs, ptr %400, i32 0, i32 5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %401, i32 %399) #15, !srcloc !40
  br label %405

402:                                              ; preds = %391, %388, %313, %312, %123, %95, %91, %82, %61, %41
  %403 = call i32 @xhci_halt(ptr noundef %0) #15
  %404 = call i32 @xhci_reset(ptr noundef %0) #15
  call void @xhci_mem_cleanup(ptr noundef %0)
  br label %405

405:                                              ; preds = %402, %394
  %406 = phi i32 [ -12, %402 ], [ 0, %394 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %406
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_handle_command_timeout(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_write_64(i64 noundef %0, ptr noundef %1) unnamed_addr #4 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !41
  tail call void @arm_heavy_mb() #15
  %3 = trunc i64 %0 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #15, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !42
  tail call void @arm_heavy_mb() #15
  %4 = lshr i64 %0, 32
  %5 = trunc i64 %4 to i32
  %6 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #15, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xhci_set_hc_event_deq(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.xhci_ring, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xhci_ring, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %5, ptr noundef %7) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8
  %12 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.44) #18
  br label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.xhci_intr_reg, ptr %15, i32 0, i32 5
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !43
  %18 = getelementptr i32, ptr %16, i32 1
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !44
  %20 = and i32 %17, 7
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.45) #15
  %21 = and i32 %8, -16
  %22 = or i32 %20, %21
  %23 = load ptr, ptr %14, align 8
  %24 = getelementptr inbounds %struct.xhci_intr_reg, ptr %23, i32 0, i32 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !41
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #15, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !42
  tail call void @arm_heavy_mb() #15
  %25 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #15, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scratchpad_alloc(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.usb_bus, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 992
  %11 = lshr i32 %8, 27
  %12 = or i32 %10, %11
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.46, i32 noundef %12) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %101, label %14

14:                                               ; preds = %2
  %15 = or i32 %1, 256
  %16 = and i32 %1, 17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !12

18:                                               ; preds = %14
  %19 = and i32 %1, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 1, i32 2
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ 0, %14 ], [ %21, %18 ]
  %24 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %23, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef %15, i32 noundef 12) #16
  %27 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 38
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %101, label %29

29:                                               ; preds = %22
  %30 = shl nuw nsw i32 %12, 3
  %31 = getelementptr inbounds %struct.xhci_scratchpad, ptr %26, i32 0, i32 1
  %32 = lshr i32 %1, 5
  %33 = and i32 %32, 256
  %34 = tail call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef %30, ptr noundef %31, i32 noundef %1, i32 noundef %33) #15
  %35 = load ptr, ptr %27, align 4
  store ptr %34, ptr %35, align 4
  %36 = load ptr, ptr %27, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %99, label %39

39:                                               ; preds = %29
  %40 = shl nuw nsw i32 %12, 2
  %41 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef %15) #17
  %42 = load ptr, ptr %27, align 4
  %43 = getelementptr inbounds %struct.xhci_scratchpad, ptr %42, i32 0, i32 2
  store ptr %41, ptr %43, align 4
  %44 = load ptr, ptr %27, align 4
  %45 = getelementptr inbounds %struct.xhci_scratchpad, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %93, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.xhci_scratchpad, ptr %44, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 28
  %53 = load ptr, ptr %52, align 8
  store i64 %51, ptr %53, align 8
  %54 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 22
  br label %55

55:                                               ; preds = %62, %48
  %56 = phi i32 [ %72, %62 ], [ 0, %48 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !15
  %57 = load i32, ptr %54, align 8
  %58 = call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef %57, ptr noundef nonnull %3, i32 noundef %1, i32 noundef %33) #15
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %61 = icmp eq i32 %56, 0
  br i1 %61, label %88, label %74

62:                                               ; preds = %55
  %63 = load i32, ptr %3, align 4
  %64 = zext i32 %63 to i64
  %65 = load ptr, ptr %27, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i64, ptr %66, i32 %56
  store i64 %64, ptr %67, align 8
  %68 = load ptr, ptr %27, align 4
  %69 = getelementptr inbounds %struct.xhci_scratchpad, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr ptr, ptr %70, i32 %56
  store ptr %58, ptr %71, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %72 = add nuw nsw i32 %56, 1
  %73 = icmp eq i32 %72, %12
  br i1 %73, label %101, label %55

74:                                               ; preds = %74, %60
  %75 = phi i32 [ %76, %74 ], [ %56, %60 ]
  %76 = add nsw i32 %75, -1
  %77 = load i32, ptr %54, align 8
  %78 = load ptr, ptr %27, align 4
  %79 = getelementptr inbounds %struct.xhci_scratchpad, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr ptr, ptr %80, i32 %76
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %78, align 4
  %84 = getelementptr i64, ptr %83, i32 %76
  %85 = load i64, ptr %84, align 8
  %86 = trunc i64 %85 to i32
  call void @dma_free_attrs(ptr noundef %6, i32 noundef %77, ptr noundef %82, i32 noundef %86, i32 noundef 0) #15
  %87 = icmp sgt i32 %75, 1
  br i1 %87, label %74, label %88

88:                                               ; preds = %74, %60
  %89 = load ptr, ptr %27, align 4
  %90 = getelementptr inbounds %struct.xhci_scratchpad, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  call void @kfree(ptr noundef %91) #15
  %92 = load ptr, ptr %27, align 4
  br label %93

93:                                               ; preds = %88, %39
  %94 = phi ptr [ %44, %39 ], [ %92, %88 ]
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.xhci_scratchpad, ptr %94, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  call void @dma_free_attrs(ptr noundef %6, i32 noundef %30, ptr noundef %95, i32 noundef %97, i32 noundef 0) #15
  %98 = load ptr, ptr %27, align 4
  br label %99

99:                                               ; preds = %93, %29
  %100 = phi ptr [ %36, %29 ], [ %98, %93 ]
  call void @kfree(ptr noundef %100) #15
  store ptr null, ptr %27, align 4
  br label %101

101:                                              ; preds = %99, %62, %22, %2
  %102 = phi i32 [ 0, %2 ], [ -12, %22 ], [ -12, %99 ], [ 0, %62 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_setup_port_arrays(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 24
  %6 = and i32 %5, 127
  %7 = or i32 %1, 256
  %8 = mul nuw nsw i32 %6, 20
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef %7) #17
  %10 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 54
  store ptr %9, ptr %10, align 8
  %11 = icmp eq ptr %9, null
  br i1 %11, label %464, label %12

12:                                               ; preds = %2
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.xhci_op_regs, ptr %16, i32 0, i32 11
  store ptr %17, ptr %9, align 64
  %18 = load ptr, ptr %10, align 8
  %19 = getelementptr %struct.xhci_port, ptr %18, i32 0, i32 1
  store i32 0, ptr %19, align 4
  %20 = icmp eq i32 %6, 1
  br i1 %20, label %33, label %21

21:                                               ; preds = %21, %14
  %22 = phi i32 [ %31, %21 ], [ 1, %14 ]
  %23 = load ptr, ptr %10, align 8
  %24 = load ptr, ptr %15, align 4
  %25 = getelementptr inbounds %struct.xhci_op_regs, ptr %24, i32 0, i32 11
  %26 = shl i32 %22, 2
  %27 = getelementptr i32, ptr %25, i32 %26
  %28 = getelementptr %struct.xhci_port, ptr %23, i32 %22
  store ptr %27, ptr %28, align 4
  %29 = load ptr, ptr %10, align 8
  %30 = getelementptr %struct.xhci_port, ptr %29, i32 %22, i32 1
  store i32 %22, ptr %30, align 4
  %31 = add nuw nsw i32 %22, 1
  %32 = icmp eq i32 %31, %6
  br i1 %32, label %33, label %21

33:                                               ; preds = %21, %14, %12
  %34 = phi i1 [ true, %12 ], [ %13, %14 ], [ %13, %21 ]
  %35 = mul nuw nsw i32 %6, 412
  %36 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %35, i32 noundef %7) #17
  %37 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 43
  store ptr %36, ptr %37, align 8
  %38 = icmp eq ptr %36, null
  br i1 %38, label %464, label %39

39:                                               ; preds = %33
  br i1 %34, label %82, label %40

40:                                               ; preds = %80, %39
  %41 = phi ptr [ %81, %80 ], [ %36, %39 ]
  %42 = phi i32 [ %78, %80 ], [ 0, %39 ]
  %43 = getelementptr %struct.xhci_root_port_bw_info, ptr %41, i32 %42
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %43, ptr %44, align 4
  %45 = load ptr, ptr %37, align 8
  %46 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 0, i32 1
  store volatile ptr %46, ptr %46, align 4
  %47 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 0, i32 1, i32 1
  store ptr %46, ptr %47, align 4
  %48 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 1, i32 1
  store volatile ptr %48, ptr %48, align 4
  %49 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 1, i32 1, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 2, i32 1
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 2, i32 1, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 3, i32 1
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 3, i32 1, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 4, i32 1
  store volatile ptr %54, ptr %54, align 4
  %55 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 4, i32 1, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 5, i32 1
  store volatile ptr %56, ptr %56, align 4
  %57 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 5, i32 1, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 6, i32 1
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 6, i32 1, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 7, i32 1
  store volatile ptr %60, ptr %60, align 4
  %61 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 7, i32 1, i32 1
  store ptr %60, ptr %61, align 4
  %62 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 8, i32 1
  store volatile ptr %62, ptr %62, align 4
  %63 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 8, i32 1, i32 1
  store ptr %62, ptr %63, align 4
  %64 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 9, i32 1
  store volatile ptr %64, ptr %64, align 4
  %65 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 9, i32 1, i32 1
  store ptr %64, ptr %65, align 4
  %66 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 10, i32 1
  store volatile ptr %66, ptr %66, align 4
  %67 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 10, i32 1, i32 1
  store ptr %66, ptr %67, align 4
  %68 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 11, i32 1
  store volatile ptr %68, ptr %68, align 4
  %69 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 11, i32 1, i32 1
  store ptr %68, ptr %69, align 4
  %70 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 12, i32 1
  store volatile ptr %70, ptr %70, align 4
  %71 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 12, i32 1, i32 1
  store ptr %70, ptr %71, align 4
  %72 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 13, i32 1
  store volatile ptr %72, ptr %72, align 4
  %73 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 13, i32 1, i32 1
  store ptr %72, ptr %73, align 4
  %74 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 14, i32 1
  store volatile ptr %74, ptr %74, align 4
  %75 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 14, i32 1, i32 1
  store ptr %74, ptr %75, align 4
  %76 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 15, i32 1
  store volatile ptr %76, ptr %76, align 4
  %77 = getelementptr %struct.xhci_root_port_bw_info, ptr %45, i32 %42, i32 2, i32 1, i32 15, i32 1, i32 1
  store ptr %76, ptr %77, align 4
  %78 = add nuw nsw i32 %42, 1
  %79 = icmp eq i32 %78, %6
  br i1 %79, label %82, label %80

80:                                               ; preds = %40
  %81 = load ptr, ptr %37, align 8
  br label %40

82:                                               ; preds = %40, %39
  %83 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr i8, ptr %84, i32 16
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !50
  %87 = icmp eq i32 %86, -1
  %88 = lshr i32 %86, 14
  %89 = and i32 %88, 262140
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %87, i1 true, i1 %90
  br i1 %91, label %108, label %92

92:                                               ; preds = %102, %82
  %93 = phi i32 [ %106, %102 ], [ %89, %82 ]
  %94 = getelementptr i8, ptr %84, i32 %93
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !51
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %108, label %97

97:                                               ; preds = %92
  %98 = icmp ne i32 %93, 0
  %99 = and i32 %95, 255
  %100 = icmp eq i32 %99, 2
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %111, label %102

102:                                              ; preds = %97
  %103 = lshr i32 %95, 8
  %104 = and i32 %103, 255
  %105 = shl nuw nsw i32 %104, 2
  %106 = add i32 %105, %93
  %107 = icmp eq i32 %104, 0
  br i1 %107, label %108, label %92

108:                                              ; preds = %102, %92, %82
  %109 = load ptr, ptr %0, align 8
  %110 = load ptr, ptr %109, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.47) #18
  br label %464

111:                                              ; preds = %142, %97
  %112 = phi i32 [ %114, %142 ], [ 0, %97 ]
  %113 = phi i32 [ %127, %142 ], [ %93, %97 ]
  %114 = add i32 %112, 1
  %115 = and i32 %113, -17
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !50
  %119 = icmp eq i32 %118, -1
  %120 = lshr i32 %118, 14
  %121 = and i32 %120, 262140
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %119, i1 true, i1 %122
  br i1 %123, label %144, label %124

124:                                              ; preds = %117, %111
  %125 = phi i32 [ %121, %117 ], [ %113, %111 ]
  br label %126

126:                                              ; preds = %136, %124
  %127 = phi i32 [ %140, %136 ], [ %125, %124 ]
  %128 = getelementptr i8, ptr %84, i32 %127
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !51
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %144, label %131

131:                                              ; preds = %126
  %132 = icmp ne i32 %127, %113
  %133 = and i32 %129, 255
  %134 = icmp eq i32 %133, 2
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %142, label %136

136:                                              ; preds = %131
  %137 = lshr i32 %129, 8
  %138 = and i32 %137, 255
  %139 = shl nuw nsw i32 %138, 2
  %140 = add i32 %139, %127
  %141 = icmp eq i32 %138, 0
  br i1 %141, label %144, label %126

142:                                              ; preds = %131
  %143 = icmp eq i32 %127, 0
  br i1 %143, label %144, label %111

144:                                              ; preds = %142, %136, %126, %117
  %145 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %114, i32 4) #15
  %146 = extractvalue { i32, i1 } %145, 1
  br i1 %146, label %147, label %149, !prof !11

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 58
  store ptr null, ptr %148, align 8
  br label %464

149:                                              ; preds = %144
  %150 = extractvalue { i32, i1 } %145, 0
  %151 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %150, i32 noundef %7) #17
  %152 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 58
  store ptr %151, ptr %152, align 8
  %153 = icmp eq ptr %151, null
  br i1 %153, label %464, label %154

154:                                              ; preds = %149
  %155 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %114, i32 8) #15
  %156 = extractvalue { i32, i1 } %155, 1
  br i1 %156, label %157, label %159, !prof !11

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 60
  store ptr null, ptr %158, align 8
  br label %464

159:                                              ; preds = %154
  %160 = extractvalue { i32, i1 } %155, 0
  %161 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %160, i32 noundef %7) #17
  %162 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 60
  store ptr %161, ptr %162, align 8
  %163 = icmp eq ptr %161, null
  br i1 %163, label %464, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55
  %166 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56
  %167 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 61
  %168 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 59
  %169 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 14
  %170 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 57
  %171 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 1
  %172 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 1
  br label %173

173:                                              ; preds = %356, %164
  %174 = phi i32 [ %93, %164 ], [ %341, %356 ]
  %175 = getelementptr i8, ptr %84, i32 %174
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %175) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !52
  %177 = lshr i32 %176, 24
  %178 = trunc i32 %177 to i8
  %179 = lshr i32 %176, 16
  %180 = icmp eq i32 %177, 3
  br i1 %180, label %181, label %187

181:                                              ; preds = %173
  %182 = and i32 %179, 255
  %183 = add nsw i32 %182, -1
  %184 = icmp ult i32 %183, 15
  %185 = shl nuw nsw i32 %179, 4
  %186 = select i1 %184, i32 %185, i32 %179
  br label %192

187:                                              ; preds = %173
  %188 = icmp ult i32 %176, 50331648
  br i1 %188, label %192, label %189

189:                                              ; preds = %187
  %190 = load ptr, ptr %0, align 8
  %191 = load ptr, ptr %190, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %191, ptr noundef nonnull @.str.52, ptr noundef %175, i32 noundef %177) #18
  br label %323

192:                                              ; preds = %187, %181
  %193 = phi ptr [ %166, %181 ], [ %165, %187 ]
  %194 = phi i32 [ %186, %181 ], [ %179, %187 ]
  %195 = trunc i32 %194 to i8
  %196 = getelementptr inbounds %struct.xhci_hub, ptr %193, i32 0, i32 4
  store i8 %178, ptr %196, align 4
  %197 = getelementptr inbounds %struct.xhci_hub, ptr %193, i32 0, i32 5
  %198 = load i8, ptr %197, align 1
  %199 = icmp ult i8 %198, %195
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  store i8 %195, ptr %197, align 1
  br label %201

201:                                              ; preds = %200, %192
  %202 = getelementptr i32, ptr %175, i32 2
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %202) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !53
  %204 = and i32 %203, 255
  %205 = lshr i32 %203, 8
  %206 = and i32 %205, 255
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.53, ptr noundef %175, i32 noundef %204, i32 noundef %206, i32 noundef %177) #15
  %207 = icmp eq i32 %204, 0
  br i1 %207, label %323, label %208

208:                                              ; preds = %201
  %209 = add nsw i32 %204, -1
  %210 = add nuw nsw i32 %209, %206
  %211 = icmp ugt i32 %210, %6
  br i1 %211, label %323, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr %162, align 8
  %214 = load i32, ptr %167, align 4
  %215 = add i32 %214, 1
  store i32 %215, ptr %167, align 4
  %216 = getelementptr %struct.xhci_port_cap, ptr %213, i32 %214
  %217 = icmp ugt i32 %215, %114
  br i1 %217, label %323, label %218

218:                                              ; preds = %212
  %219 = getelementptr %struct.xhci_port_cap, ptr %213, i32 %214, i32 3
  store i8 %178, ptr %219, align 2
  %220 = getelementptr %struct.xhci_port_cap, ptr %213, i32 %214, i32 4
  store i8 %195, ptr %220, align 1
  %221 = lshr i32 %203, 28
  %222 = trunc i32 %221 to i8
  %223 = getelementptr %struct.xhci_port_cap, ptr %213, i32 %214, i32 1
  store i8 %222, ptr %223, align 4
  %224 = icmp eq i8 %222, 0
  br i1 %224, label %268, label %225

225:                                              ; preds = %218
  %226 = shl nuw nsw i32 %221, 2
  %227 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %226, i32 noundef 3520) #17
  store ptr %227, ptr %216, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  store i8 0, ptr %223, align 4
  %230 = getelementptr %struct.xhci_port_cap, ptr %213, i32 %214, i32 2
  %231 = load i8, ptr %230, align 1
  %232 = add i8 %231, 1
  store i8 %232, ptr %230, align 1
  br label %268

233:                                              ; preds = %225
  %234 = load i8, ptr %223, align 4
  %235 = icmp eq i8 %234, 0
  %236 = getelementptr %struct.xhci_port_cap, ptr %213, i32 %214, i32 2
  %237 = load i8, ptr %236, align 1
  %238 = add i8 %237, 1
  store i8 %238, ptr %236, align 1
  br i1 %235, label %268, label %239

239:                                              ; preds = %233
  %240 = getelementptr i32, ptr %175, i32 4
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %240) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !54
  %242 = load ptr, ptr %216, align 4
  store i32 %241, ptr %242, align 4
  %243 = load i8, ptr %223, align 4
  %244 = icmp ugt i8 %243, 1
  br i1 %244, label %245, label %268

245:                                              ; preds = %263, %239
  %246 = phi i32 [ %264, %263 ], [ 1, %239 ]
  %247 = getelementptr i32, ptr %240, i32 %246
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !54
  %249 = load ptr, ptr %216, align 4
  %250 = getelementptr i32, ptr %249, i32 %246
  store i32 %248, ptr %250, align 4
  %251 = load ptr, ptr %216, align 4
  %252 = getelementptr i32, ptr %251, i32 %246
  %253 = load i32, ptr %252, align 4
  %254 = add nsw i32 %246, -1
  %255 = getelementptr i32, ptr %251, i32 %254
  %256 = load i32, ptr %255, align 4
  %257 = xor i32 %256, %253
  %258 = and i32 %257, 15
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %245
  %261 = load i8, ptr %236, align 1
  %262 = add i8 %261, 1
  store i8 %262, ptr %236, align 1
  br label %263

263:                                              ; preds = %260, %245
  %264 = add nuw nsw i32 %246, 1
  %265 = load i8, ptr %223, align 4
  %266 = zext i8 %265 to i32
  %267 = icmp ult i32 %264, %266
  br i1 %267, label %245, label %268, !llvm.loop !55

268:                                              ; preds = %263, %239, %233, %229, %218
  %269 = icmp ult i32 %176, 50331648
  br i1 %269, label %270, label %277

270:                                              ; preds = %268
  %271 = load i32, ptr %168, align 4
  %272 = icmp ult i32 %271, %114
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load ptr, ptr %152, align 8
  %275 = add nuw i32 %271, 1
  store i32 %275, ptr %168, align 4
  %276 = getelementptr i32, ptr %274, i32 %271
  store i32 %203, ptr %276, align 4
  br label %277

277:                                              ; preds = %273, %270, %268
  %278 = load i16, ptr %169, align 2
  %279 = icmp ult i16 %278, 256
  %280 = select i1 %279, i1 true, i1 %180
  %281 = and i32 %203, 524288
  %282 = icmp eq i32 %281, 0
  %283 = select i1 %280, i1 true, i1 %282
  br i1 %283, label %287, label %284

284:                                              ; preds = %277
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.54) #15
  %285 = load i8, ptr %170, align 4
  %286 = or i8 %285, 1
  store i8 %286, ptr %170, align 4
  br label %287

287:                                              ; preds = %284, %277
  %288 = icmp eq i32 %206, 0
  br i1 %288, label %323, label %289

289:                                              ; preds = %287
  %290 = getelementptr inbounds %struct.xhci_hub, ptr %193, i32 0, i32 1
  br label %291

291:                                              ; preds = %320, %289
  %292 = phi i32 [ %209, %289 ], [ %321, %320 ]
  %293 = load ptr, ptr %10, align 8
  %294 = getelementptr %struct.xhci_port, ptr %293, i32 %292, i32 3
  %295 = load ptr, ptr %294, align 4
  %296 = icmp eq ptr %295, null
  br i1 %296, label %316, label %297

297:                                              ; preds = %291
  %298 = load ptr, ptr %0, align 8
  %299 = load ptr, ptr %298, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %299, ptr noundef nonnull @.str.55, ptr noundef %175, i32 noundef %292) #18
  %300 = load ptr, ptr %0, align 8
  %301 = load ptr, ptr %300, align 8
  %302 = load ptr, ptr %294, align 4
  %303 = getelementptr inbounds %struct.xhci_hub, ptr %302, i32 0, i32 4
  %304 = load i8, ptr %303, align 4
  %305 = zext i8 %304 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %301, ptr noundef nonnull @.str.56, i32 noundef %305, i32 noundef %177) #18
  %306 = load ptr, ptr %294, align 4
  %307 = icmp eq ptr %306, %193
  br i1 %307, label %320, label %308

308:                                              ; preds = %297
  %309 = getelementptr %struct.xhci_port, ptr %293, i32 %292, i32 2
  %310 = load i32, ptr %309, align 4
  %311 = icmp eq i32 %310, 255
  br i1 %311, label %320, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.xhci_hub, ptr %306, i32 0, i32 1
  %314 = load i32, ptr %313, align 4
  %315 = add i32 %314, -1
  store i32 %315, ptr %313, align 4
  store i32 255, ptr %309, align 4
  br label %320

316:                                              ; preds = %291
  store ptr %193, ptr %294, align 4
  %317 = getelementptr %struct.xhci_port, ptr %293, i32 %292, i32 4
  store ptr %216, ptr %317, align 4
  %318 = load i32, ptr %290, align 4
  %319 = add i32 %318, 1
  store i32 %319, ptr %290, align 4
  br label %320

320:                                              ; preds = %316, %312, %308, %297
  %321 = add nsw i32 %292, 1
  %322 = icmp eq i32 %321, %210
  br i1 %322, label %323, label %291

323:                                              ; preds = %320, %287, %212, %208, %201, %189
  %324 = load i32, ptr %171, align 4
  %325 = load i32, ptr %172, align 4
  %326 = add i32 %325, %324
  %327 = icmp eq i32 %326, %6
  br i1 %327, label %358, label %328

328:                                              ; preds = %323
  %329 = and i32 %174, -17
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %328
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !50
  %333 = icmp eq i32 %332, -1
  %334 = lshr i32 %332, 14
  %335 = and i32 %334, 262140
  %336 = icmp eq i32 %335, 0
  %337 = select i1 %333, i1 true, i1 %336
  br i1 %337, label %358, label %338

338:                                              ; preds = %331, %328
  %339 = phi i32 [ %335, %331 ], [ %174, %328 ]
  br label %340

340:                                              ; preds = %350, %338
  %341 = phi i32 [ %354, %350 ], [ %339, %338 ]
  %342 = getelementptr i8, ptr %84, i32 %341
  %343 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %342) #15, !srcloc !35
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !51
  %344 = icmp eq i32 %343, -1
  br i1 %344, label %358, label %345

345:                                              ; preds = %340
  %346 = icmp ne i32 %341, %174
  %347 = and i32 %343, 255
  %348 = icmp eq i32 %347, 2
  %349 = select i1 %346, i1 %348, i1 false
  br i1 %349, label %356, label %350

350:                                              ; preds = %345
  %351 = lshr i32 %343, 8
  %352 = and i32 %351, 255
  %353 = shl nuw nsw i32 %352, 2
  %354 = add i32 %353, %341
  %355 = icmp eq i32 %352, 0
  br i1 %355, label %358, label %340

356:                                              ; preds = %345
  %357 = icmp eq i32 %341, 0
  br i1 %357, label %358, label %173

358:                                              ; preds = %356, %350, %340, %331, %323
  %359 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55
  %360 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 55, i32 1
  %361 = load i32, ptr %360, align 4
  %362 = icmp eq i32 %361, 0
  %363 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 1
  %364 = load i32, ptr %363, align 4
  %365 = icmp eq i32 %364, 0
  %366 = select i1 %362, i1 %365, i1 false
  br i1 %366, label %367, label %370

367:                                              ; preds = %358
  %368 = load ptr, ptr %0, align 8
  %369 = load ptr, ptr %368, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %369, ptr noundef nonnull @.str.48) #18
  br label %464

370:                                              ; preds = %358
  %371 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56
  %372 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 56, i32 1
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.49, i32 noundef %361, i32 noundef %364) #15
  %373 = load i32, ptr %372, align 4
  %374 = icmp ugt i32 %373, 15
  br i1 %374, label %375, label %376

375:                                              ; preds = %370
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.50, i32 noundef 15) #15
  store i32 15, ptr %372, align 4
  br label %376

376:                                              ; preds = %375, %370
  %377 = load i32, ptr %360, align 4
  %378 = icmp ugt i32 %377, 31
  br i1 %378, label %379, label %380

379:                                              ; preds = %376
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %0, ptr noundef nonnull @trace_xhci_dbg_init, ptr noundef nonnull @.str.51, i32 noundef 31) #15
  store i32 31, ptr %360, align 4
  br label %382

380:                                              ; preds = %376
  %381 = icmp eq i32 %377, 0
  br i1 %381, label %420, label %382

382:                                              ; preds = %380, %379
  %383 = phi i32 [ 31, %379 ], [ %377, %380 ]
  %384 = shl nuw nsw i32 %383, 2
  %385 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %384, i32 noundef %7) #17
  store ptr %385, ptr %359, align 4
  %386 = icmp eq ptr %385, null
  br i1 %386, label %420, label %387

387:                                              ; preds = %382
  %388 = load i32, ptr %3, align 4
  %389 = and i32 %388, 2130706432
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %420, label %391

391:                                              ; preds = %413, %387
  %392 = phi i32 [ %414, %413 ], [ %388, %387 ]
  %393 = phi i32 [ %416, %413 ], [ 0, %387 ]
  %394 = phi i32 [ %415, %413 ], [ 0, %387 ]
  %395 = load ptr, ptr %10, align 8
  %396 = getelementptr %struct.xhci_port, ptr %395, i32 %393, i32 3
  %397 = load ptr, ptr %396, align 4
  %398 = icmp eq ptr %397, %359
  br i1 %398, label %399, label %413

399:                                              ; preds = %391
  %400 = getelementptr %struct.xhci_port, ptr %395, i32 %393, i32 2
  %401 = load i32, ptr %400, align 4
  %402 = icmp eq i32 %401, 255
  br i1 %402, label %413, label %403

403:                                              ; preds = %399
  store i32 %394, ptr %400, align 4
  %404 = load ptr, ptr %10, align 8
  %405 = getelementptr %struct.xhci_port, ptr %404, i32 %393
  %406 = load ptr, ptr %359, align 4
  %407 = getelementptr ptr, ptr %406, i32 %394
  store ptr %405, ptr %407, align 4
  %408 = add i32 %394, 1
  %409 = load i32, ptr %360, align 4
  %410 = icmp eq i32 %408, %409
  br i1 %410, label %420, label %411

411:                                              ; preds = %403
  %412 = load i32, ptr %3, align 4
  br label %413

413:                                              ; preds = %411, %399, %391
  %414 = phi i32 [ %392, %391 ], [ %392, %399 ], [ %412, %411 ]
  %415 = phi i32 [ %394, %391 ], [ %394, %399 ], [ %408, %411 ]
  %416 = add nuw nsw i32 %393, 1
  %417 = lshr i32 %414, 24
  %418 = and i32 %417, 127
  %419 = icmp ult i32 %416, %418
  br i1 %419, label %391, label %420

420:                                              ; preds = %413, %403, %387, %382, %380
  %421 = load i32, ptr %372, align 4
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %464, label %423

423:                                              ; preds = %420
  %424 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %421, i32 4) #15
  %425 = extractvalue { i32, i1 } %424, 1
  br i1 %425, label %426, label %427, !prof !11

426:                                              ; preds = %423
  store ptr null, ptr %371, align 4
  br label %464

427:                                              ; preds = %423
  %428 = extractvalue { i32, i1 } %424, 0
  %429 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %428, i32 noundef %7) #17
  store ptr %429, ptr %371, align 4
  %430 = icmp eq ptr %429, null
  br i1 %430, label %464, label %431

431:                                              ; preds = %427
  %432 = load i32, ptr %3, align 4
  %433 = and i32 %432, 2130706432
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %464, label %435

435:                                              ; preds = %457, %431
  %436 = phi i32 [ %458, %457 ], [ %432, %431 ]
  %437 = phi i32 [ %460, %457 ], [ 0, %431 ]
  %438 = phi i32 [ %459, %457 ], [ 0, %431 ]
  %439 = load ptr, ptr %10, align 8
  %440 = getelementptr %struct.xhci_port, ptr %439, i32 %437, i32 3
  %441 = load ptr, ptr %440, align 4
  %442 = icmp eq ptr %441, %371
  br i1 %442, label %443, label %457

443:                                              ; preds = %435
  %444 = getelementptr %struct.xhci_port, ptr %439, i32 %437, i32 2
  %445 = load i32, ptr %444, align 4
  %446 = icmp eq i32 %445, 255
  br i1 %446, label %457, label %447

447:                                              ; preds = %443
  store i32 %438, ptr %444, align 4
  %448 = load ptr, ptr %10, align 8
  %449 = getelementptr %struct.xhci_port, ptr %448, i32 %437
  %450 = load ptr, ptr %371, align 4
  %451 = getelementptr ptr, ptr %450, i32 %438
  store ptr %449, ptr %451, align 4
  %452 = add i32 %438, 1
  %453 = load i32, ptr %372, align 4
  %454 = icmp eq i32 %452, %453
  br i1 %454, label %464, label %455

455:                                              ; preds = %447
  %456 = load i32, ptr %3, align 4
  br label %457

457:                                              ; preds = %455, %443, %435
  %458 = phi i32 [ %436, %435 ], [ %436, %443 ], [ %456, %455 ]
  %459 = phi i32 [ %438, %435 ], [ %438, %443 ], [ %452, %455 ]
  %460 = add nuw nsw i32 %437, 1
  %461 = lshr i32 %458, 24
  %462 = and i32 %461, 127
  %463 = icmp ult i32 %460, %462
  br i1 %463, label %435, label %464

464:                                              ; preds = %457, %447, %431, %427, %426, %420, %367, %159, %157, %149, %147, %108, %33, %2
  %465 = phi i32 [ -19, %367 ], [ -19, %108 ], [ -12, %2 ], [ -12, %33 ], [ -12, %149 ], [ -12, %159 ], [ -12, %147 ], [ -12, %157 ], [ 0, %420 ], [ 0, %426 ], [ 0, %427 ], [ 0, %431 ], [ 0, %447 ], [ 0, %457 ]
  ret i32 %465
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_ring_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xhci_segment_alloc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !15
  %6 = or i32 %3, 256
  %7 = and i32 %3, 17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !12

9:                                                ; preds = %4
  %10 = and i32 %3, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 2
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ 0, %4 ], [ %12, %9 ]
  %15 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %14, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef %6, i32 noundef 28) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.xhci_hcd, ptr %0, i32 0, i32 45
  %21 = load ptr, ptr %20, align 8
  %22 = call ptr @dma_pool_alloc(ptr noundef %21, i32 noundef %6, ptr noundef nonnull %5) #15
  store ptr %22, ptr %17, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call void @kfree(ptr noundef nonnull %17) #15
  br label %52

25:                                               ; preds = %19
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef %6) #17
  %29 = getelementptr inbounds %struct.xhci_segment, ptr %17, i32 0, i32 4
  store ptr %28, ptr %29, align 8
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load ptr, ptr %20, align 8
  %33 = load i32, ptr %5, align 4
  call void @dma_pool_free(ptr noundef %32, ptr noundef nonnull %22, i32 noundef %33) #15
  call void @kfree(ptr noundef nonnull %17) #15
  br label %52

34:                                               ; preds = %27, %25
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %34
  %37 = getelementptr %union.xhci_trb, ptr %22, i32 0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, 1
  store i32 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %40, %36
  %41 = phi i32 [ 1, %36 ], [ %46, %40 ]
  %42 = load ptr, ptr %17, align 8
  %43 = getelementptr %union.xhci_trb, ptr %42, i32 %41, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 1
  store i32 %45, ptr %43, align 4
  %46 = add nuw nsw i32 %41, 1
  %47 = icmp eq i32 %46, 256
  br i1 %47, label %48, label %40

48:                                               ; preds = %40, %34
  %49 = load i32, ptr %5, align 4
  %50 = getelementptr inbounds %struct.xhci_segment, ptr %17, i32 0, i32 2
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.xhci_segment, ptr %17, i32 0, i32 1
  store ptr null, ptr %51, align 4
  br label %52

52:                                               ; preds = %48, %31, %24, %13
  %53 = phi ptr [ %17, %48 ], [ null, %31 ], [ null, %24 ], [ null, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret ptr %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_ring_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_maybe_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_ring_expansion(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_ring_expansion(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_context_change(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_free_virt_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_stop_endpoint_command_watchdog(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_alloc_virt_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_find_raw_port_number(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_setup_addressable_virt_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_debugfs_remove_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xhci_test_trb_in_td(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %1, ptr noundef %2) #15
  %10 = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %1, ptr noundef %3) #15
  %11 = tail call ptr @trb_in_td(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext false) #15
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  %14 = zext i32 %10 to i64
  %15 = zext i32 %9 to i64
  %16 = load ptr, ptr %0, align 8
  %17 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.40, ptr noundef %6, i32 noundef %7) #18
  %18 = load ptr, ptr %0, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = zext i32 %4 to i64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.41, ptr noundef %1, i64 noundef %20) #18
  %21 = load ptr, ptr %0, align 8
  %22 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.42, ptr noundef %2, i64 noundef %15, ptr noundef %3, i64 noundef %14) #18
  %23 = load ptr, ptr %0, align 8
  %24 = load ptr, ptr %23, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.43, ptr noundef %5, ptr noundef %11) #18
  %25 = tail call ptr @trb_in_td(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext true) #15
  br label %26

26:                                               ; preds = %13, %8
  %27 = phi i32 [ -1, %13 ], [ 0, %8 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trb_in_td(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2154589065}
!10 = !{i64 2154589213}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2154573262}
!14 = !{i64 2154573412}
!15 = !{!"auto-init"}
!16 = !{i64 2154605004}
!17 = !{i64 2154605162}
!18 = !{i64 587809}
!19 = !{i64 2151207937}
!20 = !{i64 2153984619}
!21 = !{i64 2153984783}
!22 = !{i32 0, i32 33}
!23 = !{i64 2153900424}
!24 = !{i64 2153900588}
!25 = !{i64 2154148394}
!26 = !{i64 2154148556}
!27 = !{i64 2154164937}
!28 = !{i64 2154165101}
!29 = !{i64 2154202188}
!30 = !{i64 2154202376}
!31 = !{i32 24, i32 33}
!32 = !{i64 2154903892, i64 2154904385, i64 2154903929, i64 2154903985, i64 2154904019, i64 2154904043, i64 2154904084, i64 2154904105, i64 2154904133, i64 2154904167}
!33 = !{i64 2153968617}
!34 = !{i64 2153968761}
!35 = !{i64 3288122}
!36 = !{i64 2154944289}
!37 = !{i64 2154945602}
!38 = !{i64 2154945965}
!39 = !{i64 2154946164}
!40 = !{i64 3287704}
!41 = !{i64 2153522408}
!42 = !{i64 2153522706}
!43 = !{i64 2153521769}
!44 = !{i64 2153522067}
!45 = !{i64 2154946729}
!46 = !{i64 2154947093}
!47 = !{i64 2154947302}
!48 = !{i64 2154947851}
!49 = !{i64 2154948093}
!50 = !{i64 2153530527}
!51 = !{i64 2153530872}
!52 = !{i64 2154935121}
!53 = !{i64 2154936555}
!54 = !{i64 2154937124}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.peeled.count", i32 1}
