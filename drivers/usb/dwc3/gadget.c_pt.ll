; ModuleID = '/llk/IR/drivers/usb/dwc3/gadget.c_pt.bc'
source_filename = "../drivers/usb/dwc3/gadget.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_gadget_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dwc3_ep = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, i8, i8, i32, i32, [20 x i8], i8, i8, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
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
%struct.dwc3_gadget_ep_cmd_params = type { i32, i32, i32 }
%struct.dwc3_trb = type { i32, i32, i32, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dwc3_event_buffer = type { ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%union.power_supply_propval = type { i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_dcd_config_params = type { i8, i16, i8, i8 }
%union.dwc3_event = type { i32 }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dwc3_send_gadget_ep_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [26 x i8] c"drivers/usb/dwc3/gadget.c\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s %s: wakeup failed --> %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s %s: No resource for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s %s: UNKNOWN cmd status\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s is of Isochronous type\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to set STALL on %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to clear STALL on %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to allocate ep0 trb\0A\00", align 1
@dwc3_gadget_ops = internal constant %struct.usb_gadget_ops { ptr @dwc3_gadget_get_frame, ptr @dwc3_gadget_wakeup, ptr @dwc3_gadget_set_selfpowered, ptr null, ptr @dwc3_gadget_vbus_draw, ptr @dwc3_gadget_pullup, ptr null, ptr @dwc3_gadget_config_params, ptr @dwc3_gadget_start, ptr @dwc3_gadget_stop, ptr @dwc3_gadget_set_speed, ptr @dwc3_gadget_set_ssp_rate, ptr @dwc3_gadget_async_callbacks, ptr null, ptr @dwc3_gadget_check_config }, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"dwc3-gadget\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"changing max_speed on rev %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"failed to add gadget\0A\00", align 1
@__tracepoint_dwc3_readl = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_dwc3_writel = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dwc3_gadget_giveback = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dwc3_gadget_generic_cmd = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dwc3_gadget_ep_cmd = external dso_local global %struct.tracepoint, align 4
@.str.12 = private unnamed_addr constant [40 x i8] c"request cancelled with wrong reason:%d\0A\00", align 1
@__tracepoint_dwc3_prepare_trb = external dso_local global %struct.tracepoint, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"failed to put link in Recovery\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"failed to send remote wakeup\0A\00", align 1
@dwc3_stop_active_transfer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"dwc_usb3\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"timed out waiting for SETUP phase\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"dwc3\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"failed to request irq #%d --> %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"UNKNOWN IRQ type %d\0A\00", align 1
@__tracepoint_dwc3_event = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dwc3_complete_trb = external dso_local global %struct.tracepoint, align 4
@dwc3_gadget_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"%s %s: unexpected hibernation event\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"%s %s: UNKNOWN IRQ %d\0A\00", align 1
@dwc3_clear_stall_all_ep.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dwc3_gadget_ep0_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 0, i8 0, i8 0, i8 0 }>, align 1
@dwc3_gadget_conndone_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = private unnamed_addr constant [53 x i8] c"LPM Erratum not available on dwc3 revisions < 2.40a\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"failed to enable %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"Fifosize(%d) > RAM size(%d) %s depth:%d\0A\00", align 1
@__tracepoint_dwc3_gadget_ep_enable = external dso_local global %struct.tracepoint, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"ep%u%s\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@dwc3_gadget_ep0_ops = internal constant %struct.usb_ep_ops { ptr @dwc3_gadget_ep0_enable, ptr @dwc3_gadget_ep0_disable, ptr null, ptr @dwc3_gadget_ep_alloc_request, ptr @dwc3_gadget_ep_free_request, ptr @dwc3_gadget_ep0_queue, ptr @dwc3_gadget_ep_dequeue, ptr @dwc3_gadget_ep0_set_halt, ptr @dwc3_gadget_ep_set_wedge, ptr null, ptr null }, align 4
@__tracepoint_dwc3_alloc_request = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dwc3_free_request = external dso_local global %struct.tracepoint, align 4
@.str.31 = private unnamed_addr constant [34 x i8] c"request %pK was not queued to %s\0A\00", align 1
@__tracepoint_dwc3_ep_dequeue = external dso_local global %struct.tracepoint, align 4
@dwc3_gadget_ep_ops = internal constant %struct.usb_ep_ops { ptr @dwc3_gadget_ep_enable, ptr @dwc3_gadget_ep_disable, ptr null, ptr @dwc3_gadget_ep_alloc_request, ptr @dwc3_gadget_ep_free_request, ptr @dwc3_gadget_ep_queue, ptr @dwc3_gadget_ep_dequeue, ptr @dwc3_gadget_ep_set_halt, ptr @dwc3_gadget_ep_set_wedge, ptr null, ptr null }, align 4
@dwc3_gadget_ep_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"%s %s: %s is already enabled\0A\00", align 1
@dwc3_gadget_ep_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"%s %s: %s is already disabled\0A\00", align 1
@__tracepoint_dwc3_gadget_ep_disable = external dso_local global %struct.tracepoint, align 4
@.str.34 = private unnamed_addr constant [29 x i8] c"request %pK belongs to '%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"%s: request %pK already in flight\0A\00", align 1
@__tracepoint_dwc3_ep_queue = external dso_local global %struct.tracepoint, align 4
@.str.36 = private unnamed_addr constant [36 x i8] c"failed to allocate trb pool for %s\0A\00", align 1
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.37 = private unnamed_addr constant [20 x i8] c"invalid speed (%d)\0A\00", align 1
@switch.table.dwc3_gadget_ep_cleanup_cancelled_requests = private unnamed_addr constant [3 x i32] [i32 -108, i32 -104, i32 -32], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_set_test_mode(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1540
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %7 = getelementptr i8, ptr %4, i32 -49408
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = tail call ptr @llvm.thread.pointer() #14
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %22 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %7, i32 noundef 50948, i32 noundef %6) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %23

23:                                               ; preds = %21, %10, %2
  %24 = add i32 %1, -1
  %25 = icmp ult i32 %24, 5
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = and i32 %6, -511
  %28 = shl nuw nsw i32 %1, 1
  %29 = and i32 %28, -482
  %30 = or i32 %27, %29
  %31 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %32 = getelementptr i8, ptr %31, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #14, !srcloc !13
  %33 = getelementptr i8, ptr %31, i32 -49408
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %26
  %37 = tail call ptr @llvm.thread.pointer() #14
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %48 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %33, i32 noundef 50948, i32 noundef %30) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %49

49:                                               ; preds = %47, %36, %26, %23
  %50 = phi i32 [ -22, %23 ], [ 0, %26 ], [ 0, %36 ], [ 0, %47 ]
  ret i32 %50
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_get_link_state(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1548
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %6 = getelementptr i8, ptr %3, i32 -49408
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = tail call ptr @llvm.thread.pointer() #14
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %21 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %6, i32 noundef 50956, i32 noundef %5) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %22

22:                                               ; preds = %20, %9, %1
  %23 = lshr i32 %5, 18
  %24 = and i32 %23, 15
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_set_link_state(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 21811
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 1429412170
  br i1 %9, label %42, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  br label %12

12:                                               ; preds = %36, %10
  %13 = phi i32 [ 9999, %10 ], [ %38, %36 ]
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr i8, ptr %14, i32 1548
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %17 = getelementptr i8, ptr %14, i32 -49408
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = tail call ptr @llvm.thread.pointer() #14
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %32 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %17, i32 noundef 50956, i32 noundef %16) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %33

33:                                               ; preds = %31, %20, %12
  %34 = and i32 %16, 536870912
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 1073740) #14
  %38 = add nsw i32 %13, -1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %141, label %12

40:                                               ; preds = %33
  %41 = icmp slt i32 %13, 1
  br i1 %41, label %141, label %42

42:                                               ; preds = %40, %6
  %43 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 1540
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %47 = getelementptr i8, ptr %44, i32 -49408
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = tail call ptr @llvm.thread.pointer() #14
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %62 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %47, i32 noundef 50948, i32 noundef %46) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %63

63:                                               ; preds = %61, %50, %42
  %64 = and i32 %46, -481
  %65 = load ptr, ptr %43, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %66 = getelementptr i8, ptr %65, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #14, !srcloc !13
  %67 = getelementptr i8, ptr %65, i32 -49408
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = tail call ptr @llvm.thread.pointer() #14
  %72 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 5
  %75 = getelementptr i32, ptr @__cpu_online_mask, i32 %74
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %73, 31
  %78 = shl nuw i32 1, %77
  %79 = and i32 %78, %76
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %70
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %82 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %67, i32 noundef 50948, i32 noundef %64) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %83

83:                                               ; preds = %81, %70, %63
  %84 = shl i32 %1, 5
  %85 = and i32 %84, 480
  %86 = or i32 %64, %85
  %87 = load ptr, ptr %43, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %88 = getelementptr i8, ptr %87, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #14, !srcloc !13
  %89 = getelementptr i8, ptr %87, i32 -49408
  %90 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %83
  %93 = tail call ptr @llvm.thread.pointer() #14
  %94 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 5
  %97 = getelementptr i32, ptr @__cpu_online_mask, i32 %96
  %98 = load volatile i32, ptr %97, align 4
  %99 = and i32 %95, 31
  %100 = shl nuw i32 1, %99
  %101 = and i32 %100, %98
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %92
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %104 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %89, i32 noundef 50948, i32 noundef %86) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %105

105:                                              ; preds = %103, %92, %83
  %106 = load i32, ptr %3, align 4
  %107 = icmp eq i32 %106, 21811
  br i1 %107, label %108, label %141

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %110 = load i32, ptr %109, align 4
  %111 = icmp ult i32 %110, 1429412170
  br i1 %111, label %112, label %141

112:                                              ; preds = %137, %108
  %113 = phi i32 [ %139, %137 ], [ 9999, %108 ]
  %114 = load ptr, ptr %43, align 4
  %115 = getelementptr i8, ptr %114, i32 1548
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %117 = getelementptr i8, ptr %114, i32 -49408
  %118 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %112
  %121 = tail call ptr @llvm.thread.pointer() #14
  %122 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %122, align 8
  %124 = lshr i32 %123, 5
  %125 = getelementptr i32, ptr @__cpu_online_mask, i32 %124
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %123, 31
  %128 = shl nuw i32 1, %127
  %129 = and i32 %128, %126
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %120
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %132 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %117, i32 noundef 50956, i32 noundef %116) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %133

133:                                              ; preds = %131, %120, %112
  %134 = lshr i32 %116, 18
  %135 = and i32 %134, 15
  %136 = icmp eq i32 %135, %1
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 1073740) #14
  %139 = add nsw i32 %113, -1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %112

141:                                              ; preds = %137, %133, %108, %105, %40, %36
  %142 = phi i32 [ -110, %40 ], [ 0, %108 ], [ 0, %105 ], [ -110, %137 ], [ 0, %133 ], [ -110, %36 ]
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_gadget_giveback(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 7
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 13
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, -2
  store i8 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, -115
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 %2, ptr %15, align 4
  br label %19

19:                                               ; preds = %18, %3
  %20 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 13
  %25 = load ptr, ptr %24, align 4
  %26 = lshr i8 %13, 1
  %27 = and i8 %26, 1
  %28 = zext i8 %27 to i32
  tail call void @usb_gadget_unmap_request_by_dev(ptr noundef %25, ptr noundef %1, i32 noundef %28) #14
  br label %29

29:                                               ; preds = %23, %19
  store ptr null, ptr %20, align 4
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_giveback, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = tail call ptr @llvm.thread.pointer() #14
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  %44 = tail call i32 @__traceiter_dwc3_gadget_giveback(ptr noundef null, ptr noundef %1) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br label %45

45:                                               ; preds = %43, %32, %29
  %46 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 12
  %47 = load i8, ptr %46, align 2
  %48 = icmp ugt i8 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @__pm_runtime_idle(ptr noundef %51, i32 noundef 5) #14
  br label %53

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 8
  store i32 5, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  %56 = load i16, ptr %55, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  tail call void @usb_gadget_giveback_request(ptr noundef %0, ptr noundef %1) #14
  tail call void @_raw_spin_lock(ptr noundef %55) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_send_gadget_generic_command(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %6 = getelementptr i8, ptr %5, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #14, !srcloc !13
  %7 = getelementptr i8, ptr %5, i32 -49408
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = tail call ptr @llvm.thread.pointer() #14
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %22 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %7, i32 noundef 50960, i32 noundef %2) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %23

23:                                               ; preds = %21, %10, %3
  %24 = load ptr, ptr %4, align 4
  %25 = or i32 %1, 1024
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %26 = getelementptr i8, ptr %24, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #14, !srcloc !13
  %27 = getelementptr i8, ptr %24, i32 -49408
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = tail call ptr @llvm.thread.pointer() #14
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %42 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %27, i32 noundef 50964, i32 noundef %25) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %43

43:                                               ; preds = %41, %30, %23
  br label %44

44:                                               ; preds = %73, %43
  %45 = phi i32 [ %74, %73 ], [ 500, %43 ]
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr i8, ptr %46, i32 1556
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %49 = getelementptr i8, ptr %46, i32 -49408
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %44
  %53 = tail call ptr @llvm.thread.pointer() #14
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr @__cpu_online_mask, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %64 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %49, i32 noundef 50964, i32 noundef %48) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %65

65:                                               ; preds = %63, %52, %44
  %66 = and i32 %48, 1024
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = lshr i32 %48, 12
  %70 = and i32 %69, 15
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 0, i32 -22
  br label %76

73:                                               ; preds = %65
  %74 = add nsw i32 %45, -1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %44

76:                                               ; preds = %73, %68
  %77 = phi i32 [ %45, %68 ], [ 0, %73 ]
  %78 = phi i32 [ %70, %68 ], [ 0, %73 ]
  %79 = phi i32 [ %72, %68 ], [ 0, %73 ]
  %80 = icmp eq i32 %77, 0
  %81 = select i1 %80, i32 -110, i32 %78
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_generic_cmd, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %76
  %85 = tail call ptr @llvm.thread.pointer() #14
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 5
  %89 = getelementptr i32, ptr @__cpu_online_mask, i32 %88
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %87, 31
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %84
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !22
  %96 = tail call i32 @__traceiter_dwc3_gadget_generic_cmd(ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef %81) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  br label %97

97:                                               ; preds = %95, %84, %76
  %98 = select i1 %80, i32 -110, i32 %79
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %65

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 30
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 256
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %18 = getelementptr i8, ptr %15, i32 -49408
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = tail call ptr @llvm.thread.pointer() #14
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %33 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %18, i32 noundef 49664, i32 noundef %17) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %34

34:                                               ; preds = %32, %21, %13
  %35 = and i32 %17, 64
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !24

37:                                               ; preds = %34
  %38 = and i32 %17, -65
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %38, %37 ], [ %17, %34 ]
  %41 = phi i32 [ 64, %37 ], [ 0, %34 ]
  %42 = and i32 %40, 256
  %43 = and i32 %40, -257
  %44 = or i32 %42, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %48 = getelementptr i8, ptr %47, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %43) #14, !srcloc !13
  %49 = getelementptr i8, ptr %47, i32 -49408
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = tail call ptr @llvm.thread.pointer() #14
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr @__cpu_online_mask, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %64 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %49, i32 noundef 49664, i32 noundef %43) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %65

65:                                               ; preds = %63, %52, %46, %39, %3
  %66 = phi i32 [ 0, %39 ], [ 0, %3 ], [ %44, %46 ], [ %44, %52 ], [ %44, %63 ]
  %67 = and i32 %1, 15
  switch i32 %67, label %115 [
    i32 6, label %68
    i32 7, label %178
  ]

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 30
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 1548
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %73 = getelementptr i8, ptr %70, i32 -49408
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %68
  %77 = tail call ptr @llvm.thread.pointer() #14
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %88 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %73, i32 noundef 50956, i32 noundef %72) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %89

89:                                               ; preds = %87, %76, %68
  %90 = lshr i32 %72, 18
  %91 = and i32 %90, 15
  switch i32 %91, label %115 [
    i32 2, label %92
    i32 3, label %97
  ]

92:                                               ; preds = %89
  %93 = load ptr, ptr %8, align 4
  %94 = getelementptr inbounds %struct.usb_gadget, ptr %93, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = icmp ugt i32 %95, 4
  br i1 %96, label %115, label %97

97:                                               ; preds = %92, %89
  %98 = tail call fastcc i32 @__dwc3_gadget_wakeup(ptr noundef %7)
  %99 = icmp ne i32 %98, 0
  %100 = load i1, ptr @dwc3_send_gadget_ep_cmd.__already_done, align 1
  %101 = xor i1 %100, true
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %103, label %115, !prof !25

103:                                              ; preds = %97
  store i1 true, ptr @dwc3_send_gadget_ep_cmd.__already_done, align 1
  %104 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 12
  %105 = load ptr, ptr %104, align 4
  %106 = tail call ptr @dev_driver_string(ptr noundef %105) #14
  %107 = load ptr, ptr %104, align 4
  %108 = getelementptr inbounds %struct.device, ptr %107, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load ptr, ptr %107, align 4
  br label %113

113:                                              ; preds = %111, %103
  %114 = phi ptr [ %112, %111 ], [ %109, %103 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %106, ptr noundef %114, i32 noundef %98) #14
  br label %115

115:                                              ; preds = %113, %97, %92, %89, %65
  %116 = phi i32 [ %98, %97 ], [ %98, %113 ], [ -22, %92 ], [ -22, %89 ], [ -22, %65 ]
  %117 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 4
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %2, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %121 = getelementptr i8, ptr %118, i32 -49400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %120) #14, !srcloc !13
  %122 = getelementptr i8, ptr %118, i32 -49408
  %123 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %115
  %126 = tail call ptr @llvm.thread.pointer() #14
  %127 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 8
  %129 = lshr i32 %128, 5
  %130 = getelementptr i32, ptr @__cpu_online_mask, i32 %129
  %131 = load volatile i32, ptr %130, align 4
  %132 = and i32 %128, 31
  %133 = shl nuw i32 1, %132
  %134 = and i32 %133, %131
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %125
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %137 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %122, i32 noundef 8, i32 noundef %120) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %138

138:                                              ; preds = %136, %125, %115
  %139 = load ptr, ptr %117, align 4
  %140 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %2, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %142 = getelementptr i8, ptr %139, i32 -49404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %141) #14, !srcloc !13
  %143 = getelementptr i8, ptr %139, i32 -49408
  %144 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %138
  %147 = tail call ptr @llvm.thread.pointer() #14
  %148 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %149 = load i32, ptr %148, align 8
  %150 = lshr i32 %149, 5
  %151 = getelementptr i32, ptr @__cpu_online_mask, i32 %150
  %152 = load volatile i32, ptr %151, align 4
  %153 = and i32 %149, 31
  %154 = shl nuw i32 1, %153
  %155 = and i32 %154, %152
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %146
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %158 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %143, i32 noundef 4, i32 noundef %141) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %159

159:                                              ; preds = %157, %146, %138
  %160 = load ptr, ptr %117, align 4
  %161 = load i32, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %162 = getelementptr i8, ptr %160, i32 -49408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %161) #14, !srcloc !13
  %163 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %185

165:                                              ; preds = %159
  %166 = tail call ptr @llvm.thread.pointer() #14
  %167 = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 2
  %168 = load i32, ptr %167, align 8
  %169 = lshr i32 %168, 5
  %170 = getelementptr i32, ptr @__cpu_online_mask, i32 %169
  %171 = load volatile i32, ptr %170, align 4
  %172 = and i32 %168, 31
  %173 = shl nuw i32 1, %172
  %174 = and i32 %173, %171
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %165
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %177 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %162, i32 noundef 0, i32 noundef %161) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %185

178:                                              ; preds = %65
  %179 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %5, i32 0, i32 3
  %180 = load i8, ptr %179, align 1
  %181 = and i8 %180, 3
  %182 = icmp eq i8 %181, 1
  br i1 %182, label %185, label %183

183:                                              ; preds = %178
  %184 = and i32 %1, -1281
  br label %188

185:                                              ; preds = %178, %176, %165, %159
  %186 = phi i32 [ -22, %178 ], [ %116, %159 ], [ %116, %165 ], [ %116, %176 ]
  %187 = or i32 %1, 1024
  br label %188

188:                                              ; preds = %185, %183
  %189 = phi i32 [ %186, %185 ], [ -22, %183 ]
  %190 = phi i32 [ %187, %185 ], [ %184, %183 ]
  %191 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 4
  %192 = load ptr, ptr %191, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %193 = getelementptr i8, ptr %192, i32 -49396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %190) #14, !srcloc !13
  %194 = getelementptr i8, ptr %192, i32 -49408
  %195 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %188
  %198 = tail call ptr @llvm.thread.pointer() #14
  %199 = getelementptr inbounds %struct.thread_info, ptr %198, i32 0, i32 2
  %200 = load i32, ptr %199, align 8
  %201 = lshr i32 %200, 5
  %202 = getelementptr i32, ptr @__cpu_online_mask, i32 %201
  %203 = load volatile i32, ptr %202, align 4
  %204 = and i32 %200, 31
  %205 = shl nuw i32 1, %204
  %206 = and i32 %205, %203
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %197
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %209 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %194, i32 noundef 12, i32 noundef %190) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %210

210:                                              ; preds = %208, %197, %188
  %211 = and i32 %190, 1024
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %276, label %213

213:                                              ; preds = %266, %210
  %214 = phi i32 [ %267, %266 ], [ 5000, %210 ]
  %215 = load ptr, ptr %191, align 4
  %216 = getelementptr i8, ptr %215, i32 -49396
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %218 = getelementptr i8, ptr %215, i32 -49408
  %219 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %213
  %222 = tail call ptr @llvm.thread.pointer() #14
  %223 = getelementptr inbounds %struct.thread_info, ptr %222, i32 0, i32 2
  %224 = load i32, ptr %223, align 8
  %225 = lshr i32 %224, 5
  %226 = getelementptr i32, ptr @__cpu_online_mask, i32 %225
  %227 = load volatile i32, ptr %226, align 4
  %228 = and i32 %224, 31
  %229 = shl nuw i32 1, %228
  %230 = and i32 %229, %227
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %221
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %233 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %218, i32 noundef 12, i32 noundef %217) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %234

234:                                              ; preds = %232, %221, %213
  %235 = and i32 %217, 1024
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %266

237:                                              ; preds = %234
  %238 = lshr i32 %217, 12
  %239 = and i32 %238, 15
  switch i32 %239, label %254 [
    i32 0, label %269
    i32 1, label %240
    i32 2, label %253
  ]

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 12
  %242 = load ptr, ptr %241, align 4
  %243 = tail call ptr @dev_driver_string(ptr noundef %242) #14
  %244 = load ptr, ptr %241, align 4
  %245 = getelementptr inbounds %struct.device, ptr %244, i32 0, i32 3
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %250

248:                                              ; preds = %240
  %249 = load ptr, ptr %244, align 4
  br label %250

250:                                              ; preds = %248, %240
  %251 = phi ptr [ %249, %248 ], [ %246, %240 ]
  %252 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 385, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %243, ptr noundef %251, ptr noundef %252) #14
  br label %269

253:                                              ; preds = %237
  br label %269

254:                                              ; preds = %237
  %255 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 12
  %256 = load ptr, ptr %255, align 4
  %257 = tail call ptr @dev_driver_string(ptr noundef %256) #14
  %258 = load ptr, ptr %255, align 4
  %259 = getelementptr inbounds %struct.device, ptr %258, i32 0, i32 3
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %264

262:                                              ; preds = %254
  %263 = load ptr, ptr %258, align 4
  br label %264

264:                                              ; preds = %262, %254
  %265 = phi ptr [ %263, %262 ], [ %260, %254 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 403, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %257, ptr noundef %265) #14
  br label %269

266:                                              ; preds = %234
  %267 = add nsw i32 %214, -1
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %213

269:                                              ; preds = %266, %264, %253, %250, %237
  %270 = phi i32 [ %239, %264 ], [ 2, %253 ], [ 1, %250 ], [ %239, %237 ], [ 0, %266 ]
  %271 = phi i32 [ %189, %264 ], [ -11, %253 ], [ -22, %250 ], [ %239, %237 ], [ %189, %266 ]
  %272 = phi i32 [ %214, %264 ], [ %214, %253 ], [ %214, %250 ], [ %214, %237 ], [ 0, %266 ]
  %273 = icmp eq i32 %272, 0
  %274 = select i1 %273, i32 -110, i32 %270
  %275 = select i1 %273, i32 -110, i32 %271
  br label %276

276:                                              ; preds = %269, %210
  %277 = phi i32 [ 0, %210 ], [ %274, %269 ]
  %278 = phi i32 [ 0, %210 ], [ %275, %269 ]
  %279 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_cmd, i32 0, i32 1), align 4
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %294

281:                                              ; preds = %276
  %282 = tail call ptr @llvm.thread.pointer() #14
  %283 = getelementptr inbounds %struct.thread_info, ptr %282, i32 0, i32 2
  %284 = load i32, ptr %283, align 8
  %285 = lshr i32 %284, 5
  %286 = getelementptr i32, ptr @__cpu_online_mask, i32 %285
  %287 = load volatile i32, ptr %286, align 4
  %288 = and i32 %284, 31
  %289 = shl nuw i32 1, %288
  %290 = and i32 %289, %287
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %281
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !26
  %293 = tail call i32 @__traceiter_dwc3_gadget_ep_cmd(ptr noundef null, ptr noundef %0, i32 noundef %190, ptr noundef %2, i32 noundef %277) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !27
  br label %294

294:                                              ; preds = %292, %281, %276
  %295 = and i32 %190, 15
  %296 = icmp eq i32 %295, 6
  br i1 %296, label %297, label %327

297:                                              ; preds = %294
  switch i32 %278, label %302 [
    i32 0, label %298
    i32 -110, label %327
  ]

298:                                              ; preds = %297
  %299 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %300 = load i32, ptr %299, align 4
  %301 = or i32 %300, 8
  store i32 %301, ptr %299, align 4
  br label %302

302:                                              ; preds = %298, %297
  %303 = load ptr, ptr %191, align 4
  %304 = getelementptr i8, ptr %303, i32 -49396
  %305 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %304) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %306 = getelementptr i8, ptr %303, i32 -49408
  %307 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %322

309:                                              ; preds = %302
  %310 = tail call ptr @llvm.thread.pointer() #14
  %311 = getelementptr inbounds %struct.thread_info, ptr %310, i32 0, i32 2
  %312 = load i32, ptr %311, align 8
  %313 = lshr i32 %312, 5
  %314 = getelementptr i32, ptr @__cpu_online_mask, i32 %313
  %315 = load volatile i32, ptr %314, align 4
  %316 = and i32 %312, 31
  %317 = shl nuw i32 1, %316
  %318 = and i32 %317, %315
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %322, label %320

320:                                              ; preds = %309
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %321 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %306, i32 noundef 12, i32 noundef %305) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %322

322:                                              ; preds = %320, %309, %302
  %323 = lshr i32 %305, 16
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 127
  %326 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 14
  store i8 %325, ptr %326, align 4
  br label %327

327:                                              ; preds = %322, %297, %294
  %328 = icmp eq i32 %66, 0
  br i1 %328, label %370, label %329

329:                                              ; preds = %327
  %330 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 30
  %331 = load ptr, ptr %330, align 4
  %332 = getelementptr i8, ptr %331, i32 256
  %333 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %332) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %334 = getelementptr i8, ptr %331, i32 -49408
  %335 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %350

337:                                              ; preds = %329
  %338 = tail call ptr @llvm.thread.pointer() #14
  %339 = getelementptr inbounds %struct.thread_info, ptr %338, i32 0, i32 2
  %340 = load i32, ptr %339, align 8
  %341 = lshr i32 %340, 5
  %342 = getelementptr i32, ptr @__cpu_online_mask, i32 %341
  %343 = load volatile i32, ptr %342, align 4
  %344 = and i32 %340, 31
  %345 = shl nuw i32 1, %344
  %346 = and i32 %345, %343
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %350, label %348

348:                                              ; preds = %337
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %349 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %334, i32 noundef 49664, i32 noundef %333) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %350

350:                                              ; preds = %348, %337, %329
  %351 = or i32 %333, %66
  %352 = load ptr, ptr %330, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %353 = getelementptr i8, ptr %352, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %353, i32 %351) #14, !srcloc !13
  %354 = getelementptr i8, ptr %352, i32 -49408
  %355 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %357, label %370

357:                                              ; preds = %350
  %358 = tail call ptr @llvm.thread.pointer() #14
  %359 = getelementptr inbounds %struct.thread_info, ptr %358, i32 0, i32 2
  %360 = load i32, ptr %359, align 8
  %361 = lshr i32 %360, 5
  %362 = getelementptr i32, ptr @__cpu_online_mask, i32 %361
  %363 = load volatile i32, ptr %362, align 4
  %364 = and i32 %360, 31
  %365 = shl nuw i32 1, %364
  %366 = and i32 %365, %363
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %357
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %369 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %354, i32 noundef 49664, i32 noundef %351) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %370

370:                                              ; preds = %368, %357, %350, %327
  ret i32 %278
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dwc3_gadget_wakeup(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1548
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %6 = getelementptr i8, ptr %3, i32 -49408
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = tail call ptr @llvm.thread.pointer() #14
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %21 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %6, i32 noundef 50956, i32 noundef %5) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %22

22:                                               ; preds = %20, %9, %1
  %23 = lshr i32 %5, 18
  %24 = and i32 %23, 15
  switch i32 %24, label %110 [
    i32 14, label %25
    i32 5, label %25
    i32 3, label %25
    i32 2, label %25
    i32 1, label %25
    i32 15, label %25
  ]

25:                                               ; preds = %22, %22, %22, %22, %22, %22
  %26 = tail call i32 @dwc3_gadget_set_link_state(ptr noundef %0, i32 noundef 8)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %105, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 21811
  br i1 %31, label %32, label %76

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %34, 1429412170
  br i1 %35, label %36, label %76

36:                                               ; preds = %32
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr i8, ptr %37, i32 1540
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %40 = getelementptr i8, ptr %37, i32 -49408
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = tail call ptr @llvm.thread.pointer() #14
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %55 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %40, i32 noundef 50948, i32 noundef %39) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %56

