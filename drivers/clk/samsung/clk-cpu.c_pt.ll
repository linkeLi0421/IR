; ModuleID = '/llk/IR/drivers/clk/samsung/clk-cpu.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-cpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.samsung_clk_provider = type { ptr, ptr, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.samsung_cpu_clock = type { i32, ptr, i32, i32, i32, i32, ptr }
%struct.exynos_cpuclk_cfg_data = type { i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.exynos_cpuclk = type { %struct.clk_hw, ptr, ptr, ptr, ptr, i32, %struct.notifier_block, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"\013%s: invalid parent clock(s)\0A\00", align 1
@__func__.exynos_register_cpu_clock = private unnamed_addr constant [26 x i8] c"exynos_register_cpu_clock\00", align 1
@exynos_cpuclk_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_cpuclk_recalc_rate, ptr @exynos_cpuclk_round_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"\013%s: failed to register clock notifier for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\013%s: could not register cpuclk %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"drivers/clk/samsung/clk-cpu.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.4 = private unnamed_addr constant [34 x i8] c"\013%s: re-parenting mux timed-out\0A\00", align 1
@__func__.wait_until_mux_stable = private unnamed_addr constant [22 x i8] c"wait_until_mux_stable\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\013%s: timeout in divider stablization\0A\00", align 1
@__func__.wait_until_divider_stable = private unnamed_addr constant [26 x i8] c"wait_until_divider_stable\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_cpu(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 1
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %17, %3
  %7 = phi i32 [ %33, %17 ], [ 0, %3 ]
  %8 = phi ptr [ %34, %17 ], [ %1, %3 ]
  %9 = getelementptr inbounds %struct.samsung_cpu_clock, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %11, %6
  %12 = phi i32 [ %16, %11 ], [ 0, %6 ]
  %13 = getelementptr %struct.exynos_cpuclk_cfg_data, ptr %10, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = add i32 %12, 1
  br i1 %15, label %17, label %11

17:                                               ; preds = %11
  %18 = load i32, ptr %8, align 4
  %19 = getelementptr inbounds %struct.samsung_cpu_clock, ptr %8, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.samsung_cpu_clock, ptr %8, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr ptr, ptr %4, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.samsung_cpu_clock, ptr %8, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr ptr, ptr %4, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.samsung_cpu_clock, ptr %8, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.samsung_cpu_clock, ptr %8, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  tail call fastcc void @exynos_register_cpu_clock(ptr noundef %0, i32 noundef %18, ptr noundef %20, ptr noundef %24, ptr noundef %28, i32 noundef %30, ptr noundef %10, i32 noundef %12, i32 noundef %32) #9
  %33 = add nuw i32 %7, 1
  %34 = getelementptr %struct.samsung_cpu_clock, ptr %8, i32 1
  %35 = icmp eq i32 %33, %2
  br i1 %35, label %36, label %6

36:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @exynos_register_cpu_clock(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 section ".init.text" {
  %10 = alloca %struct.clk_init_data, align 4
  %11 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #10
  %12 = getelementptr inbounds i8, ptr %10, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %12, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  %13 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %14 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.exynos_register_cpu_clock) #11
  br label %62

18:                                               ; preds = %9
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 48) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %62, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @clk_hw_get_name(ptr noundef %3) #10
  store ptr %23, ptr %11, align 4
  store ptr %2, ptr %10, align 4
  %24 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 6
  store i32 4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 2
  store ptr %11, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 5
  store i8 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.clk_init_data, ptr %10, i32 0, i32 1
  store ptr @exynos_cpuclk_clk_ops, ptr %27, align 4
  %28 = getelementptr inbounds %struct.exynos_cpuclk, ptr %20, i32 0, i32 1
  store ptr %4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.clk_hw, ptr %20, i32 0, i32 2
  store ptr %10, ptr %29, align 8
  %30 = load ptr, ptr %0, align 4
  %31 = getelementptr i8, ptr %30, i32 %5
  %32 = getelementptr inbounds %struct.exynos_cpuclk, ptr %20, i32 0, i32 2
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.samsung_clk_provider, ptr %0, i32 0, i32 2
  %34 = getelementptr inbounds %struct.exynos_cpuclk, ptr %20, i32 0, i32 3
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.exynos_cpuclk, ptr %20, i32 0, i32 7
  store i32 %8, ptr %35, align 4
  %36 = and i32 %8, 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, ptr @exynos_cpuclk_notifier_cb, ptr @exynos5433_cpuclk_notifier_cb
  %39 = getelementptr inbounds %struct.exynos_cpuclk, ptr %20, i32 0, i32 6
  store ptr %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.clk_hw, ptr %3, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @clk_notifier_register(ptr noundef %41, ptr noundef %39) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %22
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.exynos_register_cpu_clock, ptr noundef %2) #11
  br label %61

46:                                               ; preds = %22
  %47 = mul i32 %7, 12
  %48 = call ptr @kmemdup(ptr noundef %6, i32 noundef %47, i32 noundef 3264) #10
  %49 = getelementptr inbounds %struct.exynos_cpuclk, ptr %20, i32 0, i32 4
  store ptr %48, ptr %49, align 8
  %50 = icmp eq ptr %48, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %20) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.exynos_register_cpu_clock, ptr noundef %2) #11
  %56 = load ptr, ptr %49, align 8
  call void @kfree(ptr noundef %56) #10
  br label %58

