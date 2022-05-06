; ModuleID = '/llk/IR/arch/arm/mach-tegra/reset.c_pt.bc'
source_filename = "../arch/arm/mach-tegra/reset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.firmware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__tegra_cpu_reset_handler_data = external dso_local local_unnamed_addr global [7 x i32], align 4
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@is_enabled = internal unnamed_addr global i1 false, align 1
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [36 x i8] c"\012Cannot set CPU reset handler: %d\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @tegra_cpu_reset_handler_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call zeroext i1 @trusted_foundations_registered() #4
  %2 = zext i1 %1 to i32
  store i32 %2, ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 6), align 4
  %3 = load i32, ptr @__cpu_possible_mask, align 4
  store i32 %3, ptr @__tegra_cpu_reset_handler_data, align 4
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #5, !srcloc !8
  store i32 %4, ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 3), align 4
  store i32 1073745920, ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 5), align 4
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @tegra_resume to i32), i32 -2130706432, i32 8454144) #5, !srcloc !8
  store i32 %5, ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 4), align 4
  tail call fastcc void @tegra_cpu_reset_handler_enable() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trusted_foundations_registered() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_resume() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra_cpu_reset_handler_enable() unnamed_addr #0 section ".init.text" {
  %1 = load i1, ptr @is_enabled, align 1
  br i1 %1, label %2, label %3, !prof !9

2:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/reset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 63, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable

3:                                                ; preds = %0
  br i1 icmp sgt (i32 sub (i32 ptrtoint (ptr @__tegra_cpu_reset_handler_end to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1024), label %4, label %5, !prof !9

4:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/reset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 64, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4194304 inttoptr (i32 -29360128 to ptr), ptr nonnull align 1 @__tegra_cpu_reset_handler_start, i32 sub (i32 ptrtoint (ptr @__tegra_cpu_reset_handler_end to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i1 false)
  %6 = load ptr, ptr @firmware_ops, align 4
  %7 = getelementptr inbounds %struct.firmware_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 %8(i32 noundef 0, i32 noundef add (i32 sub (i32 ptrtoint (ptr @__tegra_cpu_reset_handler to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824)) #4
  switch i32 %11, label %14 [
    i32 -38, label %12
    i32 0, label %13
  ]

12:                                               ; preds = %10, %5
  tail call fastcc void @tegra_cpu_reset_handler_set() #6
  br label %13

13:                                               ; preds = %12, %10
  store i1 true, ptr @is_enabled, align 1
  ret void

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %11) #7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/reset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tegra_cpu_reset_handler() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tegra_cpu_reset_handler_start() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tegra_cpu_reset_handler_end() #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra_cpu_reset_handler_set() unnamed_addr #0 section ".init.text" {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -31395584 to ptr), i32 add (i32 sub (i32 ptrtoint (ptr @__tegra_cpu_reset_handler to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824)) #4, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -31395584 to ptr)) #4, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -31407616 to ptr)) #4, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  %3 = or i32 %2, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -31407616 to ptr), i32 %3) #4, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }
attributes #6 = { cold }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2148560497, i64 2148560520, i64 2148560552, i64 2148560584, i64 2148560622, i64 2148560652}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152683151, i64 2152683642, i64 2152683188, i64 2152683244, i64 2152683278, i64 2152683302, i64 2152683343, i64 2152683364, i64 2152683392, i64 2152683426}
!11 = !{i64 2152684418, i64 2152684909, i64 2152684455, i64 2152684511, i64 2152684545, i64 2152684569, i64 2152684610, i64 2152684631, i64 2152684659, i64 2152684693}
!12 = !{i64 2152686049, i64 2152686540, i64 2152686086, i64 2152686142, i64 2152686176, i64 2152686200, i64 2152686241, i64 2152686262, i64 2152686290, i64 2152686324}
!13 = !{i64 2152675094}
!14 = !{i64 1049465}
!15 = !{i64 2152675358}
!16 = !{i64 1049883}
!17 = !{i64 2152679743}
!18 = !{i64 2152680047}
!19 = !{i64 2152680222}
!20 = !{i64 2152680460}
