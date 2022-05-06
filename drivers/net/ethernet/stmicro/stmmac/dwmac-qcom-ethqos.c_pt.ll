; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ethqos_emac_driver_data = type { ptr, i32 }
%struct.ethqos_emac_por = type { i32, i32 }
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
%struct.qcom_ethqos = type { ptr, ptr, i32, ptr, i32, ptr, i32 }

@__initcall__kmod_dwmac_qcom_ethqos__334_574_qcom_ethqos_driver_init6 = internal global ptr @qcom_ethqos_driver_init, section ".initcall6.init", align 4
@qcom_ethqos_driver = internal global %struct.platform_driver { ptr @qcom_ethqos_probe, ptr @qcom_ethqos_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_ethqos_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_qcom_ethqos_driver_exit = internal global ptr @qcom_ethqos_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description335 = internal constant [53 x i8] c"dwmac_qcom_ethqos.description=Qualcomm ETHQOS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file336 = internal constant [77 x i8] c"dwmac_qcom_ethqos.file=drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos\00", section ".modinfo", align 1
@__UNIQUE_ID_license337 = internal constant [33 x i8] c"dwmac_qcom_ethqos.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"qcom-ethqos\00", align 1
@qcom_ethqos_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcs404-ethqos\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_v2_3_0_data }, %struct.of_device_id zeroinitializer], align 4
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"dt configuration failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"snps,tso\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"rgmii_clk enable failed\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Timeout while waiting for DLL lock\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Clear CK_OUT_EN timedout\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Set CK_OUT_EN timedout\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Invalid speed %d\0A\00", align 1
@emac_v2_3_0_data = internal constant %struct.ethqos_emac_driver_data { ptr @emac_v2_3_0_por, i32 6 }, align 4
@emac_v2_3_0_por = internal constant [6 x %struct.ethqos_emac_por] [%struct.ethqos_emac_por { i32 0, i32 12587843 }, %struct.ethqos_emac_por { i32 4, i32 537158700 }, %struct.ethqos_emac_por { i32 12, i32 0 }, %struct.ethqos_emac_por { i32 16, i32 2097152 }, %struct.ethqos_emac_por { i32 24, i32 67584 }, %struct.ethqos_emac_por { i32 28, i32 8288 }], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description335, ptr @__UNIQUE_ID_file336, ptr @__UNIQUE_ID_license337, ptr @__exitcall_qcom_ethqos_driver_exit, ptr @__initcall__kmod_dwmac_qcom_ethqos__334_574_qcom_ethqos_driver_init6, ptr @qcom_ethqos_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @qcom_ethqos_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_ethqos_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @qcom_ethqos_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_ethqos_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_ethqos_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.stmmac_resources, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %2, i8 0, i32 96, i1 false), !annotation !8
  %6 = call i32 @stmmac_get_platform_resources(ptr noundef %0, ptr noundef nonnull %2) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %66

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 1
  %10 = call ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %9) #7
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  %13 = ptrtoint ptr %10 to i32
  br label %66

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 43
  store ptr @ethqos_clks_config, ptr %15, align 4
  %16 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %64, label %18

18:                                               ; preds = %14
  store ptr %0, ptr %16, align 4
  %19 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.2) #7
  %20 = getelementptr inbounds %struct.qcom_ethqos, ptr %16, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = ptrtoint ptr %19 to i32
  br label %64

24:                                               ; preds = %18
  %25 = call ptr @of_device_get_match_data(ptr noundef %3) #7
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.qcom_ethqos, ptr %16, i32 0, i32 5
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ethqos_emac_driver_data, ptr %25, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.qcom_ethqos, ptr %16, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  %31 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  %32 = getelementptr inbounds %struct.qcom_ethqos, ptr %16, i32 0, i32 3
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = ptrtoint ptr %31 to i32
  br label %64

