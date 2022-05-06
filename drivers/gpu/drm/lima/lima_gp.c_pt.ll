; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_gp.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_gp.c"
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
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.70, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.70 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lima_bo = type { %struct.drm_gem_shmem_object, %struct.mutex, %struct.list_head, i32 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"gp %s fail to request irq\0A\00", align 1
@lima_gp_task_slab = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"lima_gp_task\00", align 1
@lima_gp_task_slab_refcnt = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"gp soft reset time out\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mali200\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mali300\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mali400\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mali450\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"%s - %s version major %d minor %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"gp error irq state=%x status=%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"gp task error int_state=%x status=%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"gp hard reset timeout\0A\00", align 1
@switch.table.lima_gp_init = private unnamed_addr constant [4 x ptr] [ptr @.str.3, ptr @.str.5, ptr @.str.4, ptr @.str.6], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_gp_resume(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 5
  store i8 0, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %3 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 524288) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1024) #6, !srcloc !9
  store i8 1, ptr %2, align 4
  %10 = tail call fastcc i32 @lima_gp_soft_reset_async_wait(ptr noundef %0) #6
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lima_gp_suspend(ptr nocapture noundef %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_gp_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 108
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %7 = lshr i32 %6, 16
  %8 = add nsw i32 %7, -2567
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 24) #6
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds [4 x ptr], ptr @switch.table.lima_gp_init, i32 0, i32 %9
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi ptr [ %13, %11 ], [ @.str.7, %1 ]
  %16 = and i32 %6, 255
  %17 = lshr i32 %6, 8
  %18 = and i32 %17, 255
  %19 = load ptr, ptr %0, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = tail call ptr @lima_ip_name(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.8, ptr noundef %21, ptr noundef nonnull %15, i32 noundef %18, i32 noundef %16) #7
  %22 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 5
  store i8 0, ptr %22, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 524288) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1024) #6, !srcloc !9
  store i8 1, ptr %22, align 4
  %29 = tail call fastcc i32 @lima_gp_soft_reset_async_wait(ptr noundef %0) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %14
  %32 = load ptr, ptr %2, align 8
  %33 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = tail call ptr @lima_ip_name(ptr noundef %0) #6
  %36 = tail call i32 @devm_request_threaded_irq(ptr noundef %32, i32 noundef %34, ptr noundef nonnull @lima_gp_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %35, ptr noundef %0) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %2, align 8
  %40 = tail call ptr @lima_ip_name(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str, ptr noundef %40) #7
  br label %46

41:                                               ; preds = %31
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr i8, ptr %42, i32 108
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %45 = getelementptr inbounds %struct.lima_device, ptr %2, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %41, %38, %14
  %47 = phi i32 [ %36, %38 ], [ 0, %41 ], [ %29, %14 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_gp_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 12
  %5 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 12, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 104
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %2
  %16 = and i32 %10, 7368260
  switch i32 %16, label %17 [
    i32 0, label %28
    i32 4, label %22
  ]

17:                                               ; preds = %15
  %18 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.9, i32 noundef %10, i32 noundef %13) #7
  %19 = icmp eq ptr %6, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.lima_sched_task, ptr %6, i32 0, i32 5
  store i8 0, ptr %21, align 8
  br label %22

22:                                               ; preds = %20, %17, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr i8, ptr %23, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #6, !srcloc !9
  %25 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 12, i32 0, i32 16
  store i8 1, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr i8, ptr %26, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %10) #6, !srcloc !9
  br label %37

28:                                               ; preds = %15
  %29 = and i32 %10, 3
  %30 = icmp ne i32 %29, 0
  %31 = and i32 %13, 10
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  %34 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 12, i32 0, i32 16
  store i8 0, ptr %34, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %35 = load ptr, ptr %7, align 4
  %36 = getelementptr i8, ptr %35, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %10) #6, !srcloc !9
  br i1 %33, label %37, label %38

37:                                               ; preds = %28, %22
  tail call void @lima_sched_pipe_task_done(ptr noundef %4) #6
  br label %38

