; ModuleID = '/llk/IR/drivers/usb/dwc3/ep0.c_pt.bc'
source_filename = "../drivers/usb/dwc3/ep0.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dwc3_ep = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, i8, i8, i32, i32, [20 x i8], i8, i8, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [38 x i8] c"%s: can't queue to disabled endpoint\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"drivers/usb/dwc3/ep0.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s %s: Unexpected pending request\0A\00", align 1
@__tracepoint_dwc3_prepare_trb = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"UNKNOWN ep0state %d\0A\00", align 1
@__tracepoint_dwc3_ctrl_req = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dwc3_readl = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dwc3_writel = external dso_local global %struct.tracepoint, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"invalid device address %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"can't SetAddress() from Configured State\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Set SEL should be 6 bytes, got %d\0A\00", align 1
@__tracepoint_dwc3_complete_trb = external dso_local global %struct.tracepoint, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"invalid test #%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"unexpected direction for Data Phase\0A\00", align 1
@dwc3_ep0_xfernotready.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dwc3_ep0_end_control_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_ep0_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 10
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 79
  %13 = load i48, ptr %12, align 4
  %14 = and i48 %13, 4096
  %15 = icmp eq i48 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11, %3
  %17 = getelementptr inbounds %struct.dwc3, ptr %5, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef %19) #8
  br label %25

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 2
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call fastcc void @__dwc3_gadget_ep0_queue(ptr noundef %0, ptr noundef %1)
  br label %25

25:                                               ; preds = %24, %20, %16
  %26 = phi i32 [ 0, %24 ], [ -108, %16 ], [ -16, %20 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dwc3_gadget_ep0_queue(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 12
  %8 = load i8, ptr %7, align 2
  %9 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 9
  store i8 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %10, ptr %12, align 4
  store ptr %11, ptr %10, align 4
  %14 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %10, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 58
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 12
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr @dev_driver_string(ptr noundef %25) #7
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load ptr, ptr %27, align 4
  br label %33

33:                                               ; preds = %31, %23
  %34 = phi ptr [ %32, %31 ], [ %29, %23 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %26, ptr noundef %34) #7
  br label %72

35:                                               ; preds = %19
  %36 = lshr i32 %16, 31
  %37 = getelementptr %struct.dwc3, ptr %4, i32 0, i32 17, i32 %36
  %38 = load ptr, ptr %37, align 4
  tail call fastcc void @__dwc3_ep0_do_control_data(ptr noundef %4, ptr noundef %38, ptr noundef %1)
  %39 = load i32, ptr %15, align 4
  %40 = and i32 %39, 2147483615
  store i32 %40, ptr %15, align 4
  br label %72

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 79
  %43 = load i48, ptr %42, align 4
  %44 = and i48 %43, 4
  %45 = icmp eq i48 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %41
  %47 = and i48 %43, -5
  store i48 %47, ptr %42, align 4
  %48 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 18
  %49 = load ptr, ptr %48, align 4
  tail call void @usb_gadget_set_state(ptr noundef %49, i32 noundef 7) #7
  %50 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 58
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %72

53:                                               ; preds = %46
  %54 = trunc i48 %43 to i32
  %55 = lshr i32 %54, 4
  %56 = and i32 %55, 1
  %57 = xor i32 %56, 1
  %58 = getelementptr %struct.dwc3, ptr %4, i32 0, i32 17, i32 %57
  %59 = load ptr, ptr %58, align 4
  tail call fastcc void @__dwc3_ep0_do_control_status(ptr noundef %59)
  br label %72

60:                                               ; preds = %41
  %61 = and i48 %43, 16384
  %62 = icmp eq i48 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = trunc i48 %43 to i32
  %65 = lshr i32 %64, 4
  %66 = and i32 %65, 1
  %67 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 58
  store i32 2, ptr %67, align 4
  %68 = getelementptr %struct.dwc3, ptr %4, i32 0, i32 17, i32 %66
  %69 = load ptr, ptr %68, align 4
  tail call fastcc void @__dwc3_ep0_do_control_data(ptr noundef %4, ptr noundef %69, ptr noundef %1)
  %70 = load i32, ptr %15, align 4
  %71 = and i32 %70, 2147483647
  store i32 %71, ptr %15, align 4
  br label %72

72:                                               ; preds = %63, %60, %53, %46, %35, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__dwc3_gadget_ep0_set_halt(ptr nocapture noundef readonly %0, i32 %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 17
  %6 = getelementptr %struct.dwc3, ptr %4, i32 0, i32 17, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dwc3_ep, ptr %7, i32 0, i32 9
  store i32 1, ptr %8, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %9, i32 noundef 1, i32 noundef 0) #7
  %11 = getelementptr inbounds %struct.dwc3_ep, ptr %9, i32 0, i32 9
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 79
  %13 = load i48, ptr %12, align 4
  %14 = and i48 %13, -5
  store i48 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.dwc3_ep, ptr %9, i32 0, i32 2
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load volatile ptr, ptr %15, align 4
  %20 = icmp eq ptr %19, %15
  %21 = getelementptr i8, ptr %19, i32 -56
  %22 = select i1 %20, ptr null, ptr %21
  tail call void @dwc3_gadget_giveback(ptr noundef %9, ptr noundef %22, i32 noundef -104) #7
  br label %23

23:                                               ; preds = %18, %2
  %24 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 58
  store i32 1, ptr %24, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_ep0_stall_and_restart(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 17
  %3 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %4, i32 0, i32 9
  store i32 1, ptr %5, align 4
  %6 = load ptr, ptr %2, align 4
  %7 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %6, i32 noundef 1, i32 noundef 0) #7
  %8 = getelementptr inbounds %struct.dwc3_ep, ptr %6, i32 0, i32 9
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %10 = load i48, ptr %9, align 4
  %11 = and i48 %10, -5
  store i48 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.dwc3_ep, ptr %6, i32 0, i32 2
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load volatile ptr, ptr %12, align 4
  %17 = icmp eq ptr %16, %12
  %18 = getelementptr i8, ptr %16, i32 -56
  %19 = select i1 %17, ptr null, ptr %18
  tail call void @dwc3_gadget_giveback(ptr noundef %6, ptr noundef %19, i32 noundef -104) #7
  br label %20

20:                                               ; preds = %15, %1
  %21 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 58
  store i32 1, ptr %21, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc3_gadget_ep0_set_halt(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 10
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 17
  %9 = getelementptr %struct.dwc3, ptr %7, i32 0, i32 17, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dwc3_ep, ptr %10, i32 0, i32 9
  store i32 1, ptr %11, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %12, i32 noundef 1, i32 noundef 0) #7
  %14 = getelementptr inbounds %struct.dwc3_ep, ptr %12, i32 0, i32 9
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 79
  %16 = load i48, ptr %15, align 4
  %17 = and i48 %16, -5
  store i48 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.dwc3_ep, ptr %12, i32 0, i32 2
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load volatile ptr, ptr %18, align 4
  %23 = icmp eq ptr %22, %18
  %24 = getelementptr i8, ptr %22, i32 -56
  %25 = select i1 %23, ptr null, ptr %24
  tail call void @dwc3_gadget_giveback(ptr noundef %12, ptr noundef %25, i32 noundef -104) #7
  br label %26

26:                                               ; preds = %21, %2
  %27 = getelementptr inbounds %struct.dwc3, ptr %7, i32 0, i32 58
  store i32 1, ptr %27, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %7) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_ep0_out_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %3 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 9
  tail call void @complete(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dwc3_ep, ptr %5, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dwc3, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dwc3_ep, ptr %5, i32 0, i32 10
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.dwc3_trb, ptr %11, i32 %14
  store i32 %7, ptr %15, align 1
  %16 = getelementptr %struct.dwc3_trb, ptr %11, i32 %14, i32 1
  store i32 0, ptr %16, align 1
  %17 = getelementptr %struct.dwc3_trb, ptr %11, i32 %14, i32 2
  store i32 8, ptr %17, align 1
  %18 = getelementptr %struct.dwc3_trb, ptr %11, i32 %14, i32 3
  store i32 3107, ptr %18, align 1
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %33 = tail call i32 @__traceiter_dwc3_prepare_trb(ptr noundef null, ptr noundef %5, ptr noundef %15) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %34

34:                                               ; preds = %32, %21, %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  %35 = getelementptr inbounds %struct.dwc3_ep, ptr %5, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr inbounds %struct.dwc3, ptr %40, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false) #7
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %2, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %5, i32 noundef 6, ptr noundef nonnull %2) #7
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.dwc3, ptr %40, i32 0, i32 57
  store i32 1, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  br label %50

49:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 281, i32 noundef 9, ptr noundef null) #7
  br label %50

