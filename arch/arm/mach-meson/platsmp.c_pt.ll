; ModuleID = '/llk/IR/arch/arm/mach-meson/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-meson/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [19 x i8] c"amlogic,meson8-smp\00", align 1
@meson8_smp_ops = internal global %struct.smp_operations { ptr null, ptr @meson8_smp_prepare_cpus, ptr null, ptr @meson8_smp_boot_secondary, ptr @meson8_smp_cpu_kill, ptr @meson8_smp_cpu_die, ptr null, ptr null }, section ".init.data", align 4
@__cpu_method_of_table_meson8_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @meson8_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"amlogic,meson8b-smp\00", align 1
@meson8b_smp_ops = internal global %struct.smp_operations { ptr null, ptr @meson8b_smp_prepare_cpus, ptr null, ptr @meson8b_smp_boot_secondary, ptr @meson8b_smp_cpu_kill, ptr @meson8_smp_cpu_die, ptr null, ptr null }, section ".init.data", align 4
@__cpu_method_of_table_meson8b_smp = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @meson8b_smp_ops }, section "__cpu_method_of_table", align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"arm,cortex-a9-scu\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"amlogic,meson8-pmu\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"amlogic,meson8-smp-sram\00", align 1
@meson_smp_prepare_cpus.node = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"\013Missing SRAM node\0A\00", align 1
@sram_base = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"\013Couldn't map SRAM registers\0A\00", align 1
@pmu = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"\013Couldn't map PMU registers\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\013Missing SCU node\0A\00", align 1
@scu_base = internal unnamed_addr global ptr null, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"\013Couldn't map SCU registers\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"\013Couldn't get the reset controller for CPU%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"\013Failed to assert CPU%d reset\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"\013Couldn't wake up CPU%d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"\013Error when disabling isolation of CPU%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"\013Failed to de-assert CPU%d reset\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.15 = private unnamed_addr constant [42 x i8] c"\013Timeout while waiting for CPU%d status\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"\013Error while waiting for SCU power-off on CPU%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"\013Error when enabling isolation for CPU%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"\013Couldn't change sleep status of CPU%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"arch/arm/mach-meson/platsmp.c\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"arm,cortex-a5-scu\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"amlogic,meson8b-pmu\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"amlogic,meson8b-smp-sram\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"\013Couldn't power up CPU%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"\013Couldn't power up the memory for CPU%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"\013Timeout while polling PMU for CPU%d status\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"\013Couldn't power down CPU%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"\013Couldn't power down the memory of CPU%d\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__cpu_method_of_table_meson8_smp, ptr @__cpu_method_of_table_meson8b_smp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson8_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  tail call fastcc void @meson_smp_prepare_cpus(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson8_smp_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = tail call ptr @of_get_cpu_node(i32 noundef %0, ptr noundef null) #6
  %4 = tail call ptr @__of_reset_control_get(ptr noundef %3, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %0) #7
  %8 = ptrtoint ptr %4 to i32
  br label %44

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #8, !srcloc !9
  %11 = load ptr, ptr @sram_base, align 4
  %12 = shl i32 %0, 2
  %13 = getelementptr i8, ptr %11, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #6, !srcloc !10
  %14 = load ptr, ptr @scu_base, align 4
  %15 = tail call i32 @scu_cpu_power_enable(ptr noundef %14, i32 noundef %0) #6
  %16 = tail call i32 @reset_control_assert(ptr noundef %4) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %0) #7
  br label %43

20:                                               ; preds = %9
  %21 = load ptr, ptr @pmu, align 4
  %22 = shl i32 %0, 1
  %23 = add i32 %22, 2
  %24 = shl i32 3, %23
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4, i32 noundef %24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %0) #7
  br label %43

29:                                               ; preds = %20
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #6
  %31 = load ptr, ptr @pmu, align 4
  %32 = shl nuw i32 1, %0
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 0, i32 noundef %32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %0) #7
  br label %43

37:                                               ; preds = %29
  %38 = tail call i32 @reset_control_deassert(ptr noundef %4) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %0) #7
  br label %43

42:                                               ; preds = %37
  tail call fastcc void @meson_smp_finalize_secondary_boot(i32 noundef %0)
  br label %43

43:                                               ; preds = %42, %40, %35, %27, %18
  tail call void @reset_control_put(ptr noundef %4) #6
  br label %44

