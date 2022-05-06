; ModuleID = '/llk/IR/arch/arm/mach-omap2/prcm_mpu44xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prcm_mpu44xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_domain_base = type { i32, ptr, i16 }

@prcm_mpu_base = dso_local local_unnamed_addr global %struct.omap_domain_base zeroinitializer, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_prcm_mpu_read_inst_reg(i16 noundef signext %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = sext i16 %0 to i32
  %4 = zext i16 %1 to i32
  %5 = add nsw i32 %3, -98291712
  %6 = add nuw nsw i32 %5, %4
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #2, !srcloc !8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap4_prcm_mpu_write_inst_reg(i32 noundef %0, i16 noundef signext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = sext i16 %1 to i32
  %5 = zext i16 %2 to i32
  %6 = add nsw i32 %4, -98291712
  %7 = add nuw nsw i32 %6, %5
  %8 = inttoptr i32 %7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %0) #2, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap4_prcm_mpu_rmw_inst_reg_bits(i32 noundef %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = sext i16 %2 to i32
  %6 = zext i16 %3 to i32
  %7 = add nsw i32 %5, -98291712
  %8 = add nuw nsw i32 %7, %6
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #2, !srcloc !8
  %11 = xor i32 %0, -1
  %12 = and i32 %10, %11
  %13 = or i32 %12, %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %13) #2, !srcloc !9
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap2_set_globals_prcm_mpu(ptr noundef %0) local_unnamed_addr #1 section ".init.text" {
  store ptr %0, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prcm_mpu_base, i32 0, i32 1), align 4
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 946609}
!9 = !{i64 946191}