50:                                               ; preds = %49, %48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_ep0_send_delayed_status(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %3 = load i48, ptr %2, align 4
  %4 = and i48 %3, -5
  store i48 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 58
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = trunc i48 %3 to i32
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 1
  %12 = xor i32 %11, 1
  %13 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 %12
  %14 = load ptr, ptr %13, align 4
  tail call fastcc void @__dwc3_ep0_do_control_status(ptr noundef %14)
  br label %15

15:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dwc3_ep0_do_control_status(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %3 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 79
  %6 = load i48, ptr %5, align 4
  %7 = and i48 %6, 16384
  %8 = icmp eq i48 %7, 0
  %9 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 10
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = getelementptr %struct.dwc3_trb, ptr %12, i32 %15
  store i32 %10, ptr %16, align 1
  %17 = getelementptr %struct.dwc3_trb, ptr %12, i32 %15, i32 1
  store i32 0, ptr %17, align 1
  %18 = getelementptr %struct.dwc3_trb, ptr %12, i32 %15, i32 2
  store i32 0, ptr %18, align 1
  %19 = getelementptr %struct.dwc3_trb, ptr %12, i32 %15, i32 3
  %20 = select i1 %8, i32 3123, i32 3139
  store i32 %20, ptr %19, align 1
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = tail call ptr @llvm.thread.pointer() #7
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %35 = tail call i32 @__traceiter_dwc3_prepare_trb(ptr noundef null, ptr noundef %0, ptr noundef %16) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %36

36:                                               ; preds = %34, %23, %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  %37 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.dwc3, ptr %42, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false) #7
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %2, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  %46 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %2) #7
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.dwc3, ptr %42, i32 0, i32 57
  store i32 1, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  br label %52

51:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1053, i32 noundef 9, ptr noundef null) #7
  br label %52

52:                                               ; preds = %51, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc3_ep0_interrupt(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 1
  %4 = lshr i32 %3, 1
  %5 = and i32 %4, 31
  %6 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = lshr i32 %3, 6
  %9 = and i32 %8, 15
  switch i32 %9, label %656 [
    i32 1, label %10
    i32 3, label %594
    i32 7, label %649
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dwc3_ep, ptr %7, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -9
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.dwc3_ep, ptr %7, i32 0, i32 14
  store i8 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %16 = load i48, ptr %15, align 4
  %17 = and i48 %16, -8193
  store i48 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 58
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %593 [
    i32 1, label %20
    i32 2, label %403
    i32 3, label %523
  ]

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %384, label %26

26:                                               ; preds = %20
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ctrl_req, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = tail call ptr @llvm.thread.pointer() #7
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !10
  %41 = tail call i32 @__traceiter_dwc3_ctrl_req(ptr noundef null, ptr noundef %22) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !11
  %42 = load i48, ptr %15, align 4
  br label %43

43:                                               ; preds = %40, %29, %26
  %44 = phi i48 [ %42, %40 ], [ %17, %29 ], [ %17, %26 ]
  %45 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 4
  %46 = load i16, ptr %45, align 1
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = and i48 %44, -16401
  br label %58

50:                                               ; preds = %43
  %51 = or i48 %44, 16384
  store i48 %51, ptr %15, align 4
  %52 = load i8, ptr %22, align 1
  %53 = lshr i8 %52, 3
  %54 = and i8 %53, 16
  %55 = zext i8 %54 to i48
  %56 = and i48 %51, -17
  %57 = or i48 %56, %55
  br label %58

58:                                               ; preds = %50, %48
  %59 = phi i48 [ %57, %50 ], [ %49, %48 ]
  %60 = phi i32 [ 2, %50 ], [ 3, %48 ]
  store i48 %59, ptr %15, align 4
  %61 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 57
  store i32 %60, ptr %61, align 4
  %62 = load i8, ptr %22, align 1
  %63 = and i8 %62, 96
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %362

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  switch i8 %67, label %349 [
    i8 0, label %68
    i8 1, label %148
    i8 3, label %150
    i8 5, label %152
    i8 9, label %217
    i8 48, label %309
    i8 49, label %335
  ]

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 2
  %70 = load i16, ptr %69, align 1
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %384

72:                                               ; preds = %68
  %73 = and i8 %62, 31
  %74 = zext i8 %73 to i32
  switch i32 %74, label %384 [
    i32 0, label %75
    i32 1, label %137
    i32 2, label %116
  ]

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.usb_gadget, ptr %77, i32 0, i32 17
  %79 = load i32, ptr %78, align 4
  %80 = trunc i32 %79 to i16
  %81 = lshr i16 %80, 13
  %82 = and i16 %81, 1
  %83 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 64
  %84 = load i8, ptr %83, align 2
  %85 = and i8 %84, -2
  %86 = icmp eq i8 %85, 4
  br i1 %86, label %87, label %137

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i8, ptr %89, i32 1540
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %92 = getelementptr i8, ptr %89, i32 -49408
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %87
  %96 = tail call ptr @llvm.thread.pointer() #7
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %98 = load i32, ptr %97, align 8
  %99 = lshr i32 %98, 5
  %100 = getelementptr i32, ptr @__cpu_online_mask, i32 %99
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %98, 31
  %103 = shl nuw i32 1, %102
  %104 = and i32 %103, %101
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %95
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %107 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %92, i32 noundef 50948, i32 noundef %91) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  br label %108

108:                                              ; preds = %106, %95, %87
  %109 = trunc i32 %91 to i16
  %110 = lshr i16 %109, 8
  %111 = and i16 %110, 4
  %112 = or i16 %111, %82
  %113 = lshr i16 %109, 9
  %114 = and i16 %113, 8
  %115 = or i16 %112, %114
  br label %137

116:                                              ; preds = %72
  %117 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 3
  %118 = load i16, ptr %117, align 1
  %119 = zext i16 %118 to i32
  %120 = shl nuw nsw i32 %119, 1
  %121 = and i32 %120, 30
  %122 = lshr i32 %119, 7
  %123 = and i32 %122, 1
  %124 = or i32 %123, %121
  %125 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 %124
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %384, label %128

128:                                              ; preds = %116
  %129 = getelementptr inbounds %struct.dwc3_ep, ptr %126, i32 0, i32 9
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %384, label %133

133:                                              ; preds = %128
  %134 = trunc i32 %130 to i16
  %135 = lshr i16 %134, 1
  %136 = and i16 %135, 1
  br label %137

137:                                              ; preds = %133, %108, %75, %72
  %138 = phi i16 [ 0, %72 ], [ %82, %75 ], [ %136, %133 ], [ %115, %108 ]
  %139 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 4
  %140 = load ptr, ptr %139, align 4
  store i16 %138, ptr %140, align 2
  %141 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 17
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 8
  %144 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 8, i32 2
  store ptr %142, ptr %144, align 4
  %145 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 8, i32 0, i32 1
  store i32 2, ptr %145, align 4
  %146 = load ptr, ptr %139, align 4
  store ptr %146, ptr %143, align 4
  %147 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 8, i32 0, i32 7
  store ptr @dwc3_ep0_status_cmpl, ptr %147, align 4
  tail call fastcc void @__dwc3_gadget_ep0_queue(ptr noundef %142, ptr noundef %143) #7
  br label %656

148:                                              ; preds = %65
  %149 = tail call fastcc i32 @dwc3_ep0_handle_feature(ptr noundef %0, ptr noundef %22, i32 noundef 0) #7
  br label %375

150:                                              ; preds = %65
  %151 = tail call fastcc i32 @dwc3_ep0_handle_feature(ptr noundef %0, ptr noundef %22, i32 noundef 1) #7
  br label %375

152:                                              ; preds = %65
  %153 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %154 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 2
  %155 = load i16, ptr %154, align 1
  %156 = zext i16 %155 to i32
  %157 = icmp ugt i16 %155, 127
  br i1 %157, label %158, label %161

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %160 = load ptr, ptr %159, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.5, i32 noundef %156) #8
  br label %384

161:                                              ; preds = %152
  %162 = load ptr, ptr %153, align 4
  %163 = getelementptr inbounds %struct.usb_gadget, ptr %162, i32 0, i32 9
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, 7
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %168 = load ptr, ptr %167, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.6) #8
  br label %384

169:                                              ; preds = %161
  %170 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr i8, ptr %171, i32 1536
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %172) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %174 = getelementptr i8, ptr %171, i32 -49408
  %175 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %169
  %178 = tail call ptr @llvm.thread.pointer() #7
  %179 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %180 = load i32, ptr %179, align 8
  %181 = lshr i32 %180, 5
  %182 = getelementptr i32, ptr @__cpu_online_mask, i32 %181
  %183 = load volatile i32, ptr %182, align 4
  %184 = and i32 %180, 31
  %185 = shl nuw i32 1, %184
  %186 = and i32 %185, %183
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %177
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %189 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %174, i32 noundef 50944, i32 noundef %173) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  br label %190

