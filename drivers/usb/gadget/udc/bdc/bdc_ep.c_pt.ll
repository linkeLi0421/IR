; ModuleID = '/llk/IR/drivers/usb/gadget/udc/bdc/bdc_ep.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/bdc/bdc_ep.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_ep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bdc = type { %struct.usb_gadget, ptr, ptr, %struct.spinlock, ptr, i32, i32, ptr, ptr, %struct.bdc_scratchpad, i32, %struct.srr, %struct.usb_ctrlrequest, %struct.bdc_req, %struct.bdc_req, i32, i8, i8, i8, i8, i32, i32, ptr, i32, ptr, i8, [2 x ptr], [3 x ptr], [6 x i8], %struct.delayed_work, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.bdc_scratchpad = type { i32, ptr, i32 }
%struct.srr = type { ptr, i16, i16, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.bdc_req = type { %struct.usb_request, %struct.list_head, ptr, %struct.bd_transfer, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.bd_transfer = type { ptr, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bdc_ep = type { %struct.usb_ep, %struct.list_head, ptr, i8, i8, i8, ptr, ptr, i32, [20 x i8], %struct.bd_list, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.bd_list = type { ptr, i32, i32, i32, i32, i32 }
%struct.bd_table = type { ptr, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.bdc_bd = type { [4 x i32] }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [43 x i8] c"dconfig fail but continue with memory free\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ep bd list allocation failed:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Data stage not expected ep0_state:%s\0A\00", align 1
@ep0_state_string = internal unnamed_addr constant [6 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Status stage recv but ep0_state:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"xsf for ep not enabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"ep0 related packets on non ep0 endpoint\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Babble on ep not handled\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"sr status not handled:%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"init ep ep0 fail %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"init ep failed for:%d error: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"failed to set STALL on %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"failed to clear STALL on %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"WAIT_FOR_SETUP\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"WAIT_FOR_DATA_START\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"WAIT_FOR_DATA_XMIT\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"WAIT_FOR_STATUS_START\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"WAIT_FOR_STATUS_XMIT\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"STATUS_PENDING\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"USB_REQ_SET_ISOCH_DELAY not handled\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"SET Address in wrong device state %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Unknown recipient\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Unknown wValue:%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"ISSUE, GET_STATUS for invalid EP ?\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Unknown recipient for get_status\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"dma mapping failed %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Err bd pointing to wrong addr\0A\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"Unknown ep0 state for queueing bd ep0_state:%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"%s Wrong wLength:%d\0A\00", align 1
@__func__.ep0_set_sel = private unnamed_addr constant [12 x i8] c"ep0_set_sel\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"xfr srr with no BD's queued\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"bd doesn't exist?\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"%s FATAL err, bd not found\0A\00", align 1
@__func__.bd_add_to_bdi = private unnamed_addr constant [14 x i8] c"bd_add_to_bdi\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Err in setting Test mode\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Unknown ep0_state:%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"err queueing zlp :%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"ep%d\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"ep%d%s\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@bdc_gadget_ep_ops = internal constant %struct.usb_ep_ops { ptr @bdc_gadget_ep_enable, ptr @bdc_gadget_ep_disable, ptr null, ptr @bdc_gadget_alloc_request, ptr @bdc_gadget_free_request, ptr @bdc_gadget_ep_queue, ptr @bdc_gadget_ep_dequeue, ptr @bdc_gadget_ep_set_halt, ptr null, ptr null, ptr null }, align 4
@.str.38 = private unnamed_addr constant [19 x i8] c"%s called for ep0\0A\00", align 1
@__func__.bdc_gadget_ep_disable = private unnamed_addr constant [22 x i8] c"bdc_gadget_ep_disable\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"%s is already disabled\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"req length > supported MAX:%d requested:%d\0A\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"dma mapping failed\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"usb_req !=req n\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"error in ep_bla:%d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdc_notify_xfr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr ptr, ptr %4, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !8

11:                                               ; preds = %2
  %12 = and i32 %8, -5
  store i32 %12, ptr %7, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %16 = getelementptr i8, ptr %15, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %1) #10, !srcloc !10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_ep_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = tail call i32 @bdc_stop_ep(ptr noundef %3, i32 noundef %6) #10
  %8 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %36, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 4
  br label %13

13:                                               ; preds = %33, %11
  %14 = phi ptr [ %9, %11 ], [ %34, %33 ]
  %15 = getelementptr i8, ptr %14, i32 -56
  %16 = load ptr, ptr %2, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %14, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  %23 = getelementptr i8, ptr %14, i32 -8
  store i32 -108, ptr %23, align 4
  %24 = load i8, ptr %12, align 1
  %25 = zext i8 %24 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %16, ptr noundef nonnull %15, i32 noundef %25) #10
  %26 = getelementptr i8, ptr %14, i32 -28
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.bdc, ptr %16, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %31 = load i16, ptr %30, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  tail call void @usb_gadget_giveback_request(ptr noundef %0, ptr noundef nonnull %15) #10
  tail call void @_raw_spin_lock(ptr noundef %30) #10
  br label %33

33:                                               ; preds = %29, %18, %13
  %34 = load volatile ptr, ptr %8, align 4
  %35 = icmp eq ptr %34, %8
  br i1 %35, label %36, label %13

36:                                               ; preds = %33, %1
  %37 = tail call i32 @bdc_dconfig_ep(ptr noundef %3, ptr noundef %0) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.bdc, ptr %3, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str) #11
  br label %42

42:                                               ; preds = %39, %36
  %43 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 8
  store i32 0, ptr %43, align 4
  %44 = load i8, ptr %4, align 2
  %45 = icmp eq i8 %44, 1
  br i1 %45, label %82, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10
  %50 = load ptr, ptr %2, align 4
  %51 = load ptr, ptr %49, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %77, label %53

53:                                               ; preds = %46
  %54 = icmp eq i32 %48, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.bdc, ptr %50, i32 0, i32 24
  br label %57

57:                                               ; preds = %71, %55
  %58 = phi ptr [ %51, %55 ], [ %72, %71 ]
  %59 = phi i32 [ 0, %55 ], [ %73, %71 ]
  %60 = getelementptr ptr, ptr %58, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %61, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %56, align 4
  %68 = getelementptr inbounds %struct.bd_table, ptr %61, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  tail call void @dma_pool_free(ptr noundef %67, ptr noundef nonnull %64, i32 noundef %69) #10
  tail call void @kfree(ptr noundef nonnull %61) #10
  %70 = load ptr, ptr %49, align 4
  br label %71

71:                                               ; preds = %66, %63, %57
  %72 = phi ptr [ %70, %66 ], [ %58, %63 ], [ %58, %57 ]
  %73 = add nuw i32 %59, 1
  %74 = icmp eq i32 %73, %48
  br i1 %74, label %75, label %57

75:                                               ; preds = %71, %53
  %76 = phi ptr [ %51, %53 ], [ %72, %71 ]
  tail call void @kfree(ptr noundef %76) #10
  br label %77

77:                                               ; preds = %75, %46
  %78 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 7
  store ptr null, ptr %78, align 4
  %79 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 6
  store ptr null, ptr %79, align 4
  %80 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  store ptr null, ptr %80, align 4
  %81 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 3
  store i8 0, ptr %81, align 4
  br label %82

82:                                               ; preds = %77, %42
  %83 = phi i32 [ %37, %77 ], [ 0, %42 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_stop_ep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_dconfig_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_ep_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %6, i32 0, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 3
  %10 = icmp eq i8 %9, 1
  %11 = select i1 %10, i32 6, i32 2
  %12 = shl nuw nsw i32 %11, 2
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 2848) #12
  %14 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %132, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 24
  br label %18

18:                                               ; preds = %45, %16
  %19 = phi i32 [ 0, %16 ], [ %46, %45 ]
  %20 = phi ptr [ null, %16 ], [ %22, %45 ]
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 2848, i32 noundef 8) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %17, align 4
  %26 = call ptr @dma_pool_alloc(ptr noundef %25, i32 noundef 2848, ptr noundef nonnull %2) #10
  store ptr %26, ptr %22, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @kfree(ptr noundef nonnull %22) #10
  br label %48

29:                                               ; preds = %24
  %30 = load i32, ptr %2, align 4
  %31 = getelementptr inbounds %struct.bd_table, ptr %22, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %14, align 4
  %33 = getelementptr ptr, ptr %32, i32 %19
  store ptr %22, ptr %33, align 4
  %34 = icmp eq ptr %20, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load i32, ptr %31, align 4
  %37 = load ptr, ptr %20, align 8
  %38 = getelementptr %struct.bdc_bd, ptr %37, i32 63
  store i32 %36, ptr %38, align 4
  %39 = load ptr, ptr %20, align 8
  %40 = getelementptr %struct.bdc_bd, ptr %39, i32 63, i32 0, i32 1
  store i32 0, ptr %40, align 4
  %41 = load ptr, ptr %20, align 8
  %42 = getelementptr %struct.bdc_bd, ptr %41, i32 63, i32 0, i32 2
  store i32 0, ptr %42, align 4
  %43 = load ptr, ptr %20, align 8
  %44 = getelementptr %struct.bdc_bd, ptr %43, i32 63, i32 0, i32 3
  store i32 201326607, ptr %44, align 4
  br label %45

45:                                               ; preds = %35, %29
  %46 = add nuw nsw i32 %19, 1
  %47 = icmp eq i32 %46, %11
  br i1 %47, label %135, label %18

48:                                               ; preds = %28, %18
  %49 = load ptr, ptr %14, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %132, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr inbounds %struct.bdc, ptr %52, i32 0, i32 24
  %54 = load ptr, ptr %49, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %54, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %53, align 4
  %61 = getelementptr inbounds %struct.bd_table, ptr %54, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  call void @dma_pool_free(ptr noundef %60, ptr noundef nonnull %57, i32 noundef %62) #10
  call void @kfree(ptr noundef nonnull %54) #10
  %63 = load ptr, ptr %14, align 4
  br label %64

64:                                               ; preds = %59, %56, %51
  %65 = phi ptr [ %63, %59 ], [ %49, %56 ], [ %49, %51 ]
  %66 = getelementptr ptr, ptr %65, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %67, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %53, align 4
  %74 = getelementptr inbounds %struct.bd_table, ptr %67, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  call void @dma_pool_free(ptr noundef %73, ptr noundef nonnull %70, i32 noundef %75) #10
  call void @kfree(ptr noundef nonnull %67) #10
  %76 = load ptr, ptr %14, align 4
  br label %77

77:                                               ; preds = %72, %69, %64
  %78 = phi ptr [ %76, %72 ], [ %65, %69 ], [ %65, %64 ]
  br i1 %10, label %79, label %130

79:                                               ; preds = %77
  %80 = getelementptr ptr, ptr %78, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %81, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %53, align 4
  %88 = getelementptr inbounds %struct.bd_table, ptr %81, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  call void @dma_pool_free(ptr noundef %87, ptr noundef nonnull %84, i32 noundef %89) #10
  call void @kfree(ptr noundef nonnull %81) #10
  %90 = load ptr, ptr %14, align 4
  br label %91

91:                                               ; preds = %86, %83, %79
  %92 = phi ptr [ %90, %86 ], [ %78, %83 ], [ %78, %79 ]
  %93 = getelementptr ptr, ptr %92, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %94, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %53, align 4
  %101 = getelementptr inbounds %struct.bd_table, ptr %94, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  call void @dma_pool_free(ptr noundef %100, ptr noundef nonnull %97, i32 noundef %102) #10
  call void @kfree(ptr noundef nonnull %94) #10
  %103 = load ptr, ptr %14, align 4
  br label %104

104:                                              ; preds = %99, %96, %91
  %105 = phi ptr [ %103, %99 ], [ %92, %96 ], [ %92, %91 ]
  %106 = getelementptr ptr, ptr %105, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %104
  %110 = load ptr, ptr %107, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %53, align 4
  %114 = getelementptr inbounds %struct.bd_table, ptr %107, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  call void @dma_pool_free(ptr noundef %113, ptr noundef nonnull %110, i32 noundef %115) #10
  call void @kfree(ptr noundef nonnull %107) #10
  %116 = load ptr, ptr %14, align 4
  br label %117

117:                                              ; preds = %112, %109, %104
  %118 = phi ptr [ %116, %112 ], [ %105, %109 ], [ %105, %104 ]
  %119 = getelementptr ptr, ptr %118, i32 5
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %117
  %123 = load ptr, ptr %120, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr %53, align 4
  %127 = getelementptr inbounds %struct.bd_table, ptr %120, i32 0, i32 1
  %128 = load i32, ptr %127, align 4
  call void @dma_pool_free(ptr noundef %126, ptr noundef nonnull %123, i32 noundef %128) #10
  call void @kfree(ptr noundef nonnull %120) #10
  %129 = load ptr, ptr %14, align 4
  br label %130

130:                                              ; preds = %125, %122, %117, %77
  %131 = phi ptr [ %78, %77 ], [ %129, %125 ], [ %118, %122 ], [ %118, %117 ]
  call void @kfree(ptr noundef %131) #10
  br label %132

132:                                              ; preds = %130, %48, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %133 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.1, i32 noundef -12) #11
  br label %182

135:                                              ; preds = %45
  %136 = load ptr, ptr %14, align 4
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.bd_table, ptr %137, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = load ptr, ptr %22, align 8
  %141 = getelementptr %struct.bdc_bd, ptr %140, i32 63
  store i32 %139, ptr %141, align 4
  %142 = load ptr, ptr %22, align 8
  %143 = getelementptr %struct.bdc_bd, ptr %142, i32 63, i32 0, i32 1
  store i32 0, ptr %143, align 4
  %144 = load ptr, ptr %22, align 8
  %145 = getelementptr %struct.bdc_bd, ptr %144, i32 63, i32 0, i32 2
  store i32 0, ptr %145, align 4
  %146 = load ptr, ptr %22, align 8
  %147 = getelementptr %struct.bdc_bd, ptr %146, i32 63, i32 0, i32 3
  store i32 201326607, ptr %147, align 4
  %148 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10, i32 1
  %149 = shl nuw nsw i32 %11, 6
  %150 = add nsw i32 %149, -1
  %151 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10, i32 2
  store i32 %150, ptr %151, align 4
  store i32 %11, ptr %148, align 4
  %152 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10, i32 5
  store i32 64, ptr %152, align 4
  %153 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10, i32 3
  store i32 0, ptr %153, align 4
  %154 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10, i32 4
  store i32 0, ptr %154, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %155 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 5
  %156 = load i8, ptr %155, align 2
  %157 = icmp eq i8 %156, 1
  br i1 %157, label %182, label %158

158:                                              ; preds = %135
  %159 = call i32 @bdc_config_ep(ptr noundef %4, ptr noundef %0) #10
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %182

161:                                              ; preds = %158
  %162 = load ptr, ptr %5, align 4
  %163 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %162, i32 0, i32 4
  %164 = load i16, ptr %163, align 1
  %165 = and i16 %164, 2047
  %166 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 7
  %167 = load i56, ptr %166, align 2
  %168 = zext i16 %165 to i56
  %169 = and i56 %167, -65536
  %170 = or i56 %169, %168
  store i56 %170, ptr %166, align 2
  %171 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  store ptr %162, ptr %171, align 4
  %172 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 6
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 10
  store ptr %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %162, i32 0, i32 3
  %176 = load i8, ptr %175, align 1
  %177 = and i8 %176, 3
  %178 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 3
  store i8 %177, ptr %178, align 4
  %179 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 8
  %180 = load i32, ptr %179, align 4
  %181 = or i32 %180, 1
  store i32 %181, ptr %179, align 4
  br label %182

182:                                              ; preds = %161, %158, %135, %132
  %183 = phi i32 [ -12, %132 ], [ 0, %161 ], [ 0, %135 ], [ %159, %158 ]
  ret i32 %183
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_config_ep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdc_free_ep(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %67

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  br label %7

7:                                                ; preds = %62, %5
  %8 = phi i32 [ %3, %5 ], [ %63, %62 ]
  %9 = phi i32 [ 1, %5 ], [ %65, %62 ]
  %10 = phi i8 [ 1, %5 ], [ %64, %62 ]
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr ptr, ptr %11, i32 %9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %62, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.bdc_ep, ptr %13, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bdc_ep, ptr %13, i32 0, i32 10, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bdc_ep, ptr %13, i32 0, i32 10
  %24 = getelementptr inbounds %struct.bdc_ep, ptr %13, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %28

28:                                               ; preds = %20
  %29 = icmp eq i32 %22, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.bdc, ptr %25, i32 0, i32 24
  br label %32

32:                                               ; preds = %46, %30
  %33 = phi ptr [ %26, %30 ], [ %47, %46 ]
  %34 = phi i32 [ 0, %30 ], [ %48, %46 ]
  %35 = getelementptr ptr, ptr %33, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %36, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %31, align 4
  %43 = getelementptr inbounds %struct.bd_table, ptr %36, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  tail call void @dma_pool_free(ptr noundef %42, ptr noundef nonnull %39, i32 noundef %44) #10
  tail call void @kfree(ptr noundef nonnull %36) #10
  %45 = load ptr, ptr %23, align 4
  br label %46

46:                                               ; preds = %41, %38, %32
  %47 = phi ptr [ %45, %41 ], [ %33, %38 ], [ %33, %32 ]
  %48 = add nuw i32 %34, 1
  %49 = icmp eq i32 %48, %22
  br i1 %49, label %50, label %32

50:                                               ; preds = %46, %28
  %51 = phi ptr [ %26, %28 ], [ %47, %46 ]
  tail call void @kfree(ptr noundef %51) #10
  br label %52

52:                                               ; preds = %50, %20, %15
  %53 = icmp eq i8 %10, 1
  br i1 %53, label %60, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.usb_ep, ptr %13, i32 0, i32 3
  %56 = getelementptr inbounds %struct.usb_ep, ptr %13, i32 0, i32 3, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %55, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %55, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  br label %60

60:                                               ; preds = %54, %52
  tail call void @kfree(ptr noundef nonnull %13) #10
  %61 = load i32, ptr %2, align 4
  br label %62

62:                                               ; preds = %60, %7
  %63 = phi i32 [ %8, %7 ], [ %61, %60 ]
  %64 = add i8 %10, 1
  %65 = zext i8 %64 to i32
  %66 = icmp ugt i32 %63, %65
  br i1 %66, label %7, label %67

67:                                               ; preds = %62, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @bdc_xsf_ep0_setup_recv(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 12
  %4 = load i64, ptr %1, align 4
  store i64 %4, ptr %3, align 1
  %5 = icmp ult i64 %4, 281474976710656
  %6 = select i1 %5, i32 3, i32 1
  %7 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 15
  store i32 %6, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdc_xsf_ep0_data_start(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 5
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i32
  %17 = tail call i32 @bdc_ep_clear_stall(ptr noundef %13, i32 noundef %16) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, ptr %7, align 4
  %21 = and i32 %20, -3
  store i32 %21, ptr %7, align 4
  br label %26

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.bdc, ptr %13, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.11, ptr noundef %25) #11
  br label %40

26:                                               ; preds = %19, %2
  %27 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 15
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %28
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.2, ptr noundef %34) #11
  br label %35

35:                                               ; preds = %30, %26
  %36 = tail call fastcc i32 @handle_control_request(ptr noundef %0)
  switch i32 %36, label %40 [
    i32 32767, label %37
    i32 0, label %39
  ]

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 16
  store i8 1, ptr %38, align 8
  br label %41

39:                                               ; preds = %35
  store i32 2, ptr %27, align 4
  br label %41

40:                                               ; preds = %35, %22
  tail call fastcc void @ep0_stall(ptr noundef %0)
  br label %41

41:                                               ; preds = %40, %39, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ep_set_halt(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 2
  br i1 %5, label %26, label %8

8:                                                ; preds = %2
  %9 = icmp eq i8 %7, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 15
  store i32 0, ptr %11, align 4
  %12 = load i8, ptr %6, align 2
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i8 [ %12, %10 ], [ %7, %8 ]
  %15 = zext i8 %14 to i32
  %16 = tail call i32 @bdc_ep_set_stall(ptr noundef %4, i32 noundef %15) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.10, ptr noundef %21) #11
  br label %38

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 2
  store i32 %25, ptr %23, align 4
  br label %38

26:                                               ; preds = %2
  %27 = zext i8 %7 to i32
  %28 = tail call i32 @bdc_ep_clear_stall(ptr noundef %4, i32 noundef %27) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.11, ptr noundef %33) #11
  br label %38

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, -3
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %30, %22, %18
  %39 = phi i32 [ %16, %18 ], [ 0, %22 ], [ %28, %30 ], [ 0, %34 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @handle_control_request(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 12
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 96
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %128

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 12, i32 1
  %10 = load i8, ptr %9, align 1
  switch i8 %10, label %128 [
    i8 5, label %11
    i8 9, label %34
    i8 3, label %39
    i8 1, label %41
    i8 0, label %43
    i8 48, label %103
    i8 49, label %123
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 12, i32 2
  %13 = load i16, ptr %12, align 1
  %14 = zext i16 %13 to i32
  %15 = icmp ugt i16 %13, 127
  br i1 %15, label %29, label %16

16:                                               ; preds = %11
  %17 = add i32 %3, -5
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = tail call i32 @bdc_address_device(ptr noundef %0, i32 noundef %14) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = icmp eq i16 %13, 0
  %24 = select i1 %23, i32 5, i32 6
  tail call void @usb_gadget_set_state(ptr noundef %0, i32 noundef %24) #10
  %25 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 23
  store i32 %14, ptr %25, align 8
  br label %29

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.19, i32 noundef %3) #11
  br label %29

29:                                               ; preds = %26, %22, %19, %11
  %30 = phi i32 [ -22, %11 ], [ %20, %19 ], [ -22, %26 ], [ 0, %22 ]
  %31 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %137

34:                                               ; preds = %8
  switch i32 %3, label %128 [
    i32 6, label %126
    i32 7, label %35
  ]

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 12, i32 2
  %37 = load i16, ptr %36, align 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %126, label %128

39:                                               ; preds = %8
  %40 = tail call fastcc i32 @ep0_handle_feature(ptr noundef %0, ptr noundef %4, i1 noundef zeroext true)
  br label %137

41:                                               ; preds = %8
  %42 = tail call fastcc i32 @ep0_handle_feature(ptr noundef %0, ptr noundef %4, i1 noundef zeroext false)
  br label %137

43:                                               ; preds = %8
  %44 = icmp eq i32 %3, 5
  br i1 %44, label %137, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %47 = load i32, ptr %46, align 4
  %48 = trunc i32 %47 to i16
  %49 = and i8 %5, 31
  %50 = zext i8 %49 to i32
  switch i32 %50, label %88 [
    i32 0, label %51
    i32 1, label %57
    i32 2, label %62
  ]

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 5
  %55 = and i16 %48, -3
  %56 = select i1 %54, i16 %55, i16 %48
  br label %91

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 5
  %61 = select i1 %60, i16 %48, i16 0
  br label %91

62:                                               ; preds = %45
  %63 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 12, i32 3
  %64 = load i16, ptr %63, align 1
  %65 = zext i16 %64 to i32
  %66 = and i32 %65, 15
  %67 = icmp eq i32 %66, 0
  %68 = shl nuw nsw i32 %66, 1
  %69 = lshr i32 %65, 7
  %70 = and i32 %69, 1
  %71 = or i32 %70, %68
  %72 = select i1 %67, i32 1, i32 %71
  %73 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr ptr, ptr %74, i32 %72
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %62
  %79 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.22) #11
  br label %137

81:                                               ; preds = %62
  %82 = getelementptr inbounds %struct.bdc_ep, ptr %76, i32 0, i32 8
  %83 = load i32, ptr %82, align 4
  %84 = trunc i32 %83 to i16
  %85 = lshr i16 %84, 1
  %86 = and i16 %85, 1
  %87 = or i16 %86, %48
  br label %91

88:                                               ; preds = %45
  %89 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.23) #11
  br label %137

91:                                               ; preds = %81, %57, %51
  %92 = phi i16 [ %56, %51 ], [ %87, %81 ], [ %61, %57 ]
  %93 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 28
  store i16 %92, ptr %93, align 8
  %94 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 13
  %95 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 13, i32 0, i32 1
  store i32 2, ptr %95, align 4
  store ptr %93, ptr %94, align 4
  %96 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr ptr, ptr %97, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 13, i32 2
  store ptr %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 13, i32 0, i32 7
  store ptr null, ptr %101, align 4
  %102 = tail call fastcc i32 @ep0_queue(ptr noundef %99, ptr noundef %94) #10
  br label %137

103:                                              ; preds = %8
  %104 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 12, i32 4
  %105 = load i16, ptr %104, align 1
  %106 = icmp eq i16 %105, 6
  br i1 %106, label %111, label %107, !prof !8

107:                                              ; preds = %103
  %108 = zext i16 %105 to i32
  %109 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.ep0_set_sel, i32 noundef %108) #11
  br label %137

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr ptr, ptr %113, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 13
  %117 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 13, i32 2
  store ptr %115, ptr %117, align 4
  %118 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 13, i32 0, i32 1
  store i32 6, ptr %118, align 4
  %119 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 28
  store ptr %119, ptr %116, align 4
  %120 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 13, i32 0, i32 7
  store ptr @ep0_set_sel_cmpl, ptr %120, align 4
  %121 = load ptr, ptr %114, align 4
  store ptr %121, ptr %117, align 4
  store ptr null, ptr %120, align 4
  %122 = tail call fastcc i32 @ep0_queue(ptr noundef %121, ptr noundef %116) #10
  br label %137

