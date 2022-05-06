; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-sti.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sti_dwmac_of_data = type { ptr }
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
%struct.sti_dwmac = type { i32, i8, i32, ptr, i32, i32, ptr, i8, i32, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_sti__334_432_sti_dwmac_driver_init6 = internal global ptr @sti_dwmac_driver_init, section ".initcall6.init", align 4
@sti_dwmac_driver = internal global %struct.platform_driver { ptr @sti_dwmac_probe, ptr @sti_dwmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sti_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sti_dwmac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sti_dwmac_driver_exit = internal global ptr @sti_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author335 = internal constant [66 x i8] c"dwmac_sti.author=Srinivas Kandagatla <srinivas.kandagatla@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description336 = internal constant [67 x i8] c"dwmac_sti.description=STMicroelectronics DWMAC Specific Glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [61 x i8] c"dwmac_sti.file=drivers/net/ethernet/stmicro/stmmac/dwmac-sti\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [22 x i8] c"dwmac_sti.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sti-dwmac\00", align 1
@sti_dwmac_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih415-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih4xx_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih416-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih4xx_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stid127-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stid127_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih4xx_dwmac_data }, %struct.of_device_id zeroinitializer], align 4
@sti_dwmac_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sti_dwmac_suspend, ptr @sti_dwmac_resume, ptr @sti_dwmac_suspend, ptr @sti_dwmac_resume, ptr @sti_dwmac_suspend, ptr @sti_dwmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No OF match data provided\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to parse OF data\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"sti-clkconf\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"st,syscon\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Can't get sysconfig ctrl offset (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Can't get phy-mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"st,gmac_en\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"st,ext-phyclk\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"st,tx-retime-src\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Use internal clock source\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"clk_125\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"txclk\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"sti-ethclk\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"No phy clock provided...\0A\00", align 1
@phy_intf_sels = internal unnamed_addr constant [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 0, i32 16, i32 0, i32 4, i32 4], align 4
@stih4xx_dwmac_data = internal constant %struct.sti_dwmac_of_data { ptr @stih4xx_fix_retime_src }, align 4
@stid127_dwmac_data = internal constant %struct.sti_dwmac_of_data { ptr @stid127_fix_retime_src }, align 4
@stih4xx_tx_retime_val = internal unnamed_addr constant [5 x i32] [i32 0, i32 64, i32 0, i32 256, i32 384], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__exitcall_sti_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_sti__334_432_sti_dwmac_driver_init6, ptr @sti_dwmac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sti_dwmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sti_dwmac_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sti_dwmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sti_dwmac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_dwmac_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.stmmac_resources, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %3, i8 0, i32 96, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %4) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  br label %95

8:                                                ; preds = %1
  %9 = call i32 @stmmac_get_platform_resources(ptr noundef %0, ptr noundef nonnull %3) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %95

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.stmmac_resources, ptr %3, i32 0, i32 1
  %13 = call ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %12) #7
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = ptrtoint ptr %13 to i32
  br label %95

17:                                               ; preds = %11
  %18 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 40, i32 noundef 3520) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %93, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sti_dwmac, ptr %18, i32 0, i32 5
  store i32 -6, ptr %23, align 4
  %24 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.3) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %24, align 4
  store i32 %27, ptr %23, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %22, ptr noundef nonnull @.str.4) #7
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %71, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sti_dwmac, ptr %18, i32 0, i32 4
  %33 = call i32 @of_property_read_u32_index(ptr noundef %22, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef %32) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %33) #8
  br label %73

36:                                               ; preds = %31
  %37 = call i32 @of_get_phy_mode(ptr noundef %22, ptr noundef nonnull %18) #7
  switch i32 %37, label %38 [
    i32 -19, label %39
    i32 0, label %39
  ]

38:                                               ; preds = %36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #8
  br label %73

