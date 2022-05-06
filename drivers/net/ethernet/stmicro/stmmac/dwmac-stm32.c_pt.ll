; ModuleID = '/llk/IR/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stm32_ops = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.stm32_dwmac = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [8 x %struct.stmmac_rxq_cfg], [8 x %struct.stmmac_txq_cfg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, i32, i32, i8, i32, i8, i8, i32, ptr, i8, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.stmmac_rxq_cfg = type { i8, i32, i8, i8, i32 }
%struct.stmmac_txq_cfg = type { i32, i8, i32, i32, i32, i32, i8, i32, i32 }

@__initcall__kmod_dwmac_stm32__334_537_stm32_dwmac_driver_init6 = internal global ptr @stm32_dwmac_driver_init, section ".initcall6.init", align 4
@stm32_dwmac_driver = internal global %struct.platform_driver { ptr @stm32_dwmac_probe, ptr @stm32_dwmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dwmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dwmac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stm32_dwmac_driver_exit = internal global ptr @stm32_dwmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author335 = internal constant [65 x i8] c"dwmac_stm32.author=Alexandre Torgue <alexandre.torgue@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author336 = internal constant [68 x i8] c"dwmac_stm32.author=Christophe Roullier <christophe.roullier@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description337 = internal constant [75 x i8] c"dwmac_stm32.description=STMicroelectronics STM32 DWMAC Specific Glue layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file338 = internal constant [65 x i8] c"dwmac_stm32.file=drivers/net/ethernet/stmicro/stmmac/dwmac-stm32\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [27 x i8] c"dwmac_stm32.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"stm32-dwmac\00", align 1
@stm32_dwmac_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mcu_dwmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-dwmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_dwmac_data }, %struct.of_device_id zeroinitializer], align 4
@stm32_dwmac_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_dwmac_suspend, ptr @stm32_dwmac_resume, ptr @stm32_dwmac_suspend, ptr @stm32_dwmac_resume, ptr @stm32_dwmac_suspend, ptr @stm32_dwmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"no of match data provided\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to parse OF data\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"mac-clk-tx\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"No ETH Tx clock provided...\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"mac-clk-rx\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"No ETH Rx clock provided...\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"st,syscon\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Can't get sysconfig mode offset (%d)\0A\00", align 1
@stm32mcu_dwmac_data = internal global %struct.stm32_ops { ptr @stm32mcu_set_mode, ptr null, ptr @stm32mcu_suspend, ptr null, ptr null, i32 8388608 }, align 4
@stm32mp1_dwmac_data = internal global %struct.stm32_ops { ptr @stm32mp1_set_mode, ptr @stm32mp1_clk_prepare, ptr @stm32mp1_suspend, ptr @stm32mp1_resume, ptr @stm32mp1_parse_data, i32 16711680 }, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"st,ext-phyclk\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"st,eth-clk-sel\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"st,eth-ref-clk-sel\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"eth-ck\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"No phy clock provided...\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ethstp\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"No ETH peripheral clock provided for CStop mode ...\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"syscfg-clk\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"stm32_pwr_wakeup\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Failed to init wake up irq\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Failed to set wake up irq\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_author336, ptr @__UNIQUE_ID_description337, ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_license339, ptr @__exitcall_stm32_dwmac_driver_exit, ptr @__initcall__kmod_dwmac_stm32__334_537_stm32_dwmac_driver_init6, ptr @stm32_dwmac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stm32_dwmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dwmac_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stm32_dwmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_dwmac_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dwmac_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.stmmac_resources, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %2, i8 0, i32 96, i1 false), !annotation !8
  %3 = call i32 @stmmac_get_platform_resources(ptr noundef %0, ptr noundef nonnull %2) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %74

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stmmac_resources, ptr %2, i32 0, i32 1
  %7 = call ptr @stmmac_probe_config_dt(ptr noundef %0, ptr noundef %6) #6
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %7 to i32
  br label %74

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 60, i32 noundef 3520) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %72, label %15

15:                                               ; preds = %11
  %16 = call ptr @of_device_get_match_data(ptr noundef %12) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.1) #7
  br label %72

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.stm32_dwmac, ptr %13, i32 0, i32 13
  store ptr %16, ptr %20, align 4
  %21 = getelementptr inbounds %struct.stm32_dwmac, ptr %13, i32 0, i32 14
  store ptr %12, ptr %21, align 4
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = call ptr @devm_clk_get(ptr noundef %12, ptr noundef nonnull @.str.3) #6
  store ptr %24, ptr %13, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %46, label %26