44:                                               ; preds = %43, %6
  %45 = phi i32 [ %8, %6 ], [ 0, %43 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson8_smp_cpu_kill(i32 noundef %0) #1 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = sub i32 -5000, %2
  br label %4

4:                                                ; preds = %8, %1
  %5 = load ptr, ptr @scu_base, align 4
  %6 = tail call i32 @scu_get_cpu_power_mode(ptr noundef %5, i32 noundef %0) #6
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #6
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = add i32 %3, %9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %4, label %25

12:                                               ; preds = %4
  tail call void @msleep(i32 noundef 30) #6
  %13 = load ptr, ptr @pmu, align 4
  %14 = shl nuw i32 1, %0
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef %14, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #6
  %19 = load ptr, ptr @pmu, align 4
  %20 = shl i32 %0, 1
  %21 = add i32 %20, 2
  %22 = shl i32 3, %21
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 4, i32 noundef %22, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17, %12, %8
  %26 = phi ptr [ @.str.17, %12 ], [ @.str.18, %17 ], [ @.str.16, %8 ]
  %27 = phi i32 [ %15, %12 ], [ %23, %17 ], [ -110, %8 ]
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %26, i32 noundef %0) #7
  br label %29

29:                                               ; preds = %25, %17
  %30 = phi i32 [ 1, %17 ], [ %27, %25 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson8_smp_cpu_die(i32 noundef %0) #1 {
  %2 = load ptr, ptr @sram_base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %4 = shl nuw i32 1, %0
  %5 = xor i32 %4, -1
  %6 = and i32 %3, %5
  %7 = or i32 %6, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %8 = load ptr, ptr @sram_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #6, !srcloc !10
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #6, !srcloc !14
  %9 = load ptr, ptr @scu_base, align 4
  %10 = tail call i32 @scu_power_mode(ptr noundef %9, i32 noundef 3) #6
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "wfi", "~{memory}"() #6, !srcloc !16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 305, i32 noundef 9, ptr noundef null) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @meson_smp_prepare_cpus(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %2) #6
  store ptr %4, ptr @meson_smp_prepare_cpus.node, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  br label %29

8:                                                ; preds = %3
  %9 = tail call ptr @of_iomap(ptr noundef nonnull %4, i32 noundef 0) #6
  store ptr %9, ptr @sram_base, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  br label %29

13:                                               ; preds = %8
  %14 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef %1) #6
  store ptr %14, ptr @pmu, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %29

18:                                               ; preds = %13
  %19 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %0) #6
  store ptr %19, ptr @meson_smp_prepare_cpus.node, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #7
  br label %29

23:                                               ; preds = %18
  %24 = tail call ptr @of_iomap(ptr noundef nonnull %19, i32 noundef 0) #6
  store ptr %24, ptr @scu_base, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #7
  br label %29

28:                                               ; preds = %23
  tail call void @scu_enable(ptr noundef nonnull %24) #6
  br label %29

29:                                               ; preds = %28, %26, %21, %16, %11, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @meson_smp_finalize_secondary_boot(i32 noundef %0) unnamed_addr #1 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = shl i32 %0, 2
  %4 = sub i32 -1000, %2
  br label %5

5:                                                ; preds = %10, %1
  %6 = load ptr, ptr @sram_base, align 4
  %7 = getelementptr i8, ptr %6, i32 %3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = add i32 %4, %11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %5, label %14

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %0) #7
  br label %26

16:                                               ; preds = %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #8, !srcloc !9
  %18 = load ptr, ptr @sram_base, align 4
  %19 = getelementptr i8, ptr %18, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #6, !srcloc !10
  %20 = load ptr, ptr @sram_base, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %22 = shl nuw i32 1, %0
  %23 = or i32 %22, %21
  %24 = or i32 %23, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !13
  tail call void @arm_heavy_mb() #6
  %25 = load ptr, ptr @sram_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #6, !srcloc !10
  br label %26

26:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_cpu_power_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_cpu_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson8b_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  tail call fastcc void @meson_smp_prepare_cpus(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson8b_smp_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !19
  %4 = tail call ptr @of_get_cpu_node(i32 noundef %0, ptr noundef null) #6
  %5 = tail call ptr @__of_reset_control_get(ptr noundef %4, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %0) #7
  %9 = ptrtoint ptr %5 to i32
  br label %93

10:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #8, !srcloc !9
  %12 = load ptr, ptr @sram_base, align 4
  %13 = shl i32 %0, 2
  %14 = getelementptr i8, ptr %12, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #6, !srcloc !10
  %15 = load ptr, ptr @scu_base, align 4
  %16 = tail call i32 @scu_cpu_power_enable(ptr noundef %15, i32 noundef %0) #6
  %17 = load ptr, ptr @pmu, align 4
  %18 = shl i32 %0, 1
  %19 = add i32 %18, 16
  %20 = shl i32 3, %19
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef %20, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %10
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %0) #7
  br label %92

25:                                               ; preds = %10
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 1073740) #6
  %27 = tail call i32 @reset_control_assert(ptr noundef %5) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %0) #7
  br label %92

31:                                               ; preds = %25
  %32 = load ptr, ptr @pmu, align 4
  %33 = mul i32 %0, -4
  %34 = add i32 %33, 32
  %35 = shl i32 15, %34
  %36 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 20, i32 noundef %35, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %0) #7
  br label %92

