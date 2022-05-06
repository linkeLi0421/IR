; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_pp.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_pp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon }
%union.anon = type { %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lima_sched_task = type { %struct.drm_sched_job, ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.67, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.67 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.drm_lima_m450_pp_frame = type { [23 x i32], i32, [36 x i32], i32, i32, %union.anon.68, [8 x i32] }
%union.anon.68 = type { [8 x i32] }
%struct.drm_lima_m400_pp_frame = type { [23 x i32], i32, [36 x i32], [4 x i32], [4 x i32] }

@.str = private unnamed_addr constant [27 x i8] c"pp %s fail to request irq\0A\00", align 1
@lima_pp_task_slab = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"lima_pp_task\00", align 1
@lima_pp_task_slab_refcnt = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"pp %s reset time out\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mali200\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mali300\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mali400\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mali450\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%s - %s version major %d minor %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"pp error irq state=%x status=%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"pp task error %d int_state=%x status=%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"pp hard reset timeout\0A\00", align 1
@switch.table.lima_pp_init = private unnamed_addr constant [8 x ptr] [ptr @.str.3, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.5, ptr @.str.4, ptr @.str.6], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_pp_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @lima_pp_hw_init(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lima_pp_hw_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 5
  store i8 0, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %3 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 8191) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 128) #7, !srcloc !9
  store i8 1, ptr %2, align 4
  %10 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 24
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr %struct.lima_device, ptr %14, i32 0, i32 12, i32 1, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.lima_sched_task, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %22, %13
  %23 = phi i32 [ %28, %22 ], [ 0, %13 ]
  %24 = phi i32 [ %29, %22 ], [ 0, %13 ]
  %25 = getelementptr %struct.lima_device, ptr %14, i32 0, i32 12, i32 1, i32 11, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = tail call fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef %26) #7
  %28 = or i32 %27, %23
  %29 = add nuw i32 %24, 1
  %30 = load i32, ptr %19, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %22, label %34

32:                                               ; preds = %1
  %33 = tail call fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef %0) #7
  br label %34

34:                                               ; preds = %32, %22, %13
  %35 = phi i32 [ %33, %32 ], [ 0, %13 ], [ %28, %22 ]
  store i8 0, ptr %2, align 4
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lima_pp_suspend(ptr nocapture noundef %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_pp_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4096
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %7 = lshr i32 %6, 16
  %8 = add nsw i32 %7, -51207
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 24) #7
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds [8 x ptr], ptr @switch.table.lima_pp_init, i32 0, i32 %9
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi ptr [ %13, %11 ], [ @.str.7, %1 ]
  %16 = and i32 %6, 255
  %17 = lshr i32 %6, 8
  %18 = and i32 %17, 255
  %19 = load ptr, ptr %0, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = tail call ptr @lima_ip_name(ptr noundef %0) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.8, ptr noundef %21, ptr noundef nonnull %15, i32 noundef %18, i32 noundef %16) #8
  %22 = tail call fastcc i32 @lima_pp_hw_init(ptr noundef %0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %14
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = tail call ptr @lima_ip_name(ptr noundef %0) #7
  %29 = tail call i32 @devm_request_threaded_irq(ptr noundef %25, i32 noundef %27, ptr noundef nonnull @lima_pp_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %28, ptr noundef %0) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %2, align 8
  %33 = tail call ptr @lima_ip_name(ptr noundef %0) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str, ptr noundef %33) #8
  br label %39

34:                                               ; preds = %24
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 4096
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %38 = getelementptr inbounds %struct.lima_device, ptr %2, i32 0, i32 4
  store i32 %37, ptr %38, align 8
  br label %39

39:                                               ; preds = %34, %31, %14
  %40 = phi i32 [ %29, %31 ], [ 0, %34 ], [ %22, %14 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_pp_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr %struct.lima_device, ptr %3, i32 0, i32 12, i32 1
  %5 = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4140
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = and i32 %8, 3864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %1, align 4
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 4104
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %18 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.9, i32 noundef %8, i32 noundef %17) #8
  %19 = getelementptr %struct.lima_device, ptr %14, i32 0, i32 12, i32 1, i32 16
  store i8 1, ptr %19, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #7, !srcloc !9
  br label %22

