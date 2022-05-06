; ModuleID = '/llk/IR/drivers/soc/tegra/fuse/speedo-tegra30.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/speedo-tegra30.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cpu_process_speedos = internal unnamed_addr constant [12 x [6 x i32]] [[6 x i32] [i32 306, i32 338, i32 360, i32 376, i32 -1, i32 0], [6 x i32] [i32 295, i32 336, i32 358, i32 375, i32 -1, i32 0], [6 x i32] [i32 325, i32 325, i32 358, i32 375, i32 -1, i32 0], [6 x i32] [i32 325, i32 325, i32 358, i32 375, i32 -1, i32 0], [6 x i32] [i32 292, i32 324, i32 348, i32 364, i32 -1, i32 0], [6 x i32] [i32 324, i32 324, i32 348, i32 364, i32 -1, i32 0], [6 x i32] [i32 324, i32 324, i32 348, i32 364, i32 -1, i32 0], [6 x i32] [i32 295, i32 336, i32 358, i32 375, i32 -1, i32 0], [6 x i32] [i32 358, i32 358, i32 358, i32 358, i32 397, i32 -1], [6 x i32] [i32 364, i32 364, i32 364, i32 364, i32 397, i32 -1], [6 x i32] [i32 295, i32 336, i32 358, i32 375, i32 391, i32 -1], [6 x i32] [i32 295, i32 336, i32 358, i32 375, i32 391, i32 -1]], section ".init.rodata", align 4
@threshold_index = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str = private unnamed_addr constant [42 x i8] c"\014Tegra CPU speedo value %3d out of range\00", align 1
@soc_process_speedos = internal unnamed_addr constant [12 x [1 x i32]] [[1 x i32] [i32 180], [1 x i32] [i32 170], [1 x i32] [i32 195], [1 x i32] [i32 180], [1 x i32] [i32 168], [1 x i32] [i32 192], [1 x i32] [i32 180], [1 x i32] [i32 170], [1 x i32] [i32 195], [1 x i32] [i32 180], [1 x i32] [i32 180], [1 x i32] [i32 180]], section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"\014Tegra SoC speedo value %3d out of range\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\013Tegra Unknown pkg %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\014Tegra Unknown SKU %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\014Tegra Unknown chip rev %d\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra30_init_speedo_data(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  tail call fastcc void @rev_sku_to_speedo_ids(ptr noundef %0) #4
  call fastcc void @fuse_speedo_calib(ptr noundef nonnull %2, ptr noundef nonnull %3) #4
  %4 = load i32, ptr %2, align 4
  %5 = load i32, ptr @threshold_index, align 4
  br label %8

6:                                                ; preds = %13
  %7 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 1
  store i32 5, ptr %7, align 4
  br label %24

8:                                                ; preds = %13, %1
  %9 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %10 = getelementptr [12 x [6 x i32]], ptr @cpu_process_speedos, i32 0, i32 %5, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %4, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i32 %9, 1
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %6, label %8

16:                                               ; preds = %8
  %17 = add nsw i32 %9, -1
  %18 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = icmp eq i32 %9, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %4) #5
  store i32 0, ptr %18, align 4
  %22 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 1, ptr %22, align 4
  %23 = load i32, ptr @threshold_index, align 4
  br label %24

24:                                               ; preds = %20, %16, %6
  %25 = phi i32 [ %5, %6 ], [ %23, %20 ], [ %5, %16 ]
  %26 = load i32, ptr %3, align 4
  %27 = getelementptr [12 x [1 x i32]], ptr @soc_process_speedos, i32 0, i32 %25
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %26, %28
  %30 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 5
  br i1 %29, label %32, label %31

31:                                               ; preds = %24
  store i32 0, ptr %30, align 4
  br label %35

32:                                               ; preds = %24
  store i32 -1, ptr %30, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %26) #5
  store i32 0, ptr %30, align 4
  %34 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 1, ptr %34, align 4
  br label %35

