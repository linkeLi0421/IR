; ModuleID = '/llk/IR/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c_pt.bc'
source_filename = "../drivers/gpu/drm/stm/dw_mipi_dsi-stm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_mipi_dsi_plat_data = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.dw_mipi_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_mipi_dsi_stm = type { ptr, ptr, ptr, i32, i32, i32, ptr }
%struct.dw_mipi_dsi_dphy_timing = type { i16, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@dw_mipi_dsi_stm_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_mipi_dsi_stm_plat_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author260 = internal constant [46 x i8] c"author=Philippe Cornu <philippe.cornu@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author261 = internal constant [46 x i8] c"author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description262 = internal constant [66 x i8] c"description=STMicroelectronics DW MIPI DSI host controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license263 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@dw_mipi_dsi_stm_plat_data = internal global %struct.dw_mipi_dsi_plat_data { ptr null, i32 2, ptr null, ptr @dw_mipi_dsi_stm_phy_ops, ptr null, ptr null }, align 4
@dw_mipi_dsi_stm_phy_ops = internal constant %struct.dw_mipi_dsi_phy_ops { ptr @dw_mipi_dsi_phy_init, ptr @dw_mipi_dsi_phy_power_on, ptr @dw_mipi_dsi_phy_power_off, ptr @dw_mipi_dsi_get_lane_mbps, ptr @dw_mipi_dsi_phy_get_timing, ptr null }, align 4
@.str = private unnamed_addr constant [40 x i8] c"!TIMEOUT! waiting REGU, let's continue\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"!TIMEOUT! waiting PLL, let's continue\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\014[drm] Warning max phy mbps is used\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\014[drm] Warning min phy mbps is used\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"\014[drm] Warning dsi_pll_get_params(): bad params\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"pll_in %ukHz pll_out %ukHz lane_mbps %uMHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"MIPI color invalid, so we use rgb888\0A\00", align 1
@dw_mipi_dsi_stm_driver = internal global %struct.platform_driver { ptr @dw_mipi_dsi_stm_probe, ptr @dw_mipi_dsi_stm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_mipi_dsi_stm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_mipi_dsi_stm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.8 = private unnamed_addr constant [18 x i8] c"stm32-display-dsi\00", align 1
@dw_mipi_dsi_stm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dw_mipi_dsi_stm_suspend, ptr @dw_mipi_dsi_stm_resume, ptr @dw_mipi_dsi_stm_suspend, ptr @dw_mipi_dsi_stm_resume, ptr @dw_mipi_dsi_stm_suspend, ptr @dw_mipi_dsi_stm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Unable to get dsi registers %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"phy-dsi\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Failed to request regulator\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Failed to enable regulator: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Unable to get pll reference clock\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Failed to enable pllref_clk: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Unable to get peripheral clock: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"%s: Failed to enable peripheral clk\0A\00", align 1
@__func__.dw_mipi_dsi_stm_probe = private unnamed_addr constant [22 x i8] c"dw_mipi_dsi_stm_probe\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"bad dsi hardware version\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Failed to initialize mipi dsi host\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_description262, ptr @__UNIQUE_ID_license263], section "llvm.metadata"
@switch.table.dw_mipi_dsi_get_lane_mbps = private unnamed_addr constant [4 x i32] [i32 24, i32 24, i32 18, i32 16], align 4
@switch.table.dw_mipi_dsi_get_lane_mbps.21 = private unnamed_addr constant [4 x i32] [i32 10, i32 8, i32 6, i32 0], align 4

@__mod_of__dw_mipi_dsi_stm_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @dw_mipi_dsi_stm_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_mipi_dsi_stm_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_mipi_dsi_stm_driver) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_phy_init(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 1072
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %5 = or i32 %4, 285212672
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !11
  %8 = tail call i64 @ktime_get() #7
  %9 = add i64 %8, 200000000
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr i8, ptr %10, i32 1036
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %13 = and i32 %12, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %22, %1
  %16 = tail call i64 @ktime_get() #7
  %17 = icmp sgt i64 %16, %9
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr i8, ptr %19, i32 1036
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  br label %28

22:                                               ; preds = %15
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr i8, ptr %23, i32 1036
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %26 = and i32 %25, 4096
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %15, label %28

28:                                               ; preds = %22, %18, %1
  %29 = phi i32 [ %21, %18 ], [ %12, %1 ], [ %25, %22 ]
  %30 = and i32 %29, 4096
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #7
  br label %33

33:                                               ; preds = %32, %28
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr i8, ptr %34, i32 1072
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %37 = or i32 %36, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr i8, ptr %38, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #7, !srcloc !11
  %40 = tail call i64 @ktime_get() #7
  %41 = add i64 %40, 200000000
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr i8, ptr %42, i32 1036
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %45 = and i32 %44, 256
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %54, %33
  %48 = tail call i64 @ktime_get() #7
  %49 = icmp sgt i64 %48, %41
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr i8, ptr %51, i32 1036
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %60

54:                                               ; preds = %47
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr i8, ptr %55, i32 1036
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %58 = and i32 %57, 256
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %47, label %60

60:                                               ; preds = %54, %50, %33
  %61 = phi i32 [ %53, %50 ], [ %44, %33 ], [ %57, %54 ]
  %62 = and i32 %61, 256
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #7
  br label %65

65:                                               ; preds = %64, %60
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_phy_power_on(ptr nocapture noundef readonly %0) #1 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2) #7
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 1028
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %5 = or i32 %4, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dw_mipi_dsi_phy_power_off(ptr nocapture noundef readonly %0) #1 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2) #7
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 1028
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %5 = and i32 %4, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr i8, ptr %6, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_get_lane_mbps(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #1 {
  %7 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %0, i32 0, i32 4
  store i32 31250, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %0, i32 0, i32 5
  store i32 500000, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 825438464
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i32 62500, ptr %7, align 4
  store i32 1000000, ptr %8, align 4
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_get_rate(ptr noundef %15) #7
  %17 = udiv i32 %16, 1000
  %18 = icmp ult i32 %4, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds [4 x i32], ptr @switch.table.dw_mipi_dsi_get_lane_mbps, i32 0, i32 %4
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i32 [ %21, %19 ], [ -22, %13 ]
  %24 = load i32, ptr %1, align 4
  %25 = mul i32 %24, %23
  %26 = udiv i32 %25, %3
  %27 = and i32 %2, 2
  %28 = icmp eq i32 %27, 0
  %29 = mul i32 %26, 12
  %30 = udiv i32 %29, 10
  %31 = select i1 %28, i32 %26, i32 %30
  %32 = load i32, ptr %8, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %36

36:                                               ; preds = %34, %22
  %37 = phi i32 [ %32, %34 ], [ %31, %22 ]
  %38 = load i32, ptr %7, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ %38, %40 ], [ %37, %36 ]
  %44 = icmp ult i32 %16, 1000
  %45 = icmp slt i32 %43, 1
  %46 = or i1 %44, %45
  br i1 %46, label %197, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %7, align 4
  %49 = shl i32 %48, 4
  %50 = load i32, ptr %8, align 4
  %51 = shl i32 %50, 1
  %52 = shl nuw nsw i32 %17, 1
  br label %53

53:                                               ; preds = %190, %47
  %54 = phi i32 [ 0, %47 ], [ %191, %190 ]
  %55 = phi i32 [ 0, %47 ], [ %192, %190 ]
  %56 = phi i32 [ 0, %47 ], [ %193, %190 ]
  %57 = phi i32 [ 1000000, %47 ], [ %194, %190 ]
  %58 = phi i32 [ 1, %47 ], [ %195, %190 ]
  %59 = mul i32 %49, %58
  %60 = sdiv i32 %59, %52
  %61 = add i32 %60, 1
  %62 = icmp sgt i32 %61, 124
  br i1 %62, label %199, label %63

63:                                               ; preds = %53
  %64 = mul i32 %51, %58
  %65 = sdiv i32 %64, %52
  %66 = tail call i32 @llvm.smax.i32(i32 %61, i32 10) #7
  %67 = tail call i32 @llvm.smin.i32(i32 %65, i32 125) #7
  %68 = mul i32 %58, %43
  %69 = icmp sgt i32 %68, 0
  %70 = select i1 %69, i32 2, i32 -2
  %71 = sdiv i32 %17, %70
  %72 = add i32 %71, %68
  %73 = sdiv i32 %72, %17
  %74 = icmp slt i32 %73, %66
  %75 = icmp sgt i32 %73, %67
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %94, label %77

77:                                               ; preds = %63
  %78 = mul i32 %73, %17
  %79 = icmp sgt i32 %78, 0
  %80 = select i1 %79, i32 2, i32 -2
  %81 = sdiv i32 %58, %80
  %82 = add i32 %81, %78
  %83 = sdiv i32 %82, %58
  %84 = sub i32 %83, %43
  %85 = tail call i32 @llvm.abs.i32(i32 %84, i1 false) #7
  %86 = icmp slt i32 %85, %57
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %77
  %89 = phi i32 [ %58, %87 ], [ %54, %77 ]
  %90 = phi i32 [ %73, %87 ], [ %55, %77 ]
  %91 = phi i32 [ 1, %87 ], [ %56, %77 ]
  %92 = phi i32 [ %85, %87 ], [ %57, %77 ]
  %93 = icmp eq i32 %83, %43
  br i1 %93, label %199, label %94

94:                                               ; preds = %88, %63
  %95 = phi i32 [ %54, %63 ], [ %89, %88 ]
  %96 = phi i32 [ %55, %63 ], [ %90, %88 ]
  %97 = phi i32 [ %56, %63 ], [ %91, %88 ]
  %98 = phi i32 [ %57, %63 ], [ %92, %88 ]
  %99 = shl nuw nsw i32 %58, 1
  %100 = mul i32 %99, %43
  %101 = icmp sgt i32 %100, 0
  %102 = select i1 %101, i32 2, i32 -2
  %103 = sdiv i32 %17, %102
  %104 = add i32 %103, %100
  %105 = sdiv i32 %104, %17
  %106 = icmp slt i32 %105, %66
  %107 = icmp sgt i32 %105, %67
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %126, label %109

109:                                              ; preds = %94
  %110 = mul i32 %105, %17
  %111 = icmp sgt i32 %110, 0
  %112 = select i1 %111, i32 2, i32 -2
  %113 = sdiv i32 %99, %112
  %114 = add i32 %113, %110
  %115 = sdiv i32 %114, %99
  %116 = sub i32 %115, %43
  %117 = tail call i32 @llvm.abs.i32(i32 %116, i1 false) #7
  %118 = icmp slt i32 %117, %98
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %109
  %121 = phi i32 [ %58, %119 ], [ %95, %109 ]
  %122 = phi i32 [ %105, %119 ], [ %96, %109 ]
  %123 = phi i32 [ 2, %119 ], [ %97, %109 ]
  %124 = phi i32 [ %117, %119 ], [ %98, %109 ]
  %125 = icmp eq i32 %115, %43
  br i1 %125, label %199, label %126

126:                                              ; preds = %120, %94
  %127 = phi i32 [ %95, %94 ], [ %121, %120 ]
  %128 = phi i32 [ %96, %94 ], [ %122, %120 ]
  %129 = phi i32 [ %97, %94 ], [ %123, %120 ]
  %130 = phi i32 [ %98, %94 ], [ %124, %120 ]
  %131 = shl nuw nsw i32 %58, 2
  %132 = mul i32 %131, %43
  %133 = icmp sgt i32 %132, 0
  %134 = select i1 %133, i32 2, i32 -2
  %135 = sdiv i32 %17, %134
  %136 = add i32 %135, %132
  %137 = sdiv i32 %136, %17
  %138 = icmp slt i32 %137, %66
  %139 = icmp sgt i32 %137, %67
  %140 = select i1 %138, i1 true, i1 %139
  br i1 %140, label %158, label %141

141:                                              ; preds = %126
  %142 = mul i32 %137, %17
  %143 = icmp sgt i32 %142, 0
  %144 = select i1 %143, i32 2, i32 -2
  %145 = sdiv i32 %131, %144
  %146 = add i32 %145, %142
  %147 = sdiv i32 %146, %131
  %148 = sub i32 %147, %43
  %149 = tail call i32 @llvm.abs.i32(i32 %148, i1 false) #7
  %150 = icmp slt i32 %149, %130
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %141
  %153 = phi i32 [ %58, %151 ], [ %127, %141 ]
  %154 = phi i32 [ %137, %151 ], [ %128, %141 ]
  %155 = phi i32 [ 4, %151 ], [ %129, %141 ]
  %156 = phi i32 [ %149, %151 ], [ %130, %141 ]
  %157 = icmp eq i32 %147, %43
  br i1 %157, label %199, label %158

158:                                              ; preds = %152, %126
  %159 = phi i32 [ %127, %126 ], [ %153, %152 ]
  %160 = phi i32 [ %128, %126 ], [ %154, %152 ]
  %161 = phi i32 [ %129, %126 ], [ %155, %152 ]
  %162 = phi i32 [ %130, %126 ], [ %156, %152 ]
  %163 = shl nuw nsw i32 %58, 3
  %164 = mul i32 %163, %43
  %165 = icmp sgt i32 %164, 0
  %166 = select i1 %165, i32 2, i32 -2
  %167 = sdiv i32 %17, %166
  %168 = add i32 %167, %164
  %169 = sdiv i32 %168, %17
  %170 = icmp slt i32 %169, %66
  %171 = icmp sgt i32 %169, %67
  %172 = select i1 %170, i1 true, i1 %171
  br i1 %172, label %190, label %173

173:                                              ; preds = %158
  %174 = mul i32 %169, %17
  %175 = icmp sgt i32 %174, 0
  %176 = select i1 %175, i32 2, i32 -2
  %177 = sdiv i32 %163, %176
  %178 = add i32 %177, %174
  %179 = sdiv i32 %178, %163
  %180 = sub i32 %179, %43
  %181 = tail call i32 @llvm.abs.i32(i32 %180, i1 false) #7
  %182 = icmp slt i32 %181, %162
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183, %173
  %185 = phi i32 [ %58, %183 ], [ %159, %173 ]
  %186 = phi i32 [ %169, %183 ], [ %160, %173 ]
  %187 = phi i32 [ 8, %183 ], [ %161, %173 ]
  %188 = phi i32 [ %181, %183 ], [ %162, %173 ]
  %189 = icmp eq i32 %179, %43
  br i1 %189, label %199, label %190

190:                                              ; preds = %184, %158
  %191 = phi i32 [ %159, %158 ], [ %185, %184 ]
  %192 = phi i32 [ %160, %158 ], [ %186, %184 ]
  %193 = phi i32 [ %161, %158 ], [ %187, %184 ]
  %194 = phi i32 [ %162, %158 ], [ %188, %184 ]
  %195 = add nuw nsw i32 %58, 1
  %196 = icmp eq i32 %195, 8
  br i1 %196, label %199, label %53

197:                                              ; preds = %42
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %199

199:                                              ; preds = %197, %190, %184, %152, %120, %88, %53
  %200 = phi i32 [ 0, %197 ], [ %56, %53 ], [ %193, %190 ], [ %187, %184 ], [ %155, %152 ], [ %123, %120 ], [ %91, %88 ]
  %201 = phi i32 [ 0, %197 ], [ %55, %53 ], [ %192, %190 ], [ %186, %184 ], [ %154, %152 ], [ %122, %120 ], [ %90, %88 ]
  %202 = phi i32 [ 0, %197 ], [ %54, %53 ], [ %191, %190 ], [ %185, %184 ], [ %153, %152 ], [ %121, %120 ], [ %89, %88 ]
  %203 = mul i32 %202, %200
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %199
  %206 = mul i32 %201, %17
  %207 = icmp slt i32 %206, 1
  %208 = icmp sgt i32 %203, 0
  %209 = xor i1 %207, %208
  %210 = select i1 %209, i32 2, i32 -2
  %211 = sdiv i32 %203, %210
  %212 = add i32 %211, %206
  %213 = sdiv i32 %212, %203
  br label %214

214:                                              ; preds = %205, %199
  %215 = phi i32 [ %213, %205 ], [ 0, %199 ]
  %216 = shl i32 %201, 2
  %217 = shl i32 %202, 11
  %218 = or i32 %217, %216
  %219 = tail call i32 @llvm.cttz.i32(i32 %200, i1 true), !range !16
  %220 = icmp eq i32 %200, 0
  %221 = shl nuw nsw i32 %219, 16
  %222 = select i1 %220, i32 -65536, i32 %221
  %223 = or i32 %218, %222
  %224 = load ptr, ptr %0, align 4
  %225 = getelementptr i8, ptr %224, i32 1072
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %225) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %227 = and i32 %226, -227837
  %228 = or i32 %223, %227
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %229 = load ptr, ptr %0, align 4
  %230 = getelementptr i8, ptr %229, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %228) #7, !srcloc !11
  %231 = udiv i32 4000000, %215
  %232 = load ptr, ptr %0, align 4
  %233 = getelementptr i8, ptr %232, i32 1048
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %233) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %235 = and i32 %234, -64
  %236 = or i32 %235, %231
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %237 = load ptr, ptr %0, align 4
  %238 = getelementptr i8, ptr %237, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %236) #7, !srcloc !11
  %239 = load ptr, ptr %0, align 4
  %240 = getelementptr i8, ptr %239, i32 1024
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %240) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %242 = and i32 %241, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %243 = load ptr, ptr %0, align 4
  %244 = getelementptr i8, ptr %243, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %242) #7, !srcloc !11
  %245 = icmp ult i32 %4, 4
  br i1 %245, label %247, label %246

