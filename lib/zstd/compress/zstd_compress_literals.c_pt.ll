; ModuleID = '/llk/IR/lib/zstd/compress/zstd_compress_literals.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_compress_literals.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.ZSTD_hufCTables_t = type { [256 x %struct.HUF_CElt_s], i32 }
%struct.HUF_CElt_s = type { i16, i8 }

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_noCompressLiterals(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i32 %3, 31
  %6 = select i1 %5, i32 2, i32 1
  %7 = icmp ugt i32 %3, 4095
  %8 = zext i1 %7 to i32
  %9 = add nuw nsw i32 %6, %8
  %10 = add i32 %9, %3
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  switch i32 %9, label %23 [
    i32 1, label %13
    i32 2, label %16
    i32 3, label %20
  ]

13:                                               ; preds = %12
  %14 = trunc i32 %3 to i8
  %15 = shl i8 %14, 3
  store i8 %15, ptr %0, align 1
  br label %23

16:                                               ; preds = %12
  %17 = trunc i32 %3 to i16
  %18 = shl i16 %17, 4
  %19 = or i16 %18, 4
  store i16 %19, ptr %0, align 1
  br label %23

20:                                               ; preds = %12
  %21 = shl i32 %3, 4
  %22 = or i32 %21, 12
  store i32 %22, ptr %0, align 1
  br label %23

23:                                               ; preds = %20, %16, %13, %12
  %24 = getelementptr i8, ptr %0, i32 %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr align 1 %2, i32 %3, i1 false)
  br label %25

25:                                               ; preds = %23, %4
  %26 = phi i32 [ %10, %23 ], [ -70, %4 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_compressRleLiteralsBlock(ptr nocapture noundef writeonly %0, i32 %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = icmp ugt i32 %3, 31
  %6 = select i1 %5, i32 2, i32 1
  %7 = icmp ugt i32 %3, 4095
  %8 = zext i1 %7 to i32
  %9 = add nuw nsw i32 %6, %8
  switch i32 %9, label %21 [
    i32 1, label %10
    i32 2, label %14
    i32 3, label %18
  ]

10:                                               ; preds = %4
  %11 = trunc i32 %3 to i8
  %12 = shl i8 %11, 3
  %13 = or i8 %12, 1
  store i8 %13, ptr %0, align 1
  br label %21

14:                                               ; preds = %4
  %15 = trunc i32 %3 to i16
  %16 = shl i16 %15, 4
  %17 = or i16 %16, 5
  store i16 %17, ptr %0, align 1
  br label %21

18:                                               ; preds = %4
  %19 = shl i32 %3, 4
  %20 = or i32 %19, 13
  store i32 %20, ptr %0, align 1
  br label %21

21:                                               ; preds = %18, %14, %10, %4
  %22 = load i8, ptr %2, align 1
  %23 = getelementptr i8, ptr %0, i32 %9
  store i8 %22, ptr %23, align 1
  %24 = add nuw nsw i32 %9, 1
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ZSTD_compressLiterals(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #4 {
  %12 = alloca i32, align 4
  %13 = icmp ugt i32 %2, 7
  %14 = add i32 %2, -1
  %15 = select i1 %13, i32 %14, i32 6
  %16 = lshr i32 %7, %15
  %17 = icmp ugt i32 %7, 1023
  %18 = select i1 %17, i32 4, i32 3
  %19 = icmp ugt i32 %7, 16383
  %20 = zext i1 %19 to i32
  %21 = add nuw nsw i32 %18, %20
  %22 = icmp ult i32 %7, 256
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(1028) %1, ptr noundef align 4 dereferenceable(1028) %0, i32 1028, i1 false)
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %11
  %25 = icmp ugt i32 %7, 31
  %26 = select i1 %25, i32 2, i32 1
  %27 = icmp ugt i32 %7, 4095
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %26, %28
  %30 = add i32 %29, %7
  %31 = icmp ugt i32 %30, %5
  br i1 %31, label %157, label %32

32:                                               ; preds = %24
  switch i32 %29, label %43 [
    i32 1, label %33
    i32 2, label %36
    i32 3, label %40
  ]

33:                                               ; preds = %32
  %34 = trunc i32 %7 to i8
  %35 = shl i8 %34, 3
  store i8 %35, ptr %4, align 1
  br label %43

36:                                               ; preds = %32
  %37 = trunc i32 %7 to i16
  %38 = shl i16 %37, 4
  %39 = or i16 %38, 4
  store i16 %39, ptr %4, align 1
  br label %43

40:                                               ; preds = %32
  %41 = shl i32 %7, 4
  %42 = or i32 %41, 12
  store i32 %42, ptr %4, align 1
  br label %43

43:                                               ; preds = %40, %36, %33, %32
  %44 = getelementptr i8, ptr %4, i32 %29
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 1 %6, i32 %7, i1 false) #6
  br label %157

45:                                               ; preds = %11
  %46 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %0, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 2
  %49 = select i1 %48, i32 6, i32 63
  %50 = icmp ult i32 %49, %7
  br i1 %50, label %72, label %51

51:                                               ; preds = %45
  %52 = icmp ugt i32 %7, 31
  %53 = select i1 %52, i32 2, i32 1
  %54 = icmp ugt i32 %7, 4095
  %55 = zext i1 %54 to i32
  %56 = add nuw nsw i32 %53, %55
  %57 = add i32 %56, %7
  %58 = icmp ugt i32 %57, %5
  br i1 %58, label %157, label %59

59:                                               ; preds = %51
  switch i32 %56, label %70 [
    i32 1, label %60
    i32 2, label %63
    i32 3, label %67
  ]

60:                                               ; preds = %59
  %61 = trunc i32 %7 to i8
  %62 = shl i8 %61, 3
  store i8 %62, ptr %4, align 1
  br label %70

63:                                               ; preds = %59
  %64 = trunc i32 %7 to i16
  %65 = shl i16 %64, 4
  %66 = or i16 %65, 4
  store i16 %66, ptr %4, align 1
  br label %70

67:                                               ; preds = %59
  %68 = shl i32 %7, 4
  %69 = or i32 %68, 12
  store i32 %69, ptr %4, align 1
  br label %70

70:                                               ; preds = %67, %63, %60, %59
  %71 = getelementptr i8, ptr %4, i32 %56
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %71, ptr align 1 %6, i32 %7, i1 false) #6
  br label %157

