; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c"
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
%struct.sunxi_priv_data = type { i32, i32, ptr, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_sunxi__337_189_sun7i_dwmac_driver_init6 = internal global ptr @sun7i_dwmac_driver_init, section ".initcall6.init", align 4
@sun7i_dwmac_driver = internal global %struct.platform_driver { ptr @sun7i_gmac_probe, ptr @stmmac_pltfr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun7i_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmmac_pltfr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun7i_dwmac_driver_exit = internal global ptr @sun7i_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author338 = internal constant [48 x i8] c"dwmac_sunxi.author=Chen-Yu Tsai <wens@csie.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description339 = internal constant [66 x i8] c"dwmac_sunxi.description=Allwinner sunxi DWMAC specific glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file340 = internal constant [65 x i8] c"dwmac_sunxi.file=drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [24 x i8] c"dwmac_sunxi.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"sun7i-dwmac\00", align 1
@sun7i_dwmac_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-gmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stmmac_pltfr_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Can't get phy-mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"allwinner_gmac_tx\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"could not get tx clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"no regulator found\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author338, ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_sun7i_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_sunxi__337_189_sun7i_dwmac_driver_init6, ptr @sun7i_dwmac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun7i_dwmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun7i_dwmac_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun7i_dwmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun7i_dwmac_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun7i_gmac_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.stmmac_resources, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %2, i8 0, i32 96, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = call i32 @stmmac_get_platform_resources(ptr noundef %0, ptr noundef nonnull %2) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %52

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 1
  %8 = call ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %7) #6
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  br label %52

12:                                               ; preds = %6
  %13 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @of_get_phy_mode(ptr noundef %17, ptr noundef nonnull %13) #6
  switch i32 %18, label %19 [
    i32 -19, label %20
    i32 0, label %20
  ]

19:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %50

20:                                               ; preds = %15, %15
  %21 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  %22 = getelementptr inbounds %struct.sunxi_priv_data, ptr %13, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  %25 = load ptr, ptr %22, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %50

27:                                               ; preds = %20
  %28 = call ptr @devm_regulator_get_optional(ptr noundef %3, ptr noundef nonnull @.str.4) #6
  %29 = getelementptr inbounds %struct.sunxi_priv_data, ptr %13, i32 0, i32 3
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = icmp eq ptr %28, inttoptr (i32 -517 to ptr)
  br i1 %32, label %50, label %33

33:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  store ptr null, ptr %29, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 15
  store i32 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 13
  store i32 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 46
  store ptr %13, ptr %37, align 4
  %38 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 40
  store ptr @sun7i_gmac_init, ptr %38, align 4
  %39 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 41
  store ptr @sun7i_gmac_exit, ptr %39, align 4
  %40 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 35
  store ptr @sun7i_fix_speed, ptr %40, align 4
  %41 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 26
  store i32 4096, ptr %41, align 4
  %42 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %8, i32 0, i32 27
  store i32 16384, ptr %42, align 4
  %43 = call i32 @sun7i_gmac_init(ptr noundef %0, ptr noundef nonnull %13)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %34
  %46 = call i32 @stmmac_dvr_probe(ptr noundef %3, ptr noundef %8, ptr noundef nonnull %2) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %37, align 4
  call void @sun7i_gmac_exit(ptr noundef %0, ptr noundef %49)
  br label %50

50:                                               ; preds = %48, %34, %31, %24, %19, %12
  %51 = phi i32 [ %18, %19 ], [ %26, %24 ], [ %43, %34 ], [ %46, %48 ], [ -12, %12 ], [ -517, %31 ]
  call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %8) #6
  br label %52

52:                                               ; preds = %50, %45, %10, %1
  %53 = phi i32 [ %11, %10 ], [ %51, %50 ], [ %4, %1 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #6
  ret i32 %53
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
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun7i_gmac_init(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @regulator_enable(ptr noundef nonnull %4) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %6, %2
  %10 = load i32, ptr %1, align 4
  %11 = add i32 %10, -9
  %12 = icmp ult i32 %11, 4
  %13 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  br i1 %12, label %15, label %26

15:                                               ; preds = %9
  %16 = tail call i32 @clk_set_rate(ptr noundef %14, i32 noundef 125000000) #6
  %17 = load ptr, ptr %13, align 4
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %24

24:                                               ; preds = %23, %20, %15
  %25 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 1
  store i32 1, ptr %25, align 4
  br label %36

26:                                               ; preds = %9
  %27 = tail call i32 @clk_set_rate(ptr noundef %14, i32 noundef 25000000) #6
  %28 = load ptr, ptr %13, align 4
  %29 = tail call i32 @clk_prepare(ptr noundef %28) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %3, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @regulator_disable(ptr noundef nonnull %32) #6
  br label %36

36:                                               ; preds = %34, %31, %26, %24, %6
  %37 = phi i32 [ %7, %6 ], [ 0, %24 ], [ %29, %34 ], [ %29, %31 ], [ 0, %26 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun7i_gmac_exit(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #6
  store i32 0, ptr %3, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_unprepare(ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.sunxi_priv_data, ptr %1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #6
  br label %17

17:                                               ; preds = %15, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun7i_fix_speed(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %31

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sunxi_priv_data, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sunxi_priv_data, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  store i32 0, ptr %6, align 4
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.sunxi_priv_data, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_unprepare(ptr noundef %14) #6
  %15 = icmp eq i32 %1, 1000
  %16 = load ptr, ptr %13, align 4
  br i1 %15, label %17, label %27

17:                                               ; preds = %12
  %18 = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef 125000000) #6
  %19 = load ptr, ptr %13, align 4
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = tail call i32 @clk_enable(ptr noundef %19) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #6
  br label %26

26:                                               ; preds = %25, %22, %17
  store i32 1, ptr %6, align 4
  br label %31

27:                                               ; preds = %12
  %28 = tail call i32 @clk_set_rate(ptr noundef %16, i32 noundef 25000000) #6
  %29 = load ptr, ptr %13, align 4
  %30 = tail call i32 @clk_prepare(ptr noundef %29) #6
  br label %31

31:                                               ; preds = %27, %26, %2
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
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
