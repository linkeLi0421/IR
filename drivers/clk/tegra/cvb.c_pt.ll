; ModuleID = '/llk/IR/drivers/clk/tegra/cvb.c_pt.bc'
source_filename = "../drivers/clk/tegra/cvb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cvb_table = type { i32, i32, i32, i32, i32, i32, [40 x %struct.cvb_table_freq_entry], %struct.cvb_cpu_dfll_data }
%struct.cvb_table_freq_entry = type { i32, %struct.cvb_coefficients }
%struct.cvb_coefficients = type { i32, i32, i32 }
%struct.cvb_cpu_dfll_data = type { i32, i32, i32, i32 }
%struct.rail_alignment = type { i32, i32 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_cvb_add_opp_table(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %117, label %10

10:                                               ; preds = %114, %8
  %11 = phi i32 [ %115, %114 ], [ 0, %8 ]
  %12 = getelementptr %struct.cvb_table, ptr %1, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, -1
  %15 = icmp eq i32 %13, %5
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %114

17:                                               ; preds = %10
  %18 = getelementptr %struct.cvb_table, ptr %1, i32 %11, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -1
  %21 = icmp eq i32 %19, %4
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %114

23:                                               ; preds = %17
  %24 = getelementptr %struct.cvb_table, ptr %1, i32 %11, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rail_alignment, ptr %3, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = getelementptr %struct.cvb_table, ptr %1, i32 %11, i32 3
  %31 = load i32, ptr %30, align 4
  br label %52

32:                                               ; preds = %23
  %33 = mul i32 %25, 1000
  %34 = load i32, ptr %3, align 4
  %35 = tail call i32 @llvm.smax.i32(i32 %33, i32 %34) #3
  %36 = sub i32 %35, %34
  %37 = add i32 %27, -1
  %38 = add i32 %37, %36
  %39 = srem i32 %38, %27
  %40 = sub i32 %34, %39
  %41 = add i32 %40, %38
  %42 = sdiv i32 %41, 1000
  %43 = getelementptr %struct.cvb_table, ptr %1, i32 %11, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = mul i32 %44, 1000
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 %34) #3
  %47 = sub i32 %46, %34
  %48 = srem i32 %47, %27
  %49 = sub i32 %34, %48
  %50 = add i32 %49, %47
  %51 = sdiv i32 %50, 1000
  br label %52

52:                                               ; preds = %32, %29
  %53 = phi i32 [ %42, %32 ], [ %25, %29 ]
  %54 = phi i32 [ %51, %32 ], [ %31, %29 ]
  %55 = getelementptr %struct.cvb_table, ptr %1, i32 %11, i32 4
  %56 = getelementptr %struct.cvb_table, ptr %1, i32 %11, i32 5
  br label %60

57:                                               ; preds = %66
  %58 = add nuw nsw i32 %61, 1
  %59 = icmp eq i32 %58, 40
  br i1 %59, label %117, label %60

60:                                               ; preds = %57, %52
  %61 = phi i32 [ 0, %52 ], [ %58, %57 ]
  %62 = getelementptr %struct.cvb_table, ptr %1, i32 %11, i32 6, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, -1
  %65 = icmp ult i32 %64, %7
  br i1 %65, label %66, label %117

66:                                               ; preds = %60
  %67 = load i32, ptr %55, align 4
  %68 = getelementptr %struct.cvb_table, ptr %1, i32 %11, i32 6, i32 %61, i32 1
  %69 = getelementptr %struct.cvb_table, ptr %1, i32 %11, i32 6, i32 %61, i32 1, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = mul i32 %70, %6
  %72 = icmp slt i32 %71, 1
  %73 = icmp sgt i32 %67, 0
  %74 = xor i1 %73, %72
  %75 = sdiv i32 %67, 2
  %76 = sdiv i32 %67, -2
  %77 = select i1 %74, i32 %75, i32 %76
  %78 = add i32 %77, %71
  %79 = sdiv i32 %78, %67
  %80 = getelementptr %struct.cvb_table, ptr %1, i32 %11, i32 6, i32 %61, i32 1, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, %79
  %83 = mul i32 %82, %6
  %84 = icmp slt i32 %83, 1
  %85 = xor i1 %73, %84
  %86 = select i1 %85, i32 %75, i32 %76
  %87 = add i32 %86, %83
  %88 = sdiv i32 %87, %67
  %89 = load i32, ptr %68, align 4
  %90 = add i32 %89, %88
  %91 = load i32, ptr %56, align 4
  %92 = load i32, ptr %26, align 4
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, i32 1000, i32 %92
  %95 = mul i32 %94, %91
  %96 = load i32, ptr %3, align 4
  %97 = mul i32 %96, %91
  %98 = mul i32 %90, 1000
  %99 = tail call i32 @llvm.smax.i32(i32 %98, i32 %97) #3
  %100 = xor i32 %97, -1
  %101 = add i32 %99, %100
  %102 = add i32 %101, %95
  %103 = sdiv i32 %102, %95
  %104 = mul i32 %103, %92
  %105 = add i32 %104, %96
  %106 = sdiv i32 %105, 1000
  %107 = tail call i32 @llvm.smax.i32(i32 %106, i32 %53) #3
  %108 = tail call i32 @llvm.smin.i32(i32 %107, i32 %54) #3
  %109 = mul i32 %108, 1000
  %110 = tail call i32 @dev_pm_opp_add(ptr noundef %0, i32 noundef %63, i32 noundef %109) #3
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %57, label %112

112:                                              ; preds = %66
  %113 = inttoptr i32 %110 to ptr
  br label %117

114:                                              ; preds = %17, %10
  %115 = add nuw i32 %11, 1
  %116 = icmp eq i32 %115, %2
  br i1 %116, label %117, label %10

117:                                              ; preds = %114, %112, %60, %57, %8
  %118 = phi ptr [ %113, %112 ], [ inttoptr (i32 -22 to ptr), %8 ], [ %12, %60 ], [ %12, %57 ], [ inttoptr (i32 -22 to ptr), %114 ]
  ret ptr %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_cvb_remove_opp_table(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %10, %3
  %5 = phi i32 [ 0, %3 ], [ %11, %10 ]
  %6 = getelementptr %struct.cvb_table, ptr %1, i32 0, i32 6, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, %2
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  tail call void @dev_pm_opp_remove(ptr noundef %0, i32 noundef %7) #3
  %11 = add nuw nsw i32 %5, 1
  %12 = icmp eq i32 %11, 40
  br i1 %12, label %13, label %4

13:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