72:                                               ; preds = %45
  %73 = icmp ult i32 %21, %5
  br i1 %73, label %74, label %157

74:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 %47, ptr %12, align 4
  %75 = icmp ult i32 %2, 4
  %76 = icmp ult i32 %7, 1025
  %77 = and i1 %75, %76
  %78 = zext i1 %77 to i32
  %79 = icmp eq i32 %21, 3
  %80 = select i1 %48, i1 %79, i1 false
  %81 = or i1 %22, %80
  %82 = getelementptr i8, ptr %4, i32 %21
  %83 = sub i32 %5, %21
  br i1 %81, label %84, label %86

84:                                               ; preds = %74
  %85 = call i32 @HUF_compress1X_repeat(ptr noundef %82, i32 noundef %83, ptr noundef %6, i32 noundef %7, i32 noundef 255, i32 noundef 11, ptr noundef %8, i32 noundef %9, ptr noundef %1, ptr noundef nonnull %12, i32 noundef %78, i32 noundef %10) #6
  br label %88

86:                                               ; preds = %74
  %87 = call i32 @HUF_compress4X_repeat(ptr noundef %82, i32 noundef %83, ptr noundef %6, i32 noundef %7, i32 noundef 255, i32 noundef 11, ptr noundef %8, i32 noundef %9, ptr noundef %1, ptr noundef nonnull %12, i32 noundef %78, i32 noundef %10) #6
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load i32, ptr %12, align 4
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 2, i32 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  %93 = add i32 %7, -2
  %94 = sub i32 %93, %16
  %95 = icmp ult i32 %89, %94
  %96 = add i32 %89, -1
  %97 = icmp ult i32 %96, -120
  %98 = and i1 %95, %97
  br i1 %98, label %120, label %99