39:                                               ; preds = %36, %36
  %40 = getelementptr inbounds %struct.sti_dwmac, ptr %18, i32 0, i32 6
  store ptr %29, ptr %40, align 4
  %41 = call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %42 = icmp ne ptr %41, null
  %43 = getelementptr inbounds %struct.sti_dwmac, ptr %18, i32 0, i32 7
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 4
  %45 = call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.8, ptr noundef null) #7
  %46 = icmp ne ptr %45, null
  %47 = getelementptr inbounds %struct.sti_dwmac, ptr %18, i32 0, i32 1
  %48 = zext i1 %46 to i8
  store i8 %48, ptr %47, align 4
  %49 = getelementptr inbounds %struct.sti_dwmac, ptr %18, i32 0, i32 2
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.sti_dwmac, ptr %18, i32 0, i32 8
  store i32 100, ptr %50, align 4
  %51 = load i32, ptr %18, align 4
  switch i32 %51, label %66 [
    i32 9, label %52
    i32 10, label %52
    i32 11, label %52
    i32 12, label %52
    i32 3, label %52
  ]

52:                                               ; preds = %39, %39, %39, %39, %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  store i32 4, ptr %49, align 4
  %53 = call i32 @of_property_read_string(ptr noundef %22, ptr noundef nonnull @.str.9, ptr noundef nonnull %2) #7
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.10) #8
  br label %65

56:                                               ; preds = %52
  %57 = load ptr, ptr %2, align 4
  %58 = call i32 @strcasecmp(ptr noundef %57, ptr noundef nonnull @.str.11) #7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 2, ptr %49, align 4
  br label %65

61:                                               ; preds = %56
  %62 = call i32 @strcasecmp(ptr noundef %57, ptr noundef nonnull @.str.12) #7
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 1, ptr %49, align 4
  br label %65

65:                                               ; preds = %64, %61, %60, %55
  store i32 1000, ptr %50, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %66

66:                                               ; preds = %65, %39
  %67 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.13) #7
  %68 = getelementptr inbounds %struct.sti_dwmac, ptr %18, i32 0, i32 3
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.14) #8
  store ptr null, ptr %68, align 4
  br label %75

71:                                               ; preds = %28
  %72 = ptrtoint ptr %29 to i32
  br label %73

73:                                               ; preds = %71, %38, %35
  %74 = phi i32 [ %72, %71 ], [ %37, %38 ], [ %33, %35 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #8
  br label %93

75:                                               ; preds = %70, %66
  %76 = load ptr, ptr %5, align 4
  %77 = getelementptr inbounds %struct.sti_dwmac, ptr %18, i32 0, i32 9
  store ptr %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %13, i32 0, i32 46
  store ptr %18, ptr %78, align 4
  %79 = load ptr, ptr %5, align 4
  %80 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %13, i32 0, i32 35
  store ptr %79, ptr %80, align 4
  %81 = load ptr, ptr %68, align 4
  %82 = call i32 @clk_prepare(ptr noundef %81) #7
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = call i32 @clk_enable(ptr noundef %81) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void @clk_unprepare(ptr noundef %81) #7
  br label %93

88:                                               ; preds = %84
  call fastcc void @sti_dwmac_set_mode(ptr noundef nonnull %18)
  %89 = call i32 @stmmac_dvr_probe(ptr noundef %4, ptr noundef %13, ptr noundef nonnull %3) #7
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %68, align 4
  call void @clk_disable(ptr noundef %92) #7
  call void @clk_unprepare(ptr noundef %92) #7
  br label %93

93:                                               ; preds = %91, %87, %75, %73, %17
  %94 = phi i32 [ %74, %73 ], [ %89, %91 ], [ -12, %17 ], [ %85, %87 ], [ %82, %75 ]
  call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %13) #7
  br label %95

