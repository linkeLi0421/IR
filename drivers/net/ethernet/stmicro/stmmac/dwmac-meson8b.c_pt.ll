; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson8b_dwmac_data = type { ptr, i8 }
%struct.stmmac_resources = type { ptr, [6 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.meson8b_dwmac = type { ptr, ptr, ptr, i32, ptr, i32, i32, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.meson8b_dwmac_clk_configs = type { %struct.clk_mux, %struct.clk_divider, %struct.clk_fixed_factor, %struct.clk_gate }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }

@__initcall__kmod_dwmac_meson8b__344_547_meson8b_dwmac_driver_init6 = internal global ptr @meson8b_dwmac_driver_init, section ".initcall6.init", align 4
@meson8b_dwmac_driver = internal global %struct.platform_driver { ptr @meson8b_dwmac_probe, ptr @stmmac_pltfr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson8b_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_meson8b_dwmac_driver_exit = internal global ptr @meson8b_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author345 = internal constant [78 x i8] c"dwmac_meson8b.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description346 = internal constant [78 x i8] c"dwmac_meson8b.description=Amlogic Meson8b, Meson8m2 and GXBB DWMAC glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file347 = internal constant [69 x i8] c"dwmac_meson8b.file=drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b\00", section ".modinfo", align 1
@__UNIQUE_ID_license348 = internal constant [29 x i8] c"dwmac_meson8b.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"meson8b-dwmac\00", align 1
@meson8b_dwmac_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8m2-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_axg_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson_g12a_dwmac_data }, %struct.of_device_id zeroinitializer], align 4
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"missing phy-mode property\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"amlogic,tx-delay-ns\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"rx-internal-delay-ps\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"amlogic,rx-delay-ns\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"The RGMII RX delay range is 0..3000ps in 200ps steps\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"The only allowed RGMII RX delays values are: 0ps, 2000ps\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"timing-adjustment\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"unsupported phy-mode %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"The timing-adjustment clock is mandatory for the RX delay re-timing\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Failed to enable the timing-adjustment clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"gmii\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"rev-mii\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"rev-rmii\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"rgmii-id\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"rgmii-rxid\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"rgmii-txid\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"rtbi\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"smii\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"xgmii\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"xlgmii\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"moca\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"qsgmii\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"trgmii\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"1000base-x\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"2500base-x\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"5gbase-r\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"rxaui\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"10gbase-r\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"25gbase-r\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"usxgmii\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"10gbase-kr\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"100base-x\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@meson8b_init_rgmii_tx_clk.mux_parents = internal constant [2 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.42, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr null, ptr null, i32 -1 }], align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"clkin0\00", align 1
@meson8b_init_rgmii_tx_clk.div_table = internal constant [7 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 2 }, %struct.clk_div_table { i32 3, i32 3 }, %struct.clk_div_table { i32 4, i32 4 }, %struct.clk_div_table { i32 5, i32 5 }, %struct.clk_div_table { i32 6, i32 6 }, %struct.clk_div_table { i32 7, i32 7 }, %struct.clk_div_table zeroinitializer], align 4
@.str.43 = private unnamed_addr constant [9 x i8] c"m250_sel\00", align 1
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@.str.44 = private unnamed_addr constant [52 x i8] c"drivers/net/ethernet/stmicro/stmmac/dwmac-meson8b.c\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"m250_div\00", align 1
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@.str.46 = private unnamed_addr constant [11 x i8] c"fixed_div2\00", align 1
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.str.47 = private unnamed_addr constant [12 x i8] c"rgmii_tx_en\00", align 1
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"%s#%s\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"failed to set RGMII TX clock\0A\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"failed to enable the RGMII TX clock\0A\00", align 1
@meson8b_dwmac_data = internal constant %struct.meson8b_dwmac_data { ptr @meson8b_set_phy_mode, i8 0 }, align 4
@meson_axg_dwmac_data = internal constant %struct.meson8b_dwmac_data { ptr @meson_axg_set_phy_mode, i8 0 }, align 4
@meson_g12a_dwmac_data = internal constant %struct.meson8b_dwmac_data { ptr @meson_axg_set_phy_mode, i8 1 }, align 4
@.str.51 = private unnamed_addr constant [25 x i8] c"fail to set phy-mode %s\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author345, ptr @__UNIQUE_ID_description346, ptr @__UNIQUE_ID_file347, ptr @__UNIQUE_ID_license348, ptr @__exitcall_meson8b_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_meson8b__344_547_meson8b_dwmac_driver_init6, ptr @meson8b_dwmac_driver_exit], section "llvm.metadata"
@switch.table.phy_modes = private unnamed_addr constant [30 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.40, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @meson8b_dwmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson8b_dwmac_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson8b_dwmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson8b_dwmac_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson8b_dwmac_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.stmmac_resources, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %2, i8 0, i32 96, i1 false), !annotation !8
  %3 = call i32 @stmmac_get_platform_resources(ptr noundef %0, ptr noundef nonnull %2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %93

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 1
  %7 = call ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %6) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  br label %93

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 32, i32 noundef 3520) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %91, label %15