190:                                              ; preds = %188, %177, %169
  %191 = and i32 %173, -1017
  %192 = shl nuw nsw i32 %156, 3
  %193 = or i32 %191, %192
  %194 = load ptr, ptr %170, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %195 = getelementptr i8, ptr %194, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %193) #7, !srcloc !17
  %196 = getelementptr i8, ptr %194, i32 -49408
  %197 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %190
  %200 = tail call ptr @llvm.thread.pointer() #7
  %201 = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 2
  %202 = load i32, ptr %201, align 8
  %203 = lshr i32 %202, 5
  %204 = getelementptr i32, ptr @__cpu_online_mask, i32 %203
  %205 = load volatile i32, ptr %204, align 4
  %206 = and i32 %202, 31
  %207 = shl nuw i32 1, %206
  %208 = and i32 %207, %205
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %199
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %211 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %196, i32 noundef 50944, i32 noundef %193) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %212

212:                                              ; preds = %210, %199, %190
  %213 = icmp eq i16 %155, 0
  %214 = load ptr, ptr %153, align 4
  br i1 %213, label %216, label %215

215:                                              ; preds = %212
  tail call void @usb_gadget_set_state(ptr noundef %214, i32 noundef 6) #7
  br label %656

216:                                              ; preds = %212
  tail call void @usb_gadget_set_state(ptr noundef %214, i32 noundef 5) #7
  br label %656

217:                                              ; preds = %65
  %218 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.usb_gadget, ptr %219, i32 0, i32 9
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 2
  %223 = load i16, ptr %222, align 1
  switch i32 %221, label %384 [
    i32 7, label %292
    i32 6, label %224
  ]

224:                                              ; preds = %217
  tail call void @dwc3_gadget_clear_tx_fifos(ptr noundef %0) #7
  %225 = load i48, ptr %15, align 4
  %226 = and i48 %225, 4398046511104
  %227 = icmp eq i48 %226, 0
  br i1 %227, label %237, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  %230 = load i16, ptr %229, align 4
  %231 = add i16 %230, 1
  store i16 %231, ptr %229, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  %232 = load ptr, ptr %23, align 4
  %233 = getelementptr inbounds %struct.usb_gadget_driver, ptr %232, i32 0, i32 4
  %234 = load ptr, ptr %233, align 4
  %235 = load ptr, ptr %218, align 4
  %236 = tail call i32 %234(ptr noundef %235, ptr noundef %22) #7
  tail call void @_raw_spin_lock(ptr noundef %229) #7
  br label %237

237:                                              ; preds = %228, %224
  %238 = phi i32 [ %236, %228 ], [ -22, %224 ]
  %239 = icmp eq i16 %223, 0
  br i1 %239, label %375, label %240

240:                                              ; preds = %237
  switch i32 %238, label %381 [
    i32 0, label %241
    i32 32767, label %243
  ]

241:                                              ; preds = %240
  %242 = load ptr, ptr %218, align 4
  tail call void @usb_gadget_set_state(ptr noundef %242, i32 noundef 7) #7
  br label %243

243:                                              ; preds = %241, %240
  %244 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr i8, ptr %245, i32 1540
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %248 = getelementptr i8, ptr %245, i32 -49408
  %249 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %243
  %252 = tail call ptr @llvm.thread.pointer() #7
  %253 = getelementptr inbounds %struct.thread_info, ptr %252, i32 0, i32 2
  %254 = load i32, ptr %253, align 8
  %255 = lshr i32 %254, 5
  %256 = getelementptr i32, ptr @__cpu_online_mask, i32 %255
  %257 = load volatile i32, ptr %256, align 4
  %258 = and i32 %254, 31
  %259 = shl nuw i32 1, %258
  %260 = and i32 %259, %257
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %264, label %262

262:                                              ; preds = %251
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %263 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %248, i32 noundef 50948, i32 noundef %247) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  br label %264

264:                                              ; preds = %262, %251, %243
  %265 = load i48, ptr %15, align 4
  %266 = and i48 %265, 1073741824
  %267 = icmp eq i48 %266, 0
  %268 = or i32 %247, 512
  %269 = select i1 %267, i32 %268, i32 %247
  %270 = and i48 %265, 2147483648
  %271 = icmp eq i48 %270, 0
  %272 = or i32 %269, 2048
  %273 = select i1 %271, i32 %272, i32 %269
  %274 = load ptr, ptr %244, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %275 = getelementptr i8, ptr %274, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %273) #7, !srcloc !17
  %276 = getelementptr i8, ptr %274, i32 -49408
  %277 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %278 = icmp sgt i32 %277, 0
  br i1 %278, label %279, label %375

279:                                              ; preds = %264
  %280 = tail call ptr @llvm.thread.pointer() #7
  %281 = getelementptr inbounds %struct.thread_info, ptr %280, i32 0, i32 2
  %282 = load i32, ptr %281, align 8
  %283 = lshr i32 %282, 5
  %284 = getelementptr i32, ptr @__cpu_online_mask, i32 %283
  %285 = load volatile i32, ptr %284, align 4
  %286 = and i32 %282, 31
  %287 = shl nuw i32 1, %286
  %288 = and i32 %287, %285
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %375, label %290

290:                                              ; preds = %279
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %291 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %276, i32 noundef 50948, i32 noundef %273) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %375

292:                                              ; preds = %217
  %293 = and i48 %59, 4398046511104
  %294 = icmp eq i48 %293, 0
  br i1 %294, label %384, label %295

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  %297 = load i16, ptr %296, align 4
  %298 = add i16 %297, 1
  store i16 %298, ptr %296, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  %299 = load ptr, ptr %23, align 4
  %300 = getelementptr inbounds %struct.usb_gadget_driver, ptr %299, i32 0, i32 4
  %301 = load ptr, ptr %300, align 4
  %302 = load ptr, ptr %218, align 4
  %303 = tail call i32 %301(ptr noundef %302, ptr noundef %22) #7
  tail call void @_raw_spin_lock(ptr noundef %296) #7
  %304 = icmp ne i16 %223, 0
  %305 = icmp ne i32 %303, 0
  %306 = select i1 %304, i1 true, i1 %305
  br i1 %306, label %375, label %307

307:                                              ; preds = %295
  %308 = load ptr, ptr %218, align 4
  tail call void @usb_gadget_set_state(ptr noundef %308, i32 noundef 6) #7
  br label %656

309:                                              ; preds = %65
  %310 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %311 = load ptr, ptr %310, align 4
  %312 = getelementptr inbounds %struct.usb_gadget, ptr %311, i32 0, i32 9
  %313 = load i32, ptr %312, align 4
  %314 = icmp eq i32 %313, 5
  br i1 %314, label %384, label %315

315:                                              ; preds = %309
  %316 = load i16, ptr %45, align 1
  %317 = icmp eq i16 %316, 6
  br i1 %317, label %322, label %318

318:                                              ; preds = %315
  %319 = zext i16 %316 to i32
  %320 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %321 = load ptr, ptr %320, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %321, ptr noundef nonnull @.str.7, i32 noundef %319) #8
  br label %384

322:                                              ; preds = %315
  %323 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 17
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 8
  %326 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 8, i32 2
  store ptr %324, ptr %326, align 4
  %327 = getelementptr inbounds %struct.usb_ep, ptr %324, i32 0, i32 7
  %328 = load i56, ptr %327, align 2
  %329 = trunc i56 %328 to i32
  %330 = and i32 %329, 65535
  %331 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 8, i32 0, i32 1
  store i32 %330, ptr %331, align 4
  %332 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 4
  %333 = load ptr, ptr %332, align 4
  store ptr %333, ptr %325, align 4
  %334 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 8, i32 0, i32 7
  store ptr @dwc3_ep0_set_sel_cmpl, ptr %334, align 4
  tail call fastcc void @__dwc3_gadget_ep0_queue(ptr noundef %324, ptr noundef %325) #7
  br label %656

335:                                              ; preds = %65
  %336 = load i16, ptr %45, align 1
  %337 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 3
  %338 = load i16, ptr %337, align 1
  %339 = icmp ne i16 %338, 0
  %340 = icmp ne i16 %336, 0
  %341 = select i1 %339, i1 true, i1 %340
  br i1 %341, label %384, label %342

342:                                              ; preds = %335
  %343 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 2
  %344 = load i16, ptr %343, align 1
  %345 = zext i16 %344 to i32
  %346 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %347 = load ptr, ptr %346, align 4
  %348 = getelementptr inbounds %struct.usb_gadget, ptr %347, i32 0, i32 12
  store i32 %345, ptr %348, align 8
  br label %656

349:                                              ; preds = %65
  %350 = and i48 %59, 4398046511104
  %351 = icmp eq i48 %350, 0
  br i1 %351, label %384, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  %354 = load i16, ptr %353, align 4
  %355 = add i16 %354, 1
  store i16 %355, ptr %353, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  %356 = load ptr, ptr %23, align 4
  %357 = getelementptr inbounds %struct.usb_gadget_driver, ptr %356, i32 0, i32 4
  %358 = load ptr, ptr %357, align 4
  %359 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %360 = load ptr, ptr %359, align 4
  %361 = tail call i32 %358(ptr noundef %360, ptr noundef %22) #7
  tail call void @_raw_spin_lock(ptr noundef %353) #7
  br label %375