56:                                               ; preds = %54, %43, %36
  %57 = and i32 %39, -481
  %58 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %59 = getelementptr i8, ptr %58, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #14, !srcloc !13
  %60 = getelementptr i8, ptr %58, i32 -49408
  %61 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = tail call ptr @llvm.thread.pointer() #14
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = lshr i32 %66, 5
  %68 = getelementptr i32, ptr @__cpu_online_mask, i32 %67
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %66, 31
  %71 = shl nuw i32 1, %70
  %72 = and i32 %71, %69
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %75 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %60, i32 noundef 50948, i32 noundef %57) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %76

76:                                               ; preds = %74, %63, %56, %32, %28
  br label %77

77:                                               ; preds = %99, %76
  %78 = phi i32 [ %79, %99 ], [ 20000, %76 ]
  %79 = add nsw i32 %78, -1
  %80 = load ptr, ptr %2, align 4
  %81 = getelementptr i8, ptr %80, i32 1548
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %83 = getelementptr i8, ptr %80, i32 -49408
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %77
  %87 = tail call ptr @llvm.thread.pointer() #14
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = lshr i32 %89, 5
  %91 = getelementptr i32, ptr @__cpu_online_mask, i32 %90
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %89, 31
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, %92
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %98 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %83, i32 noundef 50956, i32 noundef %82) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %99

99:                                               ; preds = %97, %86, %77
  %100 = and i32 %82, 3932160
  %101 = icmp eq i32 %100, 0
  %102 = icmp eq i32 %79, 0
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %104, label %77

104:                                              ; preds = %99
  br i1 %101, label %110, label %105

105:                                              ; preds = %104, %25
  %106 = phi ptr [ @.str.14, %25 ], [ @.str.15, %104 ]
  %107 = phi i32 [ %26, %25 ], [ -22, %104 ]
  %108 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %109 = load ptr, ptr %108, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull %106) #15
  br label %110

110:                                              ; preds = %105, %104, %22
  %111 = phi i32 [ -22, %22 ], [ 0, %104 ], [ %107, %105 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_gadget_clear_tx_fifos(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %3 = load i48, ptr %2, align 4
  %4 = and i48 %3, 2048
  %5 = icmp eq i48 %4, 0
  br i1 %5, label %109, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 512
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %11 = getelementptr i8, ptr %8, i32 -49408
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %6
  %15 = tail call ptr @llvm.thread.pointer() #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %26 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %11, i32 noundef 49920, i32 noundef %10) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %27

27:                                               ; preds = %25, %14, %6
  %28 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 21811
  %31 = select i1 %30, i32 65535, i32 32767
  %32 = and i32 %31, %10
  %33 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 82
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 65
  %35 = load i8, ptr %34, align 1
  %36 = tail call i8 @llvm.umin.i8(i8 %35, i8 32)
  %37 = icmp ugt i8 %36, 3
  br i1 %37, label %38, label %107

38:                                               ; preds = %105, %27
  %39 = phi i32 [ %106, %105 ], [ %29, %27 ]
  %40 = phi i32 [ %100, %105 ], [ 3, %27 ]
  %41 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq i32 %39, 21811
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = shl nuw i32 %40, 1
  %46 = add nuw nsw i32 %45, 49920
  %47 = and i32 %46, -4
  br label %74

48:                                               ; preds = %38
  %49 = load ptr, ptr %7, align 4
  %50 = shl nuw i32 %40, 1
  %51 = add nuw nsw i32 %50, 49920
  %52 = and i32 %51, -4
  %53 = getelementptr i8, ptr %49, i32 -49408
  %54 = getelementptr i8, ptr %53, i32 %52
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %56 = getelementptr i8, ptr %49, i32 -49408
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %48
  %60 = tail call ptr @llvm.thread.pointer() #14
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %71 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %56, i32 noundef %52, i32 noundef %55) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %72

72:                                               ; preds = %70, %59, %48
  %73 = and i32 %55, 32768
  br label %74

74:                                               ; preds = %72, %44
  %75 = phi i32 [ %47, %44 ], [ %52, %72 ]
  %76 = phi i32 [ 0, %44 ], [ %73, %72 ]
  %77 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %78 = getelementptr i8, ptr %77, i32 -49408
  %79 = getelementptr i8, ptr %78, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %76) #14, !srcloc !13
  %80 = getelementptr i8, ptr %77, i32 -49408
  %81 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %74
  %84 = tail call ptr @llvm.thread.pointer() #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %95 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %80, i32 noundef %75, i32 noundef %76) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %96

96:                                               ; preds = %94, %83, %74
  %97 = getelementptr inbounds %struct.dwc3_ep, ptr %42, i32 0, i32 9
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, -4097
  store i32 %99, ptr %97, align 4
  %100 = add nuw nsw i32 %40, 2
  %101 = load i8, ptr %34, align 1
  %102 = tail call i8 @llvm.umin.i8(i8 %101, i8 32)
  %103 = zext i8 %102 to i32
  %104 = icmp ult i32 %100, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, ptr %28, align 4
  br label %38

107:                                              ; preds = %96, %27
  %108 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 83
  store i32 0, ptr %108, align 4
  br label %109

109:                                              ; preds = %107, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__dwc3_gadget_ep_set_halt(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %5 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %6 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 3
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.4, ptr noundef %18) #15
  br label %170

19:                                               ; preds = %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false)
  %20 = icmp eq i32 %1, 0
  %21 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 12
  %22 = load i8, ptr %21, align 2
  br i1 %20, label %72, label %23

23:                                               ; preds = %19
  %24 = icmp ugt i8 %22, 1
  br i1 %24, label %25, label %35

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 10
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i8 -1, i8 %27
  %30 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = zext i8 %29 to i32
  %33 = add nsw i32 %32, -1
  %34 = getelementptr %struct.dwc3_trb, ptr %31, i32 %33
  br label %42

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 10
  %39 = load i8, ptr %38, align 4
  %40 = zext i8 %39 to i32
  %41 = getelementptr %struct.dwc3_trb, ptr %37, i32 %40
  br label %42

42:                                               ; preds = %35, %25
  %43 = phi ptr [ %34, %25 ], [ %41, %35 ]
  %44 = getelementptr inbounds %struct.dwc3_trb, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 1
  %46 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 3
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq i32 %2, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = icmp ne ptr %47, %46
  %51 = and i32 %45, 1
  %52 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, 1
  %55 = icmp ne i8 %54, 0
  %56 = icmp ne i32 %51, 0
  %57 = select i1 %55, i1 %56, i1 false
  %58 = icmp eq i8 %54, 0
  %59 = select i1 %58, i1 %50, i1 false
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %170, label %61

61:                                               ; preds = %49, %42
  %62 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %6)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 12
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.5, ptr noundef %67) #15
  br label %170

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %70, 2
  store i32 %71, ptr %69, align 4
  br label %170

72:                                               ; preds = %19
  %73 = icmp ult i8 %22, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, -7
  store i32 %77, ptr %75, align 4
  br label %170

78:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  %79 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 24
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 14
  %85 = load i8, ptr %84, align 4
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 16
  %88 = or i32 %87, 2312
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #14
  %89 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %88, ptr noundef nonnull %5) #14
  %90 = icmp ne i32 %89, 0
  %91 = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  %92 = xor i1 %91, true
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %95, !prof !25

94:                                               ; preds = %83
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #14
  br label %95

95:                                               ; preds = %94, %83
  store i8 0, ptr %84, align 4
  %96 = load i32, ptr %79, align 4
  %97 = or i32 %96, 16
  store i32 %97, ptr %79, align 4
  br label %98

98:                                               ; preds = %95, %78
  %99 = phi i32 [ %80, %78 ], [ %97, %95 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  %100 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, %100
  br i1 %102, label %118, label %103

103:                                              ; preds = %103, %98
  %104 = phi ptr [ %105, %103 ], [ %101, %98 ]
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr i8, ptr %104, i32 8
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %104, i32 32
  store i32 4, ptr %108, align 4
  %109 = getelementptr inbounds %struct.dwc3_ep, ptr %107, i32 0, i32 1
  %110 = getelementptr i8, ptr %104, i32 4
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %111, ptr %112, align 4
  store volatile ptr %105, ptr %111, align 4
  %113 = getelementptr inbounds %struct.dwc3_ep, ptr %107, i32 0, i32 1, i32 1
  %114 = load ptr, ptr %113, align 4
  store ptr %104, ptr %113, align 4
  store ptr %109, ptr %104, align 4
  store ptr %114, ptr %110, align 4
  store volatile ptr %104, ptr %114, align 4
  %115 = icmp eq ptr %105, %100
  br i1 %115, label %116, label %103

116:                                              ; preds = %103
  %117 = load i32, ptr %79, align 4
  br label %118

118:                                              ; preds = %116, %98
  %119 = phi i32 [ %117, %116 ], [ %99, %98 ]
  %120 = and i32 %119, 16
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = or i32 %119, 2048
  store i32 %123, ptr %79, align 4
  br label %170

124:                                              ; preds = %118
  call fastcc void @dwc3_gadget_ep_cleanup_cancelled_requests(ptr noundef %0)
  %125 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %126 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %127 = load i8, ptr %126, align 4
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %145, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.dwc3, ptr %125, i32 0, i32 54
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 21811
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.dwc3, ptr %125, i32 0, i32 55
  %136 = load i32, ptr %135, align 4
  %137 = icmp ult i32 %136, 1429415434
  br i1 %137, label %145, label %138

138:                                              ; preds = %134, %130
  %139 = getelementptr inbounds %struct.dwc3, ptr %125, i32 0, i32 18
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.usb_gadget, ptr %140, i32 0, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = icmp ult i32 %142, 5
  %144 = select i1 %143, i32 5, i32 2053
  br label %145

145:                                              ; preds = %138, %134, %124
  %146 = phi i32 [ 5, %134 ], [ 5, %124 ], [ %144, %138 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #14
  %147 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %146, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 12
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.6, ptr noundef %152) #15
  br label %170

153:                                              ; preds = %145
  %154 = load i32, ptr %79, align 4
  %155 = and i32 %154, -7
  store i32 %155, ptr %79, align 4
  %156 = and i32 %154, 64
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %153
  %159 = load ptr, ptr %9, align 4
  %160 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %159, i32 0, i32 3
  %161 = load i8, ptr %160, align 1
  %162 = and i8 %161, 3
  %163 = icmp eq i8 %162, 1
  br i1 %163, label %167, label %164

164:                                              ; preds = %158
  %165 = call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %0)
  %166 = load i32, ptr %79, align 4
  br label %167

167:                                              ; preds = %164, %158, %153
  %168 = phi i32 [ %166, %164 ], [ %155, %158 ], [ %155, %153 ]
  %169 = and i32 %168, -65
  store i32 %169, ptr %79, align 4
  br label %170

170:                                              ; preds = %167, %149, %122, %74, %68, %64, %49, %15
  %171 = phi i32 [ -22, %15 ], [ 0, %74 ], [ 0, %122 ], [ %147, %149 ], [ -11, %49 ], [ 0, %167 ], [ 0, %68 ], [ %62, %64 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  ret i32 %171
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_gadget_ep_cleanup_cancelled_requests(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %53, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 11
  %10 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 12
  br label %11

11:                                               ; preds = %50, %5
  %12 = phi ptr [ %3, %5 ], [ %14, %50 ]
  %13 = getelementptr i8, ptr %12, i32 -56
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr i8, ptr %12, i32 40
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %12, i32 48
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr %9, align 1
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i8 [ %23, %22 ], [ %35, %24 ]
  %26 = phi i32 [ 0, %22 ], [ %36, %24 ]
  %27 = load ptr, ptr %8, align 4
  %28 = zext i8 %25 to i32
  %29 = getelementptr %struct.dwc3_trb, ptr %27, i32 %28, i32 3
  %30 = load i32, ptr %29, align 1
  %31 = and i32 %30, -2
  store i32 %31, ptr %29, align 1
  %32 = load i8, ptr %9, align 1
  %33 = add i8 %32, 1
  %34 = icmp eq i8 %33, -1
  %35 = select i1 %34, i8 0, i8 %33
  store i8 %35, ptr %9, align 1
  %36 = add nuw i32 %26, 1
  %37 = load i32, ptr %19, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %24, label %39

39:                                               ; preds = %24, %18
  store i32 0, ptr %19, align 4
  br label %40

40:                                               ; preds = %39, %11
  %41 = getelementptr i8, ptr %12, i32 32
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -2
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.12, i32 noundef %42) #15
  br label %50

47:                                               ; preds = %40
  %48 = getelementptr inbounds [3 x i32], ptr @switch.table.dwc3_gadget_ep_cleanup_cancelled_requests, i32 0, i32 %43
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ -104, %45 ], [ %49, %47 ]
  tail call void @dwc3_gadget_giveback(ptr noundef %0, ptr noundef %13, i32 noundef %51)
  %52 = icmp eq ptr %14, %2
  br i1 %52, label %53, label %11

53:                                               ; preds = %50, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %3 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !28
  %4 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %56, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 10
  %9 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 11
  %10 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %11 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  br label %12

12:                                               ; preds = %53, %7
  %13 = phi ptr [ %5, %7 ], [ %54, %53 ]
  %14 = phi i32 [ 0, %7 ], [ %26, %53 ]
  %15 = getelementptr i8, ptr %13, i32 20
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %13, i32 -56
  %20 = tail call fastcc i32 @dwc3_prepare_trbs_sg(ptr noundef %0, ptr noundef %19) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %144, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %15, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %141

25:                                               ; preds = %22, %12
  %26 = phi i32 [ %20, %22 ], [ %14, %12 ]
  %27 = load i8, ptr %8, align 4
  %28 = load i8, ptr %9, align 1
  %29 = icmp eq i8 %28, %27
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load volatile ptr, ptr %4, align 4
  %32 = icmp eq ptr %31, %4
  br i1 %32, label %38, label %141

33:                                               ; preds = %25
  %34 = sub i8 %28, %27
  %35 = icmp ult i8 %28, %27
  %36 = zext i1 %35 to i8
  %37 = icmp eq i8 %34, %36
  br i1 %37, label %141, label %38

38:                                               ; preds = %33, %30
  %39 = load i8, ptr %10, align 4
  %40 = and i8 %39, 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %13, i32 -32
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 65536
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %11, align 4
  %49 = getelementptr inbounds %struct.dwc3, ptr %48, i32 0, i32 66, i32 9
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %141, label %53

53:                                               ; preds = %47, %42, %38
  %54 = load ptr, ptr %13, align 4
  %55 = icmp eq ptr %54, %4
  br i1 %55, label %56, label %12

56:                                               ; preds = %53, %1
  %57 = phi i32 [ 0, %1 ], [ %26, %53 ]
  %58 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %61 = icmp eq ptr %59, %58
  br i1 %61, label %141, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %64 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 10
  %65 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 11
  %66 = load i8, ptr %63, align 4
  %67 = getelementptr i8, ptr %59, i32 -56
  %68 = load ptr, ptr %59, align 4
  %69 = load ptr, ptr %60, align 4
  %70 = getelementptr inbounds %struct.dwc3, ptr %69, i32 0, i32 13
  %71 = load ptr, ptr %70, align 4
  %72 = and i8 %66, 1
  %73 = zext i8 %72 to i32
  %74 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %71, ptr noundef %67, i32 noundef %73) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %141

76:                                               ; preds = %129, %62
  %77 = phi ptr [ %132, %129 ], [ %69, %62 ]
  %78 = phi ptr [ %131, %129 ], [ %68, %62 ]
  %79 = phi ptr [ %130, %129 ], [ %67, %62 ]
  %80 = phi ptr [ %78, %129 ], [ %59, %62 ]
  %81 = getelementptr i8, ptr %80, i32 -44
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %80, i32 12
  store ptr %82, ptr %83, align 4
  %84 = getelementptr i8, ptr %80, i32 16
  store ptr %82, ptr %84, align 4
  %85 = getelementptr i8, ptr %80, i32 24
  store i32 0, ptr %85, align 4
  %86 = getelementptr i8, ptr %80, i32 -36
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i8, ptr %80, i32 20
  store i32 %87, ptr %88, align 4
  %89 = icmp eq i32 %87, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %76
  %91 = tail call fastcc i32 @dwc3_prepare_trbs_sg(ptr noundef %0, ptr noundef %79) #14
  %92 = load i32, ptr %88, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %141

94:                                               ; preds = %76
  %95 = getelementptr i8, ptr %80, i32 -52
  %96 = load i32, ptr %95, align 4
  %97 = tail call fastcc i32 @dwc3_prepare_last_sg(ptr noundef %0, ptr noundef %79, i32 noundef %96, i32 noundef 0) #14
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i32 [ %91, %90 ], [ %97, %94 ]
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %144, label %101

101:                                              ; preds = %98
  %102 = load i8, ptr %64, align 4
  %103 = load i8, ptr %65, align 1
  %104 = icmp eq i8 %103, %102
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load volatile ptr, ptr %4, align 4
  %107 = icmp eq ptr %106, %4
  br i1 %107, label %113, label %141

108:                                              ; preds = %101
  %109 = sub i8 %103, %102
  %110 = icmp ult i8 %103, %102
  %111 = zext i1 %110 to i8
  %112 = icmp eq i8 %109, %111
  br i1 %112, label %141, label %113

113:                                              ; preds = %108, %105
  %114 = load i8, ptr %63, align 4
  %115 = and i8 %114, 2
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %139, label %117

117:                                              ; preds = %113
  %118 = getelementptr i8, ptr %80, i32 -32
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 65536
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %139, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.dwc3, ptr %77, i32 0, i32 66, i32 9
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 2
  %126 = icmp eq i32 %125, 0
  %127 = icmp eq ptr %78, %58
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %141, label %129

129:                                              ; preds = %139, %122
  %130 = getelementptr i8, ptr %78, i32 -56
  %131 = load ptr, ptr %78, align 4
  %132 = load ptr, ptr %60, align 4
  %133 = getelementptr inbounds %struct.dwc3, ptr %132, i32 0, i32 13
  %134 = load ptr, ptr %133, align 4
  %135 = and i8 %114, 1
  %136 = zext i8 %135 to i32
  %137 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %134, ptr noundef %130, i32 noundef %136) #14
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %76, label %141

139:                                              ; preds = %117, %113
  %140 = icmp eq ptr %78, %58
  br i1 %140, label %141, label %129

141:                                              ; preds = %139, %129, %122, %108, %105, %90, %62, %56, %47, %33, %30, %22
  %142 = phi i32 [ %57, %56 ], [ %74, %62 ], [ %99, %139 ], [ %99, %122 ], [ %99, %108 ], [ %99, %105 ], [ %91, %90 ], [ %137, %129 ], [ %20, %22 ], [ %26, %33 ], [ %26, %47 ], [ %26, %30 ]
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %262, label %144

144:                                              ; preds = %141, %98, %18
  %145 = phi i32 [ %142, %141 ], [ 0, %98 ], [ 0, %18 ]
  %146 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %147 = load i32, ptr %146, align 4
  %148 = and i32 %147, 8
  %149 = icmp eq i32 %148, 0
  %150 = icmp ne i32 %145, 0
  %151 = select i1 %150, i1 true, i1 %149
  br i1 %151, label %152, label %262

152:                                              ; preds = %144
  %153 = load volatile ptr, ptr %4, align 4
  %154 = icmp eq ptr %153, %4
  %155 = getelementptr i8, ptr %153, i32 -56
  %156 = icmp eq ptr %155, null
  %157 = or i1 %154, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = or i32 %147, 32
  store i32 %159, ptr %146, align 4
  br label %262

160:                                              ; preds = %152
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false)
  br i1 %149, label %161, label %187

161:                                              ; preds = %160
  %162 = getelementptr i8, ptr %153, i32 44
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %3, i32 0, i32 1
  store i32 %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %166 = load i8, ptr %165, align 4
  %167 = and i8 %166, 2
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %161
  %170 = getelementptr i8, ptr %153, i32 -32
  %171 = load i32, ptr %170, align 4
  %172 = shl i32 %171, 16
  %173 = or i32 %172, 6
  br label %174

174:                                              ; preds = %169, %161
  %175 = phi i32 [ %173, %169 ], [ 6, %161 ]
  %176 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %177, i32 0, i32 3
  %179 = load i8, ptr %178, align 1
  %180 = and i8 %179, 3
  %181 = icmp eq i8 %180, 1
  br i1 %181, label %182, label %193

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 15
  %184 = load i32, ptr %183, align 4
  %185 = shl i32 %184, 16
  %186 = or i32 %185, %175
  br label %193

187:                                              ; preds = %160
  %188 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 14
  %189 = load i8, ptr %188, align 4
  %190 = zext i8 %189 to i32
  %191 = shl nuw nsw i32 %190, 16
  %192 = or i32 %191, 7
  br label %193

193:                                              ; preds = %187, %182, %174
  %194 = phi i32 [ %186, %182 ], [ %175, %174 ], [ %192, %187 ]
  %195 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %194, ptr noundef nonnull %3)
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %242

197:                                              ; preds = %193
  %198 = icmp eq i32 %195, -11
  br i1 %198, label %262, label %199

199:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #14
  %200 = load i32, ptr %146, align 4
  %201 = and i32 %200, 24
  %202 = icmp eq i32 %201, 8
  br i1 %202, label %203, label %218

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 14
  %205 = load i8, ptr %204, align 4
  %206 = zext i8 %205 to i32
  %207 = shl nuw nsw i32 %206, 16
  %208 = or i32 %207, 2312
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #14
  %209 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %208, ptr noundef nonnull %2) #14
  %210 = icmp ne i32 %209, 0
  %211 = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  %212 = xor i1 %211, true
  %213 = select i1 %210, i1 %212, i1 false
  br i1 %213, label %214, label %215, !prof !25

214:                                              ; preds = %203
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #14
  br label %215

215:                                              ; preds = %214, %203
  store i8 0, ptr %204, align 4
  %216 = load i32, ptr %146, align 4
  %217 = or i32 %216, 16
  store i32 %217, ptr %146, align 4
  br label %218

218:                                              ; preds = %215, %199
  %219 = phi i32 [ %200, %199 ], [ %217, %215 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #14
  %220 = load ptr, ptr %4, align 4
  %221 = icmp eq ptr %220, %4
  br i1 %221, label %237, label %222

222:                                              ; preds = %222, %218
  %223 = phi ptr [ %224, %222 ], [ %220, %218 ]
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr i8, ptr %223, i32 8
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr i8, ptr %223, i32 32
  store i32 3, ptr %227, align 4
  %228 = getelementptr inbounds %struct.dwc3_ep, ptr %226, i32 0, i32 1
  %229 = getelementptr i8, ptr %223, i32 4
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.list_head, ptr %224, i32 0, i32 1
  store ptr %230, ptr %231, align 4
  store volatile ptr %224, ptr %230, align 4
  %232 = getelementptr inbounds %struct.dwc3_ep, ptr %226, i32 0, i32 1, i32 1
  %233 = load ptr, ptr %232, align 4
  store ptr %223, ptr %232, align 4
  store ptr %228, ptr %223, align 4
  store ptr %233, ptr %229, align 4
  store volatile ptr %223, ptr %233, align 4
  %234 = icmp eq ptr %224, %4
  br i1 %234, label %235, label %222

235:                                              ; preds = %222
  %236 = load i32, ptr %146, align 4
  br label %237

237:                                              ; preds = %235, %218
  %238 = phi i32 [ %236, %235 ], [ %219, %218 ]
  %239 = and i32 %238, 16
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %262

241:                                              ; preds = %237
  call fastcc void @dwc3_gadget_ep_cleanup_cancelled_requests(ptr noundef %0)
  br label %262

242:                                              ; preds = %193
  %243 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %244 = load i8, ptr %243, align 4
  %245 = and i8 %244, 2
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %262, label %247

247:                                              ; preds = %242
  %248 = getelementptr i8, ptr %153, i32 -32
  %249 = load i32, ptr %248, align 4
  %250 = and i32 %249, 65536
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %262, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.dwc3, ptr %254, i32 0, i32 66, i32 9
  %256 = load i32, ptr %255, align 4
  %257 = and i32 %256, 2
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %252
  %260 = load i32, ptr %146, align 4
  %261 = or i32 %260, 128
  store i32 %261, ptr %146, align 4
  br label %262

262:                                              ; preds = %259, %252, %247, %242, %241, %237, %197, %158, %144, %141
  %263 = phi i32 [ 0, %158 ], [ %142, %141 ], [ 0, %144 ], [ %195, %237 ], [ %195, %241 ], [ -11, %197 ], [ 0, %259 ], [ 0, %252 ], [ 0, %247 ], [ 0, %242 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret i32 %263
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %4, ptr noundef nonnull @.str.16) #14
  %6 = icmp sgt i32 %5, 0
  %7 = icmp eq i32 %5, -517
  %8 = or i1 %6, %7
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %4, ptr noundef nonnull @.str.17) #14
  %11 = icmp sgt i32 %10, 0
  %12 = icmp eq i32 %10, -517
  %13 = or i1 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @platform_get_irq(ptr noundef %4, i32 noundef 0) #14
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, 0
  %19 = select i1 %18, i32 -22, i32 %15
  br label %366

20:                                               ; preds = %9, %1
  %21 = phi i32 [ %5, %1 ], [ %10, %9 ]
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %366, label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %25 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 43
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 5
  %29 = tail call ptr @dma_alloc_attrs(ptr noundef %27, i32 noundef 32, ptr noundef %28, i32 noundef 3264, i32 noundef 0) #14
  %30 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.7) #15
  br label %366

34:                                               ; preds = %23
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 512) #16
  %37 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 4
  store ptr %36, ptr %37, align 4
  %38 = icmp eq ptr %36, null
  br i1 %38, label %361, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %26, align 4
  %41 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 6
  %42 = tail call ptr @dma_alloc_attrs(ptr noundef %40, i32 noundef 1024, ptr noundef %41, i32 noundef 3264, i32 noundef 0) #14
  %43 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 2
  store ptr %42, ptr %43, align 4
  %44 = icmp eq ptr %42, null
  br i1 %44, label %358, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 9
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %47, ptr noundef nonnull @.str.18, ptr noundef nonnull @init_completion.__key) #14
  %48 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 568) #16
  %50 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %49, null
  br i1 %51, label %353, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %2, align 4
  tail call void @usb_initialize_gadget(ptr noundef %53, ptr noundef nonnull %49, ptr noundef nonnull @dwc_gadget_release) #14
  %54 = load ptr, ptr %50, align 4
  %55 = getelementptr inbounds %struct.usb_gadget, ptr %54, i32 0, i32 11, i32 7
  store ptr %0, ptr %55, align 4
  %56 = load ptr, ptr %50, align 4
  %57 = getelementptr inbounds %struct.usb_gadget, ptr %56, i32 0, i32 2
  store ptr @dwc3_gadget_ops, ptr %57, align 4
  %58 = load ptr, ptr %50, align 4
  %59 = getelementptr inbounds %struct.usb_gadget, ptr %58, i32 0, i32 5
  store i32 0, ptr %59, align 4
  %60 = load ptr, ptr %50, align 4
  %61 = getelementptr inbounds %struct.usb_gadget, ptr %60, i32 0, i32 7
  store i32 0, ptr %61, align 4
  %62 = load ptr, ptr %50, align 4
  %63 = getelementptr inbounds %struct.usb_gadget, ptr %62, i32 0, i32 17
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, 1
  store i32 %65, ptr %63, align 4
  %66 = load ptr, ptr %50, align 4
  %67 = getelementptr inbounds %struct.usb_gadget, ptr %66, i32 0, i32 10
  store ptr @.str.8, ptr %67, align 8
  %68 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %69 = load i48, ptr %68, align 4
  %70 = trunc i48 %69 to i32
  %71 = load ptr, ptr %50, align 4
  %72 = getelementptr inbounds %struct.usb_gadget, ptr %71, i32 0, i32 17
  %73 = load i32, ptr %72, align 4
  %74 = lshr i32 %70, 2
  %75 = and i32 %74, 65536
  %76 = and i32 %73, -65537
  %77 = or i32 %75, %76
  %78 = xor i32 %77, 65536
  store i32 %78, ptr %72, align 4
  %79 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 21811
  br i1 %81, label %82, label %92

82:                                               ; preds = %52
  %83 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %84 = load i32, ptr %83, align 4
  %85 = icmp ult i32 %84, 1429414410
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i48, ptr %68, align 4
  %88 = and i48 %87, 1099511627776
  %89 = icmp eq i48 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %91, ptr noundef nonnull @.str.9, i32 noundef %84) #15
  br label %92

92:                                               ; preds = %90, %86, %82, %52
  %93 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 50
  %94 = load i32, ptr %93, align 4
  %95 = load ptr, ptr %50, align 4
  %96 = getelementptr inbounds %struct.usb_gadget, ptr %95, i32 0, i32 6
  store i32 %94, ptr %96, align 8
  %97 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 52
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %50, align 4
  %100 = getelementptr inbounds %struct.usb_gadget, ptr %99, i32 0, i32 8
  store i32 %98, ptr %100, align 8
  %101 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 65
  %102 = load i8, ptr %101, align 1
  %103 = load ptr, ptr %50, align 4
  %104 = getelementptr inbounds %struct.usb_gadget, ptr %103, i32 0, i32 4
  store volatile ptr %104, ptr %104, align 4
  %105 = getelementptr inbounds %struct.usb_gadget, ptr %103, i32 0, i32 4, i32 1
  store ptr %104, ptr %105, align 4
  %106 = icmp eq i8 %102, 0
  br i1 %106, label %328, label %107

107:                                              ; preds = %92
  %108 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %109 = zext i8 %102 to i32
  br label %110

110:                                              ; preds = %306, %107
  %111 = phi i32 [ 0, %107 ], [ %322, %306 ]
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  %114 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %115 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %114, i32 noundef 3520, i32 noundef 136) #16
  %116 = icmp eq ptr %115, null
  br i1 %116, label %349, label %117

117:                                              ; preds = %110
  %118 = trunc i32 %111 to i8
  %119 = lshr i32 %111, 1
  %120 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 7
  store ptr %0, ptr %120, align 8
  %121 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 12
  store i8 %118, ptr %121, align 2
  %122 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 18
  %123 = load i8, ptr %122, align 8
  %124 = and i8 %118, 1
  %125 = and i8 %123, -2
  %126 = or i8 %125, %124
  store i8 %126, ptr %122, align 8
  %127 = load ptr, ptr %108, align 4
  %128 = shl nuw nsw i32 %111, 4
  %129 = add nuw nsw i32 %128, 51200
  %130 = getelementptr i8, ptr %127, i32 %129
  %131 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 4
  store ptr %130, ptr %131, align 4
  %132 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 %111
  store ptr %115, ptr %132, align 4
  %133 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 19
  store i8 0, ptr %133, align 1
  %134 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 20
  store i32 0, ptr %134, align 4
  %135 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 17
  %136 = and i32 %119, 127
  %137 = select i1 %113, ptr @.str.30, ptr @.str.29
  %138 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %135, i32 noundef 20, ptr noundef nonnull @.str.28, i32 noundef %136, ptr noundef nonnull %137) #14
  %139 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 1
  store ptr %135, ptr %139, align 4
  %140 = load i8, ptr %121, align 2
  %141 = icmp ugt i8 %140, 1
  br i1 %141, label %145, label %142