15:                                               ; preds = %11
  %16 = call ptr @of_device_get_match_data(ptr noundef %12) #9
  %17 = getelementptr inbounds %struct.meson8b_dwmac, ptr %13, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %91, label %19

19:                                               ; preds = %15
  %20 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #9
  %21 = getelementptr inbounds %struct.meson8b_dwmac, ptr %13, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %91

25:                                               ; preds = %19
  store ptr %12, ptr %13, align 4
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.meson8b_dwmac, ptr %13, i32 0, i32 3
  %29 = call i32 @of_get_phy_mode(ptr noundef %27, ptr noundef %28) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1) #10
  br label %91

32:                                               ; preds = %25
  %33 = load ptr, ptr %26, align 8
  %34 = getelementptr inbounds %struct.meson8b_dwmac, ptr %13, i32 0, i32 5
  %35 = call i32 @of_property_read_variable_u32_array(ptr noundef %33, ptr noundef nonnull @.str.2, ptr noundef %34, i32 noundef 1, i32 noundef 0) #9
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 2, ptr %34, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load ptr, ptr %26, align 8
  %40 = getelementptr inbounds %struct.meson8b_dwmac, ptr %13, i32 0, i32 6
  %41 = call i32 @of_property_read_variable_u32_array(ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef %40, i32 noundef 1, i32 noundef 0) #9
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %26, align 8
  %45 = call i32 @of_property_read_variable_u32_array(ptr noundef %44, ptr noundef nonnull @.str.4, ptr noundef %40, i32 noundef 1, i32 noundef 0) #9
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, ptr %40, align 4
  %49 = mul i32 %48, 1000
  store i32 %49, ptr %40, align 4
  br label %50

50:                                               ; preds = %47, %43, %38
  %51 = load ptr, ptr %17, align 4
  %52 = getelementptr inbounds %struct.meson8b_dwmac_data, ptr %51, i32 0, i32 1
  %53 = load i8, ptr %52, align 4, !range !9
  %54 = icmp eq i8 %53, 0
  %55 = load i32, ptr %40, align 4
  br i1 %54, label %63, label %56

56:                                               ; preds = %50
  %57 = icmp ult i32 %55, 3001
  %58 = urem i32 %55, 200
  %59 = icmp eq i32 %58, 0
  %60 = and i1 %57, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.5) #10
  br label %91

63:                                               ; preds = %50
  switch i32 %55, label %64 [
    i32 0, label %66
    i32 2000, label %66
  ]

64:                                               ; preds = %63
  %65 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.6) #10
  br label %91

66:                                               ; preds = %63, %63, %56
  %67 = load ptr, ptr %13, align 4
  %68 = call ptr @devm_clk_get_optional(ptr noundef %67, ptr noundef nonnull @.str.7) #9
  %69 = getelementptr inbounds %struct.meson8b_dwmac, ptr %13, i32 0, i32 7
  store ptr %68, ptr %69, align 4
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = ptrtoint ptr %68 to i32
  br label %91

73:                                               ; preds = %66
  %74 = call fastcc i32 @meson8b_init_rgmii_delays(ptr noundef nonnull %13)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = call fastcc i32 @meson8b_init_rgmii_tx_clk(ptr noundef nonnull %13)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load ptr, ptr %17, align 4
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 %81(ptr noundef nonnull %13) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = call fastcc i32 @meson8b_init_prg_eth(ptr noundef nonnull %13)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %7, i32 0, i32 46
  store ptr %13, ptr %88, align 4
  %89 = call i32 @stmmac_dvr_probe(ptr noundef %12, ptr noundef %7, ptr noundef nonnull %2) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87, %84, %79, %76, %73, %71, %64, %61, %31, %23, %15, %11
  %92 = phi i32 [ %24, %23 ], [ %29, %31 ], [ -22, %61 ], [ %72, %71 ], [ %74, %73 ], [ %77, %76 ], [ %82, %79 ], [ %85, %84 ], [ %89, %87 ], [ -22, %64 ], [ -12, %11 ], [ -22, %15 ]
  call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %7) #9
  br label %93