38:                                               ; preds = %37, %28, %2
  %39 = phi i32 [ 0, %2 ], [ 1, %37 ], [ 1, %28 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_ip_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lima_gp_fini(ptr nocapture noundef %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_gp_pipe_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @lima_gp_task_slab, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 0, i32 noundef 8192, i32 noundef 120, i32 noundef 24, ptr noundef null) #6
  store ptr %5, ptr @lima_gp_task_slab, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = load i32, ptr @lima_gp_task_slab_refcnt, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr @lima_gp_task_slab_refcnt, align 4
  %11 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 18
  store i32 24, ptr %11, align 4
  %12 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 19
  store ptr %8, ptr %12, align 8
  %13 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 20
  store ptr @lima_gp_task_validate, ptr %13, align 4
  %14 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 21
  store ptr @lima_gp_task_run, ptr %14, align 8
  %15 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 22
  store ptr @lima_gp_task_fini, ptr %15, align 4
  %16 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 23
  store ptr @lima_gp_task_error, ptr %16, align 8
  %17 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 24
  store ptr @lima_gp_task_mmu_error, ptr %17, align 4
  %18 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 12, i32 0, i32 25
  store ptr @lima_gp_task_recover, ptr %18, align 8
  br label %19

19:                                               ; preds = %7, %4
  %20 = phi i32 [ 0, %7 ], [ -12, %4 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @lima_gp_task_validate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.lima_sched_task, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i32, ptr %4, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = getelementptr i32, ptr %4, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i32, ptr %4, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %9
  %16 = getelementptr i32, ptr %4, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i32, ptr %4, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = icmp eq i32 %5, %7
  %23 = icmp eq i32 %11, %13
  %24 = select i1 %22, i1 %23, i1 false
  %25 = select i1 %24, i32 -22, i32 0
  br label %26

26:                                               ; preds = %21, %15, %9, %2
  %27 = phi i32 [ -22, %15 ], [ -22, %9 ], [ -22, %2 ], [ %25, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_gp_task_run(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.lima_sched_task, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.lima_sched_task, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.lima_sched_task, ptr %1, i32 0, i32 3
  %12 = getelementptr inbounds %struct.lima_sched_task, ptr %1, i32 0, i32 1
  %13 = getelementptr i32, ptr %6, i32 4
  br label %14

14:                                               ; preds = %37, %10
  %15 = phi i32 [ %8, %10 ], [ %38, %37 ]
  %16 = phi i32 [ 0, %10 ], [ %39, %37 ]
  %17 = load ptr, ptr %11, align 8
  %18 = getelementptr ptr, ptr %17, i32 %16
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.lima_bo, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %14
  %24 = load ptr, ptr %12, align 8
  %25 = tail call i32 @lima_vm_get_va(ptr noundef %24, ptr noundef %19) #6
  %26 = load i32, ptr %13, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %7, align 4
  br label %37

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.lima_bo, ptr %19, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %25
  %34 = getelementptr i32, ptr %6, i32 5
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.lima_sched_task, ptr %1, i32 0, i32 5
  store i8 1, ptr %35, align 8
  %36 = getelementptr inbounds %struct.lima_sched_task, ptr %1, i32 0, i32 6
  store ptr %19, ptr %36, align 4
  br label %41

37:                                               ; preds = %28, %14
  %38 = phi i32 [ %29, %28 ], [ %15, %14 ]
  %39 = add nuw nsw i32 %16, 1
  %40 = icmp slt i32 %39, %38
  br i1 %40, label %14, label %41

41:                                               ; preds = %37, %30, %2
  %42 = load i32, ptr %6, align 4
  %43 = getelementptr i32, ptr %6, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i32, ptr %6, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i32, ptr %6, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = tail call fastcc i32 @lima_gp_soft_reset_async_wait(ptr noundef %4)
  %50 = getelementptr inbounds %struct.lima_ip, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %51 = load i32, ptr %6, align 4
  %52 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %51) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %53 = load i32, ptr %43, align 4
  %54 = load ptr, ptr %50, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %56 = load i32, ptr %45, align 4
  %57 = load ptr, ptr %50, align 4
  %58 = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %59 = load i32, ptr %47, align 4
  %60 = load ptr, ptr %50, align 4
  %61 = getelementptr i8, ptr %60, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %62 = getelementptr i32, ptr %6, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %50, align 4
  %65 = getelementptr i8, ptr %64, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %66 = getelementptr i32, ptr %6, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %50, align 4
  %69 = getelementptr i8, ptr %68, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #6, !srcloc !9
  %70 = icmp eq i32 %46, %48
  %71 = icmp ne i32 %42, %44
  %72 = zext i1 %71 to i32
  %73 = or i32 %72, 2
  %74 = select i1 %70, i32 %72, i32 %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %75 = load ptr, ptr %50, align 4
  %76 = getelementptr i8, ptr %75, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 16) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %77 = load ptr, ptr %50, align 4
  %78 = getelementptr i8, ptr %77, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %74) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_gp_task_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.lima_ip, ptr %3, i32 0, i32 5
  %5 = load i8, ptr %4, align 4, !range !22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %8 = getelementptr inbounds %struct.lima_ip, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 524288) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1024) #6, !srcloc !9
  store i8 1, ptr %4, align 4
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_gp_task_error(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.lima_ip, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 48
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 104
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %9, i32 noundef %12) #7
  %13 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -1056972800) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr i8, ptr %16, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 32) #6, !srcloc !9
  %20 = tail call i64 @ktime_get() #6
  %21 = add i64 %20, 100000
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 -1072037888) #6, !srcloc !9
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr i8, ptr %24, i32 84
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %27 = icmp eq i32 %26, -1072037888
  br i1 %27, label %40, label %28

