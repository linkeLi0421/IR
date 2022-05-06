; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dwc_eth_dwmac_data = type { ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.stmmac_axi = type { i8, i8, i32, i32, i8, [7 x i32], i8, i8, i8 }
%struct.stmmac_dma_cfg = type { i32, i32, i32, i8, i32, i32, i8, i8, i8, i8 }
%struct.tegra_eqos = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.stmmac_mdio_bus_data = type { i32, i32, i32, ptr, i32, i8 }

@__initcall__kmod_dwmac_dwc_qos_eth__334_510_dwc_eth_dwmac_driver_init6 = internal global ptr @dwc_eth_dwmac_driver_init, section ".initcall6.init", align 4
@dwc_eth_dwmac_driver = internal global %struct.platform_driver { ptr @dwc_eth_dwmac_probe, ptr @dwc_eth_dwmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dwc_eth_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dwc_eth_dwmac_driver_exit = internal global ptr @dwc_eth_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author335 = internal constant [58 x i8] c"dwmac_dwc_qos_eth.author=Joao Pinto <jpinto@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description336 = internal constant [85 x i8] c"dwmac_dwc_qos_eth.description=Synopsys DWC Ethernet Quality-of-Service v4.10a driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [77 x i8] c"dwmac_dwc_qos_eth.file=drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [33 x i8] c"dwmac_dwc_qos_eth.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"dwc-eth-dwmac\00", align 1
@dwc_eth_dwmac_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dwc-qos-ethernet-4.10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dwc_qos_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-eqos\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_eqos_data }, %struct.of_device_id zeroinitializer], align 4
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to probe subdriver: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"snps,en-lpi\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"snps,write-requests\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"snps,read-requests\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"snps,burst-map\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to remove platform: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to remove subdriver: %d\0A\00", align 1
@dwc_qos_data = internal constant %struct.dwc_eth_dwmac_data { ptr @dwc_qos_probe, ptr @dwc_qos_remove }, align 4
@tegra_eqos_data = internal constant %struct.dwc_eth_dwmac_data { ptr @tegra_eqos_probe, ptr @tegra_eqos_remove }, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"apb_pclk clock not found.\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"failed to enable apb_pclk clock: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"phy_ref_clk\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"phy_ref_clk clock not found.\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"failed to enable phy_ref clock: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"master_bus\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"slave_bus\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"phy-reset\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"eqos\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.20 = private unnamed_addr constant [18 x i8] c"invalid speed %u\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.21 = private unnamed_addr constant [27 x i8] c"calibration did not start\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"calibration didn't finish\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"failed to set TX rate: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__exitcall_dwc_eth_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_dwc_qos_eth__334_510_dwc_eth_dwmac_driver_init6, ptr @dwc_eth_dwmac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dwc_eth_dwmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc_eth_dwmac_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dwc_eth_dwmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc_eth_dwmac_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc_eth_dwmac_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_resources, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @device_get_match_data(ptr noundef %4) #8
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %6, i8 0, i32 92, i1 false)
  %7 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %8 = getelementptr inbounds %struct.stmmac_resources, ptr %3, i32 0, i32 4
  store i32 %7, ptr %8, align 4
  %9 = icmp slt i32 %7, 0
  br i1 %9, label %146, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stmmac_resources, ptr %3, i32 0, i32 2
  store i32 %7, ptr %11, align 4
  %12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  store ptr %12, ptr %3, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = ptrtoint ptr %12 to i32
  br label %146

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.stmmac_resources, ptr %3, i32 0, i32 1
  %18 = call ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %17) #8
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = ptrtoint ptr %18 to i32
  br label %146

22:                                               ; preds = %16
  %23 = load ptr, ptr %5, align 4
  %24 = call i32 %23(ptr noundef %0, ptr noundef %18, ptr noundef nonnull %3) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = icmp eq i32 %24, -517
  br i1 %27, label %144, label %28

28:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %24) #9
  br label %144

29:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  %30 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 57
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %35 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 48) #10
  store ptr %35, ptr %30, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %129, label %37

37:                                               ; preds = %33, %29
  %38 = call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str.2) #8
  %39 = load ptr, ptr %30, align 4
  %40 = zext i1 %38 to i8
  store i8 %40, ptr %39, align 4
  %41 = load ptr, ptr %30, align 4
  %42 = getelementptr inbounds %struct.stmmac_axi, ptr %41, i32 0, i32 2
  %43 = call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef %42, i32 noundef 1) #8
  %44 = icmp eq i32 %43, 0
  %45 = load ptr, ptr %30, align 4
  %46 = getelementptr inbounds %struct.stmmac_axi, ptr %45, i32 0, i32 2
  br i1 %44, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, ptr %46, align 4
  %49 = add i32 %48, -1
  br label %50

