; ModuleID = '/llk/IR/kernel/trace/blktrace.c_pt.bc'
source_filename = "../kernel/trace/blktrace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_fill_rwbs:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_fill_rwbs\22\09\09\09\09\09"
module asm "__kstrtabns_blk_fill_rwbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_blk_fill_rwbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_fill_rwbs = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_fill_rwbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_fill_rwbs to i32), ptr @__kstrtab_blk_fill_rwbs, ptr @__kstrtabns_blk_fill_rwbs }, section "___ksymtab_gpl+blk_fill_rwbs", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_blk_fill_rwbs], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @blk_fill_rwbs(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = and i64 %3, 262144
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store i8 70, ptr %0, align 1
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i32 [ 1, %6 ], [ 0, %2 ]
  %9 = trunc i32 %1 to i8
  switch i8 %9, label %16 [
    i8 1, label %17
    i8 7, label %17
    i8 3, label %10
    i8 5, label %11
    i8 2, label %14
    i8 0, label %15
  ]

10:                                               ; preds = %7
  br label %17

11:                                               ; preds = %7
  %12 = add nuw nsw i32 %8, 1
  %13 = getelementptr i8, ptr %0, i32 %8
  store i8 68, ptr %13, align 1
  br label %17

14:                                               ; preds = %7
  br label %17

15:                                               ; preds = %7
  br label %17

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16, %15, %14, %11, %10, %7, %7
  %18 = phi i32 [ %8, %16 ], [ %8, %15 ], [ %8, %14 ], [ %12, %11 ], [ %8, %10 ], [ %8, %7 ], [ %8, %7 ]
  %19 = phi i8 [ 78, %16 ], [ 82, %15 ], [ 70, %14 ], [ 69, %11 ], [ 68, %10 ], [ 87, %7 ], [ 87, %7 ]
  %20 = getelementptr i8, ptr %0, i32 %18
  store i8 %19, ptr %20, align 1
  %21 = add nuw nsw i32 %18, 1
  %22 = and i64 %3, 131072
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = add nuw nsw i32 %18, 2
  %26 = getelementptr i8, ptr %0, i32 %21
  store i8 70, ptr %26, align 1
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i32 [ %25, %24 ], [ %21, %17 ]
  %29 = and i64 %3, 524288
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = add nuw nsw i32 %28, 1
  %33 = getelementptr i8, ptr %0, i32 %28
  store i8 65, ptr %33, align 1
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %32, %31 ], [ %28, %27 ]
  %36 = and i64 %3, 2048
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = add nuw nsw i32 %35, 1
  %40 = getelementptr i8, ptr %0, i32 %35
  store i8 83, ptr %40, align 1
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i32 [ %39, %38 ], [ %35, %34 ]
  %43 = and i64 %3, 4096
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = add nuw nsw i32 %42, 1
  %47 = getelementptr i8, ptr %0, i32 %42
  store i8 77, ptr %47, align 1
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i32 [ %46, %45 ], [ %42, %41 ]
  %50 = getelementptr i8, ptr %0, i32 %49
  store i8 0, ptr %50, align 1
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
