; ModuleID = '/llk/IR/drivers/usb/core/buffer.c_pt.bc'
source_filename = "../drivers/usb/core/buffer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.61, i32 }
%union.anon.61 = type { ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pool_max.0 = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [10 x i8] c"buffer-%d\00", align 1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @usb_init_pool_max() local_unnamed_addr #0 section ".init.text" {
  store i1 true, ptr @pool_max.0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hcd_buffer_create(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 28
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %49

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hc_driver, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %15 = load i1, ptr @pool_max.0, align 4
  %16 = select i1 %15, i32 64, i32 32
  %17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %16)
  %18 = load ptr, ptr %14, align 4
  %19 = call ptr @dma_pool_create(ptr noundef nonnull %2, ptr noundef %18, i32 noundef %16, i32 noundef %16, i32 noundef 0) #7
  %20 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 0
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %43, %37, %31, %13
  %23 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 0
  %24 = load ptr, ptr %23, align 4
  call void @dma_pool_destroy(ptr noundef %24) #7
  store ptr null, ptr %23, align 4
  %25 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 1
  %26 = load ptr, ptr %25, align 4
  call void @dma_pool_destroy(ptr noundef %26) #7
  store ptr null, ptr %25, align 4
  %27 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 2
  %28 = load ptr, ptr %27, align 4
  call void @dma_pool_destroy(ptr noundef %28) #7
  store ptr null, ptr %27, align 4
  %29 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 3
  %30 = load ptr, ptr %29, align 4
  call void @dma_pool_destroy(ptr noundef %30) #7
  store ptr null, ptr %29, align 4
  br label %49

31:                                               ; preds = %13
  %32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef 128)
  %33 = load ptr, ptr %14, align 4
  %34 = call ptr @dma_pool_create(ptr noundef nonnull %2, ptr noundef %33, i32 noundef 128, i32 noundef 128, i32 noundef 0) #7
  %35 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 1
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %22, label %37

37:                                               ; preds = %31
  %38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef 512)
  %39 = load ptr, ptr %14, align 4
  %40 = call ptr @dma_pool_create(ptr noundef nonnull %2, ptr noundef %39, i32 noundef 512, i32 noundef 512, i32 noundef 0) #7
  %41 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 2
  store ptr %40, ptr %41, align 4
  %42 = icmp eq ptr %40, null
  br i1 %42, label %22, label %43

43:                                               ; preds = %37
  %44 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef 2048)
  %45 = load ptr, ptr %14, align 4
  %46 = call ptr @dma_pool_create(ptr noundef nonnull %2, ptr noundef %45, i32 noundef 2048, i32 noundef 2048, i32 noundef 0) #7
  %47 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 3
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %22, label %49

49:                                               ; preds = %43, %22, %6, %1
  %50 = phi i32 [ -12, %22 ], [ 0, %6 ], [ 0, %1 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret i32 %50
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hcd_buffer_destroy(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 0
  %3 = load ptr, ptr %2, align 4
  tail call void @dma_pool_destroy(ptr noundef %3) #7
  store ptr null, ptr %2, align 4
  %4 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @dma_pool_destroy(ptr noundef %5) #7
  store ptr null, ptr %4, align 4
  %6 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @dma_pool_destroy(ptr noundef %7) #7
  store ptr null, ptr %6, align 4
  %8 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @dma_pool_destroy(ptr noundef %9) #7
  store ptr null, ptr %8, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hcd_buffer_alloc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 28
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @gen_pool_dma_alloc(ptr noundef nonnull %8, i32 noundef %1, ptr noundef %3) #7
  br label %42

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hc_driver, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load i1, ptr @pool_max.0, align 4
  %21 = select i1 %20, i32 64, i32 32
  %22 = icmp ult i32 %21, %1
  br i1 %22, label %30, label %25

23:                                               ; preds = %12
  store i32 -1, ptr %3, align 4
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1, i32 noundef %2) #8
  br label %42

25:                                               ; preds = %34, %32, %30, %19
  %26 = phi i32 [ 0, %19 ], [ 1, %30 ], [ 2, %32 ], [ 3, %34 ]
  %27 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @dma_pool_alloc(ptr noundef %28, i32 noundef %2, ptr noundef %3) #7
  br label %42

30:                                               ; preds = %19
  %31 = icmp ugt i32 %1, 128
  br i1 %31, label %32, label %25

32:                                               ; preds = %30
  %33 = icmp ugt i32 %1, 512
  br i1 %33, label %34, label %25

34:                                               ; preds = %32
  %35 = icmp ugt i32 %1, 2048
  br i1 %35, label %36, label %25

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = lshr i32 %2, 5
  %40 = and i32 %39, 256
  %41 = tail call ptr @dma_alloc_attrs(ptr noundef %38, i32 noundef %1, ptr noundef %3, i32 noundef %2, i32 noundef %40) #7
  br label %42

42:                                               ; preds = %36, %25, %23, %10, %4
  %43 = phi ptr [ %11, %10 ], [ %29, %25 ], [ %41, %36 ], [ null, %4 ], [ %24, %23 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hcd_buffer_free(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %37, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 28
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = ptrtoint ptr %2 to i32
  tail call void @gen_pool_free_owner(ptr noundef nonnull %8, i32 noundef %11, i32 noundef %1, ptr noundef null) #7
  br label %37

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.usb_hcd, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hc_driver, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load i1, ptr @pool_max.0, align 4
  %21 = select i1 %20, i32 64, i32 32
  %22 = icmp ult i32 %21, %1
  br i1 %22, label %28, label %24

23:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %2) #7
  br label %37

24:                                               ; preds = %32, %30, %28, %19
  %25 = phi i32 [ 0, %19 ], [ 1, %28 ], [ 2, %30 ], [ 3, %32 ]
  %26 = getelementptr %struct.usb_hcd, ptr %0, i32 0, i32 26, i32 %25
  %27 = load ptr, ptr %26, align 4
  tail call void @dma_pool_free(ptr noundef %27, ptr noundef nonnull %2, i32 noundef %3) #7
  br label %37

28:                                               ; preds = %19
  %29 = icmp ugt i32 %1, 128
  br i1 %29, label %30, label %24

30:                                               ; preds = %28
  %31 = icmp ugt i32 %1, 512
  br i1 %31, label %32, label %24

32:                                               ; preds = %30
  %33 = icmp ugt i32 %1, 2048
  br i1 %33, label %34, label %24

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.usb_bus, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void @dma_free_attrs(ptr noundef %36, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0) #7
  br label %37

37:                                               ; preds = %34, %24, %23, %10, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