123:                                              ; preds = %8
  %124 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %125, ptr noundef nonnull @.str.18) #11
  br label %137

126:                                              ; preds = %35, %34
  %127 = phi i32 [ 7, %34 ], [ 6, %35 ]
  tail call void @usb_gadget_set_state(ptr noundef %0, i32 noundef %127) #10
  br label %128

128:                                              ; preds = %126, %35, %34, %8, %1
  %129 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %130 = load i16, ptr %129, align 4
  %131 = add i16 %130, 1
  store i16 %131, ptr %129, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %132 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 1
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.usb_gadget_driver, ptr %133, i32 0, i32 4
  %135 = load ptr, ptr %134, align 4
  %136 = tail call i32 %135(ptr noundef %0, ptr noundef %4) #10
  tail call void @_raw_spin_lock(ptr noundef %129) #10
  br label %137

137:                                              ; preds = %128, %123, %111, %107, %91, %88, %78, %43, %41, %39, %29
  %138 = phi i32 [ %136, %128 ], [ 0, %111 ], [ -22, %107 ], [ -22, %43 ], [ -22, %78 ], [ 0, %91 ], [ -22, %88 ], [ 0, %123 ], [ %42, %41 ], [ %40, %39 ], [ %30, %29 ]
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ep0_stall(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr ptr, ptr %3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 16
  store i8 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 5
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.bdc, ptr %8, i32 0, i32 15
  store i32 0, ptr %13, align 4
  %14 = load i8, ptr %9, align 2
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi i8 [ %14, %12 ], [ %10, %1 ]
  %17 = zext i8 %16 to i32
  %18 = tail call i32 @bdc_ep_set_stall(ptr noundef %8, i32 noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bdc, ptr %8, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.10, ptr noundef %23) #11
  br label %28

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 2
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 1
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %57, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 4
  br label %34

34:                                               ; preds = %54, %32
  %35 = phi ptr [ %30, %32 ], [ %55, %54 ]
  %36 = getelementptr i8, ptr %35, i32 -56
  %37 = load ptr, ptr %7, align 4
  %38 = icmp eq ptr %36, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %34
  %40 = getelementptr i8, ptr %35, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %35, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %40, align 4
  %44 = getelementptr i8, ptr %35, i32 -8
  store i32 -108, ptr %44, align 4
  %45 = load i8, ptr %33, align 1
  %46 = zext i8 %45 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %37, ptr noundef nonnull %36, i32 noundef %46) #10
  %47 = getelementptr i8, ptr %35, i32 -28
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.bdc, ptr %37, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %52 = load i16, ptr %51, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  tail call void @usb_gadget_giveback_request(ptr noundef %5, ptr noundef nonnull %36) #10
  tail call void @_raw_spin_lock(ptr noundef %51) #10
  br label %54

