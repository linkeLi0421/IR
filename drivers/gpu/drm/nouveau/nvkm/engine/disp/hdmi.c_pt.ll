; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/hdmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.packed_hdmi_infoframe = type { i32, i32, i32, i32, i32 }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @pack_hdmi_infoframe(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %2, label %4 [
    i32 0, label %141
    i32 16, label %9
    i32 15, label %16
    i32 14, label %22
    i32 13, label %28
    i32 12, label %36
    i32 11, label %44
    i32 10, label %51
    i32 9, label %58
    i32 8, label %67
    i32 7, label %75
    i32 6, label %83
    i32 5, label %93
    i32 4, label %103
    i32 3, label %112
    i32 2, label %121
    i32 1, label %132
  ]

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %1, i32 16
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  br label %9

9:                                                ; preds = %4, %3
  %10 = phi i32 [ %8, %4 ], [ 0, %3 ]
  %11 = getelementptr i8, ptr %1, i32 15
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %14, %10
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi i32 [ %15, %9 ], [ 0, %3 ]
  %18 = getelementptr i8, ptr %1, i32 14
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i32 [ %21, %16 ], [ 0, %3 ]
  %24 = getelementptr i8, ptr %1, i32 13
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  br label %28

28:                                               ; preds = %22, %3
  %29 = phi i32 [ %27, %22 ], [ 0, %3 ]
  %30 = phi i32 [ %23, %22 ], [ 0, %3 ]
  %31 = getelementptr i8, ptr %1, i32 12
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 16
  %35 = or i32 %34, %29
  br label %36

36:                                               ; preds = %28, %3
  %37 = phi i32 [ %35, %28 ], [ 0, %3 ]
  %38 = phi i32 [ %30, %28 ], [ 0, %3 ]
  %39 = getelementptr i8, ptr %1, i32 11
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = or i32 %42, %37
  br label %44

44:                                               ; preds = %36, %3
  %45 = phi i32 [ %43, %36 ], [ 0, %3 ]
  %46 = phi i32 [ %38, %36 ], [ 0, %3 ]
  %47 = getelementptr i8, ptr %1, i32 10
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %45, %49
  br label %51

51:                                               ; preds = %44, %3
  %52 = phi i32 [ %50, %44 ], [ 0, %3 ]
  %53 = phi i32 [ %46, %44 ], [ 0, %3 ]
  %54 = getelementptr i8, ptr %1, i32 9
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 16
  br label %58

58:                                               ; preds = %51, %3
  %59 = phi i32 [ %57, %51 ], [ 0, %3 ]
  %60 = phi i32 [ %52, %51 ], [ 0, %3 ]
  %61 = phi i32 [ %53, %51 ], [ 0, %3 ]
  %62 = getelementptr i8, ptr %1, i32 8
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 8
  %66 = or i32 %65, %59
  br label %67

67:                                               ; preds = %58, %3
  %68 = phi i32 [ %66, %58 ], [ 0, %3 ]
  %69 = phi i32 [ %60, %58 ], [ 0, %3 ]
  %70 = phi i32 [ %61, %58 ], [ 0, %3 ]
  %71 = getelementptr i8, ptr %1, i32 7
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %68, %73
  br label %75

75:                                               ; preds = %67, %3
  %76 = phi i32 [ %74, %67 ], [ 0, %3 ]
  %77 = phi i32 [ %69, %67 ], [ 0, %3 ]
  %78 = phi i32 [ %70, %67 ], [ 0, %3 ]
  %79 = getelementptr i8, ptr %1, i32 6
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl nuw i32 %81, 24
  br label %83

83:                                               ; preds = %75, %3
  %84 = phi i32 [ %82, %75 ], [ 0, %3 ]
  %85 = phi i32 [ %76, %75 ], [ 0, %3 ]
  %86 = phi i32 [ %77, %75 ], [ 0, %3 ]
  %87 = phi i32 [ %78, %75 ], [ 0, %3 ]
  %88 = getelementptr i8, ptr %1, i32 5
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 16
  %92 = or i32 %91, %84
  br label %93

93:                                               ; preds = %83, %3
  %94 = phi i32 [ %92, %83 ], [ 0, %3 ]
  %95 = phi i32 [ %85, %83 ], [ 0, %3 ]
  %96 = phi i32 [ %86, %83 ], [ 0, %3 ]
  %97 = phi i32 [ %87, %83 ], [ 0, %3 ]
  %98 = getelementptr i8, ptr %1, i32 4
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 8
  %102 = or i32 %101, %94
  br label %103

103:                                              ; preds = %93, %3
  %104 = phi i32 [ %102, %93 ], [ 0, %3 ]
  %105 = phi i32 [ %95, %93 ], [ 0, %3 ]
  %106 = phi i32 [ %96, %93 ], [ 0, %3 ]
  %107 = phi i32 [ %97, %93 ], [ 0, %3 ]
  %108 = getelementptr i8, ptr %1, i32 3
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %104, %110
  br label %112

112:                                              ; preds = %103, %3
  %113 = phi i32 [ %111, %103 ], [ 0, %3 ]
  %114 = phi i32 [ %105, %103 ], [ 0, %3 ]
  %115 = phi i32 [ %106, %103 ], [ 0, %3 ]
  %116 = phi i32 [ %107, %103 ], [ 0, %3 ]
  %117 = getelementptr i8, ptr %1, i32 2
  %118 = load i8, ptr %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 16
  br label %121

121:                                              ; preds = %112, %3
  %122 = phi i32 [ %120, %112 ], [ 0, %3 ]
  %123 = phi i32 [ %113, %112 ], [ 0, %3 ]
  %124 = phi i32 [ %114, %112 ], [ 0, %3 ]
  %125 = phi i32 [ %115, %112 ], [ 0, %3 ]
  %126 = phi i32 [ %116, %112 ], [ 0, %3 ]
  %127 = getelementptr i8, ptr %1, i32 1
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i32
  %130 = shl nuw nsw i32 %129, 8
  %131 = or i32 %130, %122
  br label %132

132:                                              ; preds = %121, %3
  %133 = phi i32 [ %131, %121 ], [ 0, %3 ]
  %134 = phi i32 [ %123, %121 ], [ 0, %3 ]
  %135 = phi i32 [ %124, %121 ], [ 0, %3 ]
  %136 = phi i32 [ %125, %121 ], [ 0, %3 ]
  %137 = phi i32 [ %126, %121 ], [ 0, %3 ]
  %138 = load i8, ptr %1, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %133, %139
  br label %141

141:                                              ; preds = %132, %3
  %142 = phi i32 [ %140, %132 ], [ %2, %3 ]
  %143 = phi i32 [ %134, %132 ], [ %2, %3 ]
  %144 = phi i32 [ %135, %132 ], [ %2, %3 ]
  %145 = phi i32 [ %136, %132 ], [ %2, %3 ]
  %146 = phi i32 [ %137, %132 ], [ %2, %3 ]
  store i32 %142, ptr %0, align 4
  %147 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %0, i32 0, i32 1
  store i32 %143, ptr %147, align 4
  %148 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %0, i32 0, i32 2
  store i32 %144, ptr %148, align 4
  %149 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %0, i32 0, i32 3
  store i32 %145, ptr %149, align 4
  %150 = getelementptr inbounds %struct.packed_hdmi_infoframe, ptr %0, i32 0, i32 4
  store i32 %146, ptr %150, align 4
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
