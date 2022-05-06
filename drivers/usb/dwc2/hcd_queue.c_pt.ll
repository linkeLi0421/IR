; ModuleID = '/llk/IR/drivers/usb/dwc2/hcd_queue.c_pt.bc'
source_filename = "../drivers/usb/dwc2/hcd_queue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dwc2_hcd_urb = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i16, %struct.dwc2_hcd_pipe_info, [0 x %struct.dwc2_hcd_iso_packet_desc] }
%struct.dwc2_hcd_pipe_info = type { i8, i8, i8, i8, i16, i16 }
%struct.dwc2_hcd_iso_packet_desc = type { i32, i32, i32, i32 }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dwc2_qh = type { ptr, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [8 x %struct.dwc2_hs_transfer_time], i32, i16, ptr, i32, %struct.list_head, ptr, %struct.list_head, ptr, i32, i32, ptr, %struct.timer_list, %struct.hrtimer, ptr, i32, i8 }
%struct.dwc2_hs_transfer_time = type { i32, i16 }
%struct.dwc2_tt = type { i32, ptr, [0 x i32] }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.dwc2_qtd = type { i32, i8, i8, i8, i8, i16, i16, i16, i16, i32, i8, i8, i16, i16, ptr, ptr, %struct.list_head }

@.str = private unnamed_addr constant [16 x i8] c"%s: Invalid QH\0A\00", align 1
@__func__.dwc2_hcd_qtd_add = private unnamed_addr constant [17 x i8] c"dwc2_hcd_qtd_add\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"drivers/usb/dwc2/hcd_queue.c\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"%s: Periodic xfer length %d > max xfer length for channel %d\0A\00", align 1
@__func__.dwc2_check_max_xfer_size = private unnamed_addr constant [25 x i8] c"dwc2_check_max_xfer_size\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"%s: No host channel available for periodic transfer\0A\00", align 1
@__func__.dwc2_do_reserve = private unnamed_addr constant [16 x i8] c"dwc2_do_reserve\00", align 1
@dwc2_uframe_schedule_split.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"%s: already claimed usecs %d, required usecs %d\0A\00", align 1
@__func__.dwc2_check_periodic_bandwidth = private unnamed_addr constant [30 x i8] c"dwc2_check_periodic_bandwidth\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dwc2_hcd_qh_create(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %123, label %6

6:                                                ; preds = %3
  %7 = and i32 %2, 17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !8

