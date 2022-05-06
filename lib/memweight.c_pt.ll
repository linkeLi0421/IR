; ModuleID = '/llk/IR/lib/memweight.c_pt.bc'
source_filename = "../lib/memweight.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memweight:\09\09\09\09\09"
module asm "\09.asciz \09\22memweight\22\09\09\09\09\09"
module asm "__kstrtabns_memweight:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_memweight = external dso_local constant [0 x i8], align 1
@__kstrtabns_memweight = external dso_local constant [0 x i8], align 1
@__ksymtab_memweight = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memweight to i32), ptr @__kstrtab_memweight, ptr @__kstrtabns_memweight }, section "___ksymtab+memweight", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_memweight], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @memweight(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp ne i32 %1, 0
  %4 = ptrtoint ptr %0 to i32
  %5 = and i32 %4, 3
  %6 = icmp ne i32 %5, 0
  %7 = and i1 %3, %6
  br i1 %7, label %8, label %50

8:                                                ; preds = %2
  %9 = load i8, ptr %0, align 1
  %10 = zext i8 %9 to i32
  %11 = tail call i32 @__sw_hweight8(i32 noundef %10) #2
  %12 = add i32 %1, -1
  %13 = getelementptr i8, ptr %0, i32 1
  %14 = icmp ne i32 %12, 0
  %15 = ptrtoint ptr %13 to i32
  %16 = and i32 %15, 3
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %14, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %8
  %20 = load i8, ptr %13, align 1
  %21 = zext i8 %20 to i32
  %22 = tail call i32 @__sw_hweight8(i32 noundef %21) #2
  %23 = add i32 %22, %11
  %24 = add i32 %1, -2
  %25 = getelementptr i8, ptr %0, i32 2
  %26 = icmp ne i32 %24, 0
  %27 = ptrtoint ptr %25 to i32
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 0
  %30 = and i1 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %19
  %32 = load i8, ptr %25, align 1
  %33 = zext i8 %32 to i32
  %34 = tail call i32 @__sw_hweight8(i32 noundef %33) #2
  %35 = add i32 %34, %23
  %36 = add i32 %1, -3
  %37 = getelementptr i8, ptr %0, i32 3
  %38 = icmp ne i32 %36, 0
  %39 = ptrtoint ptr %37 to i32
  %40 = and i32 %39, 3
  %41 = icmp ne i32 %40, 0
  %42 = and i1 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %31
  %44 = load i8, ptr %37, align 1
  %45 = zext i8 %44 to i32
  %46 = tail call i32 @__sw_hweight8(i32 noundef %45) #2
  %47 = add i32 %46, %35
  %48 = add i32 %1, -4
  %49 = getelementptr i8, ptr %0, i32 4
  br label %50

50:                                               ; preds = %43, %31, %19, %8, %2
  %51 = phi i32 [ %1, %2 ], [ %12, %8 ], [ %24, %19 ], [ %36, %31 ], [ %48, %43 ]
  %52 = phi i32 [ 0, %2 ], [ %11, %8 ], [ %23, %19 ], [ %35, %31 ], [ %47, %43 ]
  %53 = phi ptr [ %0, %2 ], [ %13, %8 ], [ %25, %19 ], [ %37, %31 ], [ %49, %43 ]
  %54 = icmp ult i32 %51, 4
  br i1 %54, label %66, label %55

55:                                               ; preds = %50
  %56 = icmp ugt i32 %51, 268435451
  br i1 %56, label %57, label %58, !prof !8

57:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/memweight.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 23, 0\0A.popsection", ""() #2, !srcloc !9
  unreachable

58:                                               ; preds = %55
  %59 = shl nuw nsw i32 %51, 3
  %60 = and i32 %59, -32
  %61 = tail call i32 @__bitmap_weight(ptr noundef %53, i32 noundef %60) #2
  %62 = add i32 %61, %52
  %63 = and i32 %51, -4
  %64 = and i32 %51, 3
  %65 = getelementptr i8, ptr %53, i32 %63
  br label %66

66:                                               ; preds = %58, %50
  %67 = phi i32 [ %64, %58 ], [ %51, %50 ]
  %68 = phi i32 [ %62, %58 ], [ %52, %50 ]
  %69 = phi ptr [ %65, %58 ], [ %53, %50 ]
  %70 = icmp eq i32 %67, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %71, %66
  %72 = phi ptr [ %80, %71 ], [ %69, %66 ]
  %73 = phi i32 [ %78, %71 ], [ %68, %66 ]
  %74 = phi i32 [ %79, %71 ], [ %67, %66 ]
  %75 = load i8, ptr %72, align 1
  %76 = zext i8 %75 to i32
  %77 = tail call i32 @__sw_hweight8(i32 noundef %76) #2
  %78 = add i32 %77, %73
  %79 = add i32 %74, -1
  %80 = getelementptr i8, ptr %72, i32 1
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %82, label %71

82:                                               ; preds = %71, %66
  %83 = phi i32 [ %68, %66 ], [ %78, %71 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!9 = !{i64 2148412793, i64 2148413272, i64 2148412830, i64 2148412886, i64 2148412920, i64 2148412944, i64 2148412985, i64 2148413006, i64 2148413034, i64 2148413068}
