; ModuleID = '/llk/IR/drivers/gpu/drm/drm_nomodeset.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_nomodeset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_firmware_drivers_only:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_firmware_drivers_only\22\09\09\09\09\09"
module asm "__kstrtabns_drm_firmware_drivers_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }

@drm_nomodeset = internal unnamed_addr global i1 false, align 1
@__kstrtab_drm_firmware_drivers_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_firmware_drivers_only = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_firmware_drivers_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_firmware_drivers_only to i32), ptr @__kstrtab_drm_firmware_drivers_only, ptr @__kstrtabns_drm_firmware_drivers_only }, section "___ksymtab+drm_firmware_drivers_only", align 4
@__setup_str_disable_modeset = internal constant [10 x i8] c"nomodeset\00", section ".init.rodata", align 1
@__setup_disable_modeset = internal global %struct.obs_kernel_param { ptr @__setup_str_disable_modeset, ptr @disable_modeset, i32 0 }, section ".init.setup", align 4
@.str = private unnamed_addr constant [86 x i8] c"\014Booted with the nomodeset parameter. Only the system framebuffer will be available\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_drm_firmware_drivers_only, ptr @__setup_disable_modeset], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_firmware_drivers_only() #0 {
  %1 = load i1, ptr @drm_nomodeset, align 1
  ret i1 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @disable_modeset(ptr nocapture noundef readnone %0) #1 section ".init.text" {
  store i1 true, ptr @drm_nomodeset, align 1
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #3
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind }

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