93:                                               ; preds = %91, %87, %9, %1
  %94 = phi i32 [ %10, %9 ], [ %92, %91 ], [ %3, %1 ], [ 0, %87 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #9
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_pltfr_remove(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson8b_init_rgmii_delays(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 %3, 4
  %5 = and i32 %4, 96
  %6 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.meson8b_dwmac_data, ptr %7, i32 0, i32 1
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = udiv i32 %12, 200
  %14 = shl i32 %13, 16
  %15 = and i32 %14, 983040
  %16 = icmp eq i32 %12, 2000
  %17 = select i1 %10, i1 %16, i1 false
  %18 = select i1 %17, i32 24576, i32 0
  %19 = select i1 %10, i32 0, i32 %15
  %20 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  switch i32 %21, label %25 [
    i32 9, label %22
    i32 11, label %28
    i32 12, label %24
    i32 10, label %56
    i32 7, label %56
  ]

22:                                               ; preds = %1
  %23 = or i32 %18, %5
  br label %28

24:                                               ; preds = %1
  br label %28

25:                                               ; preds = %1
  %26 = load ptr, ptr %0, align 4
  %27 = tail call fastcc ptr @phy_modes(i32 noundef %21)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.8, ptr noundef nonnull %27) #10
  br label %74

28:                                               ; preds = %24, %22, %1
  %29 = phi i32 [ %19, %24 ], [ %19, %22 ], [ 0, %1 ]
  %30 = phi i32 [ %18, %24 ], [ %23, %22 ], [ %5, %1 ]
  %31 = and i32 %30, 8192
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.9) #10
  br label %74

39:                                               ; preds = %33
  %40 = tail call i32 @clk_prepare(ptr noundef nonnull %35) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = tail call i32 @clk_enable(ptr noundef nonnull %35) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load ptr, ptr %0, align 4
  %47 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @devm_add_action(ptr noundef %46, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %48) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  tail call void @clk_disable(ptr noundef %48) #9
  tail call void @clk_unprepare(ptr noundef %48) #9
  br label %56

52:                                               ; preds = %42
  tail call void @clk_unprepare(ptr noundef nonnull %35) #9
  br label %53

53:                                               ; preds = %52, %39
  %54 = phi i32 [ %43, %52 ], [ %40, %39 ]
  %55 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.10) #10
  br label %74

56:                                               ; preds = %51, %45, %28, %1, %1
  %57 = phi i32 [ %30, %28 ], [ %30, %51 ], [ 0, %1 ], [ 0, %1 ], [ %30, %45 ]
  %58 = phi i32 [ %29, %28 ], [ %29, %51 ], [ 0, %1 ], [ 0, %1 ], [ %29, %45 ]
  %59 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %62 = and i32 %61, -33546337
  %63 = and i32 %57, 33546336
  %64 = or i32 %62, %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %65 = load ptr, ptr %59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %64) #9, !srcloc !13
  %66 = load ptr, ptr %59, align 4
  %67 = getelementptr i8, ptr %66, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %69 = and i32 %68, -983041
  %70 = and i32 %58, 983040
  %71 = or i32 %69, %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %72 = load ptr, ptr %59, align 4
  %73 = getelementptr i8, ptr %72, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #9, !srcloc !13
  br label %74

74:                                               ; preds = %56, %53, %37, %25
  %75 = phi i32 [ -22, %25 ], [ %54, %53 ], [ 0, %56 ], [ -22, %37 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson8b_init_rgmii_tx_clk(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca [32 x i8], align 1
  %4 = alloca %struct.clk_init_data, align 4
  %5 = alloca [32 x i8], align 1
  %6 = alloca %struct.clk_init_data, align 4
  %7 = alloca [32 x i8], align 1
  %8 = alloca %struct.clk_init_data, align 4
  %9 = alloca [32 x i8], align 1
  %10 = alloca %struct.clk_parent_data, align 4
  %11 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, i8 0, i32 16, i1 false)
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 104, i32 noundef 3520) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %119, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.clk_mux, ptr %12, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_mux, ptr %12, i32 0, i32 4
  store i8 4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_mux, ptr %12, i32 0, i32 3
  store i32 1, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #9
  %20 = getelementptr inbounds i8, ptr %8, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %20, i8 0, i32 16, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %9, i8 0, i32 32, i1 false) #9, !annotation !8
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load ptr, ptr %21, align 4
  br label %27

