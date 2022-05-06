; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_mmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_mmu.c"
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
%struct.lima_vm = type { %struct.mutex, %struct.kref, %struct.drm_mm, ptr, %struct.lima_vm_page, [128 x %struct.lima_vm_page] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lima_vm_page = type { ptr, i32 }

@.str = private unnamed_addr constant [28 x i8] c"mmu %s dte write test fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"mmu %s fail to request irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"mmu command %x timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"mmu resume\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"mmu page fault at 0x%x from bus id %d of type %s on %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"mmu %s irq bus error\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_mmu_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 25
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @lima_mmu_hw_init(ptr noundef %0)
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lima_mmu_hw_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %3 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 6) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 6) #4, !srcloc !9
  %8 = tail call i64 @ktime_get() #4
  %9 = add i64 %8, 100000
  br label %10

10:                                               ; preds = %14, %1
  %11 = load ptr, ptr %3, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = tail call i64 @ktime_get() #4
  %16 = icmp sgt i64 %15, %9
  br i1 %16, label %17, label %10

17:                                               ; preds = %14
  %18 = load ptr, ptr %3, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %17, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 3) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %24 = getelementptr inbounds %struct.lima_device, ptr %2, i32 0, i32 13
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.lima_vm, ptr %25, i32 0, i32 4, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #4, !srcloc !9
  %31 = tail call i64 @ktime_get() #4
  %32 = add i64 %31, 100000
  br label %33

33:                                               ; preds = %39, %21
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr i8, ptr %34, i32 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = tail call i64 @ktime_get() #4
  %41 = icmp sgt i64 %40, %32
  br i1 %41, label %42, label %33

42:                                               ; preds = %39
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  br label %46

46:                                               ; preds = %42, %33
  %47 = phi i32 [ %45, %42 ], [ %36, %33 ]
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %17
  %51 = phi i32 [ 6, %17 ], [ 0, %46 ]
  %52 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.2, i32 noundef %51) #5
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi i32 [ 0, %46 ], [ -110, %50 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lima_mmu_suspend(ptr nocapture noundef %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_mmu_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 25
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %7 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -889275714) #4, !srcloc !9
  %9 = load ptr, ptr %7, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %11 = icmp eq i32 %10, -889278464
  %12 = load ptr, ptr %2, align 8
  br i1 %11, label %15, label %13

13:                                               ; preds = %6
  %14 = tail call ptr @lima_ip_name(ptr noundef %0) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef %14) #5
  br label %26

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @lima_ip_name(ptr noundef %0) #4
  %19 = tail call i32 @devm_request_threaded_irq(ptr noundef %12, i32 noundef %17, ptr noundef nonnull @lima_mmu_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %18, ptr noundef %0) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %2, align 8
  %23 = tail call ptr @lima_ip_name(ptr noundef %0) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef %23) #5
  br label %26

24:                                               ; preds = %15
  %25 = tail call fastcc i32 @lima_mmu_hw_init(ptr noundef %0)
  br label %26

26:                                               ; preds = %24, %21, %13, %1
  %27 = phi i32 [ -5, %13 ], [ %19, %21 ], [ %25, %24 ], [ 0, %1 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_ip_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_mmu_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %2
  %10 = and i32 %7, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !22
  %16 = load ptr, ptr %3, align 8
  %17 = lshr i32 %7, 6
  %18 = and i32 %17, 31
  %19 = and i32 %7, 32
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.6, ptr @.str.5
  %22 = tail call ptr @lima_ip_name(ptr noundef %1) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.4, i32 noundef %15, i32 noundef %18, ptr noundef nonnull %21, ptr noundef %22) #5
  br label %23

23:                                               ; preds = %12, %9
  %24 = and i32 %7, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %3, align 8
  %28 = tail call ptr @lima_ip_name(ptr noundef %1) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.7, ptr noundef %28) #5
  br label %29

29:                                               ; preds = %26, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr i8, ptr %30, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %7) #4, !srcloc !9
  %34 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 12
  %35 = getelementptr inbounds %struct.lima_ip, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = getelementptr %struct.lima_sched_pipe, ptr %34, i32 %38
  %40 = getelementptr %struct.lima_sched_pipe, ptr %34, i32 %38, i32 16
  store i8 1, ptr %40, align 4
  %41 = getelementptr %struct.lima_sched_pipe, ptr %34, i32 %38, i32 24
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %39) #4
  br label %43

