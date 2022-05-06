; ModuleID = '/llk/IR/arch/arm/mach-rockchip/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-rockchip/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [20 x i8] c"rockchip,rk3036-smp\00", align 1
@rk3036_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @rk3036_smp_prepare_cpus, ptr null, ptr @rockchip_boot_secondary, ptr @rockchip_cpu_kill, ptr @rockchip_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_rk3036_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @rk3036_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"rockchip,rk3066-smp\00", align 1
@rockchip_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @rockchip_smp_prepare_cpus, ptr null, ptr @rockchip_boot_secondary, ptr @rockchip_cpu_kill, ptr @rockchip_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_rk3066_smp = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @rockchip_smp_ops }, section "__cpu_method_of_table", align 4
@has_pmu = internal unnamed_addr global i1 false, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"rockchip,rk3066-smp-sram\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\013%s: could not find sram dt node\0A\00", align 1
@__func__.rockchip_smp_prepare_cpus = private unnamed_addr constant [26 x i8] c"rockchip_smp_prepare_cpus\00", align 1
@sram_base_addr = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"\013%s: could not map sram registers\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"arm,cortex-a9-scu\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\013%s: missing scu\0A\00", align 1
@scu_base_addr = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"\013%s: could not map scu registers\0A\00", align 1
@ncores = internal unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"\013%s: ncores %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"rockchip,pmu\00", align 1
@pmu = internal unnamed_addr global ptr null, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"rockchip,rk3066-pmu\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"\013%s: could not find pmu dt node\0A\00", align 1
@__func__.rockchip_smp_prepare_pmu = private unnamed_addr constant [25 x i8] c"rockchip_smp_prepare_pmu\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"\013%s: could not map pmu registers\0A\00", align 1
@rockchip_pmu_regmap_config = internal constant %struct.regmap_config { ptr @.str.15, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"\013%s: regmap init failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"rockchip-pmu\00", align 1
@rockchip_secondary_trampoline_end = external dso_local global i8, align 1
@rockchip_secondary_trampoline = external dso_local global i8, align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"\013%s: could not get address for node %pOF\0A\00", align 1
@__func__.rockchip_smp_prepare_sram = private unnamed_addr constant [26 x i8] c"rockchip_smp_prepare_sram\00", align 1
@.str.17 = private unnamed_addr constant [75 x i8] c"\013%s: reserved block with size 0x%x is too small for trampoline size 0x%x\0A\00", align 1
@rockchip_boot_fn = external dso_local local_unnamed_addr global i32, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@.str.18 = private unnamed_addr constant [47 x i8] c"\013%s: could not get reset control for core %d\0A\00", align 1
@__func__.pmu_set_power_domain = private unnamed_addr constant [21 x i8] c"pmu_set_power_domain\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"\013%s: could not update power domain\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"\013%s: could not read power domain state\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"\013%s: sram or pmu missing for cpu boot\0A\00", align 1
@__func__.rockchip_boot_secondary = private unnamed_addr constant [24 x i8] c"rockchip_boot_secondary\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"\013%s: cpu %d outside maximum number of cpus %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__cpu_method_of_table_rk3036_smp, ptr @__cpu_method_of_table_rk3066_smp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rk3036_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  store i1 true, ptr @has_pmu, align 4
  tail call void @rockchip_smp_prepare_cpus(i32 noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load ptr, ptr @sram_base_addr, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load i1, ptr @has_pmu, align 4
  %7 = load ptr, ptr @pmu, align 4
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %5, %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.rockchip_boot_secondary) #8
  br label %31

12:                                               ; preds = %5
  %13 = load i32, ptr @ncores, align 4
  %14 = icmp ugt i32 %13, %0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.rockchip_boot_secondary, i32 noundef %0, i32 noundef %13) #8
  br label %31

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @pmu_set_power_domain(i32 noundef %0, i1 noundef zeroext true)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #9, !srcloc !8
  %22 = and i32 %21, -16711696
  %23 = icmp eq i32 %22, 1090568336
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #9, !srcloc !10
  %27 = load ptr, ptr @sram_base_addr, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #10, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  %29 = load ptr, ptr @sram_base_addr, align 4
  %30 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -559038801) #10, !srcloc !11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  br label %31

31:                                               ; preds = %24, %20, %17, %15, %10
  %32 = phi i32 [ -6, %15 ], [ -6, %10 ], [ %18, %17 ], [ 0, %24 ], [ 0, %20 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_cpu_kill(i32 noundef %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #10
  %3 = tail call fastcc i32 @pmu_set_power_domain(i32 noundef %0, i1 noundef zeroext false)
  ret i32 1
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_cpu_die(i32 noundef %0) #2 {
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #10, !srcloc !15
  br label %2

2:                                                ; preds = %2, %1
  %3 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %4 = tail call i32 %3() #10
  br label %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rockchip_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rockchip_smp_prepare_cpus) #8
  br label %55

6:                                                ; preds = %1
  %7 = tail call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #10
  store ptr %7, ptr @sram_base_addr, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rockchip_smp_prepare_cpus) #8
  tail call void @of_node_put(ptr noundef nonnull %2) #10
  br label %55