50:                                               ; preds = %47, %37
  %51 = phi i32 [ %49, %47 ], [ 1, %37 ]
  store i32 %51, ptr %46, align 4
  %52 = load ptr, ptr %30, align 4
  %53 = getelementptr inbounds %struct.stmmac_axi, ptr %52, i32 0, i32 3
  %54 = call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef %53, i32 noundef 1) #8
  %55 = icmp eq i32 %54, 0
  %56 = load ptr, ptr %30, align 4
  %57 = getelementptr inbounds %struct.stmmac_axi, ptr %56, i32 0, i32 3
  br i1 %55, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, ptr %57, align 4
  %60 = add i32 %59, -1
  br label %61

61:                                               ; preds = %58, %50
  %62 = phi i32 [ %60, %58 ], [ 1, %50 ]
  store i32 %62, ptr %57, align 4
  %63 = call i32 @device_property_read_u32_array(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1) #8
  %64 = load i32, ptr %2, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr %30, align 4
  %69 = getelementptr %struct.stmmac_axi, ptr %68, i32 0, i32 5, i32 0
  store i32 4, ptr %69, align 4
  %70 = load i32, ptr %2, align 4
  br label %71

71:                                               ; preds = %67, %61
  %72 = phi i32 [ %70, %67 ], [ %64, %61 ]
  %73 = phi i32 [ 1, %67 ], [ 0, %61 ]
  %74 = and i32 %72, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %30, align 4
  %78 = getelementptr %struct.stmmac_axi, ptr %77, i32 0, i32 5, i32 %73
  store i32 8, ptr %78, align 4
  %79 = add nuw nsw i32 %73, 1
  %80 = load i32, ptr %2, align 4
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i32 [ %80, %76 ], [ %72, %71 ]
  %83 = phi i32 [ %79, %76 ], [ %73, %71 ]
  %84 = and i32 %82, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %30, align 4
  %88 = getelementptr %struct.stmmac_axi, ptr %87, i32 0, i32 5, i32 %83
  store i32 16, ptr %88, align 4
  %89 = add nuw nsw i32 %83, 1
  %90 = load i32, ptr %2, align 4
  br label %91

91:                                               ; preds = %86, %81
  %92 = phi i32 [ %90, %86 ], [ %82, %81 ]
  %93 = phi i32 [ %89, %86 ], [ %83, %81 ]
  %94 = and i32 %92, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %30, align 4
  %98 = getelementptr %struct.stmmac_axi, ptr %97, i32 0, i32 5, i32 %93
  store i32 32, ptr %98, align 4
  %99 = add nuw nsw i32 %93, 1
  %100 = load i32, ptr %2, align 4
  br label %101

101:                                              ; preds = %96, %91
  %102 = phi i32 [ %100, %96 ], [ %92, %91 ]
  %103 = phi i32 [ %99, %96 ], [ %93, %91 ]
  %104 = and i32 %102, 16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load ptr, ptr %30, align 4
  %108 = getelementptr %struct.stmmac_axi, ptr %107, i32 0, i32 5, i32 %103
  store i32 64, ptr %108, align 4
  %109 = add nuw nsw i32 %103, 1
  %110 = load i32, ptr %2, align 4
  br label %111

111:                                              ; preds = %106, %101
  %112 = phi i32 [ %110, %106 ], [ %102, %101 ]
  %113 = phi i32 [ %109, %106 ], [ %103, %101 ]
  %114 = and i32 %112, 32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load ptr, ptr %30, align 4
  %118 = getelementptr %struct.stmmac_axi, ptr %117, i32 0, i32 5, i32 %113
  store i32 128, ptr %118, align 4
  %119 = add nuw nsw i32 %113, 1
  %120 = load i32, ptr %2, align 4
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi i32 [ %120, %116 ], [ %112, %111 ]
  %123 = phi i32 [ %119, %116 ], [ %113, %111 ]
  %124 = and i32 %122, 64
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %121
  %127 = load ptr, ptr %30, align 4
  %128 = getelementptr %struct.stmmac_axi, ptr %127, i32 0, i32 5, i32 %123
  store i32 256, ptr %128, align 4
  br label %130