9:                                                ; preds = %6
  %10 = and i32 %2, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 2
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i32 [ 0, %6 ], [ %12, %9 ]
  %15 = or i32 %2, 256
  %16 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %14, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef %15, i32 noundef 232) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %123, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %1, align 4
  %22 = tail call i32 @dwc2_host_get_speed(ptr noundef %0, ptr noundef %21) #10
  %23 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13, i32 2
  %24 = load i8, ptr %23, align 2
  %25 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, -128
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 1088
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %34 = load i8, ptr %33, align 8, !range !11
  %35 = icmp eq i8 %34, 0
  %36 = shl i32 %32, 8
  %37 = select i1 %35, i32 %32, i32 %36
  %38 = lshr i32 %37, 17
  %39 = and i32 %38, 3
  %40 = icmp eq i32 %39, 0
  %41 = icmp ne i32 %22, 3
  %42 = select i1 %40, i1 %41, i1 false
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13, i32 4
  %45 = load i16, ptr %44, align 2
  %46 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13, i32 5
  %47 = load i16, ptr %46, align 2
  store ptr %0, ptr %18, align 8
  %48 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 30
  tail call void @init_timer_key(ptr noundef %48, ptr noundef nonnull @dwc2_unreserve_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %49 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 31
  tail call void @hrtimer_init(ptr noundef %49, i32 noundef 1, i32 noundef 1) #10
  %50 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 31, i32 2
  store ptr @dwc2_wait_timer_fn, ptr %50, align 8
  %51 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 1
  store i8 %24, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 2
  store i8 %28, ptr %52, align 1
  %53 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 6
  store i8 0, ptr %53, align 1
  %54 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 3
  store i16 %45, ptr %54, align 2
  %55 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 4
  store i16 %47, ptr %55, align 8
  %56 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 23
  store volatile ptr %56, ptr %56, align 8
  %57 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 23, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 25
  store volatile ptr %58, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 25, i32 1
  store ptr %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 8
  store i8 %43, ptr %60, align 1
  %61 = trunc i32 %22 to i8
  %62 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 5
  store i8 %61, ptr %62, align 2
  switch i8 %24, label %115 [
    i8 3, label %63
    i8 1, label %63
  ]

63:                                               ; preds = %20, %20
  %64 = zext i16 %47 to i32
  %65 = zext i16 %45 to i32
  %66 = mul nuw i32 %64, %65
  %67 = icmp eq i8 %24, 1
  %68 = select i1 %42, i32 3, i32 %22
  %69 = load ptr, ptr %1, align 4
  %70 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 33
  %71 = tail call ptr @dwc2_host_get_tt_info(ptr noundef %0, ptr noundef %69, i32 noundef %2, ptr noundef %70) #10
  %72 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 32
  store ptr %71, ptr %72, align 8
  %73 = zext i1 %27 to i32
  %74 = zext i1 %67 to i32
  %75 = tail call i32 @usb_calc_bus_time(i32 noundef %68, i32 noundef %73, i32 noundef %74, i32 noundef %66) #10
  %76 = add i32 %75, 999
  %77 = sdiv i32 %76, 1000
  %78 = trunc i32 %77 to i16
  %79 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 11
  store i16 %78, ptr %79, align 8
  %80 = tail call i32 @usb_calc_bus_time(i32 noundef %22, i32 noundef %73, i32 noundef %74, i32 noundef %66) #10
  %81 = icmp ne ptr %71, null
  %82 = select i1 %42, i1 %81, i1 false
  br i1 %82, label %83, label %89

83:                                               ; preds = %63
  %84 = getelementptr inbounds %struct.dwc2_tt, ptr %71, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.usb_tt, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, %80
  br label %89

89:                                               ; preds = %83, %63
  %90 = phi i32 [ %88, %83 ], [ %80, %63 ]
  %91 = add i32 %90, 999
  %92 = sdiv i32 %91, 1000
  %93 = trunc i32 %92 to i16
  %94 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 12
  store i16 %93, ptr %94, align 2
  %95 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 12
  %96 = load i16, ptr %95, align 4
  %97 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 14
  store i16 %96, ptr %97, align 2
  %98 = select i1 %42, i16 8, i16 1
  %99 = mul i16 %96, %98
  %100 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 13
  store i16 %99, ptr %100, align 4
  %101 = icmp ne i32 %39, 0
  %102 = select i1 %101, i1 true, i1 %81
  %103 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 34
  %104 = load i8, ptr %103, align 8
  %105 = select i1 %102, i8 4, i8 0
  %106 = and i8 %104, -5
  %107 = or i8 %106, %105
  store i8 %107, ptr %103, align 8
  br i1 %42, label %108, label %110

108:                                              ; preds = %89
  %109 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 17
  store i16 -1, ptr %109, align 4
  br label %115

110:                                              ; preds = %89
  %111 = icmp eq i32 %22, 3
  %112 = getelementptr inbounds %struct.dwc2_qh, ptr %18, i32 0, i32 17
  br i1 %111, label %113, label %114

113:                                              ; preds = %110
  store i16 1, ptr %112, align 4
  br label %115

114:                                              ; preds = %110
  store i16 0, ptr %112, align 4
  br label %115

115:                                              ; preds = %114, %113, %108, %20
  %116 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %117 = load i8, ptr %116, align 1, !range !11
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = tail call i32 @dwc2_hcd_qh_init_ddma(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %2) #10
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  tail call void @dwc2_hcd_qh_free(ptr noundef %0, ptr noundef nonnull %18)
  br label %123

123:                                              ; preds = %122, %119, %115, %13, %3
  %124 = phi ptr [ null, %122 ], [ null, %3 ], [ null, %13 ], [ %18, %119 ], [ %18, %115 ]
  ret ptr %124
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_qh_init_ddma(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_qh_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 30
  %4 = tail call i32 @del_timer_sync(ptr noundef %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #10
  tail call fastcc void @dwc2_do_unreserve(ptr noundef %0, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 31
  %11 = tail call i32 @hrtimer_cancel(ptr noundef %10) #10
  %12 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 32
  %13 = load ptr, ptr %12, align 8
  tail call void @dwc2_host_put_tt_info(ptr noundef %0, ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 26
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  tail call void @dwc2_hcd_qh_free_ddma(ptr noundef %0, ptr noundef %1) #10
  br label %27

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 66
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 21
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @kmem_cache_free(ptr noundef nonnull %20, ptr noundef nonnull %24) #10
  br label %27

27:                                               ; preds = %26, %22, %18, %17
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_do_unreserve(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %5 = load volatile i32, ptr %4, align 4
  store volatile i32 %5, ptr %3, align 4
  %6 = lshr i32 %5, 16
  %7 = and i32 %5, 65535
  %8 = icmp eq i32 %7, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %8, label %9, label %10, !prof !12

9:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/dwc2/hcd_queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1249, 0\0A.popsection", ""() #10, !srcloc !13
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 34
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17, !prof !12

15:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1251, i32 noundef 9, ptr noundef null) #10
  %16 = load i8, ptr %11, align 8
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i8 [ %16, %15 ], [ %12, %10 ]
  %19 = and i8 %18, -3
  store i8 %19, ptr %11, align 8
  %20 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %28, label %23, !prof !8

23:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1256, i32 noundef 9, ptr noundef null) #10
  %24 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store volatile ptr %20, ptr %20, align 4
  store ptr %20, ptr %24, align 4
  br label %28

28:                                               ; preds = %23, %17
  %29 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 11
  %30 = load i16, ptr %29, align 8
  %31 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 45
  %32 = load i16, ptr %31, align 4
  %33 = sub i16 %32, %30
  store i16 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 13
  %35 = load i8, ptr %34, align 2, !range !11
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %77, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 17
  %39 = load i16, ptr %38, align 4
  %40 = icmp sgt i16 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 18
  %43 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 46
  %44 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 13
  br label %45

45:                                               ; preds = %67, %41
  %46 = phi i16 [ %39, %41 ], [ %68, %67 ]
  %47 = phi i32 [ 0, %41 ], [ %69, %67 ]
  %48 = getelementptr %struct.dwc2_hs_transfer_time, ptr %42, i32 %47
  %49 = getelementptr %struct.dwc2_hs_transfer_time, ptr %42, i32 %47, i32 1
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = load i16, ptr %44, align 4
  %53 = zext i16 %52 to i32
  %54 = load i32, ptr %48, align 4
  %55 = tail call i32 @gcd(i32 noundef %53, i32 noundef 8) #11
  %56 = mul i32 %55, 100
  %57 = sdiv i32 8, %55
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %59, %45
  %60 = phi i32 [ %63, %59 ], [ 0, %45 ]
  %61 = mul i32 %56, %60
  %62 = add i32 %61, %54
  tail call void @__bitmap_clear(ptr noundef %43, i32 noundef %62, i32 noundef %51) #10
  %63 = add nuw nsw i32 %60, 1
  %64 = icmp eq i32 %63, %57
  br i1 %64, label %65, label %59

65:                                               ; preds = %59
  %66 = load i16, ptr %38, align 4
  br label %67

67:                                               ; preds = %65, %45
  %68 = phi i16 [ %66, %65 ], [ %46, %45 ]
  %69 = add nuw nsw i32 %47, 1
  %70 = sext i16 %68 to i32
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %45, label %72

72:                                               ; preds = %67, %37
  %73 = load i8, ptr %11, align 8
  %74 = and i8 %73, 4
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  tail call fastcc void @dwc2_ls_pmap_unschedule(ptr noundef %1) #10
  br label %81

77:                                               ; preds = %28
  %78 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 51
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -1
  store i32 %80, ptr %78, align 4
  br label %81

81:                                               ; preds = %77, %76, %72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_host_put_tt_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_qh_free_ddma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hcd_qh_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %528

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  switch i8 %8, label %31 [
    i8 2, label %9
    i8 0, label %9
  ]

9:                                                ; preds = %6, %6
  %10 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 11
  %11 = load i16, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 16
  store i16 %11, ptr %12, align 2
  %13 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 15
  store i16 %11, ptr %13, align 8
  %14 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 34
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 37
  %20 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 37, i32 1
  %21 = load ptr, ptr %20, align 4
  store ptr %3, ptr %20, align 4
  store ptr %19, ptr %3, align 4
  %22 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %3, ptr %21, align 4
  %23 = load i8, ptr %14, align 8
  %24 = and i8 %23, -17
  store i8 %24, ptr %14, align 8
  %25 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 31
  tail call void @hrtimer_start_range_ns(ptr noundef %25, i64 noundef 1000000, i64 noundef 0, i32 noundef 1) #10
  br label %528

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 36
  %28 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 36, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr %3, ptr %28, align 4
  store ptr %27, ptr %3, align 4
  %30 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %3, ptr %29, align 4
  br label %528

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 3
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 4
  %36 = load i16, ptr %35, align 8
  %37 = zext i16 %36 to i32
  %38 = mul nuw i32 %37, %34
  %39 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 27
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.dwc2_check_max_xfer_size, i32 noundef %38, i32 noundef %40) #12
  br label %528

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 30
  %46 = tail call i32 @del_timer(ptr noundef %45) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 34
  %50 = load i8, ptr %49, align 8
  %51 = and i8 %50, 2
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %54, !prof !12

53:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1372, i32 noundef 9, ptr noundef null) #10
  br label %54

54:                                               ; preds = %53, %48, %44
  %55 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 34
  %56 = load i8, ptr %55, align 8
  %57 = and i8 %56, 2
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %479

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 13
  %61 = load i8, ptr %60, align 2, !range !11
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %424, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %65 = load i8, ptr %64, align 2
  %66 = icmp eq i8 %65, 3
  br i1 %66, label %67, label %97

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 11
  %69 = load i16, ptr %68, align 8
  %70 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 12
  %71 = load i16, ptr %70, align 2
  %72 = icmp eq i16 %69, %71
  br i1 %72, label %74, label %73, !prof !8

73:                                               ; preds = %67
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 993, i32 noundef 9, ptr noundef null) #10
  br label %74

74:                                               ; preds = %73, %67
  %75 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 13
  %76 = load i16, ptr %75, align 4
  %77 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 14
  %78 = load i16, ptr %77, align 2
  %79 = icmp eq i16 %76, %78
  br i1 %79, label %81, label %80, !prof !8

80:                                               ; preds = %74
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 994, i32 noundef 9, ptr noundef null) #10
  br label %81

