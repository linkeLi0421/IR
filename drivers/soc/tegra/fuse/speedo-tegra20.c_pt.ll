; ModuleID = '/llk/IR/drivers/soc/tegra/fuse/speedo-tegra20.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/speedo-tegra20.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cpu_process_speedos = internal unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 315, i32 366, i32 420, i32 -1], [4 x i32] [i32 303, i32 368, i32 419, i32 -1], [4 x i32] [i32 316, i32 331, i32 383, i32 -1]], section ".init.rodata", align 4
@soc_process_speedos = internal unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 165, i32 195, i32 224, i32 -1], [4 x i32] [i32 165, i32 195, i32 224, i32 -1], [4 x i32] [i32 165, i32 195, i32 224, i32 -1]], section ".init.rodata", align 4
@switch.table.tegra20_init_speedo_data = private unnamed_addr constant [9 x i32] [i32 2, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 2, i32 2], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra20_init_speedo_data(ptr nocapture noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4
  %7 = add i32 %6, -20
  %8 = icmp ult i32 %7, 9
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds [9 x i32], ptr @switch.table.tegra20_init_speedo_data, i32 0, i32 %7
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi i32 [ 0, %1 ], [ 1, %5 ], [ %11, %9 ]
  %14 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i32 [ 0, %12 ], [ %24, %15 ]
  %17 = phi i32 [ 29, %12 ], [ %25, %15 ]
  %18 = tail call i32 @tegra_fuse_read_spare(i32 noundef %17) #2
  %19 = add nuw nsw i32 %17, 10
  %20 = tail call i32 @tegra_fuse_read_spare(i32 noundef %19) #2
  %21 = or i32 %20, %18
  %22 = shl i32 %16, 1
  %23 = and i32 %21, 1
  %24 = or i32 %23, %22
  %25 = add nsw i32 %17, -1
  %26 = icmp ugt i32 %17, 20
  br i1 %26, label %15, label %27

27:                                               ; preds = %15
  %28 = shl i32 %24, 2
  %29 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %36, %27
  %32 = phi i32 [ 0, %27 ], [ %37, %36 ]
  %33 = getelementptr [3 x [4 x i32]], ptr @cpu_process_speedos, i32 0, i32 %30, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %28, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = add nuw nsw i32 %32, 1
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %31

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %32, %31 ], [ 3, %36 ]
  %41 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi i32 [ 0, %39 ], [ %51, %42 ]
  %44 = phi i32 [ 47, %39 ], [ %52, %42 ]
  %45 = tail call i32 @tegra_fuse_read_spare(i32 noundef %44) #2
  %46 = add nuw nsw i32 %44, 8
  %47 = tail call i32 @tegra_fuse_read_spare(i32 noundef %46) #2
  %48 = or i32 %47, %45
  %49 = shl i32 %43, 1
  %50 = and i32 %48, 1
  %51 = or i32 %50, %49
  %52 = add nsw i32 %44, -1
  %53 = icmp ugt i32 %44, 40
  br i1 %53, label %42, label %54

54:                                               ; preds = %42
  %55 = shl i32 %51, 2
  %56 = load i32, ptr %29, align 4
  br label %57

57:                                               ; preds = %62, %54
  %58 = phi i32 [ 0, %54 ], [ %63, %62 ]
  %59 = getelementptr [3 x [4 x i32]], ptr @soc_process_speedos, i32 0, i32 %56, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %55, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = add nuw nsw i32 %58, 1
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %57

65:                                               ; preds = %62, %57
  %66 = phi i32 [ %58, %57 ], [ 3, %62 ]
  %67 = getelementptr inbounds %struct.tegra_sku_info, ptr %0, i32 0, i32 5
  store i32 %66, ptr %67, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_spare(i32 noundef) local_unnamed_addr #1 section ".init.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind }

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