246:                                              ; preds = %214
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #7
  br label %250

247:                                              ; preds = %214
  %248 = getelementptr inbounds [4 x i32], ptr @switch.table.dw_mipi_dsi_get_lane_mbps.21, i32 0, i32 %4
  %249 = load i32, ptr %248, align 4
  br label %250

250:                                              ; preds = %247, %246
  %251 = phi i32 [ 10, %246 ], [ %249, %247 ]
  %252 = load ptr, ptr %0, align 4
  %253 = getelementptr i8, ptr %252, i32 1024
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %255 = and i32 %254, -15
  %256 = or i32 %255, %251
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %257 = load ptr, ptr %0, align 4
  %258 = getelementptr i8, ptr %257, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 %256) #7, !srcloc !11
  %259 = udiv i32 %215, 1000
  store i32 %259, ptr %5, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %17, i32 noundef %215, i32 noundef %259) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dw_mipi_dsi_phy_get_timing(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = mul i32 %1, 272
  %5 = add i32 %4, 143999
  %6 = udiv i32 %5, 8000
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %2, i32 0, i32 2
  store i16 %7, ptr %8, align 2
  %9 = shl i32 %1, 9
  %10 = add i32 %9, 47999
  %11 = udiv i32 %10, 8000
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %2, i32 0, i32 3
  store i16 %12, ptr %13, align 2
  %14 = mul i32 %1, 192
  %15 = add i32 %14, 71999
  %16 = udiv i32 %15, 8000
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr %2, align 2
  %18 = shl i32 %1, 8
  %19 = add i32 %18, 39999
  %20 = udiv i32 %19, 8000
  %21 = trunc i32 %20 to i16
  %22 = getelementptr inbounds %struct.dw_mipi_dsi_dphy_timing, ptr %2, i32 0, i32 1
  store i16 %21, ptr %22, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_stm_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 28, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %7 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %6) #7
  store ptr %7, ptr %3, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %10) #7
  br label %69

