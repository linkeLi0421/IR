; ModuleID = '/llk/IR/lib/math/reciprocal_div.c_pt.bc'
source_filename = "../lib/math/reciprocal_div.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reciprocal_value:\09\09\09\09\09"
module asm "\09.asciz \09\22reciprocal_value\22\09\09\09\09\09"
module asm "__kstrtabns_reciprocal_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reciprocal_value_adv:\09\09\09\09\09"
module asm "\09.asciz \09\22reciprocal_value_adv\22\09\09\09\09\09"
module asm "__kstrtabns_reciprocal_value_adv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.reciprocal_value_adv = type { i32, i8, i8, i8 }

@__kstrtab_reciprocal_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_reciprocal_value = external dso_local constant [0 x i8], align 1
@__ksymtab_reciprocal_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reciprocal_value to i32), ptr @__kstrtab_reciprocal_value, ptr @__kstrtabns_reciprocal_value }, section "___ksymtab+reciprocal_value", align 4
@.str = private unnamed_addr constant [26 x i8] c"lib/math/reciprocal_div.c\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"ceil(log2(0x%08x)) == 32, %s doesn't support such divisor\00", align 1
@__func__.reciprocal_value_adv = private unnamed_addr constant [21 x i8] c"reciprocal_value_adv\00", align 1
@__kstrtab_reciprocal_value_adv = external dso_local constant [0 x i8], align 1
@__kstrtabns_reciprocal_value_adv = external dso_local constant [0 x i8], align 1
@__ksymtab_reciprocal_value_adv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reciprocal_value_adv to i32), ptr @__kstrtab_reciprocal_value_adv, ptr @__kstrtabns_reciprocal_value_adv }, section "___ksymtab+reciprocal_value_adv", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_reciprocal_value, ptr @__ksymtab_reciprocal_value_adv], section "llvm.metadata"

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @reciprocal_value(ptr noalias nocapture writeonly sret(%struct.reciprocal_value) align 4 %0, i32 noundef %1) #0 {
  store i64 0, ptr %0, align 4, !annotation !8
  %3 = add i32 %1, -1
  %4 = icmp eq i32 %3, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #4, !range !9
  %6 = sub nuw nsw i32 32, %5
  %7 = select i1 %4, i32 0, i32 %6
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 1, %8
  %10 = zext i32 %1 to i64
  %11 = sub nsw i64 %9, %10
  %12 = shl i64 %11, 32
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14, !prof !10

14:                                               ; preds = %2
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %12) #5, !srcloc !11
  %16 = extractvalue { i64, i64 } %15, 1
  %17 = trunc i64 %16 to i32
  %18 = add i32 %17, 1
  br label %19

19:                                               ; preds = %14, %2
  %20 = phi i32 [ %18, %14 ], [ 1, %2 ]
  store i32 %20, ptr %0, align 4
  %21 = tail call i32 @llvm.smin.i32(i32 %7, i32 1)
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.reciprocal_value, ptr %0, i32 0, i32 1
  store i8 %22, ptr %23, align 4
  %24 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %25 = trunc i32 %24 to i8
  %26 = add nsw i8 %25, -1
  %27 = getelementptr inbounds %struct.reciprocal_value, ptr %0, i32 0, i32 2
  store i8 %26, ptr %27, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reciprocal_value_adv(ptr noalias nocapture writeonly sret(%struct.reciprocal_value_adv) align 4 %0, i32 noundef %1, i8 noundef zeroext %2) #1 {
  store i64 0, ptr %0, align 4, !annotation !8
  %4 = add i32 %1, -1
  %5 = icmp eq i32 %4, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 false) #4, !range !9
  %7 = sub nuw nsw i32 32, %6
  %8 = select i1 %5, i32 0, i32 %7
  %9 = icmp eq i32 %8, 32
  br i1 %9, label %10, label %11, !prof !12

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %1, ptr noundef nonnull @__func__.reciprocal_value_adv) #4
  br label %11

11:                                               ; preds = %10, %3
  %12 = add nuw nsw i32 %8, 32
  %13 = zext i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %14) #5, !srcloc !11
  %16 = extractvalue { i64, i64 } %15, 1
  %17 = zext i8 %2 to i32
  %18 = sub nsw i32 %12, %17
  %19 = zext i32 %18 to i64
  %20 = shl nuw i64 1, %19
  %21 = add i64 %20, %14
  %22 = icmp ult i64 %21, 4294967296
  br i1 %22, label %23, label %27, !prof !10

23:                                               ; preds = %11
  %24 = trunc i64 %21 to i32
  %25 = udiv i32 %24, %1
  %26 = zext i32 %25 to i64
  br label %30

27:                                               ; preds = %11
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %21) #5, !srcloc !11
  %29 = extractvalue { i64, i64 } %28, 1
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i64 [ %26, %23 ], [ %29, %27 ]
  %32 = icmp eq i32 %8, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %40, %30
  %34 = phi i32 [ %41, %40 ], [ %7, %30 ]
  %35 = phi i64 [ %37, %40 ], [ %16, %30 ]
  %36 = phi i64 [ %38, %40 ], [ %31, %30 ]
  %37 = lshr i64 %35, 1
  %38 = lshr i64 %36, 1
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = add i32 %34, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %33

43:                                               ; preds = %40, %33, %30
  %44 = phi i64 [ %31, %30 ], [ %36, %33 ], [ %38, %40 ]
  %45 = phi i32 [ 0, %30 ], [ %34, %33 ], [ 0, %40 ]
  %46 = trunc i64 %44 to i32
  store i32 %46, ptr %0, align 4
  %47 = trunc i32 %45 to i8
  %48 = getelementptr inbounds %struct.reciprocal_value_adv, ptr %0, i32 0, i32 1
  store i8 %47, ptr %48, align 4
  %49 = trunc i32 %8 to i8
  %50 = getelementptr inbounds %struct.reciprocal_value_adv, ptr %0, i32 0, i32 2
  store i8 %49, ptr %50, align 1
  %51 = icmp ugt i64 %44, 4294967295
  %52 = getelementptr inbounds %struct.reciprocal_value_adv, ptr %0, i32 0, i32 3
  %53 = zext i1 %51 to i8
  store i8 %53, ptr %52, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148354727, i64 2148355007, i64 2148355341, i64 2148355675}
!12 = !{!"branch_weights", i32 1, i32 2000}