95:                                               ; preds = %93, %88, %15, %8, %7
  %96 = phi i32 [ %16, %15 ], [ %94, %93 ], [ -22, %7 ], [ %9, %8 ], [ 0, %88 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #7
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_dwmac_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 12096
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %6, i32 0, i32 46
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @stmmac_dvr_remove(ptr noundef %2) #7
  %10 = getelementptr inbounds %struct.sti_dwmac, ptr %8, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sti_dwmac_set_mode(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 7
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %6, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr [11 x i32], ptr @phy_intf_sels, i32 0, i32 %4
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %6, i32 noundef 28, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %16 = icmp eq i32 %4, 6
  %17 = select i1 %16, i32 0, i32 32
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %6, i32 noundef 32, i32 noundef %17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %19 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  tail call void %20(ptr noundef %0, i32 noundef %22) #7
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
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stih4xx_fix_retime_src(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  switch i32 %7, label %17 [
    i32 2, label %28
    i32 7, label %8
    i32 9, label %14
    i32 10, label %14
    i32 11, label %14
    i32 12, label %14
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 4, i32 3
  %13 = select i1 %11, i32 50000000, i32 0
  br label %18

14:                                               ; preds = %2, %2, %2, %2
  switch i32 %1, label %28 [
    i32 1000, label %18
    i32 100, label %15
    i32 10, label %16
  ]

15:                                               ; preds = %14
  br label %18

16:                                               ; preds = %14
  br label %18

17:                                               ; preds = %2
  br label %28

18:                                               ; preds = %16, %15, %14, %8
  %19 = phi i32 [ 4, %15 ], [ 4, %16 ], [ %12, %8 ], [ %4, %14 ]
  %20 = phi i1 [ true, %15 ], [ true, %16 ], [ %11, %8 ], [ true, %14 ]
  %21 = phi i32 [ 25000000, %15 ], [ 2500000, %16 ], [ %13, %8 ], [ 125000000, %14 ]
  %22 = icmp eq i32 %19, 4
  %23 = and i1 %22, %20
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @clk_set_rate(ptr noundef %26, i32 noundef %21) #7
  br label %28

28:                                               ; preds = %24, %18, %17, %14, %2
  %29 = phi i32 [ 4, %24 ], [ %19, %18 ], [ %4, %17 ], [ 1, %2 ], [ 4, %14 ]
  %30 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr [5 x i32], ptr @stih4xx_tx_retime_val, i32 0, i32 %29
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %6, i32 noundef 448, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stid127_fix_retime_src(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  switch i32 %5, label %13 [
    i32 2, label %20
    i32 7, label %6
    i32 9, label %10
    i32 10, label %10
    i32 11, label %10
    i32 12, label %10
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %20

10:                                               ; preds = %2, %2, %2, %2
  switch i32 %1, label %20 [
    i32 1000, label %14
    i32 100, label %11
    i32 10, label %12
  ]

11:                                               ; preds = %10
  br label %14

12:                                               ; preds = %10
  br label %14

13:                                               ; preds = %2
  br label %20

14:                                               ; preds = %12, %11, %10, %6
  %15 = phi i32 [ 2500000, %12 ], [ 25000000, %11 ], [ 125000000, %10 ], [ 50000000, %6 ]
  %16 = phi i32 [ 64, %12 ], [ 64, %11 ], [ 64, %10 ], [ 128, %6 ]
  %17 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_set_rate(ptr noundef %18, i32 noundef %15) #7
  br label %20

20:                                               ; preds = %14, %13, %10, %6, %2
  %21 = phi i32 [ %16, %14 ], [ 0, %13 ], [ 64, %2 ], [ 0, %6 ], [ 64, %10 ]
  %22 = getelementptr inbounds %struct.sti_dwmac, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %4, i32 noundef 192, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_dwmac_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @stmmac_suspend(ptr noundef %0) #7
  %9 = getelementptr inbounds %struct.sti_dwmac, ptr %7, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #7
  tail call void @clk_unprepare(ptr noundef %10) #7
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_dwmac_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sti_dwmac, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = tail call i32 @clk_enable(ptr noundef %9) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %16

16:                                               ; preds = %15, %12, %1
  tail call fastcc void @sti_dwmac_set_mode(ptr noundef %7)
  %17 = tail call i32 @stmmac_resume(ptr noundef %0) #7
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_resume(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
