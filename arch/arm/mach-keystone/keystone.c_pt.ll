; ModuleID = '/llk/IR/arch/arm/mach-keystone/keystone.c_pt.bc'
source_filename = "../arch/arm/mach-keystone/keystone.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"Keystone\00", align 1
@keystone_match = internal constant [6 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr null], section ".init.rodata", align 4
@keystone_smp_ops = external dso_local constant %struct.smp_operations, align 4
@__mach_desc_KEYSTONE = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @keystone_match, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr @keystone_smp_ops, ptr null, ptr null, ptr null, ptr @keystone_pv_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @keystone_init, ptr null, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"ti,k2hk\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ti,k2e\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ti,k2l\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ti,k2g\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ti,keystone\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"\012Invalid address space for memory (%08llx-%08llx)\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__mach_desc_KEYSTONE], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i64 @keystone_pv_fixup() #0 section ".init.text" {
  %1 = tail call i32 @memblock_start_of_DRAM() #3
  %2 = tail call i32 @memblock_end_of_DRAM() #3
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64
  %6 = zext i32 %1 to i64
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %6, i64 noundef %5) #4
  br label %8

8:                                                ; preds = %4, %0
  ret i64 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @keystone_init() #0 section ".init.text" {
  %1 = tail call i32 @keystone_pm_runtime_init() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_start_of_DRAM() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_end_of_DRAM() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @keystone_pm_runtime_init() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