142:                                              ; preds = %117
  %143 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 9
  store ptr @dwc3_gadget_ep0_desc, ptr %143, align 4
  %144 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 10
  store ptr null, ptr %144, align 8
  br label %145

145:                                              ; preds = %142, %117
  %146 = icmp ult i32 %111, 2
  %147 = load ptr, ptr %120, align 8
  br i1 %146, label %148, label %165

148:                                              ; preds = %145
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %115, i32 noundef 512) #14
  %149 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 7
  %150 = load i56, ptr %149, align 2
  %151 = and i56 %150, -34902897112121345
  %152 = or i56 %151, 1125899906842624
  store i56 %152, ptr %149, align 2
  %153 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 2
  store ptr @dwc3_gadget_ep0_ops, ptr %153, align 8
  %154 = load i8, ptr %122, align 8
  %155 = and i8 %154, 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.dwc3, ptr %147, i32 0, i32 18
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.usb_gadget, ptr %159, i32 0, i32 3
  store ptr %115, ptr %160, align 8
  br label %161

161:                                              ; preds = %157, %148
  %162 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 4
  %163 = load i8, ptr %162, align 4
  %164 = or i8 %163, 1
  store i8 %164, ptr %162, align 4
  br label %306

165:                                              ; preds = %145
  %166 = getelementptr inbounds %struct.dwc3, ptr %147, i32 0, i32 66
  %167 = load i32, ptr %166, align 4
  %168 = lshr i32 %167, 8
  %169 = and i32 %168, 255
  %170 = getelementptr inbounds %struct.dwc3, ptr %147, i32 0, i32 54
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 13106
  br i1 %113, label %242, label %173

173:                                              ; preds = %165
  br i1 %172, label %174, label %179

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.dwc3, ptr %147, i32 0, i32 66, i32 6
  %176 = load i32, ptr %175, align 4
  %177 = and i32 %176, 768
  %178 = or i32 %177, %169
  br label %179

179:                                              ; preds = %174, %173
  %180 = phi i32 [ %178, %174 ], [ %169, %173 ]
  %181 = lshr i32 %180, 3
  %182 = getelementptr inbounds %struct.dwc3, ptr %147, i32 0, i32 30
  %183 = load ptr, ptr %182, align 4
  %184 = lshr i8 %140, 1
  %185 = zext i8 %184 to i32
  %186 = shl nuw nsw i32 %185, 2
  %187 = add nuw nsw i32 %186, 49920
  %188 = getelementptr i8, ptr %183, i32 -49408
  %189 = getelementptr i8, ptr %188, i32 %187
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %189) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %191 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %179
  %194 = tail call ptr @llvm.thread.pointer() #14
  %195 = getelementptr inbounds %struct.thread_info, ptr %194, i32 0, i32 2
  %196 = load i32, ptr %195, align 8
  %197 = lshr i32 %196, 5
  %198 = getelementptr i32, ptr @__cpu_online_mask, i32 %197
  %199 = load volatile i32, ptr %198, align 4
  %200 = and i32 %196, 31
  %201 = shl nuw i32 1, %200
  %202 = and i32 %201, %199
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %193
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %205 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %188, i32 noundef %187, i32 noundef %190) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %206

206:                                              ; preds = %204, %193, %179
  %207 = load i32, ptr %170, align 4
  %208 = icmp eq i32 %207, 21811
  %209 = select i1 %208, i32 65535, i32 32767
  %210 = and i32 %209, %190
  %211 = mul i32 %210, %181
  %212 = getelementptr inbounds %struct.dwc3, ptr %147, i32 0, i32 50
  %213 = load i32, ptr %212, align 4
  %214 = icmp ugt i32 %213, 4
  %215 = select i1 %214, i32 3, i32 2
  %216 = sdiv i32 %211, %215
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %115, i32 noundef %216) #14
  %217 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 7
  %218 = load i56, ptr %217, align 2
  %219 = and i56 %218, -281470681743361
  %220 = or i56 %219, 68719476736
  store i56 %220, ptr %217, align 2
  %221 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 2
  store ptr @dwc3_gadget_ep_ops, ptr %221, align 8
  %222 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 3
  %223 = getelementptr inbounds %struct.dwc3, ptr %147, i32 0, i32 18
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.usb_gadget, ptr %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.usb_gadget, ptr %224, i32 0, i32 4, i32 1
  %227 = load ptr, ptr %226, align 4
  store ptr %222, ptr %226, align 4
  store ptr %225, ptr %222, align 4
  %228 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 3, i32 1
  store ptr %227, ptr %228, align 8
  store volatile ptr %222, ptr %227, align 4
  %229 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 4
  %230 = load i8, ptr %229, align 4
  %231 = or i8 %230, 14
  store i8 %231, ptr %229, align 4
  %232 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 5
  %233 = load ptr, ptr %232, align 8
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %306

235:                                              ; preds = %206
  %236 = load ptr, ptr %120, align 8
  %237 = getelementptr inbounds %struct.dwc3, ptr %236, i32 0, i32 13
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 6
  %240 = tail call ptr @dma_alloc_attrs(ptr noundef %238, i32 noundef 4096, ptr noundef %239, i32 noundef 3264, i32 noundef 0) #14
  store ptr %240, ptr %232, align 8
  %241 = icmp eq ptr %240, null
  br i1 %241, label %324, label %306

242:                                              ; preds = %165
  br i1 %172, label %243, label %248

243:                                              ; preds = %242
  %244 = getelementptr inbounds %struct.dwc3, ptr %147, i32 0, i32 66, i32 6
  %245 = load i32, ptr %244, align 4
  %246 = and i32 %245, 768
  %247 = or i32 %246, %169
  br label %248

248:                                              ; preds = %243, %242
  %249 = phi i32 [ %247, %243 ], [ %169, %242 ]
  %250 = lshr i32 %249, 3
  %251 = getelementptr inbounds %struct.dwc3, ptr %147, i32 0, i32 30
  %252 = load ptr, ptr %251, align 4
  %253 = getelementptr i8, ptr %252, i32 640
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %255 = getelementptr i8, ptr %252, i32 -49408
  %256 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %271

258:                                              ; preds = %248
  %259 = tail call ptr @llvm.thread.pointer() #14
  %260 = getelementptr inbounds %struct.thread_info, ptr %259, i32 0, i32 2
  %261 = load i32, ptr %260, align 8
  %262 = lshr i32 %261, 5
  %263 = getelementptr i32, ptr @__cpu_online_mask, i32 %262
  %264 = load volatile i32, ptr %263, align 4
  %265 = and i32 %261, 31
  %266 = shl nuw i32 1, %265
  %267 = and i32 %266, %264
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %258
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %270 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %255, i32 noundef 50048, i32 noundef %254) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %271

271:                                              ; preds = %269, %258, %248
  %272 = load i32, ptr %170, align 4
  %273 = icmp eq i32 %272, 21811
  %274 = select i1 %273, i32 65535, i32 32767
  %275 = and i32 %274, %254
  %276 = mul i32 %275, %250
  %277 = add i32 %276, -40
  %278 = icmp slt i32 %277, 0
  %279 = sdiv i32 %277, 3
  %280 = select i1 %278, i32 0, i32 %279
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %115, i32 noundef %280) #14
  %281 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 7
  %282 = load i56, ptr %281, align 2
  %283 = and i56 %282, -281470681743361
  %284 = or i56 %283, 68719476736
  store i56 %284, ptr %281, align 2
  %285 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 2
  store ptr @dwc3_gadget_ep_ops, ptr %285, align 8
  %286 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 3
  %287 = getelementptr inbounds %struct.dwc3, ptr %147, i32 0, i32 18
  %288 = load ptr, ptr %287, align 4
  %289 = getelementptr inbounds %struct.usb_gadget, ptr %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.usb_gadget, ptr %288, i32 0, i32 4, i32 1
  %291 = load ptr, ptr %290, align 4
  store ptr %286, ptr %290, align 4
  store ptr %289, ptr %286, align 4
  %292 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 3, i32 1
  store ptr %291, ptr %292, align 8
  store volatile ptr %286, ptr %291, align 4
  %293 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 4
  %294 = load i8, ptr %293, align 4
  %295 = or i8 %294, 14
  store i8 %295, ptr %293, align 4
  %296 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 5
  %297 = load ptr, ptr %296, align 8
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %306

299:                                              ; preds = %271
  %300 = load ptr, ptr %120, align 8
  %301 = getelementptr inbounds %struct.dwc3, ptr %300, i32 0, i32 13
  %302 = load ptr, ptr %301, align 4
  %303 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 6
  %304 = tail call ptr @dma_alloc_attrs(ptr noundef %302, i32 noundef 4096, ptr noundef %303, i32 noundef 3264, i32 noundef 0) #14
  store ptr %304, ptr %296, align 8
  %305 = icmp eq ptr %304, null
  br i1 %305, label %324, label %306

306:                                              ; preds = %299, %271, %235, %206, %161
  %307 = getelementptr inbounds %struct.usb_ep, ptr %115, i32 0, i32 4
  %308 = load i8, ptr %307, align 4
  %309 = shl nuw nsw i8 %124, 4
  %310 = and i8 %308, -49
  %311 = or i8 %310, %309
  %312 = shl i8 %118, 5
  %313 = and i8 %312, 32
  %314 = or i8 %311, %313
  %315 = xor i8 %314, 32
  store i8 %315, ptr %307, align 4
  %316 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 2
  store volatile ptr %316, ptr %316, align 4
  %317 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 2, i32 1
  store ptr %316, ptr %317, align 8
  %318 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 3
  store volatile ptr %318, ptr %318, align 4
  %319 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 3, i32 1
  store ptr %318, ptr %319, align 8
  %320 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 1
  store volatile ptr %320, ptr %320, align 4
  %321 = getelementptr inbounds %struct.dwc3_ep, ptr %115, i32 0, i32 1, i32 1
  store ptr %320, ptr %321, align 8
  tail call void @dwc3_debugfs_create_endpoint_dir(ptr noundef nonnull %115) #14
  %322 = add nuw nsw i32 %111, 1
  %323 = icmp eq i32 %322, %109
  br i1 %323, label %328, label %110

324:                                              ; preds = %299, %235
  %325 = load ptr, ptr %120, align 8
  %326 = getelementptr inbounds %struct.dwc3, ptr %325, i32 0, i32 12
  %327 = load ptr, ptr %326, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %327, ptr noundef nonnull @.str.36, ptr noundef %135) #15
  br label %349

328:                                              ; preds = %306, %92
  %329 = load ptr, ptr %50, align 4
  %330 = tail call i32 @usb_add_gadget(ptr noundef %329) #14
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %334, label %332

332:                                              ; preds = %328
  %333 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %333, ptr noundef nonnull @.str.10) #15
  tail call fastcc void @dwc3_gadget_free_endpoints(ptr noundef %0)
  br label %349

334:                                              ; preds = %328
  %335 = load i32, ptr %79, align 4
  %336 = icmp eq i32 %335, 13106
  %337 = load i32, ptr %93, align 4
  %338 = icmp eq i32 %337, 6
  %339 = select i1 %336, i1 %338, i1 false
  %340 = load ptr, ptr %50, align 4
  br i1 %339, label %341, label %343

341:                                              ; preds = %334
  %342 = load i32, ptr %97, align 4
  tail call void @dwc3_gadget_set_ssp_rate(ptr noundef %340, i32 noundef %342)
  br label %366

343:                                              ; preds = %334
  %344 = getelementptr inbounds %struct.usb_gadget, ptr %340, i32 0, i32 11, i32 7
  %345 = load ptr, ptr %344, align 4
  %346 = getelementptr inbounds %struct.dwc3, ptr %345, i32 0, i32 10
  %347 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %346) #14
  %348 = getelementptr inbounds %struct.dwc3, ptr %345, i32 0, i32 51
  store i32 %337, ptr %348, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %346, i32 noundef %347) #14
  br label %366

349:                                              ; preds = %332, %324, %110
  %350 = phi i32 [ %330, %332 ], [ -12, %324 ], [ -12, %110 ]
  %351 = load ptr, ptr %50, align 4
  %352 = getelementptr inbounds %struct.usb_gadget, ptr %351, i32 0, i32 11
  tail call void @put_device(ptr noundef %352) #14
  store ptr null, ptr %50, align 4
  br label %353

353:                                              ; preds = %349, %45
  %354 = phi i32 [ %350, %349 ], [ -12, %45 ]
  %355 = load ptr, ptr %26, align 4
  %356 = load ptr, ptr %43, align 4
  %357 = load i32, ptr %41, align 4
  tail call void @dma_free_attrs(ptr noundef %355, i32 noundef 1024, ptr noundef %356, i32 noundef %357, i32 noundef 0) #14
  br label %358

358:                                              ; preds = %353, %39
  %359 = phi i32 [ %354, %353 ], [ -12, %39 ]
  %360 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %360) #14
  br label %361

361:                                              ; preds = %358, %34
  %362 = phi i32 [ %359, %358 ], [ -12, %34 ]
  %363 = load ptr, ptr %26, align 4
  %364 = load ptr, ptr %30, align 4
  %365 = load i32, ptr %28, align 4
  tail call void @dma_free_attrs(ptr noundef %363, i32 noundef 32, ptr noundef %364, i32 noundef %365, i32 noundef 0) #14
  br label %366

366:                                              ; preds = %361, %343, %341, %32, %20, %17
  %367 = phi i32 [ 0, %343 ], [ 0, %341 ], [ %362, %361 ], [ -12, %32 ], [ %21, %20 ], [ %19, %17 ]
  ret i32 %367
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_initialize_gadget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc_gadget_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  tail call void @kfree(ptr noundef %2) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc3_gadget_set_ssp_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 51
  store i32 6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 53
  store i32 %1, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc3_gadget_set_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 51
  store i32 %1, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_gadget_free_endpoints(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc3_ep, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dwc3_ep, ptr %3, i32 0, i32 17
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load ptr, ptr %9, align 4
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %11, %5 ]
  %18 = load ptr, ptr @usb_debug_root, align 4
  %19 = tail call ptr @debugfs_lookup(ptr noundef %17, ptr noundef %18) #14
  %20 = tail call ptr @debugfs_lookup(ptr noundef %12, ptr noundef %19) #14
  tail call void @debugfs_remove(ptr noundef %20) #14
  tail call void @kfree(ptr noundef nonnull %3) #14
  br label %21

21:                                               ; preds = %16, %1
  %22 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dwc3_ep, ptr %23, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dwc3, ptr %27, i32 0, i32 12
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dwc3_ep, ptr %23, i32 0, i32 17
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load ptr, ptr %29, align 4
  br label %36

36:                                               ; preds = %34, %25
  %37 = phi ptr [ %35, %34 ], [ %31, %25 ]
  %38 = load ptr, ptr @usb_debug_root, align 4
  %39 = tail call ptr @debugfs_lookup(ptr noundef %37, ptr noundef %38) #14
  %40 = tail call ptr @debugfs_lookup(ptr noundef %32, ptr noundef %39) #14
  tail call void @debugfs_remove(ptr noundef %40) #14
  tail call void @kfree(ptr noundef nonnull %23) #14
  br label %41

41:                                               ; preds = %36, %21
  br label %42

42:                                               ; preds = %76, %41
  %43 = phi i32 [ %77, %76 ], [ 2, %41 ]
  %44 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %76, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.dwc3_ep, ptr %45, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dwc3, ptr %49, i32 0, i32 13
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dwc3_ep, ptr %45, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dwc3_ep, ptr %45, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  tail call void @dma_free_attrs(ptr noundef %51, i32 noundef 4096, ptr noundef %53, i32 noundef %55, i32 noundef 0) #14
  store ptr null, ptr %52, align 4
  store i32 0, ptr %54, align 4
  %56 = getelementptr inbounds %struct.usb_ep, ptr %45, i32 0, i32 3
  %57 = getelementptr inbounds %struct.usb_ep, ptr %45, i32 0, i32 3, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %56, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 4
  store volatile ptr %59, ptr %58, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %56, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %57, align 4
  %61 = getelementptr inbounds %struct.dwc3_ep, ptr %45, i32 0, i32 17
  %62 = getelementptr inbounds %struct.dwc3_ep, ptr %45, i32 0, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.dwc3, ptr %63, i32 0, i32 12
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %47
  %70 = load ptr, ptr %65, align 4
  br label %71

71:                                               ; preds = %69, %47
  %72 = phi ptr [ %70, %69 ], [ %67, %47 ]
  %73 = load ptr, ptr @usb_debug_root, align 4
  %74 = tail call ptr @debugfs_lookup(ptr noundef %72, ptr noundef %73) #14
  %75 = tail call ptr @debugfs_lookup(ptr noundef %61, ptr noundef %74) #14
  tail call void @debugfs_remove(ptr noundef %75) #14
  tail call void @kfree(ptr noundef nonnull %45) #14
  br label %76

76:                                               ; preds = %71, %42
  %77 = add nuw nsw i32 %43, 1
  %78 = icmp eq i32 %77, 32
  br i1 %78, label %79, label %42, !llvm.loop !29

79:                                               ; preds = %76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_gadget_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  tail call void @usb_del_gadget(ptr noundef nonnull %3) #14
  tail call fastcc void @dwc3_gadget_free_endpoints(ptr noundef %0)
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.usb_gadget, ptr %6, i32 0, i32 11
  tail call void @put_device(ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 1024, ptr noundef %11, i32 noundef %13, i32 noundef 0) #14
  %14 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #14
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef 32, ptr noundef %18, i32 noundef %20, i32 noundef 0) #14
  br label %21

21:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_del_gadget(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @dwc3_gadget_run_stop(ptr noundef %0, i32 noundef 0)
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %8 = load i48, ptr %7, align 4
  %9 = and i48 %8, 4398046511104
  %10 = icmp eq i48 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.usb_gadget_driver, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.usb_gadget_driver, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %24 = load ptr, ptr %23, align 4
  tail call void %22(ptr noundef %24) #14
  tail call void @_raw_spin_lock(ptr noundef %17) #14
  br label %25

25:                                               ; preds = %16, %11, %5
  tail call fastcc void @__dwc3_gadget_stop(ptr noundef %0)
  br label %26

26:                                               ; preds = %25, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_gadget_run_stop(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 18
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 15
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 7
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %281, label %13

13:                                               ; preds = %8, %2
  %14 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 1540
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %18 = getelementptr i8, ptr %15, i32 -49408
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = tail call ptr @llvm.thread.pointer() #14
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %33 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %18, i32 noundef 50948, i32 noundef %17) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %34

34:                                               ; preds = %32, %21, %13
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %221, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 21811
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %42, 1429411963
  %44 = and i32 %17, -1966081
  %45 = or i32 %44, 655360
  %46 = select i1 %43, i32 %45, i32 %17
  %47 = icmp ult i32 %42, 1429412170
  br i1 %47, label %51, label %48

48:                                               ; preds = %40, %36
  %49 = phi i32 [ %46, %40 ], [ %17, %36 ]
  %50 = and i32 %49, -524289
  br label %51

51:                                               ; preds = %48, %40
  %52 = phi i32 [ %46, %40 ], [ %50, %48 ]
  %53 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %54 = load i48, ptr %53, align 4
  %55 = and i48 %54, 32
  %56 = icmp eq i48 %55, 0
  %57 = select i1 %56, i32 -2147483648, i32 -2146959360
  %58 = or i32 %57, %52
  %59 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 51
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 50
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %60, %63
  %65 = select i1 %61, i1 true, i1 %64
  %66 = select i1 %65, i32 %63, i32 %60
  %67 = icmp eq i32 %66, 6
  %68 = icmp eq i32 %38, 13106
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %138

70:                                               ; preds = %51
  %71 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 53
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 52
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %70
  %78 = phi i32 [ %76, %74 ], [ %72, %70 ]
  %79 = load ptr, ptr %14, align 4
  %80 = getelementptr i8, ptr %79, i32 1536
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %82 = getelementptr i8, ptr %79, i32 -49408
  %83 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %77
  %86 = tail call ptr @llvm.thread.pointer() #14
  %87 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 8
  %89 = lshr i32 %88, 5
  %90 = getelementptr i32, ptr @__cpu_online_mask, i32 %89
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %88, 31
  %93 = shl nuw i32 1, %92
  %94 = and i32 %93, %91
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %85
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %97 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %82, i32 noundef 50944, i32 noundef %81) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %98

98:                                               ; preds = %96, %85, %77
  %99 = and i32 %81, 1073741816
  %100 = icmp eq i32 %78, 2
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = or i32 %99, 4
  %103 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 52
  %104 = load i32, ptr %103, align 4
  br label %112

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 52
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 2
  %109 = or i32 %99, 5
  %110 = select i1 %108, i32 %99, i32 %109
  %111 = icmp eq i32 %78, 1
  br i1 %111, label %118, label %112

112:                                              ; preds = %105, %101
  %113 = phi i32 [ %104, %101 ], [ %107, %105 ]
  %114 = phi i32 [ %102, %101 ], [ %110, %105 ]
  %115 = icmp eq i32 %113, 1
  %116 = or i32 %114, 1073741824
  %117 = select i1 %115, i32 %114, i32 %116
  br label %118

118:                                              ; preds = %112, %105
  %119 = phi i32 [ %110, %105 ], [ %117, %112 ]
  %120 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %121 = getelementptr i8, ptr %120, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #14, !srcloc !13
  %122 = getelementptr i8, ptr %120, i32 -49408
  %123 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %218

125:                                              ; preds = %118
  %126 = tail call ptr @llvm.thread.pointer() #14
  %127 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 8
  %129 = lshr i32 %128, 5
  %130 = getelementptr i32, ptr @__cpu_online_mask, i32 %129
  %131 = load volatile i32, ptr %130, align 4
  %132 = and i32 %128, 31
  %133 = shl nuw i32 1, %132
  %134 = and i32 %133, %131
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %218, label %136

136:                                              ; preds = %125
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %137 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %122, i32 noundef 50944, i32 noundef %119) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %218

138:                                              ; preds = %51
  %139 = load ptr, ptr %14, align 4
  %140 = getelementptr i8, ptr %139, i32 1536
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %142 = getelementptr i8, ptr %139, i32 -49408
  %143 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %138
  %146 = tail call ptr @llvm.thread.pointer() #14
  %147 = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 2
  %148 = load i32, ptr %147, align 8
  %149 = lshr i32 %148, 5
  %150 = getelementptr i32, ptr @__cpu_online_mask, i32 %149
  %151 = load volatile i32, ptr %150, align 4
  %152 = and i32 %148, 31
  %153 = shl nuw i32 1, %152
  %154 = and i32 %153, %151
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %145
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %157 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %142, i32 noundef 50944, i32 noundef %141) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %158

158:                                              ; preds = %156, %145, %138
  %159 = and i32 %141, -8
  %160 = load i32, ptr %37, align 4
  %161 = icmp eq i32 %160, 21811
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %164 = load i32, ptr %163, align 4
  %165 = icmp ult i32 %164, 1429414410
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = load i48, ptr %53, align 4
  %168 = and i48 %167, 1099511627776
  %169 = icmp eq i48 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = or i32 %159, 4
  br label %190

172:                                              ; preds = %166, %162, %158
  switch i32 %66, label %182 [
    i32 2, label %173
    i32 3, label %190
    i32 5, label %175
    i32 6, label %177
  ]

173:                                              ; preds = %172
  %174 = or i32 %159, 1
  br label %190

175:                                              ; preds = %172
  %176 = or i32 %159, 4
  br label %190

177:                                              ; preds = %172
  br i1 %161, label %178, label %180

178:                                              ; preds = %177
  %179 = or i32 %159, 4
  br label %190

180:                                              ; preds = %177
  %181 = or i32 %159, 5
  br label %190

182:                                              ; preds = %172
  %183 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull @.str.37, i32 noundef %66) #15
  %184 = load i32, ptr %37, align 4
  %185 = icmp eq i32 %184, 21811
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = or i32 %159, 4
  br label %190

188:                                              ; preds = %182
  %189 = or i32 %159, 5
  br label %190

190:                                              ; preds = %188, %186, %180, %178, %175, %173, %172, %170
  %191 = phi i32 [ 21811, %186 ], [ %184, %188 ], [ 21811, %178 ], [ %160, %180 ], [ %160, %175 ], [ %160, %173 ], [ 21811, %170 ], [ %160, %172 ]
  %192 = phi i32 [ %187, %186 ], [ %189, %188 ], [ %179, %178 ], [ %181, %180 ], [ %176, %175 ], [ %174, %173 ], [ %171, %170 ], [ %159, %172 ]
  %193 = icmp eq i32 %191, 13106
  %194 = icmp ne i32 %66, 0
  %195 = select i1 %193, i1 %194, i1 false
  %196 = icmp ult i32 %66, 6
  %197 = select i1 %195, i1 %196, i1 false
  %198 = and i32 %192, 1073741823
  %199 = select i1 %197, i32 %198, i32 %192
  %200 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %201 = getelementptr i8, ptr %200, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %199) #14, !srcloc !13
  %202 = getelementptr i8, ptr %200, i32 -49408
  %203 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %190
  %206 = tail call ptr @llvm.thread.pointer() #14
  %207 = getelementptr inbounds %struct.thread_info, ptr %206, i32 0, i32 2
  %208 = load i32, ptr %207, align 8
  %209 = lshr i32 %208, 5
  %210 = getelementptr i32, ptr @__cpu_online_mask, i32 %209
  %211 = load volatile i32, ptr %210, align 4
  %212 = and i32 %208, 31
  %213 = shl nuw i32 1, %212
  %214 = and i32 %213, %211
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %205
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %217 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %202, i32 noundef 50944, i32 noundef %199) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %218

218:                                              ; preds = %216, %205, %190, %136, %125, %118
  %219 = load i48, ptr %53, align 4
  %220 = or i48 %219, 4096
  store i48 %220, ptr %53, align 4
  br label %229

221:                                              ; preds = %34
  %222 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %223 = load i48, ptr %222, align 4
  %224 = and i48 %223, 32
  %225 = icmp eq i48 %224, 0
  %226 = select i1 %225, i32 2147483647, i32 2146959359
  %227 = and i32 %226, %17
  %228 = and i48 %223, -4097
  store i48 %228, ptr %222, align 4
  br label %229

229:                                              ; preds = %221, %218
  %230 = phi i32 [ %58, %218 ], [ %227, %221 ]
  %231 = and i32 %230, -481
  %232 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %233 = getelementptr i8, ptr %232, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %231) #14, !srcloc !13
  %234 = getelementptr i8, ptr %232, i32 -49408
  %235 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %229
  %238 = tail call ptr @llvm.thread.pointer() #14
  %239 = getelementptr inbounds %struct.thread_info, ptr %238, i32 0, i32 2
  %240 = load i32, ptr %239, align 8
  %241 = lshr i32 %240, 5
  %242 = getelementptr i32, ptr @__cpu_online_mask, i32 %241
  %243 = load volatile i32, ptr %242, align 4
  %244 = and i32 %240, 31
  %245 = shl nuw i32 1, %244
  %246 = and i32 %245, %243
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %237
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %249 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %234, i32 noundef 50948, i32 noundef %231) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %250

250:                                              ; preds = %248, %237, %229
  %251 = zext i1 %35 to i32
  br label %252

252:                                              ; preds = %276, %250
  %253 = phi i32 [ 500, %250 ], [ %274, %276 ]
  %254 = load ptr, ptr %14, align 4
  %255 = getelementptr i8, ptr %254, i32 1548
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %255) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %257 = getelementptr i8, ptr %254, i32 -49408
  %258 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %273

260:                                              ; preds = %252
  %261 = tail call ptr @llvm.thread.pointer() #14
  %262 = getelementptr inbounds %struct.thread_info, ptr %261, i32 0, i32 2
  %263 = load i32, ptr %262, align 8
  %264 = lshr i32 %263, 5
  %265 = getelementptr i32, ptr @__cpu_online_mask, i32 %264
  %266 = load volatile i32, ptr %265, align 4
  %267 = and i32 %263, 31
  %268 = shl nuw i32 1, %267
  %269 = and i32 %268, %266
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %260
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %272 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %257, i32 noundef 50956, i32 noundef %256) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %273

273:                                              ; preds = %271, %260, %252
  %274 = add nsw i32 %253, -1
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %273
  %277 = lshr i32 %256, 22
  %278 = and i32 %277, 1
  %279 = xor i32 %278, %251
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %252, label %281

281:                                              ; preds = %276, %273, %8
  %282 = phi i32 [ 0, %8 ], [ 0, %276 ], [ -110, %273 ]
  ret i32 %282
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dwc3_gadget_stop(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %4 = getelementptr i8, ptr %3, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #14, !srcloc !13
  %5 = getelementptr i8, ptr %3, i32 -49408
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = tail call ptr @llvm.thread.pointer() #14
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %20 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %5, i32 noundef 50952, i32 noundef 0) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %21

21:                                               ; preds = %19, %8, %1
  %22 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  tail call fastcc void @__dwc3_gadget_ep_disable(ptr noundef %23)
  %24 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call fastcc void @__dwc3_gadget_ep_disable(ptr noundef %25)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %7 = load i48, ptr %6, align 4
  %8 = and i48 %7, 2
  %9 = icmp eq i48 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = tail call fastcc i32 @__dwc3_gadget_start(ptr noundef %0)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @dwc3_gadget_run_stop(ptr noundef %0, i32 noundef 1)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call fastcc void @__dwc3_gadget_stop(ptr noundef %0)
  br label %17