27:                                               ; preds = %25, %14
  %28 = phi ptr [ %26, %25 ], [ %23, %14 ]
  %29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %9, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef %28, ptr noundef nonnull @.str.43) #9
  store ptr %9, ptr %8, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 1
  store ptr @clk_mux_ops, ptr %30, align 4
  %31 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 6
  store i32 4, ptr %31, align 4
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 3
  store ptr @meson8b_init_rgmii_tx_clk.mux_parents, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %8, i32 0, i32 5
  store i8 2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.clk_hw, ptr %12, i32 0, i32 2
  store ptr %8, ptr %34, align 4
  %35 = load ptr, ptr %0, align 4
  %36 = call ptr @devm_clk_register(ptr noundef %35, ptr noundef nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #9
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40, !prof !14

38:                                               ; preds = %27
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 174, i32 noundef 9, ptr noundef null) #9
  %39 = ptrtoint ptr %36 to i32
  br label %119

40:                                               ; preds = %27
  store ptr %12, ptr %10, align 4
  %41 = load ptr, ptr %15, align 4
  %42 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 1
  %43 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 1, i32 1
  store ptr %41, ptr %43, align 4
  %44 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 1, i32 2
  store i8 7, ptr %44, align 4
  %45 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 1, i32 3
  store i8 3, ptr %45, align 1
  %46 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 1, i32 5
  store ptr @meson8b_init_rgmii_tx_clk.div_table, ptr %46, align 4
  %47 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 1, i32 4
  store i8 20, ptr %47, align 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #9
  %48 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %48, i8 0, i32 16, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %7, i8 0, i32 32, i1 false) #9, !annotation !8
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load ptr, ptr %49, align 4
  br label %55

55:                                               ; preds = %53, %40
  %56 = phi ptr [ %54, %53 ], [ %51, %40 ]
  %57 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %7, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef %56, ptr noundef nonnull @.str.45) #9
  store ptr %7, ptr %6, align 4
  %58 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @clk_divider_ops, ptr %58, align 4
  %59 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 4, ptr %59, align 4
  %60 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 3
  store ptr %10, ptr %60, align 4
  %61 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 1, ptr %61, align 4
  %62 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 1, i32 0, i32 2
  store ptr %6, ptr %62, align 4
  %63 = load ptr, ptr %0, align 4
  %64 = call ptr @devm_clk_register(ptr noundef %63, ptr noundef %42) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #9
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68, !prof !14

66:                                               ; preds = %55
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 187, i32 noundef 9, ptr noundef null) #9
  %67 = ptrtoint ptr %64 to i32
  br label %119

68:                                               ; preds = %55
  store ptr %42, ptr %10, align 4
  %69 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 2
  %70 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 2, i32 1
  store i32 1, ptr %70, align 4
  %71 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 2, i32 2
  store i32 2, ptr %71, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #9
  %72 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %72, i8 0, i32 16, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false) #9, !annotation !8
  %73 = load ptr, ptr %0, align 4
  %74 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load ptr, ptr %73, align 4
  br label %79

79:                                               ; preds = %77, %68
  %80 = phi ptr [ %78, %77 ], [ %75, %68 ]
  %81 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef %80, ptr noundef nonnull @.str.46) #9
  store ptr %5, ptr %4, align 4
  %82 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @clk_fixed_factor_ops, ptr %82, align 4
  %83 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  store i32 4, ptr %83, align 4
  %84 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 3
  store ptr %10, ptr %84, align 4
  %85 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  store i8 1, ptr %85, align 4
  %86 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 2, i32 0, i32 2
  store ptr %4, ptr %86, align 4
  %87 = load ptr, ptr %0, align 4
  %88 = call ptr @devm_clk_register(ptr noundef %87, ptr noundef %69) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #9
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %92, !prof !14

90:                                               ; preds = %79
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 196, i32 noundef 9, ptr noundef null) #9
  %91 = ptrtoint ptr %88 to i32
  br label %119

92:                                               ; preds = %79
  store ptr %69, ptr %10, align 4
  %93 = load ptr, ptr %15, align 4
  %94 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 3
  %95 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 3, i32 1
  store ptr %93, ptr %95, align 4
  %96 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 3, i32 2
  store i8 10, ptr %96, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #9
  %97 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %97, i8 0, i32 16, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false) #9, !annotation !8
  %98 = load ptr, ptr %0, align 4
  %99 = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load ptr, ptr %98, align 4
  br label %104

