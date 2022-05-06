; ModuleID = '/llk/IR/arch/arm/mach-qcom/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-qcom/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = private unnamed_addr constant [17 x i8] c"qcom,gcc-msm8660\00", align 1
@smp_msm8660_ops = internal constant %struct.smp_operations { ptr null, ptr @qcom_smp_prepare_cpus, ptr null, ptr @msm8660_boot_secondary, ptr null, ptr @qcom_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_qcom_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @smp_msm8660_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"qcom,msm8226-smp\00", align 1
@qcom_smp_cortex_a7_ops = internal constant %struct.smp_operations { ptr null, ptr @qcom_smp_prepare_cpus, ptr null, ptr @cortex_a7_boot_secondary, ptr null, ptr @qcom_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_qcom_smp_msm8226 = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @qcom_smp_cortex_a7_ops }, section "__cpu_method_of_table", align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"qcom,msm8916-smp\00", align 1
@__cpu_method_of_table_qcom_smp_msm8916 = internal constant %struct.of_cpu_method { ptr @.str.2, ptr @qcom_smp_cortex_a7_ops }, section "__cpu_method_of_table", align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"qcom,kpss-acc-v1\00", align 1
@qcom_smp_kpssv1_ops = internal constant %struct.smp_operations { ptr null, ptr @qcom_smp_prepare_cpus, ptr null, ptr @kpssv1_boot_secondary, ptr null, ptr @qcom_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_qcom_smp_kpssv1 = internal constant %struct.of_cpu_method { ptr @.str.3, ptr @qcom_smp_kpssv1_ops }, section "__cpu_method_of_table", align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"qcom,kpss-acc-v2\00", align 1
@qcom_smp_kpssv2_ops = internal constant %struct.smp_operations { ptr null, ptr @qcom_smp_prepare_cpus, ptr null, ptr @kpssv2_boot_secondary, ptr null, ptr @qcom_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_qcom_smp_kpssv2 = internal constant %struct.of_cpu_method { ptr @.str.4, ptr @qcom_smp_kpssv2_ops }, section "__cpu_method_of_table", align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"\014Failed to set CPU boot address, disabling SMP\0A\00", align 1
@cold_boot_done = internal global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"\013%s: can't find node\0A\00", align 1
@__func__.scss_release_secondary = private unnamed_addr constant [23 x i8] c"scss_release_secondary\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"qcom,acc\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"qcom,saw\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"next-level-cache\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__cpu_method_of_table_qcom_smp, ptr @__cpu_method_of_table_qcom_smp_kpssv1, ptr @__cpu_method_of_table_qcom_smp_kpssv2, ptr @__cpu_method_of_table_qcom_smp_msm8226, ptr @__cpu_method_of_table_qcom_smp_msm8916], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @qcom_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @qcom_scm_set_cold_boot_addr(ptr noundef nonnull @secondary_startup_arm, ptr noundef nonnull @__cpu_present_mask) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #9
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = tail call ptr @llvm.thread.pointer() #8
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  br label %11

11:                                               ; preds = %18, %8
  %12 = phi i32 [ %6, %8 ], [ %19, %18 ]
  %13 = phi i32 [ %5, %8 ], [ %20, %18 ]
  %14 = load i32, ptr %10, align 8
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  tail call void @_clear_bit(i32 noundef %13, ptr noundef nonnull @__cpu_present_mask) #8
  %17 = load i32, ptr @nr_cpu_ids, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi i32 [ %17, %16 ], [ %12, %11 ]
  %20 = tail call i32 @cpumask_next(i32 noundef %13, ptr noundef nonnull @__cpu_present_mask) #9
  %21 = icmp ult i32 %20, %19
  br i1 %21, label %11, label %22

22:                                               ; preds = %18, %4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %24

24:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm8660_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @cold_boot_done to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.scss_release_secondary) #10
  br label %24

14:                                               ; preds = %9
  %15 = tail call ptr @of_iomap(ptr noundef nonnull %10, i32 noundef 0) #8
  tail call void @of_node_put(ptr noundef nonnull %10) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %15, i32 13728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #8, !srcloc !8
  %19 = getelementptr i8, ptr %15, i32 11648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #8, !srcloc !8
  %20 = getelementptr i8, ptr %15, i32 11876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 3) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void @iounmap(ptr noundef nonnull %15) #8
  %21 = load i32, ptr %3, align 4
  %22 = add i32 %21, ptrtoint (ptr @cold_boot_done to i32)
  %23 = inttoptr i32 %22 to ptr
  store i32 1, ptr %23, align 4
  br label %24

