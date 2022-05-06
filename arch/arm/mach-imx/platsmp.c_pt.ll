; ModuleID = '/llk/IR/arch/arm/mach-imx/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-imx/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.map_desc = type { i32, i32, i32, i32 }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@scu_io_desc = internal global %struct.map_desc { i32 0, i32 0, i32 4096, i32 0 }, section ".init.data", align 4
@scu_base = internal unnamed_addr global ptr null, align 4
@imx_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr @imx_smp_init_cpus, ptr @imx_smp_prepare_cpus, ptr null, ptr @imx_boot_secondary, ptr @imx_cpu_kill, ptr @imx_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@imx7_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr @imx7_smp_init_cpus, ptr null, ptr null, ptr @imx_boot_secondary, ptr @imx_cpu_kill, ptr @imx_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@ls1021a_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr null, ptr @ls1021a_smp_prepare_cpus, ptr null, ptr @ls1021a_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@g_diag_reg = dso_local global i32 0, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str = private unnamed_addr constant [17 x i8] c"fsl,ls1021a-dcfg\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @imx_scu_map_io() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #4, !srcloc !8
  %2 = lshr i32 %1, 7
  %3 = and i32 %2, 16777216
  %4 = lshr i32 %1, 6
  %5 = and i32 %4, 20971520
  %6 = lshr i32 %1, 4
  %7 = and i32 %6, 11534336
  %8 = and i32 %1, 1048575
  %9 = or i32 %8, %7
  %10 = or i32 %9, %5
  %11 = or i32 %10, %3
  %12 = or i32 %11, -201326592
  store i32 %12, ptr @scu_io_desc, align 4
  %13 = lshr i32 %1, 12
  store i32 %13, ptr getelementptr inbounds (%struct.map_desc, ptr @scu_io_desc, i32 0, i32 1), align 4
  tail call void @iotable_init(ptr noundef nonnull @scu_io_desc, i32 noundef 1) #5
  %14 = inttoptr i32 %12 to ptr
  store ptr %14, ptr @scu_base, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_smp_prepare() local_unnamed_addr #2 {
  %1 = load ptr, ptr @scu_base, align 4
  tail call void @scu_enable(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx_smp_init_cpus() #0 section ".init.text" {
  %1 = load ptr, ptr @scu_base, align 4
  %2 = tail call i32 @scu_get_core_count(ptr noundef %1) #5
  %3 = icmp slt i32 %2, 16
  br i1 %3, label %4, label %8

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %6, %4 ], [ %2, %0 ]
  tail call void @_clear_bit(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #5
  %6 = add i32 %5, 1
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %4

8:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr @scu_base, align 4
  tail call void @scu_enable(ptr noundef %2) #5
  %3 = tail call i32 asm "mrc p15, 0, $0, c15, c0, 1", "=r,~{cc}"() #4, !srcloc !9
  store i32 %3, ptr @g_diag_reg, align 4
  %4 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %4(ptr noundef nonnull @g_diag_reg, i32 noundef 4) #5
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @g_diag_reg to i32), i32 -2130706432, i32 8454144) #4, !srcloc !10
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @g_diag_reg, i32 1) to i32), i32 -2130706432, i32 8454144) #4, !srcloc !10
  %7 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(i32 noundef %5, i32 noundef %6) #5
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #2 {
  tail call void @imx_set_cpu_jump(i32 noundef %0, ptr noundef nonnull @v7_secondary_startup) #5
  tail call void @imx_enable_cpu(i32 noundef %0, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_cpu_kill(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_cpu_die(i32 noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx7_smp_init_cpus() #0 section ".init.text" {
  %1 = tail call ptr @of_get_next_cpu_node(ptr noundef null) #5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %7

3:                                                ; preds = %7
  %4 = icmp slt i32 %10, 16
  br i1 %4, label %5, label %17

5:                                                ; preds = %3, %0
  %6 = phi i32 [ 0, %0 ], [ %10, %3 ]
  br label %13

7:                                                ; preds = %7, %0
  %8 = phi i32 [ %10, %7 ], [ 0, %0 ]
  %9 = phi ptr [ %11, %7 ], [ %1, %0 ]
  %10 = add i32 %8, 1
  %11 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %9) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %3, label %7

13:                                               ; preds = %13, %5
  %14 = phi i32 [ %15, %13 ], [ %6, %5 ]
  tail call void @_clear_bit(i32 noundef %14, ptr noundef nonnull @__cpu_possible_mask) #5
  %15 = add i32 %14, 1
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %17, label %13

17:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ls1021a_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %3 = tail call ptr @of_iomap(ptr noundef %2, i32 noundef 0) #5
  tail call void @of_node_put(ptr noundef %2) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/platsmp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

6:                                                ; preds = %1
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #4, !srcloc !10
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = getelementptr i8, ptr %3, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #5, !srcloc !13
  tail call void @iounmap(ptr noundef nonnull %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ls1021a_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = and i32 %0, 31
  %4 = add nuw nsw i32 %3, 1
  %5 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %4
  %6 = lshr i32 %0, 5
  %7 = sub nsw i32 0, %6
  %8 = getelementptr i32, ptr %5, i32 %7
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %8) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_core_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_set_cpu_jump(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v7_secondary_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_enable_cpu(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_cpu_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

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
!8 = !{i64 649}
!9 = !{i64 1850}
!10 = !{i64 2148886124, i64 2148886147, i64 2148886179, i64 2148886211, i64 2148886249, i64 2148886279}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2152340940, i64 2152341432, i64 2152340977, i64 2152341033, i64 2152341067, i64 2152341091, i64 2152341132, i64 2152341153, i64 2152341181, i64 2152341215}
!13 = !{i64 2807259}