129:                                              ; preds = %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %139

130:                                              ; preds = %126, %121
  %131 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 58
  store i32 1, ptr %131, align 4
  %132 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 8
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.stmmac_dma_cfg, ptr %133, i32 0, i32 6
  store i8 1, ptr %134, align 4
  %135 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 60
  store i8 1, ptr %135, align 1
  %136 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %18, i32 0, i32 18
  store i32 1, ptr %136, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %137 = call i32 @stmmac_dvr_probe(ptr noundef %4, ptr noundef %18, ptr noundef nonnull %3) #8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %130, %129
  %140 = phi i32 [ -12, %129 ], [ %137, %130 ]
  %141 = getelementptr inbounds %struct.dwc_eth_dwmac_data, ptr %5, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = call i32 %142(ptr noundef %0) #8
  br label %144

144:                                              ; preds = %139, %28, %26
  %145 = phi i32 [ %24, %28 ], [ -517, %26 ], [ %140, %139 ]
  call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %18) #8
  br label %146

146:                                              ; preds = %144, %130, %20, %14, %1
  %147 = phi i32 [ %15, %14 ], [ %21, %20 ], [ %145, %144 ], [ %7, %1 ], [ 0, %130 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #8
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc_eth_dwmac_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @device_get_match_data(ptr noundef %4) #8
  %6 = tail call i32 @stmmac_dvr_remove(ptr noundef %4) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %6) #9
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.dwc_eth_dwmac_data, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %12) #9
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr i8, ptr %3, i32 12096
  %17 = load ptr, ptr %16, align 64
  tail call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %17) #8
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc_qos_probe(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.8) #8
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 47
  store ptr %5, ptr %6, align 4
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #9
  %9 = load ptr, ptr %6, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %43

11:                                               ; preds = %3
  %12 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = tail call i32 @clk_enable(ptr noundef %5) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi i32 [ %12, %11 ], [ %15, %17 ]
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %19) #9
  br label %43

22:                                               ; preds = %18, %14
  %23 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.11) #8
  %24 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 48
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12) #9
  %27 = load ptr, ptr %24, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %40

29:                                               ; preds = %22
  %30 = tail call i32 @clk_prepare(ptr noundef %23) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = tail call i32 @clk_enable(ptr noundef %23) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %23) #8
  br label %36

36:                                               ; preds = %35, %29
  %37 = phi i32 [ %30, %29 ], [ %33, %35 ]
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %37) #9
  br label %40

40:                                               ; preds = %39, %26
  %41 = phi i32 [ %28, %26 ], [ %37, %39 ]
  %42 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %42) #8
  tail call void @clk_unprepare(ptr noundef %42) #8
  br label %43

43:                                               ; preds = %40, %36, %32, %21, %8
  %44 = phi i32 [ %10, %8 ], [ %19, %21 ], [ %41, %40 ], [ 0, %36 ], [ 0, %32 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc_qos_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 48
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %8 = load ptr, ptr %4, align 64
  %9 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #7 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_eqos_probe(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 32, i32 noundef 3520) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %122, label %7

7:                                                ; preds = %3
  store ptr %4, ptr %5, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 26
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %92, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.fwnode_handle, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @of_fwnode_ops
  br i1 %18, label %19, label %92

19:                                               ; preds = %15
  %20 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.14) #8
  %21 = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %122

25:                                               ; preds = %19
  %26 = tail call i32 @clk_prepare(ptr noundef %20) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = tail call i32 @clk_enable(ptr noundef %20) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  tail call void @clk_unprepare(ptr noundef %20) #8
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i32 [ %26, %25 ], [ %29, %31 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %122, label %35

35:                                               ; preds = %32, %28
  %36 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.15) #8
  %37 = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 4
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = ptrtoint ptr %36 to i32
  br label %119

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 47
  store ptr %36, ptr %42, align 4
  %43 = tail call i32 @clk_prepare(ptr noundef %36) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = tail call i32 @clk_enable(ptr noundef %36) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  tail call void @clk_unprepare(ptr noundef %36) #8
  br label %49

49:                                               ; preds = %48, %41
  %50 = phi i32 [ %43, %41 ], [ %46, %48 ]
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %119, label %52

52:                                               ; preds = %49, %45
  %53 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.16) #8
  %54 = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 6
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = ptrtoint ptr %53 to i32
  br label %115

