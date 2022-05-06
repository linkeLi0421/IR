; ModuleID = '/llk/IR/arch/arm/mach-hisi/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-hisi/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }

@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@ctrl_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [21 x i8] c"hisilicon,hi3620-smp\00", align 1
@hi3xxx_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @hi3xxx_smp_prepare_cpus, ptr null, ptr @hi3xxx_boot_secondary, ptr @hi3xxx_cpu_kill, ptr @hi3xxx_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_hi3xxx_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @hi3xxx_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"hisilicon,hix5hd2-smp\00", align 1
@hix5hd2_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @hisi_common_smp_prepare_cpus, ptr null, ptr @hix5hd2_boot_secondary, ptr null, ptr @hix5hd2_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_hix5hd2_smp = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @hix5hd2_smp_ops }, section "__cpu_method_of_table", align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"hisilicon,hip01-smp\00", align 1
@hip01_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @hisi_common_smp_prepare_cpus, ptr null, ptr @hip01_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_hip01_smp = internal constant %struct.of_cpu_method { ptr @.str.2, ptr @hip01_smp_ops }, section "__cpu_method_of_table", align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"hisilicon,sysctrl\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\013failed to find hisilicon,sysctrl node\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\013failed to map address\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"smp-offset\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"\013failed to find smp-offset property\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"\013ioremap(scu_base) failed\0A\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"hisilicon,hip01-sysctrl\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"arch/arm/mach-hisi/platsmp.c\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__cpu_method_of_table_hi3xxx_smp, ptr @__cpu_method_of_table_hip01_smp, ptr @__cpu_method_of_table_hix5hd2_smp], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hi3xxx_set_cpu_jump(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = load ptr, ptr @ctrl_base, align 4
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = ptrtoint ptr %1 to i32
  %11 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %10, i32 -2130706432, i32 8454144) #5, !srcloc !8
  %12 = shl i32 %4, 2
  %13 = add i32 %12, -4
  %14 = getelementptr i8, ptr %6, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #6, !srcloc !9
  br label %15

15:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hi3xxx_get_cpu_jump(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = load ptr, ptr @ctrl_base, align 4
  %6 = icmp ne ptr %5, null
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = shl i32 %3, 2
  %10 = add i32 %9, -4
  %11 = getelementptr i8, ptr %5, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !10
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i32 [ %12, %8 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi3xxx_smp_prepare_cpus(i32 noundef %0) #2 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4
  tail call fastcc void @hisi_enable_scu_a9() #7
  %3 = load ptr, ptr @ctrl_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %24

10:                                               ; preds = %5
  %11 = tail call ptr @of_iomap(ptr noundef nonnull %6, i32 noundef 0) #6
  store ptr %11, ptr @ctrl_base, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %24

15:                                               ; preds = %10
  %16 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %24

20:                                               ; preds = %15
  %21 = load i32, ptr %2, align 4
  %22 = load ptr, ptr @ctrl_base, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  store ptr %23, ptr @ctrl_base, align 4
  br label %24

24:                                               ; preds = %20, %18, %13, %8, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3xxx_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @hi3xxx_set_cpu(i32 noundef %0, i1 noundef zeroext true) #6
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = load ptr, ptr @ctrl_base, align 4
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #5, !srcloc !8
  %11 = shl i32 %4, 2
  %12 = add i32 %11, -4
  %13 = getelementptr i8, ptr %6, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #6, !srcloc !9
  br label %14

14:                                               ; preds = %9, %2
  %15 = and i32 %0, 31
  %16 = add nuw nsw i32 %15, 1
  %17 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %16
  %18 = lshr i32 %0, 5
  %19 = sub nsw i32 0, %18
  %20 = getelementptr i32, ptr %17, i32 %19
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %20) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hi3xxx_cpu_kill(i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hi3xxx_cpu_die(i32 noundef) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @hisi_enable_scu_a9() unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #5, !srcloc !11
  %2 = and i32 %1, -16711696
  %3 = icmp eq i32 %2, 1090568336
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #5, !srcloc !12
  %6 = tail call ptr @ioremap(i32 noundef %5, i32 noundef 4096) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %11

10:                                               ; preds = %4
  tail call void @scu_enable(ptr noundef nonnull %6) #6
  tail call void @iounmap(ptr noundef nonnull %6) #6
  br label %11

11:                                               ; preds = %10, %8, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hi3xxx_set_cpu(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hisi_common_smp_prepare_cpus(i32 noundef %0) #2 section ".init.text" {
  tail call fastcc void @hisi_enable_scu_a9() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hix5hd2_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #5, !srcloc !8
  %4 = tail call ptr @ioremap(i32 noundef -65536, i32 noundef 4096) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -450891772) #6, !srcloc !9
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !9
  tail call void @iounmap(ptr noundef %4) #6
  tail call void @hix5hd2_set_cpu(i32 noundef %0, i1 noundef zeroext true) #6
  %6 = and i32 %0, 31
  %7 = add nuw nsw i32 %6, 1
  %8 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %7
  %9 = lshr i32 %0, 5
  %10 = sub nsw i32 0, %9
  %11 = getelementptr i32, ptr %8, i32 %10
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hix5hd2_cpu_die(i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hix5hd2_set_cpu(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hip01_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #5, !srcloc !8
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 -2147483648, i32 -2130706432, i32 8454144) #5, !srcloc !13
  %5 = inttoptr i32 %4 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -450891772) #6, !srcloc !9
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %3) #6, !srcloc !9
  %7 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !14

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 160, i32 noundef 9, ptr noundef null) #6
  br label %15

10:                                               ; preds = %2
  %11 = tail call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #6
  store ptr %11, ptr @ctrl_base, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  %13 = or i32 %12, 256
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %14 = load ptr, ptr @ctrl_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #6, !srcloc !9
  tail call void @hip01_set_cpu(i32 noundef %0, i1 noundef zeroext true) #6
  br label %15

15:                                               ; preds = %10, %9
  %16 = phi i32 [ -1, %9 ], [ 0, %10 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hip01_set_cpu(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2148741957, i64 2148741980, i64 2148742012, i64 2148742044, i64 2148742082, i64 2148742112}
!9 = !{i64 1293776}
!10 = !{i64 1294194}
!11 = !{i64 2152673533}
!12 = !{i64 5199355}
!13 = !{i64 2148742743, i64 2148742766, i64 2148742798, i64 2148742830, i64 2148742868, i64 2148742898}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2152697266}
!16 = !{i64 2152697315}