36:                                               ; preds = %24
  %37 = call i32 @clk_prepare(ptr noundef %31) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = call i32 @clk_enable(ptr noundef %31) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  call void @clk_unprepare(ptr noundef %31) #7
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i32 [ %40, %42 ], [ %37, %36 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  br label %64

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.qcom_ethqos, ptr %16, i32 0, i32 4
  store i32 1000, ptr %46, align 4
  %47 = getelementptr inbounds %struct.qcom_ethqos, ptr %16, i32 0, i32 2
  store i32 250000000, ptr %47, align 4
  %48 = call i32 @clk_set_rate(ptr noundef %31, i32 noundef 250000000) #7
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %50 = or i32 %49, 1073741824
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %50) #7, !srcloc !12
  %51 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 46
  store ptr %16, ptr %51, align 4
  %52 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 35
  store ptr @ethqos_fix_mac_speed, ptr %52, align 4
  %53 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 45
  store ptr @rgmii_dump, ptr %53, align 4
  %54 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 58
  store i32 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 18
  store i32 1, ptr %55, align 4
  %56 = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %57 = icmp ne ptr %56, null
  %58 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 60
  %59 = zext i1 %57 to i8
  store i8 %59, ptr %58, align 1
  %60 = call i32 @stmmac_dvr_probe(ptr noundef %3, ptr noundef %10, ptr noundef nonnull %2) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %45
  %63 = load ptr, ptr %32, align 4
  call void @clk_disable(ptr noundef %63) #7
  call void @clk_unprepare(ptr noundef %63) #7
  br label %64

64:                                               ; preds = %62, %43, %34, %22, %14
  %65 = phi i32 [ %23, %22 ], [ %35, %34 ], [ %44, %43 ], [ %60, %62 ], [ -12, %14 ]
  call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %10) #7
  br label %66

66:                                               ; preds = %64, %45, %12, %1
  %67 = phi i32 [ %13, %12 ], [ %65, %64 ], [ %6, %1 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #7
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_ethqos_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @stmmac_pltfr_remove(ptr noundef %0) #7
  %11 = getelementptr inbounds %struct.qcom_ethqos, ptr %7, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #7
  tail call void @clk_unprepare(ptr noundef %12) #7
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i32 [ %10, %9 ], [ -19, %1 ]
  ret i32 %14
}

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ethqos_clks_config(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.qcom_ethqos, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  br i1 %1, label %5, label %16

5:                                                ; preds = %2
  %6 = tail call i32 @clk_prepare(ptr noundef %4) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call i32 @clk_enable(ptr noundef %4) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %4) #7
  br label %12

12:                                               ; preds = %11, %5
  %13 = phi i32 [ %9, %11 ], [ %6, %5 ]
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.4) #8
  br label %17

16:                                               ; preds = %2
  tail call void @clk_disable(ptr noundef %4) #7
  tail call void @clk_unprepare(ptr noundef %4) #7
  br label %17