11:                                               ; preds = %5
  %12 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.10) #7
  %13 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %3, i32 0, i32 6
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = ptrtoint ptr %12 to i32
  %17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %16, ptr noundef nonnull @.str.11) #7
  br label %69

18:                                               ; preds = %11
  %19 = tail call i32 @regulator_enable(ptr noundef %12) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %19) #7
  br label %69

22:                                               ; preds = %18
  %23 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.13) #7
  %24 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %3, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = ptrtoint ptr %23 to i32
  %28 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %27, ptr noundef nonnull @.str.14) #7
  br label %65

29:                                               ; preds = %22
  %30 = tail call i32 @clk_prepare(ptr noundef %23) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = tail call i32 @clk_enable(ptr noundef %23) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %23) #7
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi i32 [ %33, %35 ], [ %30, %29 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %37) #7
  br label %65

38:                                               ; preds = %32
  %39 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.16) #7
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = ptrtoint ptr %39 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %42) #7
  br label %61

43:                                               ; preds = %38
  %44 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %39)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.dw_mipi_dsi_stm_probe) #7
  br label %61

47:                                               ; preds = %43
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %49 = and i32 %48, -256
  %50 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %3, i32 0, i32 3
  store i32 %49, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %39) #7
  tail call void @clk_unprepare(ptr noundef %39) #7
  switch i32 %49, label %51 [
    i32 825438208, label %52
    i32 825438464, label %52
  ]