11:                                               ; preds = %6
  %12 = load i1, ptr @has_pmu, align 4
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = tail call fastcc i32 @rockchip_smp_prepare_pmu() #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @of_node_put(ptr noundef nonnull %2) #10
  br label %55

17:                                               ; preds = %13, %11
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #9, !srcloc !8
  %19 = and i32 %18, -16711696
  %20 = icmp eq i32 %19, 1090568336
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @rockchip_smp_prepare_sram(ptr noundef nonnull %2) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @of_node_put(ptr noundef nonnull %2) #10
  br label %55

25:                                               ; preds = %21
  %26 = tail call fastcc i32 @pmu_set_power_domain(i32 noundef 4, i1 noundef zeroext true)
  tail call void @of_node_put(ptr noundef nonnull %2) #10
  %27 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.rockchip_smp_prepare_cpus) #8
  br label %55

31:                                               ; preds = %25
  %32 = tail call ptr @of_iomap(ptr noundef nonnull %27, i32 noundef 0) #10
  store ptr %32, ptr @scu_base_addr, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rockchip_smp_prepare_cpus) #8
  tail call void @of_node_put(ptr noundef nonnull %27) #10
  br label %55

36:                                               ; preds = %31
  %37 = tail call i32 @scu_get_core_count(ptr noundef nonnull %32) #10
  store i32 %37, ptr @ncores, align 4
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.rockchip_smp_prepare_cpus, i32 noundef %37) #8
  %39 = load ptr, ptr @scu_base_addr, align 4
  tail call void @scu_enable(ptr noundef %39) #10
  br label %45

40:                                               ; preds = %17
  %41 = tail call i32 asm "mrc p15, 1, $0, c9, c0, 2\0A", "=r"() #9, !srcloc !16
  %42 = lshr i32 %41, 24
  %43 = and i32 %42, 3
  %44 = add nuw nsw i32 %43, 1
  store i32 %44, ptr @ncores, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi ptr [ %27, %36 ], [ %2, %40 ]
  tail call void @of_node_put(ptr noundef nonnull %46) #10
  %47 = load i32, ptr @ncores, align 4
  %48 = icmp ugt i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %49, %45
  %50 = phi i32 [ %52, %49 ], [ 1, %45 ]
  %51 = tail call fastcc i32 @pmu_set_power_domain(i32 noundef %50, i1 noundef zeroext false)
  %52 = add nuw i32 %50, 1
  %53 = load i32, ptr @ncores, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %49, label %55

55:                                               ; preds = %49, %45, %34, %29, %24, %16, %9, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_smp_prepare_pmu() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.9, ptr noundef null) #10
  %2 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.10) #10
  store ptr %2, ptr @pmu, align 4
  tail call void @of_node_put(ptr noundef %1) #10
  %3 = load ptr, ptr @pmu, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %23

5:                                                ; preds = %0
  %6 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.11) #10
  store ptr %6, ptr @pmu, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  store ptr null, ptr @pmu, align 4
  %9 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @of_iomap(ptr noundef nonnull %9, i32 noundef 0) #10
  tail call void @of_node_put(ptr noundef nonnull %9) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @__regmap_init_mmio_clk(ptr noundef null, ptr noundef null, ptr noundef nonnull %12, ptr noundef nonnull @rockchip_pmu_regmap_config, ptr noundef null, ptr noundef null) #10
  store ptr %15, ptr @pmu, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i32
  tail call void @iounmap(ptr noundef nonnull %12) #10
  store ptr null, ptr @pmu, align 4
  br label %19

19:                                               ; preds = %17, %11, %8
  %20 = phi ptr [ @.str.14, %17 ], [ @.str.12, %8 ], [ @.str.13, %11 ]
  %21 = phi i32 [ %18, %17 ], [ -19, %8 ], [ -12, %11 ]
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %20, ptr noundef nonnull @__func__.rockchip_smp_prepare_pmu) #8
  br label %23

23:                                               ; preds = %19, %14, %5, %0
  %24 = phi i32 [ 0, %0 ], [ 0, %5 ], [ 0, %14 ], [ %21, %19 ]
  ret i32 %24
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_smp_prepare_sram(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !17
  %3 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.rockchip_smp_prepare_sram, ptr noundef %0) #8
  br label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %2, align 4
  %11 = add i32 %9, 1
  %12 = sub i32 %11, %10
  %13 = icmp ult i32 %12, sub (i32 ptrtoint (ptr @rockchip_secondary_trampoline_end to i32), i32 ptrtoint (ptr @rockchip_secondary_trampoline to i32))
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.rockchip_smp_prepare_sram, i32 noundef %12, i32 noundef sub (i32 ptrtoint (ptr @rockchip_secondary_trampoline_end to i32), i32 ptrtoint (ptr @rockchip_secondary_trampoline to i32))) #8
  br label %24