362:                                              ; preds = %58
  %363 = and i48 %59, 4398046511104
  %364 = icmp eq i48 %363, 0
  br i1 %364, label %384, label %365

365:                                              ; preds = %362
  %366 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  %367 = load i16, ptr %366, align 4
  %368 = add i16 %367, 1
  store i16 %368, ptr %366, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  %369 = load ptr, ptr %23, align 4
  %370 = getelementptr inbounds %struct.usb_gadget_driver, ptr %369, i32 0, i32 4
  %371 = load ptr, ptr %370, align 4
  %372 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %373 = load ptr, ptr %372, align 4
  %374 = tail call i32 %371(ptr noundef %373, ptr noundef %22) #7
  tail call void @_raw_spin_lock(ptr noundef %366) #7
  br label %375

375:                                              ; preds = %365, %352, %295, %290, %279, %264, %237, %150, %148
  %376 = phi i32 [ %151, %150 ], [ %149, %148 ], [ %303, %295 ], [ %238, %237 ], [ %238, %264 ], [ %238, %279 ], [ %238, %290 ], [ %361, %352 ], [ %374, %365 ]
  %377 = icmp eq i32 %376, 32767
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = load i48, ptr %15, align 4
  %380 = or i48 %379, 4
  store i48 %380, ptr %15, align 4
  br label %656

381:                                              ; preds = %375, %240
  %382 = phi i32 [ %376, %375 ], [ %238, %240 ]
  %383 = icmp slt i32 %382, 0
  br i1 %383, label %384, label %656

384:                                              ; preds = %381, %362, %349, %335, %318, %309, %292, %217, %166, %158, %128, %116, %72, %68, %20
  %385 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 17
  %386 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 1
  %387 = load ptr, ptr %386, align 4
  %388 = getelementptr inbounds %struct.dwc3_ep, ptr %387, i32 0, i32 9
  store i32 1, ptr %388, align 4
  %389 = load ptr, ptr %385, align 4
  %390 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %389, i32 noundef 1, i32 noundef 0) #7
  %391 = getelementptr inbounds %struct.dwc3_ep, ptr %389, i32 0, i32 9
  store i32 1, ptr %391, align 4
  %392 = load i48, ptr %15, align 4
  %393 = and i48 %392, -5
  store i48 %393, ptr %15, align 4
  %394 = getelementptr inbounds %struct.dwc3_ep, ptr %389, i32 0, i32 2
  %395 = load volatile ptr, ptr %394, align 4
  %396 = icmp eq ptr %395, %394
  br i1 %396, label %402, label %397

397:                                              ; preds = %384
  %398 = load volatile ptr, ptr %394, align 4
  %399 = icmp eq ptr %398, %394
  %400 = getelementptr i8, ptr %398, i32 -56
  %401 = select i1 %399, ptr null, ptr %400
  tail call void @dwc3_gadget_giveback(ptr noundef %389, ptr noundef %401, i32 noundef -104) #7
  br label %402

402:                                              ; preds = %397, %384
  store i32 1, ptr %18, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %0) #7
  br label %656

403:                                              ; preds = %10
  %404 = load i32, ptr %1, align 1
  %405 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 17
  %406 = load ptr, ptr %405, align 4
  %407 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 57
  store i32 3, ptr %407, align 4
  %408 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 1
  %409 = load ptr, ptr %408, align 4
  %410 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_complete_trb, i32 0, i32 1), align 4
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %412, label %425

412:                                              ; preds = %403
  %413 = tail call ptr @llvm.thread.pointer() #7
  %414 = getelementptr inbounds %struct.thread_info, ptr %413, i32 0, i32 2
  %415 = load i32, ptr %414, align 8
  %416 = lshr i32 %415, 5
  %417 = getelementptr i32, ptr @__cpu_online_mask, i32 %416
  %418 = load volatile i32, ptr %417, align 4
  %419 = and i32 %415, 31
  %420 = shl nuw i32 1, %419
  %421 = and i32 %420, %418
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %425, label %423

423:                                              ; preds = %412
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  %424 = tail call i32 @__traceiter_dwc3_complete_trb(ptr noundef null, ptr noundef %406, ptr noundef %409) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  br label %425

425:                                              ; preds = %423, %412, %403
  %426 = getelementptr inbounds %struct.dwc3_ep, ptr %406, i32 0, i32 2
  %427 = load volatile ptr, ptr %426, align 4
  %428 = icmp eq ptr %427, %426
  %429 = getelementptr i8, ptr %427, i32 -56
  %430 = icmp eq ptr %429, null
  %431 = or i1 %428, %430
  br i1 %431, label %656, label %432

432:                                              ; preds = %425
  %433 = getelementptr inbounds %struct.dwc3_trb, ptr %409, i32 0, i32 2
  %434 = load i32, ptr %433, align 1
  %435 = and i32 %434, -268435456
  %436 = icmp eq i32 %435, 536870912
  br i1 %436, label %437, label %440

437:                                              ; preds = %432
  %438 = load i48, ptr %15, align 4
  %439 = or i48 %438, 8192
  store i48 %439, ptr %15, align 4
  tail call void @dwc3_gadget_giveback(ptr noundef %406, ptr noundef nonnull %429, i32 noundef -104) #7
  br label %656

440:                                              ; preds = %432
  %441 = and i32 %434, 16777215
  %442 = getelementptr i8, ptr %427, i32 -52
  %443 = load i32, ptr %442, align 4
  %444 = sub i32 %443, %441
  %445 = getelementptr i8, ptr %427, i32 -4
  %446 = load i32, ptr %445, align 4
  %447 = add i32 %444, %446
  store i32 %447, ptr %445, align 4
  %448 = getelementptr inbounds %struct.usb_ep, ptr %406, i32 0, i32 7
  %449 = load i56, ptr %448, align 2
  %450 = trunc i56 %449 to i32
  %451 = and i32 %450, 65535
  %452 = add nsw i32 %451, -1
  %453 = and i32 %452, %443
  %454 = icmp ne i32 %453, 0
  %455 = icmp eq i32 %443, 0
  %456 = or i1 %455, %454
  br i1 %456, label %462, label %457

457:                                              ; preds = %440
  %458 = getelementptr i8, ptr %427, i32 -32
  %459 = load i32, ptr %458, align 4
  %460 = and i32 %459, 262144
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %466

462:                                              ; preds = %457, %440
  %463 = load i48, ptr %15, align 4
  %464 = and i48 %463, 8
  %465 = icmp eq i48 %464, 0
  br i1 %465, label %497, label %466

466:                                              ; preds = %462, %457
  %467 = getelementptr %struct.dwc3_trb, ptr %409, i32 1
  %468 = getelementptr %struct.dwc3_trb, ptr %409, i32 1, i32 3
  %469 = load i32, ptr %468, align 1
  %470 = and i32 %469, -2
  store i32 %470, ptr %468, align 1
  %471 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_complete_trb, i32 0, i32 1), align 4
  %472 = icmp sgt i32 %471, 0
  br i1 %472, label %473, label %486

473:                                              ; preds = %466
  %474 = tail call ptr @llvm.thread.pointer() #7
  %475 = getelementptr inbounds %struct.thread_info, ptr %474, i32 0, i32 2
  %476 = load i32, ptr %475, align 8
  %477 = lshr i32 %476, 5
  %478 = getelementptr i32, ptr @__cpu_online_mask, i32 %477
  %479 = load volatile i32, ptr %478, align 4
  %480 = and i32 %476, 31
  %481 = shl nuw i32 1, %480
  %482 = and i32 %481, %479
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %486, label %484

484:                                              ; preds = %473
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  %485 = tail call i32 @__traceiter_dwc3_complete_trb(ptr noundef null, ptr noundef %406, ptr noundef %467) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  br label %486

486:                                              ; preds = %484, %473, %466
  %487 = getelementptr i8, ptr %427, i32 52
  %488 = load i8, ptr %487, align 4
  %489 = and i8 %488, 2
  %490 = icmp eq i8 %489, 0
  %491 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 1
  %492 = select i1 %490, ptr %405, ptr %491
  %493 = load ptr, ptr %492, align 4
  %494 = getelementptr inbounds %struct.dwc3_ep, ptr %493, i32 0, i32 10
  store i8 0, ptr %494, align 4
  %495 = load i48, ptr %15, align 4
  %496 = and i48 %495, -9
  store i48 %496, ptr %15, align 4
  br label %497

497:                                              ; preds = %486, %462
  %498 = and i32 %404, 2
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %522, label %500

500:                                              ; preds = %497
  %501 = load i32, ptr %445, align 4
  %502 = load i32, ptr %442, align 4
  %503 = icmp ult i32 %501, %502
  br i1 %503, label %504, label %522

