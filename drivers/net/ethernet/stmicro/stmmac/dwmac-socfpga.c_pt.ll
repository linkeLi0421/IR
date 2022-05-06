; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.socfpga_dwmac_ops = type { ptr }
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
%struct.socfpga_dwmac = type { i32, i32, ptr, ptr, ptr, ptr, ptr, i8, %struct.tse_pcs, ptr }
%struct.tse_pcs = type { ptr, ptr, ptr, %struct.timer_list, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}

@__initcall__kmod_dwmac_altr_socfpga__334_535_socfpga_dwmac_driver_init6 = internal global ptr @socfpga_dwmac_driver_init, section ".initcall6.init", align 4
@socfpga_dwmac_driver = internal global %struct.platform_driver { ptr @socfpga_dwmac_probe, ptr @stmmac_pltfr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @socfpga_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_dwmac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_socfpga_dwmac_driver_exit = internal global ptr @socfpga_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file335 = internal constant [79 x i8] c"dwmac_altr_socfpga.file=drivers/net/ethernet/stmicro/stmmac/dwmac-altr-socfpga\00", section ".modinfo", align 1
@__UNIQUE_ID_license336 = internal constant [34 x i8] c"dwmac_altr_socfpga.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"socfpga-dwmac\00", align 1
@socfpga_dwmac_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-stmmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @socfpga_gen5_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-stmmac-a10-s10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @socfpga_gen10_ops }, %struct.of_device_id zeroinitializer], align 4
@socfpga_dwmac_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stmmac_suspend, ptr @socfpga_dwmac_resume, ptr @stmmac_suspend, ptr @socfpga_dwmac_resume, ptr @stmmac_suspend, ptr @socfpga_dwmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @socfpga_dwmac_runtime_suspend, ptr @socfpga_dwmac_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"no of match data provided\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"stmmaceth-ocp\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"error getting reset control of ocp %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Unable to parse OF data\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"No sysmgr-syscon node found\0A\00", align 1
@socfpga_gen5_ops = internal constant %struct.socfpga_dwmac_ops { ptr @socfpga_gen5_set_phy_mode }, align 4
@socfpga_gen10_ops = internal constant %struct.socfpga_dwmac_ops { ptr @socfpga_gen10_set_phy_mode }, align 4
@.str.21 = private unnamed_addr constant [17 x i8] c"bad phy mode %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Unable to initialize TSE PCS\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file335, ptr @__UNIQUE_ID_license336, ptr @__exitcall_socfpga_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_altr_socfpga__334_535_socfpga_dwmac_driver_init6, ptr @socfpga_dwmac_driver_exit], section "llvm.metadata"
@switch.table.socfpga_gen10_set_phy_mode = private unnamed_addr constant [11 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @socfpga_dwmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @socfpga_dwmac_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @socfpga_dwmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @socfpga_dwmac_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_dwmac_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.stmmac_resources, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %2, i8 0, i32 96, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @device_get_match_data(ptr noundef %3) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %29

7:                                                ; preds = %1
  %8 = call i32 @stmmac_get_platform_resources(ptr noundef %0, ptr noundef nonnull %2) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 1
  %12 = call ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %11) #6
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = ptrtoint ptr %12 to i32
  br label %29

16:                                               ; preds = %10
  %17 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 72, i32 noundef 3520) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %21 = getelementptr inbounds %struct.socfpga_dwmac, ptr %17, i32 0, i32 5
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %24) #7
  br label %27

25:                                               ; preds = %19
  %26 = call i32 @reset_control_deassert(ptr noundef %20) #6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  br label %27

27:                                               ; preds = %25, %23, %16
  %28 = phi i32 [ %24, %23 ], [ -524, %25 ], [ -12, %16 ]
  call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %12) #6
  br label %29

