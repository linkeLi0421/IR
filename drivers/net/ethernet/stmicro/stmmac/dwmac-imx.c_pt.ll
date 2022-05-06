; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-imx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx_dwmac_ops = type { i32, i8, ptr }
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
%struct.imx_priv_data = type { ptr, ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_imx__334_315_imx_dwmac_driver_init6 = internal global ptr @imx_dwmac_driver_init, section ".initcall6.init", align 4
@imx_dwmac_driver = internal global %struct.platform_driver { ptr @imx_dwmac_probe, ptr @stmmac_pltfr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_imx_dwmac_driver_exit = internal global ptr @imx_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author335 = internal constant [21 x i8] c"dwmac_imx.author=NXP\00", section ".modinfo", align 1
@__UNIQUE_ID_description336 = internal constant [57 x i8] c"dwmac_imx.description=NXP imx8 DWMAC Specific Glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [61 x i8] c"dwmac_imx.file=drivers/net/ethernet/stmicro/stmmac/dwmac-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [25 x i8] c"dwmac_imx.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"imx-dwmac\00", align 1
@imx_dwmac_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,imx8mp-dwmac-eqos\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8mp_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,imx8dxl-dwmac-eqos\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8dxl_dwmac_data }, %struct.of_device_id zeroinitializer], align 4
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get match data\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to parse OF data\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"snps,rmii_refclk_ext\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to get tx clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"fsl,imx8dxl\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"failed to get mem clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"fsl,imx8mp\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"intf_mode\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Can't get intf mode reg offset (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"mem clock enable failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"tx clock enable failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"invalid speed %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"failed to set tx rate %lu\0A\00", align 1
@imx8mp_dwmac_data = internal global %struct.imx_dwmac_ops { i32 34, i8 0, ptr @imx8mp_set_intf_mode }, align 4
@imx8dxl_dwmac_data = internal global %struct.imx_dwmac_ops { i32 32, i8 1, ptr @imx8dxl_set_intf_mode }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__exitcall_imx_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_imx__334_315_imx_dwmac_driver_init6, ptr @imx_dwmac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx_dwmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_dwmac_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx_dwmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_dwmac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_dwmac_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.stmmac_resources, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %2, i8 0, i32 96, i1 false), !annotation !8
  %3 = call i32 @stmmac_get_platform_resources(ptr noundef %0, ptr noundef nonnull %2) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %92

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 32, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %92, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 1
  %11 = call ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %10) #7
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = ptrtoint ptr %11 to i32
  br label %92

15:                                               ; preds = %9
  %16 = call ptr @of_device_get_match_data(ptr noundef %6) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #8
  br label %90

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.imx_priv_data, ptr %7, i32 0, i32 6
  store ptr %16, ptr %20, align 4
  store ptr %6, ptr %7, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = call ptr @of_get_property(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.imx_priv_data, ptr %7, i32 0, i32 5
  store i8 1, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.4) #7
  %29 = getelementptr inbounds %struct.imx_priv_data, ptr %7, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %52, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.imx_priv_data, ptr %7, i32 0, i32 2
  store ptr null, ptr %32, align 4
  %33 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.6) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.7) #7
  store ptr %36, ptr %32, align 4
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %52, label %38

38:                                               ; preds = %35, %31
  %39 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %38
  %42 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %22, ptr noundef nonnull @.str.10) #7
  %43 = getelementptr inbounds %struct.imx_priv_data, ptr %7, i32 0, i32 3
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.imx_priv_data, ptr %7, i32 0, i32 4
  %47 = call i32 @of_property_read_u32_index(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef %46) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load ptr, ptr %20, align 4
  br label %61

51:                                               ; preds = %45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef %47) #8
  br label %59

52:                                               ; preds = %35, %27
  %53 = phi ptr [ @.str.5, %27 ], [ @.str.8, %35 ]
  %54 = phi ptr [ %28, %27 ], [ %36, %35 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %53) #8
  br label %55

