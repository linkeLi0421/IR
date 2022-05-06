; ModuleID = '/llk/IR/drivers/soc/actions/owl-sps-helper.c_pt.bc'
source_filename = "../drivers/soc/actions/owl-sps-helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_owl_sps_set_pg:\09\09\09\09\09"
module asm "\09.asciz \09\22owl_sps_set_pg\22\09\09\09\09\09"
module asm "__kstrtabns_owl_sps_set_pg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_owl_sps_set_pg = external dso_local constant [0 x i8], align 1
@__kstrtabns_owl_sps_set_pg = external dso_local constant [0 x i8], align 1
@__ksymtab_owl_sps_set_pg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @owl_sps_set_pg to i32), ptr @__kstrtab_owl_sps_set_pg, ptr @__kstrtabns_owl_sps_set_pg }, section "___ksymtab_gpl+owl_sps_set_pg", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_owl_sps_set_pg], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @owl_sps_set_pg(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %6 = and i32 %5, %2
  %7 = icmp eq i32 %6, 0
  %8 = xor i1 %7, %3
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = or i32 %5, %1
  %11 = xor i32 %1, -1
  %12 = and i32 %5, %11
  %13 = select i1 %3, i32 %10, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %13) #2, !srcloc !11
  %14 = select i1 %3, i32 %2, i32 0
  br label %15

15:                                               ; preds = %21, %9
  %16 = phi i32 [ 5000, %9 ], [ %22, %21 ]
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !12
  %18 = and i32 %17, %2
  %19 = icmp eq i32 %18, %14
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  br i1 %19, label %24, label %21

21:                                               ; preds = %15
  tail call void %20(i32 noundef 10737400) #2
  %22 = add nsw i32 %16, -50
  %23 = icmp ugt i32 %16, 50
  br i1 %23, label %15, label %25

24:                                               ; preds = %15
  tail call void %20(i32 noundef 2147480) #2
  br label %25

25:                                               ; preds = %24, %21, %4
  %26 = phi i32 [ 0, %24 ], [ 0, %4 ], [ -110, %21 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
!8 = !{i64 2382795}
!9 = !{i64 2149948502}
!10 = !{i64 2149948684}
!11 = !{i64 2382377}
!12 = !{i64 2149949123}