81:                                               ; preds = %80, %74
  %82 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 17
  %83 = load i16, ptr %82, align 4
  %84 = icmp eq i16 %83, 1
  br i1 %84, label %86, label %85, !prof !8

85:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 995, i32 noundef 9, ptr noundef null) #10
  br label %86

86:                                               ; preds = %85, %81
  %87 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 18
  store i32 0, ptr %87, align 8
  %88 = load i16, ptr %68, align 8
  %89 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 18, i32 0, i32 1
  store i16 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 46
  %91 = zext i16 %88 to i32
  %92 = load i16, ptr %75, align 4
  %93 = zext i16 %92 to i32
  %94 = tail call fastcc i32 @pmap_schedule(ptr noundef %90, i32 noundef 100, i32 noundef 8, i32 noundef %91, i32 noundef %93, i32 noundef 0, i1 noundef zeroext false) #10
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %528, label %96

96:                                               ; preds = %86
  store i32 %94, ptr %87, align 4
  br label %466

97:                                               ; preds = %63
  %98 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 8
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %151

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 11
  %103 = load i16, ptr %102, align 8
  %104 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 12
  %105 = load i16, ptr %104, align 2
  %106 = icmp eq i16 %103, %105
  br i1 %106, label %108, label %107, !prof !8

107:                                              ; preds = %101
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1016, i32 noundef 9, ptr noundef null) #10
  br label %108

108:                                              ; preds = %107, %101
  %109 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 13
  %110 = load i16, ptr %109, align 4
  %111 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 14
  %112 = load i16, ptr %111, align 2
  %113 = icmp eq i16 %110, %112
  br i1 %113, label %115, label %114, !prof !8

114:                                              ; preds = %108
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1017, i32 noundef 9, ptr noundef null) #10
  br label %115

115:                                              ; preds = %114, %108
  %116 = load i8, ptr %55, align 8
  %117 = and i8 %116, 4
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %120, !prof !12

119:                                              ; preds = %115
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1018, i32 noundef 9, ptr noundef null) #10
  br label %120

120:                                              ; preds = %119, %115
  %121 = load i16, ptr %104, align 2
  %122 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 32
  %123 = load ptr, ptr %122, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %423, label %125, !prof !12

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.dwc2_tt, ptr %123, i32 0, i32 2
  %127 = getelementptr inbounds %struct.dwc2_tt, ptr %123, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.usb_tt, ptr %128, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 33
  %134 = load i32, ptr %133, align 4
  %135 = shl i32 %134, 1
  %136 = add i32 %135, -2
  %137 = getelementptr i32, ptr %126, i32 %136
  br label %138

138:                                              ; preds = %132, %125
  %139 = phi ptr [ %137, %132 ], [ %126, %125 ]
  %140 = icmp eq ptr %139, null
  br i1 %140, label %528, label %141

141:                                              ; preds = %138
  %142 = zext i16 %121 to i32
  %143 = add nuw nsw i32 %142, 24
  %144 = udiv i32 %143, 25
  %145 = load i16, ptr %111, align 2
  %146 = zext i16 %145 to i32
  %147 = tail call fastcc i32 @pmap_schedule(ptr noundef nonnull %139, i32 noundef 36, i32 noundef 1, i32 noundef %144, i32 noundef %146, i32 noundef 0, i1 noundef zeroext false) #10
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %528, label %149

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 19
  store i32 %147, ptr %150, align 8
  br label %466

151:                                              ; preds = %97
  %152 = load i16, ptr %35, align 8
  %153 = zext i16 %152 to i32
  %154 = load i16, ptr %32, align 2
  %155 = zext i16 %154 to i32
  %156 = mul nuw i32 %155, %153
  %157 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 13
  %158 = load i16, ptr %157, align 4
  %159 = zext i16 %158 to i32
  %160 = tail call i32 @gcd(i32 noundef %159, i32 noundef 8) #11
  %161 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 12
  %162 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 32
  %163 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 33
  %164 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 14
  %165 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 19
  %166 = add i32 %160, -1
  %167 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 2
  %168 = tail call i32 @llvm.smin.i32(i32 %156, i32 188) #10
  %169 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 17
  %170 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 18
  %171 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 18, i32 0, i32 1
  %172 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 46
  br label %173

173:                                              ; preds = %419, %151
  %174 = phi i8 [ %56, %151 ], [ %420, %419 ]
  %175 = phi i32 [ 0, %151 ], [ %417, %419 ]
  %176 = and i8 %174, 4
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %206, label %178

178:                                              ; preds = %173
  %179 = load i16, ptr %161, align 2
  %180 = load ptr, ptr %162, align 8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %423, label %182, !prof !12

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.dwc2_tt, ptr %180, i32 0, i32 2
  %184 = getelementptr inbounds %struct.dwc2_tt, ptr %180, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.usb_tt, ptr %185, i32 0, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %182
  %190 = load i32, ptr %163, align 4
  %191 = shl i32 %190, 1
  %192 = add i32 %191, -2
  %193 = getelementptr i32, ptr %183, i32 %192
  br label %194

194:                                              ; preds = %189, %182
  %195 = phi ptr [ %193, %189 ], [ %183, %182 ]
  %196 = icmp eq ptr %195, null
  br i1 %196, label %528, label %197

197:                                              ; preds = %194
  %198 = zext i16 %179 to i32
  %199 = add nuw nsw i32 %198, 24
  %200 = udiv i32 %199, 25
  %201 = load i16, ptr %164, align 2
  %202 = zext i16 %201 to i32
  %203 = tail call fastcc i32 @pmap_schedule(ptr noundef nonnull %195, i32 noundef 36, i32 noundef 1, i32 noundef %200, i32 noundef %202, i32 noundef %175, i1 noundef zeroext false) #10
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %528, label %205

205:                                              ; preds = %197
  store i32 %203, ptr %165, align 8
  br label %209

206:                                              ; preds = %173
  %207 = load i1, ptr @dwc2_uframe_schedule_split.__already_done, align 1
  br i1 %207, label %209, label %208, !prof !8

208:                                              ; preds = %206
  store i1 true, ptr @dwc2_uframe_schedule_split.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 761, i32 noundef 9, ptr noundef null) #10
  br label %209

209:                                              ; preds = %208, %206, %205
  %210 = load i32, ptr %165, align 8
  %211 = freeze i32 %210
  %212 = udiv i32 %211, 5
  %213 = and i32 %212, 7
  %214 = icmp eq i32 %213, 7
  br i1 %214, label %215, label %226

215:                                              ; preds = %209
  %216 = load i8, ptr %55, align 8
  %217 = and i8 %216, 4
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %215
  tail call fastcc void @dwc2_ls_pmap_unschedule(ptr noundef %1) #10
  %220 = load i32, ptr %165, align 8
  br label %221

221:                                              ; preds = %219, %215
  %222 = phi i32 [ %220, %219 ], [ %210, %215 ]
  %223 = urem i32 %222, 36
  %224 = add i32 %222, 36
  %225 = sub i32 %224, %223
  br label %416

