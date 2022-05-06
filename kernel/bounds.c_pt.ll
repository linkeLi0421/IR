; ModuleID = '/llk/IR/kernel/bounds.c_pt.bc'
source_filename = "../kernel/bounds.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @main() local_unnamed_addr #0 {
  tail call void asm sideeffect "\0A.ascii \22->NR_PAGEFLAGS $0 __NR_PAGEFLAGS\22", "i"(i32 22) #1, !srcloc !8
  tail call void asm sideeffect "\0A.ascii \22->MAX_NR_ZONES $0 __MAX_NR_ZONES\22", "i"(i32 4) #1, !srcloc !9
  tail call void asm sideeffect "\0A.ascii \22->NR_CPUS_BITS $0 ilog2(CONFIG_NR_CPUS)\22", "i"(i32 4) #1, !srcloc !10
  tail call void asm sideeffect "\0A.ascii \22->SPINLOCK_SIZE $0 sizeof(spinlock_t)\22", "i"(i32 4) #1, !srcloc !11
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
!8 = !{i64 2148439680, i64 2148439683}
!9 = !{i64 2148439793, i64 2148439796}
!10 = !{i64 2148439906, i64 2148439909}
!11 = !{i64 2148440356, i64 2148440359}
