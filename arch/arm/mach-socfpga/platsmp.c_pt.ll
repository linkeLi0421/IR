; ModuleID = '/llk/IR/arch/arm/mach-socfpga/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-socfpga/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"altr,socfpga-smp\00", align 1
@socfpga_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @socfpga_smp_prepare_cpus, ptr null, ptr @socfpga_boot_secondary, ptr @socfpga_cpu_kill, ptr @socfpga_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_socfpga_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @socfpga_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"altr,socfpga-a10-smp\00", align 1
@socfpga_a10_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @socfpga_smp_prepare_cpus, ptr null, ptr @socfpga_a10_boot_secondary, ptr @socfpga_cpu_kill, ptr @socfpga_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_socfpga_a10_smp = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @socfpga_a10_smp_ops }, section "__cpu_method_of_table", align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"arm,cortex-a9-scu\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\013%s: missing scu\0A\00", align 1
@__func__.socfpga_smp_prepare_cpus = private unnamed_addr constant [25 x i8] c"socfpga_smp_prepare_cpus\00", align 1
@secondary_trampoline_end = external dso_local global [0 x i8], align 1
@secondary_trampoline = external dso_local global [0 x i8], align 1
@socfpga_cpu1start_addr = external dso_local local_unnamed_addr global i32, align 4
@rst_manager_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@sys_manager_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__cpu_method_of_table_socfpga_a10_smp, ptr @__cpu_method_of_table_socfpga_smp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @socfpga_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.socfpga_smp_prepare_cpus) #8
  br label %10

6:                                                ; preds = %1
  %7 = tail call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @scu_enable(ptr noundef nonnull %7) #7
  br label %10

10:                                               ; preds = %9, %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load i32, ptr @socfpga_cpu1start_addr, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr @rst_manager_base_addr, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 2) #7, !srcloc !9
  %8 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 0, i32 -2130706432, i32 8454144) #9, !srcloc !10
  %9 = inttoptr i32 %8 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %9, ptr nonnull align 1 @secondary_trampoline, i32 sub (i32 ptrtoint (ptr @secondary_trampoline_end to i32), i32 ptrtoint (ptr @secondary_trampoline to i32)), i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #9, !srcloc !12
  %11 = load ptr, ptr @sys_manager_base_addr, align 4
  %12 = load i32, ptr @socfpga_cpu1start_addr, align 4
  %13 = and i32 %12, 255
  %14 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #7, !srcloc !9
  %15 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %15() #7
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !13
  %16 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  tail call void %16(i32 noundef 0, i32 noundef sub (i32 ptrtoint (ptr @secondary_trampoline_end to i32), i32 ptrtoint (ptr @secondary_trampoline to i32))) #7
  br label %19

19:                                               ; preds = %18, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %20 = load ptr, ptr @rst_manager_base_addr, align 4
  %21 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #7, !srcloc !9
  br label %22

22:                                               ; preds = %19, %2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @socfpga_cpu_kill(i32 noundef %0) #2 {
  ret i32 1
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @socfpga_cpu_die(i32 noundef %0) #3 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %4 = tail call i32 %3() #7
  br label %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_a10_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load i32, ptr @socfpga_cpu1start_addr, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr @rst_manager_base_addr, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 2) #7, !srcloc !9
  %8 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 0, i32 -2130706432, i32 8454144) #9, !srcloc !10
  %9 = inttoptr i32 %8 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %9, ptr nonnull align 1 @secondary_trampoline, i32 sub (i32 ptrtoint (ptr @secondary_trampoline_end to i32), i32 ptrtoint (ptr @secondary_trampoline to i32)), i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #9, !srcloc !12
  %11 = load ptr, ptr @sys_manager_base_addr, align 4
  %12 = load i32, ptr @socfpga_cpu1start_addr, align 4
  %13 = and i32 %12, 4095
  %14 = getelementptr i8, ptr %11, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #7, !srcloc !9
  %15 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %15() #7
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !17
  %16 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  tail call void %16(i32 noundef 0, i32 noundef sub (i32 ptrtoint (ptr @secondary_trampoline_end to i32), i32 ptrtoint (ptr @secondary_trampoline to i32))) #7
  br label %19

19:                                               ; preds = %18, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %20 = load ptr, ptr @rst_manager_base_addr, align 4
  %21 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #7, !srcloc !9
  br label %22

22:                                               ; preds = %19, %2
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!8 = !{i64 2152684610}
!9 = !{i64 2384938}
!10 = !{i64 2148728320, i64 2148728343, i64 2148728375, i64 2148728407, i64 2148728445, i64 2148728475}
!11 = !{i64 2152685861}
!12 = !{i64 2148727534, i64 2148727557, i64 2148727589, i64 2148727621, i64 2148727659, i64 2148727689}
!13 = !{i64 2152686616}
!14 = !{i64 2152686820}
!15 = !{i64 2152687161}
!16 = !{i64 2152688412}
!17 = !{i64 2152689167}
!18 = !{i64 2152689371}