226:                                              ; preds = %209
  %227 = add i32 %166, %212
  %228 = srem i32 %227, %160
  %229 = load i8, ptr %7, align 4
  %230 = icmp eq i8 %229, 1
  %231 = load i8, ptr %167, align 1
  %232 = icmp eq i8 %231, 0
  %233 = select i1 %230, i1 %232, i1 false
  %234 = select i1 %233, i8 0, i8 %231
  %235 = xor i1 %233, true
  %236 = zext i1 %235 to i32
  %237 = mul i32 %212, 5
  %238 = sub i32 %211, %237
  %239 = trunc i32 %238 to i16
  %240 = mul nuw nsw i16 %239, 188
  %241 = add nuw nsw i16 %240, 4
  %242 = udiv i16 %241, 5
  %243 = zext i16 %242 to i32
  %244 = sub nuw nsw i32 188, %243
  %245 = tail call i32 @llvm.smin.i32(i32 %244, i32 %156) #10
  %246 = sub i32 %156, %245
  %247 = icmp ne i8 %234, 0
  %248 = icmp eq i32 %245, %168
  %249 = select i1 %247, i1 true, i1 %248
  br i1 %249, label %258, label %250

250:                                              ; preds = %226
  %251 = load i8, ptr %55, align 8
  %252 = and i8 %251, 4
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %250
  tail call fastcc void @dwc2_ls_pmap_unschedule(ptr noundef %1) #10
  br label %255

255:                                              ; preds = %254, %250
  %256 = mul nuw i32 %212, 5
  %257 = add i32 %256, 5
  br label %416

258:                                              ; preds = %226
  %259 = add i32 %246, 187
  %260 = sdiv i32 %259, 188
  %261 = trunc i32 %260 to i16
  %262 = add i16 %261, 1
  store i16 %262, ptr %169, align 4
  %263 = icmp eq i8 %229, 3
  br i1 %263, label %264, label %271

264:                                              ; preds = %258
  %265 = icmp eq i32 %213, 6
  %266 = select i1 %265, i16 3, i16 4
  %267 = add i16 %266, %261
  store i16 %267, ptr %169, align 4
  %268 = icmp eq i8 %234, 0
  br i1 %268, label %269, label %289

269:                                              ; preds = %264
  %270 = tail call i32 @llvm.smax.i32(i32 %246, i32 4) #10
  br label %289

271:                                              ; preds = %258
  %272 = icmp eq i8 %234, 0
  br i1 %272, label %286, label %273

273:                                              ; preds = %271
  %274 = shl i32 %260, 16
  %275 = add i32 %274, 131072
  %276 = ashr exact i32 %275, 16
  %277 = add nsw i32 %276, %213
  %278 = icmp slt i32 %277, 6
  %279 = select i1 %278, i16 4, i16 3
  %280 = add i16 %279, %261
  store i16 %280, ptr %169, align 4
  %281 = icmp sgt i32 %277, 4
  %282 = icmp eq i32 %213, 0
  %283 = and i1 %282, %281
  br i1 %283, label %284, label %289

284:                                              ; preds = %273
  %285 = add i16 %280, -1
  store i16 %285, ptr %169, align 4
  br label %289

286:                                              ; preds = %271
  %287 = tail call i32 @llvm.smin.i32(i32 %246, i32 188) #10
  %288 = srem i32 %246, 188
  br label %289

289:                                              ; preds = %286, %284, %273, %269, %264
  %290 = phi i16 [ %267, %269 ], [ %262, %286 ], [ %267, %264 ], [ %285, %284 ], [ %280, %273 ]
  %291 = phi i32 [ 4, %269 ], [ %288, %286 ], [ %156, %264 ], [ %168, %284 ], [ %168, %273 ]
  %292 = phi i32 [ %270, %269 ], [ %287, %286 ], [ %156, %264 ], [ %168, %284 ], [ %168, %273 ]
  %293 = phi i32 [ %245, %269 ], [ %245, %286 ], [ 4, %264 ], [ 4, %284 ], [ 4, %273 ]
  %294 = mul i32 %293, 56
  %295 = sdiv i32 %294, 6
  %296 = mul i32 %295, 2083
  %297 = add i32 %296, 639481
  %298 = udiv i32 %297, 1000
  %299 = add nuw nsw i32 %298, 1004
  %300 = udiv i32 %299, 1000
  %301 = trunc i32 %300 to i16
  store i16 %301, ptr %171, align 4
  %302 = sext i16 %290 to i32
  %303 = add nsw i32 %302, -1
  %304 = icmp sgt i16 %290, 2
  br i1 %304, label %305, label %324

305:                                              ; preds = %289
  %306 = mul i32 %292, 56
  %307 = sdiv i32 %306, 6
  %308 = mul i32 %307, 2083
  %309 = add i32 %308, 639481
  %310 = udiv i32 %309, 1000
  %311 = add nuw nsw i32 %310, 1004
  %312 = udiv i32 %311, 1000
  %313 = trunc i32 %312 to i16
  br label %314

314:                                              ; preds = %314, %305
  %315 = phi i32 [ 1, %305 ], [ %317, %314 ]
  %316 = getelementptr %struct.dwc2_qh, ptr %1, i32 0, i32 18, i32 %315, i32 1
  store i16 %313, ptr %316, align 4
  %317 = add nuw nsw i32 %315, 1
  %318 = load i16, ptr %169, align 4
  %319 = sext i16 %318 to i32
  %320 = add nsw i32 %319, -1
  %321 = icmp slt i32 %317, %320
  br i1 %321, label %314, label %322

322:                                              ; preds = %314
  %323 = sext i16 %318 to i32
  br label %324

324:                                              ; preds = %322, %289
  %325 = phi i32 [ %302, %289 ], [ %323, %322 ]
  %326 = phi i16 [ %290, %289 ], [ %318, %322 ]
  %327 = phi i32 [ %303, %289 ], [ %320, %322 ]
  %328 = icmp sgt i16 %326, 1
  br i1 %328, label %331, label %329

329:                                              ; preds = %324
  %330 = mul i32 %228, 100
  store i32 %330, ptr %170, align 8
  br label %346

331:                                              ; preds = %324
  %332 = mul i32 %291, 56
  %333 = sdiv i32 %332, 6
  %334 = mul i32 %333, 2083
  %335 = add i32 %334, 639481
  %336 = udiv i32 %335, 1000
  %337 = add nuw nsw i32 %336, 1004
  %338 = udiv i32 %337, 1000
  %339 = trunc i32 %338 to i16
  %340 = getelementptr %struct.dwc2_qh, ptr %1, i32 0, i32 18, i32 %327, i32 1
  store i16 %339, ptr %340, align 4
  %341 = mul i32 %228, 100
  store i32 %341, ptr %170, align 8
  %342 = add nuw nsw i32 %212, 7
  %343 = add nuw i32 %342, %236
  br label %349

344:                                              ; preds = %349
  %345 = load i16, ptr %169, align 4
  br label %346

346:                                              ; preds = %344, %329
  %347 = phi i16 [ %345, %344 ], [ %326, %329 ]
  %348 = icmp sgt i16 %347, 0
  br i1 %348, label %357, label %380

349:                                              ; preds = %349, %331
  %350 = phi i32 [ 1, %331 ], [ %355, %349 ]
  %351 = add i32 %343, %350
  %352 = and i32 %351, 7
  %353 = mul nuw nsw i32 %352, 100
  %354 = getelementptr %struct.dwc2_qh, ptr %1, i32 0, i32 18, i32 %350
  store i32 %353, ptr %354, align 8
  %355 = add nuw nsw i32 %350, 1
  %356 = icmp eq i32 %355, %325
  br i1 %356, label %344, label %349