57:                                               ; preds = %51
  call void @samsung_clk_add_lookup(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %1) #10
  br label %62

58:                                               ; preds = %54, %46
  %59 = load ptr, ptr %40, align 4
  %60 = call i32 @clk_notifier_unregister(ptr noundef %59, ptr noundef %39) #10
  br label %61

61:                                               ; preds = %58, %44
  call void @kfree(ptr noundef nonnull %20) #10
  br label %62

62:                                               ; preds = %61, %57, %18, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5433_cpuclk_notifier_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load ptr, ptr %4, align 4
  switch i32 %1, label %179 [
    i32 1, label %6
    i32 2, label %128
  ]

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -20
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_hw_get_rate(ptr noundef %10) #10
  %12 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %8, align 4
  %15 = mul i32 %14, 1000
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %26, label %17

17:                                               ; preds = %21, %6
  %18 = phi i32 [ %23, %21 ], [ %14, %6 ]
  %19 = phi ptr [ %22, %21 ], [ %8, %6 ]
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %179, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.exynos_cpuclk_cfg_data, ptr %19, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, 1000
  %25 = icmp eq i32 %24, %13
  br i1 %25, label %26, label %17

26:                                               ; preds = %21, %6
  %27 = phi ptr [ %8, %6 ], [ %22, %21 ]
  %28 = getelementptr i8, ptr %0, i32 -12
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #10
  %31 = getelementptr inbounds %struct.exynos_cpuclk_cfg_data, ptr %27, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.exynos_cpuclk_cfg_data, ptr %27, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %11, %36
  %38 = load i32, ptr %12, align 4
  %39 = icmp ugt i32 %36, %38
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %26
  %42 = tail call i32 @llvm.umin.i32(i32 %36, i32 %38) #10
  %43 = add i32 %11, -1
  %44 = add i32 %43, %42
  %45 = udiv i32 %44, %42
  %46 = add i32 %45, -1
  %47 = icmp ugt i32 %46, 7
  br i1 %47, label %48, label %49, !prof !9

48:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 314, i32 noundef 9, ptr noundef null) #10
  br label %49

49:                                               ; preds = %48, %41
  %50 = getelementptr i8, ptr %5, i32 1024
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %52 = and i32 %51, -8
  %53 = and i32 %46, 7
  %54 = or i32 %52, %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %54) #10, !srcloc !13
  %55 = getelementptr i8, ptr %5, i32 1280
  %56 = load volatile i32, ptr @jiffies, align 64
  %57 = xor i32 %56, -1
  br label %58