54:                                               ; preds = %50, %39, %34
  %55 = load volatile ptr, ptr %29, align 4
  %56 = icmp eq ptr %55, %29
  br i1 %56, label %57, label %34

57:                                               ; preds = %54, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdc_xsf_ep0_status_start(ptr noundef %0, ptr nocapture readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr ptr, ptr %4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 17
  %8 = load i8, ptr %7, align 1, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i8 0, ptr %7, align 1
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 5
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = tail call i32 @bdc_ep_clear_stall(ptr noundef %18, i32 noundef %21) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, ptr %12, align 4
  %26 = and i32 %25, -3
  store i32 %26, ptr %12, align 4
  br label %31

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.bdc, ptr %18, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.bdc_ep, ptr %6, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.11, ptr noundef %30) #11
  br label %65

31:                                               ; preds = %24, %11
  %32 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 15
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, -2
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %33
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef %40) #11
  %41 = load i32, ptr %32, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = phi i32 [ %33, %31 ], [ %41, %36 ]
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 5, ptr %32, align 4
  br label %66

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 12, i32 4
  %48 = load i16, ptr %47, align 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = tail call fastcc i32 @handle_control_request(ptr noundef %0)
  switch i32 %51, label %65 [
    i32 32767, label %52
    i32 0, label %54
  ]

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 16
  store i8 1, ptr %53, align 8
  br label %66