357:                                              ; preds = %370, %346
  %358 = phi i32 [ %371, %370 ], [ 0, %346 ]
  %359 = getelementptr %struct.dwc2_hs_transfer_time, ptr %170, i32 %358
  %360 = getelementptr %struct.dwc2_hs_transfer_time, ptr %170, i32 %358, i32 1
  %361 = load i16, ptr %360, align 4
  %362 = zext i16 %361 to i32
  %363 = load i16, ptr %157, align 4
  %364 = zext i16 %363 to i32
  %365 = load i32, ptr %359, align 4
  %366 = tail call fastcc i32 @pmap_schedule(ptr noundef %172, i32 noundef 100, i32 noundef 8, i32 noundef %362, i32 noundef %364, i32 noundef %365, i1 noundef zeroext true) #10
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %357
  %369 = load i16, ptr %169, align 4
  br label %375

370:                                              ; preds = %357
  store i32 %366, ptr %359, align 4
  %371 = add nuw nsw i32 %358, 1
  %372 = load i16, ptr %169, align 4
  %373 = sext i16 %372 to i32
  %374 = icmp slt i32 %371, %373
  br i1 %374, label %357, label %375

375:                                              ; preds = %370, %368
  %376 = phi i16 [ %369, %368 ], [ %372, %370 ]
  %377 = phi i32 [ %358, %368 ], [ %371, %370 ]
  %378 = sext i16 %376 to i32
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %421, label %382

380:                                              ; preds = %346
  %381 = icmp eq i16 %347, 0
  br i1 %381, label %421, label %384

382:                                              ; preds = %375
  %383 = icmp sgt i32 %377, -1
  br i1 %383, label %384, label %408

384:                                              ; preds = %382, %380
  %385 = phi i32 [ 0, %380 ], [ %377, %382 ]
  br label %386

386:                                              ; preds = %405, %384
  %387 = phi i32 [ %406, %405 ], [ %385, %384 ]
  %388 = getelementptr %struct.dwc2_hs_transfer_time, ptr %170, i32 %387
  %389 = getelementptr %struct.dwc2_hs_transfer_time, ptr %170, i32 %387, i32 1
  %390 = load i16, ptr %389, align 4
  %391 = zext i16 %390 to i32
  %392 = load i16, ptr %157, align 4
  %393 = zext i16 %392 to i32
  %394 = load i32, ptr %388, align 4
  %395 = tail call i32 @gcd(i32 noundef %393, i32 noundef 8) #11
  %396 = mul i32 %395, 100
  %397 = sdiv i32 8, %395
  %398 = icmp sgt i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %399, %386
  %400 = phi i32 [ %403, %399 ], [ 0, %386 ]
  %401 = mul i32 %396, %400
  %402 = add i32 %401, %394
  tail call void @__bitmap_clear(ptr noundef %172, i32 noundef %402, i32 noundef %391) #10
  %403 = add nuw nsw i32 %400, 1
  %404 = icmp eq i32 %403, %397
  br i1 %404, label %405, label %399

405:                                              ; preds = %399, %386
  %406 = add nsw i32 %387, -1
  %407 = icmp sgt i32 %387, 0
  br i1 %407, label %386, label %408

408:                                              ; preds = %405, %382
  %409 = load i8, ptr %55, align 8
  %410 = and i8 %409, 4
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %413, label %412

412:                                              ; preds = %408
  tail call fastcc void @dwc2_ls_pmap_unschedule(ptr noundef %1) #10
  br label %413

413:                                              ; preds = %412, %408
  %414 = mul i32 %212, 5
  %415 = add i32 %414, 5
  br label %416

416:                                              ; preds = %413, %255, %221
  %417 = phi i32 [ %225, %221 ], [ %415, %413 ], [ %257, %255 ]
  %418 = icmp slt i32 %417, 36
  br i1 %418, label %419, label %528

419:                                              ; preds = %416
  %420 = load i8, ptr %55, align 8
  br label %173

421:                                              ; preds = %380, %375
  %422 = icmp sgt i32 %175, 35
  br i1 %422, label %528, label %466

423:                                              ; preds = %178, %120
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 380, i32 noundef 9, ptr noundef null) #10
  br label %528

424:                                              ; preds = %59
  %425 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 37
  %426 = load i8, ptr %425, align 8
  %427 = zext i8 %426 to i32
  %428 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 51
  %429 = load i32, ptr %428, align 4
  %430 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 52
  %431 = load i32, ptr %430, align 8
  %432 = add i32 %431, %429
  %433 = icmp slt i32 %432, %427
  %434 = add nsw i32 %427, -1
  %435 = icmp slt i32 %429, %434
  %436 = select i1 %433, i1 %435, i1 false
  br i1 %436, label %439, label %437

437:                                              ; preds = %424
  %438 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %438, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dwc2_do_reserve) #12
  br label %528

439:                                              ; preds = %424
  %440 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %441 = load i8, ptr %440, align 2
  %442 = icmp eq i8 %441, 3
  br i1 %442, label %447, label %443

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 8
  %445 = load i8, ptr %444, align 1
  %446 = icmp eq i8 %445, 0
  br i1 %446, label %451, label %447

447:                                              ; preds = %443, %439
  %448 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 11
  %449 = load i16, ptr %448, align 8
  %450 = sub i16 100, %449
  br label %455

451:                                              ; preds = %443
  %452 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 11
  %453 = load i16, ptr %452, align 8
  %454 = sub i16 900, %453
  br label %455

455:                                              ; preds = %451, %447
  %456 = phi i16 [ %449, %447 ], [ %453, %451 ]
  %457 = phi i16 [ %450, %447 ], [ %454, %451 ]
  %458 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 45
  %459 = load i16, ptr %458, align 4
  %460 = zext i16 %459 to i32
  %461 = sext i16 %457 to i32
  %462 = icmp sgt i32 %460, %461
  br i1 %462, label %463, label %466

463:                                              ; preds = %455
  %464 = load ptr, ptr %0, align 8
  %465 = zext i16 %456 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %464, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dwc2_check_periodic_bandwidth, i32 noundef %460, i32 noundef %465) #12
  br label %528

466:                                              ; preds = %455, %421, %149, %96
  %467 = load i8, ptr %60, align 2, !range !11
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %469, label %473

469:                                              ; preds = %466
  %470 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 51
  %471 = load i32, ptr %470, align 4
  %472 = add i32 %471, 1
  store i32 %472, ptr %470, align 4
  br label %473

473:                                              ; preds = %469, %466
  %474 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 11
  %475 = load i16, ptr %474, align 8
  %476 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 45
  %477 = load i16, ptr %476, align 4
  %478 = add i16 %477, %475
  store i16 %478, ptr %476, align 4
  br label %489

479:                                              ; preds = %54
  %480 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 15
  %481 = load i16, ptr %480, align 8
  %482 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 11
  %483 = load i16, ptr %482, align 4
  %484 = zext i16 %483 to i32
  %485 = zext i16 %481 to i32
  %486 = sub nsw i32 %484, %485
  %487 = and i32 %486, 8192
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %490