26:                                               ; preds = %19
  %27 = call ptr @devm_clk_get(ptr noundef %12, ptr noundef nonnull @.str.5) #6
  %28 = getelementptr inbounds %struct.stm32_dwmac, ptr %13, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.stm32_ops, ptr %16, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = call i32 %32(ptr noundef nonnull %13, ptr noundef %12) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34, %30
  %38 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %23, ptr noundef nonnull @.str.7) #6
  %39 = getelementptr inbounds %struct.stm32_dwmac, ptr %13, i32 0, i32 11
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.stm32_dwmac, ptr %13, i32 0, i32 10
  %43 = call i32 @of_property_read_u32_index(ptr noundef %23, ptr noundef nonnull @.str.7, i32 noundef 1, ptr noundef %42) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.8, i32 noundef %43) #7
  br label %53

46:                                               ; preds = %26, %19
  %47 = phi ptr [ @.str.4, %19 ], [ @.str.6, %26 ]
  %48 = phi ptr [ %24, %19 ], [ %27, %26 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %47) #7
  br label %49

49:                                               ; preds = %46, %37
  %50 = phi ptr [ %38, %37 ], [ %48, %46 ]
  %51 = ptrtoint ptr %50 to i32
  %52 = icmp eq ptr %50, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49, %45, %34
  %54 = phi i32 [ %51, %49 ], [ %43, %45 ], [ %35, %34 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.2) #7
  br label %72

55:                                               ; preds = %49, %41
  %56 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %7, i32 0, i32 46
  store ptr %13, ptr %56, align 4
  %57 = call fastcc i32 @stm32_dwmac_init(ptr noundef %7)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = call i32 @stmmac_dvr_probe(ptr noundef %12, ptr noundef %7, ptr noundef nonnull %2) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %13, align 4
  call void @clk_disable(ptr noundef %63) #6
  call void @clk_unprepare(ptr noundef %63) #6
  %64 = getelementptr inbounds %struct.stm32_dwmac, ptr %13, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  call void @clk_disable(ptr noundef %65) #6
  call void @clk_unprepare(ptr noundef %65) #6
  %66 = load ptr, ptr %20, align 4
  %67 = getelementptr inbounds %struct.stm32_ops, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = call i32 %68(ptr noundef nonnull %13, i1 noundef zeroext false) #6
  br label %72

72:                                               ; preds = %70, %62, %55, %53, %18, %11
  %73 = phi i32 [ %54, %53 ], [ %57, %55 ], [ -22, %18 ], [ -12, %11 ], [ %60, %62 ], [ %60, %70 ]
  call void @stmmac_remove_config_dt(ptr noundef %0, ptr noundef %7) #6
  br label %74

74:                                               ; preds = %72, %59, %9, %1
  %75 = phi i32 [ %10, %9 ], [ %73, %72 ], [ %3, %1 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #6
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dwmac_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @stmmac_dvr_remove(ptr noundef %4) #6
  %6 = getelementptr i8, ptr %3, i32 12096
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %7, i32 0, i32 46
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  %11 = getelementptr inbounds %struct.stm32_dwmac, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #6
  tail call void @clk_unprepare(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.stm32_dwmac, ptr %9, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stm32_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = tail call i32 %16(ptr noundef %9, i1 noundef zeroext false) #6
  br label %20

20:                                               ; preds = %18, %1
  %21 = getelementptr inbounds %struct.stm32_dwmac, ptr %9, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  tail call void @dev_pm_clear_wake_irq(ptr noundef %4) #6
  %25 = tail call i32 @device_init_wakeup(ptr noundef %4, i1 noundef zeroext false) #6
  br label %26

26:                                               ; preds = %24, %20
  ret i32 %5
}

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
define internal fastcc i32 @stm32_dwmac_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %0, i32 0, i32 46
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %0) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %8, %1
  %12 = load ptr, ptr %3, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  %16 = tail call i32 @clk_enable(ptr noundef %12) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 11, i32 1
  %22 = load i16, ptr %21, align 4
  %23 = and i16 %22, 16
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_prepare(ptr noundef %27) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = tail call i32 @clk_enable(ptr noundef %27) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30, %18
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.stm32_ops, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  %39 = tail call i32 %36(ptr noundef %3, i1 noundef zeroext true) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void @clk_disable(ptr noundef %43) #6
  br label %44