17:                                               ; preds = %16, %13, %10, %5, %1
  %18 = phi i32 [ 0, %5 ], [ 0, %1 ], [ 0, %13 ], [ %11, %10 ], [ %14, %16 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dwc3_gadget_start(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 80
  %3 = load i16, ptr %2, align 2
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %7 = load ptr, ptr %6, align 4
  %8 = zext i16 %3 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %9 = getelementptr i8, ptr %7, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #14, !srcloc !13
  %10 = getelementptr i8, ptr %7, i32 -49408
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %5
  %14 = tail call ptr @llvm.thread.pointer() #14
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %25 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %10, i32 noundef 51712, i32 noundef %8) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %26

26:                                               ; preds = %24, %13, %5
  %27 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %28 = getelementptr i8, ptr %27, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -2147483648) #14, !srcloc !13
  %29 = getelementptr i8, ptr %27, i32 -49408
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = tail call ptr @llvm.thread.pointer() #14
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %44 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %29, i32 noundef 50188, i32 noundef -2147483648) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %67

45:                                               ; preds = %1
  %46 = tail call zeroext i1 @dwc3_has_imod(ptr noundef %0) #14
  br i1 %46, label %47, label %67

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %49 = load ptr, ptr %48, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %50 = getelementptr i8, ptr %49, i32 2304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #14, !srcloc !13
  %51 = getelementptr i8, ptr %49, i32 -49408
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = tail call ptr @llvm.thread.pointer() #14
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %66 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %51, i32 noundef 51712, i32 noundef 0) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %67

67:                                               ; preds = %65, %54, %47, %45, %43, %32, %26
  %68 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 12
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %72 = getelementptr i8, ptr %69, i32 -49408
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %67
  %76 = tail call ptr @llvm.thread.pointer() #14
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 5
  %80 = getelementptr i32, ptr @__cpu_online_mask, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %78, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %75
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %87 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %72, i32 noundef 49420, i32 noundef %71) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %88

88:                                               ; preds = %86, %75, %67
  %89 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 21811
  %92 = select i1 %91, i32 -536870913, i32 -67108865
  %93 = and i32 %92, %71
  %94 = load ptr, ptr %68, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %95 = getelementptr i8, ptr %94, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #14, !srcloc !13
  %96 = getelementptr i8, ptr %94, i32 -49408
  %97 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %88
  %100 = tail call ptr @llvm.thread.pointer() #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %111 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %96, i32 noundef 49420, i32 noundef %93) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %112

112:                                              ; preds = %110, %99, %88
  %113 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 7
  %114 = load i32, ptr %113, align 4
  %115 = lshr i32 %114, 16
  %116 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66
  %117 = load i32, ptr %116, align 4
  %118 = lshr i32 %117, 8
  %119 = and i32 %118, 255
  %120 = load i32, ptr %89, align 4
  %121 = icmp eq i32 %120, 13106
  br i1 %121, label %122, label %127

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 768
  %126 = or i32 %125, %119
  br label %127

127:                                              ; preds = %122, %112
  %128 = phi i32 [ %126, %122 ], [ %119, %112 ]
  %129 = mul nsw i32 %128, %115
  %130 = lshr i32 %129, 3
  %131 = add nsw i32 %130, -40
  %132 = lshr i32 %131, 10
  %133 = tail call i32 @llvm.umin.i32(i32 %132, i32 16) #14
  %134 = load ptr, ptr %68, align 4
  %135 = getelementptr i8, ptr %134, i32 1536
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %137 = getelementptr i8, ptr %134, i32 -49408
  %138 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %127
  %141 = tail call ptr @llvm.thread.pointer() #14
  %142 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %143 = load i32, ptr %142, align 8
  %144 = lshr i32 %143, 5
  %145 = getelementptr i32, ptr @__cpu_online_mask, i32 %144
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %143, 31
  %148 = shl nuw i32 1, %147
  %149 = and i32 %148, %146
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %140
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %152 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %137, i32 noundef 50944, i32 noundef %136) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %153

153:                                              ; preds = %151, %140, %127
  %154 = and i32 %136, -4063233
  %155 = shl nuw nsw i32 %133, 17
  %156 = or i32 %155, %154
  %157 = load ptr, ptr %68, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %158 = getelementptr i8, ptr %157, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #14, !srcloc !13
  %159 = getelementptr i8, ptr %157, i32 -49408
  %160 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %153
  %163 = tail call ptr @llvm.thread.pointer() #14
  %164 = getelementptr inbounds %struct.thread_info, ptr %163, i32 0, i32 2
  %165 = load i32, ptr %164, align 8
  %166 = lshr i32 %165, 5
  %167 = getelementptr i32, ptr @__cpu_online_mask, i32 %166
  %168 = load volatile i32, ptr %167, align 4
  %169 = and i32 %165, 31
  %170 = shl nuw i32 1, %169
  %171 = and i32 %170, %168
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %162
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %174 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %159, i32 noundef 50944, i32 noundef %156) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %175

175:                                              ; preds = %173, %162, %153
  %176 = load ptr, ptr %68, align 4
  %177 = getelementptr i8, ptr %176, i32 1536
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %179 = getelementptr i8, ptr %176, i32 -49408
  %180 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %182, label %195

182:                                              ; preds = %175
  %183 = tail call ptr @llvm.thread.pointer() #14
  %184 = getelementptr inbounds %struct.thread_info, ptr %183, i32 0, i32 2
  %185 = load i32, ptr %184, align 8
  %186 = lshr i32 %185, 5
  %187 = getelementptr i32, ptr @__cpu_online_mask, i32 %186
  %188 = load volatile i32, ptr %187, align 4
  %189 = and i32 %185, 31
  %190 = shl nuw i32 1, %189
  %191 = and i32 %190, %188
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %182
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %194 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %179, i32 noundef 50944, i32 noundef %178) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %195

195:                                              ; preds = %193, %182, %175
  %196 = or i32 %178, 8388608
  %197 = load ptr, ptr %68, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %198 = getelementptr i8, ptr %197, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %196) #14, !srcloc !13
  %199 = getelementptr i8, ptr %197, i32 -49408
  %200 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %195
  %203 = tail call ptr @llvm.thread.pointer() #14
  %204 = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 2
  %205 = load i32, ptr %204, align 8
  %206 = lshr i32 %205, 5
  %207 = getelementptr i32, ptr @__cpu_online_mask, i32 %206
  %208 = load volatile i32, ptr %207, align 4
  %209 = and i32 %205, 31
  %210 = shl nuw i32 1, %209
  %211 = and i32 %210, %208
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %202
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %214 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %199, i32 noundef 50944, i32 noundef %196) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %215

215:                                              ; preds = %213, %202, %195
  %216 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 66, i32 9
  %217 = load i32, ptr %216, align 4
  %218 = and i32 %217, 2
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %260, label %220

220:                                              ; preds = %215
  %221 = load ptr, ptr %68, align 4
  %222 = getelementptr i8, ptr %221, i32 1600
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %222) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %224 = getelementptr i8, ptr %221, i32 -49408
  %225 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %220
  %228 = tail call ptr @llvm.thread.pointer() #14
  %229 = getelementptr inbounds %struct.thread_info, ptr %228, i32 0, i32 2
  %230 = load i32, ptr %229, align 8
  %231 = lshr i32 %230, 5
  %232 = getelementptr i32, ptr @__cpu_online_mask, i32 %231
  %233 = load volatile i32, ptr %232, align 4
  %234 = and i32 %230, 31
  %235 = shl nuw i32 1, %234
  %236 = and i32 %235, %233
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %227
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %239 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %224, i32 noundef 51008, i32 noundef %223) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %240

240:                                              ; preds = %238, %227, %220
  %241 = and i32 %223, -3
  %242 = load ptr, ptr %68, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %243 = getelementptr i8, ptr %242, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 %241) #14, !srcloc !13
  %244 = getelementptr i8, ptr %242, i32 -49408
  %245 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %260

247:                                              ; preds = %240
  %248 = tail call ptr @llvm.thread.pointer() #14
  %249 = getelementptr inbounds %struct.thread_info, ptr %248, i32 0, i32 2
  %250 = load i32, ptr %249, align 8
  %251 = lshr i32 %250, 5
  %252 = getelementptr i32, ptr @__cpu_online_mask, i32 %251
  %253 = load volatile i32, ptr %252, align 4
  %254 = and i32 %250, 31
  %255 = shl nuw i32 1, %254
  %256 = and i32 %255, %253
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %247
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %259 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %244, i32 noundef 51008, i32 noundef %241) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %260

260:                                              ; preds = %258, %247, %240, %215
  store i16 512, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @dwc3_gadget_ep0_desc, i32 0, i32 4), align 1
  %261 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 17
  %262 = load ptr, ptr %261, align 4
  %263 = tail call fastcc i32 @__dwc3_gadget_ep_enable(ptr noundef %262, i32 noundef 0)
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %267 = load ptr, ptr %266, align 4
  %268 = getelementptr inbounds %struct.dwc3_ep, ptr %262, i32 0, i32 17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %267, ptr noundef nonnull @.str.26, ptr noundef %268) #15
  br label %316

269:                                              ; preds = %260
  %270 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 1
  %271 = load ptr, ptr %270, align 4
  %272 = tail call fastcc i32 @__dwc3_gadget_ep_enable(ptr noundef %271, i32 noundef 0)
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %276 = load ptr, ptr %275, align 4
  %277 = getelementptr inbounds %struct.dwc3_ep, ptr %271, i32 0, i32 17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %276, ptr noundef nonnull @.str.26, ptr noundef %277) #15
  %278 = load ptr, ptr %261, align 4
  tail call fastcc void @__dwc3_gadget_ep_disable(ptr noundef %278)
  br label %316

279:                                              ; preds = %269
  %280 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 58
  store i32 1, ptr %280, align 4
  %281 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 59
  store i32 4, ptr %281, align 4
  %282 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %283 = load i48, ptr %282, align 4
  %284 = and i48 %283, -5
  store i48 %284, ptr %282, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %0) #14
  %285 = load i32, ptr %89, align 4
  %286 = icmp eq i32 %285, 21811
  br i1 %286, label %287, label %293

287:                                              ; preds = %279
  %288 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %289 = load i32, ptr %288, align 4
  %290 = icmp ult i32 %289, 1429415178
  %291 = select i1 %290, i32 3615, i32 3607
  %292 = icmp ult i32 %289, 1429414666
  br i1 %292, label %296, label %293

293:                                              ; preds = %287, %279
  %294 = phi i32 [ %291, %287 ], [ 3607, %279 ]
  %295 = or i32 %294, 64
  br label %296

296:                                              ; preds = %293, %287
  %297 = phi i32 [ %291, %287 ], [ %295, %293 ]
  %298 = load ptr, ptr %68, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %299 = getelementptr i8, ptr %298, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %299, i32 %297) #14, !srcloc !13
  %300 = getelementptr i8, ptr %298, i32 -49408
  %301 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %316

303:                                              ; preds = %296
  %304 = tail call ptr @llvm.thread.pointer() #14
  %305 = getelementptr inbounds %struct.thread_info, ptr %304, i32 0, i32 2
  %306 = load i32, ptr %305, align 8
  %307 = lshr i32 %306, 5
  %308 = getelementptr i32, ptr @__cpu_online_mask, i32 %307
  %309 = load volatile i32, ptr %308, align 4
  %310 = and i32 %306, 31
  %311 = shl nuw i32 1, %310
  %312 = and i32 %311, %309
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %316, label %314

314:                                              ; preds = %303
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %315 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %300, i32 noundef 50952, i32 noundef %297) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %316

316:                                              ; preds = %314, %303, %296, %274, %265
  %317 = phi i32 [ %263, %265 ], [ %272, %274 ], [ 0, %296 ], [ 0, %303 ], [ 0, %314 ]
  ret i32 %317
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_gadget_process_pending_events(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %3 = load i48, ptr %2, align 4
  %4 = and i48 %3, 1024
  %5 = icmp eq i48 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 43
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @dwc3_interrupt(i32 noundef %8, ptr noundef %10)
  %12 = load i48, ptr %2, align 4
  %13 = and i48 %12, -1025
  store i48 %13, ptr %2, align 4
  %14 = load i32, ptr %7, align 4
  tail call void @enable_irq(i32 noundef %14) #14
  br label %15

15:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_interrupt(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 15
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 7
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 5) #14
  %17 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 43
  %18 = load i32, ptr %17, align 4
  tail call void @disable_irq_nosync(i32 noundef %18) #14
  %19 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 79
  %20 = load i48, ptr %19, align 4
  %21 = or i48 %20, 1024
  store i48 %21, ptr %19, align 4
  br label %112

22:                                               ; preds = %10, %2
  %23 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %112

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 30
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 780
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %32 = getelementptr i8, ptr %29, i32 -49408
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = tail call ptr @llvm.thread.pointer() #14
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %47 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %32, i32 noundef 50188, i32 noundef %31) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %48

48:                                               ; preds = %46, %35, %27
  %49 = and i32 %31, 65532
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %112, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 4
  store i32 %49, ptr %52, align 4
  %53 = load i32, ptr %23, align 4
  %54 = or i32 %53, 1
  store i32 %54, ptr %23, align 4
  %55 = load ptr, ptr %28, align 4
  %56 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 65535
  %59 = or i32 %58, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %60 = getelementptr i8, ptr %55, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %59) #14, !srcloc !13
  %61 = getelementptr i8, ptr %55, i32 -49408
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %51
  %65 = tail call ptr @llvm.thread.pointer() #14
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 5
  %69 = getelementptr i32, ptr @__cpu_online_mask, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %67, 31
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %64
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %76 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %61, i32 noundef 50184, i32 noundef %59) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %77

77:                                               ; preds = %75, %64, %51
  %78 = load i32, ptr %56, align 4
  %79 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = sub i32 %78, %80
  %82 = tail call i32 @llvm.umin.i32(i32 %49, i32 %81) #14
  %83 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 %80
  %86 = load ptr, ptr %1, align 4
  %87 = getelementptr i8, ptr %86, i32 %80
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %85, ptr align 1 %87, i32 %82, i1 false) #14
  %88 = icmp ugt i32 %49, %81
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = load ptr, ptr %83, align 4
  %91 = load ptr, ptr %1, align 4
  %92 = sub nsw i32 %49, %82
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %90, ptr align 1 %91, i32 %92, i1 false) #14
  br label %93

93:                                               ; preds = %89, %77
  %94 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %95 = getelementptr i8, ptr %94, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %49) #14, !srcloc !13
  %96 = getelementptr i8, ptr %94, i32 -49408
  %97 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = tail call ptr @llvm.thread.pointer() #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %111 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %96, i32 noundef 50188, i32 noundef %49) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %112