16:                                               ; preds = %7
  %17 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #9, !srcloc !10
  store i32 %17, ptr @rockchip_boot_fn, align 4
  %18 = load ptr, ptr @sram_base_addr, align 4
  call void @mmiocpy(ptr noundef %18, ptr noundef nonnull @rockchip_secondary_trampoline, i32 noundef sub (i32 ptrtoint (ptr @rockchip_secondary_trampoline_end to i32), i32 ptrtoint (ptr @rockchip_secondary_trampoline to i32))) #10
  %19 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  call void %19() #10
  %20 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  call void %20(i32 noundef 0, i32 noundef sub (i32 ptrtoint (ptr @rockchip_secondary_trampoline_end to i32), i32 ptrtoint (ptr @rockchip_secondary_trampoline to i32))) #10
  br label %23

23:                                               ; preds = %22, %16
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  br label %24

24:                                               ; preds = %23, %14, %5
  %25 = phi i32 [ %3, %5 ], [ -22, %14 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pmu_set_power_domain(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = shl nuw i32 1, %0
  %5 = select i1 %1, i32 0, i32 %4
  %6 = tail call ptr @get_cpu_device(i32 noundef %0) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @of_get_cpu_node(i32 noundef %0, ptr noundef null) #10
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %10, %8 ], [ %12, %11 ]
  %15 = tail call ptr @__of_reset_control_get(ptr noundef %14, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #9, !srcloc !8
  %19 = and i32 %18, -16711696
  %20 = icmp eq i32 %19, 1090568336
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.pmu_set_power_domain, i32 noundef %0) #8
  %23 = ptrtoint ptr %15 to i32
  br label %55

24:                                               ; preds = %13
  br i1 %1, label %27, label %25

25:                                               ; preds = %24
  %26 = tail call i32 @reset_control_assert(ptr noundef %15) #10
  br label %27

27:                                               ; preds = %25, %24, %17
  %28 = load i1, ptr @has_pmu, align 4
  br i1 %28, label %50, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr @pmu, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 8, i32 noundef %4, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = zext i1 %1 to i32
  br label %37

35:                                               ; preds = %29
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.pmu_set_power_domain) #8
  br label %55

37:                                               ; preds = %40, %33
  %38 = phi i32 [ %47, %40 ], [ -1, %33 ]
  %39 = icmp eq i32 %38, %34
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !17
  %41 = load ptr, ptr @pmu, align 4
  %42 = call i32 @regmap_read(ptr noundef %41, i32 noundef 12, ptr noundef nonnull %3) #10
  %43 = icmp slt i32 %42, 0
  %44 = load i32, ptr %3, align 4
  %45 = xor i32 %44, -1
  %46 = lshr i32 %45, %0
  %47 = and i32 %46, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br i1 %43, label %48, label %37

48:                                               ; preds = %40
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.pmu_set_power_domain) #8
  br label %55

50:                                               ; preds = %37, %27
  br i1 %16, label %55, label %51

51:                                               ; preds = %50
  br i1 %1, label %52, label %54

52:                                               ; preds = %51
  %53 = call i32 @reset_control_deassert(ptr noundef %15) #10
  br label %54

54:                                               ; preds = %52, %51
  call void @reset_control_put(ptr noundef %15) #10
  br label %55

55:                                               ; preds = %54, %50, %48, %35, %21
  %56 = phi i32 [ %23, %21 ], [ %31, %35 ], [ %42, %48 ], [ 0, %54 ], [ 0, %50 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_core_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind }

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
!8 = !{i64 2152798410}
!9 = !{i64 2152814044}
!10 = !{i64 2148733107, i64 2148733130, i64 2148733162, i64 2148733194, i64 2148733232, i64 2148733262}
!11 = !{i64 2390511}
!12 = !{i64 2152814773}
!13 = !{i64 2149170393}
!14 = !{i64 2149170468, i64 2149170495, i64 2149170542, i64 2149170564, i64 2149170592, i64 2149170612}
!15 = !{i64 2152823298, i64 2152823315, i64 2152823345, i64 2152823393, i64 2152823436, i64 2152823484, i64 2152823498, i64 2152823548, i64 2152823596, i64 2152823654, i64 2152823702, i64 2152823716, i64 2152823730}
!16 = !{i64 7574}
!17 = !{!"auto-init"}
