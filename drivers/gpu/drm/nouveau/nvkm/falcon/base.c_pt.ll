; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/falcon/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/falcon/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.123, %struct.anon.124, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.anon.123 = type { i32, ptr, i32, i8 }
%struct.anon.124 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.127 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.127 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.1, %struct.anon.1, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.1 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [53 x i8] c"%s: writing with secure tag on a non-secure falcon!\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"%s: Context binding not supported on this falcon!\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: released %s falcon\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: %s falcon already acquired by %s!\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s: acquired %s falcon\0A\00", align 1
@nvkm_falcon_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"&falcon->mutex\00", align 1
@nvkm_falcon_ctor.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"&falcon->dmem_mutex\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"drivers/gpu/drm/nouveau/nvkm/falcon/base.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_load_imem(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #0 {
  br i1 %6, label %8, label %24

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 9
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef %23) #4
  br label %28

24:                                               ; preds = %8, %7
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i8 noundef zeroext %5, i1 noundef zeroext %6) #5
  br label %28

28:                                               ; preds = %24, %18, %12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_load_dmem(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #5
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #5
  tail call void @mutex_unlock(ptr noundef %6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_read_dmem(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #5
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) #5
  tail call void @mutex_unlock(ptr noundef %6) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_bind_context(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_subdev, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %9, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef %18) #4
  br label %20

19:                                               ; preds = %2
  tail call void %5(ptr noundef %0, ptr noundef %1) #5
  br label %20

20:                                               ; preds = %19, %13, %7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_set_start_addr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, i32 noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_start(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %2, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  tail call void %4(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  tail call void @nvkm_mc_enable(ptr noundef %5, i32 noundef %7, i32 noundef %9) #5
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %10, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.nvkm_subdev, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %16, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  tail call void @nvkm_mc_disable(ptr noundef %5, i32 noundef %18, i32 noundef %20) #5
  br label %21

21:                                               ; preds = %15, %1
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_disable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = tail call zeroext i1 @nvkm_mc_enabled(ptr noundef %5, i32 noundef %7, i32 noundef %9) #5
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %12, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0) #5
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %15, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  tail call void @nvkm_mc_disable(ptr noundef %5, i32 noundef %17, i32 noundef %19) #5
  br label %20

20:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_mc_enabled(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %2, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call zeroext i1 @nvkm_mc_enabled(ptr noundef %10, i32 noundef %12, i32 noundef %14) #5
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %17, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %0) #5
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  tail call void @nvkm_mc_disable(ptr noundef %10, i32 noundef %22, i32 noundef %24) #5
  br label %25

25:                                               ; preds = %16, %6
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  tail call void @nvkm_mc_enable(ptr noundef %28, i32 noundef %30, i32 noundef %32) #5
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %33, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %25
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %39, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  tail call void @nvkm_mc_disable(ptr noundef %28, i32 noundef %41, i32 noundef %43) #5
  br label %46

44:                                               ; preds = %1
  %45 = tail call i32 %4(ptr noundef %0) #5
  br label %46

46:                                               ; preds = %44, %38, %25
  %47 = phi i32 [ %45, %44 ], [ 0, %25 ], [ %36, %38 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_wait_for_halt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef %1) #5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_clear_interrupt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef %1) #5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_put(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4, !prof !8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 3
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  %19 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef %18, ptr noundef %20) #4
  br label %21

21:                                               ; preds = %13, %9
  store ptr null, ptr %6, align 4
  br label %22

22:                                               ; preds = %21, %4
  tail call void @mutex_unlock(ptr noundef %5) #5
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  br i1 %6, label %20, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %110, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  %17 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef %16, ptr noundef %18, ptr noundef %19) #4
  br label %110

20:                                               ; preds = %2
  %21 = icmp ugt i32 %8, 3
  br i1 %21, label %22, label %30

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  %28 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.4, ptr noundef %27, ptr noundef %29) #4
  br label %30

30:                                               ; preds = %22, %20
  %31 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 6
  %32 = load i8, ptr %31, align 4, !range !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %108

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_subdev, ptr %41, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_subdev, ptr %41, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @nvkm_top_addr(ptr noundef %43, i32 noundef %45, i32 noundef %47) #5
  store i32 %48, ptr %36, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 149, i32 noundef 9, ptr noundef null) #5
  br label %108

51:                                               ; preds = %39, %34
  %52 = phi i32 [ %48, %39 ], [ %37, %34 ]
  %53 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_subdev, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = add i32 %52, 300
  %60 = getelementptr i8, ptr %58, i32 %59
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 15
  %64 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 8
  store i8 %63, ptr %64, align 4
  %65 = lshr i8 %62, 4
  %66 = and i8 %65, 3
  %67 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 9
  store i8 %66, ptr %67, align 1
  %68 = lshr i32 %61, 8
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 15
  %71 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 13
  %72 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 13, i32 3
  store i8 %70, ptr %72, align 4
  %73 = lshr i32 %61, 12
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 15
  %76 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 14
  %77 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 14, i32 3
  store i8 %75, ptr %77, align 4
  %78 = load ptr, ptr %53, align 4
  %79 = getelementptr inbounds %struct.nvkm_subdev, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nvkm_device, ptr %80, i32 0, i32 11
  %82 = load ptr, ptr %81, align 4
  %83 = load i32, ptr %36, align 4
  %84 = add i32 %83, 264
  %85 = getelementptr i8, ptr %82, i32 %84
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %87 = shl i32 %86, 8
  %88 = and i32 %87, 130816
  store i32 %88, ptr %71, align 4
  %89 = lshr i32 %86, 1
  %90 = and i32 %89, 130816
  store i32 %90, ptr %76, align 4
  %91 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %35, i32 0, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %51
  %95 = load ptr, ptr %53, align 4
  %96 = getelementptr inbounds %struct.nvkm_subdev, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 11
  %99 = load ptr, ptr %98, align 4
  %100 = load i32, ptr %36, align 4
  %101 = add i32 %100, %92
  %102 = getelementptr i8, ptr %99, i32 %101
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  %104 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 10
  %105 = lshr i32 %103, 20
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  store i8 %107, ptr %104, align 2
  br label %108

108:                                              ; preds = %94, %51, %50, %30
  %109 = phi i32 [ 0, %30 ], [ -19, %50 ], [ 0, %94 ], [ 0, %51 ]
  store ptr %1, ptr %4, align 4
  br label %110

110:                                              ; preds = %108, %11, %9
  %111 = phi i32 [ %109, %108 ], [ -16, %11 ], [ -16, %9 ]
  tail call void @mutex_unlock(ptr noundef %3) #5
  ret i32 %111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @nvkm_falcon_dtor(ptr nocapture %0) local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_falcon_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  store ptr %0, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_falcon, ptr %4, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nvkm_falcon, ptr %4, i32 0, i32 2
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_falcon, ptr %4, i32 0, i32 3
  store i32 %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_falcon, ptr %4, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef nonnull @nvkm_falcon_ctor.__key) #5
  %10 = getelementptr inbounds %struct.nvkm_falcon, ptr %4, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.7, ptr noundef nonnull @nvkm_falcon_ctor.__key.6) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_falcon_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @kfree(ptr noundef nonnull %2) #5
  store ptr null, ptr %0, align 4
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_top_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{i64 3950310}
!11 = !{i64 2151489763}