112:                                              ; preds = %110, %99, %93, %48, %22, %15
  %113 = phi i32 [ 1, %15 ], [ 1, %22 ], [ 0, %48 ], [ 2, %93 ], [ 2, %99 ], [ 2, %110 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_gadget_giveback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_gadget_generic_cmd(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_gadget_ep_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_prepare_trbs_sg(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 4
  %17 = load i16, ptr %16, align 1
  %18 = and i16 %17, 2047
  %19 = zext i16 %18 to i32
  %20 = urem i32 %6, %19
  %21 = icmp eq i32 %6, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 262144
  %26 = icmp eq i32 %25, 0
  %27 = icmp ne i32 %20, 0
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 3
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %29, %22, %2
  %35 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 13
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 2
  %38 = icmp eq i8 %37, 0
  %39 = icmp ne i32 %20, 0
  %40 = select i1 %38, i1 %39, i1 false
  br label %41

41:                                               ; preds = %34, %29
  %42 = phi i1 [ true, %29 ], [ %40, %34 ]
  %43 = icmp eq i32 %10, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  br label %56

47:                                               ; preds = %56, %41
  %48 = phi i32 [ %6, %41 ], [ %62, %56 ]
  %49 = icmp eq i32 %8, %10
  br i1 %49, label %134, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 10
  %52 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 11
  %53 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 3
  %54 = add i32 %11, -1
  %55 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 5
  br label %67

56:                                               ; preds = %56, %44
  %57 = phi ptr [ %64, %56 ], [ %46, %44 ]
  %58 = phi i32 [ %63, %56 ], [ 0, %44 ]
  %59 = phi i32 [ %62, %56 ], [ %6, %44 ]
  %60 = getelementptr inbounds %struct.scatterlist, ptr %57, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 %59, %61
  %63 = add nuw i32 %58, 1
  %64 = tail call ptr @sg_next(ptr noundef %57) #14
  %65 = load i32, ptr %9, align 4
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %56, label %47

67:                                               ; preds = %130, %50
  %68 = phi ptr [ %4, %50 ], [ %132, %130 ]
  %69 = phi i32 [ 0, %50 ], [ %131, %130 ]
  %70 = phi i32 [ %48, %50 ], [ %121, %130 ]
  %71 = load i8, ptr %51, align 4
  %72 = load i8, ptr %52, align 1
  %73 = icmp eq i8 %72, %71
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load volatile ptr, ptr %53, align 4
  %76 = icmp eq ptr %75, %53
  br i1 %76, label %91, label %134

77:                                               ; preds = %67
  %78 = sub i8 %72, %71
  %79 = icmp ult i8 %72, %71
  %80 = sext i1 %79 to i8
  %81 = add i8 %78, %80
  %82 = getelementptr inbounds %struct.scatterlist, ptr %68, i32 0, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = tail call i32 @llvm.umin.i32(i32 %70, i32 %83)
  %85 = sub i32 %70, %84
  %86 = icmp eq i8 %81, 0
  br i1 %86, label %134, label %87

87:                                               ; preds = %77
  %88 = icmp ne i32 %69, %54
  %89 = icmp ne i32 %85, 0
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %104, label %99

91:                                               ; preds = %74
  %92 = getelementptr inbounds %struct.scatterlist, ptr %68, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = tail call i32 @llvm.umin.i32(i32 %70, i32 %93)
  %95 = sub i32 %70, %94
  %96 = icmp ne i32 %69, %54
  %97 = icmp ne i32 %95, 0
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %115, label %99

99:                                               ; preds = %91, %87
  %100 = phi i32 [ %94, %91 ], [ %84, %87 ]
  %101 = phi i32 [ %95, %91 ], [ %85, %87 ]
  %102 = tail call fastcc i32 @dwc3_prepare_last_sg(ptr noundef %0, ptr noundef %1, i32 noundef %100, i32 noundef %69)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %134, label %120

104:                                              ; preds = %87
  %105 = icmp eq i8 %81, 1
  br i1 %105, label %114, label %106

106:                                              ; preds = %104
  %107 = icmp ult i8 %81, 3
  %108 = select i1 %42, i1 %107, i1 false
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = tail call ptr @sg_next(ptr noundef %68) #14
  %111 = getelementptr inbounds %struct.scatterlist, ptr %110, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = icmp ult i32 %112, %85
  br i1 %113, label %115, label %114

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %109, %106, %91
  %116 = phi i32 [ %85, %114 ], [ %85, %109 ], [ %85, %106 ], [ %95, %91 ]
  %117 = phi i32 [ %84, %114 ], [ %84, %109 ], [ %84, %106 ], [ %94, %91 ]
  %118 = phi i1 [ true, %114 ], [ false, %109 ], [ false, %106 ], [ false, %91 ]
  tail call fastcc void @dwc3_prepare_one_trb(ptr noundef %0, ptr noundef %1, i32 noundef %117, i32 noundef 1, i32 noundef %69, i1 noundef zeroext false, i1 noundef zeroext %118)
  %119 = tail call ptr @sg_next(ptr noundef %68) #14
  store ptr %119, ptr %3, align 4
  br label %120

120:                                              ; preds = %115, %99
  %121 = phi i32 [ %116, %115 ], [ %101, %99 ]
  %122 = phi i1 [ %118, %115 ], [ false, %99 ]
  %123 = load i32, ptr %9, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %9, align 4
  %125 = load i32, ptr %55, align 4
  %126 = add i32 %125, -1
  store i32 %126, ptr %55, align 4
  %127 = icmp eq i32 %121, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 0, ptr %55, align 4
  br label %134

129:                                              ; preds = %120
  br i1 %122, label %134, label %130

130:                                              ; preds = %129
  %131 = add nuw i32 %69, 1
  %132 = tail call ptr @sg_next(ptr noundef %68) #14
  %133 = icmp eq i32 %131, %11
  br i1 %133, label %134, label %67

134:                                              ; preds = %130, %129, %128, %99, %77, %74, %47
  %135 = load i32, ptr %12, align 4
  %136 = sub i32 %135, %13
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_prepare_last_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 4
  %8 = load i16, ptr %7, align 1
  %9 = and i16 %8, 2047
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = urem i32 %12, %10
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 262144
  %19 = icmp eq i32 %18, 0
  %20 = icmp ne i32 %13, 0
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 3
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %34, label %33

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 13
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i1 %20, i1 false
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %22
  br label %34

34:                                               ; preds = %33, %27, %22, %4
  %35 = phi i1 [ true, %33 ], [ false, %27 ], [ false, %4 ], [ false, %22 ]
  %36 = phi i32 [ 2, %33 ], [ 1, %27 ], [ 1, %4 ], [ 1, %22 ]
  %37 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 10
  %38 = load i8, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 11
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, %38
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 3
  %44 = load volatile ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  %46 = select i1 %45, i32 255, i32 0
  br label %53

47:                                               ; preds = %34
  %48 = sub i8 %40, %38
  %49 = icmp ult i8 %40, %38
  %50 = sext i1 %49 to i8
  %51 = add i8 %48, %50
  %52 = zext i8 %51 to i32
  br label %53

53:                                               ; preds = %47, %42
  %54 = phi i32 [ %52, %47 ], [ %46, %42 ]
  %55 = icmp ult i32 %54, %36
  br i1 %55, label %85, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 13
  %58 = zext i1 %35 to i8
  %59 = load i8, ptr %57, align 4
  %60 = and i8 %59, -2
  %61 = or i8 %60, %58
  store i8 %61, ptr %57, align 4
  %62 = and i8 %59, 2
  %63 = icmp ne i8 %62, 0
  %64 = xor i1 %14, true
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = zext i1 %35 to i32
  tail call fastcc void @dwc3_prepare_one_trb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %67, i32 noundef %3, i1 noundef zeroext false, i1 noundef zeroext false)
  %68 = load i8, ptr %57, align 4
  br label %69

69:                                               ; preds = %66, %56
  %70 = phi i8 [ %61, %56 ], [ %68, %66 ]
  %71 = and i8 %70, 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, ptr %11, align 4
  %75 = icmp ne i32 %74, 0
  %76 = and i8 %70, 1
  %77 = icmp eq i8 %76, 0
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %85, label %82

79:                                               ; preds = %69
  %80 = and i8 %70, 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79, %73
  %83 = sub nsw i32 %10, %13
  %84 = select i1 %72, i32 %83, i32 0
  tail call fastcc void @dwc3_prepare_one_trb(ptr noundef %0, ptr noundef %1, i32 noundef %84, i32 noundef 0, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %85

85:                                               ; preds = %82, %79, %73, %53
  %86 = phi i32 [ 0, %53 ], [ %36, %82 ], [ %36, %79 ], [ %36, %73 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_prepare_one_trb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  br i1 %5, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dwc3, ptr %12, i32 0, i32 6
  br label %24

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 3
  br label %24

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  br label %24

24:                                               ; preds = %22, %18, %10
  %25 = phi ptr [ %13, %10 ], [ %21, %18 ], [ %23, %22 ]
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 10
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = getelementptr %struct.dwc3_trb, ptr %28, i32 %31
  %33 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 8
  store i32 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 1
  %41 = getelementptr inbounds %struct.dwc3_ep, ptr %38, i32 0, i32 3
  %42 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 1, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %40, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  %46 = getelementptr inbounds %struct.dwc3_ep, ptr %38, i32 0, i32 3, i32 1
  %47 = load ptr, ptr %46, align 4
  store ptr %40, ptr %46, align 4
  store ptr %41, ptr %40, align 4
  store ptr %47, ptr %42, align 4
  store volatile ptr %40, ptr %47, align 4
  store ptr %32, ptr %33, align 4
  %48 = load ptr, ptr %27, align 4
  %49 = ptrtoint ptr %32 to i32
  %50 = ptrtoint ptr %48 to i32
  %51 = sub i32 %49, %50
  %52 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %51, %53
  %55 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 11
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %36, %24
  %57 = lshr i32 %9, 17
  %58 = and i32 %57, 1
  %59 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 12
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  %62 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.dwc3, ptr %63, i32 0, i32 18
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.usb_gadget, ptr %65, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %2, 16777215
  %69 = getelementptr %struct.dwc3_trb, ptr %28, i32 %31, i32 2
  store i32 %68, ptr %69, align 1
  store i32 %26, ptr %32, align 1
  %70 = getelementptr %struct.dwc3_trb, ptr %28, i32 %31, i32 1
  store i32 0, ptr %70, align 1
  %71 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %72, i32 0, i32 3
  %74 = load i8, ptr %73, align 1
  %75 = and i8 %74, 3
  %76 = zext i8 %75 to i32
  switch i32 %76, label %98 [
    i32 0, label %99
    i32 1, label %77
    i32 2, label %97
    i32 3, label %97
  ]

77:                                               ; preds = %56
  %78 = icmp eq i32 %4, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %77
  %80 = getelementptr %struct.dwc3_trb, ptr %28, i32 %31, i32 3
  store i32 96, ptr %80, align 1
  %81 = icmp eq i32 %67, 3
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load ptr, ptr %71, align 4
  %84 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %83, i32 0, i32 4
  %85 = load i16, ptr %84, align 1
  %86 = and i16 %85, 2047
  %87 = zext i16 %86 to i32
  %88 = shl nuw nsw i32 %87, 1
  %89 = icmp ult i32 %88, %2
  %90 = select i1 %89, i32 2, i32 1
  %91 = icmp uge i32 %87, %2
  %92 = sext i1 %91 to i32
  %93 = add nsw i32 %90, %92
  %94 = shl nuw nsw i32 %93, 24
  %95 = and i32 %94, 50331648
  %96 = or i32 %95, %68
  store i32 %96, ptr %69, align 1
  br label %99

97:                                               ; preds = %56, %56
  br label %99

98:                                               ; preds = %56
  unreachable

99:                                               ; preds = %97, %82, %79, %77, %56
  %100 = phi i32 [ 16, %97 ], [ 32, %56 ], [ 1120, %79 ], [ 1120, %82 ], [ 1136, %77 ]
  %101 = getelementptr %struct.dwc3_trb, ptr %28, i32 %31, i32 3
  store i32 %100, ptr %101, align 1
  %102 = load ptr, ptr %71, align 4
  %103 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %102, i32 0, i32 2
  %104 = load i8, ptr %103, align 1
  %105 = icmp slt i8 %104, 0
  br i1 %105, label %119, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %108 = load i8, ptr %107, align 4
  %109 = and i8 %108, 2
  %110 = icmp eq i8 %109, 0
  %111 = or i32 %100, 8
  %112 = select i1 %110, i32 %111, i32 %100
  %113 = and i32 %9, 524288
  %114 = icmp ne i32 %113, 0
  %115 = lshr exact i32 %113, 9
  %116 = or i32 %112, %115
  %117 = or i1 %114, %110
  br i1 %117, label %118, label %119

118:                                              ; preds = %106
  store i32 %116, ptr %101, align 1
  br label %119

119:                                              ; preds = %118, %106, %99
  %120 = phi i32 [ %100, %99 ], [ %116, %106 ], [ %116, %118 ]
  %121 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %122 = load i8, ptr %121, align 4
  %123 = and i8 %122, 2
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.dwc3, ptr %63, i32 0, i32 66, i32 9
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 2
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = or i32 %120, 8
  store i32 %131, ptr %101, align 1
  br label %132

132:                                              ; preds = %130, %125, %119
  %133 = phi i32 [ %131, %130 ], [ %120, %125 ], [ %120, %119 ]
  %134 = icmp eq i32 %3, 0
  %135 = or i32 %58, %3
  %136 = icmp eq i32 %135, 0
  %137 = or i1 %136, %6
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = or i32 %133, 2048
  store i32 %139, ptr %101, align 1
  br label %140

140:                                              ; preds = %138, %132
  %141 = phi i32 [ %133, %132 ], [ %139, %138 ]
  br i1 %134, label %142, label %154

142:                                              ; preds = %140
  %143 = load i8, ptr %121, align 4
  %144 = and i8 %143, 2
  %145 = icmp ne i8 %144, 0
  %146 = and i32 %9, 65536
  %147 = icmp ne i32 %146, 0
  %148 = and i1 %147, %145
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.dwc3, ptr %63, i32 0, i32 66, i32 9
  %151 = load i32, ptr %150, align 4
  %152 = and i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149, %140
  %155 = phi i32 [ 4, %140 ], [ 2, %149 ]
  %156 = or i32 %141, %155
  store i32 %156, ptr %101, align 1
  br label %157

157:                                              ; preds = %154, %149, %142
  %158 = phi i32 [ %141, %142 ], [ %141, %149 ], [ %156, %154 ]
  %159 = load ptr, ptr %71, align 4
  %160 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %159, i32 0, i32 3
  %161 = load i8, ptr %160, align 1
  %162 = and i8 %161, 3
  %163 = icmp eq i8 %162, 2
  br i1 %163, label %164, label %172

164:                                              ; preds = %157
  %165 = load i8, ptr %121, align 4
  %166 = and i8 %165, 2
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = shl i32 %9, 14
  %170 = and i32 %169, 1073725440
  %171 = or i32 %158, %170
  store i32 %171, ptr %101, align 1
  br label %172

172:                                              ; preds = %168, %164, %157
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !31
  tail call void @arm_heavy_mb() #14
  %173 = load i32, ptr %101, align 1
  %174 = or i32 %173, 1
  store i32 %174, ptr %101, align 1
  %175 = load i8, ptr %29, align 1
  %176 = add i8 %175, 1
  %177 = icmp eq i8 %176, -1
  %178 = select i1 %177, i8 0, i8 %176
  store i8 %178, ptr %29, align 1
  %179 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 1), align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %172
  %182 = tail call ptr @llvm.thread.pointer() #14
  %183 = getelementptr inbounds %struct.thread_info, ptr %182, i32 0, i32 2
  %184 = load i32, ptr %183, align 8
  %185 = lshr i32 %184, 5
  %186 = getelementptr i32, ptr @__cpu_online_mask, i32 %185
  %187 = load volatile i32, ptr %186, align 4
  %188 = and i32 %184, 31
  %189 = shl nuw i32 1, %188
  %190 = and i32 %189, %187
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %181
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !32
  %193 = tail call i32 @__traceiter_dwc3_prepare_trb(ptr noundef null, ptr noundef %0, ptr noundef %32) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !33
  br label %194

194:                                              ; preds = %192, %181, %172
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_prepare_trb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_get_frame(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1548
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %8 = getelementptr i8, ptr %5, i32 -49408
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = tail call ptr @llvm.thread.pointer() #14
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %23 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %8, i32 noundef 50956, i32 noundef %7) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %24

24:                                               ; preds = %22, %11, %1
  %25 = lshr i32 %7, 3
  %26 = and i32 %25, 16383
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_wakeup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 10
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = tail call fastcc i32 @__dwc3_gadget_wakeup(ptr noundef %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_set_selfpowered(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = select i1 %7, i32 0, i32 8192
  %11 = and i32 %9, -8193
  %12 = or i32 %11, %10
  store i32 %12, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_vbus_draw(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %union.power_supply_propval, align 4
  %4 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 7
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %6 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  tail call void @usb_phy_set_charger_current(ptr noundef nonnull %7, i32 noundef %1) #14
  %10 = getelementptr inbounds %struct.usb_phy, ptr %7, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef nonnull %7, i32 noundef %1) #14
  br label %22

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 40
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = mul i32 %1, 1000
  store i32 %20, ptr %3, align 4
  %21 = call i32 @power_supply_set_property(ptr noundef nonnull %17, i32 noundef 38, ptr noundef nonnull %3) #14
  br label %22

22:                                               ; preds = %19, %15, %13, %9
  %23 = phi i32 [ %21, %19 ], [ -95, %15 ], [ %14, %13 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_pullup(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ne i32 %1, 0
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 79
  %8 = load i48, ptr %7, align 4
  %9 = select i1 %5, i48 2, i48 0
  %10 = and i48 %8, -3
  %11 = or i48 %10, %9
  store i48 %11, ptr %7, align 4
  br i1 %5, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  br label %39

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 58
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 9
  store i32 0, ptr %20, align 4
  %21 = tail call i32 @wait_for_completion_timeout(ptr noundef %20, i32 noundef 50) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 12
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.19) #15
  br label %26

26:                                               ; preds = %23, %19, %15
  %27 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @pm_runtime_barrier(ptr noundef %28) #14
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 11, i32 18
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 11, i32 15
  %36 = load i16, ptr %35, align 8
  %37 = and i16 %36, 7
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %129, label %39

39:                                               ; preds = %34, %26, %12
  %40 = phi ptr [ %14, %12 ], [ %30, %26 ], [ %30, %34 ]
  %41 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 12
  %42 = tail call i32 @__pm_runtime_resume(ptr noundef %40, i32 noundef 4) #14
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %125, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 43
  %46 = load i32, ptr %45, align 4
  tail call void @disable_irq(i32 noundef %46) #14
  %47 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 10
  %48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %47) #14
  br i1 %5, label %120, label %49

49:                                               ; preds = %44
  %50 = load i48, ptr %7, align 4
  %51 = and i48 %50, -2
  store i48 %51, ptr %7, align 4
  %52 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 65
  %53 = load i8, ptr %52, align 1
  %54 = icmp ugt i8 %53, 2
  br i1 %54, label %55, label %68

55:                                               ; preds = %63, %49
  %56 = phi i8 [ %64, %63 ], [ %53, %49 ]
  %57 = phi i32 [ %65, %63 ], [ 2, %49 ]
  %58 = getelementptr %struct.dwc3, ptr %4, i32 0, i32 17, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  tail call fastcc void @dwc3_remove_requests(ptr noundef nonnull %59) #14
  %62 = load i8, ptr %52, align 1
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi i8 [ %56, %55 ], [ %62, %61 ]
  %65 = add nuw nsw i32 %57, 1
  %66 = zext i8 %64 to i32
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %55, label %68

68:                                               ; preds = %63, %49
  tail call fastcc void @__dwc3_gadget_stop(ptr noundef %4)
  %69 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 30
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 780
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %73 = getelementptr i8, ptr %70, i32 -49408
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %68
  %77 = tail call ptr @llvm.thread.pointer() #14
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %76
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %88 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %73, i32 noundef 50188, i32 noundef %72) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %89

89:                                               ; preds = %87, %76, %68
  %90 = and i32 %72, 65532
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %122, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %69, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %94 = getelementptr i8, ptr %93, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %90) #14, !srcloc !13
  %95 = getelementptr i8, ptr %93, i32 -49408
  %96 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %92
  %99 = tail call ptr @llvm.thread.pointer() #14
  %100 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %100, align 8
  %102 = lshr i32 %101, 5
  %103 = getelementptr i32, ptr @__cpu_online_mask, i32 %102
  %104 = load volatile i32, ptr %103, align 4
  %105 = and i32 %101, 31
  %106 = shl nuw i32 1, %105
  %107 = and i32 %106, %104
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %98
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %110 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %95, i32 noundef 50188, i32 noundef %90) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %111

111:                                              ; preds = %109, %98, %92
  %112 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 16
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %113, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, %90
  %117 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %113, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = urem i32 %116, %118
  store i32 %119, ptr %114, align 4
  br label %122

120:                                              ; preds = %44
  %121 = tail call fastcc i32 @__dwc3_gadget_start(ptr noundef %4)
  br label %122

122:                                              ; preds = %120, %111, %89
  %123 = tail call fastcc i32 @dwc3_gadget_run_stop(ptr noundef %4, i32 noundef %6)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %48) #14
  %124 = load i32, ptr %45, align 4
  tail call void @enable_irq(i32 noundef %124) #14
  br label %125

125:                                              ; preds = %122, %39
  %126 = phi i32 [ %123, %122 ], [ 0, %39 ]
  %127 = load ptr, ptr %41, align 4
  %128 = tail call i32 @__pm_runtime_idle(ptr noundef %127, i32 noundef 5) #14
  br label %129

129:                                              ; preds = %125, %34
  %130 = phi i32 [ 0, %34 ], [ %126, %125 ]
  ret i32 %130
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @dwc3_gadget_config_params(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_dcd_config_params, ptr %1, i32 0, i32 2
  store i8 -1, ptr %5, align 2
  %6 = getelementptr inbounds %struct.usb_dcd_config_params, ptr %1, i32 0, i32 3
  store i8 -1, ptr %6, align 1
  %7 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 79
  %8 = load i48, ptr %7, align 4
  %9 = and i48 %8, 536870912
  %10 = icmp eq i48 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  store i8 1, ptr %5, align 2
  %12 = load i48, ptr %7, align 4
  %13 = and i48 %12, 256
  %14 = icmp eq i48 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 72
  %17 = load i8, ptr %16, align 1
  %18 = tail call i8 @llvm.umax.i8(i8 %17, i8 2)
  %19 = tail call i8 @llvm.umin.i8(i8 %18, i8 15)
  store i8 %19, ptr %6, align 1
  %20 = load i48, ptr %7, align 4
  br label %21

21:                                               ; preds = %15, %11, %2
  %22 = phi i48 [ %12, %11 ], [ %20, %15 ], [ %8, %2 ]
  %23 = and i48 %22, 1073741824
  %24 = icmp eq i48 %23, 0
  %25 = select i1 %24, i8 10, i8 0
  store i8 %25, ptr %1, align 2
  %26 = load i48, ptr %7, align 4
  %27 = and i48 %26, 2147483648
  %28 = icmp eq i48 %27, 0
  %29 = select i1 %28, i16 511, i16 0
  %30 = getelementptr inbounds %struct.usb_dcd_config_params, ptr %1, i32 0, i32 1
  store i16 %29, ptr %30, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_start(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 43
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @request_threaded_irq(i32 noundef %6, ptr noundef nonnull @dwc3_interrupt, ptr noundef nonnull @dwc3_thread_interrupt, i32 noundef 128, ptr noundef nonnull @.str.20, ptr noundef %8) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.21, i32 noundef %6, i32 noundef %9) #15
  br label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 10
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #14
  %17 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 19
  store ptr %1, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #14
  br label %18

18:                                               ; preds = %14, %11
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_stop(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 10
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 19
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 81
  store i32 0, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  %8 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 43
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %11) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc3_gadget_async_callbacks(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 79
  %8 = load i48, ptr %7, align 4
  %9 = select i1 %1, i48 4398046511104, i48 0
  %10 = and i48 %8, -4398046511105
  %11 = or i48 %10, %9
  store i48 %11, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_check_config(ptr noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 79
  %5 = load i48, ptr %4, align 4
  %6 = and i48 %5, 2048
  %7 = icmp eq i48 %6, 0
  br i1 %7, label %69, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %28, label %12

12:                                               ; preds = %24, %8
  %13 = phi ptr [ %26, %24 ], [ %10, %8 ]
  %14 = phi i32 [ %25, %24 ], [ 0, %8 ]
  %15 = getelementptr i8, ptr %13, i32 12
  %16 = load i8, ptr %15, align 4, !range !34
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %13, i32 21
  %20 = load i8, ptr %19, align 1
  %21 = lshr i8 %20, 7
  %22 = zext i8 %21 to i32
  %23 = add i32 %14, %22
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i32 [ %14, %12 ], [ %23, %18 ]
  %26 = load ptr, ptr %13, align 4
  %27 = icmp eq ptr %26, %9
  br i1 %27, label %28, label %12

28:                                               ; preds = %24, %8
  %29 = phi i32 [ 0, %8 ], [ %25, %24 ]
  %30 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 81
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %28
  store i32 %29, ptr %30, align 4
  %34 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 66
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 54
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 13106
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 66, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 768
  %45 = or i32 %44, %37
  %46 = lshr i32 %45, 3
  br label %54

47:                                               ; preds = %33
  %48 = lshr i32 %37, 3
  %49 = icmp eq i32 %39, 21811
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 55
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %52, 1429416202
  br i1 %53, label %57, label %54

54:                                               ; preds = %50, %47, %41
  %55 = phi i32 [ %46, %41 ], [ %48, %50 ], [ %48, %47 ]
  %56 = add nuw nsw i32 %55, 1024
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i32 [ %55, %54 ], [ %48, %50 ]
  %59 = phi i32 [ %56, %54 ], [ 1024, %50 ]
  %60 = udiv i32 %59, %58
  %61 = mul i32 %60, %29
  %62 = add i32 %29, 1
  %63 = add i32 %62, %61
  %64 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 66, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 65535
  %67 = icmp sgt i32 %63, %66
  %68 = select i1 %67, i32 -12, i32 0
  br label %69

69:                                               ; preds = %57, %28, %1
  %70 = phi i32 [ 0, %1 ], [ 0, %28 ], [ %68, %57 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_set_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_charger_current(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_barrier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_remove_requests(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #14
  %3 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 14
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, 2056
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #14
  %13 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %2) #14
  %14 = icmp ne i32 %13, 0
  %15 = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !25

18:                                               ; preds = %7
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #14
  br label %19

19:                                               ; preds = %18, %7
  store i8 0, ptr %8, align 4
  %20 = load i32, ptr %3, align 4
  %21 = and i32 %20, -9
  store i32 %21, ptr %3, align 4
  br label %22

22:                                               ; preds = %19, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #14
  %23 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 3
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %26, label %30

26:                                               ; preds = %30, %22
  %27 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 2
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %37, label %41

30:                                               ; preds = %30, %22
  %31 = load volatile ptr, ptr %23, align 4
  %32 = icmp eq ptr %31, %23
  %33 = getelementptr i8, ptr %31, i32 -56
  %34 = select i1 %32, ptr null, ptr %33
  call void @dwc3_gadget_giveback(ptr noundef %0, ptr noundef %34, i32 noundef -108)
  %35 = load volatile ptr, ptr %23, align 4
  %36 = icmp eq ptr %35, %23
  br i1 %36, label %26, label %30

37:                                               ; preds = %41, %26
  %38 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 1
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %55, label %48

41:                                               ; preds = %41, %26
  %42 = load volatile ptr, ptr %27, align 4
  %43 = icmp eq ptr %42, %27
  %44 = getelementptr i8, ptr %42, i32 -56
  %45 = select i1 %43, ptr null, ptr %44
  call void @dwc3_gadget_giveback(ptr noundef %0, ptr noundef %45, i32 noundef -108)
  %46 = load volatile ptr, ptr %27, align 4
  %47 = icmp eq ptr %46, %27
  br i1 %47, label %37, label %41

48:                                               ; preds = %48, %37
  %49 = load volatile ptr, ptr %38, align 4
  %50 = icmp eq ptr %49, %38
  %51 = getelementptr i8, ptr %49, i32 -56
  %52 = select i1 %50, ptr null, ptr %51
  call void @dwc3_gadget_giveback(ptr noundef %0, ptr noundef %52, i32 noundef -108)
  %53 = load volatile ptr, ptr %38, align 4
  %54 = icmp eq ptr %53, %38
  br i1 %54, label %55, label %48

55:                                               ; preds = %48, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_thread_interrupt(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %4 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %5 = alloca %union.dwc3_event, align 4
  %6 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @llvm.thread.pointer() #14
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = add i32 %10, 512
  store volatile i32 %11, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  %12 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 10
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #14
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %876, label %21

21:                                               ; preds = %2
  %22 = icmp sgt i32 %16, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  br label %811

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 1
  %28 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 3
  %29 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 12
  %30 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 54
  %31 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 55
  %32 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 18
  %33 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 59
  %34 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 79
  %35 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 19
  %36 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 10
  %37 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 66, i32 1
  %38 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 64
  %39 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 30
  %40 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 49
  %41 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 17
  %42 = getelementptr %struct.dwc3, ptr %14, i32 0, i32 17, i32 1
  %43 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 72
  %44 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 71
  %45 = getelementptr inbounds %struct.dwc3_event_buffer, ptr %1, i32 0, i32 2
  %46 = load i32, ptr %28, align 4
  %47 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  br label %48

48:                                               ; preds = %802, %26
  %49 = phi i32 [ %46, %26 ], [ %806, %802 ]
  %50 = phi i32 [ %16, %26 ], [ %807, %802 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !28
  %51 = load ptr, ptr %27, align 4
  %52 = getelementptr i8, ptr %51, i32 %49
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %5, align 4
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_event, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load i32, ptr %47, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  %66 = call i32 @__traceiter_dwc3_event(ptr noundef null, i32 noundef %53, ptr noundef %14) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !37
  %67 = load i32, ptr %5, align 4
  br label %68

68:                                               ; preds = %65, %56, %48
  %69 = phi i32 [ %53, %48 ], [ %53, %56 ], [ %67, %65 ]
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %275

72:                                               ; preds = %68
  %73 = lshr i32 %69, 1
  %74 = and i32 %73, 31
  %75 = getelementptr %struct.dwc3, ptr %14, i32 0, i32 17, i32 %74
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.dwc3_ep, ptr %76, i32 0, i32 9
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = and i32 %78, 8
  %83 = icmp ne i32 %82, 0
  %84 = and i32 %69, 960
  %85 = icmp eq i32 %84, 448
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %802

87:                                               ; preds = %81, %72
  %88 = icmp ult i32 %74, 2
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  call void @dwc3_ep0_interrupt(ptr noundef %14, ptr noundef nonnull %5) #14
  br label %802

90:                                               ; preds = %87
  %91 = lshr i32 %69, 6
  %92 = and i32 %91, 15
  switch i32 %92, label %802 [
    i32 2, label %93
    i32 3, label %113
    i32 7, label %120
    i32 1, label %198
    i32 6, label %207
  ]

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.usb_ep, ptr %76, i32 0, i32 9
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %802, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %95, i32 0, i32 3
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, 3
  %101 = icmp eq i8 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = lshr i32 %69, 16
  %104 = getelementptr inbounds %struct.dwc3_ep, ptr %76, i32 0, i32 15
  store i32 %103, ptr %104, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = and i32 %69, 4096
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i32 0, i32 -104
  %109 = and i32 %69, 32768
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, i32 %108, i32 -18
  %112 = call fastcc zeroext i1 @dwc3_gadget_endpoint_trbs_complete(ptr noundef %76, ptr noundef nonnull %5, i32 noundef %111) #14
  br label %802

113:                                              ; preds = %90
  %114 = lshr i32 %69, 16
  %115 = getelementptr inbounds %struct.dwc3_ep, ptr %76, i32 0, i32 15
  store i32 %114, ptr %115, align 4
  %116 = and i32 %78, 16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %802

118:                                              ; preds = %113
  %119 = call fastcc i32 @__dwc3_gadget_start_isoc(ptr noundef %76) #14
  br label %802

120:                                              ; preds = %90
  %121 = and i32 %69, 251658240
  %122 = icmp eq i32 %121, 134217728
  br i1 %122, label %123, label %802

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.dwc3_ep, ptr %76, i32 0, i32 18
  %125 = load i8, ptr %124, align 4
  %126 = and i8 %125, 2
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 7
  %129 = and i32 %78, -25
  %130 = or i32 %128, %129
  store i32 %130, ptr %77, align 4
  call fastcc void @dwc3_gadget_ep_cleanup_cancelled_requests(ptr noundef %76) #14
  %131 = load i32, ptr %77, align 4
  %132 = and i32 %131, 2048
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %181, label %134

134:                                              ; preds = %123
  %135 = getelementptr inbounds %struct.dwc3_ep, ptr %76, i32 0, i32 7
  %136 = load ptr, ptr %135, align 4
  %137 = and i32 %131, -2049
  store i32 %137, ptr %77, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %138 = load i8, ptr %124, align 4
  %139 = and i8 %138, 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %156, label %141

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.dwc3, ptr %136, i32 0, i32 54
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 21811
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.dwc3, ptr %136, i32 0, i32 55
  %147 = load i32, ptr %146, align 4
  %148 = icmp ult i32 %147, 1429415434
  br i1 %148, label %156, label %149

149:                                              ; preds = %145, %141
  %150 = getelementptr inbounds %struct.dwc3, ptr %136, i32 0, i32 18
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.usb_gadget, ptr %151, i32 0, i32 5
  %153 = load i32, ptr %152, align 4
  %154 = icmp ult i32 %153, 5
  %155 = select i1 %154, i32 5, i32 2053
  br label %156

156:                                              ; preds = %149, %145, %134
  %157 = phi i32 [ 5, %145 ], [ 5, %134 ], [ %155, %149 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #14
  %158 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %76, i32 noundef %157, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %172, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.dwc3, ptr %136, i32 0, i32 17
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.dwc3, ptr %136, i32 0, i32 12
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.dwc3_ep, ptr %76, i32 0, i32 17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.6, ptr noundef %165) #15
  %166 = getelementptr inbounds %struct.dwc3, ptr %136, i32 0, i32 79
  %167 = load i48, ptr %166, align 4
  %168 = and i48 %167, 4
  %169 = icmp eq i48 %168, 0
  br i1 %169, label %802, label %170

170:                                              ; preds = %160
  %171 = call i32 @__dwc3_gadget_ep0_set_halt(ptr noundef %162, i32 noundef 1) #14
  br label %802

172:                                              ; preds = %156
  %173 = load i32, ptr %77, align 4
  %174 = and i32 %173, -7
  store i32 %174, ptr %77, align 4
  %175 = getelementptr inbounds %struct.dwc3, ptr %136, i32 0, i32 79
  %176 = load i48, ptr %175, align 4
  %177 = and i48 %176, 4
  %178 = icmp eq i48 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %172
  call void @dwc3_ep0_send_delayed_status(ptr noundef %136) #14
  %180 = load i32, ptr %77, align 4
  br label %181

181:                                              ; preds = %179, %172, %123
  %182 = phi i32 [ %174, %172 ], [ %180, %179 ], [ %131, %123 ]
  %183 = and i32 %182, 64
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %195, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.usb_ep, ptr %76, i32 0, i32 9
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %187, i32 0, i32 3
  %189 = load i8, ptr %188, align 1
  %190 = and i8 %189, 3
  %191 = icmp eq i8 %190, 1
  br i1 %191, label %195, label %192

192:                                              ; preds = %185
  %193 = call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %76) #14
  %194 = load i32, ptr %77, align 4
  br label %195

195:                                              ; preds = %192, %185, %181
  %196 = phi i32 [ %194, %192 ], [ %182, %185 ], [ %182, %181 ]
  %197 = and i32 %196, -65
  store i32 %197, ptr %77, align 4
  br label %802

198:                                              ; preds = %90
  %199 = and i32 %78, -9
  store i32 %199, ptr %77, align 4
  %200 = and i32 %69, 4096
  %201 = icmp eq i32 %200, 0
  %202 = select i1 %201, i32 0, i32 -104
  %203 = call fastcc zeroext i1 @dwc3_gadget_endpoint_trbs_complete(ptr noundef %76, ptr noundef nonnull %5, i32 noundef %202) #14
  br i1 %203, label %204, label %802

204:                                              ; preds = %198
  %205 = load i32, ptr %77, align 4
  %206 = and i32 %205, -129
  store i32 %206, ptr %77, align 4
  br label %802

207:                                              ; preds = %90
  %208 = getelementptr inbounds %struct.dwc3_ep, ptr %76, i32 0, i32 7
  %209 = load ptr, ptr %208, align 4
  %210 = and i32 %69, 61440
  %211 = icmp eq i32 %210, 4096
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = or i32 %78, 1024
  br label %272

214:                                              ; preds = %207
  %215 = lshr i32 %69, 16
  %216 = trunc i32 %215 to i16
  switch i16 %216, label %272 [
    i16 -2, label %217
    i16 0, label %227
  ]

217:                                              ; preds = %214
  %218 = and i32 %78, 512
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %272, label %220

220:                                              ; preds = %217
  %221 = and i32 %78, 1024
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = and i32 %78, -513
  br label %272

225:                                              ; preds = %220
  %226 = or i32 %78, 1024
  br label %272

227:                                              ; preds = %214
  %228 = and i32 %78, 768
  %229 = icmp eq i32 %228, 512
  br i1 %229, label %230, label %272

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.dwc3, ptr %209, i32 0, i32 66, i32 9
  %232 = load i32, ptr %231, align 4
  %233 = and i32 %232, 2
  %234 = icmp eq i32 %233, 0
  %235 = and i32 %78, 128
  %236 = icmp eq i32 %235, 0
  %237 = select i1 %234, i1 %236, i1 false
  br i1 %237, label %272, label %238

238:                                              ; preds = %230
  %239 = getelementptr inbounds %struct.dwc3, ptr %209, i32 0, i32 54
  %240 = load i32, ptr %239, align 4
  %241 = icmp eq i32 %240, 13106
  br i1 %241, label %242, label %252

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.dwc3, ptr %209, i32 0, i32 55
  %244 = load i32, ptr %243, align 4
  %245 = icmp ugt i32 %244, 825241641
  br i1 %245, label %246, label %252

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.dwc3_ep, ptr %76, i32 0, i32 12
  %248 = load i8, ptr %247, align 2
  %249 = zext i8 %248 to i32
  %250 = call i32 @dwc3_send_gadget_generic_command(ptr noundef %209, i32 noundef 13, i32 noundef %249) #14
  %251 = load i32, ptr %77, align 4
  br label %272

252:                                              ; preds = %242, %238
  %253 = or i32 %78, 64
  store i32 %253, ptr %77, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %254 = and i32 %78, 24
  %255 = icmp eq i32 %254, 8
  br i1 %255, label %256, label %271

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.dwc3_ep, ptr %76, i32 0, i32 14
  %258 = load i8, ptr %257, align 4
  %259 = zext i8 %258 to i32
  %260 = shl nuw nsw i32 %259, 16
  %261 = or i32 %260, 2312
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #14
  %262 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %76, i32 noundef %261, ptr noundef nonnull %3) #14
  %263 = icmp ne i32 %262, 0
  %264 = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  %265 = xor i1 %264, true
  %266 = select i1 %263, i1 %265, i1 false
  br i1 %266, label %267, label %268, !prof !25

267:                                              ; preds = %256
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #14
  br label %268

268:                                              ; preds = %267, %256
  store i8 0, ptr %257, align 4
  %269 = load i32, ptr %77, align 4
  %270 = or i32 %269, 16
  store i32 %270, ptr %77, align 4
  br label %271

271:                                              ; preds = %268, %252
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  br label %802

272:                                              ; preds = %246, %230, %227, %225, %223, %217, %214, %212
  %273 = phi i32 [ %251, %246 ], [ %78, %230 ], [ %78, %227 ], [ %226, %225 ], [ %224, %223 ], [ %78, %217 ], [ %78, %214 ], [ %213, %212 ]
  %274 = and i32 %273, -257
  store i32 %274, ptr %77, align 4
  br label %802

275:                                              ; preds = %68
  %276 = and i32 %69, 254
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %800

278:                                              ; preds = %275
  %279 = lshr i32 %69, 8
  %280 = and i32 %279, 15
  switch i32 %280, label %786 [
    i32 0, label %281
    i32 1, label %282
    i32 2, label %283
    i32 4, label %598
    i32 5, label %614
    i32 3, label %632
    i32 6, label %751
    i32 7, label %802
    i32 9, label %802
    i32 10, label %802
    i32 11, label %802
  ]

281:                                              ; preds = %278
  call fastcc void @dwc3_gadget_disconnect_interrupt(ptr noundef %14) #14
  br label %802

282:                                              ; preds = %278
  call fastcc void @dwc3_gadget_reset_interrupt(ptr noundef %14) #14
  br label %802

283:                                              ; preds = %278
  %284 = load ptr, ptr %39, align 4
  %285 = getelementptr i8, ptr %284, i32 1548
  %286 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %285) #14, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %287 = getelementptr i8, ptr %284, i32 -49408
  %288 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %283
  %291 = load i32, ptr %47, align 8
  %292 = lshr i32 %291, 5
  %293 = getelementptr i32, ptr @__cpu_online_mask, i32 %292
  %294 = load volatile i32, ptr %293, align 4
  %295 = and i32 %291, 31
  %296 = shl nuw i32 1, %295
  %297 = and i32 %296, %294
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %301, label %299

299:                                              ; preds = %290
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %300 = call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %287, i32 noundef 50956, i32 noundef %286) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %301

301:                                              ; preds = %299, %290, %283
  %302 = trunc i32 %286 to i8
  %303 = and i8 %302, 7
  store i8 %303, ptr %38, align 2
  %304 = load i32, ptr %30, align 4
  %305 = icmp eq i32 %304, 13106
  %306 = lshr i32 %286, 30
  %307 = add nuw nsw i32 %306, 1
  %308 = select i1 %305, i32 %307, i32 1
  %309 = load ptr, ptr %32, align 4
  %310 = getelementptr inbounds %struct.usb_gadget, ptr %309, i32 0, i32 7
  store i32 0, ptr %310, align 4
  %311 = zext i8 %303 to i32
  switch i32 %311, label %370 [
    i32 5, label %312
    i32 4, label %327
    i32 0, label %350
    i32 1, label %360
  ]

312:                                              ; preds = %301
  store i16 512, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @dwc3_gadget_ep0_desc, i32 0, i32 4), align 1
  %313 = load ptr, ptr %32, align 4
  %314 = getelementptr inbounds %struct.usb_gadget, ptr %313, i32 0, i32 3
  %315 = load ptr, ptr %314, align 8
  %316 = getelementptr inbounds %struct.usb_ep, ptr %315, i32 0, i32 7
  %317 = load i56, ptr %316, align 2
  %318 = and i56 %317, -65536
  %319 = or i56 %318, 512
  store i56 %319, ptr %316, align 2
  %320 = load ptr, ptr %32, align 4
  %321 = getelementptr inbounds %struct.usb_gadget, ptr %320, i32 0, i32 5
  store i32 6, ptr %321, align 4
  %322 = icmp ugt i32 %308, 1
  %323 = load ptr, ptr %32, align 4
  %324 = getelementptr inbounds %struct.usb_gadget, ptr %323, i32 0, i32 7
  br i1 %322, label %325, label %326

325:                                              ; preds = %312
  store i32 3, ptr %324, align 4
  br label %370

326:                                              ; preds = %312
  store i32 1, ptr %324, align 4
  br label %370

327:                                              ; preds = %301
  %328 = load i32, ptr %30, align 4
  %329 = icmp eq i32 %328, 21811
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load i32, ptr %31, align 4
  %332 = icmp ult i32 %331, 1429412106
  br i1 %332, label %333, label %334

333:                                              ; preds = %330
  call fastcc void @dwc3_gadget_reset_interrupt(ptr noundef %14) #14
  br label %334

334:                                              ; preds = %333, %330, %327
  store i16 512, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @dwc3_gadget_ep0_desc, i32 0, i32 4), align 1
  %335 = load ptr, ptr %32, align 4
  %336 = getelementptr inbounds %struct.usb_gadget, ptr %335, i32 0, i32 3
  %337 = load ptr, ptr %336, align 8
  %338 = getelementptr inbounds %struct.usb_ep, ptr %337, i32 0, i32 7
  %339 = load i56, ptr %338, align 2
  %340 = and i56 %339, -65536
  %341 = or i56 %340, 512
  store i56 %341, ptr %338, align 2
  %342 = load ptr, ptr %32, align 4
  %343 = getelementptr inbounds %struct.usb_gadget, ptr %342, i32 0, i32 5
  store i32 5, ptr %343, align 4
  %344 = icmp ugt i32 %308, 1
  br i1 %344, label %345, label %370

345:                                              ; preds = %334
  %346 = load ptr, ptr %32, align 4
  %347 = getelementptr inbounds %struct.usb_gadget, ptr %346, i32 0, i32 5
  store i32 6, ptr %347, align 4
  %348 = load ptr, ptr %32, align 4
  %349 = getelementptr inbounds %struct.usb_gadget, ptr %348, i32 0, i32 7
  store i32 2, ptr %349, align 4
  br label %370

350:                                              ; preds = %301
  store i16 64, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @dwc3_gadget_ep0_desc, i32 0, i32 4), align 1
  %351 = load ptr, ptr %32, align 4
  %352 = getelementptr inbounds %struct.usb_gadget, ptr %351, i32 0, i32 3
  %353 = load ptr, ptr %352, align 8
  %354 = getelementptr inbounds %struct.usb_ep, ptr %353, i32 0, i32 7
  %355 = load i56, ptr %354, align 2
  %356 = and i56 %355, -65536
  %357 = or i56 %356, 64
  store i56 %357, ptr %354, align 2
  %358 = load ptr, ptr %32, align 4
  %359 = getelementptr inbounds %struct.usb_gadget, ptr %358, i32 0, i32 5
  store i32 3, ptr %359, align 4
  br label %370

360:                                              ; preds = %301
  store i16 64, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @dwc3_gadget_ep0_desc, i32 0, i32 4), align 1
  %361 = load ptr, ptr %32, align 4
  %362 = getelementptr inbounds %struct.usb_gadget, ptr %361, i32 0, i32 3
  %363 = load ptr, ptr %362, align 8
  %364 = getelementptr inbounds %struct.usb_ep, ptr %363, i32 0, i32 7
  %365 = load i56, ptr %364, align 2
  %366 = and i56 %365, -65536
  %367 = or i56 %366, 64
  store i56 %367, ptr %364, align 2
  %368 = load ptr, ptr %32, align 4
  %369 = getelementptr inbounds %struct.usb_gadget, ptr %368, i32 0, i32 5
  store i32 2, ptr %369, align 4
  br label %370