489:                                              ; preds = %479, %473
  tail call fastcc void @dwc2_pick_first_frame(ptr noundef %0, ptr noundef %1) #10
  br label %490

490:                                              ; preds = %489, %479
  %491 = load i8, ptr %55, align 8
  %492 = and i8 %491, -3
  store i8 %492, ptr %55, align 8
  %493 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %494 = load i8, ptr %493, align 1, !range !11
  %495 = icmp eq i8 %494, 0
  %496 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 40
  %497 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 40, i32 1
  %498 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 41
  %499 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 41, i32 1
  %500 = select i1 %495, ptr %497, ptr %499
  %501 = select i1 %495, ptr %496, ptr %498
  %502 = load ptr, ptr %500, align 4
  store ptr %3, ptr %500, align 4
  store ptr %501, ptr %3, align 4
  %503 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25, i32 1
  store ptr %502, ptr %503, align 4
  store volatile ptr %3, ptr %502, align 4
  %504 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 47
  %505 = load i16, ptr %504, align 4
  %506 = icmp eq i16 %505, 0
  br i1 %506, label %507, label %525

507:                                              ; preds = %490
  %508 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %509 = load ptr, ptr %508, align 4
  %510 = getelementptr i8, ptr %509, i32 24
  %511 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %510) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %512 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %513 = load i8, ptr %512, align 8, !range !11
  %514 = icmp eq i8 %513, 0
  %515 = tail call i32 @llvm.bswap.i32(i32 %511) #10
  %516 = select i1 %514, i32 %511, i32 %515
  %517 = or i32 %516, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %514, label %522, label %518

518:                                              ; preds = %507
  %519 = tail call i32 @llvm.bswap.i32(i32 %517) #10
  %520 = load ptr, ptr %508, align 4
  %521 = getelementptr i8, ptr %520, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %521, i32 %519) #10, !srcloc !14
  br label %525

522:                                              ; preds = %507
  %523 = load ptr, ptr %508, align 4
  %524 = getelementptr i8, ptr %523, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %524, i32 %517) #10, !srcloc !14
  br label %525

525:                                              ; preds = %522, %518, %490
  %526 = load i16, ptr %504, align 4
  %527 = add i16 %526, 1
  store i16 %527, ptr %504, align 4
  br label %528

528:                                              ; preds = %525, %463, %437, %423, %421, %416, %197, %194, %141, %138, %86, %42, %26, %18, %2
  %529 = phi i32 [ 0, %525 ], [ 0, %2 ], [ 0, %26 ], [ 0, %18 ], [ -28, %437 ], [ -28, %463 ], [ %147, %141 ], [ -22, %138 ], [ %94, %86 ], [ -28, %421 ], [ -22, %423 ], [ -28, %42 ], [ %203, %197 ], [ -22, %194 ], [ -28, %416 ]
  ret i32 %529
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_writel(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %4 = load i8, ptr %3, align 8, !range !11
  %5 = icmp eq i8 %4, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %1)
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #10, !srcloc !14
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %1) #10, !srcloc !14
  br label %15

15:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_qh_unlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 34
  %5 = load i8, ptr %4, align 8
  %6 = or i8 %5, 16
  store i8 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %64, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  switch i8 %12, label %24 [
    i8 2, label %13
    i8 0, label %13
  ]

13:                                               ; preds = %10, %10
  %14 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 39
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  store ptr %8, ptr %14, align 8
  %18 = load ptr, ptr %7, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ %8, %13 ]
  %21 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  store volatile ptr %20, ptr %22, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %21, align 4
  br label %64

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %26 = load volatile i32, ptr %25, align 4
  store volatile i32 %26, ptr %3, align 4
  %27 = lshr i32 %26, 16
  %28 = and i32 %26, 65535
  %29 = icmp eq i32 %28, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %29, label %30, label %31, !prof !12

30:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/dwc2/hcd_queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1422, 0\0A.popsection", ""() #10, !srcloc !15
  unreachable

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 30
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = add i32 %33, 2
  %35 = tail call i32 @mod_timer(ptr noundef %32, i32 noundef %34) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37, !prof !8

37:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1441, i32 noundef 9, ptr noundef null) #10
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i8, ptr %4, align 8
  %40 = or i8 %39, 2
  store i8 %40, ptr %4, align 8
  %41 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %41, align 4
  %45 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 47
  %46 = load i16, ptr %45, align 4
  %47 = add i16 %46, -1
  store i16 %47, ptr %45, align 4
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 32
  %51 = load i8, ptr %50, align 1, !range !11
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 24
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %58 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %59 = load i8, ptr %58, align 8, !range !11
  %60 = icmp eq i8 %59, 0
  %61 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  %62 = select i1 %60, i32 %57, i32 %61
  %63 = and i32 %62, -9
  tail call fastcc void @dwc2_writel(ptr noundef %0, i32 noundef %63)
  br label %64