17:                                               ; preds = %16, %12, %8
  %18 = phi i32 [ %13, %12 ], [ 0, %16 ], [ 0, %8 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ethqos_fix_mac_speed(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.qcom_ethqos, ptr %0, i32 0, i32 4
  store i32 %1, ptr %4, align 4
  switch i32 %1, label %5 [
    i32 1000, label %8
    i32 100, label %10
    i32 10, label %12
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.qcom_ethqos, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  br label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.qcom_ethqos, ptr %0, i32 0, i32 2
  store i32 250000000, ptr %9, align 4
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.qcom_ethqos, ptr %0, i32 0, i32 2
  store i32 50000000, ptr %11, align 4
  br label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.qcom_ethqos, ptr %0, i32 0, i32 2
  store i32 5000000, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %10, %8, %5
  %15 = phi i32 [ %7, %5 ], [ 5000000, %12 ], [ 50000000, %10 ], [ 250000000, %8 ]
  %16 = getelementptr inbounds %struct.qcom_ethqos, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef %15) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store volatile i32 0, ptr %3, align 4
  %19 = getelementptr inbounds %struct.qcom_ethqos, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.qcom_ethqos, ptr %0, i32 0, i32 5
  %24 = getelementptr inbounds %struct.qcom_ethqos, ptr %0, i32 0, i32 1
  br label %25

25:                                               ; preds = %25, %22
  %26 = phi i32 [ 0, %22 ], [ %34, %25 ]
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr %struct.ethqos_emac_por, ptr %27, i32 %26
  %29 = getelementptr %struct.ethqos_emac_por, ptr %27, i32 %26, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %28, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %32 = load ptr, ptr %24, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %30) #7, !srcloc !12
  %34 = add nuw i32 %26, 1
  %35 = load i32, ptr %19, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %25, label %37

37:                                               ; preds = %25, %14
  %38 = getelementptr inbounds %struct.qcom_ethqos, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %41 = or i32 %40, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %42 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #7, !srcloc !12
  %43 = load ptr, ptr %38, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %46 = or i32 %45, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %47 = load ptr, ptr %38, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #7, !srcloc !12
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr i8, ptr %49, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %52 = or i32 %51, 536870912
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %53 = load ptr, ptr %38, align 4
  %54 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #7, !srcloc !12
  %55 = load ptr, ptr %38, align 4
  %56 = getelementptr i8, ptr %55, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %58 = and i32 %57, -1073741825
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %59 = load ptr, ptr %38, align 4
  %60 = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #7, !srcloc !12
  %61 = load ptr, ptr %38, align 4
  %62 = getelementptr i8, ptr %61, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %64 = and i32 %63, -536870913
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %65 = load ptr, ptr %38, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #7, !srcloc !12
  %67 = load i32, ptr %4, align 4
  switch i32 %67, label %68 [
    i32 100, label %211
    i32 10, label %211
  ]

68:                                               ; preds = %37
  %69 = load ptr, ptr %38, align 4
  %70 = getelementptr i8, ptr %69, i32 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %72 = or i32 %71, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %73 = load ptr, ptr %38, align 4
  %74 = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #7, !srcloc !12
  %75 = load ptr, ptr %38, align 4
  %76 = getelementptr i8, ptr %75, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %78 = or i32 %77, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %79 = load ptr, ptr %38, align 4
  %80 = getelementptr i8, ptr %79, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #7, !srcloc !12
  %81 = load ptr, ptr %38, align 4
  %82 = getelementptr i8, ptr %81, i32 24
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %84 = and i32 %83, -117440513
  %85 = or i32 %84, 67108864
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %86 = load ptr, ptr %38, align 4
  %87 = getelementptr i8, ptr %86, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #7, !srcloc !12
  br label %88

88:                                               ; preds = %97, %68
  %89 = phi i32 [ 1000, %68 ], [ %98, %97 ]
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748000) #7
  %91 = load ptr, ptr %38, align 4
  %92 = getelementptr i8, ptr %91, i32 20
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  store volatile i32 %93, ptr %3, align 4
  %94 = load volatile i32, ptr %3, align 4
  %95 = and i32 %94, 128
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = add nsw i32 %89, -1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %88

100:                                              ; preds = %97
  %101 = load ptr, ptr %0, align 4
  %102 = getelementptr inbounds %struct.platform_device, ptr %101, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.5) #8
  br label %103

103:                                              ; preds = %100, %88
  %104 = load i32, ptr %4, align 4
  %105 = icmp eq i32 %104, 1000
  br i1 %105, label %106, label %211

106:                                              ; preds = %103
  %107 = load ptr, ptr %38, align 4
  %108 = getelementptr i8, ptr %107, i32 4
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %110 = or i32 %109, 131072
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %111 = load ptr, ptr %38, align 4
  %112 = getelementptr i8, ptr %111, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #7, !srcloc !12
  %113 = load ptr, ptr %38, align 4
  %114 = getelementptr i8, ptr %113, i32 4
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %116 = or i32 %115, 524288
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %117 = load ptr, ptr %38, align 4
  %118 = getelementptr i8, ptr %117, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #7, !srcloc !12
  %119 = load ptr, ptr %38, align 4
  %120 = getelementptr i8, ptr %119, i32 4
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %122 = and i32 %121, -262145
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %123 = load ptr, ptr %38, align 4
  %124 = getelementptr i8, ptr %123, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %122) #7, !srcloc !12
  %125 = load ptr, ptr %38, align 4
  %126 = getelementptr i8, ptr %125, i32 4
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %128 = or i32 %127, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %129 = load ptr, ptr %38, align 4
  %130 = getelementptr i8, ptr %129, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #7, !srcloc !12
  %131 = load ptr, ptr %38, align 4
  %132 = getelementptr i8, ptr %131, i32 4
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %134 = and i32 %133, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %135 = load ptr, ptr %38, align 4
  %136 = getelementptr i8, ptr %135, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %134) #7, !srcloc !12
  %137 = load ptr, ptr %38, align 4
  %138 = getelementptr i8, ptr %137, i32 4
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %140 = and i32 %139, -13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %141 = load ptr, ptr %38, align 4
  %142 = getelementptr i8, ptr %141, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %140) #7, !srcloc !12
  br label %143