58:                                               ; preds = %62, %49
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %60 = and i32 %59, 7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %58
  %63 = load volatile i32, ptr @jiffies, align 64
  %64 = add i32 %63, %57
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %58, label %66

66:                                               ; preds = %62
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %68 = and i32 %67, 7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.wait_until_divider_stable) #11
  br label %72

72:                                               ; preds = %70, %66, %58
  %73 = or i32 %46, %32
  br label %74

74:                                               ; preds = %72, %26
  %75 = phi i32 [ %73, %72 ], [ %32, %26 ]
  %76 = getelementptr i8, ptr %5, i32 8
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  %78 = or i32 %77, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %78) #10, !srcloc !13
  %79 = getelementptr i8, ptr %5, i32 520
  %80 = load volatile i32, ptr @jiffies, align 64
  %81 = xor i32 %80, -1
  br label %82

82:                                               ; preds = %86, %74
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %84 = and i32 %83, 7
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = load volatile i32, ptr @jiffies, align 64
  %88 = add i32 %87, %81
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %82, label %90

90:                                               ; preds = %86
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %92 = and i32 %91, 7
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.wait_until_mux_stable) #11
  br label %96

96:                                               ; preds = %94, %90, %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  %97 = getelementptr i8, ptr %5, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %75) #10, !srcloc !13
  %98 = getelementptr i8, ptr %5, i32 1280
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = xor i32 %99, -1
  br label %101

101:                                              ; preds = %104, %96
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  %105 = load volatile i32, ptr @jiffies, align 64
  %106 = add i32 %105, %100
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %101, label %108

108:                                              ; preds = %104
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.wait_until_divider_stable) #11
  br label %113

113:                                              ; preds = %111, %108, %101
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %114 = getelementptr i8, ptr %5, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %34) #10, !srcloc !13
  %115 = getelementptr i8, ptr %5, i32 1284
  %116 = load volatile i32, ptr @jiffies, align 64
  %117 = xor i32 %116, -1
  br label %118

118:                                              ; preds = %121, %113
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %175, label %121

121:                                              ; preds = %118
  %122 = load volatile i32, ptr @jiffies, align 64
  %123 = add i32 %122, %117
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %118, label %125

125:                                              ; preds = %121
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %175, label %171

128:                                              ; preds = %3
  %129 = getelementptr i8, ptr %0, i32 -12
  %130 = load ptr, ptr %129, align 4
  %131 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %130) #10
  %132 = getelementptr i8, ptr %5, i32 8
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %134 = and i32 %133, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %134) #10, !srcloc !13
  %135 = getelementptr i8, ptr %5, i32 520
  %136 = load volatile i32, ptr @jiffies, align 64
  %137 = xor i32 %136, -1
  br label %138

138:                                              ; preds = %142, %128
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %140 = and i32 %139, 7
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %152, label %142

142:                                              ; preds = %138
  %143 = load volatile i32, ptr @jiffies, align 64
  %144 = add i32 %143, %137
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %138, label %146

146:                                              ; preds = %142
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %148 = and i32 %147, 7
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.wait_until_mux_stable) #11
  br label %152

152:                                              ; preds = %150, %146, %138
  %153 = getelementptr i8, ptr %5, i32 1024
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %153) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %155 = and i32 %154, -8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %153, i32 %155) #10, !srcloc !13
  %156 = getelementptr i8, ptr %5, i32 1280
  %157 = load volatile i32, ptr @jiffies, align 64
  %158 = xor i32 %157, -1
  br label %159

159:                                              ; preds = %163, %152
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %161 = and i32 %160, 7
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %159
  %164 = load volatile i32, ptr @jiffies, align 64
  %165 = add i32 %164, %158
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %159, label %167