55:                                               ; preds = %52, %41
  %56 = phi ptr [ %42, %41 ], [ %54, %52 ]
  %57 = ptrtoint ptr %56 to i32
  %58 = icmp eq ptr %56, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %47, %51 ], [ %57, %55 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #8
  br label %90

61:                                               ; preds = %55, %49, %38
  %62 = phi ptr [ %50, %49 ], [ %16, %38 ], [ %16, %55 ]
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 28
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 40
  store ptr @imx_dwmac_init, ptr %65, align 4
  %66 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 41
  store ptr @imx_dwmac_exit, ptr %66, align 4
  %67 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 43
  store ptr @imx_dwmac_clks_config, ptr %67, align 4
  %68 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 35
  store ptr @imx_dwmac_fix_speed, ptr %68, align 4
  %69 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 46
  store ptr %7, ptr %69, align 4
  %70 = getelementptr inbounds %struct.imx_priv_data, ptr %7, i32 0, i32 7
  store ptr %11, ptr %70, align 4
  %71 = call i32 @imx_dwmac_clks_config(ptr noundef nonnull %7, i1 noundef zeroext true)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %61
  %74 = load ptr, ptr %20, align 4
  %75 = getelementptr inbounds %struct.imx_dwmac_ops, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %70, align 4
  %80 = call i32 %76(ptr noundef %79) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %73
  %83 = call i32 @stmmac_dvr_probe(ptr noundef %6, ptr noundef %11, ptr noundef nonnull %2) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %82, %78
  %86 = phi i32 [ %80, %78 ], [ %83, %82 ]
  %87 = load ptr, ptr %29, align 4
  call void @clk_disable(ptr noundef %87) #7
  call void @clk_unprepare(ptr noundef %87) #7
  %88 = getelementptr inbounds %struct.imx_priv_data, ptr %7, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  call void @clk_disable(ptr noundef %89) #7
  call void @clk_unprepare(ptr noundef %89) #7
  br label %90

90:                                               ; preds = %85, %61, %59, %18
  %91 = phi i32 [ %60, %59 ], [ %71, %61 ], [ %86, %85 ], [ -22, %18 ]
  call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %11) #7
  br label %92

92:                                               ; preds = %90, %82, %13, %5, %1
  %93 = phi i32 [ %14, %13 ], [ %91, %90 ], [ %3, %1 ], [ -12, %5 ], [ 0, %82 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #7
  ret i32 %93
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_dwmac_init(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.imx_priv_data, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.imx_dwmac_ops, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.imx_priv_data, ptr %1, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %6(ptr noundef %10) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i32 [ 0, %13 ], [ %11, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @imx_dwmac_exit(ptr nocapture noundef %0, ptr nocapture noundef %1) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_dwmac_clks_config(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  br i1 %1, label %3, label %28

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.imx_priv_data, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = tail call i32 @clk_enable(ptr noundef %5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %12

12:                                               ; preds = %11, %3
  %13 = phi i32 [ %9, %11 ], [ %6, %3 ]
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.12) #8
  br label %33

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.imx_priv_data, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #7
  br label %24

24:                                               ; preds = %23, %15
  %25 = phi i32 [ %21, %23 ], [ %18, %15 ]
  %26 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.13) #8
  %27 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %27) #7
  tail call void @clk_unprepare(ptr noundef %27) #7
  br label %33

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.imx_priv_data, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #7
  tail call void @clk_unprepare(ptr noundef %30) #7
  %31 = getelementptr inbounds %struct.imx_priv_data, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %32) #7
  tail call void @clk_unprepare(ptr noundef %32) #7
  br label %33

33:                                               ; preds = %28, %24, %20, %12
  %34 = phi i32 [ %13, %12 ], [ %25, %24 ], [ 0, %28 ], [ 0, %20 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_dwmac_fix_speed(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.imx_priv_data, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.imx_dwmac_ops, ptr %4, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.imx_priv_data, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %13 [
    i32 7, label %26
    i32 2, label %26
  ]

13:                                               ; preds = %8
  switch i32 %1, label %16 [
    i32 1000, label %18
    i32 100, label %14
    i32 10, label %15
  ]

14:                                               ; preds = %13
  br label %18

15:                                               ; preds = %13
  br label %18

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.14, i32 noundef %1) #8
  br label %26

18:                                               ; preds = %15, %14, %13
  %19 = phi i32 [ 2500000, %15 ], [ 25000000, %14 ], [ 125000000, %13 ]
  %20 = getelementptr inbounds %struct.imx_priv_data, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_set_rate(ptr noundef %21, i32 noundef %19) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.15, i32 noundef %19) #8
  br label %26

26:                                               ; preds = %24, %18, %16, %8, %8, %2
  ret void
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
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx8mp_set_intf_mode(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %0, i32 0, i32 46
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %19 [
    i32 2, label %12
    i32 7, label %6
    i32 9, label %11
    i32 10, label %11
    i32 11, label %11
    i32 12, label %11
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.imx_priv_data, ptr %3, i32 0, i32 5
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 1835008, i32 786432
  br label %12

11:                                               ; preds = %1, %1, %1, %1
  br label %12

12:                                               ; preds = %11, %6, %1
  %13 = phi i32 [ 2686976, %11 ], [ %10, %6 ], [ 524288, %1 ]
  %14 = getelementptr inbounds %struct.imx_priv_data, ptr %3, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.imx_priv_data, ptr %3, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef 4128768, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %19

19:                                               ; preds = %12, %1
  %20 = phi i32 [ %18, %12 ], [ -22, %1 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @imx8dxl_set_intf_mode(ptr nocapture noundef readnone %0) #6 {
  ret i32 0
}

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
!9 = !{i8 0, i8 2}
