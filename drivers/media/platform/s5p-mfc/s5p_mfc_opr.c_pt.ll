; ModuleID = '/llk/IR/drivers/media/platform/s5p-mfc/s5p_mfc_opr.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_opr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }

@s5p_mfc_ops = internal unnamed_addr global ptr null, align 4
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"\017%s:%d: Allocating priv: %zu\0A\00", align 1
@__func__.s5p_mfc_alloc_priv_buf = private unnamed_addr constant [23 x i8] c"s5p_mfc_alloc_priv_buf\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"\013%s:%d: Invalid memory configuration - buffer (%pad) is below base memory address(%pad)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\017%s:%d: Allocated addr %p %pad\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"\013%s:%d: Allocating private buffer of size %zu failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\017%s:%d: Allocating generic buf: %zu\0A\00", align 1
@__func__.s5p_mfc_alloc_generic_buf = private unnamed_addr constant [26 x i8] c"s5p_mfc_alloc_generic_buf\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"\013%s:%d: Allocating generic buffer of size %zu failed\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_init_hw_ops(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 95
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @s5p_mfc_init_hw_ops_v6() #4
  br label %10

8:                                                ; preds = %1
  %9 = tail call ptr @s5p_mfc_init_hw_ops_v5() #4
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ]
  %12 = phi i32 [ 145, %8 ], [ 160, %6 ]
  store ptr %11, ptr @s5p_mfc_ops, align 4
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 35
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 36
  store ptr %11, ptr %14, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s5p_mfc_init_hw_ops_v6() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s5p_mfc_init_hw_ops_v5() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_init_regs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 95
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call ptr @s5p_mfc_init_regs_v6_plus(ptr noundef %0) #4
  %8 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 38
  store ptr %7, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s5p_mfc_init_regs_v6_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_alloc_priv_buf(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 12
  %8 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %2, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 12
  %11 = load i32, ptr @mfc_debug_level, align 4
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s5p_mfc_alloc_priv_buf, i32 noundef 45, i32 noundef %9) #5
  br label %15

15:                                               ; preds = %13, %3
  %16 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 23
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 22
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %21, i32 noundef %7, i32 noundef 0, i32 noundef %10, i32 noundef 15, i32 noundef 0) #4
  %23 = icmp ugt i32 %22, %7
  br i1 %23, label %62, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %20, align 4
  tail call void @__bitmap_set(ptr noundef %25, i32 noundef %22, i32 noundef %10) #4
  %26 = shl i32 %22, 12
  %27 = load ptr, ptr %16, align 4
  %28 = getelementptr i8, ptr %27, i32 %26
  %29 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %2, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 21
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %26
  %33 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %2, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  br label %55

34:                                               ; preds = %15
  %35 = getelementptr %struct.s5p_mfc_dev, ptr %0, i32 0, i32 4, i32 %1
  %36 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  %37 = getelementptr %struct.s5p_mfc_dev, ptr %0, i32 0, i32 24, i32 %1
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %4, align 4
  %39 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %2, i32 0, i32 4
  store i32 %1, ptr %39, align 4
  %40 = load i32, ptr %8, align 4
  %41 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %2, i32 0, i32 2
  %42 = tail call ptr @dma_alloc_attrs(ptr noundef %36, i32 noundef %40, ptr noundef %41, i32 noundef 3264, i32 noundef 0) #4
  %43 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %2, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  %44 = icmp eq ptr %42, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %34
  %46 = load i32, ptr %41, align 4
  %47 = icmp ult i32 %46, %38
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %55

49:                                               ; preds = %45
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5p_mfc_alloc_priv_buf, i32 noundef 66, ptr noundef %41, ptr noundef nonnull %4) #5
  %51 = load i32, ptr %8, align 4
  %52 = load ptr, ptr %43, align 4
  %53 = load i32, ptr %41, align 4
  call void @dma_free_attrs(ptr noundef %36, i32 noundef %51, ptr noundef %52, i32 noundef %53, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %65

54:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %62

55:                                               ; preds = %48, %24
  %56 = phi ptr [ %42, %48 ], [ %28, %24 ]
  %57 = load i32, ptr @mfc_debug_level, align 4
  %58 = icmp sgt i32 %57, 2
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %2, i32 0, i32 2
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_alloc_priv_buf, i32 noundef 72, ptr noundef %56, ptr noundef %60) #5
  br label %65

62:                                               ; preds = %54, %19
  %63 = load i32, ptr %8, align 4
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_alloc_priv_buf, i32 noundef 75, i32 noundef %63) #5
  br label %65

65:                                               ; preds = %62, %59, %55, %49
  %66 = phi i32 [ -12, %62 ], [ 0, %59 ], [ 0, %55 ], [ -12, %49 ]
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_alloc_generic_buf(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.s5p_mfc_dev, ptr %0, i32 0, i32 4, i32 %1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @mfc_debug_level, align 4
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %2, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.s5p_mfc_alloc_generic_buf, i32 noundef 84, i32 noundef %10) #5
  br label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %2, i32 0, i32 4
  store i32 %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %2, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %2, i32 0, i32 2
  %17 = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef %15, ptr noundef %16, i32 noundef 3264, i32 noundef 0) #4
  %18 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %2, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr @mfc_debug_level, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_alloc_generic_buf, i32 noundef 91, ptr noundef nonnull %17, ptr noundef %16) #5
  br label %28

25:                                               ; preds = %12
  %26 = load i32, ptr %14, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s5p_mfc_alloc_generic_buf, i32 noundef 94, i32 noundef %26) #5
  br label %28

28:                                               ; preds = %25, %23, %20
  %29 = phi i32 [ -12, %25 ], [ 0, %23 ], [ 0, %20 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_release_priv_buf(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 21
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = lshr i32 %11, 12
  %13 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 12
  %16 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 22
  %17 = load ptr, ptr %16, align 4
  tail call void @__bitmap_clear(ptr noundef %17, i32 noundef %12, i32 noundef %15) #4
  br label %29

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.s5p_mfc_dev, ptr %0, i32 0, i32 4, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  tail call void @dma_free_attrs(ptr noundef %22, i32 noundef %24, ptr noundef %26, i32 noundef %28, i32 noundef 0) #4
  br label %29

29:                                               ; preds = %18, %6
  %30 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 1
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 2
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 3
  store i32 0, ptr %32, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_release_generic_buf(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr %struct.s5p_mfc_dev, ptr %0, i32 0, i32 4, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.s5p_mfc_priv_buf, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  tail call void @dma_free_attrs(ptr noundef %6, i32 noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef 0) #4
  store ptr null, ptr %9, align 4
  store i32 0, ptr %11, align 4
  store i32 0, ptr %7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
