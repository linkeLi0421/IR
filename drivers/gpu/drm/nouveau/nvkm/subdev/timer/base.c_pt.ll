; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/timer/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/timer/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }

@.str = private unnamed_addr constant [24 x i8] c"%s: stalled at %016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/timer/base.c\00", align 1
@nvkm_timer = internal constant %struct.nvkm_subdev_func { ptr @nvkm_timer_dtor, ptr null, ptr null, ptr null, ptr @nvkm_timer_init, ptr @nvkm_timer_fini, ptr @nvkm_timer_intr }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @nvkm_timer_wait_test(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_timer_func, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i64 %5(ptr noundef %2) #7
  %7 = getelementptr inbounds %struct.nvkm_timer_wait, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_timer_wait, ptr %0, i32 0, i32 3
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %17, label %26

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nvkm_timer_wait, ptr %0, i32 0, i32 2
  store i64 %6, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nvkm_timer_wait, ptr %0, i32 0, i32 3
  br label %26

17:                                               ; preds = %10
  %18 = add i32 %8, 1
  store i32 %18, ptr %7, align 8
  %19 = icmp eq i32 %8, 16
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.nvkm_timer, ptr %2, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_timer, ptr %2, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %24, ptr noundef nonnull @.str, ptr noundef %25, i64 noundef %6) #8
  br label %36

26:                                               ; preds = %14, %10
  %27 = phi ptr [ %16, %14 ], [ %11, %10 ]
  store i64 %6, ptr %27, align 8
  store i32 1, ptr %7, align 8
  br label %28

28:                                               ; preds = %26, %17
  %29 = getelementptr inbounds %struct.nvkm_timer_wait, ptr %0, i32 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = sub i64 %6, %30
  %32 = getelementptr inbounds %struct.nvkm_timer_wait, ptr %0, i32 0, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = icmp ugt i64 %31, %33
  %35 = select i1 %34, i64 -110, i64 %31
  br label %36

36:                                               ; preds = %28, %20
  %37 = phi i64 [ -110, %20 ], [ %35, %28 ]
  ret i64 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @nvkm_timer_read(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_timer_func, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i64 %4(ptr noundef %0) #7
  ret i64 %5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nvkm_timer_wait_init(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 31
  %5 = load ptr, ptr %4, align 8
  store ptr %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_timer_wait, ptr %2, i32 0, i32 1
  store i64 %1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.nvkm_timer_wait, ptr %2, i32 0, i32 4
  store i32 0, ptr %7, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_timer_alarm_trigger(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nvkm_timer, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.nvkm_timer, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %41, label %9

9:                                                ; preds = %31, %1
  %10 = phi ptr [ %11, %31 ], [ %7, %1 ]
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_alarm, ptr %10, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.nvkm_timer_func, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = call i64 %16(ptr noundef %0) #7
  %18 = icmp ugt i64 %13, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %9
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.nvkm_timer_func, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = load i64, ptr %12, align 8
  %24 = trunc i64 %23 to i32
  call void %22(ptr noundef %0, i32 noundef %24) #7
  %25 = load i64, ptr %12, align 8
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.nvkm_timer_func, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = call i64 %28(ptr noundef %0) #7
  %30 = icmp ugt i64 %25, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %19, %9
  %32 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %32, align 4
  %36 = getelementptr inbounds %struct.nvkm_alarm, ptr %10, i32 0, i32 1
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store ptr %37, ptr %36, align 4
  %39 = getelementptr inbounds %struct.nvkm_alarm, ptr %10, i32 0, i32 1, i32 1
  store ptr %2, ptr %39, align 4
  store volatile ptr %36, ptr %2, align 8
  %40 = icmp eq ptr %11, %6
  br i1 %40, label %41, label %9

41:                                               ; preds = %31, %19, %1
  %42 = load volatile ptr, ptr %6, align 4
  %43 = icmp eq ptr %42, %6
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.nvkm_timer_func, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  call void %47(ptr noundef %0) #7
  br label %48

48:                                               ; preds = %44, %41
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  %49 = load ptr, ptr %2, align 8
  %50 = icmp eq ptr %49, %2
  br i1 %50, label %61, label %51

51:                                               ; preds = %51, %48
  %52 = phi ptr [ %54, %51 ], [ %49, %48 ]
  %53 = getelementptr i8, ptr %52, i32 -8
  %54 = load ptr, ptr %52, align 8
  %55 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %56, ptr %57, align 4
  store volatile ptr %54, ptr %56, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %52, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %55, align 4
  %58 = getelementptr i8, ptr %52, i32 16
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef %53) #7
  %60 = icmp eq ptr %54, %2
  br i1 %60, label %61, label %51

61:                                               ; preds = %51, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_timer_alarm(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_timer, ptr %0, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %6, align 4
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.nvkm_timer_func, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i64 %14(ptr noundef %0) #7
  %16 = zext i32 %1 to i64
  %17 = add i64 %15, %16
  %18 = getelementptr inbounds %struct.nvkm_alarm, ptr %2, i32 0, i32 2
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nvkm_timer, ptr %0, i32 0, i32 2
  br label %20

20:                                               ; preds = %24, %11
  %21 = phi ptr [ %19, %11 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nvkm_alarm, ptr %22, i32 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = icmp ugt i64 %26, %17
  br i1 %27, label %28, label %20

28:                                               ; preds = %24, %20
  %29 = phi ptr [ %22, %24 ], [ %19, %20 ]
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  store ptr %2, ptr %30, align 4
  store ptr %29, ptr %2, align 4
  store ptr %31, ptr %6, align 4
  store volatile ptr %2, ptr %31, align 4
  %32 = load ptr, ptr %19, align 4
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.nvkm_timer_func, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = load i64, ptr %18, align 8
  %39 = trunc i64 %38 to i32
  tail call void %37(ptr noundef %0, i32 noundef %39) #7
  %40 = load i64, ptr %18, align 8
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.nvkm_timer_func, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i64 %43(ptr noundef %0) #7
  %45 = icmp ugt i64 %40, %44
  br i1 %45, label %47, label %46, !prof !8

46:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 138, i32 noundef 9, ptr noundef null) #7
  br label %47

47:                                               ; preds = %46, %34, %28, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_timer_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 68) #9
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_timer, ptr %7, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_timer, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #7
  store ptr %0, ptr %7, align 8
  %11 = getelementptr inbounds %struct.nvkm_timer, ptr %7, i32 0, i32 2
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nvkm_timer, ptr %7, i32 0, i32 2, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_timer, ptr %7, i32 0, i32 3
  store i32 0, ptr %13, align 8
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_timer_dtor(ptr noundef readnone %0) #6 {
  %2 = getelementptr i8, ptr %0, i32 -4
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_timer_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %2) #7
  %7 = load ptr, ptr %2, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.nvkm_timer_func, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i64 @ktime_get() #7
  tail call void %11(ptr noundef %2, i64 noundef %12) #7
  tail call void @nvkm_timer_alarm_trigger(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_timer_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_timer_func, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_timer_intr(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_timer_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

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