504:                                              ; preds = %500
  %505 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 1
  %506 = load ptr, ptr %505, align 4
  %507 = getelementptr inbounds %struct.dwc3_ep, ptr %506, i32 0, i32 9
  store i32 1, ptr %507, align 4
  %508 = load ptr, ptr %405, align 4
  %509 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %508, i32 noundef 1, i32 noundef 0) #7
  %510 = getelementptr inbounds %struct.dwc3_ep, ptr %508, i32 0, i32 9
  store i32 1, ptr %510, align 4
  %511 = load i48, ptr %15, align 4
  %512 = and i48 %511, -5
  store i48 %512, ptr %15, align 4
  %513 = getelementptr inbounds %struct.dwc3_ep, ptr %508, i32 0, i32 2
  %514 = load volatile ptr, ptr %513, align 4
  %515 = icmp eq ptr %514, %513
  br i1 %515, label %521, label %516

516:                                              ; preds = %504
  %517 = load volatile ptr, ptr %513, align 4
  %518 = icmp eq ptr %517, %513
  %519 = getelementptr i8, ptr %517, i32 -56
  %520 = select i1 %518, ptr null, ptr %519
  tail call void @dwc3_gadget_giveback(ptr noundef %508, ptr noundef %520, i32 noundef -104) #7
  br label %521

521:                                              ; preds = %516, %504
  store i32 1, ptr %18, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %0) #7
  br label %656

522:                                              ; preds = %500, %497
  tail call void @dwc3_gadget_giveback(ptr noundef %406, ptr noundef nonnull %429, i32 noundef 0) #7
  br label %656

523:                                              ; preds = %10
  %524 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 17
  %525 = load ptr, ptr %524, align 4
  %526 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 1
  %527 = load ptr, ptr %526, align 4
  %528 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_complete_trb, i32 0, i32 1), align 4
  %529 = icmp sgt i32 %528, 0
  br i1 %529, label %530, label %543

530:                                              ; preds = %523
  %531 = tail call ptr @llvm.thread.pointer() #7
  %532 = getelementptr inbounds %struct.thread_info, ptr %531, i32 0, i32 2
  %533 = load i32, ptr %532, align 8
  %534 = lshr i32 %533, 5
  %535 = getelementptr i32, ptr @__cpu_online_mask, i32 %534
  %536 = load volatile i32, ptr %535, align 4
  %537 = and i32 %533, 31
  %538 = shl nuw i32 1, %537
  %539 = and i32 %538, %536
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %543, label %541

541:                                              ; preds = %530
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  %542 = tail call i32 @__traceiter_dwc3_complete_trb(ptr noundef null, ptr noundef %525, ptr noundef %527) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  br label %543

543:                                              ; preds = %541, %530, %523
  %544 = getelementptr inbounds %struct.dwc3_ep, ptr %525, i32 0, i32 2
  %545 = load volatile ptr, ptr %544, align 4
  %546 = icmp eq ptr %545, %544
  br i1 %546, label %552, label %547

547:                                              ; preds = %543
  %548 = load volatile ptr, ptr %544, align 4
  %549 = icmp eq ptr %548, %544
  %550 = getelementptr i8, ptr %548, i32 -56
  %551 = select i1 %549, ptr null, ptr %550
  tail call void @dwc3_gadget_giveback(ptr noundef %525, ptr noundef %551, i32 noundef 0) #7
  br label %552

552:                                              ; preds = %547, %543
  %553 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 69
  %554 = load i8, ptr %553, align 4
  %555 = icmp eq i8 %554, 0
  br i1 %555, label %584, label %556

556:                                              ; preds = %552
  %557 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 70
  %558 = load i8, ptr %557, align 1
  %559 = zext i8 %558 to i32
  %560 = tail call i32 @dwc3_gadget_set_test_mode(ptr noundef %0, i32 noundef %559) #7
  %561 = icmp slt i32 %560, 0
  br i1 %561, label %562, label %584

562:                                              ; preds = %556
  %563 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %564 = load ptr, ptr %563, align 4
  %565 = load i8, ptr %557, align 1
  %566 = zext i8 %565 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %564, ptr noundef nonnull @.str.8, i32 noundef %566) #8
  %567 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 1
  %568 = load ptr, ptr %567, align 4
  %569 = getelementptr inbounds %struct.dwc3_ep, ptr %568, i32 0, i32 9
  store i32 1, ptr %569, align 4
  %570 = load ptr, ptr %524, align 4
  %571 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef %570, i32 noundef 1, i32 noundef 0) #7
  %572 = getelementptr inbounds %struct.dwc3_ep, ptr %570, i32 0, i32 9
  store i32 1, ptr %572, align 4
  %573 = load i48, ptr %15, align 4
  %574 = and i48 %573, -5
  store i48 %574, ptr %15, align 4
  %575 = getelementptr inbounds %struct.dwc3_ep, ptr %570, i32 0, i32 2
  %576 = load volatile ptr, ptr %575, align 4
  %577 = icmp eq ptr %576, %575
  br i1 %577, label %583, label %578

578:                                              ; preds = %562
  %579 = load volatile ptr, ptr %575, align 4
  %580 = icmp eq ptr %579, %575
  %581 = getelementptr i8, ptr %579, i32 -56
  %582 = select i1 %580, ptr null, ptr %581
  tail call void @dwc3_gadget_giveback(ptr noundef %570, ptr noundef %582, i32 noundef -104) #7
  br label %583

583:                                              ; preds = %578, %562
  store i32 1, ptr %18, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %0) #7
  br label %656

584:                                              ; preds = %556, %552
  %585 = getelementptr inbounds %struct.dwc3_trb, ptr %527, i32 0, i32 2
  %586 = load i32, ptr %585, align 1
  %587 = and i32 %586, -268435456
  %588 = icmp eq i32 %587, 536870912
  br i1 %588, label %589, label %592

589:                                              ; preds = %584
  %590 = load i48, ptr %15, align 4
  %591 = or i48 %590, 8192
  store i48 %591, ptr %15, align 4
  br label %592

592:                                              ; preds = %589, %584
  store i32 1, ptr %18, align 4
  tail call void @dwc3_ep0_out_start(ptr noundef %0) #7
  br label %656

593:                                              ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 950, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %19) #7
  br label %656

594:                                              ; preds = %2
  %595 = lshr i32 %3, 12
  %596 = and i32 %595, 15
  switch i32 %596, label %656 [
    i32 1, label %597
    i32 2, label %609
  ]

597:                                              ; preds = %594
  %598 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %599 = load i48, ptr %598, align 4
  %600 = trunc i48 %599 to i32
  %601 = lshr i32 %600, 4
  %602 = and i32 %601, 1
  %603 = icmp eq i32 %602, %5
  br i1 %603, label %656, label %604

604:                                              ; preds = %597
  %605 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 %602
  %606 = load ptr, ptr %605, align 4
  %607 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 12
  %608 = load ptr, ptr %607, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %608, ptr noundef nonnull @.str.9) #8
  tail call fastcc void @dwc3_ep0_end_control_data(ptr noundef %606) #7
  tail call fastcc void @dwc3_ep0_stall_and_restart(ptr noundef %0) #7
  br label %656

609:                                              ; preds = %594
  %610 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 57
  %611 = load i32, ptr %610, align 4
  %612 = icmp eq i32 %611, 3
  br i1 %612, label %613, label %656

613:                                              ; preds = %609
  %614 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 58
  store i32 3, ptr %614, align 4
  %615 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %616 = load i48, ptr %615, align 4
  %617 = and i48 %616, 4
  %618 = icmp eq i48 %617, 0
  br i1 %618, label %643, label %619

619:                                              ; preds = %613
  %620 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 17
  %621 = load ptr, ptr %620, align 4
  %622 = load i32, ptr %1, align 1
  %623 = and i32 %622, 62
  %624 = icmp ne i32 %623, 2
  %625 = load i1, ptr @dwc3_ep0_xfernotready.__already_done, align 1
  %626 = xor i1 %625, true
  %627 = select i1 %624, i1 %626, i1 false
  br i1 %627, label %628, label %629, !prof !26

628:                                              ; preds = %619
  store i1 true, ptr @dwc3_ep0_xfernotready.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1128, i32 noundef 9, ptr noundef null) #7
  br label %629

629:                                              ; preds = %628, %619
  %630 = getelementptr inbounds %struct.dwc3_ep, ptr %621, i32 0, i32 2
  %631 = load volatile ptr, ptr %630, align 4
  %632 = icmp eq ptr %631, %630
  br i1 %632, label %656, label %633

633:                                              ; preds = %629
  %634 = load i48, ptr %615, align 4
  %635 = and i48 %634, -5
  store i48 %635, ptr %615, align 4
  %636 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %637 = load ptr, ptr %636, align 4
  tail call void @usb_gadget_set_state(ptr noundef %637, i32 noundef 7) #7
  %638 = load i32, ptr %1, align 1
  %639 = lshr i32 %638, 1
  %640 = and i32 %639, 31
  %641 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 %640
  %642 = load ptr, ptr %641, align 4
  tail call fastcc void @__dwc3_ep0_do_control_status(ptr noundef %642) #7
  br label %656