43:                                               ; preds = %29, %2
  %44 = phi i32 [ 1, %29 ], [ 0, %2 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lima_mmu_fini(ptr nocapture noundef %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_mmu_flush_tlb(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 4) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_mmu_switch_vm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %4 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 2) #4, !srcloc !9
  %7 = tail call i64 @ktime_get() #4
  %8 = add i64 %7, 100000
  br label %9

9:                                                ; preds = %15, %2
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !27
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = tail call i64 @ktime_get() #4
  %17 = icmp sgt i64 %16, %8
  br i1 %17, label %18, label %9

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  br label %22

22:                                               ; preds = %18, %9
  %23 = phi i32 [ %21, %18 ], [ %12, %9 ]
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.2, i32 noundef 2) #5
  br label %28

28:                                               ; preds = %26, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %29 = getelementptr inbounds %struct.lima_vm, ptr %1, i32 0, i32 4, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %32 = load ptr, ptr %4, align 4
  %33 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 4) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 3) #4, !srcloc !9
  %36 = tail call i64 @ktime_get() #4
  %37 = add i64 %36, 100000
  br label %38

38:                                               ; preds = %44, %28
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !32
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %38
  %45 = tail call i64 @ktime_get() #4
  %46 = icmp sgt i64 %45, %37
  br i1 %46, label %47, label %38

47:                                               ; preds = %44
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr i8, ptr %48, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !33
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.2, i32 noundef 3) #5
  br label %55

55:                                               ; preds = %53, %47, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_mmu_page_fault_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !34
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.3) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 -889275714) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 6) #4, !srcloc !9
  %16 = tail call i64 @ktime_get() #4
  %17 = add i64 %16, 100000
  br label %18

18:                                               ; preds = %22, %9
  %19 = load ptr, ptr %3, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !38
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = tail call i64 @ktime_get() #4
  %24 = icmp sgt i64 %23, %17
  br i1 %24, label %25, label %18

25:                                               ; preds = %22
  %26 = load ptr, ptr %3, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !39
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.2, i32 noundef 6) #5
  br label %31

31:                                               ; preds = %29, %25, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 3) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %34 = getelementptr inbounds %struct.lima_device, ptr %2, i32 0, i32 13
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.lima_vm, ptr %35, i32 0, i32 4, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %37) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #4, !srcloc !9
  %41 = tail call i64 @ktime_get() #4
  %42 = add i64 %41, 100000
  br label %43

43:                                               ; preds = %49, %31
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr i8, ptr %44, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !43
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = tail call i64 @ktime_get() #4
  %51 = icmp sgt i64 %50, %42
  br i1 %51, label %52, label %43

52:                                               ; preds = %49
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr i8, ptr %53, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !44
  br label %56

56:                                               ; preds = %52, %43
  %57 = phi i32 [ %55, %52 ], [ %46, %43 ]
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.2, i32 noundef 0) #5
  br label %62

62:                                               ; preds = %60, %56, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2152677844}
!9 = !{i64 3052144}
!10 = !{i64 2152678549}
!11 = !{i64 3052562}
!12 = !{i64 2152680014}
!13 = !{i64 2152680363}
!14 = !{i64 2152681427}
!15 = !{i64 2152681935}
!16 = !{i64 2152682781}
!17 = !{i64 2152684346}
!18 = !{i64 2152684695}
!19 = !{i64 2152685501}
!20 = !{i64 2152686019}
!21 = !{i64 2152674670}
!22 = !{i64 2152675126}
!23 = !{i64 2152677101}
!24 = !{i64 2152677467}
!25 = !{i64 2152687477}
!26 = !{i64 2152688289}
!27 = !{i64 2152689854}
!28 = !{i64 2152690203}
!29 = !{i64 2152691009}
!30 = !{i64 2152691394}
!31 = !{i64 2152692210}
!32 = !{i64 2152693791}
!33 = !{i64 2152694140}
!34 = !{i64 2152695072}
!35 = !{i64 2152695859}
!36 = !{i64 2152696233}
!37 = !{i64 2152696950}
!38 = !{i64 2152698415}
!39 = !{i64 2152698764}
!40 = !{i64 2152699828}
!41 = !{i64 2152700336}
!42 = !{i64 2152701182}
!43 = !{i64 2152702747}
!44 = !{i64 2152703096}