370:                                              ; preds = %360, %350, %345, %334, %326, %325, %301
  %371 = load ptr, ptr %32, align 4
  %372 = getelementptr inbounds %struct.usb_gadget, ptr %371, i32 0, i32 3
  %373 = load ptr, ptr %372, align 8
  %374 = getelementptr inbounds %struct.usb_ep, ptr %373, i32 0, i32 7
  %375 = load i56, ptr %374, align 2
  %376 = load ptr, ptr %42, align 4
  %377 = getelementptr inbounds %struct.usb_ep, ptr %376, i32 0, i32 7
  %378 = and i56 %375, 65535
  %379 = load i56, ptr %377, align 2
  %380 = and i56 %379, -65536
  %381 = or i56 %380, %378
  store i56 %381, ptr %377, align 2
  %382 = load i32, ptr %30, align 4
  %383 = icmp eq i32 %382, 21811
  br i1 %383, label %384, label %390

384:                                              ; preds = %370
  %385 = load i32, ptr %31, align 4
  %386 = icmp ult i32 %385, 1429412171
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = load i48, ptr %34, align 4
  %389 = and i48 %388, 262144
  br label %511

390:                                              ; preds = %384, %370
  %391 = load i48, ptr %34, align 4
  %392 = freeze i48 %391
  %393 = and i48 %392, 262144
  %394 = icmp ne i48 %393, 0
  %395 = and i8 %302, 6
  %396 = icmp eq i8 %395, 4
  %397 = select i1 %394, i1 true, i1 %396
  br i1 %397, label %511, label %398

398:                                              ; preds = %390
  %399 = load ptr, ptr %39, align 4
  %400 = getelementptr i8, ptr %399, i32 1536
  %401 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %400) #14, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %402 = getelementptr i8, ptr %399, i32 -49408
  %403 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %404 = icmp sgt i32 %403, 0
  br i1 %404, label %405, label %416

405:                                              ; preds = %398
  %406 = load i32, ptr %47, align 8
  %407 = lshr i32 %406, 5
  %408 = getelementptr i32, ptr @__cpu_online_mask, i32 %407
  %409 = load volatile i32, ptr %408, align 4
  %410 = and i32 %406, 31
  %411 = shl nuw i32 1, %410
  %412 = and i32 %411, %409
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %416, label %414

414:                                              ; preds = %405
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %415 = call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %402, i32 noundef 50944, i32 noundef %401) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %416

416:                                              ; preds = %414, %405, %398
  %417 = or i32 %401, 4194304
  %418 = load ptr, ptr %39, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  call void @arm_heavy_mb() #14
  %419 = getelementptr i8, ptr %418, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %419, i32 %417) #14, !srcloc !13
  %420 = getelementptr i8, ptr %418, i32 -49408
  %421 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %422 = icmp sgt i32 %421, 0
  br i1 %422, label %423, label %434

423:                                              ; preds = %416
  %424 = load i32, ptr %47, align 8
  %425 = lshr i32 %424, 5
  %426 = getelementptr i32, ptr @__cpu_online_mask, i32 %425
  %427 = load volatile i32, ptr %426, align 4
  %428 = and i32 %424, 31
  %429 = shl nuw i32 1, %428
  %430 = and i32 %429, %427
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %434, label %432

432:                                              ; preds = %423
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %433 = call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %420, i32 noundef 50944, i32 noundef %417) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %434

434:                                              ; preds = %432, %423, %416
  %435 = load ptr, ptr %39, align 4
  %436 = getelementptr i8, ptr %435, i32 1540
  %437 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %436) #14, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %438 = getelementptr i8, ptr %435, i32 -49408
  %439 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %440 = icmp sgt i32 %439, 0
  br i1 %440, label %441, label %452

441:                                              ; preds = %434
  %442 = load i32, ptr %47, align 8
  %443 = lshr i32 %442, 5
  %444 = getelementptr i32, ptr @__cpu_online_mask, i32 %443
  %445 = load volatile i32, ptr %444, align 4
  %446 = and i32 %442, 31
  %447 = shl nuw i32 1, %446
  %448 = and i32 %447, %445
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %452, label %450

450:                                              ; preds = %441
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %451 = call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %438, i32 noundef 50948, i32 noundef %437) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %452

452:                                              ; preds = %450, %441, %434
  %453 = and i32 %437, -520355841
  %454 = load i8, ptr %43, align 1
  %455 = zext i8 %454 to i32
  %456 = load i48, ptr %34, align 4
  %457 = trunc i48 %456 to i32
  %458 = lshr i32 %457, 4
  %459 = and i32 %458, 16
  %460 = or i32 %459, %455
  %461 = shl nuw i32 %460, 24
  %462 = or i32 %461, %453
  %463 = load i32, ptr %30, align 4
  %464 = icmp eq i32 %463, 21811
  br i1 %464, label %465, label %476

465:                                              ; preds = %452
  %466 = load i32, ptr %31, align 4
  %467 = icmp ult i32 %466, 1429414922
  br i1 %467, label %468, label %476

468:                                              ; preds = %465
  %469 = and i48 %456, 128
  %470 = icmp ne i48 %469, 0
  %471 = load i1, ptr @dwc3_gadget_conndone_interrupt.__already_done, align 1
  %472 = xor i1 %471, true
  %473 = select i1 %470, i1 %472, i1 false
  br i1 %473, label %474, label %476, !prof !25

474:                                              ; preds = %468
  store i1 true, ptr @dwc3_gadget_conndone_interrupt.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3860, i32 noundef 9, ptr noundef nonnull @.str.25) #14
  %475 = load i48, ptr %34, align 4
  br label %476

476:                                              ; preds = %474, %468, %465, %452
  %477 = phi i48 [ %456, %452 ], [ %456, %465 ], [ %475, %474 ], [ %456, %468 ]
  %478 = and i48 %477, 128
  %479 = icmp eq i48 %478, 0
  br i1 %479, label %492, label %480

480:                                              ; preds = %476
  %481 = load i32, ptr %30, align 4
  %482 = icmp eq i32 %481, 21811
  br i1 %482, label %483, label %486

483:                                              ; preds = %480
  %484 = load i32, ptr %31, align 4
  %485 = icmp ult i32 %484, 1429414922
  br i1 %485, label %492, label %486

486:                                              ; preds = %483, %480
  %487 = load i8, ptr %44, align 2
  %488 = and i8 %487, 15
  %489 = zext i8 %488 to i32
  %490 = shl nuw nsw i32 %489, 20
  %491 = or i32 %490, %462
  br label %492

492:                                              ; preds = %486, %483, %476
  %493 = phi i32 [ %462, %483 ], [ %491, %486 ], [ %462, %476 ]
  %494 = and i32 %493, -481
  %495 = load ptr, ptr %39, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  call void @arm_heavy_mb() #14
  %496 = getelementptr i8, ptr %495, i32 1540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %496, i32 %494) #14, !srcloc !13
  %497 = getelementptr i8, ptr %495, i32 -49408
  %498 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %499 = icmp sgt i32 %498, 0
  br i1 %499, label %500, label %586

500:                                              ; preds = %492
  %501 = load i32, ptr %47, align 8
  %502 = lshr i32 %501, 5
  %503 = getelementptr i32, ptr @__cpu_online_mask, i32 %502
  %504 = load volatile i32, ptr %503, align 4
  %505 = and i32 %501, 31
  %506 = shl nuw i32 1, %505
  %507 = and i32 %506, %504
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %586, label %509

509:                                              ; preds = %500
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %510 = call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %497, i32 noundef 50948, i32 noundef %494) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %586

511:                                              ; preds = %390, %387
  %512 = phi i48 [ %393, %390 ], [ %389, %387 ]
  %513 = icmp eq i48 %512, 0
  br i1 %513, label %550, label %514

514:                                              ; preds = %511
  %515 = load ptr, ptr %39, align 4
  %516 = getelementptr i8, ptr %515, i32 1536
  %517 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %516) #14, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %518 = getelementptr i8, ptr %515, i32 -49408
  %519 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %520 = icmp sgt i32 %519, 0
  br i1 %520, label %521, label %532

521:                                              ; preds = %514
  %522 = load i32, ptr %47, align 8
  %523 = lshr i32 %522, 5
  %524 = getelementptr i32, ptr @__cpu_online_mask, i32 %523
  %525 = load volatile i32, ptr %524, align 4
  %526 = and i32 %522, 31
  %527 = shl nuw i32 1, %526
  %528 = and i32 %527, %525
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %532, label %530

530:                                              ; preds = %521
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %531 = call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %518, i32 noundef 50944, i32 noundef %517) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %532

532:                                              ; preds = %530, %521, %514
  %533 = and i32 %517, -4194305
  %534 = load ptr, ptr %39, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  call void @arm_heavy_mb() #14
  %535 = getelementptr i8, ptr %534, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %535, i32 %533) #14, !srcloc !13
  %536 = getelementptr i8, ptr %534, i32 -49408
  %537 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %538 = icmp sgt i32 %537, 0
  br i1 %538, label %539, label %550

539:                                              ; preds = %532
  %540 = load i32, ptr %47, align 8
  %541 = lshr i32 %540, 5
  %542 = getelementptr i32, ptr @__cpu_online_mask, i32 %541
  %543 = load volatile i32, ptr %542, align 4
  %544 = and i32 %540, 31
  %545 = shl nuw i32 1, %544
  %546 = and i32 %545, %543
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %550, label %548

548:                                              ; preds = %539
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %549 = call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %536, i32 noundef 50944, i32 noundef %533) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %550

550:                                              ; preds = %548, %539, %532, %511
  %551 = load ptr, ptr %39, align 4
  %552 = getelementptr i8, ptr %551, i32 1540
  %553 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %552) #14, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %554 = getelementptr i8, ptr %551, i32 -49408
  %555 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %556 = icmp sgt i32 %555, 0
  br i1 %556, label %557, label %568

557:                                              ; preds = %550
  %558 = load i32, ptr %47, align 8
  %559 = lshr i32 %558, 5
  %560 = getelementptr i32, ptr @__cpu_online_mask, i32 %559
  %561 = load volatile i32, ptr %560, align 4
  %562 = and i32 %558, 31
  %563 = shl nuw i32 1, %562
  %564 = and i32 %563, %561
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %568, label %566

566:                                              ; preds = %557
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %567 = call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %554, i32 noundef 50948, i32 noundef %553) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %568

568:                                              ; preds = %566, %557, %550
  %569 = and i32 %553, -520094177
  %570 = load ptr, ptr %39, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  call void @arm_heavy_mb() #14
  %571 = getelementptr i8, ptr %570, i32 1540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %571, i32 %569) #14, !srcloc !13
  %572 = getelementptr i8, ptr %570, i32 -49408
  %573 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %574 = icmp sgt i32 %573, 0
  br i1 %574, label %575, label %586

575:                                              ; preds = %568
  %576 = load i32, ptr %47, align 8
  %577 = lshr i32 %576, 5
  %578 = getelementptr i32, ptr @__cpu_online_mask, i32 %577
  %579 = load volatile i32, ptr %578, align 4
  %580 = and i32 %576, 31
  %581 = shl nuw i32 1, %580
  %582 = and i32 %581, %579
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %586, label %584

584:                                              ; preds = %575
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %585 = call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %572, i32 noundef 50948, i32 noundef %569) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %586

586:                                              ; preds = %584, %575, %568, %509, %500, %492
  %587 = load ptr, ptr %41, align 4
  %588 = call fastcc i32 @__dwc3_gadget_ep_enable(ptr noundef %587, i32 noundef -2147483648) #14
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %594

590:                                              ; preds = %586
  %591 = load ptr, ptr %42, align 4
  %592 = call fastcc i32 @__dwc3_gadget_ep_enable(ptr noundef %591, i32 noundef -2147483648) #14
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %802, label %594

594:                                              ; preds = %590, %586
  %595 = phi ptr [ %587, %586 ], [ %591, %590 ]
  %596 = load ptr, ptr %29, align 4
  %597 = getelementptr inbounds %struct.dwc3_ep, ptr %595, i32 0, i32 17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %596, ptr noundef nonnull @.str.26, ptr noundef %597) #15
  br label %802

598:                                              ; preds = %278
  %599 = load i48, ptr %34, align 4
  %600 = and i48 %599, 4398046511104
  %601 = icmp eq i48 %600, 0
  br i1 %601, label %802, label %602

602:                                              ; preds = %598
  %603 = load ptr, ptr %35, align 4
  %604 = getelementptr inbounds %struct.usb_gadget_driver, ptr %603, i32 0, i32 7
  %605 = load ptr, ptr %604, align 4
  %606 = icmp eq ptr %605, null
  br i1 %606, label %802, label %607

607:                                              ; preds = %602
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  %608 = load i16, ptr %36, align 4
  %609 = add i16 %608, 1
  store i16 %609, ptr %36, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %610 = load ptr, ptr %35, align 4
  %611 = getelementptr inbounds %struct.usb_gadget_driver, ptr %610, i32 0, i32 7
  %612 = load ptr, ptr %611, align 4
  %613 = load ptr, ptr %32, align 4
  call void %612(ptr noundef %613) #14
  call void @_raw_spin_lock(ptr noundef %36) #14
  br label %802

614:                                              ; preds = %278
  %615 = load i48, ptr %34, align 4
  %616 = and i48 %615, 32
  %617 = icmp eq i48 %616, 0
  %618 = load i1, ptr @dwc3_gadget_interrupt.__already_done, align 1
  %619 = xor i1 %618, true
  %620 = select i1 %617, i1 %619, i1 false
  br i1 %620, label %621, label %802, !prof !25

621:                                              ; preds = %614
  store i1 true, ptr @dwc3_gadget_interrupt.__already_done, align 1
  %622 = load ptr, ptr %29, align 4
  %623 = call ptr @dev_driver_string(ptr noundef %622) #14
  %624 = load ptr, ptr %29, align 4
  %625 = getelementptr inbounds %struct.device, ptr %624, i32 0, i32 3
  %626 = load ptr, ptr %625, align 4
  %627 = icmp eq ptr %626, null
  br i1 %627, label %628, label %630

628:                                              ; preds = %621
  %629 = load ptr, ptr %624, align 4
  br label %630

630:                                              ; preds = %628, %621
  %631 = phi ptr [ %629, %628 ], [ %626, %621 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4066, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %623, ptr noundef %631) #14
  br label %802

632:                                              ; preds = %278
  %633 = lshr i32 %69, 16
  %634 = and i32 %633, 15
  %635 = load i32, ptr %30, align 4
  %636 = icmp eq i32 %635, 21811
  br i1 %636, label %637, label %698

637:                                              ; preds = %632
  %638 = load i32, ptr %37, align 4
  %639 = load i32, ptr %31, align 4
  %640 = icmp ult i32 %639, 1429415178
  %641 = and i32 %638, 50331648
  %642 = icmp ne i32 %641, 33554432
  %643 = select i1 %640, i1 %642, i1 false
  br i1 %643, label %644, label %649

644:                                              ; preds = %637
  %645 = load i32, ptr %33, align 4
  %646 = icmp eq i32 %645, 3
  %647 = icmp eq i32 %634, 15
  %648 = and i1 %647, %646
  br i1 %648, label %802, label %649

649:                                              ; preds = %644, %637
  %650 = icmp ult i32 %639, 1429411898
  %651 = icmp eq i32 %634, 0
  %652 = and i1 %651, %650
  br i1 %652, label %653, label %698

653:                                              ; preds = %649
  %654 = load i32, ptr %33, align 4
  %655 = add i32 %654, -1
  %656 = icmp ult i32 %655, 2
  br i1 %656, label %657, label %750

657:                                              ; preds = %653
  %658 = load ptr, ptr %39, align 4
  %659 = getelementptr i8, ptr %658, i32 1540
  %660 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %659) #14, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %661 = getelementptr i8, ptr %658, i32 -49408
  %662 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %663 = icmp sgt i32 %662, 0
  br i1 %663, label %664, label %675

664:                                              ; preds = %657
  %665 = load i32, ptr %47, align 8
  %666 = lshr i32 %665, 5
  %667 = getelementptr i32, ptr @__cpu_online_mask, i32 %666
  %668 = load volatile i32, ptr %667, align 4
  %669 = and i32 %665, 31
  %670 = shl nuw i32 1, %669
  %671 = and i32 %670, %668
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %675, label %673

673:                                              ; preds = %664
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %674 = call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %661, i32 noundef 50948, i32 noundef %660) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %675

675:                                              ; preds = %673, %664, %657
  %676 = load i32, ptr %40, align 4
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %678, label %680

678:                                              ; preds = %675
  %679 = and i32 %660, 7680
  store i32 %679, ptr %40, align 4
  br label %680

680:                                              ; preds = %678, %675
  %681 = and i32 %660, -8161
  %682 = load ptr, ptr %39, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  call void @arm_heavy_mb() #14
  %683 = getelementptr i8, ptr %682, i32 1540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %683, i32 %681) #14, !srcloc !13
  %684 = getelementptr i8, ptr %682, i32 -49408
  %685 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %686 = icmp sgt i32 %685, 0
  br i1 %686, label %687, label %750

687:                                              ; preds = %680
  %688 = load i32, ptr %47, align 8
  %689 = lshr i32 %688, 5
  %690 = getelementptr i32, ptr @__cpu_online_mask, i32 %689
  %691 = load volatile i32, ptr %690, align 4
  %692 = and i32 %688, 31
  %693 = shl nuw i32 1, %692
  %694 = and i32 %693, %691
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %750, label %696

696:                                              ; preds = %687
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %697 = call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %684, i32 noundef 50948, i32 noundef %681) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %750

698:                                              ; preds = %649, %632
  switch i32 %634, label %750 [
    i32 1, label %699
    i32 2, label %718
    i32 3, label %718
    i32 15, label %734
  ]

699:                                              ; preds = %698
  %700 = load i8, ptr %38, align 2
  %701 = icmp eq i8 %700, 5
  br i1 %701, label %702, label %750

702:                                              ; preds = %699
  %703 = load i48, ptr %34, align 4
  %704 = and i48 %703, 4398046511104
  %705 = icmp eq i48 %704, 0
  br i1 %705, label %750, label %706

706:                                              ; preds = %702
  %707 = load ptr, ptr %35, align 4
  %708 = getelementptr inbounds %struct.usb_gadget_driver, ptr %707, i32 0, i32 6
  %709 = load ptr, ptr %708, align 4
  %710 = icmp eq ptr %709, null
  br i1 %710, label %750, label %711

711:                                              ; preds = %706
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  %712 = load i16, ptr %36, align 4
  %713 = add i16 %712, 1
  store i16 %713, ptr %36, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %714 = load ptr, ptr %35, align 4
  %715 = getelementptr inbounds %struct.usb_gadget_driver, ptr %714, i32 0, i32 6
  %716 = load ptr, ptr %715, align 4
  %717 = load ptr, ptr %32, align 4
  call void %716(ptr noundef %717) #14
  call void @_raw_spin_lock(ptr noundef %36) #14
  br label %750

718:                                              ; preds = %698, %698
  %719 = load i48, ptr %34, align 4
  %720 = and i48 %719, 4398046511104
  %721 = icmp eq i48 %720, 0
  br i1 %721, label %750, label %722

722:                                              ; preds = %718
  %723 = load ptr, ptr %35, align 4
  %724 = getelementptr inbounds %struct.usb_gadget_driver, ptr %723, i32 0, i32 6
  %725 = load ptr, ptr %724, align 4
  %726 = icmp eq ptr %725, null
  br i1 %726, label %750, label %727

727:                                              ; preds = %722
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  %728 = load i16, ptr %36, align 4
  %729 = add i16 %728, 1
  store i16 %729, ptr %36, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %730 = load ptr, ptr %35, align 4
  %731 = getelementptr inbounds %struct.usb_gadget_driver, ptr %730, i32 0, i32 6
  %732 = load ptr, ptr %731, align 4
  %733 = load ptr, ptr %32, align 4
  call void %732(ptr noundef %733) #14
  call void @_raw_spin_lock(ptr noundef %36) #14
  br label %750

734:                                              ; preds = %698
  %735 = load i48, ptr %34, align 4
  %736 = and i48 %735, 4398046511104
  %737 = icmp eq i48 %736, 0
  br i1 %737, label %750, label %738

738:                                              ; preds = %734
  %739 = load ptr, ptr %35, align 4
  %740 = getelementptr inbounds %struct.usb_gadget_driver, ptr %739, i32 0, i32 7
  %741 = load ptr, ptr %740, align 4
  %742 = icmp eq ptr %741, null
  br i1 %742, label %750, label %743

743:                                              ; preds = %738
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  %744 = load i16, ptr %36, align 4
  %745 = add i16 %744, 1
  store i16 %745, ptr %36, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %746 = load ptr, ptr %35, align 4
  %747 = getelementptr inbounds %struct.usb_gadget_driver, ptr %746, i32 0, i32 7
  %748 = load ptr, ptr %747, align 4
  %749 = load ptr, ptr %32, align 4
  call void %748(ptr noundef %749) #14
  call void @_raw_spin_lock(ptr noundef %36) #14
  br label %750

750:                                              ; preds = %743, %738, %734, %727, %722, %718, %711, %706, %702, %699, %698, %696, %687, %680, %653
  store i32 %634, ptr %33, align 4
  br label %802

751:                                              ; preds = %278
  %752 = load i32, ptr %30, align 4
  %753 = icmp eq i32 %752, 21811
  br i1 %753, label %754, label %757

754:                                              ; preds = %751
  %755 = load i32, ptr %31, align 4
  %756 = icmp ult i32 %755, 1429414666
  br i1 %756, label %802, label %757

757:                                              ; preds = %754, %751
  %758 = load ptr, ptr %32, align 4
  %759 = getelementptr inbounds %struct.usb_gadget, ptr %758, i32 0, i32 9
  %760 = load i32, ptr %759, align 4
  %761 = icmp ugt i32 %760, 6
  br i1 %761, label %762, label %802

762:                                              ; preds = %757
  %763 = lshr i32 %69, 16
  %764 = and i32 %763, 15
  %765 = load i32, ptr %33, align 4
  %766 = icmp eq i32 %764, 3
  %767 = icmp ne i32 %765, 3
  %768 = and i1 %766, %767
  br i1 %768, label %769, label %785

769:                                              ; preds = %762
  %770 = load i48, ptr %34, align 4
  %771 = and i48 %770, 4398046511104
  %772 = icmp eq i48 %771, 0
  br i1 %772, label %785, label %773

773:                                              ; preds = %769
  %774 = load ptr, ptr %35, align 4
  %775 = getelementptr inbounds %struct.usb_gadget_driver, ptr %774, i32 0, i32 6
  %776 = load ptr, ptr %775, align 4
  %777 = icmp eq ptr %776, null
  br i1 %777, label %785, label %778

778:                                              ; preds = %773
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  %779 = load i16, ptr %36, align 4
  %780 = add i16 %779, 1
  store i16 %780, ptr %36, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %781 = load ptr, ptr %35, align 4
  %782 = getelementptr inbounds %struct.usb_gadget_driver, ptr %781, i32 0, i32 6
  %783 = load ptr, ptr %782, align 4
  %784 = load ptr, ptr %32, align 4
  call void %783(ptr noundef %784) #14
  call void @_raw_spin_lock(ptr noundef %36) #14
  br label %785

785:                                              ; preds = %778, %773, %769, %762
  store i32 %764, ptr %33, align 4
  br label %802

786:                                              ; preds = %278
  %787 = load ptr, ptr %29, align 4
  %788 = call ptr @dev_driver_string(ptr noundef %787) #14
  %789 = load ptr, ptr %29, align 4
  %790 = getelementptr inbounds %struct.device, ptr %789, i32 0, i32 3
  %791 = load ptr, ptr %790, align 4
  %792 = icmp eq ptr %791, null
  br i1 %792, label %793, label %795

793:                                              ; preds = %786
  %794 = load ptr, ptr %789, align 4
  br label %795

795:                                              ; preds = %793, %786
  %796 = phi ptr [ %794, %793 ], [ %791, %786 ]
  %797 = load i32, ptr %5, align 4
  %798 = lshr i32 %797, 8
  %799 = and i32 %798, 15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4092, i32 noundef 9, ptr noundef nonnull @.str.24, ptr noundef %788, ptr noundef %796, i32 noundef %799) #14
  br label %802

800:                                              ; preds = %275
  %801 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %801, ptr noundef nonnull @.str.22, i32 noundef %69) #15
  br label %802

802:                                              ; preds = %800, %795, %785, %757, %754, %750, %644, %630, %614, %607, %602, %598, %594, %590, %282, %281, %278, %278, %278, %278, %272, %271, %204, %198, %195, %170, %160, %120, %118, %113, %105, %93, %90, %89, %81
  %803 = load i32, ptr %28, align 4
  %804 = add i32 %803, 4
  %805 = load i32, ptr %45, align 4
  %806 = urem i32 %804, %805
  store i32 %806, ptr %28, align 4
  %807 = add nsw i32 %50, -4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %808 = icmp sgt i32 %50, 4
  br i1 %808, label %48, label %809

809:                                              ; preds = %802
  %810 = load i32, ptr %17, align 4
  br label %811

811:                                              ; preds = %809, %23
  %812 = phi i32 [ %805, %809 ], [ %25, %23 ]
  %813 = phi i32 [ %810, %809 ], [ %18, %23 ]
  store i32 0, ptr %15, align 4
  %814 = and i32 %813, -2
  store i32 %814, ptr %17, align 4
  %815 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 30
  %816 = load ptr, ptr %815, align 4
  %817 = and i32 %812, 65535
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  call void @arm_heavy_mb() #14
  %818 = getelementptr i8, ptr %816, i32 776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %818, i32 %817) #14, !srcloc !13
  %819 = getelementptr i8, ptr %816, i32 -49408
  %820 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %821 = icmp sgt i32 %820, 0
  br i1 %821, label %822, label %834

822:                                              ; preds = %811
  %823 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %824 = load i32, ptr %823, align 8
  %825 = lshr i32 %824, 5
  %826 = getelementptr i32, ptr @__cpu_online_mask, i32 %825
  %827 = load volatile i32, ptr %826, align 4
  %828 = and i32 %824, 31
  %829 = shl nuw i32 1, %828
  %830 = and i32 %829, %827
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %834, label %832

832:                                              ; preds = %822
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %833 = call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %819, i32 noundef 50184, i32 noundef %817) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %834

834:                                              ; preds = %832, %822, %811
  %835 = getelementptr inbounds %struct.dwc3, ptr %14, i32 0, i32 80
  %836 = load i16, ptr %835, align 2
  %837 = icmp eq i16 %836, 0
  br i1 %837, label %876, label %838

838:                                              ; preds = %834
  %839 = load ptr, ptr %815, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  call void @arm_heavy_mb() #14
  %840 = getelementptr i8, ptr %839, i32 780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %840, i32 -2147483648) #14, !srcloc !13
  %841 = getelementptr i8, ptr %839, i32 -49408
  %842 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %843 = icmp sgt i32 %842, 0
  br i1 %843, label %844, label %856

844:                                              ; preds = %838
  %845 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %846 = load i32, ptr %845, align 8
  %847 = lshr i32 %846, 5
  %848 = getelementptr i32, ptr @__cpu_online_mask, i32 %847
  %849 = load volatile i32, ptr %848, align 4
  %850 = and i32 %846, 31
  %851 = shl nuw i32 1, %850
  %852 = and i32 %851, %849
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %856, label %854

854:                                              ; preds = %844
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %855 = call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %841, i32 noundef 50188, i32 noundef -2147483648) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %856

856:                                              ; preds = %854, %844, %838
  %857 = load ptr, ptr %815, align 4
  %858 = load i16, ptr %835, align 2
  %859 = zext i16 %858 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  call void @arm_heavy_mb() #14
  %860 = getelementptr i8, ptr %857, i32 2304
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %860, i32 %859) #14, !srcloc !13
  %861 = getelementptr i8, ptr %857, i32 -49408
  %862 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %863 = icmp sgt i32 %862, 0
  br i1 %863, label %864, label %876

864:                                              ; preds = %856
  %865 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %866 = load i32, ptr %865, align 8
  %867 = lshr i32 %866, 5
  %868 = getelementptr i32, ptr @__cpu_online_mask, i32 %867
  %869 = load volatile i32, ptr %868, align 4
  %870 = and i32 %866, 31
  %871 = shl nuw i32 1, %870
  %872 = and i32 %871, %869
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %876, label %874

874:                                              ; preds = %864
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %875 = call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %861, i32 noundef 51712, i32 noundef %859) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %876