643:                                              ; preds = %613
  %644 = load i32, ptr %1, align 1
  %645 = lshr i32 %644, 1
  %646 = and i32 %645, 31
  %647 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 %646
  %648 = load ptr, ptr %647, align 4
  tail call fastcc void @__dwc3_ep0_do_control_status(ptr noundef %648) #7
  br label %656

649:                                              ; preds = %2
  %650 = and i32 %3, 251658240
  %651 = icmp eq i32 %650, 134217728
  br i1 %651, label %652, label %656

652:                                              ; preds = %649
  %653 = getelementptr inbounds %struct.dwc3_ep, ptr %7, i32 0, i32 9
  %654 = load i32, ptr %653, align 4
  %655 = and i32 %654, -25
  store i32 %655, ptr %653, align 4
  br label %656

656:                                              ; preds = %652, %649, %643, %633, %629, %609, %604, %597, %594, %593, %592, %583, %522, %521, %437, %425, %402, %381, %378, %342, %322, %307, %216, %215, %137, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dwc3_ep0_do_control_data(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %5 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %6 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %7 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %8 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 12
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.dwc3_request, ptr %2, i32 0, i32 13
  %12 = load i8, ptr %11, align 4
  %13 = select i1 %10, i8 0, i8 2
  %14 = and i8 %12, -3
  %15 = or i8 %14, %13
  store i8 %15, ptr %11, align 4
  %16 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %3
  br i1 %10, label %20, label %25

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 7
  %22 = load i56, ptr %21, align 2
  %23 = trunc i56 %22 to i32
  %24 = and i32 %23, 65535
  br label %25

25:                                               ; preds = %20, %19
  %26 = phi i32 [ 0, %19 ], [ %24, %20 ]
  %27 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dwc3, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 10
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = getelementptr %struct.dwc3_trb, ptr %32, i32 %35
  store i32 %28, ptr %36, align 1
  %37 = getelementptr %struct.dwc3_trb, ptr %32, i32 %35, i32 1
  store i32 0, ptr %37, align 1
  %38 = getelementptr %struct.dwc3_trb, ptr %32, i32 %35, i32 2
  store i32 %26, ptr %38, align 1
  %39 = getelementptr %struct.dwc3_trb, ptr %32, i32 %35, i32 3
  store i32 3155, ptr %39, align 1
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %25
  %43 = tail call ptr @llvm.thread.pointer() #7
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 5
  %47 = getelementptr i32, ptr @__cpu_online_mask, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %45, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %54 = tail call i32 @__traceiter_dwc3_prepare_trb(ptr noundef null, ptr noundef %1, ptr noundef %36) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %55

55:                                               ; preds = %53, %42, %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  %56 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 9
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load ptr, ptr %29, align 4
  %62 = getelementptr inbounds %struct.dwc3, ptr %61, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false) #7
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %7, i32 0, i32 1
  store i32 %63, ptr %64, align 4
  %65 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %7) #7
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.dwc3, ptr %61, i32 0, i32 57
  store i32 1, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %60, %55
  %70 = phi i32 [ 0, %67 ], [ 0, %55 ], [ %65, %60 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  br label %340

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 7
  %73 = load i56, ptr %72, align 2
  %74 = trunc i56 %73 to i32
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -1
  %77 = and i32 %76, %17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %177, label %79

79:                                               ; preds = %71
  %80 = load i8, ptr %8, align 2
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %281

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 13
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %84, ptr noundef %2, i32 noundef 0) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %344

87:                                               ; preds = %82
  %88 = load i56, ptr %72, align 2
  %89 = trunc i56 %88 to i32
  %90 = and i32 %89, 65535
  %91 = load i32, ptr %16, align 4
  %92 = urem i32 %91, %90
  %93 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %94 = load i48, ptr %93, align 4
  %95 = or i48 %94, 8
  store i48 %95, ptr %93, align 4
  %96 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %16, align 4
  %99 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 7
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.dwc3, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 10
  %104 = load i8, ptr %103, align 4
  %105 = zext i8 %104 to i32
  %106 = getelementptr %struct.dwc3_trb, ptr %102, i32 %105
  %107 = add i8 %104, 1
  store i8 %107, ptr %103, align 4
  store i32 %97, ptr %106, align 1
  %108 = getelementptr %struct.dwc3_trb, ptr %102, i32 %105, i32 1
  store i32 0, ptr %108, align 1
  %109 = getelementptr %struct.dwc3_trb, ptr %102, i32 %105, i32 2
  store i32 %98, ptr %109, align 1
  %110 = getelementptr %struct.dwc3_trb, ptr %102, i32 %105, i32 3
  store i32 1109, ptr %110, align 1
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 1), align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %87
  %114 = tail call ptr @llvm.thread.pointer() #7
  %115 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = lshr i32 %116, 5
  %118 = getelementptr i32, ptr @__cpu_online_mask, i32 %117
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %116, 31
  %121 = shl nuw i32 1, %120
  %122 = and i32 %121, %119
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %113
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %125 = tail call i32 @__traceiter_dwc3_prepare_trb(ptr noundef null, ptr noundef %1, ptr noundef %106) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %126

126:                                              ; preds = %124, %113, %87
  %127 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = load i8, ptr %103, align 4
  %130 = zext i8 %129 to i32
  %131 = add nsw i32 %130, -1
  %132 = getelementptr %struct.dwc3_trb, ptr %128, i32 %131
  %133 = getelementptr inbounds %struct.dwc3_request, ptr %2, i32 0, i32 10
  store ptr %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 6
  %135 = load i32, ptr %134, align 4
  %136 = sub nsw i32 %90, %92
  %137 = load ptr, ptr %99, align 4
  %138 = getelementptr inbounds %struct.dwc3, ptr %137, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = load i8, ptr %103, align 4
  %141 = zext i8 %140 to i32
  %142 = getelementptr %struct.dwc3_trb, ptr %139, i32 %141
  store i32 %135, ptr %142, align 1
  %143 = getelementptr %struct.dwc3_trb, ptr %139, i32 %141, i32 1
  store i32 0, ptr %143, align 1
  %144 = getelementptr %struct.dwc3_trb, ptr %139, i32 %141, i32 2
  store i32 %136, ptr %144, align 1
  %145 = getelementptr %struct.dwc3_trb, ptr %139, i32 %141, i32 3
  store i32 3155, ptr %145, align 1
  %146 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 1), align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %126
  %149 = tail call ptr @llvm.thread.pointer() #7
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 5
  %153 = getelementptr i32, ptr @__cpu_online_mask, i32 %152
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %151, 31
  %156 = shl nuw i32 1, %155
  %157 = and i32 %156, %154
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %148
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %160 = tail call i32 @__traceiter_dwc3_prepare_trb(ptr noundef null, ptr noundef %1, ptr noundef %142) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %161

161:                                              ; preds = %159, %148, %126
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  %162 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 9
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 8
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %161
  %167 = load ptr, ptr %99, align 4
  %168 = getelementptr inbounds %struct.dwc3, ptr %167, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false) #7
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %6, i32 0, i32 1
  store i32 %169, ptr %170, align 4
  %171 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %6) #7
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.dwc3, ptr %167, i32 0, i32 57
  store i32 1, ptr %174, align 4
  br label %175

175:                                              ; preds = %173, %166, %161
  %176 = phi i32 [ 0, %173 ], [ 0, %161 ], [ %171, %166 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  br label %340

177:                                              ; preds = %71
  %178 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 6
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, 262144
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = load i8, ptr %8, align 2
  br label %281

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 13
  %186 = load ptr, ptr %185, align 4
  %187 = load i8, ptr %8, align 2
  %188 = zext i8 %187 to i32
  %189 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %186, ptr noundef %2, i32 noundef %188) #7
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %344

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 2
  %193 = load i32, ptr %192, align 4
  %194 = load i32, ptr %16, align 4
  %195 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 7
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.dwc3, ptr %196, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 10
  %200 = load i8, ptr %199, align 4
  %201 = zext i8 %200 to i32
  %202 = getelementptr %struct.dwc3_trb, ptr %198, i32 %201
  %203 = add i8 %200, 1
  store i8 %203, ptr %199, align 4
  store i32 %193, ptr %202, align 1
  %204 = getelementptr %struct.dwc3_trb, ptr %198, i32 %201, i32 1
  store i32 0, ptr %204, align 1
  %205 = getelementptr %struct.dwc3_trb, ptr %198, i32 %201, i32 2
  store i32 %194, ptr %205, align 1
  %206 = getelementptr %struct.dwc3_trb, ptr %198, i32 %201, i32 3
  store i32 1109, ptr %206, align 1
  %207 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 1), align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %191
  %210 = tail call ptr @llvm.thread.pointer() #7
  %211 = getelementptr inbounds %struct.thread_info, ptr %210, i32 0, i32 2
  %212 = load i32, ptr %211, align 8
  %213 = lshr i32 %212, 5
  %214 = getelementptr i32, ptr @__cpu_online_mask, i32 %213
  %215 = load volatile i32, ptr %214, align 4
  %216 = and i32 %212, 31
  %217 = shl nuw i32 1, %216
  %218 = and i32 %217, %215
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %209
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %221 = tail call i32 @__traceiter_dwc3_prepare_trb(ptr noundef null, ptr noundef %1, ptr noundef %202) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %222