35:                                               ; preds = %32, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rev_sku_to_speedo_ids(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call i32 @tegra_fuse_read_early(i32 noundef 252) #5
  %3 = and i32 %2, 15
  %4 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %66 [
    i32 1, label %6
    i32 2, label %9
    i32 3, label %9
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 0, ptr %8, align 4
  store i32 0, ptr @threshold_index, align 4
  br label %70

9:                                                ; preds = %1, %1
  %10 = load i32, ptr %0, align 4
  switch i32 %10, label %62 [
    i32 135, label %11
    i32 130, label %11
    i32 129, label %14
    i32 128, label %23
    i32 131, label %32
    i32 143, label %41
    i32 8, label %44
    i32 2, label %47
    i32 4, label %50
    i32 0, label %53
  ]

11:                                               ; preds = %9, %9
  %12 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 1, ptr %13, align 4
  store i32 1, ptr @threshold_index, align 4
  br label %70

14:                                               ; preds = %9
  switch i32 %3, label %21 [
    i32 1, label %15
    i32 2, label %18
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 2, ptr %17, align 4
  store i32 2, ptr @threshold_index, align 4
  br label %70

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 1, ptr %20, align 4
  store i32 7, ptr @threshold_index, align 4
  br label %70

21:                                               ; preds = %14
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #5
  br label %70

23:                                               ; preds = %9
  switch i32 %3, label %30 [
    i32 1, label %24
    i32 2, label %27
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 5, ptr %25, align 4
  %26 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 2, ptr %26, align 4
  store i32 8, ptr @threshold_index, align 4
  br label %70

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 6, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 2, ptr %29, align 4
  store i32 9, ptr @threshold_index, align 4
  br label %70

30:                                               ; preds = %23
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #5
  br label %70

32:                                               ; preds = %9
  switch i32 %3, label %39 [
    i32 1, label %33
    i32 2, label %36
  ]

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 7, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 1, ptr %35, align 4
  store i32 10, ptr @threshold_index, align 4
  br label %70

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 2, ptr %38, align 4
  store i32 3, ptr @threshold_index, align 4
  br label %70

39:                                               ; preds = %32
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #5
  br label %70

41:                                               ; preds = %9
  %42 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 8, ptr %42, align 4
  %43 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 1, ptr %43, align 4
  store i32 11, ptr @threshold_index, align 4
  br label %70

44:                                               ; preds = %9
  %45 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 1, ptr %46, align 4
  store i32 4, ptr @threshold_index, align 4
  br label %70

47:                                               ; preds = %9
  %48 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 2, ptr %49, align 4
  store i32 5, ptr @threshold_index, align 4
  br label %70

50:                                               ; preds = %9
  %51 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 3, ptr %51, align 4
  %52 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 2, ptr %52, align 4
  store i32 6, ptr @threshold_index, align 4
  br label %70

53:                                               ; preds = %9
  switch i32 %3, label %60 [
    i32 1, label %54
    i32 2, label %57
  ]

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 2, ptr %55, align 4
  %56 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 2, ptr %56, align 4
  store i32 2, ptr @threshold_index, align 4
  br label %70

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 3, ptr %58, align 4
  %59 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 2, ptr %59, align 4
  store i32 3, ptr @threshold_index, align 4
  br label %70

60:                                               ; preds = %53
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #5
  br label %70

62:                                               ; preds = %9
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %10) #5
  %64 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 0, ptr %65, align 4
  store i32 0, ptr @threshold_index, align 4
  br label %70

66:                                               ; preds = %1
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %5) #5
  %68 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 0, ptr %69, align 4
  store i32 0, ptr @threshold_index, align 4
  br label %70

70:                                               ; preds = %66, %62, %60, %57, %54, %50, %47, %44, %41, %39, %36, %33, %30, %27, %24, %21, %18, %15, %11, %6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @fuse_speedo_calib(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call i32 @tegra_fuse_read_early(i32 noundef 20) #5
  %4 = shl i32 %3, 2
  %5 = and i32 %4, 262140
  store i32 %5, ptr %1, align 4
  %6 = lshr i32 %3, 14
  %7 = and i32 %6, 262140
  store i32 %7, ptr %0, align 4
  %8 = tail call i32 @tegra_fuse_read_early(i32 noundef 40) #5
  %9 = icmp sgt i32 %8, 25
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = tail call i32 @tegra_fuse_read_spare(i32 noundef 62) #5
  %12 = tail call i32 @tegra_fuse_read_spare(i32 noundef 63) #5
  %13 = or i32 %12, %11
  %14 = tail call i32 @tegra_fuse_read_spare(i32 noundef 64) #5
  %15 = tail call i32 @tegra_fuse_read_spare(i32 noundef 65) #5
  %16 = or i32 %15, %14
  %17 = shl i32 %13, 1
  %18 = or i32 %16, %17
  %19 = load i32, ptr %1, align 4
  %20 = or i32 %18, %19
  store i32 %20, ptr %1, align 4
  %21 = tail call i32 @tegra_fuse_read_spare(i32 noundef 58) #5
  %22 = tail call i32 @tegra_fuse_read_spare(i32 noundef 59) #5
  %23 = or i32 %22, %21
  %24 = tail call i32 @tegra_fuse_read_spare(i32 noundef 60) #5
  %25 = tail call i32 @tegra_fuse_read_spare(i32 noundef 61) #5
  %26 = or i32 %25, %24
  %27 = shl i32 %23, 1
  %28 = or i32 %26, %27
  %29 = load i32, ptr %0, align 4
  br label %34

30:                                               ; preds = %2
  %31 = load i32, ptr %1, align 4
  %32 = or i32 %31, 3
  store i32 %32, ptr %1, align 4
  %33 = load i32, ptr %0, align 4
  br label %34

34:                                               ; preds = %30, %10
  %35 = phi i32 [ 3, %30 ], [ %29, %10 ]
  %36 = phi i32 [ %33, %30 ], [ %28, %10 ]
  %37 = or i32 %36, %35
  store i32 %37, ptr %0, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_early(i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_spare(i32 noundef) local_unnamed_addr #2 section ".init.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold }
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
!8 = !{!"auto-init"}