64:                                               ; preds = %53, %49, %38, %19, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_qh_deactivate(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 15
  %5 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  switch i8 %6, label %13 [
    i8 2, label %7
    i8 0, label %7
  ]

7:                                                ; preds = %3, %3
  tail call void @dwc2_hcd_qh_unlink(ptr noundef %0, ptr noundef %1)
  %8 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 23
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %124, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @dwc2_hcd_qh_add(ptr noundef %0, ptr noundef %1)
  br label %124

13:                                               ; preds = %3
  %14 = tail call i32 @dwc2_hcd_get_frame_number(ptr noundef %0) #10
  %15 = trunc i32 %14 to i16
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %13
  %18 = load i16, ptr %4, align 8
  %19 = add i16 %15, 16383
  %20 = and i16 %19, 16383
  %21 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 16
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %18, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i8, ptr %5, align 4
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %17
  br label %32

32:                                               ; preds = %31, %27, %24
  %33 = phi i16 [ 1, %31 ], [ 2, %27 ], [ 2, %24 ]
  %34 = add i16 %33, %18
  %35 = and i16 %34, 16383
  store i16 %35, ptr %4, align 8
  %36 = icmp eq i16 %20, %35
  br i1 %36, label %93, label %37

37:                                               ; preds = %32
  %38 = zext i16 %34 to i32
  %39 = zext i16 %19 to i32
  %40 = sub nsw i32 %39, %38
  %41 = and i32 %40, 16383
  %42 = icmp ugt i32 %41, 8190
  br i1 %42, label %93, label %91

43:                                               ; preds = %13
  %44 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 13
  %45 = load i16, ptr %44, align 4
  %46 = add i16 %15, 16383
  %47 = and i16 %46, 16383
  %48 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 16
  %49 = load i16, ptr %48, align 2
  %50 = add i16 %49, %45
  %51 = and i16 %50, 16383
  store i16 %51, ptr %48, align 2
  %52 = zext i16 %45 to i32
  %53 = icmp ugt i16 %45, 4095
  br i1 %53, label %91, label %54

54:                                               ; preds = %43
  %55 = load i16, ptr %4, align 8
  %56 = icmp eq i16 %51, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = icmp eq i16 %47, %51
  br i1 %58, label %91, label %59

59:                                               ; preds = %57
  %60 = zext i16 %50 to i32
  %61 = zext i16 %46 to i32
  %62 = sub nsw i32 %61, %60
  %63 = and i32 %62, 16383
  %64 = icmp ugt i32 %63, 8190
  br i1 %64, label %91, label %65

65:                                               ; preds = %59, %54
  %66 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 8
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %71 = load i8, ptr %70, align 2
  %72 = icmp eq i8 %71, 3
  %73 = select i1 %72, i32 8, i32 1
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i32 [ 8, %65 ], [ %73, %69 ]
  %76 = tail call i32 @gcd(i32 noundef %52, i32 noundef %75) #11
  %77 = trunc i32 %76 to i16
  %78 = zext i16 %46 to i32
  br label %79

79:                                               ; preds = %84, %74
  %80 = phi i16 [ %82, %84 ], [ %51, %74 ]
  %81 = add i16 %80, %77
  %82 = and i16 %81, 16383
  %83 = icmp eq i16 %47, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = zext i16 %81 to i32
  %86 = sub nsw i32 %78, %85
  %87 = and i32 %86, 16383
  %88 = icmp ugt i32 %87, 8190
  br i1 %88, label %89, label %79

89:                                               ; preds = %84, %79
  %90 = phi i16 [ %47, %79 ], [ %82, %84 ]
  store i16 %90, ptr %48, align 2
  br label %91

91:                                               ; preds = %89, %59, %57, %43, %37
  %92 = phi i16 [ %15, %37 ], [ %90, %89 ], [ %47, %57 ], [ %51, %59 ], [ %51, %43 ]
  store i16 %92, ptr %4, align 8
  br label %93

93:                                               ; preds = %91, %37, %32
  %94 = phi i16 [ %35, %37 ], [ %20, %32 ], [ %92, %91 ]
  %95 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 23
  %96 = load volatile ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %95
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  tail call void @dwc2_hcd_qh_unlink(ptr noundef %0, ptr noundef %1)
  br label %124

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 11
  %101 = load i16, ptr %100, align 4
  %102 = zext i16 %101 to i32
  %103 = zext i16 %94 to i32
  %104 = sub nsw i32 %102, %103
  %105 = and i32 %104, 8192
  %106 = icmp eq i32 %105, 0
  %107 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25
  br i1 %106, label %108, label %116

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 41
  %110 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %107, align 4
  %113 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  store ptr %111, ptr %113, align 4
  store volatile ptr %112, ptr %111, align 4
  %114 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 41, i32 1
  %115 = load ptr, ptr %114, align 4
  store ptr %107, ptr %114, align 4
  store ptr %109, ptr %107, align 4
  store ptr %115, ptr %110, align 4
  store volatile ptr %107, ptr %115, align 4
  br label %124

116:                                              ; preds = %99
  %117 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 40
  %118 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 25, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %107, align 4
  %121 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  store ptr %119, ptr %121, align 4
  store volatile ptr %120, ptr %119, align 4
  %122 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 40, i32 1
  %123 = load ptr, ptr %122, align 4
  store ptr %107, ptr %122, align 4
  store ptr %117, ptr %107, align 4
  store ptr %123, ptr %118, align 4
  store volatile ptr %107, ptr %123, align 4
  br label %124

124:                                              ; preds = %116, %108, %98, %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_get_frame_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @dwc2_hcd_qtd_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.dwc2_qtd, ptr %0, i32 0, i32 14
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 13, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dwc2_qtd, ptr %0, i32 0, i32 2
  store i8 2, ptr %8, align 1
  store i32 0, ptr %0, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.dwc2_qtd, ptr %0, i32 0, i32 3
  store i8 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.dwc2_qtd, ptr %0, i32 0, i32 4
  store i8 3, ptr %11, align 1
  %12 = getelementptr inbounds %struct.dwc2_qtd, ptr %0, i32 0, i32 6
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.dwc2_qtd, ptr %0, i32 0, i32 1
  store i8 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %1, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_hcd_qtd_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %7, !prof !12

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dwc2_hcd_qtd_add) #12
  br label %17

7:                                                ; preds = %3
  %8 = tail call i32 @dwc2_hcd_qh_add(ptr noundef %0, ptr noundef nonnull %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.dwc2_qtd, ptr %1, i32 0, i32 15
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dwc2_qtd, ptr %1, i32 0, i32 16
  %13 = getelementptr inbounds %struct.dwc2_qh, ptr %2, i32 0, i32 23
  %14 = getelementptr inbounds %struct.dwc2_qh, ptr %2, i32 0, i32 23, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.dwc2_qtd, ptr %1, i32 0, i32 16, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  br label %17

17:                                               ; preds = %10, %7, %5
  %18 = phi i32 [ 0, %10 ], [ -22, %5 ], [ %8, %7 ]
  ret i32 %18
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_host_get_speed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_unreserve_timer_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -148
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 18
  %5 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  br label %6

6:                                                ; preds = %10, %1
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !16
  %8 = tail call i32 @_raw_spin_trylock(ptr noundef %4) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #10, !srcloc !17
  %11 = load volatile ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %6, label %20

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %0, i32 76
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call fastcc void @dwc2_do_unreserve(ptr noundef %3, ptr noundef %2)
  br label %19

19:                                               ; preds = %18, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %7) #10
  br label %20

20:                                               ; preds = %19, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_wait_timer_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 18
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr i8, ptr %0, i32 56
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = and i8 %7, -9
  store i8 %11, ptr %6, align 8
  %12 = getelementptr i8, ptr %0, i32 -44
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 36
  %14 = getelementptr i8, ptr %0, i32 -40
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %12, ptr %19, align 4
  store ptr %18, ptr %12, align 4
  store ptr %13, ptr %14, align 4
  store volatile ptr %12, ptr %13, align 4
  %20 = tail call i32 @dwc2_hcd_select_transactions(ptr noundef %3) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %3, i32 noundef %20) #10
  br label %23