44:                                               ; preds = %41, %30
  %45 = phi ptr [ %43, %41 ], [ %27, %30 ]
  %46 = phi i32 [ %39, %41 ], [ %31, %30 ]
  tail call void @clk_unprepare(ptr noundef %45) #6
  br label %47

47:                                               ; preds = %44, %25
  %48 = phi i32 [ %28, %25 ], [ %46, %44 ]
  %49 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %49) #6
  br label %50

50:                                               ; preds = %47, %15
  %51 = phi ptr [ %12, %15 ], [ %49, %47 ]
  %52 = phi i32 [ %16, %15 ], [ %48, %47 ]
  tail call void @clk_unprepare(ptr noundef %51) #6
  br label %53

53:                                               ; preds = %50, %38, %33, %11, %8
  %54 = phi i32 [ %9, %8 ], [ 0, %38 ], [ 0, %33 ], [ %13, %11 ], [ %52, %50 ]
  ret i32 %54
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
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @stmmac_dvr_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_clear_wake_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32mcu_set_mode(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %0, i32 0, i32 46
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %18 [
    i32 2, label %9
    i32 7, label %8
  ]

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %1
  %10 = phi i32 [ 8388608, %8 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stm32_ops, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %5, i32 noundef %16, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %18

18:                                               ; preds = %9, %1
  %19 = phi i32 [ %17, %9 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32mcu_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  tail call void @clk_disable(ptr noundef %2) #6
  tail call void @clk_unprepare(ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %4) #6
  tail call void @clk_unprepare(ptr noundef %4) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32mp1_set_mode(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %0, i32 0, i32 46
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_get_rate(ptr noundef %7) #6
  %9 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 6
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %63 [
    i32 2, label %12
    i32 3, label %18
    i32 7, label %28
    i32 9, label %37
    i32 10, label %37
    i32 11, label %37
    i32 12, label %37
  ]

12:                                               ; preds = %1
  %13 = icmp eq i32 %8, 25000000
  br i1 %13, label %14, label %48

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %48, label %46

18:                                               ; preds = %1
  %19 = icmp eq i32 %8, 25000000
  br i1 %19, label %20, label %48

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %48, label %46

28:                                               ; preds = %1
  switch i32 %8, label %48 [
    i32 50000000, label %29
    i32 25000000, label %29
  ]

29:                                               ; preds = %28, %28
  %30 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %48, label %46

37:                                               ; preds = %1, %1, %1, %1
  switch i32 %8, label %48 [
    i32 125000000, label %38
    i32 25000000, label %38
  ]

38:                                               ; preds = %37, %37
  %39 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42, %38, %33, %29, %24, %20, %14
  %47 = phi i32 [ 1048576, %14 ], [ 65536, %24 ], [ 65536, %20 ], [ 8519680, %33 ], [ 8519680, %29 ], [ 2162688, %42 ], [ 2162688, %38 ]
  store i32 1, ptr %9, align 4
  br label %48

48:                                               ; preds = %46, %42, %37, %33, %28, %24, %18, %14, %12
  %49 = phi i32 [ 1048576, %14 ], [ 1048576, %12 ], [ 0, %24 ], [ 0, %18 ], [ 8388608, %33 ], [ 8388608, %28 ], [ 2097152, %42 ], [ 2097152, %37 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 11
  %51 = load ptr, ptr %50, align 4
  %52 = add i32 %5, 64
  %53 = getelementptr inbounds %struct.stm32_dwmac, ptr %3, i32 0, i32 13
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.stm32_ops, ptr %54, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef %52, i32 noundef %56) #6
  %58 = load ptr, ptr %50, align 4
  %59 = load ptr, ptr %53, align 4
  %60 = getelementptr inbounds %struct.stm32_ops, ptr %59, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef %5, i32 noundef %61, i32 noundef %49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %63

63:                                               ; preds = %48, %1
  %64 = phi i32 [ %62, %48 ], [ -22, %1 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32mp1_clk_prepare(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  br i1 %1, label %5, label %24

5:                                                ; preds = %2
  %6 = tail call i32 @clk_prepare(ptr noundef %4) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = tail call i32 @clk_enable(ptr noundef %4) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %30

24:                                               ; preds = %2
  tail call void @clk_disable(ptr noundef %4) #6
  tail call void @clk_unprepare(ptr noundef %4) #6
  %25 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 2
  br label %30

30:                                               ; preds = %28, %23, %15
  %31 = phi ptr [ %29, %28 ], [ %3, %15 ], [ %3, %23 ]
  %32 = phi i32 [ 0, %28 ], [ %18, %15 ], [ %21, %23 ]
  %33 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %33) #6
  br label %34

34:                                               ; preds = %30, %8
  %35 = phi ptr [ %4, %8 ], [ %33, %30 ]
  %36 = phi i32 [ %9, %8 ], [ %32, %30 ]
  tail call void @clk_unprepare(ptr noundef %35) #6
  br label %37

37:                                               ; preds = %34, %24, %20, %11, %5
  %38 = phi i32 [ 0, %24 ], [ 0, %11 ], [ 0, %20 ], [ %6, %5 ], [ %36, %34 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32mp1_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  %11 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #6
  tail call void @clk_unprepare(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #6
  br label %19

19:                                               ; preds = %16, %6
  %20 = phi ptr [ %18, %16 ], [ %3, %6 ]
  %21 = phi i32 [ 0, %16 ], [ %7, %6 ]
  tail call void @clk_unprepare(ptr noundef %20) #6
  br label %22

22:                                               ; preds = %19, %9, %1
  %23 = phi i32 [ 0, %9 ], [ %4, %1 ], [ %21, %19 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32mp1_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32mp1_parse_data(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 -16
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i32
  %9 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 5
  store i32 %8, ptr %9, align 4
  %10 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 7
  store i32 %12, ptr %13, align 4
  %14 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef null) #6
  %15 = icmp ne ptr %14, null
  %16 = zext i1 %15 to i32
  %17 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 8
  store i32 %16, ptr %17, align 4
  %18 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.12) #6
  %19 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.13) #7
  store ptr null, ptr %19, align 4
  br label %22

22:                                               ; preds = %21, %2
  %23 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.14) #6
  %24 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 3
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #7
  %27 = load ptr, ptr %24, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %54

29:                                               ; preds = %22
  %30 = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.16) #6
  %31 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %33 = select i1 %32, ptr null, ptr %30
  store ptr %33, ptr %31, align 4
  %34 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %3, ptr noundef nonnull @.str.17) #6
  %35 = getelementptr inbounds %struct.stm32_dwmac, ptr %0, i32 0, i32 9
  store i32 %34, ptr %35, align 4
  %36 = icmp eq i32 %34, -517
  br i1 %36, label %54, label %37

37:                                               ; preds = %29
  %38 = load ptr, ptr %19, align 4
  %39 = icmp eq ptr %38, null
  %40 = icmp sgt i32 %34, -1
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = tail call i32 @device_init_wakeup(ptr noundef %1, i1 noundef zeroext true) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.18) #7
  br label %54

46:                                               ; preds = %42
  %47 = load i32, ptr %35, align 4
  %48 = tail call i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %1, i32 noundef %47) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #7
  %51 = tail call i32 @device_init_wakeup(ptr noundef %1, i1 noundef zeroext false) #6
  br label %52

52:                                               ; preds = %50, %46
  %53 = tail call i32 @device_set_wakeup_enable(ptr noundef %1, i1 noundef zeroext false) #6
  br label %54

54:                                               ; preds = %52, %45, %37, %29, %26
  %55 = phi i32 [ %28, %26 ], [ %43, %45 ], [ -517, %29 ], [ 0, %37 ], [ %48, %52 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dwmac_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @stmmac_suspend(ptr noundef %0) #6
  %9 = getelementptr inbounds %struct.stm32_dwmac, ptr %7, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stm32_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = tail call i32 %12(ptr noundef %7) #6
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %8, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_dwmac_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 12096
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, ptr %5, i32 0, i32 46
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stm32_dwmac, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_ops, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  tail call void %11(ptr noundef %7) #6
  %14 = load ptr, ptr %4, align 64
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi ptr [ %14, %13 ], [ %5, %1 ]
  %17 = tail call fastcc i32 @stm32_dwmac_init(ptr noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call i32 @stmmac_resume(ptr noundef %0) #6
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %20, %19 ], [ %17, %15 ]
  ret i32 %22
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