24:                                               ; preds = %17, %14, %12, %2
  %25 = phi i32 [ 0, %2 ], [ 0, %17 ], [ -12, %14 ], [ -6, %12 ]
  %26 = and i32 %0, 31
  %27 = add nuw nsw i32 %26, 1
  %28 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %27
  %29 = lshr i32 %0, 5
  %30 = sub nsw i32 0, %29
  %31 = getelementptr i32, ptr %28, i32 %30
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %31) #8
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @qcom_cpu_die(i32 noundef %0) #1 {
  tail call void asm sideeffect "wfi", "~{memory}"() #8, !srcloc !10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_set_cold_boot_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup_arm() #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cortex_a7_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @cold_boot_done to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = tail call ptr @of_get_cpu_node(i32 noundef %0, ptr noundef null) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !11
  %14 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %11, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #8
  %15 = icmp ne i32 %14, 0
  %16 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %17 = icmp eq ptr %16, null
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  call void @of_node_put(ptr noundef nonnull %11) #8
  br label %35

20:                                               ; preds = %13
  %21 = call ptr @of_iomap(ptr noundef nonnull %16, i32 noundef 0) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  call void @arm_heavy_mb() #8
  %24 = getelementptr i8, ptr %21, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 51) #8, !srcloc !8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  call void @arm_heavy_mb() #8
  %25 = getelementptr i8, ptr %21, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 268435457) #8, !srcloc !8
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 429496) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 49) #8, !srcloc !8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 57) #8, !srcloc !8
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 429496) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 131128) #8, !srcloc !8
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 429496) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 131080) #8, !srcloc !8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 131208) #8, !srcloc !8
  call void @iounmap(ptr noundef nonnull %21) #8
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i32 [ 0, %23 ], [ -12, %20 ]
  call void @of_node_put(ptr noundef nonnull %16) #8
  call void @of_node_put(ptr noundef nonnull %11) #8
  br i1 %22, label %35, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %4, align 4
  %33 = add i32 %32, ptrtoint (ptr @cold_boot_done to i32)
  %34 = inttoptr i32 %33 to ptr
  store i32 1, ptr %34, align 4
  br label %35

35:                                               ; preds = %31, %29, %19, %10, %2
  %36 = phi i32 [ 0, %2 ], [ %30, %29 ], [ 0, %31 ], [ -19, %19 ], [ -19, %10 ]
  %37 = and i32 %0, 31
  %38 = add nuw nsw i32 %37, 1
  %39 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %38
  %40 = lshr i32 %0, 5
  %41 = sub nsw i32 0, %40
  %42 = getelementptr i32, ptr %39, i32 %41
  call void @arch_send_wakeup_ipi_mask(ptr noundef %42) #8
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kpssv1_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, ptrtoint (ptr @cold_boot_done to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %2
  %12 = tail call ptr @of_get_cpu_node(i32 noundef %0, ptr noundef null) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #8, !annotation !11
  %15 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %12, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #8
  %16 = icmp ne i32 %15, 0
  %17 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  %18 = icmp eq ptr %17, null
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @of_node_put(ptr noundef nonnull %12) #8
  br label %52

21:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !11
  %22 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %12, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #8
  %23 = icmp ne i32 %22, 0
  %24 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %25 = icmp eq ptr %24, null
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %21
  %28 = call ptr @of_iomap(ptr noundef nonnull %17, i32 noundef 0) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = call ptr @of_iomap(ptr noundef nonnull %24, i32 noundef 0) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %31, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 164) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 109950976) #8
  %36 = getelementptr i8, ptr %28, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 265) #8, !srcloc !8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 257) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 289) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  call void @arm_heavy_mb() #8
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 429496) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 288) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  call void @arm_heavy_mb() #8
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 429496) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 256) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  call void @arm_heavy_mb() #8
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 21474800) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 384) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  call void @arm_heavy_mb() #8
  call void @iounmap(ptr noundef nonnull %31) #8
  br label %41

41:                                               ; preds = %33, %30
  %42 = phi i32 [ 0, %33 ], [ -12, %30 ]
  call void @iounmap(ptr noundef nonnull %28) #8
  br label %43

43:                                               ; preds = %41, %27
  %44 = phi i32 [ %42, %41 ], [ -12, %27 ]
  call void @of_node_put(ptr noundef nonnull %24) #8
  br label %45

45:                                               ; preds = %43, %21
  %46 = phi i32 [ %44, %43 ], [ -19, %21 ]
  call void @of_node_put(ptr noundef nonnull %17) #8
  call void @of_node_put(ptr noundef nonnull %12) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, ptr %5, align 4
  %50 = add i32 %49, ptrtoint (ptr @cold_boot_done to i32)
  %51 = inttoptr i32 %50 to ptr
  store i32 1, ptr %51, align 4
  br label %52