54:                                               ; preds = %50, %46
  %55 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 14
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr ptr, ptr %56, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 14, i32 2
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 14, i32 0, i32 1
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 14, i32 0, i32 11
  store i32 -115, ptr %61, align 4
  %62 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 14, i32 0, i32 12
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 14, i32 0, i32 7
  store ptr null, ptr %63, align 4
  %64 = tail call fastcc i32 @bdc_queue_xfr(ptr noundef %0, ptr noundef %55) #10
  store i32 4, ptr %32, align 4
  br label %66

65:                                               ; preds = %50, %27
  tail call fastcc void @ep0_stall(ptr noundef %0)
  br label %66

66:                                               ; preds = %65, %54, %52, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bdc_sr_xsf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 31
  %7 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr ptr, ptr %8, i32 %6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.4) #11
  br label %275

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 262144
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = and i32 %22, -262145
  store i32 %26, ptr %21, align 4
  %27 = load i32, ptr %3, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %27, %25 ], [ %4, %20 ]
  %30 = lshr i32 %29, 28
  switch i32 %30, label %272 [
    i32 1, label %31
    i32 3, label %31
    i32 6, label %240
    i32 7, label %240
    i32 8, label %240
    i32 4, label %249
  ]

31:                                               ; preds = %28, %28
  %32 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 11
  %33 = load i8, ptr %32, align 4, !range !16
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i8 0, ptr %32, align 4
  br label %206

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 1
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %40, label %43, !prof !17

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.28) #11
  br label %206

43:                                               ; preds = %36
  %44 = getelementptr i8, ptr %38, i32 12
  %45 = and i32 %29, -268435456
  %46 = icmp eq i32 %45, 805306368
  br i1 %46, label %47, label %160

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %38, i32 24
  %49 = load i32, ptr %48, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %160

51:                                               ; preds = %47
  %52 = load i32, ptr %1, align 4
  %53 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 10, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 10
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 10, i32 5
  br label %62

62:                                               ; preds = %75, %58
  %63 = phi i32 [ 0, %58 ], [ %76, %75 ]
  %64 = getelementptr ptr, ptr %60, i32 %63
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.bd_table, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp ult i32 %52, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load i32, ptr %61, align 4
  %71 = shl i32 %70, 4
  %72 = add i32 %67, -16
  %73 = add i32 %72, %71
  %74 = icmp ult i32 %73, %52
  br i1 %74, label %75, label %81

75:                                               ; preds = %69, %62
  %76 = add nuw nsw i32 %63, 1
  %77 = icmp eq i32 %76, %56
  br i1 %77, label %78, label %62

78:                                               ; preds = %75, %51
  %79 = getelementptr inbounds %struct.bdc, ptr %54, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.bd_add_to_bdi) #11
  br label %87

81:                                               ; preds = %69
  %82 = sub i32 %52, %67
  %83 = lshr i32 %82, 4
  %84 = mul i32 %70, %63
  %85 = add i32 %84, %83
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91, !prof !17

87:                                               ; preds = %81, %78
  %88 = phi i32 [ -22, %78 ], [ %85, %81 ]
  %89 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.29) #11
  br label %91

91:                                               ; preds = %87, %81
  %92 = phi i32 [ %88, %87 ], [ %85, %81 ]
  %93 = getelementptr i8, ptr %38, i32 16
  %94 = load i32, ptr %93, align 4
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %110, label %96

96:                                               ; preds = %91
  %97 = sub i32 %92, %94
  %98 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 10, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = icmp sgt i32 %97, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = sdiv i32 %94, %99
  %103 = sdiv i32 %92, %99
  %104 = icmp ne i32 %102, %103
  %105 = sext i1 %104 to i32
  %106 = add i32 %97, %105
  br label %121

107:                                              ; preds = %96
  %108 = sdiv i32 %97, %99
  %109 = sub i32 %97, %108
  br label %121

110:                                              ; preds = %91
  %111 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 10, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = sub i32 %112, %94
  %114 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 10, i32 5
  %115 = load i32, ptr %114, align 4
  %116 = sdiv i32 %113, %115
  %117 = sdiv i32 %92, %115
  %118 = add i32 %113, %92
  %119 = add i32 %116, %117
  %120 = sub i32 %118, %119
  br label %121

121:                                              ; preds = %110, %107, %101
  %122 = phi i32 [ %99, %107 ], [ %115, %110 ], [ %99, %101 ]
  %123 = phi i32 [ %109, %107 ], [ %120, %110 ], [ %106, %101 ]
  %124 = getelementptr i8, ptr %38, i32 20
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %125, -1
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 10, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, -1
  br label %138

132:                                              ; preds = %121
  %133 = add i32 %122, -1
  %134 = srem i32 %126, %133
  %135 = icmp eq i32 %134, 0
  %136 = add i32 %125, -2
  %137 = select i1 %135, i32 %136, i32 %126
  br label %138

138:                                              ; preds = %132, %128
  %139 = phi i32 [ %131, %128 ], [ %137, %132 ]
  %140 = icmp eq i32 %139, %92
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  store i8 1, ptr %32, align 4
  br label %142

142:                                              ; preds = %141, %138
  %143 = shl i32 %123, 16
  %144 = sdiv i32 %92, %122
  %145 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 10
  %146 = mul i32 %144, %122
  %147 = sub i32 %92, %146
  %148 = load ptr, ptr %145, align 4
  %149 = getelementptr ptr, ptr %148, i32 %144
  %150 = load ptr, ptr %149, align 4
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr %struct.bdc_bd, ptr %151, i32 %147, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = and i32 %153, 2097151
  %155 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 16777215
  %158 = add i32 %154, %143
  %159 = sub i32 %158, %157
  br label %167

160:                                              ; preds = %47, %43
  %161 = getelementptr i8, ptr %38, i32 -52
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 16777215
  %166 = sub i32 %162, %165
  br label %167

167:                                              ; preds = %160, %142
  %168 = phi i32 [ %166, %160 ], [ %159, %142 ]
  %169 = getelementptr i8, ptr %38, i32 -4
  store i32 %168, ptr %169, align 4
  %170 = getelementptr i8, ptr %38, i32 20
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 10, i32 4
  store i32 %171, ptr %172, align 4
  %173 = load i32, ptr %169, align 4
  %174 = getelementptr i8, ptr %38, i32 -52
  %175 = load i32, ptr %174, align 4
  %176 = icmp ult i32 %173, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %167
  %178 = getelementptr i8, ptr %38, i32 -32
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, 524288
  %181 = icmp eq i32 %180, 0
  %182 = select i1 %181, i32 0, i32 -121
  br label %183

183:                                              ; preds = %177, %167
  %184 = phi i32 [ 0, %167 ], [ %182, %177 ]
  %185 = load ptr, ptr %44, align 4
  %186 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %185, null
  br i1 %188, label %206, label %189

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.bdc_req, ptr %185, i32 0, i32 1
  %191 = getelementptr inbounds %struct.bdc_req, ptr %185, i32 0, i32 1, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = load ptr, ptr %190, align 4
  %194 = getelementptr inbounds %struct.list_head, ptr %193, i32 0, i32 1
  store ptr %192, ptr %194, align 4
  store volatile ptr %193, ptr %192, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %190, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %191, align 4
  %195 = getelementptr inbounds %struct.usb_request, ptr %185, i32 0, i32 11
  store i32 %184, ptr %195, align 4
  %196 = getelementptr inbounds %struct.bdc_ep, ptr %10, i32 0, i32 4
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %187, ptr noundef nonnull %185, i32 noundef %198) #10
  %199 = getelementptr inbounds %struct.usb_request, ptr %185, i32 0, i32 7
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %206, label %202