167:                                              ; preds = %163
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %156) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %169 = and i32 %168, 7
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %167, %125
  %172 = phi ptr [ %28, %125 ], [ %129, %167 ]
  %173 = phi i32 [ %30, %125 ], [ %131, %167 ]
  %174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.wait_until_divider_stable) #11
  br label %175

175:                                              ; preds = %171, %167, %159, %125, %118
  %176 = phi ptr [ %28, %125 ], [ %129, %167 ], [ %172, %171 ], [ %28, %118 ], [ %129, %159 ]
  %177 = phi i32 [ %30, %125 ], [ %131, %167 ], [ %173, %171 ], [ %30, %118 ], [ %131, %159 ]
  %178 = load ptr, ptr %176, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %178, i32 noundef %177) #10
  br label %179

179:                                              ; preds = %175, %17, %3
  %180 = phi i32 [ 1, %3 ], [ 1, %175 ], [ 32791, %17 ]
  ret i32 %180
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_cpuclk_notifier_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load ptr, ptr %4, align 4
  switch i32 %1, label %238 [
    i32 1, label %6
    i32 2, label %152
  ]

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -20
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_hw_get_rate(ptr noundef %10) #10
  %12 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %8, align 4
  %15 = mul i32 %14, 1000
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %26, label %17

17:                                               ; preds = %21, %6
  %18 = phi i32 [ %23, %21 ], [ %14, %6 ]
  %19 = phi ptr [ %22, %21 ], [ %8, %6 ]
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %238, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.exynos_cpuclk_cfg_data, ptr %19, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, 1000
  %25 = icmp eq i32 %24, %13
  br i1 %25, label %26, label %17

26:                                               ; preds = %21, %6
  %27 = phi ptr [ %8, %6 ], [ %22, %21 ]
  %28 = getelementptr i8, ptr %0, i32 -12
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #10
  %31 = getelementptr inbounds %struct.exynos_cpuclk_cfg_data, ptr %27, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %0, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.exynos_cpuclk_cfg_data, ptr %27, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !24
  %41 = and i32 %40, 1048576
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %5, i32 772
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %46 = and i32 %45, 119
  br label %47

47:                                               ; preds = %43, %37, %26
  %48 = phi i32 [ %46, %43 ], [ %39, %37 ], [ 0, %26 ]
  %49 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %11, %50
  %52 = load i32, ptr %12, align 4
  %53 = icmp ugt i32 %50, %52
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %55, label %95

55:                                               ; preds = %47
  %56 = tail call i32 @llvm.umin.i32(i32 %50, i32 %52) #10
  %57 = add i32 %11, -1
  %58 = add i32 %57, %56
  %59 = udiv i32 %58, %56
  %60 = add i32 %59, -1
  %61 = icmp ugt i32 %60, 7
  br i1 %61, label %62, label %63, !prof !9

62:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 192, i32 noundef 9, ptr noundef null) #10
  br label %63

63:                                               ; preds = %62, %55
  %64 = load i32, ptr %33, align 4
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  %67 = or i32 %60, 458752
  %68 = select i1 %66, i32 7, i32 458759
  %69 = select i1 %66, i32 %60, i32 %67
  %70 = getelementptr i8, ptr %5, i32 768
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %72 = xor i32 %68, -1
  %73 = and i32 %71, %72
  %74 = and i32 %68, %69
  %75 = or i32 %73, %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %75) #10, !srcloc !13
  %76 = getelementptr i8, ptr %5, i32 1024
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = xor i32 %77, -1
  br label %79

79:                                               ; preds = %83, %63
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %81 = and i32 %80, %68
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = load volatile i32, ptr @jiffies, align 64
  %85 = add i32 %84, %78
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %79, label %87

87:                                               ; preds = %83
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %89 = and i32 %88, %68
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.wait_until_divider_stable) #11
  br label %93

93:                                               ; preds = %91, %87, %79
  %94 = or i32 %69, %32
  br label %95

