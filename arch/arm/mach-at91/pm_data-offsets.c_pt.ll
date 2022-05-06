; ModuleID = '/llk/IR/arch/arm/mach-at91/pm_data-offsets.c_pt.bc'
source_filename = "../arch/arm/mach-at91/pm_data-offsets.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @main() local_unnamed_addr #0 {
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_PMC $0 offsetof(struct at91_pm_data, pmc)\22", "i"(i32 0) #1, !srcloc !8
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_RAMC0 $0 offsetof(struct at91_pm_data, ramc[0])\22", "i"(i32 4) #1, !srcloc !9
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_RAMC1 $0 offsetof(struct at91_pm_data, ramc[1])\22", "i"(i32 8) #1, !srcloc !10
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_RAMC_PHY $0 offsetof(struct at91_pm_data, ramc_phy)\22", "i"(i32 12) #1, !srcloc !11
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_MEMCTRL $0 offsetof(struct at91_pm_data, memctrl)\22", "i"(i32 20) #1, !srcloc !12
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_MODE $0 offsetof(struct at91_pm_data, mode)\22", "i"(i32 24) #1, !srcloc !13
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_SHDWC $0 offsetof(struct at91_pm_data, shdwc)\22", "i"(i32 28) #1, !srcloc !14
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_SFRBU $0 offsetof(struct at91_pm_data, sfrbu)\22", "i"(i32 32) #1, !srcloc !15
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_PMC_MCKR_OFFSET $0 offsetof(struct at91_pm_data, pmc_mckr_offset)\22", "i"(i32 44) #1, !srcloc !16
  tail call void asm sideeffect "\0A.ascii \22->PM_DATA_PMC_VERSION $0 offsetof(struct at91_pm_data, pmc_version)\22", "i"(i32 48) #1, !srcloc !17
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }

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
!8 = !{i64 2148318385, i64 2148318388}
!9 = !{i64 2148322718, i64 2148322721}
!10 = !{i64 2148323008, i64 2148323011}
!11 = !{i64 2148323298, i64 2148323301}
!12 = !{i64 2148323595, i64 2148323598}
!13 = !{i64 2148323887, i64 2148323890}
!14 = !{i64 2148324164, i64 2148324167}
!15 = !{i64 2148324446, i64 2148324449}
!16 = !{i64 2148324728, i64 2148324731}
!17 = !{i64 2148325060, i64 2148325063}