58:                                               ; preds = %52
  %59 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %53)
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %115, label %61

61:                                               ; preds = %58
  %62 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.17) #8
  %63 = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 5
  store ptr %62, ptr %63, align 4
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = ptrtoint ptr %62 to i32
  br label %111

67:                                               ; preds = %61
  %68 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %62)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %111, label %70

70:                                               ; preds = %67
  %71 = tail call ptr @devm_gpiod_get(ptr noundef %4, ptr noundef nonnull @.str.18, i32 noundef 7) #8
  %72 = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 7
  store ptr %71, ptr %72, align 4
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = ptrtoint ptr %71 to i32
  br label %107

76:                                               ; preds = %70
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  tail call void @gpiod_set_value(ptr noundef %71, i32 noundef 0) #8
  %77 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.stmmac_mdio_bus_data, ptr %78, i32 0, i32 5
  store i8 0, ptr %79, align 4
  %80 = tail call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef nonnull @.str.19, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %81 = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 2
  store ptr %80, ptr %81, align 4
  %82 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = ptrtoint ptr %80 to i32
  br label %103

85:                                               ; preds = %76
  %86 = tail call i32 @reset_control_assert(ptr noundef %80) #8
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %85
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  %89 = tail call i32 @reset_control_deassert(ptr noundef %80) #8
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %88
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #8
  br label %92

92:                                               ; preds = %91, %15, %7
  %93 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 35
  store ptr @tegra_eqos_fix_speed, ptr %93, align 4
  %94 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 40
  store ptr @tegra_eqos_init, ptr %94, align 4
  %95 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %1, i32 0, i32 46
  store ptr %5, ptr %95, align 4
  %96 = getelementptr inbounds %struct.tegra_eqos, ptr %5, i32 0, i32 4
  %97 = load ptr, ptr %96, align 4
  %98 = tail call i32 @clk_get_rate(ptr noundef %97) #8
  %99 = udiv i32 %98, 1000000
  %100 = add nsw i32 %99, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %101 = load ptr, ptr %9, align 4
  %102 = getelementptr i8, ptr %101, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %100) #8, !srcloc !9
  br label %122

103:                                              ; preds = %88, %85, %83
  %104 = phi i32 [ %84, %83 ], [ %86, %85 ], [ %89, %88 ]
  %105 = load ptr, ptr %72, align 4
  tail call void @gpiod_set_value(ptr noundef %105, i32 noundef 1) #8
  %106 = load ptr, ptr %63, align 4
  br label %107

107:                                              ; preds = %103, %74
  %108 = phi ptr [ %62, %74 ], [ %106, %103 ]
  %109 = phi i32 [ %75, %74 ], [ %104, %103 ]
  tail call void @clk_disable(ptr noundef %108) #8
  tail call void @clk_unprepare(ptr noundef %108) #8
  %110 = load ptr, ptr %54, align 4
  br label %111

111:                                              ; preds = %107, %67, %65
  %112 = phi ptr [ %53, %65 ], [ %53, %67 ], [ %110, %107 ]
  %113 = phi i32 [ %66, %65 ], [ %68, %67 ], [ %109, %107 ]
  tail call void @clk_disable(ptr noundef %112) #8
  tail call void @clk_unprepare(ptr noundef %112) #8
  %114 = load ptr, ptr %37, align 4
  br label %115

115:                                              ; preds = %111, %58, %56
  %116 = phi ptr [ %36, %56 ], [ %36, %58 ], [ %114, %111 ]
  %117 = phi i32 [ %57, %56 ], [ %59, %58 ], [ %113, %111 ]
  tail call void @clk_disable(ptr noundef %116) #8
  tail call void @clk_unprepare(ptr noundef %116) #8
  %118 = load ptr, ptr %21, align 4
  br label %119

119:                                              ; preds = %115, %49, %39
  %120 = phi ptr [ %20, %39 ], [ %20, %49 ], [ %118, %115 ]
  %121 = phi i32 [ %40, %39 ], [ %50, %49 ], [ %117, %115 ]
  tail call void @clk_disable(ptr noundef %120) #8
  tail call void @clk_unprepare(ptr noundef %120) #8
  br label %122

