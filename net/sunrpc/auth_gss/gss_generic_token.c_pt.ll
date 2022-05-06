; ModuleID = '/llk/IR/net/sunrpc/auth_gss/gss_generic_token.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_generic_token.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_g_token_size:\09\09\09\09\09"
module asm "\09.asciz \09\22g_token_size\22\09\09\09\09\09"
module asm "__kstrtabns_g_token_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_g_make_token_header:\09\09\09\09\09"
module asm "\09.asciz \09\22g_make_token_header\22\09\09\09\09\09"
module asm "__kstrtabns_g_make_token_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_g_verify_token_header:\09\09\09\09\09"
module asm "\09.asciz \09\22g_verify_token_header\22\09\09\09\09\09"
module asm "__kstrtabns_g_verify_token_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xdr_netobj = type { i32, ptr }

@__kstrtab_g_token_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_g_token_size = external dso_local constant [0 x i8], align 1
@__ksymtab_g_token_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @g_token_size to i32), ptr @__kstrtab_g_token_size, ptr @__kstrtabns_g_token_size }, section "___ksymtab_gpl+g_token_size", align 4
@__kstrtab_g_make_token_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_g_make_token_header = external dso_local constant [0 x i8], align 1
@__ksymtab_g_make_token_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @g_make_token_header to i32), ptr @__kstrtab_g_make_token_header, ptr @__kstrtabns_g_make_token_header }, section "___ksymtab_gpl+g_make_token_header", align 4
@__kstrtab_g_verify_token_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_g_verify_token_header = external dso_local constant [0 x i8], align 1
@__ksymtab_g_verify_token_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @g_verify_token_header to i32), ptr @__kstrtab_g_verify_token_header, ptr @__kstrtabns_g_verify_token_header }, section "___ksymtab_gpl+g_verify_token_header", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_g_make_token_header, ptr @__ksymtab_g_token_size, ptr @__ksymtab_g_verify_token_header], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @g_token_size(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = add i32 %1, 2
  %5 = add i32 %4, %3
  %6 = icmp slt i32 %5, 128
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = icmp ult i32 %5, 256
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = icmp ult i32 %5, 65536
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = icmp ult i32 %5, 16777216
  %13 = select i1 %12, i32 5, i32 6
  br label %14

14:                                               ; preds = %11, %9, %7, %2
  %15 = phi i32 [ 2, %2 ], [ 3, %7 ], [ 4, %9 ], [ %13, %11 ]
  %16 = add i32 %15, %5
  ret i32 %16
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @g_make_token_header(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr i8, ptr %4, i32 1
  store ptr %5, ptr %2, align 4
  store i8 96, ptr %4, align 1
  %6 = load i32, ptr %0, align 4
  %7 = add i32 %1, 2
  %8 = add i32 %7, %6
  %9 = icmp slt i32 %8, 128
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = trunc i32 %8 to i8
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr i8, ptr %12, i32 1
  store ptr %13, ptr %2, align 4
  store i8 %11, ptr %12, align 1
  br label %49

14:                                               ; preds = %3
  %15 = icmp ult i32 %8, 256
  br i1 %15, label %37, label %16

16:                                               ; preds = %14
  %17 = icmp ult i32 %8, 65536
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %19, i32 1
  store ptr %20, ptr %2, align 4
  store i8 -126, ptr %19, align 1
  br label %40

21:                                               ; preds = %16
  %22 = icmp ult i32 %8, 16777216
  %23 = select i1 %22, i8 -125, i8 -124
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 1
  store ptr %25, ptr %2, align 4
  store i8 %23, ptr %24, align 1
  %26 = icmp ugt i32 %8, 16777215
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = lshr i32 %8, 24
  %29 = trunc i32 %28 to i8
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 1
  store ptr %31, ptr %2, align 4
  store i8 %29, ptr %30, align 1
  br label %32

32:                                               ; preds = %27, %21
  %33 = lshr i32 %8, 16
  %34 = trunc i32 %33 to i8
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr i8, ptr %35, i32 1
  store ptr %36, ptr %2, align 4
  store i8 %34, ptr %35, align 1
  br label %40

37:                                               ; preds = %14
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr i8, ptr %38, i32 1
  store ptr %39, ptr %2, align 4
  store i8 -127, ptr %38, align 1
  br label %45

40:                                               ; preds = %32, %18
  %41 = lshr i32 %8, 8
  %42 = trunc i32 %41 to i8
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr i8, ptr %43, i32 1
  store ptr %44, ptr %2, align 4
  store i8 %42, ptr %43, align 1
  br label %45

45:                                               ; preds = %40, %37
  %46 = trunc i32 %8 to i8
  %47 = load ptr, ptr %2, align 4
  %48 = getelementptr i8, ptr %47, i32 1
  store ptr %48, ptr %2, align 4
  store i8 %46, ptr %47, align 1
  br label %49

49:                                               ; preds = %45, %10
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr i8, ptr %50, i32 1
  store ptr %51, ptr %2, align 4
  store i8 6, ptr %50, align 1
  %52 = load i32, ptr %0, align 4
  %53 = trunc i32 %52 to i8
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr i8, ptr %54, i32 1
  store ptr %55, ptr %2, align 4
  store i8 %53, ptr %54, align 1
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr inbounds %struct.xdr_netobj, ptr %0, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %56, ptr align 1 %58, i32 %59, i1 false)
  %60 = load i32, ptr %0, align 4
  %61 = load ptr, ptr %2, align 4
  %62 = getelementptr i8, ptr %61, i32 %60
  store ptr %62, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @g_verify_token_header(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, i32 noundef %3) #3 {
  %5 = add i32 %3, -1
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %103, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 4
  %9 = load i8, ptr %8, align 1
  %10 = icmp ne i8 %9, 96
  %11 = icmp eq i32 %5, 0
  %12 = or i1 %11, %10
  br i1 %12, label %103, label %13

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %8, i32 1
  %15 = getelementptr i8, ptr %8, i32 2
  %16 = load i8, ptr %14, align 1
  %17 = add i32 %3, -2
  %18 = zext i8 %16 to i32
  %19 = and i32 %18, 128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %66, label %21

21:                                               ; preds = %13
  %22 = and i8 %16, 127
  %23 = zext i8 %22 to i32
  %24 = add i32 %3, -3
  %25 = icmp slt i32 %24, %23
  %26 = icmp ugt i8 %22, 4
  %27 = or i1 %26, %25
  br i1 %27, label %103, label %28

28:                                               ; preds = %21
  %29 = icmp eq i8 %22, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %28
  %31 = add nsw i8 %22, -1
  %32 = zext i8 %31 to i32
  %33 = add nuw nsw i32 %32, 3
  %34 = load i8, ptr %15, align 1
  %35 = zext i8 %34 to i32
  %36 = add i32 %3, -3
  %37 = icmp eq i8 %22, 1
  br i1 %37, label %61, label %38

38:                                               ; preds = %30
  %39 = getelementptr i8, ptr %8, i32 3
  %40 = shl nuw nsw i32 %35, 8
  %41 = load i8, ptr %39, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %40, %42
  %44 = add i32 %3, -4
  %45 = icmp eq i8 %22, 2
  br i1 %45, label %61, label %46

46:                                               ; preds = %38
  %47 = getelementptr i8, ptr %8, i32 4
  %48 = shl nuw nsw i32 %43, 8
  %49 = load i8, ptr %47, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %48, %50
  %52 = add i32 %3, -5
  %53 = icmp eq i8 %22, 3
  br i1 %53, label %61, label %54

54:                                               ; preds = %46
  %55 = getelementptr i8, ptr %8, i32 5
  %56 = shl nuw i32 %51, 8
  %57 = load i8, ptr %55, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %56, %58
  %60 = add i32 %3, -6
  br label %61

61:                                               ; preds = %54, %46, %38, %30
  %62 = phi i32 [ %35, %30 ], [ %43, %38 ], [ %51, %46 ], [ %59, %54 ]
  %63 = phi i32 [ %36, %30 ], [ %44, %38 ], [ %52, %46 ], [ %60, %54 ]
  %64 = getelementptr i8, ptr %8, i32 %33
  %65 = icmp slt i32 %62, 0
  br i1 %65, label %103, label %66

66:                                               ; preds = %61, %28, %13
  %67 = phi i32 [ %62, %61 ], [ 0, %28 ], [ %18, %13 ]
  %68 = phi ptr [ %64, %61 ], [ %15, %28 ], [ %15, %13 ]
  %69 = phi i32 [ %63, %61 ], [ %17, %28 ], [ %17, %13 ]
  %70 = icmp ne i32 %67, %69
  %71 = add i32 %69, -1
  %72 = icmp slt i32 %71, 0
  %73 = or i1 %70, %72
  br i1 %73, label %103, label %74

74:                                               ; preds = %66
  %75 = load i8, ptr %68, align 1
  %76 = icmp ne i8 %75, 6
  %77 = icmp slt i32 %67, 2
  %78 = select i1 %76, i1 true, i1 %77
  br i1 %78, label %103, label %79

79:                                               ; preds = %74
  %80 = getelementptr i8, ptr %68, i32 1
  %81 = add nsw i32 %67, -2
  %82 = getelementptr i8, ptr %68, i32 2
  %83 = load i8, ptr %80, align 1
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 %81, %84
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %79
  %88 = getelementptr i8, ptr %82, i32 %84
  %89 = load i32, ptr %0, align 4
  %90 = icmp eq i32 %89, %84
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.xdr_netobj, ptr %0, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 @bcmp(ptr %82, ptr %93, i32 %84)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91, %87
  %97 = icmp ult i32 %85, 2
  %98 = select i1 %97, i32 -2045022964, i32 -2045022965
  br label %103

99:                                               ; preds = %91
  %100 = icmp ult i32 %85, 2
  br i1 %100, label %103, label %101

101:                                              ; preds = %99
  %102 = add nsw i32 %85, -2
  store ptr %88, ptr %2, align 4
  store i32 %102, ptr %1, align 4
  br label %103

103:                                              ; preds = %101, %99, %96, %79, %74, %66, %61, %21, %7, %4
  %104 = phi i32 [ 0, %101 ], [ -2045022964, %4 ], [ -2045022964, %7 ], [ -2045022964, %61 ], [ -2045022964, %66 ], [ -2045022964, %74 ], [ -2045022964, %79 ], [ -2045022964, %99 ], [ %98, %96 ], [ -2045022964, %21 ]
  ret i32 %104
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }

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