143:                                              ; preds = %150, %106
  %144 = phi i32 [ 1000, %106 ], [ %152, %150 ]
  %145 = load ptr, ptr %38, align 4
  %146 = getelementptr i8, ptr %145, i32 4
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %148 = and i32 %147, 262144
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %143
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748000) #7
  %152 = add nsw i32 %144, -1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %143

154:                                              ; preds = %150
  %155 = load ptr, ptr %0, align 4
  %156 = getelementptr inbounds %struct.platform_device, ptr %155, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.6) #8
  br label %157

157:                                              ; preds = %154, %143
  %158 = load ptr, ptr %38, align 4
  %159 = getelementptr i8, ptr %158, i32 4
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %159) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %161 = or i32 %160, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %162 = load ptr, ptr %38, align 4
  %163 = getelementptr i8, ptr %162, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %161) #7, !srcloc !12
  br label %164

164:                                              ; preds = %171, %157
  %165 = phi i32 [ 1000, %157 ], [ %173, %171 ]
  %166 = load ptr, ptr %38, align 4
  %167 = getelementptr i8, ptr %166, i32 4
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %169 = and i32 %168, 262144
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %164
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %172(i32 noundef 214748000) #7
  %173 = add nsw i32 %165, -1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %164

175:                                              ; preds = %171
  %176 = load ptr, ptr %0, align 4
  %177 = getelementptr inbounds %struct.platform_device, ptr %176, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.7) #8
  br label %178

178:                                              ; preds = %175, %164
  %179 = load ptr, ptr %38, align 4
  %180 = getelementptr i8, ptr %179, i32 16
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %180) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %182 = or i32 %181, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %183 = load ptr, ptr %38, align 4
  %184 = getelementptr i8, ptr %183, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %182) #7, !srcloc !12
  %185 = load ptr, ptr %38, align 4
  %186 = getelementptr i8, ptr %185, i32 16
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %186) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %188 = and i32 %187, -2097153
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %189 = load ptr, ptr %38, align 4
  %190 = getelementptr i8, ptr %189, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #7, !srcloc !12
  %191 = load ptr, ptr %38, align 4
  %192 = getelementptr i8, ptr %191, i32 16
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %194 = and i32 %193, -261121
  %195 = or i32 %194, 26624
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %196 = load ptr, ptr %38, align 4
  %197 = getelementptr i8, ptr %196, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %197, i32 %195) #7, !srcloc !12
  %198 = load ptr, ptr %38, align 4
  %199 = getelementptr i8, ptr %198, i32 16
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %201 = and i32 %200, -13
  %202 = or i32 %201, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %203 = load ptr, ptr %38, align 4
  %204 = getelementptr i8, ptr %203, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #7, !srcloc !12
  %205 = load ptr, ptr %38, align 4
  %206 = getelementptr i8, ptr %205, i32 16
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %206) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %208 = or i32 %207, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %209 = load ptr, ptr %38, align 4
  %210 = getelementptr i8, ptr %209, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %208) #7, !srcloc !12
  br label %211

211:                                              ; preds = %178, %103, %37, %37
  %212 = load ptr, ptr %38, align 4
  %213 = getelementptr i8, ptr %212, i32 28
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %215 = and i32 %214, -8193
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %216 = load ptr, ptr %38, align 4
  %217 = getelementptr i8, ptr %216, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %215) #7, !srcloc !12
  %218 = load ptr, ptr %38, align 4
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %218) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %220 = and i32 %219, -49
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %221 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 %220) #7, !srcloc !12
  %222 = load i32, ptr %4, align 4
  switch i32 %222, label %419 [
    i32 1000, label %223
    i32 100, label %281
    i32 10, label %350
  ]

