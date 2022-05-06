; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ipq806x_gmac = type { ptr, ptr, ptr, i32, ptr, i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_ipq806x__334_383_ipq806x_gmac_dwmac_driver_init6 = internal global ptr @ipq806x_gmac_dwmac_driver_init, section ".initcall6.init", align 4
@ipq806x_gmac_dwmac_driver = internal global %struct.platform_driver { ptr @ipq806x_gmac_probe, ptr @stmmac_pltfr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ipq806x_gmac_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ipq806x_gmac_dwmac_driver_exit = internal global ptr @ipq806x_gmac_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author335 = internal constant [62 x i8] c"dwmac_ipq806x.author=Mathieu Olivari <mathieu@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description336 = internal constant [77 x i8] c"dwmac_ipq806x.description=Qualcomm Atheros IPQ806x DWMAC specific glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [69 x i8] c"dwmac_ipq806x.file=drivers/net/ethernet/stmicro/stmmac/dwmac-ipq806x\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [35 x i8] c"dwmac_ipq806x.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"ipq806x-gmac-dwmac\00", align 1
@ipq806x_gmac_dwmac_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,ipq806x-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"device tree parsing error\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unsupported PHY mode: \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"missing phy mode property\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"qcom,id\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"missing qcom id property\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"invalid gmac id\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"stmmaceth\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"missing stmmaceth clk property\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"qcom,nss-common\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"missing nss-common node\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"qcom,qsgmii-csr\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"missing qsgmii-csr node\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Speed %dMbps not supported in RGMII\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Speed %dMbps not supported in SGMII\0A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"gmii\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"rev-mii\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"rev-rmii\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"rgmii-id\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"rgmii-rxid\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"rgmii-txid\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"rtbi\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"smii\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"xgmii\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"xlgmii\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"moca\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"qsgmii\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"trgmii\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"1000base-x\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"2500base-x\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"5gbase-r\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"rxaui\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"10gbase-r\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"25gbase-r\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"usxgmii\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"10gbase-kr\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"100base-x\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__exitcall_ipq806x_gmac_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_ipq806x__334_383_ipq806x_gmac_dwmac_driver_init6, ptr @ipq806x_gmac_dwmac_driver_exit], section "llvm.metadata"
@switch.table.ipq806x_gmac_fix_mac_speed = private unnamed_addr constant [30 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.45, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.45, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.44, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], align 4
@switch.table.phy_modes = private unnamed_addr constant [30 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.44, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipq806x_gmac_dwmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ipq806x_gmac_dwmac_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ipq806x_gmac_dwmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ipq806x_gmac_dwmac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipq806x_gmac_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.stmmac_resources, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %2, i8 0, i32 96, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %5 = call i32 @stmmac_get_platform_resources(ptr noundef %0, ptr noundef nonnull %2) #7
  store i32 %5, ptr %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %143

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 1
  %9 = call ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %8) #7
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  br label %143

13:                                               ; preds = %7
  %14 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 24, i32 noundef 3520) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %141, label %16

16:                                               ; preds = %13
  store ptr %0, ptr %14, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.ipq806x_gmac, ptr %14, i32 0, i32 5
  %20 = call i32 @of_get_phy_mode(ptr noundef %18, ptr noundef %19) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %16
  %23 = load ptr, ptr %17, align 8
  %24 = getelementptr inbounds %struct.ipq806x_gmac, ptr %14, i32 0, i32 3
  %25 = call i32 @of_property_read_variable_u32_array(ptr noundef %23, ptr noundef nonnull @.str.4, ptr noundef %24, i32 noundef 1, i32 noundef 0) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %24, align 4
  %29 = icmp ugt i32 %28, 3
  br i1 %29, label %61, label %30

30:                                               ; preds = %27
  %31 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.7) #7
  %32 = getelementptr inbounds %struct.ipq806x_gmac, ptr %14, i32 0, i32 4
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = call i32 @clk_set_rate(ptr noundef %31, i32 noundef 266000000) #7
  %36 = load ptr, ptr %17, align 8
  %37 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %36, ptr noundef nonnull @.str.9) #7
  %38 = getelementptr inbounds %struct.ipq806x_gmac, ptr %14, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %50, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %17, align 8
  %42 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %41, ptr noundef nonnull @.str.11) #7
  %43 = getelementptr inbounds %struct.ipq806x_gmac, ptr %14, i32 0, i32 2
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #8
  %46 = load ptr, ptr %43, align 4
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi ptr [ %46, %45 ], [ %42, %40 ]
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %54, label %65

50:                                               ; preds = %34, %30
  %51 = phi ptr [ @.str.8, %30 ], [ @.str.10, %34 ]
  %52 = phi ptr [ %32, %30 ], [ %38, %34 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %51) #8
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = phi ptr [ %48, %47 ], [ %53, %50 ]
  %56 = ptrtoint ptr %55 to i32
  %57 = icmp eq ptr %55, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ipq806x_gmac, ptr %14, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  br label %65