52:                                               ; preds = %48, %45, %20, %11, %2
  %53 = phi i32 [ 0, %2 ], [ %46, %45 ], [ 0, %48 ], [ -19, %20 ], [ -19, %11 ]
  %54 = and i32 %0, 31
  %55 = add nuw nsw i32 %54, 1
  %56 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %55
  %57 = lshr i32 %0, 5
  %58 = sub nsw i32 0, %57
  %59 = getelementptr i32, ptr %56, i32 %58
  call void @arch_send_wakeup_ipi_mask(ptr noundef %59) #8
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kpssv2_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @cold_boot_done to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %2
  %13 = tail call ptr @of_get_cpu_node(i32 noundef %0, ptr noundef null) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %62, label %15

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #8, !annotation !11
  %16 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %13, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #8
  %17 = icmp ne i32 %16, 0
  %18 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #8
  %19 = icmp eq ptr %18, null
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  call void @of_node_put(ptr noundef nonnull %13) #8
  br label %62

22:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #8, !annotation !11
  %23 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %13, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #8
  %24 = icmp ne i32 %23, 0
  %25 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #8
  %26 = icmp eq ptr %25, null
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %55, label %28

28:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #8, !annotation !11
  %29 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %25, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #8
  %30 = icmp ne i32 %29, 0
  %31 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  %32 = icmp eq ptr %31, null
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %53, label %34

34:                                               ; preds = %28
  %35 = call ptr @of_iomap(ptr noundef nonnull %18, i32 noundef 0) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %34
  %38 = call ptr @of_iomap(ptr noundef nonnull %31, i32 noundef 0) #8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = getelementptr i8, ptr %35, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 1077870593) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  call void @arm_heavy_mb() #8
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 1077870719) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  call void @arm_heavy_mb() #8
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 214748) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 1077886847) #8, !srcloc !8
  %44 = getelementptr i8, ptr %38, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 65539) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  call void @arm_heavy_mb() #8
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 10737400) #8
  %46 = getelementptr i8, ptr %35, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 33) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  call void @arm_heavy_mb() #8
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 429496) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 32) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  call void @arm_heavy_mb() #8
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 429496) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 128) #8, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !31
  call void @arm_heavy_mb() #8
  call void @iounmap(ptr noundef nonnull %38) #8
  br label %49

49:                                               ; preds = %40, %37
  %50 = phi i32 [ 0, %40 ], [ -12, %37 ]
  call void @iounmap(ptr noundef nonnull %35) #8
  br label %51

51:                                               ; preds = %49, %34
  %52 = phi i32 [ %50, %49 ], [ -12, %34 ]
  call void @of_node_put(ptr noundef nonnull %31) #8
  br label %53

53:                                               ; preds = %51, %28
  %54 = phi i32 [ %52, %51 ], [ -19, %28 ]
  call void @of_node_put(ptr noundef nonnull %25) #8
  br label %55

55:                                               ; preds = %53, %22
  %56 = phi i32 [ %54, %53 ], [ -19, %22 ]
  call void @of_node_put(ptr noundef nonnull %18) #8
  call void @of_node_put(ptr noundef nonnull %13) #8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, ptr %6, align 4
  %60 = add i32 %59, ptrtoint (ptr @cold_boot_done to i32)
  %61 = inttoptr i32 %60 to ptr
  store i32 1, ptr %61, align 4
  br label %62

62:                                               ; preds = %58, %55, %21, %12, %2
  %63 = phi i32 [ 0, %2 ], [ %56, %55 ], [ 0, %58 ], [ -19, %21 ], [ -19, %12 ]
  %64 = and i32 %0, 31
  %65 = add nuw nsw i32 %64, 1
  %66 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %65
  %67 = lshr i32 %0, 5
  %68 = sub nsw i32 0, %67
  %69 = getelementptr i32, ptr %66, i32 %68
  call void @arch_send_wakeup_ipi_mask(ptr noundef %69) #8
  ret i32 %63
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold nounwind }

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
!8 = !{i64 3739754}
!9 = !{i64 2151347146}
!10 = !{i64 2151346220}
!11 = !{!"auto-init"}
!12 = !{i64 2151347690}
!13 = !{i64 2151348128}
!14 = !{i64 2151349135}
!15 = !{i64 2151349534}
!16 = !{i64 2151350545}
!17 = !{i64 2151351562}
!18 = !{i64 2151351961}
!19 = !{i64 2151352371}
!20 = !{i64 2151353611}
!21 = !{i64 2151353946}
!22 = !{i64 2151354803}
!23 = !{i64 2151355660}
!24 = !{i64 2151356529}
!25 = !{i64 2151356910}
!26 = !{i64 2151357695}
!27 = !{i64 2151358621}
!28 = !{i64 2151359574}
!29 = !{i64 2151360439}
!30 = !{i64 2151361304}
!31 = !{i64 2151361633}