95:                                               ; preds = %93, %47
  %96 = phi i32 [ %94, %93 ], [ %32, %47 ]
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %98 = or i32 %97, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %98) #10, !srcloc !13
  %99 = getelementptr i8, ptr %5, i32 512
  %100 = load volatile i32, ptr @jiffies, align 64
  %101 = xor i32 %100, -1
  br label %102

102:                                              ; preds = %106, %95
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %104 = and i32 %103, 458752
  %105 = icmp eq i32 %104, 131072
  br i1 %105, label %116, label %106

106:                                              ; preds = %102
  %107 = load volatile i32, ptr @jiffies, align 64
  %108 = add i32 %107, %101
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %102, label %110

110:                                              ; preds = %106
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %112 = and i32 %111, 458752
  %113 = icmp eq i32 %112, 131072
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.wait_until_mux_stable) #11
  br label %116

116:                                              ; preds = %114, %110, %102
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !30
  tail call void @arm_heavy_mb() #10
  %117 = getelementptr i8, ptr %5, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %96) #10, !srcloc !13
  %118 = getelementptr i8, ptr %5, i32 1024
  %119 = load volatile i32, ptr @jiffies, align 64
  %120 = xor i32 %119, -1
  br label %121

121:                                              ; preds = %124, %116
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = load volatile i32, ptr @jiffies, align 64
  %126 = add i32 %125, %120
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %121, label %128

128:                                              ; preds = %124
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.wait_until_divider_stable) #11
  br label %133

133:                                              ; preds = %131, %128, %121
  %134 = load i32, ptr %33, align 4
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %234, label %137

137:                                              ; preds = %133
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !31
  tail call void @arm_heavy_mb() #10
  %138 = getelementptr i8, ptr %5, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %48) #10, !srcloc !13
  %139 = getelementptr i8, ptr %5, i32 1028
  %140 = load volatile i32, ptr @jiffies, align 64
  %141 = xor i32 %140, -1
  br label %142

142:                                              ; preds = %145, %137
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %234, label %145

145:                                              ; preds = %142
  %146 = load volatile i32, ptr @jiffies, align 64
  %147 = add i32 %146, %141
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %142, label %149

149:                                              ; preds = %145
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %234, label %230

152:                                              ; preds = %3
  %153 = getelementptr i8, ptr %0, i32 -8
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr i8, ptr %0, i32 12
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 2
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %174, label %159

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %161 = load i32, ptr %160, align 4
  %162 = load i32, ptr %154, align 4
  %163 = mul i32 %162, 1000
  %164 = icmp eq i32 %163, %161
  br i1 %164, label %174, label %165

165:                                              ; preds = %169, %159
  %166 = phi i32 [ %171, %169 ], [ %162, %159 ]
  %167 = phi ptr [ %170, %169 ], [ %154, %159 ]
  %168 = icmp eq i32 %166, 0
  br i1 %168, label %238, label %169

169:                                              ; preds = %165
  %170 = getelementptr %struct.exynos_cpuclk_cfg_data, ptr %167, i32 1
  %171 = load i32, ptr %170, align 4
  %172 = mul i32 %171, 1000
  %173 = icmp eq i32 %172, %161
  br i1 %173, label %174, label %165

174:                                              ; preds = %169, %159, %152
  %175 = phi ptr [ %154, %152 ], [ %154, %159 ], [ %170, %169 ]
  %176 = getelementptr i8, ptr %0, i32 -12
  %177 = load ptr, ptr %176, align 4
  %178 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %177) #10
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !33
  tail call void @arm_heavy_mb() #10
  %180 = and i32 %179, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %180) #10, !srcloc !13
  %181 = getelementptr i8, ptr %5, i32 512
  %182 = load volatile i32, ptr @jiffies, align 64
  %183 = xor i32 %182, -1
  br label %184

184:                                              ; preds = %188, %174
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %186 = and i32 %185, 458752
  %187 = icmp eq i32 %186, 65536
  br i1 %187, label %198, label %188