61:                                               ; preds = %27, %22, %16
  %62 = phi ptr [ @.str.3, %16 ], [ @.str.5, %22 ], [ @.str.6, %27 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %62) #8
  br label %63

63:                                               ; preds = %61, %54
  %64 = phi i32 [ %56, %54 ], [ -22, %61 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  br label %141

65:                                               ; preds = %58, %47
  %66 = phi ptr [ %60, %58 ], [ %48, %47 ]
  %67 = getelementptr inbounds %struct.ipq806x_gmac, ptr %14, i32 0, i32 2
  %68 = call i32 @regmap_write(ptr noundef %66, i32 noundef 288, i32 noundef 524288) #7
  store i32 527372, ptr %3, align 4
  %69 = load i32, ptr %19, align 4
  switch i32 %69, label %138 [
    i32 9, label %71
    i32 4, label %70
  ]

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %65
  %72 = phi i32 [ 527372, %70 ], [ 592908, %65 ]
  store i32 %72, ptr %3, align 4
  %73 = getelementptr inbounds %struct.ipq806x_gmac, ptr %14, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = load i32, ptr %24, align 4
  %76 = shl i32 %75, 2
  %77 = add i32 %76, 48
  %78 = call i32 @regmap_write(ptr noundef %74, i32 noundef %77, i32 noundef %72) #7
  %79 = load ptr, ptr %73, align 4
  %80 = call i32 @regmap_read(ptr noundef %79, i32 noundef 20, ptr noundef nonnull %3) #7
  %81 = load i32, ptr %24, align 4
  %82 = shl nuw i32 1, %81
  %83 = xor i32 %82, -1
  %84 = load i32, ptr %3, align 4
  %85 = and i32 %84, %83
  store i32 %85, ptr %3, align 4
  %86 = load i32, ptr %19, align 4
  switch i32 %86, label %138 [
    i32 9, label %91
    i32 4, label %87
  ]

87:                                               ; preds = %71
  %88 = icmp ugt i32 %81, 1
  %89 = zext i1 %88 to i32
  %90 = shl nuw i32 %89, %81
  br label %91

91:                                               ; preds = %87, %71
  %92 = phi i32 [ %90, %87 ], [ %82, %71 ]
  %93 = or i32 %92, %85
  store i32 %93, ptr %3, align 4
  %94 = load ptr, ptr %73, align 4
  %95 = call i32 @regmap_write(ptr noundef %94, i32 noundef 20, i32 noundef %93) #7
  %96 = load ptr, ptr %73, align 4
  %97 = call i32 @regmap_read(ptr noundef %96, i32 noundef 8, ptr noundef nonnull %3) #7
  %98 = load i32, ptr %24, align 4
  %99 = add i32 %98, 16
  %100 = shl nuw i32 1, %99
  %101 = load i32, ptr %3, align 4
  %102 = or i32 %100, %101
  store i32 %102, ptr %3, align 4
  %103 = load i32, ptr %19, align 4
  switch i32 %103, label %138 [
    i32 9, label %104
    i32 4, label %108
  ]

104:                                              ; preds = %91
  %105 = shl i32 %98, 1
  %106 = add i32 %105, 9
  %107 = add i32 %105, 8
  br label %110

108:                                              ; preds = %91
  %109 = add i32 %98, 4
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi i32 [ %98, %108 ], [ %107, %104 ]
  %112 = phi i32 [ %109, %108 ], [ %106, %104 ]
  %113 = shl nuw i32 1, %112
  %114 = shl nuw i32 1, %111
  %115 = or i32 %113, %114
  %116 = or i32 %115, %102
  store i32 %116, ptr %3, align 4
  %117 = load ptr, ptr %73, align 4
  %118 = call i32 @regmap_write(ptr noundef %117, i32 noundef 8, i32 noundef %116) #7
  %119 = load i32, ptr %19, align 4
  %120 = icmp eq i32 %119, 4
  br i1 %120, label %121, label %129

121:                                              ; preds = %110
  %122 = load ptr, ptr %67, align 4
  %123 = load i32, ptr %24, align 4
  %124 = icmp eq i32 %123, 1
  %125 = shl i32 %123, 2
  %126 = add i32 %125, 308
  %127 = select i1 %124, i32 308, i32 %126
  %128 = call i32 @regmap_write(ptr noundef %122, i32 noundef %127, i32 noundef -1063501681) #7
  br label %129

129:                                              ; preds = %121, %110
  %130 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %9, i32 0, i32 13
  store i32 1, ptr %130, align 4
  %131 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %9, i32 0, i32 46
  store ptr %14, ptr %131, align 4
  %132 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %9, i32 0, i32 35
  store ptr @ipq806x_gmac_fix_mac_speed, ptr %132, align 4
  %133 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %9, i32 0, i32 24
  store i32 0, ptr %133, align 4
  %134 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %9, i32 0, i32 26
  store i32 8192, ptr %134, align 4
  %135 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %9, i32 0, i32 27
  store i32 8192, ptr %135, align 4
  %136 = call i32 @stmmac_dvr_probe(ptr noundef %4, ptr noundef %9, ptr noundef nonnull %2) #7
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %143, label %141

138:                                              ; preds = %91, %71, %65
  %139 = phi i32 [ %69, %65 ], [ %86, %71 ], [ %103, %91 ]
  %140 = call fastcc ptr @phy_modes(i32 noundef %139)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef nonnull %140) #8
  br label %141

