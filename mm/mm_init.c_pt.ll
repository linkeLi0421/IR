; ModuleID = '/llk/IR/mm/mm_init.c_pt.bc'
source_filename = "../mm/mm_init.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mm_kobj:\09\09\09\09\09"
module asm "\09.asciz \09\22mm_kobj\22\09\09\09\09\09"
module asm "__kstrtabns_mm_kobj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }

@mm_kobj = dso_local global ptr null, align 4
@__kstrtab_mm_kobj = external dso_local constant [0 x i8], align 1
@__kstrtabns_mm_kobj = external dso_local constant [0 x i8], align 1
@__ksymtab_mm_kobj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mm_kobj to i32), ptr @__kstrtab_mm_kobj, ptr @__kstrtabns_mm_kobj }, section "___ksymtab_gpl+mm_kobj", align 4
@vm_committed_as_batch = dso_local local_unnamed_addr global i32 32, align 4
@__cpu_present_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@__initcall__kmod_mm_init__242_192_mm_compute_batch_init6 = internal global ptr @mm_compute_batch_init, section ".initcall6.init", align 4
@__initcall__kmod_mm_init__243_204_mm_sysfs_init2 = internal global ptr @mm_sysfs_init, section ".initcall2.init", align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@sysctl_overcommit_memory = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_mm_init__242_192_mm_compute_batch_init6, ptr @__initcall__kmod_mm_init__243_204_mm_sysfs_init2, ptr @__ksymtab_mm_kobj], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mm_compute_batch(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @__cpu_present_mask, align 4
  %3 = and i32 %2, 65535
  %4 = tail call i32 @__sw_hweight32(i32 noundef %3) #4
  %5 = load volatile i32, ptr @_totalram_pages, align 4
  %6 = icmp eq i32 %0, 2
  %7 = udiv i32 %5, %4
  %8 = select i1 %6, i32 8, i32 2
  %9 = lshr i32 %7, %8
  %10 = shl i32 %4, 1
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 32)
  %12 = tail call i32 @llvm.umax.i32(i32 %9, i32 %11)
  store i32 %12, ptr @vm_committed_as_batch, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mm_compute_batch_init() #1 section ".init.text" {
  %1 = load i32, ptr @sysctl_overcommit_memory, align 4
  %2 = load i32, ptr @__cpu_present_mask, align 4
  %3 = and i32 %2, 65535
  %4 = tail call i32 @__sw_hweight32(i32 noundef %3) #4
  %5 = load volatile i32, ptr @_totalram_pages, align 4
  %6 = icmp eq i32 %1, 2
  %7 = udiv i32 %5, %4
  %8 = select i1 %6, i32 8, i32 2
  %9 = lshr i32 %7, %8
  %10 = shl i32 %4, 1
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 32) #4
  %12 = tail call i32 @llvm.umax.i32(i32 %9, i32 %11) #4
  store i32 %12, ptr @vm_committed_as_batch, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mm_sysfs_init() #1 section ".init.text" {
  %1 = load ptr, ptr @kernel_kobj, align 4
  %2 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str, ptr noundef %1) #4
  store ptr %2, ptr @mm_kobj, align 4
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, i32 -12, i32 0
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