188:                                              ; preds = %184
  %189 = load volatile i32, ptr @jiffies, align 64
  %190 = add i32 %189, %183
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %184, label %192

192:                                              ; preds = %188
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %194 = and i32 %193, 458752
  %195 = icmp eq i32 %194, 65536
  br i1 %195, label %198, label %196

196:                                              ; preds = %192
  %197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.wait_until_mux_stable) #11
  br label %198

198:                                              ; preds = %196, %192, %184
  %199 = load i32, ptr %155, align 4
  %200 = and i32 %199, 2
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.exynos_cpuclk_cfg_data, ptr %175, i32 0, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = and i32 %204, 458752
  br label %206

206:                                              ; preds = %202, %198
  %207 = phi i32 [ 458759, %202 ], [ 7, %198 ]
  %208 = phi i32 [ %205, %202 ], [ 0, %198 ]
  %209 = getelementptr i8, ptr %5, i32 768
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %209) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %211 = xor i32 %207, -1
  %212 = and i32 %210, %211
  %213 = and i32 %208, %207
  %214 = or i32 %212, %213
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %214) #10, !srcloc !13
  %215 = getelementptr i8, ptr %5, i32 1024
  %216 = load volatile i32, ptr @jiffies, align 64
  %217 = xor i32 %216, -1
  br label %218

218:                                              ; preds = %222, %206
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %220 = and i32 %219, %207
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %234, label %222

222:                                              ; preds = %218
  %223 = load volatile i32, ptr @jiffies, align 64
  %224 = add i32 %223, %217
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %218, label %226

226:                                              ; preds = %222
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %228 = and i32 %227, %207
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %226, %149
  %231 = phi ptr [ %28, %149 ], [ %176, %226 ]
  %232 = phi i32 [ %30, %149 ], [ %178, %226 ]
  %233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.wait_until_divider_stable) #11
  br label %234

234:                                              ; preds = %230, %226, %218, %149, %142, %133
  %235 = phi ptr [ %28, %149 ], [ %28, %133 ], [ %176, %226 ], [ %231, %230 ], [ %28, %142 ], [ %176, %218 ]
  %236 = phi i32 [ %30, %149 ], [ %30, %133 ], [ %178, %226 ], [ %232, %230 ], [ %30, %142 ], [ %178, %218 ]
  %237 = load ptr, ptr %235, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %237, i32 noundef %236) #10
  br label %238

238:                                              ; preds = %234, %165, %17, %3
  %239 = phi i32 [ 1, %3 ], [ 1, %234 ], [ 32791, %17 ], [ 32791, %165 ]
  ret i32 %239
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_add_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @exynos_cpuclk_recalc_rate(ptr nocapture noundef readnone %0, i32 noundef returned %1) #7 {
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_cpuclk_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = tail call ptr @clk_hw_get_parent(ptr noundef %0) #10
  %5 = tail call i32 @clk_hw_round_rate(ptr noundef %4, i32 noundef %1) #10
  store i32 %5, ptr %2, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 376484}
!11 = !{i64 2150609197}
!12 = !{i64 2150609384}
!13 = !{i64 376066}
!14 = !{i64 2150599842}
!15 = !{i64 2150600524}
!16 = !{i64 2150616410}
!17 = !{i64 2150616604}
!18 = !{i64 2150601325}
!19 = !{i64 2150602009}
!20 = !{i64 2150616937}
!21 = !{i64 2150617267}
!22 = !{i64 2150618093}
!23 = !{i64 2150618288}
!24 = !{i64 2150603814}
!25 = !{i64 2150604149}
!26 = !{i64 2150602808}
!27 = !{i64 2150602995}
!28 = !{i64 2150606708}
!29 = !{i64 2150606906}
!30 = !{i64 2150607253}
!31 = !{i64 2150607592}
!32 = !{i64 2150608422}
!33 = !{i64 2150608621}
