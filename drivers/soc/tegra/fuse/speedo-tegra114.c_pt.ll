; ModuleID = '/llk/IR/drivers/soc/tegra/fuse/speedo-tegra114.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/speedo-tegra114.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cpu_process_speedos = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1695, i32 -1], [2 x i32] [i32 0, i32 -1]], section ".init.rodata", align 4
@soc_process_speedos = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1123, i32 -1], [2 x i32] [i32 0, i32 -1]], section ".init.rodata", align 4
@.str = private unnamed_addr constant [24 x i8] c"\013Tegra Unknown SKU %d\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra114_init_speedo_data(ptr nocapture noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  call fastcc void @rev_sku_to_speedo_ids(ptr noundef %0, ptr noundef nonnull %2) #4
  %3 = tail call i32 @tegra_fuse_read_early(i32 noundef 300) #5
  %4 = add i32 %3, 1024
  %5 = tail call i32 @tegra_fuse_read_early(i32 noundef 308) #5
  %6 = load i32, ptr %2, align 4
  br label %7

7:                                                ; preds = %7, %1
  %8 = phi i1 [ false, %1 ], [ true, %7 ]
  %9 = phi i32 [ 0, %1 ], [ 1, %7 ]
  %10 = getelementptr [2 x [2 x i32]], ptr @cpu_process_speedos, i32 0, i32 %6, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %4, %11
  %13 = or i1 %12, %8
  br i1 %13, label %14, label %7

14:                                               ; preds = %7
  %15 = select i1 %12, i32 %9, i32 2
  %16 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi i1 [ false, %14 ], [ true, %17 ]
  %19 = phi i32 [ 0, %14 ], [ 1, %17 ]
  %20 = getelementptr [2 x [2 x i32]], ptr @soc_process_speedos, i32 0, i32 %6, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %5, %21
  %23 = or i1 %22, %18
  br i1 %23, label %24, label %17

24:                                               ; preds = %17
  %25 = select i1 %22, i32 %19, i32 2
  %26 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 5
  store i32 %25, ptr %26, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rev_sku_to_speedo_ids(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 section ".init.text" {
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  switch i32 %3, label %7 [
    i32 0, label %9
    i32 16, label %9
    i32 5, label %9
    i32 6, label %9
    i32 3, label %6
    i32 4, label %6
  ]

6:                                                ; preds = %2, %2
  br label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3) #5
  br label %9

9:                                                ; preds = %7, %6, %2, %2, %2, %2
  %10 = phi i32 [ 0, %7 ], [ 2, %6 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ]
  %11 = phi i32 [ 0, %7 ], [ 1, %6 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 %10, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 %11, ptr %13, align 4
  store i32 %11, ptr %1, align 4
  %14 = icmp eq i32 %5, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = tail call i32 @tegra_fuse_read_early(i32 noundef 624) #5
  %17 = shl i32 %16, 1
  %18 = tail call i32 @tegra_fuse_read_early(i32 noundef 620) #5
  %19 = or i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 2
  store i32 0, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %15, %9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_early(i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

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