22:                                               ; preds = %13, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %8) #7, !srcloc !9
  %25 = getelementptr %struct.lima_device, ptr %3, i32 0, i32 12, i32 1, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #7, !srcloc !20
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #7, !srcloc !21
  %27 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  tail call void @lima_sched_pipe_task_done(ptr noundef %4) #7
  br label %30

30:                                               ; preds = %29, %22, %2
  %31 = phi i32 [ 0, %2 ], [ 1, %29 ], [ 1, %22 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_ip_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lima_pp_fini(ptr nocapture noundef %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @lima_pp_bcast_resume(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 5
  store i8 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lima_pp_bcast_suspend(ptr nocapture noundef %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_pp_bcast_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @lima_ip_name(ptr noundef %0) #7
  %7 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %5, ptr noundef nonnull @lima_pp_bcast_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %6, ptr noundef %0) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = tail call ptr @lima_ip_name(ptr noundef %0) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %11) #8
  br label %12

12:                                               ; preds = %9, %1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_pp_bcast_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr %struct.lima_device, ptr %3, i32 0, i32 12, i32 1
  %5 = getelementptr %struct.lima_device, ptr %3, i32 0, i32 12, i32 1, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.lima_sched_task, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %66, label %14

14:                                               ; preds = %8
  %15 = getelementptr %struct.lima_device, ptr %3, i32 0, i32 12, i32 1, i32 15
  %16 = getelementptr %struct.lima_device, ptr %3, i32 0, i32 12, i32 1, i32 17
  br label %17

17:                                               ; preds = %61, %14
  %18 = phi i32 [ 0, %14 ], [ %63, %61 ]
  %19 = phi i32 [ 0, %14 ], [ %62, %61 ]
  %20 = getelementptr %struct.lima_device, ptr %3, i32 0, i32 12, i32 1, i32 11, i32 %18
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %15, align 8
  %23 = shl nuw i32 1, %18
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.lima_ip, ptr %21, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 4104
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %31 = load ptr, ptr %27, align 4
  %32 = getelementptr i8, ptr %31, i32 4140
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %26
  %36 = and i32 %33, 3864
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %21, align 4
  %40 = load ptr, ptr %27, align 4
  %41 = getelementptr i8, ptr %40, i32 4104
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %43 = load ptr, ptr %39, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.9, i32 noundef %33, i32 noundef %42) #8
  %44 = getelementptr %struct.lima_device, ptr %39, i32 0, i32 12, i32 1, i32 16
  store i8 1, ptr %44, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %45 = load ptr, ptr %27, align 4
  %46 = getelementptr i8, ptr %45, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #7, !srcloc !9
  br label %47

47:                                               ; preds = %38, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %48 = load ptr, ptr %27, align 4
  %49 = getelementptr i8, ptr %48, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %33) #7, !srcloc !9
  br label %53

50:                                               ; preds = %26
  %51 = and i32 %30, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %50, %47
  %54 = phi i32 [ 1, %47 ], [ %19, %50 ]
  %55 = load i32, ptr %15, align 8
  %56 = or i32 %55, %23
  store i32 %56, ptr %15, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #7, !srcloc !20
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #7, !srcloc !21
  %58 = extractvalue { i32, i32 } %57, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  tail call void @lima_sched_pipe_task_done(ptr noundef %4) #7
  br label %61

61:                                               ; preds = %60, %53, %50, %17
  %62 = phi i32 [ %19, %17 ], [ %19, %50 ], [ %54, %60 ], [ %54, %53 ]
  %63 = add nuw i32 %18, 1
  %64 = load i32, ptr %11, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %17, label %66

66:                                               ; preds = %61, %8, %2
  %67 = phi i32 [ 0, %2 ], [ 0, %8 ], [ %62, %61 ]
  ret i32 %67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lima_pp_bcast_fini(ptr nocapture noundef %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_pp_pipe_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 272, i32 312
  %6 = load ptr, ptr @lima_pp_task_slab, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = add nuw nsw i32 %5, 120
  %10 = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef 0, i32 noundef 8192, i32 noundef 120, i32 noundef %5, ptr noundef null) #7
  store ptr %10, ptr @lima_pp_task_slab, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %10, %8 ], [ %6, %1 ]
  %14 = load i32, ptr @lima_pp_task_slab_refcnt, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr @lima_pp_task_slab_refcnt, align 4
  %16 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 18
  store i32 %5, ptr %16, align 4
  %17 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 19
  store ptr %13, ptr %17, align 8
  %18 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 20
  store ptr @lima_pp_task_validate, ptr %18, align 4
  %19 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 21
  store ptr @lima_pp_task_run, ptr %19, align 8
  %20 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 22
  store ptr @lima_pp_task_fini, ptr %20, align 4
  %21 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 23
  store ptr @lima_pp_task_error, ptr %21, align 8
  %22 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 24
  store ptr @lima_pp_task_mmu_error, ptr %22, align 4
  br label %23