876:                                              ; preds = %874, %864, %856, %834, %2
  %877 = phi i32 [ 0, %2 ], [ 1, %834 ], [ 1, %856 ], [ 1, %864 ], [ 1, %874 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #14
  call fastcc void @local_bh_enable()
  ret i32 %877
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_ep0_interrupt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dwc3_gadget_endpoint_trbs_complete(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %222, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 5
  %14 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 11
  br label %15

15:                                               ; preds = %83, %10
  %16 = phi ptr [ %12, %10 ], [ %17, %83 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %16, %11
  br i1 %18, label %86, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %16, i32 -56
  %21 = getelementptr i8, ptr %16, i32 -36
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %16, i32 12
  %26 = getelementptr i8, ptr %16, i32 24
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 4
  br label %31

31:                                               ; preds = %43, %29
  %32 = phi i32 [ %44, %43 ], [ 0, %29 ]
  %33 = phi ptr [ %45, %43 ], [ %30, %29 ]
  %34 = load ptr, ptr %13, align 4
  %35 = load i8, ptr %14, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr %struct.dwc3_trb, ptr %34, i32 %36
  %38 = tail call ptr @sg_next(ptr noundef %33) #14
  store ptr %38, ptr %25, align 4
  %39 = load i32, ptr %26, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr %26, align 4
  %41 = tail call fastcc i32 @dwc3_gadget_ep_reclaim_completed_trb(ptr noundef %0, ptr noundef %20, ptr noundef %37, ptr noundef %1, i32 noundef 1) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %31
  %44 = add nuw i32 %32, 1
  %45 = tail call ptr @sg_next(ptr noundef %33) #14
  %46 = icmp eq i32 %44, %27
  br i1 %46, label %53, label %31

47:                                               ; preds = %19
  %48 = load ptr, ptr %13, align 4
  %49 = load i8, ptr %14, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr %struct.dwc3_trb, ptr %48, i32 %50
  %52 = tail call fastcc i32 @dwc3_gadget_ep_reclaim_completed_trb(ptr noundef %0, ptr noundef %20, ptr noundef %51, ptr noundef %1, i32 noundef 0) #14
  br label %53

53:                                               ; preds = %47, %43, %31, %24
  %54 = phi i32 [ %52, %47 ], [ 0, %24 ], [ 0, %43 ], [ 1, %31 ]
  %55 = getelementptr i8, ptr %16, i32 -52
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %16, i32 28
  %58 = load i32, ptr %57, align 4
  %59 = sub i32 %56, %58
  %60 = getelementptr i8, ptr %16, i32 -4
  store i32 %59, ptr %60, align 4
  %61 = getelementptr i8, ptr %16, i32 20
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %53
  %65 = getelementptr i8, ptr %16, i32 24
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %16, i32 52
  %70 = load i8, ptr %69, align 4
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr %13, align 4
  %75 = load i8, ptr %14, align 1
  %76 = zext i8 %75 to i32
  %77 = getelementptr %struct.dwc3_trb, ptr %74, i32 %76
  %78 = tail call fastcc i32 @dwc3_gadget_ep_reclaim_completed_trb(ptr noundef %0, ptr noundef %20, ptr noundef %77, ptr noundef %1, i32 noundef 0) #14
  %79 = load i8, ptr %69, align 4
  %80 = and i8 %79, -2
  store i8 %80, ptr %69, align 4
  br label %81

81:                                               ; preds = %73, %68
  %82 = phi i32 [ %78, %73 ], [ %54, %68 ]
  tail call void @dwc3_gadget_giveback(ptr noundef %0, ptr noundef %20, i32 noundef %2) #14
  br label %83

83:                                               ; preds = %81, %64, %53
  %84 = phi i32 [ %82, %81 ], [ %54, %64 ], [ %54, %53 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %15, label %86

86:                                               ; preds = %83, %15
  %87 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %154

91:                                               ; preds = %86
  %92 = load ptr, ptr %7, align 4
  %93 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %92, i32 0, i32 3
  %94 = load i8, ptr %93, align 1
  %95 = and i8 %94, 3
  %96 = icmp eq i8 %95, 1
  br i1 %96, label %97, label %125

97:                                               ; preds = %91
  %98 = load volatile ptr, ptr %11, align 4
  %99 = icmp eq ptr %98, %11
  br i1 %99, label %100, label %125

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 2
  %102 = load volatile ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %101
  %104 = icmp eq i32 %2, -18
  %105 = or i1 %104, %103
  br i1 %105, label %106, label %125

106:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %107 = and i32 %88, 24
  %108 = icmp eq i32 %107, 8
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 14
  %111 = load i8, ptr %110, align 4
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 16
  %114 = or i32 %113, 2312
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #14
  %115 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %114, ptr noundef nonnull %4) #14
  %116 = icmp ne i32 %115, 0
  %117 = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  %118 = xor i1 %117, true
  %119 = select i1 %116, i1 %118, i1 false
  br i1 %119, label %120, label %121, !prof !25

120:                                              ; preds = %109
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #14
  br label %121

121:                                              ; preds = %120, %109
  store i8 0, ptr %110, align 4
  %122 = load i32, ptr %87, align 4
  %123 = or i32 %122, 16
  store i32 %123, ptr %87, align 4
  br label %124

124:                                              ; preds = %121, %106
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  br label %154

125:                                              ; preds = %100, %97, %91
  %126 = icmp eq ptr %92, null
  br i1 %126, label %154, label %127

127:                                              ; preds = %125
  %128 = load ptr, ptr %5, align 4
  %129 = getelementptr inbounds %struct.dwc3, ptr %128, i32 0, i32 79
  %130 = load i48, ptr %129, align 4
  %131 = and i48 %130, 4097
  %132 = icmp eq i48 %131, 4097
  br i1 %132, label %133, label %154

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 2
  %135 = load volatile ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, %134
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  %138 = load volatile ptr, ptr %11, align 4
  %139 = icmp eq ptr %138, %11
  %140 = getelementptr i8, ptr %138, i32 -56
  %141 = icmp eq ptr %140, null
  %142 = or i1 %139, %141
  br i1 %142, label %154, label %143

143:                                              ; preds = %137
  %144 = getelementptr i8, ptr %138, i32 20
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = getelementptr i8, ptr %138, i32 24
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %147, %143, %133
  %152 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %0)
  %153 = icmp ne i32 %152, 0
  br label %154

154:                                              ; preds = %151, %147, %137, %127, %125, %124, %86
  %155 = phi i1 [ true, %86 ], [ true, %124 ], [ true, %147 ], [ %153, %151 ], [ true, %127 ], [ true, %125 ], [ true, %137 ]
  %156 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 54
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 21811
  br i1 %158, label %159, label %222

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 55
  %161 = load i32, ptr %160, align 4
  %162 = icmp ult i32 %161, 1429411898
  br i1 %162, label %163, label %222

163:                                              ; preds = %175, %159
  %164 = phi i32 [ %176, %175 ], [ 0, %159 ]
  %165 = getelementptr %struct.dwc3, ptr %6, i32 0, i32 17, i32 %164
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.dwc3_ep, ptr %166, i32 0, i32 9
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.dwc3_ep, ptr %166, i32 0, i32 3
  %173 = load volatile ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, %172
  br i1 %174, label %175, label %222

175:                                              ; preds = %171, %163
  %176 = add nuw nsw i32 %164, 1
  %177 = icmp eq i32 %176, 32
  br i1 %177, label %178, label %163

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 30
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr i8, ptr %180, i32 1540
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #14, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %183 = getelementptr i8, ptr %180, i32 -49408
  %184 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %178
  %187 = tail call ptr @llvm.thread.pointer() #14
  %188 = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 2
  %189 = load i32, ptr %188, align 8
  %190 = lshr i32 %189, 5
  %191 = getelementptr i32, ptr @__cpu_online_mask, i32 %190
  %192 = load volatile i32, ptr %191, align 4
  %193 = and i32 %189, 31
  %194 = shl nuw i32 1, %193
  %195 = and i32 %194, %192
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %186
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %198 = call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %183, i32 noundef 50948, i32 noundef %182) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %199

199:                                              ; preds = %197, %186, %178
  %200 = getelementptr inbounds %struct.dwc3, ptr %6, i32 0, i32 49
  %201 = load i32, ptr %200, align 4
  %202 = or i32 %201, %182
  %203 = load ptr, ptr %179, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  call void @arm_heavy_mb() #14
  %204 = getelementptr i8, ptr %203, i32 1540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #14, !srcloc !13
  %205 = getelementptr i8, ptr %203, i32 -49408
  %206 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %199
  %209 = tail call ptr @llvm.thread.pointer() #14
  %210 = getelementptr inbounds %struct.thread_info, ptr %209, i32 0, i32 2
  %211 = load i32, ptr %210, align 8
  %212 = lshr i32 %211, 5
  %213 = getelementptr i32, ptr @__cpu_online_mask, i32 %212
  %214 = load volatile i32, ptr %213, align 4
  %215 = and i32 %211, 31
  %216 = shl nuw i32 1, %215
  %217 = and i32 %216, %214
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %208
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %220 = call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %205, i32 noundef 50948, i32 noundef %202) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %221

221:                                              ; preds = %219, %208, %199
  store i32 0, ptr %200, align 4
  br label %222

222:                                              ; preds = %221, %171, %159, %154, %3
  %223 = phi i1 [ true, %3 ], [ %155, %221 ], [ %155, %159 ], [ %155, %154 ], [ %155, %171 ]
  ret i1 %223
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_gadget_ep_reclaim_completed_trb(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 11
  %7 = load i8, ptr %6, align 1
  %8 = add i8 %7, 1
  %9 = icmp eq i8 %8, -1
  %10 = select i1 %9, i8 0, i8 %8
  store i8 %10, ptr %6, align 1
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_complete_trb, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %5
  %14 = tail call ptr @llvm.thread.pointer() #14
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !38
  %25 = tail call i32 @__traceiter_dwc3_complete_trb(ptr noundef null, ptr noundef %0, ptr noundef %2) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !39
  br label %26

26:                                               ; preds = %24, %13, %5
  %27 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 4
  %30 = icmp ne i32 %4, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.dwc3_trb, ptr %2, i32 0, i32 3
  %33 = load i32, ptr %32, align 1
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = and i32 %33, -2
  store i32 %37, ptr %32, align 1
  br label %38

38:                                               ; preds = %36, %31, %26
  %39 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %40, i32 0, i32 3
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 3
  %44 = icmp eq i8 %43, 1
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.dwc3_trb, ptr %2, i32 0, i32 3
  %47 = load i32, ptr %46, align 1
  %48 = and i32 %47, 96
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = lshr i32 %47, 14
  %52 = and i32 %51, 65535
  %53 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 16
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 0, %54
  %56 = and i32 %52, %55
  %57 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 10
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %50, %45, %38
  %59 = load i32, ptr %2, align 1
  %60 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dwc3, ptr %61, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.dwc3_trb, ptr %2, i32 0, i32 1
  %67 = load i32, ptr %66, align 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.dwc3_trb, ptr %2, i32 0, i32 3
  %71 = load i32, ptr %70, align 1
  %72 = and i32 %71, -2
  store i32 %72, ptr %70, align 1
  br label %93

73:                                               ; preds = %65, %58
  %74 = getelementptr inbounds %struct.dwc3_trb, ptr %2, i32 0, i32 2
  %75 = load i32, ptr %74, align 1
  %76 = and i32 %75, 16777215
  %77 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 7
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %76
  store i32 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.dwc3_trb, ptr %2, i32 0, i32 3
  %81 = load i32, ptr %80, align 1
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %73
  %85 = load i32, ptr %3, align 1
  %86 = and i32 %85, 8192
  %87 = icmp eq i32 %86, 0
  %88 = or i1 %30, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = and i32 %81, 2050
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  br label %93

93:                                               ; preds = %89, %84, %73, %69
  %94 = phi i32 [ 1, %69 ], [ 1, %73 ], [ 1, %84 ], [ %92, %89 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_complete_trb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dwc3_gadget_start_isoc(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %3 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %4 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %5 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 2
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 3
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 32
  store i32 %19, ptr %17, align 4
  br label %238

20:                                               ; preds = %12, %1
  %21 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 79
  %22 = load i48, ptr %21, align 4
  %23 = and i48 %22, 32768
  %24 = icmp eq i48 %23, 0
  br i1 %24, label %25, label %137

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 54
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 13105
  br i1 %28, label %29, label %137

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 55
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, 825700394
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = icmp eq i32 %31, 825700394
  br i1 %34, label %35, label %137

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 56
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -1700868145
  %39 = icmp ult i32 %38, 6
  br i1 %39, label %40, label %137

40:                                               ; preds = %35, %29
  %41 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 18
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %46, label %137

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %137, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 19
  %53 = load i8, ptr %52, align 1
  %54 = icmp ult i8 %53, 2
  br i1 %54, label %55, label %110

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 15
  %57 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 16
  %58 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %3, i32 0, i32 2
  %59 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %3, i32 0, i32 1
  %60 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 20
  br label %61

61:                                               ; preds = %108, %55
  %62 = phi ptr [ %8, %55 ], [ %109, %108 ]
  %63 = phi i8 [ %53, %55 ], [ %83, %108 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !28
  %64 = load i32, ptr %56, align 4
  %65 = and i32 %64, 16383
  %66 = zext i8 %63 to i32
  %67 = shl nuw nsw i32 %66, 14
  %68 = or i32 %65, %67
  %69 = load i32, ptr %57, align 4
  %70 = call i32 @llvm.umax.i32(i32 %69, i32 4) #14
  %71 = add i32 %68, %70
  store i32 0, ptr %58, align 4
  %72 = getelementptr inbounds %struct.dwc3, ptr %62, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  store i32 %73, ptr %59, align 4
  %74 = shl i32 %71, 16
  %75 = or i32 %74, 6
  %76 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %75, ptr noundef nonnull %3) #14
  switch i32 %76, label %77 [
    i32 -11, label %78
    i32 0, label %78
  ]

77:                                               ; preds = %61
  store i32 0, ptr %60, align 4
  store i8 0, ptr %52, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  br label %238

78:                                               ; preds = %61, %61
  %79 = load i8, ptr %52, align 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 %76, ptr %60, align 4
  br label %82

82:                                               ; preds = %81, %78
  %83 = add i8 %79, 1
  store i8 %83, ptr %52, align 1
  %84 = icmp eq i32 %76, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #14
  %86 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 24
  %89 = icmp eq i32 %88, 8
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 14
  %92 = load i8, ptr %91, align 4
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 16
  %95 = or i32 %94, 2312
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #14
  %96 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %95, ptr noundef nonnull %2) #14
  %97 = icmp ne i32 %96, 0
  %98 = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  %99 = xor i1 %98, true
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %102, !prof !25

101:                                              ; preds = %90
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #14
  br label %102

102:                                              ; preds = %101, %90
  store i8 0, ptr %91, align 4
  %103 = load i32, ptr %86, align 4
  %104 = or i32 %103, 16
  store i32 %104, ptr %86, align 4
  br label %105

105:                                              ; preds = %102, %85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  br label %238

106:                                              ; preds = %82
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  %107 = icmp ult i8 %83, 2
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = load ptr, ptr %7, align 4
  br label %61

110:                                              ; preds = %106, %51
  %111 = phi i8 [ %53, %51 ], [ %83, %106 ]
  %112 = xor i1 %54, true
  %113 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 20
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  %116 = or i1 %54, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %110
  %118 = or i1 %115, %112
  br i1 %118, label %119, label %126

119:                                              ; preds = %117
  %120 = and i1 %54, %115
  br i1 %120, label %126, label %121

121:                                              ; preds = %119
  %122 = and i1 %115, %112
  %123 = zext i8 %111 to i32
  %124 = shl nuw nsw i32 %123, 14
  %125 = select i1 %122, i32 0, i32 %124
  br label %126

126:                                              ; preds = %121, %119, %117, %110
  %127 = phi i32 [ 16384, %110 ], [ 32768, %117 ], [ 49152, %119 ], [ %125, %121 ]
  %128 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 15
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, 16383
  %131 = or i32 %130, %127
  %132 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 16
  %133 = load i32, ptr %132, align 4
  %134 = call i32 @llvm.umax.i32(i32 %133, i32 4) #14
  %135 = add i32 %131, %134
  store i32 %135, ptr %128, align 4
  store i32 0, ptr %113, align 4
  store i8 0, ptr %52, align 1
  %136 = call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %0) #14
  br label %238

137:                                              ; preds = %46, %40, %35, %33, %25, %20
  %138 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 5
  %139 = load i8, ptr %138, align 1
  %140 = icmp ult i8 %139, 15
  br i1 %140, label %141, label %179

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 18
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.usb_gadget, ptr %143, i32 0, i32 5
  %145 = load i32, ptr %144, align 4
  %146 = icmp ugt i32 %145, 2
  br i1 %146, label %147, label %179

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 30
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr i8, ptr %149, i32 1548
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %152 = getelementptr i8, ptr %149, i32 -49408
  %153 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %147
  %156 = tail call ptr @llvm.thread.pointer() #14
  %157 = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 2
  %158 = load i32, ptr %157, align 8
  %159 = lshr i32 %158, 5
  %160 = getelementptr i32, ptr @__cpu_online_mask, i32 %159
  %161 = load volatile i32, ptr %160, align 4
  %162 = and i32 %158, 31
  %163 = shl nuw i32 1, %162
  %164 = and i32 %163, %161
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %155
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %167 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %152, i32 noundef 50956, i32 noundef %151) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %168

168:                                              ; preds = %166, %155, %147
  %169 = lshr i32 %151, 3
  %170 = and i32 %169, 16383
  %171 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 15
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, 16383
  %174 = icmp ult i32 %170, %173
  %175 = and i32 %172, -16384
  %176 = or i32 %175, %170
  %177 = add i32 %176, 16384
  %178 = select i1 %174, i32 %177, i32 %176
  store i32 %178, ptr %171, align 4
  br label %179

179:                                              ; preds = %168, %141, %137
  %180 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 15
  %181 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 16
  %182 = load i32, ptr %180, align 4
  %183 = load i32, ptr %181, align 4
  %184 = add i32 %183, %182
  %185 = sub i32 0, %183
  %186 = and i32 %184, %185
  store i32 %186, ptr %180, align 4
  %187 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %0)
  %188 = icmp eq i32 %187, -11
  br i1 %188, label %189, label %238

189:                                              ; preds = %179
  %190 = load i32, ptr %180, align 4
  %191 = load i32, ptr %181, align 4
  %192 = shl i32 %191, 1
  %193 = add i32 %192, %190
  %194 = sub i32 0, %191
  %195 = and i32 %193, %194
  store i32 %195, ptr %180, align 4
  %196 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %0)
  %197 = icmp eq i32 %196, -11
  br i1 %197, label %198, label %238

198:                                              ; preds = %189
  %199 = load i32, ptr %180, align 4
  %200 = load i32, ptr %181, align 4
  %201 = mul i32 %200, 3
  %202 = add i32 %201, %199
  %203 = sub i32 0, %200
  %204 = and i32 %202, %203
  store i32 %204, ptr %180, align 4
  %205 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %0)
  %206 = icmp eq i32 %205, -11
  br i1 %206, label %207, label %238

207:                                              ; preds = %198
  %208 = load i32, ptr %180, align 4
  %209 = load i32, ptr %181, align 4
  %210 = shl i32 %209, 2
  %211 = add i32 %210, %208
  %212 = sub i32 0, %209
  %213 = and i32 %211, %212
  store i32 %213, ptr %180, align 4
  %214 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %0)
  %215 = icmp eq i32 %214, -11
  br i1 %215, label %216, label %238

216:                                              ; preds = %207
  %217 = load i32, ptr %180, align 4
  %218 = load i32, ptr %181, align 4
  %219 = mul i32 %218, 5
  %220 = add i32 %219, %217
  %221 = sub i32 0, %218
  %222 = and i32 %220, %221
  store i32 %222, ptr %180, align 4
  %223 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %0)
  %224 = icmp eq i32 %223, -11
  br i1 %224, label %225, label %238

225:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %226 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 14
  %227 = load i8, ptr %226, align 4
  %228 = zext i8 %227 to i32
  %229 = shl nuw nsw i32 %228, 16
  %230 = or i32 %229, 264
  store i8 0, ptr %226, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false)
  %231 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %230, ptr noundef nonnull %4)
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %225
  %234 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %235 = load i32, ptr %234, align 4
  %236 = or i32 %235, 16
  store i32 %236, ptr %234, align 4
  br label %237

237:                                              ; preds = %233, %225
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  br label %238

238:                                              ; preds = %237, %216, %207, %198, %189, %179, %126, %105, %77, %16
  %239 = phi i32 [ -11, %16 ], [ %231, %237 ], [ %136, %126 ], [ 0, %105 ], [ 0, %77 ], [ %187, %179 ], [ %196, %189 ], [ %205, %198 ], [ %214, %207 ], [ %223, %216 ]
  ret i32 %239
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dwc3_gadget_ep0_set_halt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_ep0_send_delayed_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_gadget_disconnect_interrupt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @dwc3_gadget_set_link_state(ptr noundef %0, i32 noundef 5)
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1540
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %7 = getelementptr i8, ptr %4, i32 -49408
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #14
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %22 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %7, i32 noundef 50948, i32 noundef %6) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %23

23:                                               ; preds = %21, %10, %1
  %24 = and i32 %6, -5601
  %25 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %26 = getelementptr i8, ptr %25, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #14, !srcloc !13
  %27 = getelementptr i8, ptr %25, i32 -49408
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = tail call ptr @llvm.thread.pointer() #14
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %42 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %27, i32 noundef 50948, i32 noundef %24) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %43

43:                                               ; preds = %41, %30, %23
  %44 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %45 = load i48, ptr %44, align 4
  %46 = and i48 %45, 4398046511104
  %47 = icmp eq i48 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 19
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.usb_gadget_driver, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  %56 = load i16, ptr %55, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %58 = load ptr, ptr %49, align 4
  %59 = getelementptr inbounds %struct.usb_gadget_driver, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %62 = load ptr, ptr %61, align 4
  tail call void %60(ptr noundef %62) #14
  tail call void @_raw_spin_lock(ptr noundef %55) #14
  br label %63

63:                                               ; preds = %54, %48, %43
  %64 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.usb_gadget, ptr %65, i32 0, i32 5
  store i32 0, ptr %66, align 4
  %67 = load i48, ptr %44, align 4
  %68 = and i48 %67, -8193
  store i48 %68, ptr %44, align 4
  %69 = load ptr, ptr %64, align 4
  tail call void @usb_gadget_set_state(ptr noundef %69, i32 noundef 0) #14
  %70 = load i48, ptr %44, align 4
  %71 = and i48 %70, -2
  store i48 %71, ptr %44, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_gadget_reset_interrupt(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %4 = load i48, ptr %3, align 4
  %5 = and i48 %4, -2
  store i48 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 54
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 21811
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 55
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 1429411977
  %13 = and i48 %4, 8192
  %14 = icmp eq i48 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call fastcc void @dwc3_gadget_disconnect_interrupt(ptr noundef %0)
  br label %17

17:                                               ; preds = %16, %9, %1
  %18 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = load i48, ptr %3, align 4
  %23 = and i48 %22, 4398046511104
  %24 = icmp eq i48 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.usb_gadget, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !21
  %35 = load ptr, ptr %26, align 4
  %36 = load ptr, ptr %18, align 4
  tail call void @usb_gadget_udc_reset(ptr noundef %35, ptr noundef %36) #14
  tail call void @_raw_spin_lock(ptr noundef %32) #14
  br label %37

37:                                               ; preds = %31, %25, %21, %17
  %38 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 65
  %39 = load i8, ptr %38, align 1
  %40 = icmp ugt i8 %39, 2
  br i1 %40, label %41, label %54

41:                                               ; preds = %49, %37
  %42 = phi i8 [ %50, %49 ], [ %39, %37 ]
  %43 = phi i32 [ %51, %49 ], [ 2, %37 ]
  %44 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  tail call fastcc void @dwc3_remove_requests(ptr noundef nonnull %45) #14
  %48 = load i8, ptr %38, align 1
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi i8 [ %42, %41 ], [ %48, %47 ]
  %51 = add nuw nsw i32 %43, 1
  %52 = zext i8 %50 to i32
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %41, label %54

54:                                               ; preds = %49, %37
  %55 = load i48, ptr %3, align 4
  %56 = or i48 %55, 1
  store i48 %56, ptr %3, align 4
  %57 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 1540
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %61 = getelementptr i8, ptr %58, i32 -49408
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %54
  %65 = tail call ptr @llvm.thread.pointer() #14
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 5
  %69 = getelementptr i32, ptr @__cpu_online_mask, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %67, 31
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %64
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %76 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %61, i32 noundef 50948, i32 noundef %60) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %77

77:                                               ; preds = %75, %64, %54
  %78 = and i32 %60, -511
  %79 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %80 = getelementptr i8, ptr %79, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #14, !srcloc !13
  %81 = getelementptr i8, ptr %79, i32 -49408
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = tail call ptr @llvm.thread.pointer() #14
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 5
  %89 = getelementptr i32, ptr @__cpu_online_mask, i32 %88
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %87, 31
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %84
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %96 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %81, i32 noundef 50948, i32 noundef %78) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %97

97:                                               ; preds = %95, %84, %77
  %98 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 69
  store i8 0, ptr %98, align 4
  br label %99

99:                                               ; preds = %140, %97
  %100 = phi i32 [ 1, %97 ], [ %141, %140 ]
  %101 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 %100
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %140, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.dwc3_ep, ptr %102, i32 0, i32 9
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 2
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %140, label %109

109:                                              ; preds = %104
  %110 = and i32 %106, -3
  store i32 %110, ptr %105, align 4
  %111 = getelementptr inbounds %struct.dwc3_ep, ptr %102, i32 0, i32 7
  %112 = load ptr, ptr %111, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #14
  %113 = getelementptr inbounds %struct.dwc3_ep, ptr %102, i32 0, i32 18
  %114 = load i8, ptr %113, align 4
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.dwc3, ptr %112, i32 0, i32 54
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 21811
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.dwc3, ptr %112, i32 0, i32 55
  %123 = load i32, ptr %122, align 4
  %124 = icmp ult i32 %123, 1429415434
  br i1 %124, label %132, label %125

125:                                              ; preds = %121, %117
  %126 = getelementptr inbounds %struct.dwc3, ptr %112, i32 0, i32 18
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.usb_gadget, ptr %127, i32 0, i32 5
  %129 = load i32, ptr %128, align 4
  %130 = icmp ult i32 %129, 5
  %131 = select i1 %130, i32 5, i32 2053
  br label %132

132:                                              ; preds = %125, %121, %109
  %133 = phi i32 [ 5, %121 ], [ 5, %109 ], [ %131, %125 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #14
  %134 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef nonnull %102, i32 noundef %133, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #14
  %135 = icmp ne i32 %134, 0
  %136 = load i1, ptr @dwc3_clear_stall_all_ep.__already_done, align 1
  %137 = xor i1 %136, true
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %139, label %140, !prof !25

139:                                              ; preds = %132
  store i1 true, ptr @dwc3_clear_stall_all_ep.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3670, i32 noundef 9, ptr noundef null) #14
  br label %140

140:                                              ; preds = %139, %132, %104, %99
  %141 = add nuw nsw i32 %100, 1
  %142 = icmp eq i32 %141, 32
  br i1 %142, label %143, label %99

143:                                              ; preds = %140
  %144 = load ptr, ptr %57, align 4
  %145 = getelementptr i8, ptr %144, i32 1536
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #14, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %147 = getelementptr i8, ptr %144, i32 -49408
  %148 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %143
  %151 = tail call ptr @llvm.thread.pointer() #14
  %152 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 2
  %153 = load i32, ptr %152, align 8
  %154 = lshr i32 %153, 5
  %155 = getelementptr i32, ptr @__cpu_online_mask, i32 %154
  %156 = load volatile i32, ptr %155, align 4
  %157 = and i32 %153, 31
  %158 = shl nuw i32 1, %157
  %159 = and i32 %158, %156
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %150
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %162 = call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %147, i32 noundef 50944, i32 noundef %146) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %163

163:                                              ; preds = %161, %150, %143
  %164 = and i32 %146, -1017
  %165 = load ptr, ptr %57, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  call void @arm_heavy_mb() #14
  %166 = getelementptr i8, ptr %165, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #14, !srcloc !13
  %167 = getelementptr i8, ptr %165, i32 -49408
  %168 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %163
  %171 = tail call ptr @llvm.thread.pointer() #14
  %172 = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 2
  %173 = load i32, ptr %172, align 8
  %174 = lshr i32 %173, 5
  %175 = getelementptr i32, ptr @__cpu_online_mask, i32 %174
  %176 = load volatile i32, ptr %175, align 4
  %177 = and i32 %173, 31
  %178 = shl nuw i32 1, %177
  %179 = and i32 %178, %176
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %170
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %182 = call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %167, i32 noundef 50944, i32 noundef %164) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %183

183:                                              ; preds = %181, %170, %163
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_udc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dwc3_gadget_ep_enable(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %4 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %5 = alloca %struct.dwc3_gadget_ep_cmd_params, align 8
  %6 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %7 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %8 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %212

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 79
  %18 = load i48, ptr %17, align 4
  %19 = and i48 %18, 2048
  %20 = icmp eq i48 %19, 0
  br i1 %20, label %186, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = icmp sgt i8 %23, -1
  br i1 %24, label %186, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 12
  %27 = load i8, ptr %26, align 2
  %28 = icmp ugt i8 %27, 1
  %29 = and i32 %13, 4096
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %186

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 66, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 65535
  %36 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %37 = load i56, ptr %36, align 2
  %38 = and i56 %37, 33776997205278720
  %39 = icmp ne i56 %38, 0
  %40 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 3
  %43 = icmp eq i8 %42, 2
  %44 = select i1 %39, i1 %43, i1 false
  %45 = icmp eq i8 %42, 1
  %46 = select i1 %44, i1 true, i1 %45
  %47 = select i1 %46, i32 3, i32 1
  %48 = and i56 %37, 34902897112121344
  %49 = icmp ugt i56 %48, 6755399441055744
  %50 = select i1 %49, i1 %43, i1 false
  %51 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 54
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 13105
  %54 = select i1 %50, i1 %53, i1 false
  br i1 %54, label %55, label %64

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 77
  %57 = load i8, ptr %56, align 4
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 66
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, 11
  %62 = and i32 %61, 31
  %63 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 54
  br label %84

64:                                               ; preds = %32
  %65 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 66
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 8
  %68 = and i32 %67, 255
  %69 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 54
  %70 = icmp eq i32 %52, 13106
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 66, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 768
  %75 = or i32 %74, %68
  %76 = lshr i32 %75, 3
  br label %84

77:                                               ; preds = %64
  %78 = lshr i32 %68, 3
  %79 = icmp eq i32 %52, 21811
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 55
  %82 = load i32, ptr %81, align 4
  %83 = icmp ult i32 %82, 1429416202
  br i1 %83, label %89, label %84

84:                                               ; preds = %80, %77, %71, %55
  %85 = phi ptr [ %69, %71 ], [ %69, %80 ], [ %69, %77 ], [ %63, %55 ]
  %86 = phi i32 [ %47, %71 ], [ %47, %80 ], [ %47, %77 ], [ %58, %55 ]
  %87 = phi i32 [ %76, %71 ], [ %78, %80 ], [ %78, %77 ], [ %62, %55 ]
  %88 = add nuw nsw i32 %87, 1024
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi ptr [ %85, %84 ], [ %69, %80 ]
  %91 = phi i32 [ %86, %84 ], [ %47, %80 ]
  %92 = phi i32 [ %87, %84 ], [ %78, %80 ]
  %93 = phi i32 [ %88, %84 ], [ 1024, %80 ]
  %94 = udiv i32 %93, %92
  %95 = add nuw nsw i32 %94, 1
  %96 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 81
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 83
  %99 = load i32, ptr %98, align 4
  %100 = sub i32 %97, %99
  %101 = sub nuw nsw i32 -2, %94
  %102 = mul i32 %100, %101
  %103 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 82
  %104 = load i32, ptr %103, align 4
  %105 = sub i32 %35, %104
  %106 = add i32 %105, %102
  %107 = tail call i32 @llvm.smax.i32(i32 %106, i32 0) #14
  %108 = add nsw i32 %91, -1
  %109 = mul i32 %95, %108
  %110 = tail call i32 @llvm.smin.i32(i32 %107, i32 %109) #14
  %111 = add nuw nsw i32 %94, 2
  %112 = add i32 %111, %110
  %113 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 30
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr i8, ptr %114, i32 512
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %117 = getelementptr i8, ptr %114, i32 -49408
  %118 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %89
  %121 = tail call ptr @llvm.thread.pointer() #14
  %122 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %122, align 8
  %124 = lshr i32 %123, 5
  %125 = getelementptr i32, ptr @__cpu_online_mask, i32 %124
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %123, 31
  %128 = shl nuw i32 1, %127
  %129 = and i32 %128, %126
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %120
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %132 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %117, i32 noundef 49920, i32 noundef %116) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %133

