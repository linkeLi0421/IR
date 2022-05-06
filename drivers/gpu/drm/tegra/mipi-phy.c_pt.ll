; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/mipi-phy.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/mipi-phy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @mipi_dphy_timing_get_default(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  store i32 0, ptr %0, align 4
  %3 = mul i32 %1, 52
  %4 = add i32 %3, 70
  %5 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 1
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 2
  store i32 8, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 3
  store i32 65, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 4
  store i32 95, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 5
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 6
  store i32 80, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 7
  store i32 260, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 8
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 9
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 10
  store i32 120, ptr %14, align 4
  %15 = mul i32 %1, 5
  %16 = add i32 %15, 65
  %17 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 11
  store i32 %16, ptr %17, align 4
  %18 = add i32 %15, 145
  %19 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 12
  store i32 %18, ptr %19, align 4
  %20 = mul i32 %1, 6
  %21 = add i32 %20, 85
  %22 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 13
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 14
  store i32 40, ptr %23, align 4
  %24 = shl i32 %1, 5
  %25 = shl i32 %1, 4
  %26 = add i32 %25, 60
  %27 = tail call i32 @llvm.umax.i32(i32 %24, i32 %26)
  %28 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 16
  store i32 100000, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 17
  store i32 60, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 18
  store i32 300, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 19
  store i32 240, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 20
  store i32 120, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 21
  store i32 1000000, ptr %34, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @mipi_dphy_timing_validate(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp ugt i32 %3, 60
  br i1 %4, label %120, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %1, 52
  %9 = add i32 %8, 60
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %120, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, 8
  br i1 %14, label %120, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -96
  %19 = icmp ult i32 %18, -58
  br i1 %19, label %120, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -301
  %24 = icmp ult i32 %23, -206
  br i1 %24, label %120, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, 38
  br i1 %28, label %120, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, 60
  br i1 %32, label %120, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %17
  %37 = icmp ult i32 %36, 300
  br i1 %37, label %120, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = shl i32 %1, 2
  %42 = add i32 %41, 35
  %43 = icmp ugt i32 %40, %42
  br i1 %43, label %120, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %1, 12
  %48 = add i32 %47, 105
  %49 = icmp ugt i32 %46, %48
  br i1 %49, label %120, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %52, 100
  br i1 %53, label %120, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %41, 40
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %120, label %59

59:                                               ; preds = %54
  %60 = mul i32 %1, 6
  %61 = add i32 %60, 85
  %62 = icmp ugt i32 %56, %61
  br i1 %62, label %120, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 12
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %56
  %67 = mul i32 %1, 10
  %68 = add i32 %67, 145
  %69 = icmp ult i32 %66, %68
  br i1 %69, label %120, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 13
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %72, %61
  %74 = icmp ugt i32 %72, %68
  %75 = or i1 %73, %74
  br i1 %75, label %120, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 14
  %78 = load i32, ptr %77, align 4
  %79 = icmp ult i32 %78, 40
  %80 = add i32 %41, 55
  %81 = icmp ugt i32 %78, %80
  %82 = or i1 %79, %81
  br i1 %82, label %120, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 15
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 %1, 3
  %87 = add i32 %41, 60
  %88 = tail call i32 @llvm.umax.i32(i32 %86, i32 %87)
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %120, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 16
  %92 = load i32, ptr %91, align 4
  %93 = icmp ult i32 %92, 100000
  br i1 %93, label %120, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 17
  %96 = load i32, ptr %95, align 4
  %97 = icmp ult i32 %96, 50
  br i1 %97, label %120, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 18
  %100 = load i32, ptr %99, align 4
  %101 = mul i32 %96, 5
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 19
  %105 = load i32, ptr %104, align 4
  %106 = shl i32 %96, 2
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 20
  %110 = load i32, ptr %109, align 4
  %111 = icmp ult i32 %110, %96
  %112 = shl i32 %96, 1
  %113 = icmp ugt i32 %110, %112
  %114 = or i1 %111, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.mipi_dphy_timing, ptr %0, i32 0, i32 21
  %117 = load i32, ptr %116, align 4
  %118 = icmp ult i32 %117, 1000000
  %119 = select i1 %118, i32 -22, i32 0
  br label %120

120:                                              ; preds = %115, %108, %103, %98, %94, %90, %83, %76, %70, %63, %59, %54, %50, %44, %38, %33, %29, %25, %20, %15, %11, %5, %2
  %121 = phi i32 [ -22, %2 ], [ -22, %5 ], [ -22, %11 ], [ -22, %15 ], [ -22, %20 ], [ -22, %25 ], [ -22, %29 ], [ -22, %33 ], [ -22, %38 ], [ -22, %44 ], [ -22, %50 ], [ -22, %59 ], [ -22, %54 ], [ -22, %63 ], [ -22, %70 ], [ -22, %76 ], [ -22, %83 ], [ -22, %90 ], [ -22, %94 ], [ -22, %98 ], [ -22, %103 ], [ -22, %108 ], [ %119, %115 ]
  ret i32 %121
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

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