23:                                               ; preds = %12, %8
  %24 = phi i32 [ 0, %12 ], [ -12, %8 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @lima_pp_task_validate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.lima_sched_task, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %7, i32 0, i32 1
  %10 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %7, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %24

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, ptr %7, i32 0, i32 1
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %9, %8 ], [ %14, %13 ]
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 12
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %17, %21
  %23 = select i1 %22, i32 -22, i32 0
  br label %24

24:                                               ; preds = %19, %15, %8
  %25 = phi i32 [ -22, %8 ], [ -22, %15 ], [ %23, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_pp_task_run(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.lima_sched_task, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %80, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 15
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 17
  %12 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  store volatile i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %7, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %8
  %18 = load i32, ptr %12, align 4
  tail call void @lima_dlbu_enable(ptr noundef %9, i32 noundef %18) #7
  store i32 -1048576, ptr %7, align 4
  %19 = getelementptr %struct.lima_device, ptr %9, i32 0, i32 11, i32 22
  %20 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %7, i32 0, i32 5
  tail call void @lima_dlbu_set_reg(ptr noundef %19, ptr noundef %20) #7
  br label %22

21:                                               ; preds = %8
  tail call void @lima_dlbu_disable(ptr noundef %9) #7
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, ptr %12, align 4
  tail call void @lima_bcast_enable(ptr noundef %9, i32 noundef %23) #7
  %24 = getelementptr inbounds %struct.lima_ip, ptr %4, i32 0, i32 5
  %25 = load i8, ptr %24, align 4, !range !25
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.lima_ip, ptr %4, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 24
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr %struct.lima_device, ptr %32, i32 0, i32 12, i32 1, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.lima_sched_task, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %40, %31
  %41 = phi i32 [ %45, %40 ], [ 0, %31 ]
  %42 = getelementptr %struct.lima_device, ptr %32, i32 0, i32 12, i32 1, i32 11, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = tail call fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef %43) #7
  %45 = add nuw i32 %41, 1
  %46 = load i32, ptr %37, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %40, label %50

48:                                               ; preds = %27
  %49 = tail call fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef nonnull %4) #7
  br label %50

50:                                               ; preds = %48, %40, %31
  store i8 0, ptr %24, align 4
  br label %51

51:                                               ; preds = %50, %22
  %52 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %7, i32 0, i32 2
  tail call fastcc void @lima_pp_write_frame(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %52)
  %53 = load i32, ptr %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %7, i32 0, i32 5
  br label %57

57:                                               ; preds = %72, %55
  %58 = phi i32 [ 0, %55 ], [ %73, %72 ]
  %59 = getelementptr %struct.lima_sched_pipe, ptr %0, i32 0, i32 11, i32 %58
  %60 = load ptr, ptr %59, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %61 = getelementptr %struct.drm_lima_m450_pp_frame, ptr %7, i32 0, i32 6, i32 %58
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.lima_ip, ptr %60, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %62) #7, !srcloc !9
  %66 = load i32, ptr %14, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %69 = getelementptr [8 x i32], ptr %56, i32 0, i32 %58
  %70 = load i32, ptr %69, align 4
  %71 = load ptr, ptr %63, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %70) #7, !srcloc !9
  br label %72

72:                                               ; preds = %68, %57
  %73 = add nuw i32 %58, 1
  %74 = load i32, ptr %12, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %57, label %76

76:                                               ; preds = %72, %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %77 = getelementptr inbounds %struct.lima_ip, ptr %4, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 64) #7, !srcloc !9
  br label %131