40:                                               ; preds = %31
  %41 = load ptr, ptr @pmu, align 4
  %42 = add i32 %18, 2
  %43 = shl i32 3, %42
  %44 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 4, i32 noundef %43, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %0) #7
  br label %92

48:                                               ; preds = %40
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 2147480) #6
  %50 = tail call i64 @ktime_get() #6
  %51 = add i64 %50, 10000000
  %52 = load ptr, ptr @pmu, align 4
  %53 = call i32 @regmap_read(ptr noundef %52, i32 noundef 4, ptr noundef nonnull %3) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %48
  %56 = add i32 %0, 16
  %57 = shl nuw i32 1, %56
  br label %58

58:                                               ; preds = %65, %55
  %59 = load i32, ptr %3, align 4
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = call i64 @ktime_get() #6
  %64 = icmp sgt i64 %63, %51
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %66 = load ptr, ptr @pmu, align 4
  %67 = call i32 @regmap_read(ptr noundef %66, i32 noundef 4, ptr noundef nonnull %3) #6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %58, label %77

69:                                               ; preds = %62
  %70 = load ptr, ptr @pmu, align 4
  %71 = call i32 @regmap_read(ptr noundef %70, i32 noundef 4, ptr noundef nonnull %3) #6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, ptr %3, align 4
  %75 = and i32 %74, %57
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73, %69, %65, %48
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %0) #7
  br label %92

79:                                               ; preds = %73, %58
  %80 = load ptr, ptr @pmu, align 4
  %81 = shl nuw i32 1, %0
  %82 = call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 0, i32 noundef %81, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %0) #7
  br label %92

86:                                               ; preds = %79
  %87 = call i32 @reset_control_deassert(ptr noundef %5) #6
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %0) #7
  br label %92

91:                                               ; preds = %86
  call fastcc void @meson_smp_finalize_secondary_boot(i32 noundef %0)
  br label %92

92:                                               ; preds = %91, %89, %84, %77, %46, %38, %29, %23
  call void @reset_control_put(ptr noundef %5) #6
  br label %93

93:                                               ; preds = %92, %7
  %94 = phi i32 [ %9, %7 ], [ 0, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson8b_smp_cpu_kill(i32 noundef %0) #1 {
  br label %2

2:                                                ; preds = %8, %1
  %3 = phi i32 [ 5000, %1 ], [ %9, %8 ]
  %4 = load ptr, ptr @scu_base, align 4
  %5 = tail call i32 @scu_get_cpu_power_mode(ptr noundef %4, i32 noundef %0) #6
  %6 = icmp eq i32 %5, 3
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #6
  br i1 %6, label %11, label %8

8:                                                ; preds = %2
  %9 = add i32 %3, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %37, label %2

11:                                               ; preds = %2
  %12 = load ptr, ptr @pmu, align 4
  %13 = shl i32 %0, 1
  %14 = add i32 %13, 16
  %15 = shl i32 3, %14
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef %15, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr @pmu, align 4
  %20 = shl nuw i32 1, %0
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 0, i32 noundef %20, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #6
  %25 = load ptr, ptr @pmu, align 4
  %26 = add i32 %13, 2
  %27 = shl i32 3, %26
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 4, i32 noundef %27, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr @pmu, align 4
  %32 = mul i32 %0, -4
  %33 = add i32 %32, 32
  %34 = shl i32 15, %33
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 20, i32 noundef %34, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30, %23, %18, %11, %8
  %38 = phi ptr [ @.str.26, %11 ], [ @.str.17, %18 ], [ @.str.18, %23 ], [ @.str.27, %30 ], [ @.str.16, %8 ]
  %39 = phi i32 [ %16, %11 ], [ %21, %18 ], [ %28, %23 ], [ %35, %30 ], [ -110, %8 ]
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %38, i32 noundef %0) #7
  br label %41

41:                                               ; preds = %37, %30
  %42 = phi i32 [ 1, %30 ], [ %39, %37 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!8 = !{i64 2152816386}
!9 = !{i64 2148733879, i64 2148733902, i64 2148733934, i64 2148733966, i64 2148734004, i64 2148734034}
!10 = !{i64 2391283}
!11 = !{i64 2391701}
!12 = !{i64 2152812072}
!13 = !{i64 2152812494}
!14 = !{i64 2152829172, i64 2152829189, i64 2152829219, i64 2152829267, i64 2152829310, i64 2152829358, i64 2152829372, i64 2152829422, i64 2152829470, i64 2152829528, i64 2152829576, i64 2152829590, i64 2152829604}
!15 = !{i64 2152829832}
!16 = !{i64 2152829888}
!17 = !{i64 2152817381}
!18 = !{i64 2152819363}
!19 = !{!"auto-init"}
