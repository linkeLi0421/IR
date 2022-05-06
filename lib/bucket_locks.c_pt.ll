; ModuleID = '/llk/IR/lib/bucket_locks.c_pt.bc'
source_filename = "../lib/bucket_locks.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___alloc_bucket_spinlocks:\09\09\09\09\09"
module asm "\09.asciz \09\22__alloc_bucket_spinlocks\22\09\09\09\09\09"
module asm "__kstrtabns___alloc_bucket_spinlocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_bucket_spinlocks:\09\09\09\09\09"
module asm "\09.asciz \09\22free_bucket_spinlocks\22\09\09\09\09\09"
module asm "__kstrtabns_free_bucket_spinlocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }

@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@__kstrtab___alloc_bucket_spinlocks = external dso_local constant [0 x i8], align 1
@__kstrtabns___alloc_bucket_spinlocks = external dso_local constant [0 x i8], align 1
@__ksymtab___alloc_bucket_spinlocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__alloc_bucket_spinlocks to i32), ptr @__kstrtab___alloc_bucket_spinlocks, ptr @__kstrtabns___alloc_bucket_spinlocks }, section "___ksymtab+__alloc_bucket_spinlocks", align 4
@__kstrtab_free_bucket_spinlocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_bucket_spinlocks = external dso_local constant [0 x i8], align 1
@__ksymtab_free_bucket_spinlocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_bucket_spinlocks to i32), ptr @__kstrtab_free_bucket_spinlocks, ptr @__kstrtabns_free_bucket_spinlocks }, section "___ksymtab+free_bucket_spinlocks", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab___alloc_bucket_spinlocks, ptr @__ksymtab_free_bucket_spinlocks], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__alloc_bucket_spinlocks(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture readnone %5, ptr nocapture readnone %6) #0 {
  %8 = load i32, ptr @__cpu_possible_mask, align 4
  %9 = and i32 %8, 65535
  %10 = tail call i32 @__sw_hweight32(i32 noundef %9) #5
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 64)
  %14 = mul i32 %13, %3
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %2)
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i32 [ %15, %12 ], [ %2, %7 ]
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #5
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %30, label %20, !prof !8

20:                                               ; preds = %16
  %21 = extractvalue { i32, i1 } %18, 0
  %22 = tail call noalias ptr @kvmalloc_node(i32 noundef %21, i32 noundef %4, i32 noundef -1) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = icmp eq i32 %17, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = shl nuw i32 %17, 2
  call void @llvm.memset.p0.i32(ptr nonnull align 4 %22, i8 0, i32 %27, i1 false)
  br label %28

28:                                               ; preds = %26, %24
  store ptr %22, ptr %0, align 4
  %29 = add nsw i32 %17, -1
  store i32 %29, ptr %1, align 4
  br label %30

30:                                               ; preds = %28, %20, %16
  %31 = phi i32 [ 0, %28 ], [ -12, %20 ], [ -12, %16 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_bucket_spinlocks(ptr noundef %0) #0 {
  tail call void @kvfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