80:                                               ; preds = %2
  %81 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 17
  %82 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, ptr %7, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  store volatile i32 %83, ptr %81, align 4
  %84 = load i32, ptr %82, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %131, label %86

86:                                               ; preds = %80
  %87 = getelementptr [23 x i32], ptr %7, i32 0, i32 12
  %88 = getelementptr inbounds %struct.drm_lima_m400_pp_frame, ptr %7, i32 0, i32 2
  br label %89

89:                                               ; preds = %124, %86
  %90 = phi i32 [ 0, %86 ], [ %128, %124 ]
  %91 = getelementptr %struct.lima_sched_pipe, ptr %0, i32 0, i32 11, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr %struct.drm_lima_m400_pp_frame, ptr %7, i32 0, i32 3, i32 %90
  %94 = load i32, ptr %93, align 4
  store i32 %94, ptr %7, align 4
  %95 = getelementptr %struct.drm_lima_m400_pp_frame, ptr %7, i32 0, i32 4, i32 %90
  %96 = load i32, ptr %95, align 4
  store i32 %96, ptr %87, align 4
  %97 = getelementptr inbounds %struct.lima_ip, ptr %92, i32 0, i32 5
  %98 = load i8, ptr %97, align 4, !range !25
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %89
  %101 = getelementptr inbounds %struct.lima_ip, ptr %92, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 24
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load ptr, ptr %92, align 4
  %106 = getelementptr %struct.lima_device, ptr %105, i32 0, i32 12, i32 1, i32 5
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.lima_sched_task, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.drm_lima_m450_pp_frame, ptr %109, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %113, %104
  %114 = phi i32 [ %118, %113 ], [ 0, %104 ]
  %115 = getelementptr %struct.lima_device, ptr %105, i32 0, i32 12, i32 1, i32 11, i32 %114
  %116 = load ptr, ptr %115, align 4
  %117 = tail call fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef %116) #7
  %118 = add nuw i32 %114, 1
  %119 = load i32, ptr %110, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %113, label %123

121:                                              ; preds = %100
  %122 = tail call fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef %92) #7
  br label %123

123:                                              ; preds = %121, %113, %104
  store i8 0, ptr %97, align 4
  br label %124

124:                                              ; preds = %123, %89
  tail call fastcc void @lima_pp_write_frame(ptr noundef %92, ptr noundef %7, ptr noundef %88)
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %125 = getelementptr inbounds %struct.lima_ip, ptr %92, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i8, ptr %126, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 64) #7, !srcloc !9
  %128 = add nuw i32 %90, 1
  %129 = load i32, ptr %82, align 4
  %130 = icmp ult i32 %128, %129
  br i1 %130, label %89, label %131

131:                                              ; preds = %124, %80, %76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_pp_task_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %21, label %42

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.lima_ip, ptr %3, i32 0, i32 5
  %11 = load i8, ptr %10, align 4, !range !25
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %14 = getelementptr inbounds %struct.lima_ip, ptr %3, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr i8, ptr %17, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 8191) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr i8, ptr %19, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 128) #7, !srcloc !9
  store i8 1, ptr %10, align 4
  br label %42

21:                                               ; preds = %38, %5
  %22 = phi i32 [ %39, %38 ], [ %7, %5 ]
  %23 = phi i32 [ %40, %38 ], [ 0, %5 ]
  %24 = getelementptr %struct.lima_sched_pipe, ptr %0, i32 0, i32 11, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.lima_ip, ptr %25, i32 0, i32 5
  %27 = load i8, ptr %26, align 4, !range !25
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %30 = getelementptr inbounds %struct.lima_ip, ptr %25, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr i8, ptr %33, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 8191) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %35 = load ptr, ptr %30, align 4
  %36 = getelementptr i8, ptr %35, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 128) #7, !srcloc !9
  store i8 1, ptr %26, align 4
  %37 = load i32, ptr %6, align 4
  br label %38

38:                                               ; preds = %29, %21
  %39 = phi i32 [ %22, %21 ], [ %37, %29 ]
  %40 = add nuw nsw i32 %23, 1
  %41 = icmp slt i32 %40, %39
  br i1 %41, label %21, label %42

