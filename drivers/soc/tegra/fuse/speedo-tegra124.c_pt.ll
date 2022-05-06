; ModuleID = '/llk/IR/drivers/soc/tegra/fuse/speedo-tegra124.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/speedo-tegra124.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"\014Tegra Warning: Speedo value not fused.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"drivers/soc/tegra/fuse/speedo-tegra124.c\00", align 1
@gpu_process_speedos = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1965, i32 -1], [2 x i32] [i32 0, i32 -1]], section ".init.rodata", align 4
@cpu_process_speedos = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 2190, i32 -1], [2 x i32] [i32 0, i32 -1]], section ".init.rodata", align 4
@soc_process_speedos = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 2101, i32 -1], [2 x i32] [i32 0, i32 -1]], section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"\013Tegra Unknown SKU %d\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra124_init_speedo_data(ptr nocapture noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call i32 @tegra_fuse_read_early(i32 noundef 20) #5
  %4 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 3
  store i32 %3, ptr %4, align 4
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 116, i32 noundef 9, ptr noundef null) #4
  br label %47

8:                                                ; preds = %1
  %9 = tail call i32 @tegra_fuse_read_early(i32 noundef 48) #5
  %10 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 10
  store i32 %9, ptr %10, align 4
  %11 = tail call i32 @tegra_fuse_read_early(i32 noundef 52) #5
  call fastcc void @rev_sku_to_speedo_ids(ptr noundef %0, ptr noundef nonnull %2) #6
  %12 = tail call i32 @tegra_fuse_read_early(i32 noundef 24) #5
  %13 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr %10, align 4
  %15 = load i32, ptr %2, align 4
  br label %16

16:                                               ; preds = %16, %8
  %17 = phi i1 [ false, %8 ], [ true, %16 ]
  %18 = phi i32 [ 0, %8 ], [ 1, %16 ]
  %19 = getelementptr [2 x [2 x i32]], ptr @gpu_process_speedos, i32 0, i32 %15, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %14, %20
  %22 = or i1 %21, %17
  br i1 %22, label %23, label %16

23:                                               ; preds = %16
  %24 = select i1 %21, i32 %18, i32 2
  %25 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 8
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %4, align 4
  br label %27

27:                                               ; preds = %27, %23
  %28 = phi i1 [ false, %23 ], [ true, %27 ]
  %29 = phi i32 [ 0, %23 ], [ 1, %27 ]
  %30 = getelementptr [2 x [2 x i32]], ptr @cpu_process_speedos, i32 0, i32 %15, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %26, %31
  %33 = or i1 %32, %28
  br i1 %33, label %34, label %27

34:                                               ; preds = %27
  %35 = select i1 %32, i32 %29, i32 2
  %36 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i1 [ false, %34 ], [ true, %37 ]
  %39 = phi i32 [ 0, %34 ], [ 1, %37 ]
  %40 = getelementptr [2 x [2 x i32]], ptr @soc_process_speedos, i32 0, i32 %15, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %11, %41
  %43 = or i1 %42, %38
  br i1 %43, label %44, label %37

44:                                               ; preds = %37
  %45 = select i1 %42, i32 %39, i32 2
  %46 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 5
  store i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_early(i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rev_sku_to_speedo_ids(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 section ".init.text" {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 9
  store i32 0, ptr %6, align 4
  store i32 0, ptr %1, align 4
  switch i32 %3, label %11 [
    i32 0, label %13
    i32 15, label %13
    i32 35, label %13
    i32 131, label %7
    i32 31, label %8
    i32 135, label %8
    i32 39, label %8
    i32 129, label %9
    i32 33, label %9
    i32 7, label %9
    i32 73, label %10
    i32 74, label %10
    i32 72, label %10
  ]

7:                                                ; preds = %2
  store i32 2, ptr %4, align 4
  br label %13

8:                                                ; preds = %2, %2, %2
  store i32 2, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 1, ptr %6, align 4
  store i32 0, ptr %1, align 4
  br label %13

9:                                                ; preds = %2, %2, %2
  store i32 1, ptr %4, align 4
  store i32 1, ptr %5, align 4
  store i32 1, ptr %6, align 4
  store i32 1, ptr %1, align 4
  br label %13

10:                                               ; preds = %2, %2, %2
  store i32 4, ptr %4, align 4
  store i32 2, ptr %5, align 4
  store i32 3, ptr %6, align 4
  store i32 1, ptr %1, align 4
  br label %13

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %3) #5
  br label %13

13:                                               ; preds = %11, %10, %9, %8, %7, %2, %2, %2
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { cold }

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