222:                                              ; preds = %220, %209, %191
  %223 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = load i8, ptr %199, align 4
  %226 = zext i8 %225 to i32
  %227 = add nsw i32 %226, -1
  %228 = getelementptr %struct.dwc3_trb, ptr %224, i32 %227
  %229 = getelementptr inbounds %struct.dwc3_request, ptr %2, i32 0, i32 10
  store ptr %228, ptr %229, align 4
  %230 = load i8, ptr %11, align 4
  %231 = and i8 %230, 2
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %222
  %234 = load i56, ptr %72, align 2
  %235 = trunc i56 %234 to i32
  %236 = and i32 %235, 65535
  br label %237

237:                                              ; preds = %233, %222
  %238 = phi i32 [ 0, %222 ], [ %236, %233 ]
  %239 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 6
  %240 = load i32, ptr %239, align 4
  %241 = load ptr, ptr %195, align 4
  %242 = getelementptr inbounds %struct.dwc3, ptr %241, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  %244 = load i8, ptr %199, align 4
  %245 = zext i8 %244 to i32
  %246 = getelementptr %struct.dwc3_trb, ptr %243, i32 %245
  store i32 %240, ptr %246, align 1
  %247 = getelementptr %struct.dwc3_trb, ptr %243, i32 %245, i32 1
  store i32 0, ptr %247, align 1
  %248 = getelementptr %struct.dwc3_trb, ptr %243, i32 %245, i32 2
  store i32 %238, ptr %248, align 1
  %249 = getelementptr %struct.dwc3_trb, ptr %243, i32 %245, i32 3
  store i32 3155, ptr %249, align 1
  %250 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 1), align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %237
  %253 = tail call ptr @llvm.thread.pointer() #7
  %254 = getelementptr inbounds %struct.thread_info, ptr %253, i32 0, i32 2
  %255 = load i32, ptr %254, align 8
  %256 = lshr i32 %255, 5
  %257 = getelementptr i32, ptr @__cpu_online_mask, i32 %256
  %258 = load volatile i32, ptr %257, align 4
  %259 = and i32 %255, 31
  %260 = shl nuw i32 1, %259
  %261 = and i32 %260, %258
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %252
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %264 = tail call i32 @__traceiter_dwc3_prepare_trb(ptr noundef null, ptr noundef %1, ptr noundef %246) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %265

265:                                              ; preds = %263, %252, %237
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  %266 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 9
  %267 = load i32, ptr %266, align 4
  %268 = and i32 %267, 8
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %265
  %271 = load ptr, ptr %195, align 4
  %272 = getelementptr inbounds %struct.dwc3, ptr %271, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false) #7
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %5, i32 0, i32 1
  store i32 %273, ptr %274, align 4
  %275 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %5) #7
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.dwc3, ptr %271, i32 0, i32 57
  store i32 1, ptr %278, align 4
  br label %279

279:                                              ; preds = %277, %270, %265
  %280 = phi i32 [ 0, %277 ], [ 0, %265 ], [ %275, %270 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  br label %340

281:                                              ; preds = %182, %79
  %282 = phi i8 [ %183, %182 ], [ %80, %79 ]
  %283 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 13
  %284 = load ptr, ptr %283, align 4
  %285 = zext i8 %282 to i32
  %286 = tail call i32 @usb_gadget_map_request_by_dev(ptr noundef %284, ptr noundef %2, i32 noundef %285) #7
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %344

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 2
  %290 = load i32, ptr %289, align 4
  %291 = load i32, ptr %16, align 4
  %292 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 7
  %293 = load ptr, ptr %292, align 4
  %294 = getelementptr inbounds %struct.dwc3, ptr %293, i32 0, i32 1
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 10
  %297 = load i8, ptr %296, align 4
  %298 = zext i8 %297 to i32
  %299 = getelementptr %struct.dwc3_trb, ptr %295, i32 %298
  store i32 %290, ptr %299, align 1
  %300 = getelementptr %struct.dwc3_trb, ptr %295, i32 %298, i32 1
  store i32 0, ptr %300, align 1
  %301 = getelementptr %struct.dwc3_trb, ptr %295, i32 %298, i32 2
  store i32 %291, ptr %301, align 1
  %302 = getelementptr %struct.dwc3_trb, ptr %295, i32 %298, i32 3
  store i32 3155, ptr %302, align 1
  %303 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 1), align 4
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %318

305:                                              ; preds = %288
  %306 = tail call ptr @llvm.thread.pointer() #7
  %307 = getelementptr inbounds %struct.thread_info, ptr %306, i32 0, i32 2
  %308 = load i32, ptr %307, align 8
  %309 = lshr i32 %308, 5
  %310 = getelementptr i32, ptr @__cpu_online_mask, i32 %309
  %311 = load volatile i32, ptr %310, align 4
  %312 = and i32 %308, 31
  %313 = shl nuw i32 1, %312
  %314 = and i32 %313, %311
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %318, label %316

316:                                              ; preds = %305
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %317 = tail call i32 @__traceiter_dwc3_prepare_trb(ptr noundef null, ptr noundef %1, ptr noundef %299) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %318

318:                                              ; preds = %316, %305, %288
  %319 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 1
  %320 = load ptr, ptr %319, align 4
  %321 = load i8, ptr %296, align 4
  %322 = zext i8 %321 to i32
  %323 = getelementptr %struct.dwc3_trb, ptr %320, i32 %322
  %324 = getelementptr inbounds %struct.dwc3_request, ptr %2, i32 0, i32 10
  store ptr %323, ptr %324, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  %325 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 9
  %326 = load i32, ptr %325, align 4
  %327 = and i32 %326, 8
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %338

329:                                              ; preds = %318
  %330 = load ptr, ptr %292, align 4
  %331 = getelementptr inbounds %struct.dwc3, ptr %330, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false) #7
  %332 = load i32, ptr %331, align 4
  %333 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %4, i32 0, i32 1
  store i32 %332, ptr %333, align 4
  %334 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %4) #7
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %338, label %336

336:                                              ; preds = %329
  %337 = getelementptr inbounds %struct.dwc3, ptr %330, i32 0, i32 57
  store i32 1, ptr %337, align 4
  br label %338

338:                                              ; preds = %336, %329, %318
  %339 = phi i32 [ 0, %336 ], [ 0, %318 ], [ %334, %329 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  br label %340

340:                                              ; preds = %338, %279, %175, %69
  %341 = phi i32 [ %70, %69 ], [ %280, %279 ], [ %339, %338 ], [ %176, %175 ]
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %344, !prof !26

343:                                              ; preds = %340
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1036, i32 noundef 9, ptr noundef null) #7
  br label %344

344:                                              ; preds = %343, %340, %281, %184, %82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request_by_dev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dwc3_gadget_ep_set_halt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_gadget_giveback(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_prepare_trb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_send_gadget_ep_cmd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_ctrl_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dwc3_ep0_handle_feature(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1
  %5 = and i8 %4, 31
  %6 = zext i8 %5 to i32
  switch i32 %6, label %188 [
    i32 0, label %7
    i32 1, label %146
    i32 2, label %151
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %9 = load i16, ptr %8, align 1
  %10 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 18
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  switch i16 %9, label %145 [
    i16 1, label %188
    i16 48, label %14
    i16 49, label %71
    i16 50, label %128
    i16 2, label %129
  ]

14:                                               ; preds = %7
  %15 = icmp eq i32 %13, 7
  br i1 %15, label %16, label %188

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 64
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, -2
  %20 = icmp eq i8 %19, 4
  br i1 %20, label %21, label %188

21:                                               ; preds = %16
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %25 = load i48, ptr %24, align 4
  %26 = and i48 %25, 1073741824
  %27 = icmp eq i48 %26, 0
  br i1 %27, label %28, label %188

28:                                               ; preds = %23, %21
  %29 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 1540
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %33 = getelementptr i8, ptr %30, i32 -49408
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = tail call ptr @llvm.thread.pointer() #7
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
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %48 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %33, i32 noundef 50948, i32 noundef %32) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  br label %49

49:                                               ; preds = %47, %36, %28
  %50 = and i32 %32, -1025
  %51 = select i1 %22, i32 0, i32 1024
  %52 = or i32 %50, %51
  %53 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %54 = getelementptr i8, ptr %53, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #7, !srcloc !17
  %55 = getelementptr i8, ptr %53, i32 -49408
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %188

58:                                               ; preds = %49
  %59 = tail call ptr @llvm.thread.pointer() #7
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 5
  %63 = getelementptr i32, ptr @__cpu_online_mask, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %61, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %188, label %69

69:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %70 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %55, i32 noundef 50948, i32 noundef %52) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %188

71:                                               ; preds = %7
  %72 = icmp eq i32 %13, 7
  br i1 %72, label %73, label %188

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 64
  %75 = load i8, ptr %74, align 2
  %76 = and i8 %75, -2
  %77 = icmp eq i8 %76, 4
  br i1 %77, label %78, label %188

78:                                               ; preds = %73
  %79 = icmp eq i32 %2, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 79
  %82 = load i48, ptr %81, align 4
  %83 = and i48 %82, 2147483648
  %84 = icmp eq i48 %83, 0
  br i1 %84, label %85, label %188

85:                                               ; preds = %80, %78
  %86 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 30
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 1540
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %90 = getelementptr i8, ptr %87, i32 -49408
  %91 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %85
  %94 = tail call ptr @llvm.thread.pointer() #7
  %95 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %96 = load i32, ptr %95, align 8
  %97 = lshr i32 %96, 5
  %98 = getelementptr i32, ptr @__cpu_online_mask, i32 %97
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %96, 31
  %101 = shl nuw i32 1, %100
  %102 = and i32 %101, %99
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %93
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %105 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %90, i32 noundef 50948, i32 noundef %89) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  br label %106