122:                                              ; preds = %119, %92, %32, %23, %3
  %123 = phi i32 [ 0, %92 ], [ -12, %3 ], [ %24, %23 ], [ %33, %32 ], [ %121, %119 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_eqos_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_eqos, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_assert(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.tegra_eqos, ptr %7, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 1) #8
  %13 = getelementptr inbounds %struct.tegra_eqos, ptr %7, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %15 = getelementptr inbounds %struct.tegra_eqos, ptr %7, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  %17 = getelementptr inbounds %struct.tegra_eqos, ptr %7, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #8
  tail call void @clk_unprepare(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.tegra_eqos, ptr %7, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %20) #8
  tail call void @clk_unprepare(ptr noundef %20) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_eqos_fix_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  switch i32 %1, label %4 [
    i32 1000, label %6
    i32 100, label %3
    i32 10, label %73
  ]

3:                                                ; preds = %2
  br label %6

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %1) #9
  br label %73

6:                                                ; preds = %3, %2
  %7 = phi i32 [ 125000000, %2 ], [ 25000000, %3 ]
  %8 = getelementptr inbounds %struct.tegra_eqos, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 34816
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %12 = or i32 %11, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 34816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !9
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #8
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr i8, ptr %16, i32 34820
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %19 = or i32 %18, -1610612736
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr i8, ptr %20, i32 34820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !9
  %22 = tail call i64 @ktime_get() #8
  %23 = add i64 %22, 10000
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr i8, ptr %24, i32 34828
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %42

28:                                               ; preds = %31, %6
  %29 = tail call i64 @ktime_get() #8
  %30 = icmp sgt i64 %29, %23
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748) #8
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr i8, ptr %33, i32 34828
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %28, label %42

37:                                               ; preds = %28
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr i8, ptr %38, i32 34828
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %63, label %42

42:                                               ; preds = %37, %31, %6
  %43 = tail call i64 @ktime_get() #8
  %44 = add i64 %43, 200000
  %45 = load ptr, ptr %8, align 4
  %46 = getelementptr i8, ptr %45, i32 34828
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %66, label %49

49:                                               ; preds = %52, %42
  %50 = tail call i64 @ktime_get() #8
  %51 = icmp sgt i64 %50, %44
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 4294960) #8
  %54 = load ptr, ptr %8, align 4
  %55 = getelementptr i8, ptr %54, i32 34828
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !17
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %66, label %49

58:                                               ; preds = %49
  %59 = load ptr, ptr %8, align 4
  %60 = getelementptr i8, ptr %59, i32 34828
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %37
  %64 = phi ptr [ @.str.21, %37 ], [ @.str.22, %58 ]
  %65 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull %64) #9
  br label %66

66:                                               ; preds = %63, %58, %52, %42
  %67 = load ptr, ptr %8, align 4
  %68 = getelementptr i8, ptr %67, i32 34816
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %70 = and i32 %69, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %71 = load ptr, ptr %8, align 4
  %72 = getelementptr i8, ptr %71, i32 34816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #8, !srcloc !9
  br label %82

73:                                               ; preds = %4, %2
  %74 = phi i32 [ 125000000, %4 ], [ 2500000, %2 ]
  %75 = getelementptr inbounds %struct.tegra_eqos, ptr %0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 34820
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %79 = and i32 %78, -536870913
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %80 = load ptr, ptr %75, align 4
  %81 = getelementptr i8, ptr %80, i32 34820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #8, !srcloc !9
  br label %82

82:                                               ; preds = %73, %66
  %83 = phi i32 [ %74, %73 ], [ %7, %66 ]
  %84 = getelementptr inbounds %struct.tegra_eqos, ptr %0, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 @clk_set_rate(ptr noundef %85, i32 noundef %83) #8
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.23, i32 noundef %86) #9
  br label %90

90:                                               ; preds = %88, %82
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_eqos_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tegra_eqos, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_get_rate(ptr noundef %4) #8
  %6 = udiv i32 %5, 1000000
  %7 = add nsw i32 %6, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %8 = getelementptr inbounds %struct.tegra_eqos, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #8, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 2156236554}
!9 = !{i64 5561993}
!10 = !{i64 5562411}
!11 = !{i64 2156225557}
!12 = !{i64 2156225837}
!13 = !{i64 2156226855}
!14 = !{i64 2156227219}
!15 = !{i64 2156229287}
!16 = !{i64 2156229627}
!17 = !{i64 2156232756}
!18 = !{i64 2156233096}
!19 = !{i64 2156234601}
!20 = !{i64 2156234881}
!21 = !{i64 2156235363}
!22 = !{i64 2156235643}