133:                                              ; preds = %131, %120, %89
  %134 = and i32 %116, -65536
  %135 = load i32, ptr %103, align 4
  %136 = shl i32 %135, 16
  %137 = add i32 %136, %134
  %138 = or i32 %137, %112
  %139 = load i32, ptr %90, align 4
  %140 = icmp eq i32 %139, 21811
  %141 = and i32 %112, 32767
  %142 = and i32 %112, 65535
  %143 = select i1 %140, i32 %142, i32 %141
  %144 = add i32 %143, %135
  store i32 %144, ptr %103, align 4
  %145 = icmp slt i32 %144, %35
  br i1 %145, label %146, label %176

146:                                              ; preds = %133
  %147 = load ptr, ptr %113, align 4
  %148 = load i8, ptr %26, align 2
  %149 = lshr i8 %148, 1
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 2
  %152 = add nuw nsw i32 %151, 49920
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %153 = getelementptr i8, ptr %147, i32 %152
  %154 = getelementptr i8, ptr %153, i32 -49408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %138) #14, !srcloc !13
  %155 = getelementptr i8, ptr %147, i32 -49408
  %156 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %146
  %159 = tail call ptr @llvm.thread.pointer() #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %170 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %155, i32 noundef %152, i32 noundef %138) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %171

171:                                              ; preds = %169, %158, %146
  %172 = load i32, ptr %12, align 4
  %173 = or i32 %172, 4096
  store i32 %173, ptr %12, align 4
  %174 = load i32, ptr %98, align 4
  %175 = add i32 %174, 1
  store i32 %175, ptr %98, align 4
  br label %186

176:                                              ; preds = %133
  %177 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 12
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.27, i32 noundef %144, i32 noundef %35, ptr noundef %180, i32 noundef %138) #15
  %181 = load i32, ptr %90, align 4
  %182 = icmp eq i32 %181, 21811
  %183 = select i1 %182, i32 %142, i32 %141
  %184 = load i32, ptr %103, align 4
  %185 = sub i32 %184, %183
  store i32 %185, ptr %103, align 4
  br label %460

186:                                              ; preds = %171, %25, %21, %16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  %187 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 12
  %188 = load i8, ptr %187, align 2
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %207

190:                                              ; preds = %186
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false) #14
  %191 = load ptr, ptr %10, align 4
  %192 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef 9, ptr noundef nonnull %6) #14
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %5, i32 0, i32 2
  br label %196

196:                                              ; preds = %204, %194
  %197 = phi i32 [ 0, %194 ], [ %205, %204 ]
  %198 = getelementptr %struct.dwc3, ptr %191, i32 0, i32 17, i32 %197
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  store i64 0, ptr %5, align 8
  store i32 1, ptr %195, align 8
  %202 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef nonnull %199, i32 noundef 2, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %201, %196
  %205 = add nuw nsw i32 %197, 1
  %206 = icmp eq i32 %205, 32
  br i1 %206, label %207, label %196

207:                                              ; preds = %204, %186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  %208 = load ptr, ptr %10, align 4
  %209 = load ptr, ptr %8, align 4
  br label %212

210:                                              ; preds = %201, %190
  %211 = phi i32 [ %192, %190 ], [ %202, %201 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  br label %460

212:                                              ; preds = %207, %2
  %213 = phi ptr [ %209, %207 ], [ %9, %2 ]
  %214 = phi ptr [ %208, %207 ], [ %11, %2 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %215 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 10
  %216 = load ptr, ptr %215, align 4
  store i32 0, ptr %4, align 4
  %217 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %213, i32 0, i32 3
  %218 = load i8, ptr %217, align 1
  %219 = shl i8 %218, 1
  %220 = and i8 %219, 6
  %221 = zext i8 %220 to i32
  %222 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %213, i32 0, i32 4
  %223 = load i16, ptr %222, align 1
  %224 = shl i16 %223, 3
  %225 = and i16 %224, 16376
  %226 = zext i16 %225 to i32
  %227 = or i32 %226, %221
  %228 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %4, i32 0, i32 2
  %229 = getelementptr inbounds %struct.dwc3, ptr %214, i32 0, i32 18
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.usb_gadget, ptr %230, i32 0, i32 5
  %232 = load i32, ptr %231, align 4
  %233 = icmp ugt i32 %232, 4
  br i1 %233, label %234, label %243

234:                                              ; preds = %212
  %235 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %236 = load i56, ptr %235, align 2
  %237 = lshr i56 %236, 28
  %238 = trunc i56 %237 to i32
  %239 = and i32 %238, 62914560
  %240 = add nuw nsw i32 %239, 62914560
  %241 = and i32 %240, 62914560
  %242 = or i32 %241, %227
  br label %243

243:                                              ; preds = %234, %212
  %244 = phi i32 [ %242, %234 ], [ %227, %212 ]
  %245 = or i32 %244, %1
  store i32 %245, ptr %228, align 4
  %246 = load i8, ptr %217, align 1
  %247 = and i8 %246, 3
  %248 = icmp eq i8 %247, 0
  %249 = select i1 %248, i32 256, i32 0
  %250 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 12
  %251 = load i8, ptr %250, align 2
  %252 = icmp ult i8 %251, 2
  %253 = icmp eq i8 %247, 1
  %254 = select i1 %252, i1 true, i1 %253
  %255 = or i32 %249, 1024
  %256 = select i1 %254, i32 %255, i32 %249
  %257 = icmp eq ptr %216, null
  br i1 %257, label %272, label %258

258:                                              ; preds = %243
  %259 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, ptr %216, i32 0, i32 3
  %260 = load i8, ptr %259, align 1
  %261 = and i8 %260, 31
  %262 = icmp ne i8 %261, 0
  %263 = icmp eq i8 %247, 2
  %264 = select i1 %262, i1 %263, i1 false
  br i1 %264, label %265, label %272

265:                                              ; preds = %258
  %266 = or i32 %256, 16785664
  %267 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %268 = load i8, ptr %267, align 4
  %269 = or i8 %268, 2
  store i8 %269, ptr %267, align 4
  %270 = load i8, ptr %217, align 1
  %271 = and i8 %270, 3
  br label %272

272:                                              ; preds = %265, %258, %243
  %273 = phi i8 [ %271, %265 ], [ %247, %258 ], [ %247, %243 ]
  %274 = phi i32 [ %266, %265 ], [ %256, %258 ], [ %256, %243 ]
  %275 = icmp eq i8 %273, 0
  %276 = or i32 %274, 512
  %277 = select i1 %275, i32 %274, i32 %276
  %278 = and i8 %251, 31
  %279 = zext i8 %278 to i32
  %280 = shl nuw nsw i32 %279, 25
  %281 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %4, i32 0, i32 1
  %282 = or i32 %277, %280
  store i32 %282, ptr %281, align 4
  %283 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %284 = load i8, ptr %283, align 4
  %285 = and i8 %284, 1
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %293, label %287

287:                                              ; preds = %272
  %288 = lshr i8 %251, 1
  %289 = and i8 %288, 31
  %290 = zext i8 %289 to i32
  %291 = shl nuw nsw i32 %290, 17
  %292 = or i32 %291, %245
  store i32 %292, ptr %228, align 4
  br label %293

293:                                              ; preds = %287, %272
  %294 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %213, i32 0, i32 5
  %295 = load i8, ptr %294, align 1
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %320, label %297

297:                                              ; preds = %293
  %298 = add i8 %295, -1
  %299 = call i8 @llvm.umin.i8(i8 %298, i8 13) #14
  %300 = load i8, ptr %217, align 1
  %301 = and i8 %300, 3
  %302 = icmp eq i8 %301, 3
  br i1 %302, label %303, label %310

303:                                              ; preds = %297
  %304 = load ptr, ptr %229, align 4
  %305 = getelementptr inbounds %struct.usb_gadget, ptr %304, i32 0, i32 5
  %306 = load i32, ptr %305, align 4
  %307 = icmp eq i32 %306, 2
  br i1 %307, label %308, label %310

308:                                              ; preds = %303
  %309 = zext i8 %295 to i32
  br label %314

310:                                              ; preds = %303, %297
  %311 = zext i8 %295 to i32
  %312 = add nsw i32 %311, -1
  %313 = shl nuw i32 1, %312
  br label %314

314:                                              ; preds = %310, %308
  %315 = phi i32 [ %313, %310 ], [ %309, %308 ]
  %316 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 16
  store i32 %315, ptr %316, align 4
  %317 = zext i8 %299 to i32
  %318 = shl nuw nsw i32 %317, 16
  %319 = or i32 %318, %282
  store i32 %319, ptr %281, align 4
  br label %320

320:                                              ; preds = %314, %293
  %321 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %460

323:                                              ; preds = %320
  %324 = load i32, ptr %12, align 4
  %325 = and i32 %324, 1
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %393

327:                                              ; preds = %323
  %328 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 3
  %329 = load i8, ptr %328, align 1
  %330 = and i8 %329, 3
  %331 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 13
  store i8 %330, ptr %331, align 1
  %332 = or i32 %324, 1
  store i32 %332, ptr %12, align 4
  %333 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 30
  %334 = load ptr, ptr %333, align 4
  %335 = getelementptr i8, ptr %334, i32 1568
  %336 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %335) #14, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %337 = getelementptr i8, ptr %334, i32 -49408
  %338 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %339 = icmp sgt i32 %338, 0
  br i1 %339, label %340, label %353

340:                                              ; preds = %327
  %341 = tail call ptr @llvm.thread.pointer() #14
  %342 = getelementptr inbounds %struct.thread_info, ptr %341, i32 0, i32 2
  %343 = load i32, ptr %342, align 8
  %344 = lshr i32 %343, 5
  %345 = getelementptr i32, ptr @__cpu_online_mask, i32 %344
  %346 = load volatile i32, ptr %345, align 4
  %347 = and i32 %343, 31
  %348 = shl nuw i32 1, %347
  %349 = and i32 %348, %346
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %353, label %351

351:                                              ; preds = %340
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %352 = call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %337, i32 noundef 50976, i32 noundef %336) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %353

353:                                              ; preds = %351, %340, %327
  %354 = load i8, ptr %250, align 2
  %355 = zext i8 %354 to i32
  %356 = shl nuw i32 1, %355
  %357 = or i32 %356, %336
  %358 = load ptr, ptr %333, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  call void @arm_heavy_mb() #14
  %359 = getelementptr i8, ptr %358, i32 1568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %359, i32 %357) #14, !srcloc !13
  %360 = getelementptr i8, ptr %358, i32 -49408
  %361 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %362 = icmp sgt i32 %361, 0
  br i1 %362, label %363, label %376

363:                                              ; preds = %353
  %364 = tail call ptr @llvm.thread.pointer() #14
  %365 = getelementptr inbounds %struct.thread_info, ptr %364, i32 0, i32 2
  %366 = load i32, ptr %365, align 8
  %367 = lshr i32 %366, 5
  %368 = getelementptr i32, ptr @__cpu_online_mask, i32 %367
  %369 = load volatile i32, ptr %368, align 4
  %370 = and i32 %366, 31
  %371 = shl nuw i32 1, %370
  %372 = and i32 %371, %369
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %376, label %374

374:                                              ; preds = %363
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %375 = call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %360, i32 noundef 50976, i32 noundef %357) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %376

376:                                              ; preds = %374, %363, %353
  %377 = load i8, ptr %328, align 1
  %378 = and i8 %377, 3
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %443, label %380

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 11
  store i8 0, ptr %381, align 1
  %382 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 10
  store i8 0, ptr %382, align 4
  %383 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 5
  %384 = load ptr, ptr %383, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %384, i8 0, i32 4096, i1 false)
  %385 = load ptr, ptr %383, align 4
  %386 = getelementptr %struct.dwc3_trb, ptr %385, i32 255
  %387 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 6
  %388 = load i32, ptr %387, align 4
  store i32 %388, ptr %386, align 1
  %389 = getelementptr %struct.dwc3_trb, ptr %385, i32 255, i32 1
  store i32 0, ptr %389, align 1
  %390 = getelementptr %struct.dwc3_trb, ptr %385, i32 255, i32 3
  %391 = load i32, ptr %390, align 1
  %392 = or i32 %391, 129
  store i32 %392, ptr %390, align 1
  br label %393

393:                                              ; preds = %380, %323
  %394 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 3
  %395 = load i8, ptr %394, align 1
  %396 = and i8 %395, 2
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %443, label %398

398:                                              ; preds = %393
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %399 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 6
  store i32 0, ptr %7, align 4
  %400 = load i32, ptr %399, align 4
  %401 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %7, i32 0, i32 2
  store i32 0, ptr %401, align 4
  %402 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %7, i32 0, i32 1
  store i32 %400, ptr %402, align 4
  %403 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %7)
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %459, label %405

405:                                              ; preds = %398
  %406 = load i8, ptr %283, align 4
  %407 = and i8 %406, 2
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %441, label %409

409:                                              ; preds = %405
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %410 = load i32, ptr %12, align 4
  %411 = and i32 %410, 24
  %412 = icmp eq i32 %411, 8
  br i1 %412, label %413, label %429

413:                                              ; preds = %409
  %414 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 14
  %415 = load i8, ptr %414, align 4
  %416 = zext i8 %415 to i32
  %417 = shl nuw nsw i32 %416, 16
  %418 = or i32 %417, 2312
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #14
  %419 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %418, ptr noundef nonnull %3) #14
  %420 = icmp ne i32 %419, 0
  %421 = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  %422 = xor i1 %421, true
  %423 = select i1 %420, i1 %422, i1 false
  br i1 %423, label %424, label %425, !prof !25

424:                                              ; preds = %413
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #14
  br label %425

425:                                              ; preds = %424, %413
  store i8 0, ptr %414, align 4
  %426 = load i32, ptr %12, align 4
  %427 = or i32 %426, 16
  store i32 %427, ptr %12, align 4
  %428 = load i8, ptr %283, align 4
  br label %429

429:                                              ; preds = %425, %409
  %430 = phi i32 [ %410, %409 ], [ %427, %425 ]
  %431 = phi i8 [ %406, %409 ], [ %428, %425 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  %432 = and i8 %431, 1
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %439, label %434

434:                                              ; preds = %429
  %435 = getelementptr inbounds %struct.dwc3, ptr %11, i32 0, i32 66, i32 9
  %436 = load i32, ptr %435, align 4
  %437 = and i32 %436, 1
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %434, %429
  %440 = or i32 %430, 512
  store i32 %440, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  br label %443

441:                                              ; preds = %405
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  br label %443

442:                                              ; preds = %434
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  br label %443

443:                                              ; preds = %442, %441, %439, %393, %376
  %444 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_enable, i32 0, i32 1), align 4
  %445 = icmp sgt i32 %444, 0
  br i1 %445, label %446, label %460

446:                                              ; preds = %443
  %447 = tail call ptr @llvm.thread.pointer() #14
  %448 = getelementptr inbounds %struct.thread_info, ptr %447, i32 0, i32 2
  %449 = load i32, ptr %448, align 8
  %450 = lshr i32 %449, 5
  %451 = getelementptr i32, ptr @__cpu_online_mask, i32 %450
  %452 = load volatile i32, ptr %451, align 4
  %453 = and i32 %449, 31
  %454 = shl nuw i32 1, %453
  %455 = and i32 %454, %452
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %460, label %457

457:                                              ; preds = %446
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  %458 = call i32 @__traceiter_dwc3_gadget_ep_enable(ptr noundef null, ptr noundef %0) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !41
  br label %460

459:                                              ; preds = %398
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  br label %460

460:                                              ; preds = %459, %457, %446, %443, %320, %210, %176
  %461 = phi i32 [ -12, %176 ], [ %211, %210 ], [ %321, %320 ], [ %403, %459 ], [ 0, %443 ], [ 0, %446 ], [ 0, %457 ]
  ret i32 %461
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_gadget_ep_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_debugfs_create_endpoint_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dwc3_gadget_ep0_enable(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #11 {
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dwc3_gadget_ep0_disable(ptr nocapture noundef readnone %0) #11 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dwc3_gadget_ep_alloc_request(ptr noundef %0, i32 noundef %1) #0 {
  %3 = or i32 %1, 256
  %4 = and i32 %1, 17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !24

6:                                                ; preds = %2
  %7 = and i32 %1, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 2
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %11, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %3, i32 noundef 112) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dwc3_request, ptr %14, i32 0, i32 13
  %20 = load i8, ptr %19, align 4
  %21 = shl i8 %18, 1
  %22 = and i8 %21, 2
  %23 = and i8 %20, -3
  %24 = or i8 %23, %22
  store i8 %24, ptr %19, align 4
  %25 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 12
  %26 = load i8, ptr %25, align 2
  %27 = getelementptr inbounds %struct.dwc3_request, ptr %14, i32 0, i32 9
  store i8 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dwc3_request, ptr %14, i32 0, i32 2
  store ptr %0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.dwc3_request, ptr %14, i32 0, i32 8
  store i32 -1, ptr %29, align 8
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_alloc_request, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %16
  %33 = tail call ptr @llvm.thread.pointer() #14
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !42
  %44 = tail call i32 @__traceiter_dwc3_alloc_request(ptr noundef null, ptr noundef nonnull %14) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !43
  br label %45

45:                                               ; preds = %43, %32, %16, %10
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc3_gadget_ep_free_request(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_free_request, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #14
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !44
  %17 = tail call i32 @__traceiter_dwc3_free_request(ptr noundef null, ptr noundef %1) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !45
  br label %18

18:                                               ; preds = %16, %5, %2
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_ep0_queue(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_ep_dequeue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %4 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ep_dequeue, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #14
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !46
  %20 = tail call i32 @__traceiter_dwc3_ep_dequeue(ptr noundef null, ptr noundef %1) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !47
  br label %21

21:                                               ; preds = %19, %8, %2
  %22 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 10
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #14
  %24 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 1
  br label %25

25:                                               ; preds = %29, %21
  %26 = phi ptr [ %24, %21 ], [ %27, %29 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %24
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %27, i32 -56
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %98, label %25

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 2
  br label %34

34:                                               ; preds = %38, %32
  %35 = phi ptr [ %33, %32 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %33
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 -56
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %41, label %34

41:                                               ; preds = %38
  tail call void @dwc3_gadget_giveback(ptr noundef %0, ptr noundef %1, i32 noundef -104)
  br label %98

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 3
  br label %44

44:                                               ; preds = %48, %42
  %45 = phi ptr [ %43, %42 ], [ %46, %48 ]
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %43
  br i1 %47, label %93, label %48

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %46, i32 -56
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %51, label %44

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  %52 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 24
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 14
  %58 = load i8, ptr %57, align 4
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 16
  %61 = or i32 %60, 2312
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #14
  %62 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %61, ptr noundef nonnull %3) #14
  %63 = icmp ne i32 %62, 0
  %64 = load i1, ptr @dwc3_stop_active_transfer.__already_done, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !25

67:                                               ; preds = %56
  store i1 true, ptr @dwc3_stop_active_transfer.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3643, i32 noundef 9, ptr noundef null) #14
  br label %68

68:                                               ; preds = %67, %56
  store i8 0, ptr %57, align 4
  %69 = load i32, ptr %52, align 4
  %70 = or i32 %69, 16
  store i32 %70, ptr %52, align 4
  br label %71

71:                                               ; preds = %68, %51
  %72 = phi i32 [ %53, %51 ], [ %70, %68 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  %73 = load ptr, ptr %43, align 4
  %74 = icmp eq ptr %73, %43
  br i1 %74, label %90, label %75

75:                                               ; preds = %75, %71
  %76 = phi ptr [ %77, %75 ], [ %73, %71 ]
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %76, i32 8
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr i8, ptr %76, i32 32
  store i32 3, ptr %80, align 4
  %81 = getelementptr inbounds %struct.dwc3_ep, ptr %79, i32 0, i32 1
  %82 = getelementptr i8, ptr %76, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %83, ptr %84, align 4
  store volatile ptr %77, ptr %83, align 4
  %85 = getelementptr inbounds %struct.dwc3_ep, ptr %79, i32 0, i32 1, i32 1
  %86 = load ptr, ptr %85, align 4
  store ptr %76, ptr %85, align 4
  store ptr %81, ptr %76, align 4
  store ptr %86, ptr %82, align 4
  store volatile ptr %76, ptr %86, align 4
  %87 = icmp eq ptr %77, %43
  br i1 %87, label %88, label %75

88:                                               ; preds = %75
  %89 = load i32, ptr %52, align 4
  br label %90

90:                                               ; preds = %88, %71
  %91 = phi i32 [ %89, %88 ], [ %72, %71 ]
  %92 = and i32 %91, -129
  store i32 %92, ptr %52, align 4
  br label %98

93:                                               ; preds = %44
  %94 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 12
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.31, ptr noundef %1, ptr noundef %97) #15
  br label %98

98:                                               ; preds = %93, %90, %41, %29
  %99 = phi i32 [ 0, %41 ], [ 0, %90 ], [ -22, %93 ], [ 0, %29 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #14
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_ep0_set_halt(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_ep_set_wedge(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 10
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 4
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 12
  %10 = load i8, ptr %9, align 2
  %11 = icmp ult i8 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = tail call i32 @__dwc3_gadget_ep0_set_halt(ptr noundef %0, i32 noundef 1) #14
  br label %16

14:                                               ; preds = %1
  %15 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_alloc_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_ep_enable(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 5
  br i1 %9, label %10, label %42

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %12 = load i16, ptr %11, align 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = load i1, ptr @dwc3_gadget_ep_enable.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %37, !prof !25

24:                                               ; preds = %14
  store i1 true, ptr @dwc3_gadget_ep_enable.__already_done, align 1
  %25 = getelementptr inbounds %struct.dwc3, ptr %16, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = tail call ptr @dev_driver_string(ptr noundef %26) #14
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load ptr, ptr %28, align 4
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi ptr [ %33, %32 ], [ %30, %24 ]
  %36 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1073, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %27, ptr noundef %35, ptr noundef %36) #14
  br label %37

37:                                               ; preds = %34, %14
  br i1 %20, label %42, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.dwc3, ptr %16, i32 0, i32 10
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #14
  %41 = tail call fastcc i32 @__dwc3_gadget_ep_enable(ptr noundef nonnull %0, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #14
  br label %42

42:                                               ; preds = %38, %37, %10, %6, %2
  %43 = phi i32 [ %41, %38 ], [ -22, %6 ], [ -22, %2 ], [ -22, %10 ], [ 0, %37 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_ep_disable(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @dwc3_gadget_ep_disable.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %26, !prof !25

13:                                               ; preds = %3
  store i1 true, ptr @dwc3_gadget_ep_disable.__already_done, align 1
  %14 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @dev_driver_string(ptr noundef %15) #14
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load ptr, ptr %17, align 4
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi ptr [ %22, %21 ], [ %19, %13 ]
  %25 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1100, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef %16, ptr noundef %24, ptr noundef %25) #14
  br label %26

26:                                               ; preds = %23, %3
  br i1 %9, label %30, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 10
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #14
  tail call fastcc void @__dwc3_gadget_ep_disable(ptr noundef nonnull %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #14
  br label %30

30:                                               ; preds = %27, %26, %1
  %31 = phi i32 [ 0, %27 ], [ -22, %1 ], [ 0, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_ep_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 10
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #14
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %77, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 79
  %14 = load i48, ptr %13, align 4
  %15 = and i48 %14, 4097
  %16 = icmp eq i48 %15, 4097
  br i1 %16, label %17, label %77

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %23, label %21, !prof !24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dwc3_ep, ptr %19, i32 0, i32 17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1875, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef %1, ptr noundef %22) #14
  br label %77

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 5
  br i1 %26, label %27, label %29, !prof !25

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1880, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %28, ptr noundef %1) #14
  br label %77

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.dwc3, ptr %8, i32 0, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @__pm_runtime_resume(ptr noundef %31, i32 noundef 5) #14
  %33 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %34, align 4
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ep_queue, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = tail call ptr @llvm.thread.pointer() #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !48
  %49 = tail call i32 @__traceiter_dwc3_ep_queue(ptr noundef null, ptr noundef %1) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !49
  br label %50

50:                                               ; preds = %48, %37, %29
  %51 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 1
  %52 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 2
  %53 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 2, i32 1
  %54 = load ptr, ptr %53, align 4
  store ptr %51, ptr %53, align 4
  store ptr %52, ptr %51, align 4
  %55 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 1, i32 1
  store ptr %54, ptr %55, align 4
  store volatile ptr %51, ptr %54, align 4
  store i32 0, ptr %24, align 4
  %56 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 128
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %50
  %61 = and i32 %57, 22
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = or i32 %57, 64
  store i32 %64, ptr %56, align 4
  br label %77

65:                                               ; preds = %60
  %66 = load ptr, ptr %9, align 4
  %67 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %66, i32 0, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 3
  %70 = icmp eq i8 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = and i32 %57, 40
  switch i32 %72, label %75 [
    i32 0, label %77
    i32 32, label %73
  ]

73:                                               ; preds = %71
  %74 = tail call fastcc i32 @__dwc3_gadget_start_isoc(ptr noundef %0) #14
  br label %77

75:                                               ; preds = %71, %65
  %76 = tail call fastcc i32 @__dwc3_gadget_kick_transfer(ptr noundef %0) #14
  br label %77

77:                                               ; preds = %75, %73, %71, %63, %50, %27, %21, %12, %3
  %78 = phi i32 [ -22, %21 ], [ -22, %27 ], [ 0, %63 ], [ 0, %75 ], [ %74, %73 ], [ -108, %12 ], [ -108, %3 ], [ 0, %50 ], [ %72, %71 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #14
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_gadget_ep_set_halt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dwc3_gadget_ep_disable(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_disable, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !50
  %18 = tail call i32 @__traceiter_dwc3_gadget_ep_disable(ptr noundef null, ptr noundef %0) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !51
  br label %19

19:                                               ; preds = %17, %6, %1
  %20 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr inbounds %struct.dwc3, ptr %3, i32 0, i32 30
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 1568
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #14, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !9
  %31 = getelementptr i8, ptr %28, i32 -49408
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = tail call ptr @llvm.thread.pointer() #14
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = lshr i32 %37, 5
  %39 = getelementptr i32, ptr @__cpu_online_mask, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %37, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %46 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %31, i32 noundef 50976, i32 noundef %30) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  br label %47

47:                                               ; preds = %45, %34, %26
  %48 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 12
  %49 = load i8, ptr %48, align 2
  %50 = zext i8 %49 to i32
  %51 = shl nuw i32 1, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %30, %52
  %54 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %55 = getelementptr i8, ptr %54, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #14, !srcloc !13
  %56 = getelementptr i8, ptr %54, i32 -49408
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %47
  %60 = tail call ptr @llvm.thread.pointer() #14
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %71 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %56, i32 noundef 50976, i32 noundef %53) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %72

72:                                               ; preds = %70, %59, %47
  %73 = load i8, ptr %48, align 2
  %74 = icmp ugt i8 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 10
  store ptr null, ptr %76, align 4
  %77 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  store ptr null, ptr %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  tail call fastcc void @dwc3_remove_requests(ptr noundef %0)
  %79 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 18
  %80 = load i8, ptr %79, align 4
  %81 = and i8 %80, -3
  store i8 %81, ptr %79, align 4
  %82 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 13
  store i8 0, ptr %82, align 1
  %83 = load i32, ptr %20, align 4
  %84 = and i32 %83, 4096
  store i32 %84, ptr %20, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_gadget_ep_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_ep_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc3_has_imod(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_ep0_out_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

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
!8 = !{i64 3973266}
!9 = !{i64 2154412741}
!10 = !{i64 2154154912}
!11 = !{i64 2154155082}
!12 = !{i64 2154413116}
!13 = !{i64 3972848}
!14 = !{i64 2154170878}
!15 = !{i64 2154171050}
!16 = !{i64 2154289935}
!17 = !{i64 2154290093}
!18 = !{i64 2149283822}
!19 = !{i64 2149279646}
!20 = !{i64 2149279721, i64 2149279748, i64 2149279795, i64 2149279817, i64 2149279845, i64 2149279865}
!21 = !{i64 2149306825}
!22 = !{i64 2154306700}
!23 = !{i64 2154306894}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2154324489}
!27 = !{i64 2154324693}
!28 = !{!"auto-init"}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.peeled.count", i32 2}
!31 = !{i64 2154447662}
!32 = !{i64 2154345225}
!33 = !{i64 2154345385}
!34 = !{i8 0, i8 2}
!35 = !{i64 2148902893}
!36 = !{i64 2154186583}
!37 = !{i64 2154186735}
!38 = !{i64 2154361558}
!39 = !{i64 2154361720}
!40 = !{i64 2154377744}
!41 = !{i64 2154377904}
!42 = !{i64 2154222138}
!43 = !{i64 2154222292}
!44 = !{i64 2154238222}
!45 = !{i64 2154238374}
!46 = !{i64 2154273899}
!47 = !{i64 2154274047}
!48 = !{i64 2154254100}
!49 = !{i64 2154254244}
!50 = !{i64 2154394100}
!51 = !{i64 2154394262}
