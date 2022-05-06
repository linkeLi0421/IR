; ModuleID = '/llk/IR/lib/zstd/common/zstd_common.c_pt.bc'
source_filename = "../lib/zstd/common/zstd_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

@.str = private unnamed_addr constant [7 x i8] c"1.4.10\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_versionNumber() local_unnamed_addr #0 {
  ret i32 10410
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ZSTD_versionString() local_unnamed_addr #0 {
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_isError(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, -120
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_getErrorName(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ult i32 %0, -119
  %3 = sub i32 0, %0
  %4 = select i1 %2, i32 0, i32 %3
  %5 = tail call ptr @ERR_getErrorString(i32 noundef %4) #4
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_getErrorCode(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, -119
  %3 = sub i32 0, %0
  %4 = select i1 %2, i32 0, i32 %3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_getErrorString(i32 noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @ERR_getErrorString(i32 noundef %0) #4
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_customMalloc(i32 noundef %0, [3 x i32] %1) local_unnamed_addr #1 {
  %3 = extractvalue [3 x i32] %1, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = inttoptr i32 %3 to ptr
  %7 = extractvalue [3 x i32] %1, 2
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call ptr %6(ptr noundef %8, i32 noundef %0) #4
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ZSTD_customCalloc(i32 noundef %0, [3 x i32] %1) local_unnamed_addr #1 {
  %3 = extractvalue [3 x i32] %1, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = inttoptr i32 %3 to ptr
  %7 = extractvalue [3 x i32] %1, 2
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call ptr %6(ptr noundef %8, i32 noundef %0) #4
  tail call void @llvm.memset.p0.i32(ptr align 1 %9, i8 0, i32 %0, i1 false)
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ZSTD_customFree(ptr noundef %0, [3 x i32] %1) local_unnamed_addr #1 {
  %3 = extractvalue [3 x i32] %1, 1
  %4 = icmp eq ptr %0, null
  %5 = icmp eq i32 %3, 0
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = extractvalue [3 x i32] %1, 2
  %9 = inttoptr i32 %8 to ptr
  %10 = inttoptr i32 %3 to ptr
  tail call void %10(ptr noundef %9, ptr noundef nonnull %0) #4
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