104:                                              ; preds = %102, %92
  %105 = phi ptr [ %103, %102 ], [ %100, %92 ]
  %106 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef %105, ptr noundef nonnull @.str.47) #9
  store ptr %3, ptr %2, align 4
  %107 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @clk_gate_ops, ptr %107, align 4
  %108 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 4, ptr %108, align 4
  %109 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 3
  store ptr %10, ptr %109, align 4
  %110 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 1, ptr %110, align 4
  %111 = getelementptr inbounds %struct.meson8b_dwmac_clk_configs, ptr %12, i32 0, i32 3, i32 0, i32 2
  store ptr %2, ptr %111, align 4
  %112 = load ptr, ptr %0, align 4
  %113 = call ptr @devm_clk_register(ptr noundef %112, ptr noundef %94) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  %114 = icmp ugt ptr %113, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %117, !prof !14

115:                                              ; preds = %104
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 205, i32 noundef 9, ptr noundef null) #9
  %116 = ptrtoint ptr %113 to i32
  br label %119

117:                                              ; preds = %104
  %118 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 4
  store ptr %113, ptr %118, align 4
  br label %119

119:                                              ; preds = %117, %115, %90, %66, %38, %1
  %120 = phi i32 [ %39, %38 ], [ %67, %66 ], [ %91, %90 ], [ %116, %115 ], [ 0, %117 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson8b_init_prg_eth(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -9
  %5 = icmp ult i32 %4, 4
  %6 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9
  br i1 %5, label %9, label %35

9:                                                ; preds = %1
  %10 = and i32 %8, -2049
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %11 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #9, !srcloc !13
  %12 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef 125000000) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.49) #10
  br label %44

18:                                               ; preds = %9
  %19 = load ptr, ptr %12, align 4
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = tail call i32 @clk_enable(ptr noundef %19) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 4
  %27 = load ptr, ptr %12, align 4
  %28 = tail call i32 @devm_add_action(ptr noundef %26, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  tail call void @clk_disable(ptr noundef %27) #9
  tail call void @clk_unprepare(ptr noundef %27) #9
  br label %38

31:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #9
  br label %32

32:                                               ; preds = %31, %18
  %33 = phi i32 [ %23, %31 ], [ %20, %18 ]
  %34 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.50) #10
  br label %44

35:                                               ; preds = %1
  %36 = or i32 %8, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %37 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %36) #9, !srcloc !13
  br label %38

38:                                               ; preds = %35, %30, %25
  %39 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %42 = or i32 %41, 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %43 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %42) #9, !srcloc !13
  br label %44

44:                                               ; preds = %38, %32, %16
  %45 = phi i32 [ %14, %16 ], [ %33, %32 ], [ 0, %38 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %0) unnamed_addr #6 {
  %2 = icmp ult i32 %0, 30
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.41, %1 ]
  ret ptr %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_disable_unprepare(ptr noundef %0) #7 {
  tail call void @clk_disable(ptr noundef %0) #9
  tail call void @clk_unprepare(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson8b_set_phy_mode(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %16 [
    i32 9, label %4
    i32 11, label %4
    i32 10, label %4
    i32 12, label %4
    i32 7, label %10
  ]

4:                                                ; preds = %1, %1, %1, %1
  %5 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %8 = or i32 %7, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %9 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #9, !srcloc !13
  br label %19

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %14 = and i32 %13, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %15 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #9, !srcloc !13
  br label %19

16:                                               ; preds = %1
  %17 = load ptr, ptr %0, align 4
  %18 = tail call fastcc ptr @phy_modes(i32 noundef %3)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.51, ptr noundef nonnull %18) #10
  br label %19

19:                                               ; preds = %16, %10, %4
  %20 = phi i32 [ -22, %16 ], [ 0, %10 ], [ 0, %4 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_axg_set_phy_mode(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %18 [
    i32 9, label %4
    i32 11, label %4
    i32 10, label %4
    i32 12, label %4
    i32 7, label %11
  ]

4:                                                ; preds = %1, %1, %1, %1
  %5 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %8 = and i32 %7, -8
  %9 = or i32 %8, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %10 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #9, !srcloc !13
  br label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.meson8b_dwmac, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %15 = and i32 %14, -8
  %16 = or i32 %15, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %17 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #9, !srcloc !13
  br label %21

18:                                               ; preds = %1
  %19 = load ptr, ptr %0, align 4
  %20 = tail call fastcc ptr @phy_modes(i32 noundef %3)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.51, ptr noundef nonnull %20) #10
  br label %21

21:                                               ; preds = %18, %11, %4
  %22 = phi i32 [ -22, %18 ], [ 0, %11 ], [ 0, %4 ]
  ret i32 %22
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 5565680}
!11 = !{i64 2156176899}
!12 = !{i64 2156177085}
!13 = !{i64 5565262}
!14 = !{!"branch_weights", i32 1, i32 2000}