223:                                              ; preds = %211
  %224 = load ptr, ptr %38, align 4
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %226 = or i32 %225, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %227 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %226) #7, !srcloc !12
  %228 = load ptr, ptr %38, align 4
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %228) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %230 = and i32 %229, -9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %231 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %230) #7, !srcloc !12
  %232 = load ptr, ptr %38, align 4
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %232) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %234 = or i32 %233, 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %235 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %234) #7, !srcloc !12
  %236 = load ptr, ptr %38, align 4
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %236) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %238 = or i32 %237, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %239 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %238) #7, !srcloc !12
  %240 = load ptr, ptr %38, align 4
  %241 = getelementptr i8, ptr %240, i32 28
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %241) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %243 = and i32 %242, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %244 = load ptr, ptr %38, align 4
  %245 = getelementptr i8, ptr %244, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %245, i32 %243) #7, !srcloc !12
  %246 = load ptr, ptr %38, align 4
  %247 = getelementptr i8, ptr %246, i32 28
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %247) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %249 = or i32 %248, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %250 = load ptr, ptr %38, align 4
  %251 = getelementptr i8, ptr %250, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %249) #7, !srcloc !12
  %252 = load ptr, ptr %38, align 4
  %253 = getelementptr i8, ptr %252, i32 28
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %255 = and i32 %254, 131071
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %256 = load ptr, ptr %38, align 4
  %257 = getelementptr i8, ptr %256, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %257, i32 %255) #7, !srcloc !12
  %258 = load ptr, ptr %38, align 4
  %259 = getelementptr i8, ptr %258, i32 28
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %259) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %261 = or i32 %260, 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %262 = load ptr, ptr %38, align 4
  %263 = getelementptr i8, ptr %262, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 %261) #7, !srcloc !12
  %264 = load ptr, ptr %38, align 4
  %265 = getelementptr i8, ptr %264, i32 12
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %265) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %267 = and i32 %266, -512
  %268 = or i32 %267, 57
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %269 = load ptr, ptr %38, align 4
  %270 = getelementptr i8, ptr %269, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 %268) #7, !srcloc !12
  %271 = load ptr, ptr %38, align 4
  %272 = getelementptr i8, ptr %271, i32 12
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %272) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %274 = or i32 %273, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %275 = load ptr, ptr %38, align 4
  %276 = getelementptr i8, ptr %275, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %276, i32 %274) #7, !srcloc !12
  %277 = load ptr, ptr %38, align 4
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %277) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %279 = or i32 %278, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %280 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %279) #7, !srcloc !12
  br label %422

281:                                              ; preds = %211
  %282 = load ptr, ptr %38, align 4
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %282) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %284 = or i32 %283, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %285 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %285, i32 %284) #7, !srcloc !12
  %286 = load ptr, ptr %38, align 4
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %286) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %288 = or i32 %287, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %289 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %289, i32 %288) #7, !srcloc !12
  %290 = load ptr, ptr %38, align 4
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %290) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %292 = and i32 %291, -8388609
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %293 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %293, i32 %292) #7, !srcloc !12
  %294 = load ptr, ptr %38, align 4
  %295 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %294) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %296 = and i32 %295, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %297 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 %296) #7, !srcloc !12
  %298 = load ptr, ptr %38, align 4
  %299 = getelementptr i8, ptr %298, i32 28
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %299) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %301 = and i32 %300, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %302 = load ptr, ptr %38, align 4
  %303 = getelementptr i8, ptr %302, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %303, i32 %301) #7, !srcloc !12
  %304 = load ptr, ptr %38, align 4
  %305 = getelementptr i8, ptr %304, i32 28
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %305) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %307 = or i32 %306, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %308 = load ptr, ptr %38, align 4
  %309 = getelementptr i8, ptr %308, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %309, i32 %307) #7, !srcloc !12
  %310 = load ptr, ptr %38, align 4
  %311 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %310) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %312 = and i32 %311, -193
  %313 = or i32 %312, 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %314 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %314, i32 %313) #7, !srcloc !12
  %315 = load ptr, ptr %38, align 4
  %316 = getelementptr i8, ptr %315, i32 28
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %316) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %318 = and i32 %317, 131071
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %319 = load ptr, ptr %38, align 4
  %320 = getelementptr i8, ptr %319, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %320, i32 %318) #7, !srcloc !12
  %321 = load ptr, ptr %38, align 4
  %322 = getelementptr i8, ptr %321, i32 28
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %322) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %324 = and i32 %323, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %325 = load ptr, ptr %38, align 4
  %326 = getelementptr i8, ptr %325, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %326, i32 %324) #7, !srcloc !12
  %327 = load ptr, ptr %38, align 4
  %328 = getelementptr i8, ptr %327, i32 12
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %328) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %330 = and i32 %329, -939524097
  %331 = or i32 %330, 671088640
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %332 = load ptr, ptr %38, align 4
  %333 = getelementptr i8, ptr %332, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %333, i32 %331) #7, !srcloc !12
  %334 = load ptr, ptr %38, align 4
  %335 = getelementptr i8, ptr %334, i32 12
  %336 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %335) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %337 = or i32 %336, 132120576
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %338 = load ptr, ptr %38, align 4
  %339 = getelementptr i8, ptr %338, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %339, i32 %337) #7, !srcloc !12
  %340 = load ptr, ptr %38, align 4
  %341 = getelementptr i8, ptr %340, i32 12
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %341) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %343 = or i32 %342, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %344 = load ptr, ptr %38, align 4
  %345 = getelementptr i8, ptr %344, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %345, i32 %343) #7, !srcloc !12
  %346 = load ptr, ptr %38, align 4
  %347 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %346) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %348 = or i32 %347, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %349 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %349, i32 %348) #7, !srcloc !12
  br label %422

