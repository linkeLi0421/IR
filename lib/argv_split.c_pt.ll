; ModuleID = '/llk/IR/lib/argv_split.c_pt.bc'
source_filename = "../lib/argv_split.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_argv_free:\09\09\09\09\09"
module asm "\09.asciz \09\22argv_free\22\09\09\09\09\09"
module asm "__kstrtabns_argv_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_argv_split:\09\09\09\09\09"
module asm "\09.asciz \09\22argv_split\22\09\09\09\09\09"
module asm "__kstrtabns_argv_split:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_argv_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_argv_free = external dso_local constant [0 x i8], align 1
@__ksymtab_argv_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @argv_free to i32), ptr @__kstrtab_argv_free, ptr @__kstrtabns_argv_free }, section "___ksymtab+argv_free", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_argv_split = external dso_local constant [0 x i8], align 1
@__kstrtabns_argv_split = external dso_local constant [0 x i8], align 1
@__ksymtab_argv_split = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @argv_split to i32), ptr @__kstrtab_argv_split, ptr @__kstrtabns_argv_split }, section "___ksymtab+argv_split", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_argv_free, ptr @__ksymtab_argv_split], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @argv_free(ptr noundef %0) #0 {
  %2 = getelementptr ptr, ptr %0, i32 -1
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #4
  tail call void @kfree(ptr noundef %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @argv_split(i32 noundef %0, ptr noundef %1, ptr noundef writeonly %2) #0 {
  %4 = tail call ptr @kstrndup(ptr noundef %1, i32 noundef 8388607, i32 noundef %0) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr %4, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %9, %6
  %10 = phi i8 [ %24, %9 ], [ %7, %6 ]
  %11 = phi i1 [ %22, %9 ], [ true, %6 ]
  %12 = phi i32 [ %21, %9 ], [ 0, %6 ]
  %13 = phi ptr [ %23, %9 ], [ %4, %6 ]
  %14 = zext i8 %10 to i32
  %15 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 32
  %18 = icmp eq i8 %17, 0
  %19 = and i1 %11, %18
  %20 = zext i1 %19 to i32
  %21 = add i32 %12, %20
  %22 = xor i1 %18, true
  %23 = getelementptr i8, ptr %13, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %9

26:                                               ; preds = %9, %6
  %27 = phi i32 [ 0, %6 ], [ %21, %9 ]
  %28 = add i32 %27, 2
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) #4
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %35, label %31, !prof !8

31:                                               ; preds = %26
  %32 = extractvalue { i32, i1 } %29, 0
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef %0) #5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %26
  tail call void @kfree(ptr noundef nonnull %4) #4
  br label %64

36:                                               ; preds = %31
  store ptr %4, ptr %33, align 64
  %37 = getelementptr ptr, ptr %33, i32 1
  %38 = load i8, ptr %4, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %54, %36
  %41 = phi i8 [ %58, %54 ], [ %38, %36 ]
  %42 = phi ptr [ %55, %54 ], [ %37, %36 ]
  %43 = phi i1 [ %56, %54 ], [ true, %36 ]
  %44 = phi ptr [ %57, %54 ], [ %4, %36 ]
  %45 = zext i8 %41 to i32
  %46 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, 32
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  store i8 0, ptr %44, align 1
  br label %54

51:                                               ; preds = %40
  br i1 %43, label %52, label %54

52:                                               ; preds = %51
  %53 = getelementptr ptr, ptr %42, i32 1
  store ptr %44, ptr %42, align 4
  br label %54

54:                                               ; preds = %52, %51, %50
  %55 = phi ptr [ %42, %50 ], [ %53, %52 ], [ %42, %51 ]
  %56 = xor i1 %49, true
  %57 = getelementptr i8, ptr %44, i32 1
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %40

60:                                               ; preds = %54, %36
  %61 = phi ptr [ %37, %36 ], [ %55, %54 ]
  store ptr null, ptr %61, align 4
  %62 = icmp eq ptr %2, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 %27, ptr %2, align 4
  br label %64

64:                                               ; preds = %63, %60, %35, %3
  %65 = phi ptr [ null, %35 ], [ null, %3 ], [ %37, %63 ], [ %37, %60 ]
  ret ptr %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