106:                                              ; preds = %104, %93, %85
  %107 = and i32 %89, -4097
  %108 = select i1 %79, i32 0, i32 4096
  %109 = or i32 %107, %108
  %110 = load ptr, ptr %86, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %111 = getelementptr i8, ptr %110, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #7, !srcloc !17
  %112 = getelementptr i8, ptr %110, i32 -49408
  %113 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 1), align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %188

115:                                              ; preds = %106
  %116 = tail call ptr @llvm.thread.pointer() #7
  %117 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %118 = load i32, ptr %117, align 8
  %119 = lshr i32 %118, 5
  %120 = getelementptr i32, ptr @__cpu_online_mask, i32 %119
  %121 = load volatile i32, ptr %120, align 4
  %122 = and i32 %118, 31
  %123 = shl nuw i32 1, %122
  %124 = and i32 %123, %121
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %188, label %126

126:                                              ; preds = %115
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %127 = tail call i32 @__traceiter_dwc3_writel(ptr noundef null, ptr noundef %112, i32 noundef 50948, i32 noundef %109) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %188

128:                                              ; preds = %7
  br label %188

129:                                              ; preds = %7
  %130 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %131 = load i16, ptr %130, align 1
  %132 = zext i16 %131 to i32
  %133 = and i32 %132, 255
  %134 = icmp ne i32 %133, 0
  %135 = icmp eq i32 %2, 0
  %136 = or i1 %135, %134
  br i1 %136, label %188, label %137

137:                                              ; preds = %129
  %138 = lshr i32 %132, 8
  %139 = add nsw i32 %138, -1
  %140 = icmp ult i32 %139, 5
  br i1 %140, label %141, label %188

141:                                              ; preds = %137
  %142 = trunc i32 %138 to i8
  %143 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 70
  store i8 %142, ptr %143, align 1
  %144 = getelementptr inbounds %struct.dwc3, ptr %0, i32 0, i32 69
  store i8 1, ptr %144, align 4
  br label %188

145:                                              ; preds = %7
  br label %188

146:                                              ; preds = %3
  %147 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %148 = load i16, ptr %147, align 1
  %149 = icmp eq i16 %148, 0
  %150 = select i1 %149, i32 0, i32 -22
  br label %188

151:                                              ; preds = %3
  %152 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %153 = load i16, ptr %152, align 1
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %188

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %157 = load i16, ptr %156, align 1
  %158 = zext i16 %157 to i32
  %159 = shl nuw nsw i32 %158, 1
  %160 = and i32 %159, 30
  %161 = lshr i32 %158, 7
  %162 = and i32 %161, 1
  %163 = or i32 %162, %160
  %164 = getelementptr %struct.dwc3, ptr %0, i32 0, i32 17, i32 %163
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %188, label %167

167:                                              ; preds = %155
  %168 = getelementptr inbounds %struct.dwc3_ep, ptr %165, i32 0, i32 9
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %188, label %172

172:                                              ; preds = %167
  %173 = icmp eq i32 %2, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %172
  %175 = and i32 %169, 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef nonnull %165, i32 noundef 0, i32 noundef 1) #7
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %188

180:                                              ; preds = %172
  %181 = tail call i32 @__dwc3_gadget_ep_set_halt(ptr noundef nonnull %165, i32 noundef %2, i32 noundef 1) #7
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %187, label %188

183:                                              ; preds = %177
  %184 = load i32, ptr %168, align 4
  %185 = and i32 %184, 16
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183, %180, %174
  br label %188

188:                                              ; preds = %187, %183, %180, %177, %167, %155, %151, %146, %145, %141, %137, %129, %128, %126, %115, %106, %80, %73, %71, %69, %58, %49, %23, %16, %14, %7, %3
  %189 = phi i32 [ %150, %146 ], [ -22, %3 ], [ -22, %145 ], [ -22, %128 ], [ 0, %7 ], [ -22, %14 ], [ -22, %16 ], [ -22, %23 ], [ 0, %49 ], [ 0, %58 ], [ 0, %69 ], [ -22, %71 ], [ -22, %73 ], [ -22, %80 ], [ 0, %106 ], [ 0, %115 ], [ 0, %126 ], [ 0, %141 ], [ -22, %129 ], [ -22, %137 ], [ 0, %187 ], [ -22, %177 ], [ 32767, %183 ], [ -22, %151 ], [ -22, %180 ], [ -22, %155 ], [ -22, %167 ]
  ret i32 %189
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @dwc3_ep0_status_cmpl(ptr nocapture noundef %0, ptr nocapture noundef %1) #6 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc3_gadget_clear_tx_fifos(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc3_ep0_set_sel_cmpl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds i8, ptr %5, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds i8, ptr %5, i32 2
  %10 = load i16, ptr %9, align 1
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  %12 = load i16, ptr %11, align 1
  %13 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 62
  store i8 %6, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 63
  store i8 %8, ptr %14, align 1
  %15 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 60
  store i16 %10, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 61
  store i16 %12, ptr %16, align 2
  %17 = getelementptr inbounds %struct.dwc3, ptr %4, i32 0, i32 30
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 1540
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %21 = getelementptr i8, ptr %18, i32 -49408
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = tail call ptr @llvm.thread.pointer() #7
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %36 = tail call i32 @__traceiter_dwc3_readl(ptr noundef null, ptr noundef %21, i32 noundef 50948, i32 noundef %20) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !15
  br label %37

37:                                               ; preds = %35, %24, %2
  %38 = and i32 %20, 4096
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i16, ptr %16, align 2
  %42 = zext i16 %41 to i32
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %42, %40 ], [ 0, %37 ]
  %45 = and i32 %20, 1024
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i8, ptr %14, align 1
  %49 = zext i8 %48 to i32
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i32 [ %49, %47 ], [ %44, %43 ]
  %52 = icmp ugt i32 %51, 125
  %53 = select i1 %52, i32 0, i32 %51
  %54 = tail call i32 @dwc3_send_gadget_generic_command(ptr noundef %4, i32 noundef 2, i32 noundef %53) #7
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57, !prof !26

56:                                               ; preds = %50
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 706, i32 noundef 9, ptr noundef null) #7
  br label %57

57:                                               ; preds = %56, %50
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_send_gadget_generic_command(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dwc3_complete_trb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc3_gadget_set_test_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc3_ep0_end_control_data(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  %3 = getelementptr inbounds %struct.dwc3_ep, ptr %0, i32 0, i32 14
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = zext i8 %4 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or i32 %8, 264
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false)
  %10 = call i32 @dwc3_send_gadget_ep_cmd(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %2) #7
  %11 = icmp ne i32 %10, 0
  %12 = load i1, ptr @dwc3_ep0_end_control_data.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !26

15:                                               ; preds = %6
  store i1 true, ptr @dwc3_ep0_end_control_data.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1090, i32 noundef 9, ptr noundef null) #7
  br label %16

16:                                               ; preds = %15, %6
  store i8 0, ptr %3, align 4
  br label %17

17:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2154295578}
!9 = !{i64 2154295738}
!10 = !{i64 2154156623}
!11 = !{i64 2154156769}
!12 = !{i64 3874693}
!13 = !{i64 2154363094}
!14 = !{i64 2154105265}
!15 = !{i64 2154105435}
!16 = !{i64 2154363469}
!17 = !{i64 3874275}
!18 = !{i64 2154121231}
!19 = !{i64 2154121403}
!20 = !{i64 2148949853}
!21 = !{i64 2148945677}
!22 = !{i64 2148945752, i64 2148945779, i64 2148945826, i64 2148945848, i64 2148945876, i64 2148945896}
!23 = !{i64 2148972856}
!24 = !{i64 2154311911}
!25 = !{i64 2154312073}
!26 = !{!"branch_weights", i32 1, i32 2000}