28:                                               ; preds = %31, %1
  %29 = tail call i64 @ktime_get() #6
  %30 = icmp sgt i64 %29, %21
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr i8, ptr %32, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 -1072037888) #6, !srcloc !9
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr i8, ptr %34, i32 84
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  %37 = icmp eq i32 %36, -1072037888
  br i1 %37, label %40, label %28

38:                                               ; preds = %28
  %39 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.11) #7
  br label %47

40:                                               ; preds = %31, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %41, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr i8, ptr %43, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 7897087) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %45 = load ptr, ptr %6, align 4
  %46 = getelementptr i8, ptr %45, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 7368263) #6, !srcloc !9
  br label %47

47:                                               ; preds = %40, %38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_gp_task_mmu_error(ptr noundef %0) #0 {
  tail call void @lima_sched_pipe_task_done(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_gp_task_recover(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.lima_sched_pipe, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.lima_sched_task, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i32, ptr %7, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i32, ptr %7, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 %9, %11
  %13 = getelementptr inbounds %struct.lima_sched_task, ptr %5, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.lima_bo, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.lima_sched_task, ptr %5, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @lima_heap_alloc(ptr noundef %14, ptr noundef %20) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %18, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %24 = getelementptr inbounds %struct.lima_ip, ptr %3, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 7368263) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %27 = load i32, ptr %8, align 4
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #6, !srcloc !9
  %30 = load i32, ptr %10, align 4
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr inbounds %struct.lima_bo, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %30
  store i32 %34, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %35 = load i32, ptr %8, align 4
  %36 = load ptr, ptr %24, align 4
  %37 = getelementptr i8, ptr %36, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %38 = load ptr, ptr %24, align 4
  %39 = getelementptr i8, ptr %38, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 16) #6, !srcloc !9
  br label %40

40:                                               ; preds = %23, %18
  %41 = phi i32 [ 0, %23 ], [ %21, %18 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_gp_pipe_fini(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @lima_gp_task_slab_refcnt, align 4
  %3 = add i32 %2, -1
  store i32 %3, ptr @lima_gp_task_slab_refcnt, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr @lima_gp_task_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #6
  store ptr null, ptr @lima_gp_task_slab, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lima_gp_soft_reset_async_wait(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 4, !range !22
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %1
  %7 = tail call i64 @ktime_get() #6
  %8 = add i64 %7, 100000
  %9 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %16, %6
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr i8, ptr %11, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !37
  %14 = and i32 %13, 524288
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = tail call i64 @ktime_get() #6
  %18 = icmp sgt i64 %17, %8
  br i1 %18, label %19, label %10

19:                                               ; preds = %16
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i8, ptr %20, i32 36
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !38
  br label %23

23:                                               ; preds = %19, %10
  %24 = phi i32 [ %22, %19 ], [ %13, %10 ]
  %25 = and i32 %24, 524288
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.2) #7
  br label %34

29:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr i8, ptr %30, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 7897087) #6, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %32 = load ptr, ptr %9, align 4
  %33 = getelementptr i8, ptr %32, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 7368263) #6, !srcloc !9
  store i8 0, ptr %3, align 4
  br label %34

34:                                               ; preds = %29, %27, %1
  %35 = phi i32 [ -110, %27 ], [ 0, %29 ], [ 0, %1 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

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
declare dso_local i32 @lima_vm_get_va(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_heap_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2153360137}
!9 = !{i64 3056459}
!10 = !{i64 2153360623}
!11 = !{i64 2153361163}
!12 = !{i64 3056877}
!13 = !{i64 2153391299}
!14 = !{i64 2153392965}
!15 = !{i64 2153354670}
!16 = !{i64 2153355034}
!17 = !{i64 2153359097}
!18 = !{i64 2153359781}
!19 = !{i64 2153372492}
!20 = !{i64 2153372988}
!21 = !{i64 2153373392}
!22 = !{i8 0, i8 2}
!23 = !{i64 2153385855}
!24 = !{i64 2153386219}
!25 = !{i64 2153374510}
!26 = !{i64 2153374876}
!27 = !{i64 2153375358}
!28 = !{i64 2153373762}
!29 = !{i64 2153374268}
!30 = !{i64 2153376296}
!31 = !{i64 2153380111}
!32 = !{i64 2153383887}
!33 = !{i64 2153388723}
!34 = !{i64 2153389842}
!35 = !{i64 2153390253}
!36 = !{i64 2153390759}
!37 = !{i64 2153362825}
!38 = !{i64 2153363156}
!39 = !{i64 2153367395}
!40 = !{i64 2153371171}