202:                                              ; preds = %189
  %203 = getelementptr inbounds %struct.bdc, ptr %187, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %204 = load i16, ptr %203, align 4
  %205 = add i16 %204, 1
  store i16 %205, ptr %203, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %10, ptr noundef nonnull %185) #10
  tail call void @_raw_spin_lock(ptr noundef %203) #10
  br label %206

206:                                              ; preds = %202, %189, %183, %40, %35
  %207 = icmp eq i32 %6, 1
  br i1 %207, label %208, label %275

208:                                              ; preds = %206
  %209 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 15
  %210 = load i32, ptr %209, align 4
  switch i32 %210, label %235 [
    i32 2, label %211
    i32 4, label %212
    i32 5, label %234
  ]

211:                                              ; preds = %208
  store i32 3, ptr %209, align 4
  br label %275

212:                                              ; preds = %208
  store i32 0, ptr %209, align 4
  %213 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 25
  %214 = load i8, ptr %213, align 8
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %275, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr i8, ptr %218, i32 44
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %219) #10, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %221 = load i8, ptr %213, align 8
  %222 = add i8 %221, -1
  %223 = icmp ult i8 %222, 5
  br i1 %223, label %227, label %224

224:                                              ; preds = %216
  %225 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %226 = load ptr, ptr %225, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %226, ptr noundef nonnull @.str.31) #11
  br label %275

227:                                              ; preds = %216
  %228 = and i32 %220, 268435455
  %229 = zext i8 %221 to i32
  %230 = shl nuw nsw i32 %229, 28
  %231 = or i32 %230, %228
  %232 = load ptr, ptr %217, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %233 = getelementptr i8, ptr %232, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %231) #10, !srcloc !10
  store i8 0, ptr %213, align 8
  br label %275

234:                                              ; preds = %208
  tail call void @bdc_xsf_ep0_status_start(ptr noundef %0, ptr undef) #10
  br label %275

235:                                              ; preds = %208
  %236 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %210
  %239 = load ptr, ptr %238, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %237, ptr noundef nonnull @.str.32, ptr noundef %239) #11
  br label %275

240:                                              ; preds = %28, %28, %28
  %241 = icmp eq i32 %6, 1
  br i1 %241, label %245, label %242

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %244 = load ptr, ptr %243, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.5) #11
  br label %275

245:                                              ; preds = %240
  %246 = add nsw i32 %30, -6
  %247 = getelementptr %struct.bdc, ptr %0, i32 0, i32 27, i32 %246
  %248 = load ptr, ptr %247, align 4
  tail call void %248(ptr noundef %0, ptr noundef %1) #10
  br label %275

249:                                              ; preds = %28
  %250 = icmp eq i32 %6, 1
  br i1 %250, label %251, label %269

251:                                              ; preds = %249
  %252 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 17
  %253 = load i8, ptr %252, align 1, !range !16
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %269, label %255

255:                                              ; preds = %251
  %256 = getelementptr ptr, ptr %8, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 13
  %259 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 13, i32 2
  store ptr %257, ptr %259, align 4
  %260 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 13, i32 0, i32 1
  store i32 0, ptr %260, align 4
  %261 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 13, i32 0, i32 7
  store ptr null, ptr %261, align 4
  %262 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 15
  store i32 1, ptr %262, align 4
  %263 = tail call fastcc i32 @bdc_queue_xfr(ptr noundef %0, ptr noundef %258) #10
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %255
  %266 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %267 = load ptr, ptr %266, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %267, ptr noundef nonnull @.str.33, i32 noundef %263) #11
  br label %275

268:                                              ; preds = %255
  store i32 2, ptr %262, align 4
  br label %275

269:                                              ; preds = %251, %249
  %270 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %271 = load ptr, ptr %270, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %271, ptr noundef nonnull @.str.6) #11
  br label %275

272:                                              ; preds = %28
  %273 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %274 = load ptr, ptr %273, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %274, ptr noundef nonnull @.str.7, i32 noundef %30) #11
  br label %275

275:                                              ; preds = %272, %269, %268, %265, %245, %242, %235, %234, %227, %224, %212, %211, %206, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdc_init_ep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4, i32 1
  store ptr %2, ptr %3, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 120) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 2
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 4
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = or i8 %11, 32
  store i8 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 5
  store i8 1, ptr %13, align 2
  %14 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr ptr, ptr %15, i32 1
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 9
  %18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %17, i32 noundef 20, ptr noundef nonnull @.str.34, i32 noundef 0) #10
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %5, i32 noundef 512) #10
  %19 = load i8, ptr %10, align 4
  %20 = or i8 %19, 1
  store i8 %20, ptr %10, align 4
  %21 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 6
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 3
  store ptr %5, ptr %22, align 8
  %23 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 2
  store ptr @bdc_gadget_ep_ops, ptr %23, align 8
  %24 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 1
  store ptr %17, ptr %24, align 4
  %25 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 8
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 11
  store i8 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 1
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 1, i32 1
  store ptr %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %55, label %41

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.8, i32 noundef -12) #11
  br label %55

35:                                               ; preds = %49
  %36 = add i8 %43, 1
  %37 = zext i8 %36 to i32
  %38 = load i32, ptr %29, align 4
  %39 = lshr i32 %38, 1
  %40 = icmp ult i32 %39, %37
  br i1 %40, label %55, label %41

41:                                               ; preds = %35, %7
  %42 = phi i32 [ %37, %35 ], [ 2, %7 ]
  %43 = phi i8 [ %36, %35 ], [ 2, %7 ]
  %44 = tail call fastcc i32 @init_ep(ptr noundef %0, i32 noundef %42, i32 noundef 0)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.9, i32 noundef %42, i32 noundef %44) #11
  br label %55

49:                                               ; preds = %41
  %50 = tail call fastcc i32 @init_ep(ptr noundef %0, i32 noundef %42, i32 noundef 1)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %35, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.9, i32 noundef %42, i32 noundef %50) #11
  br label %55

55:                                               ; preds = %52, %46, %35, %32, %7
  %56 = phi i32 [ -12, %32 ], [ %44, %46 ], [ %50, %52 ], [ 0, %7 ], [ 0, %35 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_ep(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 120) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %67, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 2
  store ptr %0, ptr %8, align 4
  %9 = trunc i32 %2 to i8
  %10 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 4
  store i8 %9, ptr %10, align 1
  %11 = icmp eq i32 %2, 0
  %12 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  br i1 %11, label %14, label %17

14:                                               ; preds = %7
  %15 = or i8 %13, 32
  store i8 %15, ptr %12, align 4
  %16 = icmp eq i32 %1, 1
  br i1 %16, label %20, label %32

17:                                               ; preds = %7
  %18 = or i8 %13, 16
  store i8 %18, ptr %12, align 4
  %19 = icmp eq i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %17, %14
  %21 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 5
  store i8 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr ptr, ptr %23, i32 1
  store ptr %5, ptr %24, align 4
  %25 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 9
  %26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %25, i32 noundef 20, ptr noundef nonnull @.str.34, i32 noundef 0)
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %5, i32 noundef 512) #10
  %27 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 4
  %28 = load i8, ptr %27, align 4
  %29 = or i8 %28, 1
  store i8 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 6
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 3
  store ptr %5, ptr %31, align 8
  br label %59

32:                                               ; preds = %17, %14
  %33 = phi i8 [ -1, %17 ], [ -2, %14 ]
  %34 = trunc i32 %1 to i8
  %35 = shl i8 %34, 1
  %36 = add i8 %35, %33
  %37 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 5
  store i8 %36, ptr %37, align 2
  %38 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %39 = load ptr, ptr %38, align 8
  %40 = zext i8 %36 to i32
  %41 = getelementptr ptr, ptr %39, i32 %40
  store ptr %5, ptr %41, align 4
  %42 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 9
  %43 = add i32 %1, -1
  %44 = and i32 %2, 1
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr @.str.37, ptr @.str.36
  %47 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %42, i32 noundef 20, ptr noundef nonnull @.str.35, i32 noundef %43, ptr noundef nonnull %46)
  tail call void @usb_ep_set_maxpacket_limit(ptr noundef nonnull %5, i32 noundef 1024) #10
  %48 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 4
  %49 = load i8, ptr %48, align 4
  %50 = or i8 %49, 14
  store i8 %50, ptr %48, align 4
  %51 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 7
  %52 = load i56, ptr %51, align 2
  %53 = and i56 %52, -281470681743361
  store i56 %53, ptr %51, align 2
  %54 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 3
  %55 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4
  %56 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 4, i32 1
  %57 = load ptr, ptr %56, align 4
  store ptr %54, ptr %56, align 4
  store ptr %55, ptr %54, align 4
  %58 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 3, i32 1
  store ptr %57, ptr %58, align 8
  store volatile ptr %54, ptr %57, align 4
  br label %59

59:                                               ; preds = %32, %20
  %60 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 2
  store ptr @bdc_gadget_ep_ops, ptr %60, align 8
  %61 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 9
  %62 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 8
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 11
  store i8 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 1
  store volatile ptr %65, ptr %65, align 4
  %66 = getelementptr inbounds %struct.bdc_ep, ptr %5, i32 0, i32 1, i32 1
  store ptr %65, ptr %66, align 8
  br label %67