23:                                               ; preds = %22, %10, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dwc2_host_get_tt_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_calc_bus_time(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_select_transactions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_queue_transactions(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_ls_pmap_unschedule(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_qh, ptr %0, i32 0, i32 12
  %3 = load i16, ptr %2, align 2
  %4 = getelementptr inbounds %struct.dwc2_qh, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !12

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 380, i32 noundef 9, ptr noundef null) #10
  br label %45

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dwc2_tt, ptr %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.dwc2_tt, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_tt, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.dwc2_qh, ptr %0, i32 0, i32 33
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 1
  %19 = add i32 %18, -2
  %20 = getelementptr i32, ptr %9, i32 %19
  br label %21

21:                                               ; preds = %15, %8
  %22 = phi ptr [ %20, %15 ], [ %9, %8 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = zext i16 %3 to i32
  %26 = add nuw nsw i32 %25, 24
  %27 = udiv i32 %26, 25
  %28 = getelementptr inbounds %struct.dwc2_qh, ptr %0, i32 0, i32 14
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.dwc2_qh, ptr %0, i32 0, i32 19
  %32 = load i32, ptr %31, align 8
  %33 = tail call i32 @gcd(i32 noundef %30, i32 noundef 1) #11
  %34 = mul i32 %33, 36
  %35 = add i32 %33, 1
  %36 = icmp ult i32 %35, 3
  %37 = select i1 %36, i32 %33, i32 0
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %39, %24
  %40 = phi i32 [ %43, %39 ], [ 0, %24 ]
  %41 = mul i32 %34, %40
  %42 = add i32 %41, %32
  tail call void @__bitmap_clear(ptr noundef nonnull %22, i32 noundef %42, i32 noundef %27) #10
  %43 = add nuw nsw i32 %40, 1
  %44 = icmp eq i32 %43, %37
  br i1 %44, label %45, label %39

45:                                               ; preds = %39, %24, %21, %7
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_pick_first_frame(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @dwc2_hcd_get_frame_number(ptr noundef %0) #10
  %4 = trunc i32 %3 to i16
  %5 = add i16 %4, 1
  %6 = and i16 %5, 16383
  %7 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 3, i32 13
  %8 = load i8, ptr %7, align 2, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 8
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  %14 = or i16 %6, 7
  %15 = select i1 %13, i16 %6, i16 %14
  br label %68

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 5
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 3
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 8
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 17
  %26 = load i16, ptr %25, align 4
  %27 = icmp slt i16 %26, 1
  br i1 %27, label %28, label %29, !prof !12

28:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1126, i32 noundef 9, ptr noundef null) #10
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 18
  br label %33

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 19
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %32, %31 ], [ %30, %29 ]
  %35 = phi i32 [ 36, %31 ], [ 100, %29 ]
  %36 = phi i32 [ 1, %31 ], [ 8, %29 ]
  %37 = load i32, ptr %34, align 8
  %38 = udiv i32 %37, %35
  %39 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 13
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = tail call i32 @gcd(i32 noundef %41, i32 noundef %36) #11
  %43 = trunc i32 %38 to i16
  %44 = trunc i32 %42 to i16
  %45 = and i32 %38, 65535
  %46 = and i32 %42, 65535
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %49, label %48, !prof !8

48:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1148, i32 noundef 9, ptr noundef null) #10
  br label %49

49:                                               ; preds = %48, %33
  %50 = zext i16 %5 to i32
  %51 = urem i16 %6, %44
  %52 = add i16 %4, 16384
  %53 = add i16 %52, %43
  %54 = sub i16 %53, %51
  %55 = and i16 %54, 16383
  %56 = icmp eq i16 %6, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %64, %49
  %58 = phi i16 [ %66, %64 ], [ %55, %49 ]
  %59 = phi i16 [ %65, %64 ], [ %54, %49 ]
  %60 = zext i16 %59 to i32
  %61 = sub nsw i32 %50, %60
  %62 = and i32 %61, 16383
  %63 = icmp ugt i32 %62, 8190
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = add i16 %58, %44
  %66 = and i16 %65, 16383
  %67 = icmp eq i16 %6, %66
  br i1 %67, label %68, label %57

68:                                               ; preds = %64, %57, %49, %10
  %69 = phi i16 [ %15, %10 ], [ %6, %49 ], [ %58, %57 ], [ %6, %64 ]
  %70 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 15
  store i16 %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.dwc2_qh, ptr %1, i32 0, i32 16
  store i16 %69, ptr %71, align 2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pmap_schedule(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 {
  %8 = icmp sgt i32 %3, %1
  br i1 %8, label %71, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @gcd(i32 noundef %4, i32 noundef %2) #11
  %11 = mul i32 %10, %1
  %12 = sdiv i32 %2, %10
  %13 = icmp sgt i32 %11, %5
  br i1 %13, label %14, label %71

14:                                               ; preds = %9
  br i1 %6, label %15, label %19

15:                                               ; preds = %14
  %16 = sdiv i32 %5, %1
  %17 = add i32 %16, 1
  %18 = mul i32 %17, %1
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i32 [ %18, %15 ], [ %11, %14 ]
  %21 = icmp sgt i32 %12, 1
  %22 = add i32 %5, %3
  %23 = icmp sgt i32 %22, %20
  br i1 %23, label %59, label %24

24:                                               ; preds = %52, %19
  %25 = phi i32 [ %53, %52 ], [ %5, %19 ]
  %26 = sdiv i32 %25, %1
  %27 = add i32 %26, 1
  %28 = mul i32 %27, %1
  %29 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %0, i32 noundef %28, i32 noundef %25, i32 noundef %3, i32 noundef 0, i32 noundef 0) #10
  %30 = icmp slt i32 %29, %28
  br i1 %30, label %31, label %52

31:                                               ; preds = %24
  br i1 %21, label %32, label %48

32:                                               ; preds = %45, %31
  %33 = phi i32 [ %46, %45 ], [ 1, %31 ]
  %34 = mul i32 %33, %11
  %35 = add i32 %34, %29
  %36 = add i32 %35, %3
  %37 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %0, i32 noundef %36, i32 noundef %35, i32 noundef %3, i32 noundef 0, i32 noundef 0) #10
  %38 = icmp eq i32 %37, %35
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = add i32 %34, %28
  %41 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %0, i32 noundef %40, i32 noundef %35, i32 noundef %3, i32 noundef 0, i32 noundef 0) #10
  %42 = icmp slt i32 %41, %40
  %43 = sub i32 %41, %34
  %44 = select i1 %42, i32 %43, i32 %28
  br label %48

45:                                               ; preds = %32
  %46 = add nuw nsw i32 %33, 1
  %47 = icmp eq i32 %46, %12
  br i1 %47, label %56, label %32

48:                                               ; preds = %39, %31
  %49 = phi i32 [ %33, %39 ], [ 1, %31 ]
  %50 = phi i32 [ %44, %39 ], [ %29, %31 ]
  %51 = icmp eq i32 %49, %12
  br i1 %51, label %56, label %52

52:                                               ; preds = %48, %24
  %53 = phi i32 [ %28, %24 ], [ %50, %48 ]
  %54 = add i32 %53, %3
  %55 = icmp sgt i32 %54, %20
  br i1 %55, label %59, label %24

56:                                               ; preds = %48, %45
  %57 = phi i32 [ %29, %45 ], [ %50, %48 ]
  %58 = add i32 %57, %3
  br label %59

59:                                               ; preds = %56, %52, %19
  %60 = phi i32 [ %58, %56 ], [ %22, %19 ], [ %54, %52 ]
  %61 = phi i32 [ %57, %56 ], [ %5, %19 ], [ %53, %52 ]
  %62 = icmp sgt i32 %60, %20
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = icmp sgt i32 %12, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %65, %63
  %66 = phi i32 [ %69, %65 ], [ 0, %63 ]
  %67 = mul i32 %66, %11
  %68 = add i32 %67, %61
  tail call void @__bitmap_set(ptr noundef %0, i32 noundef %68, i32 noundef %3) #10
  %69 = add nuw nsw i32 %66, 1
  %70 = icmp eq i32 %69, %12
  br i1 %70, label %71, label %65

71:                                               ; preds = %65, %63, %59, %9, %7
  %72 = phi i32 [ -28, %7 ], [ -28, %9 ], [ -28, %59 ], [ %61, %63 ], [ %61, %65 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { cold nounwind }

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
!9 = !{i64 3523614}
!10 = !{i64 2154506374}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2154570045, i64 2154570539, i64 2154570082, i64 2154570138, i64 2154570172, i64 2154570196, i64 2154570237, i64 2154570258, i64 2154570286, i64 2154570320}
!14 = !{i64 3523196}
!15 = !{i64 2154576916, i64 2154577410, i64 2154576953, i64 2154577009, i64 2154577043, i64 2154577067, i64 2154577108, i64 2154577129, i64 2154577157, i64 2154577191}
!16 = !{i64 370229, i64 370290}
!17 = !{i64 373246}