350:                                              ; preds = %211
  %351 = load ptr, ptr %38, align 4
  %352 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %351) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %353 = or i32 %352, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %354 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %354, i32 %353) #7, !srcloc !12
  %355 = load ptr, ptr %38, align 4
  %356 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %355) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %357 = or i32 %356, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %358 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %358, i32 %357) #7, !srcloc !12
  %359 = load ptr, ptr %38, align 4
  %360 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %359) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %361 = and i32 %360, -8388609
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %362 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %362, i32 %361) #7, !srcloc !12
  %363 = load ptr, ptr %38, align 4
  %364 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %363) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %365 = and i32 %364, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %366 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %366, i32 %365) #7, !srcloc !12
  %367 = load ptr, ptr %38, align 4
  %368 = getelementptr i8, ptr %367, i32 28
  %369 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %368) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %370 = and i32 %369, -65
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %371 = load ptr, ptr %38, align 4
  %372 = getelementptr i8, ptr %371, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %372, i32 %370) #7, !srcloc !12
  %373 = load ptr, ptr %38, align 4
  %374 = getelementptr i8, ptr %373, i32 28
  %375 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %374) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %376 = and i32 %375, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %377 = load ptr, ptr %38, align 4
  %378 = getelementptr i8, ptr %377, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %378, i32 %376) #7, !srcloc !12
  %379 = load ptr, ptr %38, align 4
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %379) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %381 = and i32 %380, -130817
  %382 = or i32 %381, 4864
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %383 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %383, i32 %382) #7, !srcloc !12
  %384 = load ptr, ptr %38, align 4
  %385 = getelementptr i8, ptr %384, i32 28
  %386 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %385) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %387 = and i32 %386, 131071
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %388 = load ptr, ptr %38, align 4
  %389 = getelementptr i8, ptr %388, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %389, i32 %387) #7, !srcloc !12
  %390 = load ptr, ptr %38, align 4
  %391 = getelementptr i8, ptr %390, i32 28
  %392 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %391) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %393 = and i32 %392, -129
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %394 = load ptr, ptr %38, align 4
  %395 = getelementptr i8, ptr %394, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %395, i32 %393) #7, !srcloc !12
  %396 = load ptr, ptr %38, align 4
  %397 = getelementptr i8, ptr %396, i32 12
  %398 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %397) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %399 = and i32 %398, -939524097
  %400 = or i32 %399, 671088640
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %401 = load ptr, ptr %38, align 4
  %402 = getelementptr i8, ptr %401, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %402, i32 %400) #7, !srcloc !12
  %403 = load ptr, ptr %38, align 4
  %404 = getelementptr i8, ptr %403, i32 12
  %405 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %404) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %406 = or i32 %405, 132120576
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %407 = load ptr, ptr %38, align 4
  %408 = getelementptr i8, ptr %407, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %408, i32 %406) #7, !srcloc !12
  %409 = load ptr, ptr %38, align 4
  %410 = getelementptr i8, ptr %409, i32 12
  %411 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %410) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %412 = or i32 %411, 1073741824
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %413 = load ptr, ptr %38, align 4
  %414 = getelementptr i8, ptr %413, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %414, i32 %412) #7, !srcloc !12
  %415 = load ptr, ptr %38, align 4
  %416 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %415) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %417 = or i32 %416, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %418 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %418, i32 %417) #7, !srcloc !12
  br label %422

419:                                              ; preds = %211
  %420 = load ptr, ptr %0, align 4
  %421 = getelementptr inbounds %struct.platform_device, ptr %420, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %421, ptr noundef nonnull @.str.8, i32 noundef %222) #8
  br label %422

422:                                              ; preds = %419, %350, %281, %223
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @rgmii_dump(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_pltfr_remove(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 5568699}
!10 = !{i64 2156120080}
!11 = !{i64 2156120277}
!12 = !{i64 5568281}