141:                                              ; preds = %138, %129, %63, %13
  %142 = phi i32 [ %64, %63 ], [ -22, %138 ], [ %136, %129 ], [ -12, %13 ]
  call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %9) #7
  br label %143

143:                                              ; preds = %141, %129, %11, %1
  %144 = phi i32 [ %12, %11 ], [ %142, %141 ], [ %5, %1 ], [ 0, %129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #7
  ret i32 %144
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipq806x_gmac_fix_mac_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.ipq806x_gmac, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %30 [
    i32 9, label %6
    i32 4, label %19
  ]

6:                                                ; preds = %2
  switch i32 %1, label %9 [
    i32 1000, label %12
    i32 100, label %7
    i32 10, label %8
  ]

7:                                                ; preds = %6
  br label %12

8:                                                ; preds = %6
  br label %12

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.13, i32 noundef %1) #8
  br label %12

12:                                               ; preds = %9, %8, %7, %6
  %13 = phi i32 [ -22, %9 ], [ 99, %8 ], [ 9, %7 ], [ 1, %6 ]
  %14 = getelementptr inbounds %struct.ipq806x_gmac, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 1
  %17 = add i32 %16, 9
  %18 = add i32 %16, 8
  br label %39

19:                                               ; preds = %2
  switch i32 %1, label %22 [
    i32 1000, label %25
    i32 100, label %20
    i32 10, label %21
  ]

20:                                               ; preds = %19
  br label %25

21:                                               ; preds = %19
  br label %25

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.14, i32 noundef %1) #8
  br label %25

25:                                               ; preds = %22, %21, %20, %19
  %26 = phi i32 [ -22, %22 ], [ 49, %21 ], [ 4, %20 ], [ 0, %19 ]
  %27 = getelementptr inbounds %struct.ipq806x_gmac, ptr %0, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 4
  br label %39

30:                                               ; preds = %2
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  %33 = icmp ult i32 %5, 30
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds [30 x ptr], ptr @switch.table.ipq806x_gmac_fix_mac_speed, i32 0, i32 %5
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi ptr [ %36, %34 ], [ @.str.45, %30 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.2, ptr noundef nonnull %38) #8
  br label %73

39:                                               ; preds = %25, %12
  %40 = phi i32 [ %28, %25 ], [ %18, %12 ]
  %41 = phi i32 [ %29, %25 ], [ %17, %12 ]
  %42 = phi i32 [ %26, %25 ], [ %13, %12 ]
  %43 = shl nuw i32 1, %41
  %44 = shl nuw i32 1, %40
  %45 = or i32 %43, %44
  %46 = getelementptr inbounds %struct.ipq806x_gmac, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 @regmap_read(ptr noundef %47, i32 noundef 8, ptr noundef nonnull %3) #7
  %49 = xor i32 %45, -1
  %50 = load i32, ptr %3, align 4
  %51 = and i32 %50, %49
  store i32 %51, ptr %3, align 4
  %52 = load ptr, ptr %46, align 4
  %53 = call i32 @regmap_write(ptr noundef %52, i32 noundef 8, i32 noundef %51) #7
  %54 = load ptr, ptr %46, align 4
  %55 = call i32 @regmap_read(ptr noundef %54, i32 noundef 12, ptr noundef nonnull %3) #7
  %56 = getelementptr inbounds %struct.ipq806x_gmac, ptr %0, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %57, 3
  %59 = shl i32 127, %58
  %60 = xor i32 %59, -1
  %61 = load i32, ptr %3, align 4
  %62 = and i32 %61, %60
  %63 = shl i32 %42, %58
  %64 = or i32 %62, %63
  store i32 %64, ptr %3, align 4
  %65 = load ptr, ptr %46, align 4
  %66 = call i32 @regmap_write(ptr noundef %65, i32 noundef 12, i32 noundef %64) #7
  %67 = load ptr, ptr %46, align 4
  %68 = call i32 @regmap_read(ptr noundef %67, i32 noundef 8, ptr noundef nonnull %3) #7
  %69 = load i32, ptr %3, align 4
  %70 = or i32 %69, %45
  store i32 %70, ptr %3, align 4
  %71 = load ptr, ptr %46, align 4
  %72 = call i32 @regmap_write(ptr noundef %71, i32 noundef 8, i32 noundef %70) #7
  br label %73

73:                                               ; preds = %39, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %0) unnamed_addr #6 {
  %2 = icmp ult i32 %0, 30
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.45, %1 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