51:                                               ; preds = %47
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #7
  br label %61

52:                                               ; preds = %47, %47
  store ptr %7, ptr @dw_mipi_dsi_stm_plat_data, align 4
  store ptr %3, ptr getelementptr inbounds (%struct.dw_mipi_dsi_plat_data, ptr @dw_mipi_dsi_stm_plat_data, i32 0, i32 5), align 4
  %53 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %53, align 8
  %54 = tail call ptr @dw_mipi_dsi_probe(ptr noundef %0, ptr noundef nonnull @dw_mipi_dsi_stm_plat_data) #7
  %55 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %3, i32 0, i32 2
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %69

57:                                               ; preds = %52
  %58 = ptrtoint ptr %54 to i32
  %59 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %2, i32 noundef %58, ptr noundef nonnull @.str.20) #7
  %60 = load ptr, ptr %24, align 4
  br label %61

61:                                               ; preds = %57, %51, %46, %41
  %62 = phi ptr [ %23, %41 ], [ %23, %46 ], [ %23, %51 ], [ %60, %57 ]
  %63 = phi i32 [ %42, %41 ], [ %44, %46 ], [ -19, %51 ], [ %58, %57 ]
  tail call void @clk_disable(ptr noundef %62) #7
  tail call void @clk_unprepare(ptr noundef %62) #7
  %64 = load ptr, ptr %13, align 4
  br label %65

