; ModuleID = '/llk/IR/lib/mpi/mpi-cmp.c_pt.bc'
source_filename = "../lib/mpi/mpi-cmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_cmp_ui:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_cmp_ui\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_cmp_ui:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_cmp:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_cmp\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_cmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_cmpabs:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_cmpabs\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_cmpabs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__kstrtab_mpi_cmp_ui = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_cmp_ui = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_cmp_ui = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_cmp_ui to i32), ptr @__kstrtab_mpi_cmp_ui, ptr @__kstrtabns_mpi_cmp_ui }, section "___ksymtab_gpl+mpi_cmp_ui", align 4
@__kstrtab_mpi_cmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_cmp = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_cmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_cmp to i32), ptr @__kstrtab_mpi_cmp, ptr @__kstrtabns_mpi_cmp }, section "___ksymtab_gpl+mpi_cmp", align 4
@__kstrtab_mpi_cmpabs = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_cmpabs = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_cmpabs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_cmpabs to i32), ptr @__kstrtab_mpi_cmpabs, ptr @__kstrtabns_mpi_cmpabs }, section "___ksymtab_gpl+mpi_cmpabs", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_mpi_cmp, ptr @__ksymtab_mpi_cmp_ui, ptr @__ksymtab_mpi_cmpabs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_cmp_ui(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @mpi_normalize(ptr noundef %0) #2
  %3 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, %1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = icmp sgt i32 %4, 1
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = icmp ugt i32 %16, %1
  %20 = select i1 %19, i32 1, i32 -1
  br label %21

21:                                               ; preds = %18, %13, %11, %7, %2
  %22 = phi i32 [ 0, %2 ], [ -1, %7 ], [ 1, %11 ], [ 0, %13 ], [ %20, %18 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_normalize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_cmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @do_mpi_cmp(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_mpi_cmp(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  tail call void @mpi_normalize(ptr noundef %0) #2
  tail call void @mpi_normalize(ptr noundef %1) #2
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = icmp eq i32 %11, 0
  %16 = select i1 %15, i1 %14, i1 false
  br i1 %16, label %48, label %17

17:                                               ; preds = %9
  %18 = select i1 %15, i1 true, i1 %14
  br i1 %18, label %19, label %48

19:                                               ; preds = %17, %3
  %20 = phi i32 [ %11, %17 ], [ 0, %3 ]
  %21 = phi i1 [ %14, %17 ], [ false, %3 ]
  %22 = icmp eq i32 %5, %7
  %23 = icmp ne i32 %20, 0
  %24 = select i1 %22, i1 true, i1 %23
  %25 = select i1 %24, i1 true, i1 %21
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = sub i32 %5, %7
  br label %48

28:                                               ; preds = %19
  %29 = icmp ne i32 %5, %7
  %30 = select i1 %29, i1 %23, i1 false
  %31 = select i1 %30, i1 %21, i1 false
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = add i32 %7, %5
  br label %48

34:                                               ; preds = %28
  %35 = icmp eq i32 %5, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @mpihelp_cmp(ptr noundef %38, ptr noundef %40, i32 noundef %5) #2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = lshr i32 %41, 31
  %45 = zext i1 %23 to i32
  %46 = icmp eq i32 %44, %45
  %47 = select i1 %46, i32 1, i32 -1
  br label %48

48:                                               ; preds = %43, %36, %34, %32, %26, %17, %9
  %49 = phi i32 [ %33, %32 ], [ %27, %26 ], [ 1, %9 ], [ -1, %17 ], [ 0, %34 ], [ 0, %36 ], [ %47, %43 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_cmpabs(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mpi_normalize(ptr noundef %0) #2
  tail call void @mpi_normalize(ptr noundef %1) #2
  %3 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = sub i32 %4, %6
  br label %22

10:                                               ; preds = %2
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @mpihelp_cmp(ptr noundef %14, ptr noundef %16, i32 noundef %4) #2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = icmp sgt i32 %17, -1
  %21 = select i1 %20, i32 1, i32 -1
  br label %22

22:                                               ; preds = %19, %12, %10, %8
  %23 = phi i32 [ %9, %8 ], [ 0, %10 ], [ 0, %12 ], [ %21, %19 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