99:                                               ; preds = %88
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(1028) %1, ptr noundef align 4 dereferenceable(1028) %0, i32 1028, i1 false)
  %100 = icmp ugt i32 %7, 31
  %101 = select i1 %100, i32 2, i32 1
  %102 = icmp ugt i32 %7, 4095
  %103 = zext i1 %102 to i32
  %104 = add nuw nsw i32 %101, %103
  %105 = add i32 %104, %7
  %106 = icmp ugt i32 %105, %5
  br i1 %106, label %157, label %107

107:                                              ; preds = %99
  switch i32 %104, label %118 [
    i32 1, label %108
    i32 2, label %111
    i32 3, label %115
  ]

108:                                              ; preds = %107
  %109 = trunc i32 %7 to i8
  %110 = shl i8 %109, 3
  store i8 %110, ptr %4, align 1
  br label %118

111:                                              ; preds = %107
  %112 = trunc i32 %7 to i16
  %113 = shl i16 %112, 4
  %114 = or i16 %113, 4
  store i16 %114, ptr %4, align 1
  br label %118

115:                                              ; preds = %107
  %116 = shl i32 %7, 4
  %117 = or i32 %116, 12
  store i32 %117, ptr %4, align 1
  br label %118

118:                                              ; preds = %115, %111, %108, %107
  %119 = getelementptr i8, ptr %4, i32 %104
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %119, ptr align 1 %6, i32 %7, i1 false) #6
  br label %157

120:                                              ; preds = %88
  %121 = icmp eq i32 %89, 1
  br i1 %121, label %122, label %124

122:                                              ; preds = %120
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(1028) %1, ptr noundef align 4 dereferenceable(1028) %0, i32 1028, i1 false)
  %123 = call i32 @ZSTD_compressRleLiteralsBlock(ptr noundef %4, i32 undef, ptr noundef %6, i32 noundef %7)
  br label %157

124:                                              ; preds = %120
  br i1 %91, label %125, label %127

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.ZSTD_hufCTables_t, ptr %1, i32 0, i32 1
  store i32 1, ptr %126, align 4
  br label %127

127:                                              ; preds = %125, %124
  switch i32 %21, label %155 [
    i32 3, label %128
    i32 4, label %140
    i32 5, label %146
  ]

128:                                              ; preds = %127
  %129 = select i1 %81, i32 4, i32 0
  %130 = or i32 %129, %92
  %131 = shl i32 %7, 4
  %132 = or i32 %130, %131
  %133 = xor i32 %132, 4
  %134 = shl i32 %89, 14
  %135 = add i32 %133, %134
  %136 = trunc i32 %135 to i16
  store i16 %136, ptr %4, align 1
  %137 = lshr i32 %135, 16
  %138 = trunc i32 %137 to i8
  %139 = getelementptr i8, ptr %4, i32 2
  store i8 %138, ptr %139, align 1
  br label %155

140:                                              ; preds = %127
  %141 = shl i32 %7, 4
  %142 = shl i32 %89, 18
  %143 = or i32 %141, 8
  %144 = add i32 %143, %142
  %145 = or i32 %144, %92
  store i32 %145, ptr %4, align 1
  br label %155

146:                                              ; preds = %127
  %147 = shl i32 %7, 4
  %148 = shl i32 %89, 22
  %149 = or i32 %147, 12
  %150 = add i32 %149, %148
  %151 = or i32 %150, %92
  store i32 %151, ptr %4, align 1
  %152 = lshr i32 %89, 10
  %153 = trunc i32 %152 to i8
  %154 = getelementptr i8, ptr %4, i32 4
  store i8 %153, ptr %154, align 1
  br label %155

155:                                              ; preds = %146, %140, %128, %127
  %156 = add nuw i32 %89, %21
  br label %157

157:                                              ; preds = %155, %122, %118, %99, %72, %70, %51, %43, %24
  %158 = phi i32 [ %123, %122 ], [ %156, %155 ], [ -70, %72 ], [ %30, %43 ], [ -70, %24 ], [ %105, %118 ], [ -70, %99 ], [ -70, %51 ], [ %57, %70 ]
  ret i32 %158
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_compress1X_repeat(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @HUF_compress4X_repeat(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }

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
