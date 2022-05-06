; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/pad.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/pad.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.nvkm_i2c_pad = type { ptr, ptr, i32, i32, %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_i2c_pad_func = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [23 x i8] c"%s: pad %04x: mode %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: pad %04x: release\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: pad %04x: acquire\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s: pad %04x: fini\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%s: pad %04x: init\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s: pad %04x: dtor\0A\00", align 1
@nvkm_i2c_pad_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"&pad->mutex\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%s: pad %04x: ctor\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%s: pad %04x: -> %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_pad_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_i2c, ptr %4, i32 0, i32 1, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 4
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_i2c, ptr %4, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_i2c, ptr %4, i32 0, i32 1, i32 4
  %14 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %15, i32 noundef %1) #4
  br label %16

16:                                               ; preds = %8, %2
  %17 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %17) #5
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.nvkm_i2c, ptr %18, i32 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 4
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.nvkm_i2c, ptr %18, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_i2c, ptr %18, i32 0, i32 1, i32 4
  %28 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %1, 2
  %31 = icmp eq i32 %1, 1
  %32 = select i1 %31, ptr @.str.10, ptr @.str.11
  %33 = select i1 %30, ptr @.str.9, ptr %32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.8, ptr noundef %27, i32 noundef %29, ptr noundef nonnull %33) #4
  br label %34

34:                                               ; preds = %22, %16
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void %37(ptr noundef %0, i32 noundef %1) #5
  br label %40

40:                                               ; preds = %39, %34
  %41 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 3
  store i32 %1, ptr %41, align 4
  tail call void @mutex_unlock(ptr noundef %17) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_pad_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 4
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %13 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef %12, i32 noundef %14) #4
  br label %15

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.nvkm_i2c, ptr %20, i32 0, i32 1, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.nvkm_i2c, ptr %20, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_i2c, ptr %20, i32 0, i32 1, i32 4
  %30 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef %29, i32 noundef %31, ptr noundef nonnull @.str.11) #4
  br label %32

32:                                               ; preds = %24, %19
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void %35(ptr noundef %0, i32 noundef 0) #5
  br label %38

38:                                               ; preds = %37, %32, %15
  %39 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %39) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_pad_acquire(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_i2c, ptr %4, i32 0, i32 1, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 4
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_i2c, ptr %4, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_i2c, ptr %4, i32 0, i32 1, i32 4
  %14 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef %13, i32 noundef %15) #4
  br label %16

16:                                               ; preds = %8, %2
  %17 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %17) #5
  %18 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %47, label %21

21:                                               ; preds = %16
  %22 = icmp eq i32 %19, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call void @mutex_unlock(ptr noundef %17) #5
  br label %47

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.nvkm_i2c, ptr %25, i32 0, i32 1, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nvkm_i2c, ptr %25, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nvkm_i2c, ptr %25, i32 0, i32 1, i32 4
  %35 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %1, 2
  %38 = icmp eq i32 %1, 1
  %39 = select i1 %38, ptr @.str.10, ptr @.str.11
  %40 = select i1 %37, ptr @.str.9, ptr %39
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.8, ptr noundef %34, i32 noundef %36, ptr noundef nonnull %40) #4
  br label %41

41:                                               ; preds = %29, %24
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  tail call void %44(ptr noundef %0, i32 noundef %1) #5
  br label %47

47:                                               ; preds = %46, %41, %23, %16
  %48 = phi i32 [ -16, %23 ], [ 0, %16 ], [ 0, %41 ], [ 0, %46 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_pad_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 4
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %13 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.3, ptr noundef %12, i32 noundef %14) #4
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.nvkm_i2c, ptr %15, i32 0, i32 1, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 4
  br i1 %18, label %19, label %27

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.nvkm_i2c, ptr %15, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_i2c, ptr %15, i32 0, i32 1, i32 4
  %25 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.8, ptr noundef %24, i32 noundef %26, ptr noundef nonnull @.str.11) #4
  br label %27

27:                                               ; preds = %19, %7, %1
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void %30(ptr noundef %0, i32 noundef 0) #5
  br label %33

33:                                               ; preds = %32, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_pad_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 4
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  br label %36

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_i2c, ptr %3, i32 0, i32 1, i32 4
  %16 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef %15, i32 noundef %17) #4
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.nvkm_i2c, ptr %18, i32 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %20, 4
  br i1 %23, label %24, label %36

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.nvkm_i2c, ptr %18, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_i2c, ptr %18, i32 0, i32 1, i32 4
  %30 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %0, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %22, 2
  %33 = icmp eq i32 %22, 1
  %34 = select i1 %33, ptr @.str.10, ptr @.str.11
  %35 = select i1 %32, ptr @.str.9, ptr %34
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef %29, i32 noundef %31, ptr noundef nonnull %35) #4
  br label %36

36:                                               ; preds = %24, %10, %7
  %37 = phi i32 [ %9, %7 ], [ %22, %24 ], [ %22, %10 ]
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.nvkm_i2c_pad_func, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void %40(ptr noundef %0, i32 noundef %37) #5
  br label %43

43:                                               ; preds = %42, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_pad_del(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_i2c, ptr %6, i32 0, i32 1, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_i2c, ptr %6, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_i2c, ptr %6, i32 0, i32 1, i32 4
  %16 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef %15, i32 noundef %17) #4
  br label %18

18:                                               ; preds = %10, %4
  %19 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %2, i32 0, i32 5
  %20 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %2, i32 0, i32 5, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @kfree(ptr noundef nonnull %2) #5
  br label %24

24:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_i2c_pad_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  store ptr %0, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 1
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 2
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 3
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull @nvkm_i2c_pad_ctor.__key) #5
  %9 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 5
  %10 = getelementptr inbounds %struct.nvkm_i2c, ptr %1, i32 0, i32 2
  %11 = getelementptr inbounds %struct.nvkm_i2c, ptr %1, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  store ptr %9, ptr %11, align 4
  store ptr %10, ptr %9, align 4
  %13 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %3, i32 0, i32 5, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %9, ptr %12, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.nvkm_i2c, ptr %14, i32 0, i32 1, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.nvkm_i2c, ptr %14, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_i2c, ptr %14, i32 0, i32 1, i32 4
  %24 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.7, ptr noundef %23, i32 noundef %24) #4
  br label %25

25:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_i2c_pad_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 44) #6
  store ptr %6, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  store ptr %0, ptr %6, align 8
  %9 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %6, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %6, i32 0, i32 2
  store i32 %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %6, i32 0, i32 3
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %6, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull @nvkm_i2c_pad_ctor.__key) #5
  %13 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %6, i32 0, i32 5
  %14 = getelementptr inbounds %struct.nvkm_i2c, ptr %1, i32 0, i32 2
  %15 = getelementptr inbounds %struct.nvkm_i2c, ptr %1, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %13, ptr %15, align 4
  store ptr %14, ptr %13, align 4
  %17 = getelementptr inbounds %struct.nvkm_i2c_pad, ptr %6, i32 0, i32 5, i32 1
  store ptr %16, ptr %17, align 8
  store volatile ptr %13, ptr %16, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.nvkm_i2c, ptr %18, i32 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 4
  br i1 %21, label %22, label %29

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.nvkm_i2c, ptr %18, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_i2c, ptr %18, i32 0, i32 1, i32 4
  %28 = load i32, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.7, ptr noundef %27, i32 noundef %28) #4
  br label %29

29:                                               ; preds = %22, %8, %4
  %30 = phi i32 [ -12, %4 ], [ 0, %8 ], [ 0, %22 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
