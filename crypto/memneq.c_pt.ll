; ModuleID = '/llk/IR/crypto/memneq.c_pt.bc'
source_filename = "../crypto/memneq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___crypto_memneq:\09\09\09\09\09"
module asm "\09.asciz \09\22__crypto_memneq\22\09\09\09\09\09"
module asm "__kstrtabns___crypto_memneq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___crypto_memneq = external dso_local constant [0 x i8], align 1
@__kstrtabns___crypto_memneq = external dso_local constant [0 x i8], align 1
@__ksymtab___crypto_memneq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__crypto_memneq to i32), ptr @__kstrtab___crypto_memneq, ptr @__kstrtabns___crypto_memneq }, section "___ksymtab+__crypto_memneq", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab___crypto_memneq], section "llvm.metadata"

; Function Attrs: nofree noinline nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @__crypto_memneq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 16
  br i1 %4, label %5, label %31

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4
  %7 = load i32, ptr %1, align 4
  %8 = xor i32 %7, %6
  %9 = tail call i32 asm "", "=r,0"(i32 %8) #1, !srcloc !8
  %10 = getelementptr i8, ptr %0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %1, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %13, %11
  %15 = or i32 %14, %9
  %16 = tail call i32 asm "", "=r,0"(i32 %15) #1, !srcloc !9
  %17 = getelementptr i8, ptr %0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %1, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %20, %18
  %22 = or i32 %21, %16
  %23 = tail call i32 asm "", "=r,0"(i32 %22) #1, !srcloc !10
  %24 = getelementptr i8, ptr %0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %1, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, %25
  %29 = or i32 %28, %23
  %30 = tail call i32 asm "", "=r,0"(i32 %29) #1, !srcloc !11
  br label %68

31:                                               ; preds = %3
  %32 = icmp ugt i32 %2, 3
  br i1 %32, label %39, label %33

33:                                               ; preds = %39, %31
  %34 = phi ptr [ %0, %31 ], [ %49, %39 ]
  %35 = phi ptr [ %1, %31 ], [ %50, %39 ]
  %36 = phi i32 [ %2, %31 ], [ %51, %39 ]
  %37 = phi i32 [ 0, %31 ], [ %48, %39 ]
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %68, label %53

39:                                               ; preds = %39, %31
  %40 = phi i32 [ %48, %39 ], [ 0, %31 ]
  %41 = phi i32 [ %51, %39 ], [ %2, %31 ]
  %42 = phi ptr [ %50, %39 ], [ %1, %31 ]
  %43 = phi ptr [ %49, %39 ], [ %0, %31 ]
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %42, align 4
  %46 = xor i32 %45, %44
  %47 = or i32 %46, %40
  %48 = tail call i32 asm "", "=r,0"(i32 %47) #1, !srcloc !12
  %49 = getelementptr i8, ptr %43, i32 4
  %50 = getelementptr i8, ptr %42, i32 4
  %51 = add i32 %41, -4
  %52 = icmp ugt i32 %51, 3
  br i1 %52, label %39, label %33

53:                                               ; preds = %53, %33
  %54 = phi i32 [ %63, %53 ], [ %37, %33 ]
  %55 = phi i32 [ %66, %53 ], [ %36, %33 ]
  %56 = phi ptr [ %65, %53 ], [ %35, %33 ]
  %57 = phi ptr [ %64, %53 ], [ %34, %33 ]
  %58 = load i8, ptr %57, align 1
  %59 = load i8, ptr %56, align 1
  %60 = xor i8 %59, %58
  %61 = zext i8 %60 to i32
  %62 = or i32 %54, %61
  %63 = tail call i32 asm "", "=r,0"(i32 %62) #1, !srcloc !13
  %64 = getelementptr i8, ptr %57, i32 1
  %65 = getelementptr i8, ptr %56, i32 1
  %66 = add i32 %55, -1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %53

68:                                               ; preds = %53, %33, %5
  %69 = phi i32 [ %30, %5 ], [ %37, %33 ], [ %63, %53 ]
  ret i32 %69
}

attributes #0 = { nofree noinline nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind readnone }

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
!8 = !{i64 2150125001}
!9 = !{i64 2150125047}
!10 = !{i64 2150125093}
!11 = !{i64 2150125139}
!12 = !{i64 2150124648}
!13 = !{i64 2150124694}