65:                                               ; preds = %61, %36, %26
  %66 = phi ptr [ %12, %26 ], [ %12, %36 ], [ %64, %61 ]
  %67 = phi i32 [ %27, %26 ], [ %37, %36 ], [ %63, %61 ]
  %68 = tail call i32 @regulator_disable(ptr noundef %66) #7
  br label %69

69:                                               ; preds = %65, %52, %21, %15, %9, %1
  %70 = phi i32 [ %10, %9 ], [ %16, %15 ], [ %19, %21 ], [ %67, %65 ], [ -12, %1 ], [ 0, %52 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_stm_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @dw_mipi_dsi_remove(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regulator_disable(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #7
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_mipi_dsi_probe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_mipi_dsi_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_stm_suspend(ptr nocapture noundef readnone %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.dw_mipi_dsi_plat_data, ptr @dw_mipi_dsi_stm_plat_data, i32 0, i32 5), align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2) #7
  %3 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %4) #7
  tail call void @clk_unprepare(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %2, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regulator_disable(ptr noundef %6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_mipi_dsi_stm_resume(ptr nocapture noundef readnone %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.dw_mipi_dsi_plat_data, ptr @dw_mipi_dsi_stm_plat_data, i32 0, i32 5), align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2) #7
  %3 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regulator_enable(ptr noundef %4) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %5) #7
  br label %21

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dw_mipi_dsi_stm, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = tail call i32 @clk_enable(ptr noundef %10) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #7
  br label %17

17:                                               ; preds = %16, %8
  %18 = phi i32 [ %14, %16 ], [ %11, %8 ]
  %19 = load ptr, ptr %3, align 4
  %20 = tail call i32 @regulator_disable(ptr noundef %19) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %18) #7
  br label %21

21:                                               ; preds = %17, %13, %7
  %22 = phi i32 [ %5, %7 ], [ %18, %17 ], [ 0, %13 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
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
!8 = !{i64 2495887}
!9 = !{i64 2153910241}
!10 = !{i64 2153909617}
!11 = !{i64 2495469}
!12 = !{i64 2153913282}
!13 = !{i64 2153913619}
!14 = !{i64 2153915340}
!15 = !{i64 2153915677}
!16 = !{i32 0, i32 33}