67:                                               ; preds = %59, %3
  %68 = phi i32 [ 0, %59 ], [ -12, %3 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_unmap_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_giveback_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_ep_set_stall(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_ep_clear_stall(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_gadget_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ep0_handle_feature(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %5 = load i16, ptr %4, align 1
  %6 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %7 = load i16, ptr %6, align 1
  %8 = load i8, ptr %1, align 1
  %9 = and i8 %8, 31
  %10 = zext i8 %9 to i32
  switch i32 %10, label %132 [
    i32 0, label %11
    i32 1, label %96
    i32 2, label %110
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  switch i16 %5, label %91 [
    i16 1, label %14
    i16 2, label %21
    i16 48, label %33
    i16 49, label %60
    i16 50, label %85
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %16 = load i32, ptr %15, align 4
  br i1 %2, label %17, label %19

17:                                               ; preds = %14
  %18 = or i32 %16, 2
  store i32 %18, ptr %15, align 4
  br label %95

19:                                               ; preds = %14
  %20 = and i32 %16, -3
  store i32 %20, ptr %15, align 4
  br label %95

21:                                               ; preds = %11
  %22 = and i16 %7, 255
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %135

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 3
  %28 = and i1 %27, %2
  br i1 %28, label %29, label %135

29:                                               ; preds = %24
  %30 = lshr i16 %7, 8
  %31 = trunc i16 %30 to i8
  %32 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 25
  store i8 %31, ptr %32, align 8
  br label %95

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp ne i32 %35, 5
  %37 = icmp ne i32 %13, 7
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %135, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #10, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  br i1 %2, label %44, label %50

44:                                               ; preds = %39
  %45 = and i32 %43, -1073873152
  %46 = or i32 %45, 1073873144
  %47 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, 4
  store i32 %49, ptr %47, align 4
  br label %56

50:                                               ; preds = %39
  %51 = and i32 %43, -1073872897
  %52 = or i32 %51, 131072
  %53 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -5
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %50, %44
  %57 = phi i32 [ %46, %44 ], [ %52, %50 ]
  %58 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %59 = getelementptr i8, ptr %58, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #10, !srcloc !10
  br label %95

60:                                               ; preds = %11
  %61 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = icmp ne i32 %62, 5
  %64 = icmp ne i32 %13, 7
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %135, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 40
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #10, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  br i1 %2, label %71, label %76

71:                                               ; preds = %66
  %72 = or i32 %70, -1610612736
  %73 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %74, 8
  store i32 %75, ptr %73, align 4
  br label %81

76:                                               ; preds = %66
  %77 = and i32 %70, 1610612735
  %78 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, -9
  store i32 %80, ptr %78, align 4
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i32 [ %72, %71 ], [ %77, %76 ]
  %83 = load ptr, ptr %67, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %84 = getelementptr i8, ptr %83, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #10, !srcloc !10
  br label %95

85:                                               ; preds = %11
  %86 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = icmp ne i32 %87, 5
  %89 = icmp ne i32 %13, 7
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %135, label %95

91:                                               ; preds = %11
  %92 = zext i16 %5 to i32
  %93 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.21, i32 noundef %92) #11
  br label %135

95:                                               ; preds = %85, %81, %56, %29, %19, %17
  br label %135

96:                                               ; preds = %3
  %97 = icmp ne i16 %5, 0
  %98 = xor i1 %2, true
  %99 = or i1 %97, %98
  %100 = select i1 %97, i32 -22, i32 0
  br i1 %99, label %135, label %101

101:                                              ; preds = %96
  %102 = and i16 %7, 512
  %103 = icmp eq i16 %102, 0
  %104 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 20
  %105 = load i32, ptr %104, align 4
  br i1 %103, label %108, label %106

106:                                              ; preds = %101
  %107 = or i32 %105, 2
  store i32 %107, ptr %104, align 4
  br label %135

108:                                              ; preds = %101
  %109 = and i32 %105, -3
  store i32 %109, ptr %104, align 4
  br label %135

110:                                              ; preds = %3
  %111 = icmp eq i16 %5, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %110
  %113 = zext i16 %7 to i32
  %114 = and i32 %113, 15
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = shl nuw nsw i32 %114, 1
  %118 = lshr i32 %113, 7
  %119 = and i32 %118, 1
  %120 = or i32 %119, %117
  br label %122

121:                                              ; preds = %112
  br i1 %2, label %122, label %135

122:                                              ; preds = %121, %116
  %123 = phi i32 [ 1, %121 ], [ %120, %116 ]
  %124 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr ptr, ptr %125, i32 %123
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %135, label %129

129:                                              ; preds = %122
  %130 = zext i1 %2 to i32
  %131 = tail call fastcc i32 @ep_set_halt(ptr noundef nonnull %127, i32 noundef %130)
  br label %135

132:                                              ; preds = %3
  %133 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.20) #11
  br label %135

135:                                              ; preds = %132, %129, %122, %121, %110, %108, %106, %96, %95, %91, %85, %60, %33, %24, %21
  %136 = phi i32 [ -22, %132 ], [ %131, %129 ], [ %100, %96 ], [ -22, %110 ], [ 0, %121 ], [ -22, %122 ], [ 0, %108 ], [ 0, %106 ], [ -95, %91 ], [ 0, %95 ], [ -22, %24 ], [ -22, %21 ], [ -22, %33 ], [ -22, %60 ], [ -22, %85 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_address_device(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ep0_queue(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %6, align 4
  %7 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.bdc_req, ptr %1, i32 0, i32 4
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 16
  %12 = load i8, ptr %11, align 8, !range !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  store i8 0, ptr %11, align 8
  %15 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 14
  %20 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 7
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr ptr, ptr %21, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 14, i32 2
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 14, i32 0, i32 1
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 14, i32 0, i32 11
  store i32 -115, ptr %26, align 4
  %27 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 14, i32 0, i32 12
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 14, i32 0, i32 7
  store ptr null, ptr %28, align 4
  %29 = tail call fastcc i32 @bdc_queue_xfr(ptr noundef %4, ptr noundef %19) #10
  store i32 4, ptr %15, align 4
  br label %46

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %30, %14
  %35 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 4
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = tail call i32 @usb_gadget_map_request(ptr noundef %4, ptr noundef %1, i32 noundef %37) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.24, ptr noundef %43) #11
  br label %46

44:                                               ; preds = %34
  %45 = tail call fastcc i32 @bdc_queue_xfr(ptr noundef %4, ptr noundef %1)
  br label %46

46:                                               ; preds = %44, %40, %30, %18
  %47 = phi i32 [ 0, %18 ], [ %38, %40 ], [ %45, %44 ], [ 0, %30 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_map_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bdc_queue_xfr(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bdc_req, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %6, 65535
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = lshr i32 %6, 16
  %12 = add nuw nsw i32 %11, %10
  %13 = select i1 %7, i32 1, i32 %12
  %14 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 10, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 10, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %15
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 10, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 10, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  br label %55

25:                                               ; preds = %2
  %26 = icmp slt i32 %17, %15
  br i1 %26, label %27, label %38

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 10, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %29, %15
  %31 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 10, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = sdiv i32 %30, %32
  %34 = sdiv i32 %17, %32
  %35 = add i32 %30, %17
  %36 = add i32 %33, %34
  %37 = sub i32 %35, %36
  br label %52

38:                                               ; preds = %25
  %39 = sub i32 %17, %15
  %40 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 10, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = sdiv i32 %17, %41
  %45 = sdiv i32 %15, %41
  %46 = icmp eq i32 %44, %45
  %47 = add i32 %39, -1
  %48 = select i1 %46, i32 0, i32 %47
  br label %52

49:                                               ; preds = %38
  %50 = sdiv i32 %39, %41
  %51 = sub i32 %39, %50
  br label %52

52:                                               ; preds = %49, %43, %27
  %53 = phi i32 [ %37, %27 ], [ %51, %49 ], [ %48, %43 ]
  %54 = add i32 %53, -1
  br label %55

55:                                               ; preds = %52, %19
  %56 = phi i32 [ %24, %19 ], [ %54, %52 ]
  %57 = icmp sgt i32 %13, %56
  br i1 %57, label %227, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.bdc_req, ptr %1, i32 0, i32 3
  store ptr %1, ptr %61, align 4
  %62 = load i32, ptr %14, align 4
  %63 = getelementptr inbounds %struct.bdc_req, ptr %1, i32 0, i32 3, i32 1
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 10, i32 5
  %65 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 10
  %66 = icmp eq i32 %13, 0
  br i1 %66, label %189, label %67

67:                                               ; preds = %58
  %68 = add i32 %6, -1
  %69 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 7
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %70, i32 0, i32 4
  %72 = load i16, ptr %71, align 1
  %73 = and i16 %72, 2047
  %74 = zext i16 %73 to i32
  %75 = add i32 %68, %74
  %76 = udiv i32 %75, %74
  %77 = shl i32 %76, 4
  %78 = or i32 %77, -2080374784
  %79 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 5
  %80 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 15
  %81 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 12, i32 4
  %82 = or i32 %77, -2080374782
  %83 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 12
  %84 = or i32 %77, -2046820350
  %85 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 12, i32 2
  %86 = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 3
  %87 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 17
  %88 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 10, i32 2
  br label %89

89:                                               ; preds = %148, %67
  %90 = phi i32 [ %60, %67 ], [ %176, %148 ]
  %91 = phi i32 [ %6, %67 ], [ %151, %148 ]
  %92 = phi i32 [ 0, %67 ], [ %185, %148 ]
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %131

94:                                               ; preds = %89
  %95 = load i8, ptr %79, align 2
  %96 = icmp eq i8 %95, 1
  br i1 %96, label %97, label %131

97:                                               ; preds = %94
  %98 = load ptr, ptr %3, align 4
  %99 = getelementptr inbounds %struct.bdc_ep, ptr %98, i32 0, i32 4
  store i8 0, ptr %99, align 1
  %100 = load i32, ptr %5, align 4
  %101 = load i32, ptr %80, align 4
  switch i32 %101, label %126 [
    i32 1, label %102
    i32 3, label %119
  ]

102:                                              ; preds = %97
  %103 = load i8, ptr %83, align 4
  %104 = icmp slt i8 %103, 0
  %105 = select i1 %104, i32 -2046820351, i32 -2080374783
  %106 = or i32 %105, %77
  %107 = load i16, ptr %85, align 2
  %108 = zext i16 %107 to i32
  %109 = icmp ult i32 %100, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %102
  %111 = load ptr, ptr %86, align 8
  %112 = getelementptr inbounds %struct.usb_ep, ptr %111, i32 0, i32 7
  %113 = load i56, ptr %112, align 2
  %114 = trunc i56 %113 to i32
  %115 = and i32 %114, 65535
  %116 = urem i32 %100, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %110
  store i8 1, ptr %87, align 1
  br label %131

119:                                              ; preds = %97
  %120 = load i16, ptr %81, align 2
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load i8, ptr %83, align 4
  %124 = icmp sgt i8 %123, -1
  br i1 %124, label %125, label %131

125:                                              ; preds = %122, %119
  br label %131

126:                                              ; preds = %97
  %127 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr [6 x ptr], ptr @ep0_state_string, i32 0, i32 %101
  %130 = load ptr, ptr %129, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.26, ptr noundef %130) #11
  br label %227

131:                                              ; preds = %125, %122, %118, %110, %102, %94, %89
  %132 = phi i32 [ %78, %94 ], [ 0, %89 ], [ %106, %102 ], [ %106, %110 ], [ %106, %118 ], [ %82, %122 ], [ %84, %125 ]
  %133 = phi i32 [ 33554432, %94 ], [ 0, %89 ], [ 33554432, %102 ], [ 33554432, %110 ], [ 33554432, %118 ], [ 33554432, %122 ], [ 33554432, %125 ]
  %134 = load i32, ptr %14, align 4
  %135 = load i32, ptr %64, align 4
  %136 = sdiv i32 %134, %135
  %137 = mul i32 %136, %135
  %138 = sub i32 %134, %137
  %139 = load ptr, ptr %65, align 4
  %140 = getelementptr ptr, ptr %139, i32 %136
  %141 = load ptr, ptr %140, align 4
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr %struct.bdc_bd, ptr %142, i32 %138
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %148, !prof !17

145:                                              ; preds = %131
  %146 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 2
  %147 = load ptr, ptr %146, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.25) #11
  br label %227

148:                                              ; preds = %131
  %149 = icmp ugt i32 %91, 65536
  %150 = add i32 %91, -65536
  %151 = select i1 %149, i32 %150, i32 %91
  %152 = tail call i32 @llvm.umin.i32(i32 %91, i32 65536) #10
  %153 = or i32 %133, %152
  %154 = load ptr, ptr %3, align 4
  %155 = getelementptr inbounds %struct.bdc_ep, ptr %154, i32 0, i32 4
  %156 = load i8, ptr %155, align 1
  %157 = icmp eq i8 %156, 0
  %158 = or i32 %132, 536870912
  %159 = select i1 %157, i32 %158, i32 %132
  %160 = or i32 %159, 1207959552
  %161 = select i1 %149, i32 %159, i32 %160
  store i32 %90, ptr %143, align 4
  %162 = getelementptr [4 x i32], ptr %143, i32 0, i32 1
  store i32 0, ptr %162, align 4
  %163 = getelementptr [4 x i32], ptr %143, i32 0, i32 2
  store i32 %153, ptr %163, align 4
  %164 = getelementptr [4 x i32], ptr %143, i32 0, i32 3
  store i32 %161, ptr %164, align 4
  %165 = load i32, ptr %14, align 4
  %166 = add i32 %165, 1
  %167 = add i32 %165, 2
  %168 = load i32, ptr %64, align 4
  %169 = srem i32 %167, %168
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i32 %167, i32 %166
  %172 = load i32, ptr %88, align 4
  %173 = add i32 %172, 1
  %174 = icmp eq i32 %171, %173
  %175 = select i1 %174, i32 0, i32 %171
  store i32 %175, ptr %14, align 4
  %176 = add i32 %90, 65536
  %177 = sdiv i32 %175, %168
  %178 = mul i32 %177, %168
  %179 = sub i32 %175, %178
  %180 = load ptr, ptr %65, align 4
  %181 = getelementptr ptr, ptr %180, i32 %177
  %182 = load ptr, ptr %181, align 4
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr %struct.bdc_bd, ptr %183, i32 %179, i32 0, i32 3
  store i32 -2147483648, ptr %184, align 4
  %185 = add nuw nsw i32 %92, 1
  %186 = icmp eq i32 %185, %13
  br i1 %186, label %187, label %89

187:                                              ; preds = %148
  %188 = load i32, ptr %63, align 4
  br label %189

189:                                              ; preds = %187, %58
  %190 = phi i32 [ %188, %187 ], [ %62, %58 ]
  %191 = load i32, ptr %64, align 4
  %192 = sdiv i32 %190, %191
  %193 = mul i32 %192, %191
  %194 = sub i32 %190, %193
  %195 = load ptr, ptr %65, align 4
  %196 = getelementptr ptr, ptr %195, i32 %192
  %197 = load ptr, ptr %196, align 4
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr %struct.bdc_bd, ptr %198, i32 %194, i32 0, i32 3
  %200 = load i32, ptr %199, align 4
  %201 = and i32 %200, 2147483647
  store i32 %201, ptr %199, align 4
  %202 = getelementptr inbounds %struct.bdc_req, ptr %1, i32 0, i32 3, i32 3
  store i32 %13, ptr %202, align 4
  %203 = load i32, ptr %14, align 4
  %204 = getelementptr inbounds %struct.bdc_req, ptr %1, i32 0, i32 3, i32 2
  store i32 %203, ptr %204, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  %205 = getelementptr inbounds %struct.bdc_req, ptr %1, i32 0, i32 1
  %206 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 1
  %207 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 1, i32 1
  %208 = load ptr, ptr %207, align 4
  store ptr %205, ptr %207, align 4
  store ptr %206, ptr %205, align 4
  %209 = getelementptr inbounds %struct.bdc_req, ptr %1, i32 0, i32 1, i32 1
  store ptr %208, ptr %209, align 4
  store volatile ptr %205, ptr %208, align 4
  %210 = getelementptr inbounds %struct.bdc_ep, ptr %4, i32 0, i32 5
  %211 = load i8, ptr %210, align 2
  %212 = zext i8 %211 to i32
  %213 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 7
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr ptr, ptr %214, i32 %212
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.bdc_ep, ptr %216, i32 0, i32 8
  %218 = load i32, ptr %217, align 4
  %219 = and i32 %218, 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %223, label %221, !prof !8

221:                                              ; preds = %189
  %222 = and i32 %218, -5
  store i32 %222, ptr %217, align 4
  br label %223

223:                                              ; preds = %221, %189
  %224 = getelementptr inbounds %struct.bdc, ptr %0, i32 0, i32 8
  %225 = load ptr, ptr %224, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %226 = getelementptr i8, ptr %225, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 %212) #10, !srcloc !10
  br label %227

227:                                              ; preds = %223, %145, %126, %55
  %228 = phi i32 [ 0, %223 ], [ -12, %55 ], [ -22, %145 ], [ -22, %126 ]
  ret i32 %228
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @ep0_set_sel_cmpl(ptr nocapture noundef %0, ptr nocapture noundef %1) #7 {
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_set_maxpacket_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_gadget_ep_enable(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 5
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 4
  %12 = load i16, ptr %11, align 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bdc, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr ptr, ptr %18, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %38, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.bdc, ptr %16, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.usb_gadget, ptr %16, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bdc, ptr %16, i32 0, i32 3
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #10
  %33 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 7
  store ptr %1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 6
  store ptr %35, ptr %36, align 4
  %37 = tail call i32 @bdc_ep_enable(ptr noundef nonnull %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %32) #10
  br label %38

38:                                               ; preds = %30, %26, %22, %14, %10, %6, %2
  %39 = phi i32 [ %37, %30 ], [ -22, %6 ], [ -22, %2 ], [ -22, %10 ], [ -22, %14 ], [ -108, %26 ], [ -108, %22 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_gadget_ep_disable(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bdc, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr ptr, ptr %7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bdc, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.bdc_gadget_ep_disable) #11
  br label %31

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bdc, ptr %5, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.39, ptr noundef %26) #11
  br label %31

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.bdc, ptr %5, i32 0, i32 3
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #10
  %30 = tail call i32 @bdc_ep_disable(ptr noundef nonnull %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #10
  br label %31

31:                                               ; preds = %27, %23, %19, %11, %1
  %32 = phi i32 [ -22, %11 ], [ %30, %27 ], [ -22, %1 ], [ 0, %23 ], [ 0, %19 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @bdc_gadget_alloc_request(ptr noundef %0, i32 noundef %1) #0 {
  %3 = or i32 %1, 256
  %4 = and i32 %1, 17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !8

6:                                                ; preds = %2
  %7 = and i32 %1, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 1, i32 2
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %12 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %11, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %3, i32 noundef 88) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.bdc_req, ptr %14, i32 0, i32 2
  store ptr %0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 5
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.bdc_req, ptr %14, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 2
  store i32 -1, ptr %22, align 8
  br label %23

23:                                               ; preds = %16, %10
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bdc_gadget_free_request(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_gadget_ep_queue(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %60, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %60, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %1, null
  br i1 %10, label %60, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %60, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %1, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %60, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 16777215
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bdc, ptr %20, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.41, i32 noundef 16777215, i32 noundef %22) #11
  br label %60

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.bdc, ptr %20, i32 0, i32 3
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #10
  %30 = getelementptr inbounds %struct.bdc, ptr %20, i32 0, i32 7
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr ptr, ptr %31, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = tail call fastcc i32 @ep0_queue(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %58

37:                                               ; preds = %27
  %38 = load ptr, ptr %6, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %19, align 4
  %42 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  store i32 -115, ptr %43, align 4
  %44 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 5
  %45 = load i8, ptr %44, align 2
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.bdc_req, ptr %1, i32 0, i32 4
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = tail call i32 @usb_gadget_map_request(ptr noundef %41, ptr noundef nonnull %1, i32 noundef %50) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.bdc, ptr %41, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.42) #11
  br label %58

56:                                               ; preds = %40
  %57 = tail call fastcc i32 @bdc_queue_xfr(ptr noundef %41, ptr noundef nonnull %1) #10
  br label %58

58:                                               ; preds = %56, %53, %37, %35
  %59 = phi i32 [ %36, %35 ], [ %51, %53 ], [ %57, %56 ], [ -22, %37 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #10
  br label %60

60:                                               ; preds = %58, %24, %15, %11, %9, %5, %3
  %61 = phi i32 [ -95, %24 ], [ %59, %58 ], [ -108, %5 ], [ -108, %3 ], [ -22, %15 ], [ -22, %11 ], [ -22, %9 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_gadget_ep_dequeue(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %174

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bdc, ptr %8, i32 0, i32 3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #10
  %11 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 1
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi ptr [ %11, %6 ], [ %14, %12 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 -56
  %16 = icmp eq ptr %14, %11
  %17 = icmp eq ptr %15, %1
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %12

19:                                               ; preds = %12
  br i1 %17, label %23, label %20

20:                                               ; preds = %19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #10
  %21 = getelementptr inbounds %struct.bdc, ptr %8, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.43) #11
  br label %174

23:                                               ; preds = %19
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10
  %26 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10, i32 2
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = phi i32 [ %32, %30 ], [ %28, %23 ]
  %35 = getelementptr i8, ptr %14, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr i8, ptr %14, i32 20
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -1
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, -1
  br label %53

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1
  %49 = srem i32 %39, %48
  %50 = icmp eq i32 %49, 0
  %51 = add i32 %38, -2
  %52 = select i1 %50, i32 %51, i32 %39
  br label %53

53:                                               ; preds = %45, %41
  %54 = phi i32 [ %44, %41 ], [ %52, %45 ]
  %55 = getelementptr inbounds %struct.bdc, ptr %24, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 32
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #10, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %59 = and i32 %58, 15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %155

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 5
  %63 = load i8, ptr %62, align 2
  %64 = zext i8 %63 to i32
  %65 = tail call i32 @bdc_stop_ep(ptr noundef %24, i32 noundef %64) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %155

67:                                               ; preds = %61
  %68 = load ptr, ptr %55, align 4
  %69 = getelementptr i8, ptr %68, i32 96
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #10, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %71 = load ptr, ptr %55, align 4
  %72 = getelementptr i8, ptr %71, i32 100
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #10, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %74 = load ptr, ptr %7, align 4
  %75 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %67
  %79 = load ptr, ptr %25, align 4
  %80 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 10, i32 5
  br label %81

81:                                               ; preds = %94, %78
  %82 = phi i32 [ 0, %78 ], [ %95, %94 ]
  %83 = getelementptr ptr, ptr %79, i32 %82
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.bd_table, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp ult i32 %70, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %81
  %89 = load i32, ptr %80, align 4
  %90 = shl i32 %89, 4
  %91 = add i32 %86, -16
  %92 = add i32 %91, %90
  %93 = icmp ult i32 %92, %70
  br i1 %93, label %94, label %100

94:                                               ; preds = %88, %81
  %95 = add nuw nsw i32 %82, 1
  %96 = icmp eq i32 %95, %76
  br i1 %96, label %97, label %81

97:                                               ; preds = %94, %67
  %98 = getelementptr inbounds %struct.bdc, ptr %74, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.bd_add_to_bdi) #11
  br label %172

100:                                              ; preds = %88
  %101 = sub i32 %70, %86
  %102 = lshr i32 %101, 4
  %103 = mul i32 %89, %82
  %104 = add i32 %103, %102
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %172, label %106

106:                                              ; preds = %100
  %107 = icmp sgt i32 %104, %34
  %108 = icmp slt i32 %36, %104
  br i1 %107, label %109, label %112

109:                                              ; preds = %106
  %110 = icmp sgt i32 %36, %34
  %111 = select i1 %108, i1 %110, i1 false
  br i1 %111, label %115, label %119

112:                                              ; preds = %106
  br i1 %108, label %113, label %119

113:                                              ; preds = %112
  %114 = icmp slt i32 %54, %104
  br i1 %114, label %172, label %119

115:                                              ; preds = %109
  %116 = icmp sge i32 %54, %104
  %117 = icmp sle i32 %54, %34
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %119, label %172

119:                                              ; preds = %115, %113, %112, %109
  %120 = phi i1 [ true, %115 ], [ false, %109 ], [ false, %112 ], [ true, %113 ]
  %121 = getelementptr inbounds %struct.usb_gadget, ptr %24, i32 0, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %155, label %124

124:                                              ; preds = %119
  %125 = load i32, ptr %37, align 4
  %126 = sdiv i32 %125, %89
  %127 = getelementptr ptr, ptr %79, i32 %126
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.bd_table, ptr %128, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = mul i32 %126, %89
  %132 = sub i32 %125, %131
  %133 = shl i32 %132, 4
  %134 = add i32 %133, %130
  %135 = load ptr, ptr %11, align 4
  %136 = icmp eq ptr %135, %14
  %137 = select i1 %120, i1 true, i1 %136
  br i1 %137, label %149, label %138

138:                                              ; preds = %124
  %139 = sdiv i32 %36, %89
  %140 = mul i32 %139, %89
  %141 = sub i32 %36, %140
  %142 = getelementptr ptr, ptr %79, i32 %139
  %143 = load ptr, ptr %142, align 4
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr %struct.bdc_bd, ptr %144, i32 %141
  store i32 %134, ptr %145, align 4
  %146 = getelementptr [4 x i32], ptr %145, i32 0, i32 1
  store i32 0, ptr %146, align 4
  %147 = getelementptr [4 x i32], ptr %145, i32 0, i32 2
  store i32 0, ptr %147, align 4
  %148 = getelementptr [4 x i32], ptr %145, i32 0, i32 3
  store i32 201326607, ptr %148, align 4
  br label %155

149:                                              ; preds = %124
  %150 = tail call i32 @bdc_ep_bla(ptr noundef %24, ptr noundef nonnull %0, i32 noundef %134) #10
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.bdc, ptr %24, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.44, i32 noundef %150) #11
  br label %172

155:                                              ; preds = %149, %138, %119, %61, %53
  %156 = load ptr, ptr %7, align 4
  %157 = getelementptr i8, ptr %14, i32 4
  %158 = load ptr, ptr %157, align 4
  %159 = load ptr, ptr %14, align 4
  %160 = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  store ptr %158, ptr %160, align 4
  store volatile ptr %159, ptr %158, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %157, align 4
  %161 = getelementptr i8, ptr %14, i32 -8
  store i32 -104, ptr %161, align 4
  %162 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 4
  %163 = load i8, ptr %162, align 1
  %164 = zext i8 %163 to i32
  tail call void @usb_gadget_unmap_request(ptr noundef %156, ptr noundef nonnull %1, i32 noundef %164) #10
  %165 = getelementptr i8, ptr %14, i32 -28
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %155
  %169 = getelementptr inbounds %struct.bdc, ptr %156, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %170 = load i16, ptr %169, align 4
  %171 = add i16 %170, 1
  store i16 %171, ptr %169, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  tail call void @usb_gadget_giveback_request(ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  tail call void @_raw_spin_lock(ptr noundef %169) #10
  br label %172

172:                                              ; preds = %168, %155, %152, %115, %113, %100, %97
  %173 = phi i32 [ -95, %97 ], [ -95, %100 ], [ -95, %113 ], [ -95, %115 ], [ -95, %152 ], [ 0, %155 ], [ 0, %168 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #10
  br label %174

174:                                              ; preds = %172, %20, %2
  %175 = phi i32 [ -22, %20 ], [ %173, %172 ], [ -22, %2 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdc_gadget_ep_set_halt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bdc, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %8, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bdc_ep, ptr %0, i32 0, i32 1
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call fastcc i32 @ep_set_halt(ptr noundef %0, i32 noundef %1)
  br label %19

19:                                               ; preds = %17, %13, %2
  %20 = phi i32 [ %18, %17 ], [ -22, %2 ], [ -11, %13 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdc_ep_bla(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2154241099}
!10 = !{i64 3864033}
!11 = !{i64 2148975041}
!12 = !{i64 2148970865}
!13 = !{i64 2148970940, i64 2148970967, i64 2148971014, i64 2148971036, i64 2148971064, i64 2148971084}
!14 = !{i64 2148998044}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 3864451}
!19 = !{i64 2154240747}
!20 = !{i64 2154261466}