42:                                               ; preds = %38, %13, %9, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_pp_task_error(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 12
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %56

5:                                                ; preds = %52, %1
  %6 = phi i32 [ %53, %52 ], [ 0, %1 ]
  %7 = getelementptr %struct.lima_sched_pipe, ptr %0, i32 0, i32 11, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.lima_ip, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4140
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr i8, ptr %15, i32 4104
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef %6, i32 noundef %14, i32 noundef %17) #8
  %18 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr i8, ptr %19, i32 4232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -1056972800) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !33
  tail call void @arm_heavy_mb() #7
  %21 = load ptr, ptr %11, align 4
  %22 = getelementptr i8, ptr %21, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr i8, ptr %23, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 32) #7, !srcloc !9
  %25 = tail call i64 @ktime_get() #7
  %26 = add i64 %25, 100000
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr i8, ptr %27, i32 4232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -1072037888) #7, !srcloc !9
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr i8, ptr %29, i32 4232
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !36
  %32 = icmp eq i32 %31, -1072037888
  br i1 %32, label %45, label %33

33:                                               ; preds = %36, %5
  %34 = tail call i64 @ktime_get() #7
  %35 = icmp sgt i64 %34, %26
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %37 = load ptr, ptr %11, align 4
  %38 = getelementptr i8, ptr %37, i32 4232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 -1072037888) #7, !srcloc !9
  %39 = load ptr, ptr %11, align 4
  %40 = getelementptr i8, ptr %39, i32 4232
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !36
  %42 = icmp eq i32 %41, -1072037888
  br i1 %42, label %45, label %33

43:                                               ; preds = %33
  %44 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.11) #8
  br label %52

45:                                               ; preds = %36, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %46 = load ptr, ptr %11, align 4
  %47 = getelementptr i8, ptr %46, i32 4232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %48 = load ptr, ptr %11, align 4
  %49 = getelementptr i8, ptr %48, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 8191) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %50 = load ptr, ptr %11, align 4
  %51 = getelementptr i8, ptr %50, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 3865) #7, !srcloc !9
  br label %52

52:                                               ; preds = %45, %43
  %53 = add nuw nsw i32 %6, 1
  %54 = load i32, ptr %2, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %5, label %56

56:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_pp_task_mmu_error(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #7, !srcloc !20
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #7, !srcloc !21
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @lima_sched_pipe_task_done(ptr noundef %0) #7
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_pp_pipe_fini(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @lima_pp_task_slab_refcnt, align 4
  %3 = add i32 %2, -1
  store i32 %3, ptr @lima_pp_task_slab_refcnt, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr @lima_pp_task_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #7
  store ptr null, ptr @lima_pp_task_slab, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lima_pp_soft_reset_async_wait_one(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i64 @ktime_get() #7
  %4 = add i64 %3, 100000
  %5 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4104
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !40
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 4128
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !41
  %15 = icmp eq i32 %14, 4096
  br i1 %15, label %38, label %16

16:                                               ; preds = %11, %1
  br label %17

17:                                               ; preds = %32, %16
  %18 = tail call i64 @ktime_get() #7
  %19 = icmp sgt i64 %18, %4
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 4104
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !40
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr i8, ptr %27, i32 4128
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !41
  %30 = icmp eq i32 %29, 4096
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i32 [ 0, %20 ], [ %31, %26 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %17, label %38

35:                                               ; preds = %17
  %36 = load ptr, ptr %2, align 8
  %37 = tail call ptr @lima_ip_name(ptr noundef %0) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.2, ptr noundef %37) #8
  br label %43

38:                                               ; preds = %32, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr i8, ptr %39, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 8191) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr i8, ptr %41, i32 4136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 3865) #7, !srcloc !9
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i32 [ -110, %35 ], [ 0, %38 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_sched_pipe_task_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_dlbu_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_dlbu_set_reg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_dlbu_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_bcast_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lima_pp_write_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ 0, %3 ], [ %12, %5 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  %7 = getelementptr i32, ptr %1, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = shl i32 %6, 2
  %11 = getelementptr i8, ptr %9, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #7, !srcloc !9
  %12 = add nuw nsw i32 %6, 1
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %14, label %5

14:                                               ; preds = %14, %5
  %15 = phi i32 [ %84, %14 ], [ 0, %5 ]
  %16 = phi i32 [ %90, %14 ], [ 0, %5 ]
  %17 = shl i32 %16, 8
  %18 = add nuw nsw i32 %17, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %19 = or i32 %15, 1
  %20 = getelementptr i32, ptr %2, i32 %15
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %24 = or i32 %15, 2
  %25 = getelementptr i32, ptr %2, i32 %19
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  %29 = getelementptr i8, ptr %28, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %30 = or i32 %15, 3
  %31 = getelementptr i32, ptr %2, i32 %24
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  %35 = getelementptr i8, ptr %34, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %32) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %36 = add nuw nsw i32 %15, 4
  %37 = getelementptr i32, ptr %2, i32 %30
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr i8, ptr %39, i32 12
  %41 = getelementptr i8, ptr %40, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %42 = add nuw nsw i32 %15, 5
  %43 = getelementptr i32, ptr %2, i32 %36
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 16
  %47 = getelementptr i8, ptr %46, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %44) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %48 = add nuw nsw i32 %15, 6
  %49 = getelementptr i32, ptr %2, i32 %42
  %50 = load i32, ptr %49, align 4
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr i8, ptr %51, i32 20
  %53 = getelementptr i8, ptr %52, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %50) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %54 = add nuw nsw i32 %15, 7
  %55 = getelementptr i32, ptr %2, i32 %48
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i8, ptr %57, i32 24
  %59 = getelementptr i8, ptr %58, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %56) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %60 = add nuw nsw i32 %15, 8
  %61 = getelementptr i32, ptr %2, i32 %54
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr i8, ptr %63, i32 28
  %65 = getelementptr i8, ptr %64, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %62) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %66 = add nuw nsw i32 %15, 9
  %67 = getelementptr i32, ptr %2, i32 %60
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i8, ptr %69, i32 32
  %71 = getelementptr i8, ptr %70, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %68) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %72 = add nuw nsw i32 %15, 10
  %73 = getelementptr i32, ptr %2, i32 %66
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr i8, ptr %75, i32 36
  %77 = getelementptr i8, ptr %76, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %74) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %78 = add nuw nsw i32 %15, 11
  %79 = getelementptr i32, ptr %2, i32 %72
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %4, align 4
  %82 = getelementptr i8, ptr %81, i32 40
  %83 = getelementptr i8, ptr %82, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %80) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !45
  tail call void @arm_heavy_mb() #7
  %84 = add nuw nsw i32 %15, 12
  %85 = getelementptr i32, ptr %2, i32 %78
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %4, align 4
  %88 = getelementptr i8, ptr %87, i32 44
  %89 = getelementptr i8, ptr %88, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %86) #7, !srcloc !9
  %90 = add nuw nsw i32 %16, 1
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %92, label %14

92:                                               ; preds = %14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2152682679}
!9 = !{i64 3058235}
!10 = !{i64 2152685443}
!11 = !{i64 2152686719}
!12 = !{i64 3058653}
!13 = !{i64 2152703906}
!14 = !{i64 2152705582}
!15 = !{i64 2152681619}
!16 = !{i64 2152679891}
!17 = !{i64 2152680747}
!18 = !{i64 2152681111}
!19 = !{i64 2148047269}
!20 = !{i64 444431, i64 2147934402, i64 2147934428, i64 2147934475, i64 2147934497, i64 2147934525, i64 2147934545}
!21 = !{i64 2147949655, i64 2147949687, i64 2147949716, i64 2147949750, i64 2147949781, i64 2147949804}
!22 = !{i64 2148047472}
!23 = !{i64 2152681993}
!24 = !{i64 2152682367}
!25 = !{i8 0, i8 2}
!26 = !{i64 2152706531}
!27 = !{i64 2152707003}
!28 = !{i64 2152707547}
!29 = !{i64 2152708103}
!30 = !{i64 2152709421}
!31 = !{i64 2152709795}
!32 = !{i64 2152695869}
!33 = !{i64 2152696243}
!34 = !{i64 2152696733}
!35 = !{i64 2152695103}
!36 = !{i64 2152695621}
!37 = !{i64 2152697679}
!38 = !{i64 2152700443}
!39 = !{i64 2152702974}
!40 = !{i64 2152687271}
!41 = !{i64 2152687727}
!42 = !{i64 2152691015}
!43 = !{i64 2152693546}
!44 = !{i64 2152694313}
!45 = !{i64 2152694696}