29:                                               ; preds = %27, %14, %7, %6
  %30 = phi i32 [ %15, %14 ], [ %28, %27 ], [ -22, %6 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #6
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_pltfr_remove(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_get_platform_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @stmmac_probe_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stmmac_remove_config_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_gen5_set_phy_mode(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 12096
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %0, align 4
  %15 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %17 = add i32 %13, -2
  %18 = icmp ult i32 %17, 11
  br i1 %18, label %20, label %19

19:                                               ; preds = %20, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %13) #7
  br label %88

20:                                               ; preds = %1
  %21 = trunc i32 %17 to i16
  %22 = lshr i16 1959, %21
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %19, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds [11 x i32], ptr @switch.table.socfpga_gen10_set_phy_mode, i32 0, i32 %17
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, i32 %27, i32 0
  %32 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @reset_control_assert(ptr noundef %33) #6
  %35 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @reset_control_assert(ptr noundef %36) #6
  %38 = call i32 @regmap_read(ptr noundef %5, i32 noundef %14, ptr noundef nonnull %2) #6
  %39 = shl i32 3, %16
  %40 = xor i32 %39, -1
  %41 = load i32, ptr %2, align 4
  %42 = and i32 %41, %40
  %43 = shl i32 %31, %16
  %44 = or i32 %42, %43
  store i32 %44, ptr %2, align 4
  %45 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 7
  %46 = load i8, ptr %45, align 4, !range !9
  %47 = freeze i8 %46
  %48 = icmp ne i8 %47, 0
  %49 = icmp eq i32 %13, 4
  %50 = add nsw i32 %13, -2
  %51 = icmp ult i32 %50, 3
  %52 = or i1 %51, %48
  br i1 %52, label %53, label %67

53:                                               ; preds = %25
  %54 = call i32 @regmap_read(ptr noundef %5, i32 noundef 40, ptr noundef nonnull %3) #6
  %55 = lshr i32 %16, 1
  %56 = shl i32 4, %55
  %57 = load i32, ptr %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, ptr %3, align 4
  %59 = call i32 @regmap_write(ptr noundef %5, i32 noundef 40, i32 noundef %58) #6
  %60 = load i8, ptr %45, align 4, !range !9
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = lshr i32 %16, 1
  %64 = shl i32 16, %63
  %65 = load i32, ptr %2, align 4
  %66 = or i32 %65, %64
  br label %73

67:                                               ; preds = %53, %25
  %68 = lshr i32 %16, 1
  %69 = shl i32 16, %68
  %70 = xor i32 %69, -1
  %71 = load i32, ptr %2, align 4
  %72 = and i32 %71, %70
  br label %73

73:                                               ; preds = %67, %62
  %74 = phi i32 [ %72, %67 ], [ %66, %62 ]
  store i32 %74, ptr %2, align 4
  %75 = call i32 @regmap_write(ptr noundef %5, i32 noundef %14, i32 noundef %74) #6
  %76 = load ptr, ptr %32, align 4
  %77 = call i32 @reset_control_deassert(ptr noundef %76) #6
  %78 = load ptr, ptr %35, align 4
  %79 = call i32 @reset_control_deassert(ptr noundef %78) #6
  br i1 %49, label %80, label %88

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 8
  %82 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 8, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 @tse_pcs_init(ptr noundef %83, ptr noundef %81) #6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.22) #7
  br label %88

88:                                               ; preds = %86, %80, %73, %19
  %89 = phi i32 [ -22, %19 ], [ -22, %86 ], [ 0, %80 ], [ 0, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tse_pcs_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_gen10_set_phy_mode(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 12096
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %0, align 4
  %15 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %17 = add i32 %13, -2
  %18 = icmp ult i32 %17, 11
  br i1 %18, label %19, label %74

19:                                               ; preds = %1
  %20 = trunc i32 %17 to i16
  %21 = lshr i16 1959, %20
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %74, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds [11 x i32], ptr @switch.table.socfpga_gen10_set_phy_mode, i32 0, i32 %17
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i32 %26, i32 0
  %31 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @reset_control_assert(ptr noundef %32) #6
  %34 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @reset_control_assert(ptr noundef %35) #6
  %37 = call i32 @regmap_read(ptr noundef %5, i32 noundef %14, ptr noundef nonnull %2) #6
  %38 = load i32, ptr %2, align 4
  %39 = and i32 %38, -4
  %40 = or i32 %39, %30
  %41 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 7
  %42 = load i8, ptr %41, align 4, !range !9
  %43 = freeze i8 %42
  %44 = icmp ne i8 %43, 0
  %45 = icmp eq i32 %13, 4
  %46 = add nsw i32 %13, -2
  %47 = icmp ult i32 %46, 3
  %48 = or i1 %47, %44
  br i1 %48, label %49, label %57

49:                                               ; preds = %24
  %50 = or i32 %40, 256
  store i32 %50, ptr %2, align 4
  %51 = call i32 @regmap_read(ptr noundef %5, i32 noundef 112, ptr noundef nonnull %3) #6
  %52 = shl nuw i32 1, %16
  %53 = load i32, ptr %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, ptr %3, align 4
  %55 = call i32 @regmap_write(ptr noundef %5, i32 noundef 112, i32 noundef %54) #6
  %56 = load i32, ptr %2, align 4
  br label %59

57:                                               ; preds = %24
  %58 = and i32 %40, -257
  store i32 %58, ptr %2, align 4
  br label %59

59:                                               ; preds = %57, %49
  %60 = phi i32 [ %58, %57 ], [ %56, %49 ]
  %61 = call i32 @regmap_write(ptr noundef %5, i32 noundef %14, i32 noundef %60) #6
  %62 = load ptr, ptr %31, align 4
  %63 = call i32 @reset_control_deassert(ptr noundef %62) #6
  %64 = load ptr, ptr %34, align 4
  %65 = call i32 @reset_control_deassert(ptr noundef %64) #6
  br i1 %45, label %66, label %74

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 8
  %68 = getelementptr inbounds %struct.socfpga_dwmac, ptr %0, i32 0, i32 8, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 @tse_pcs_init(ptr noundef %69, ptr noundef %67) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.22) #7
  br label %74

74:                                               ; preds = %72, %66, %59, %19, %1
  %75 = phi i32 [ -22, %72 ], [ 0, %66 ], [ 0, %59 ], [ -22, %1 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_suspend(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_dwmac_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.socfpga_dwmac, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %7) #6
  %12 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 120
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = tail call i32 @phy_resume(ptr noundef nonnull %13) #6
  br label %17

17:                                               ; preds = %15, %1
  %18 = tail call i32 @stmmac_resume(ptr noundef %0) #6
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_dwmac_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = tail call i32 @stmmac_bus_clks_config(ptr noundef %4, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @socfpga_dwmac_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1408
  %5 = tail call i32 @stmmac_bus_clks_config(ptr noundef %4, i1 noundef zeroext true) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmmac_bus_clks_config(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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
!9 = !{i8 0, i8 2}
