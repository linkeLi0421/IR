; ModuleID = '/llk/IR/drivers/devfreq/tegra30-devfreq.c_pt.bc'
source_filename = "../drivers/devfreq/tegra30-devfreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tegra_devfreq_soc_data = type { ptr, i32 }
%struct.tegra_devfreq_device_config = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.devfreq_governor = type { %struct.list_head, [16 x i8], i64, i64, ptr, ptr }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tegra_actmon_emc_ratio = type { i32, i32 }
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
%struct.tegra_devfreq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.notifier_block, %struct.delayed_work, %struct.notifier_block, [2 x %struct.tegra_devfreq_device], i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tegra_devfreq_device = type { ptr, ptr, i32, i32, i32 }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.5, ptr }
%union.anon.5 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.cpufreq_freqs = type { ptr, i32, i32, i8 }

@tegra_devfreq_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-actmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-actmon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_soc }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license195 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description196 = internal constant [33 x i8] c"description=Tegra devfreq driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author197 = internal constant [49 x i8] c"author=Tomeu Vizoso <tomeu.vizoso@collabora.com>\00", section ".modinfo", align 1
@tegra30_soc = internal constant %struct.tegra_devfreq_soc_data { ptr @tegra30_device_configs, i32 512 }, align 4
@tegra124_soc = internal constant %struct.tegra_devfreq_soc_data { ptr @tegra124_device_configs, i32 1024 }, align 4
@tegra30_device_configs = internal constant [2 x %struct.tegra_devfreq_device_config] [%struct.tegra_devfreq_device_config { i32 448, i32 67108864, i32 200, i32 50, i32 20, i32 10, i32 0 }, %struct.tegra_devfreq_device_config { i32 512, i32 33554432, i32 800, i32 40, i32 27, i32 10, i32 16000 }], align 4
@tegra124_device_configs = internal constant [2 x %struct.tegra_devfreq_device_config] [%struct.tegra_devfreq_device_config { i32 448, i32 67108864, i32 200, i32 50, i32 60, i32 40, i32 0 }, %struct.tegra_devfreq_device_config { i32 512, i32 33554432, i32 800, i32 40, i32 27, i32 10, i32 16000 }], align 4
@tegra_devfreq_driver = internal global %struct.platform_driver { ptr @tegra_devfreq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_devfreq_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"tegra-devfreq\00", align 1
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"actmon\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to get reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to get actmon clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"emc\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to get emc clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Interrupt request failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to set supported HW: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to add OPP table: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to round clock rate: %ld\0A\00", align 1
@tegra_devfreq_governor = internal global %struct.devfreq_governor { %struct.list_head zeroinitializer, [16 x i8] c"tegra_actmon\00\00\00\00", i64 1, i64 3, ptr @tegra_governor_get_target, ptr @tegra_governor_event_handler }, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"Failed to add governor: %d\0A\00", align 1
@tegra_devfreq_profile = internal global %struct.devfreq_dev_profile { i32 0, i32 12, i32 0, i8 1, ptr @tegra_devfreq_target, ptr @tegra_devfreq_get_dev_status, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"tegra_actmon\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"Failed to prepare and enable ACTMON clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Failed to reset hardware: %d\0A\00", align 1
@actmon_emc_ratios = internal unnamed_addr constant [7 x %struct.tegra_actmon_emc_ratio] [%struct.tegra_actmon_emc_ratio { i32 1400000, i32 4294967 }, %struct.tegra_actmon_emc_ratio { i32 1200000, i32 750000 }, %struct.tegra_actmon_emc_ratio { i32 1100000, i32 600000 }, %struct.tegra_actmon_emc_ratio { i32 1000000, i32 500000 }, %struct.tegra_actmon_emc_ratio { i32 800000, i32 375000 }, %struct.tegra_actmon_emc_ratio { i32 500000, i32 200000 }, %struct.tegra_actmon_emc_ratio { i32 250000, i32 100000 }], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.14 = private unnamed_addr constant [41 x i8] c"Failed to register rate change notifier\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Failed to register rate change notifier: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Failed to find opp for %lu Hz\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author197, ptr @__UNIQUE_ID_description196, ptr @__UNIQUE_ID_license195], section "llvm.metadata"

@__mod_of__tegra_devfreq_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @tegra_devfreq_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_devfreq_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_devfreq_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_devfreq_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %3 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 6), align 4
  %4 = shl nuw i32 1, %3
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 148, i32 noundef 3520) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %112, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @of_device_get_match_data(ptr noundef %5) #6
  %10 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 13
  store ptr %9, ptr %10, align 4
  %11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %12 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 3
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = ptrtoint ptr %11 to i32
  br label %112

16:                                               ; preds = %8
  %17 = tail call ptr @__devm_reset_control_get(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %18 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #7
  %21 = ptrtoint ptr %17 to i32
  br label %112

22:                                               ; preds = %16
  %23 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.1) #6
  %24 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 2
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #7
  %27 = ptrtoint ptr %23 to i32
  br label %112

28:                                               ; preds = %22
  %29 = tail call ptr @devm_clk_get(ptr noundef %5, ptr noundef nonnull @.str.4) #6
  %30 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 4
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = ptrtoint ptr %29 to i32
  %34 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %33, ptr noundef nonnull @.str.5) #6
  br label %112

35:                                               ; preds = %28
  %36 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %112, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 11
  store i32 %36, ptr %39, align 4
  tail call void @irq_modify_status(i32 noundef %36, i32 noundef 0, i32 noundef 4096) #6
  %40 = tail call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %36, ptr noundef null, ptr noundef nonnull @actmon_thread_isr, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %6) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %40) #7
  br label %112

43:                                               ; preds = %38
  %44 = call i32 @devm_pm_opp_set_supported_hw(ptr noundef %5, ptr noundef nonnull %2, i32 noundef 1) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %44) #7
  br label %112

47:                                               ; preds = %43
  %48 = call i32 @devm_pm_opp_of_add_table_noclk(ptr noundef %5, i32 noundef 0) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %48) #7
  br label %112

51:                                               ; preds = %47
  %52 = load ptr, ptr %24, align 4
  %53 = call i32 @clk_prepare(ptr noundef %52) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = call i32 @clk_enable(ptr noundef %52) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  call void @clk_unprepare(ptr noundef %52) #6
  br label %59

59:                                               ; preds = %58, %51
  %60 = phi i32 [ %56, %58 ], [ %53, %51 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.12) #7
  br label %112

61:                                               ; preds = %55
  %62 = call i32 @devm_add_action(ptr noundef %5, ptr noundef nonnull @devm_tegra_devfreq_deinit_hw, ptr noundef nonnull %6) #6
  %63 = icmp eq i32 %62, 0
  %64 = load ptr, ptr %18, align 4
  %65 = call i32 @reset_control_reset(ptr noundef %64) #6
  br i1 %63, label %68, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %24, align 4
  call void @clk_disable(ptr noundef %67) #6
  call void @clk_unprepare(ptr noundef %67) #6
  br label %112

68:                                               ; preds = %61
  %69 = icmp eq i32 %65, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %65) #7
  br label %112

71:                                               ; preds = %68
  %72 = load ptr, ptr %30, align 4
  %73 = call i32 @clk_round_rate(ptr noundef %72, i32 noundef -1) #6
  %74 = icmp slt i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %73) #7
  %76 = icmp eq i32 %73, 0
  %77 = select i1 %76, i32 -22, i32 %73
  br label %112

78:                                               ; preds = %71
  %79 = udiv i32 %73, 1000
  %80 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 5
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 10
  %82 = load ptr, ptr %10, align 4
  %83 = load ptr, ptr %82, align 4
  store ptr %83, ptr %81, align 4
  %84 = load ptr, ptr %12, align 4
  %85 = load i32, ptr %83, align 4
  %86 = getelementptr i8, ptr %84, i32 %85
  %87 = getelementptr %struct.tegra_devfreq, ptr %6, i32 0, i32 10, i32 0, i32 1
  store ptr %86, ptr %87, align 4
  %88 = getelementptr %struct.tegra_devfreq, ptr %6, i32 0, i32 10, i32 1
  %89 = load ptr, ptr %82, align 4
  %90 = getelementptr %struct.tegra_devfreq_device_config, ptr %89, i32 1
  store ptr %90, ptr %88, align 4
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr i8, ptr %84, i32 %91
  %93 = getelementptr %struct.tegra_devfreq, ptr %6, i32 0, i32 10, i32 1, i32 1
  store ptr %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %94, align 8
  %95 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 7
  store ptr @tegra_actmon_clk_notify_cb, ptr %95, align 4
  %96 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 9
  store ptr @tegra_actmon_cpu_notify_cb, ptr %96, align 4
  %97 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 8
  store i32 -32, ptr %97, align 4
  %98 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 8, i32 0, i32 1
  store volatile ptr %98, ptr %98, align 4
  %99 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 8, i32 0, i32 1, i32 1
  store ptr %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 8, i32 0, i32 2
  store ptr @tegra_actmon_delayed_update, ptr %100, align 4
  %101 = getelementptr inbounds %struct.tegra_devfreq, ptr %6, i32 0, i32 8, i32 1
  call void @init_timer_key(ptr noundef %101, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #6
  %102 = call i32 @devm_devfreq_add_governor(ptr noundef %5, ptr noundef nonnull @tegra_devfreq_governor) #6
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %78
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef %102) #7
  br label %112

105:                                              ; preds = %78
  %106 = load ptr, ptr %30, align 4
  %107 = call i32 @clk_get_rate(ptr noundef %106) #6
  store i32 %107, ptr @tegra_devfreq_profile, align 4
  %108 = call ptr @devm_devfreq_add_device(ptr noundef %5, ptr noundef nonnull @tegra_devfreq_profile, ptr noundef nonnull @.str.11, ptr noundef null) #6
  %109 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  %110 = ptrtoint ptr %108 to i32
  %111 = select i1 %109, i32 %110, i32 0
  br label %112

112:                                              ; preds = %105, %104, %75, %70, %66, %59, %50, %46, %42, %35, %32, %26, %20, %14, %1
  %113 = phi i32 [ %15, %14 ], [ %21, %20 ], [ %27, %26 ], [ %34, %32 ], [ %40, %42 ], [ %44, %46 ], [ %48, %50 ], [ %77, %75 ], [ %102, %104 ], [ -12, %1 ], [ %36, %35 ], [ %62, %66 ], [ %65, %70 ], [ %60, %59 ], [ %111, %105 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %113
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @actmon_thread_isr(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.tegra_devfreq, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !8
  %8 = getelementptr inbounds %struct.tegra_devfreq, ptr %1, i32 0, i32 10
  %9 = getelementptr inbounds %struct.tegra_devfreq, ptr %1, i32 0, i32 5
  br label %10

10:                                               ; preds = %99, %2
  %11 = phi i32 [ 1, %99 ], [ 0, %2 ]
  %12 = phi i1 [ true, %99 ], [ false, %2 ]
  br label %13

13:                                               ; preds = %97, %10
  %14 = phi i32 [ 1, %97 ], [ %11, %10 ]
  %15 = getelementptr %struct.tegra_devfreq, ptr %1, i32 0, i32 10, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %97, label %21

21:                                               ; preds = %13
  %22 = getelementptr %struct.tegra_devfreq_device, ptr %8, i32 %14
  %23 = getelementptr %struct.tegra_devfreq_device, ptr %8, i32 %14, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !8
  %27 = getelementptr %struct.tegra_devfreq_device, ptr %8, i32 %14, i32 2
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %9, align 4
  %29 = mul i32 %28, 6
  %30 = udiv i32 %29, 1000
  %31 = load ptr, ptr %1, align 4
  %32 = getelementptr inbounds %struct.devfreq, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, %30
  %37 = tail call i32 @llvm.uadd.sat.i32(i32 %26, i32 %36) #6
  %38 = load ptr, ptr %23, align 4
  %39 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !9
  %40 = load i32, ptr %27, align 4
  %41 = tail call i32 @llvm.usub.sat.i32(i32 %40, i32 %36) #6
  %42 = load ptr, ptr %23, align 4
  %43 = getelementptr i8, ptr %42, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #6, !srcloc !9
  %44 = load ptr, ptr %23, align 4
  %45 = getelementptr i8, ptr %44, i32 36
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !8
  %47 = load ptr, ptr %23, align 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !8
  %49 = icmp sgt i32 %46, -1
  br i1 %49, label %73, label %50

50:                                               ; preds = %21
  %51 = getelementptr %struct.tegra_devfreq_device, ptr %8, i32 %14, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = zext i32 %52 to i64
  %54 = load ptr, ptr %22, align 4
  %55 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = zext i32 %56 to i64
  %58 = mul nuw i64 %57, %53
  %59 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %58, i32 0) #8, !srcloc !10
  %60 = extractvalue { i64, i32 } %59, 0
  %61 = extractvalue { i64, i32 } %59, 1
  %62 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %58, i64 %60, i32 %61) #8, !srcloc !11
  %63 = extractvalue { i64, i32 } %62, 0
  %64 = lshr i64 %63, 6
  %65 = tail call i64 @llvm.umin.i64(i64 %64, i64 4294967295) #6
  %66 = trunc i64 %65 to i32
  %67 = add i32 %66, 16000
  store i32 %67, ptr %51, align 4
  %68 = or i32 %48, 536870912
  %69 = load i32, ptr %9, align 4
  %70 = icmp ult i32 %67, %69
  br i1 %70, label %99, label %71

71:                                               ; preds = %50
  %72 = and i32 %68, -1073741825
  store i32 %69, ptr %51, align 4
  br label %99

73:                                               ; preds = %21
  %74 = and i32 %46, 1073741824
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %99, label %76

76:                                               ; preds = %73
  %77 = getelementptr %struct.tegra_devfreq_device, ptr %8, i32 %14, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = zext i32 %78 to i64
  %80 = load ptr, ptr %22, align 4
  %81 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %80, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = zext i32 %82 to i64
  %84 = mul nuw i64 %83, %79
  %85 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %84, i32 0) #8, !srcloc !10
  %86 = extractvalue { i64, i32 } %85, 0
  %87 = extractvalue { i64, i32 } %85, 1
  %88 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %84, i64 %86, i32 %87) #8, !srcloc !11
  %89 = extractvalue { i64, i32 } %88, 0
  %90 = lshr i64 %89, 6
  %91 = tail call i64 @llvm.umin.i64(i64 %90, i64 4294967295) #6
  %92 = trunc i64 %91 to i32
  store i32 %92, ptr %77, align 4
  %93 = or i32 %48, 1073741824
  %94 = icmp ult i32 %92, 8000
  br i1 %94, label %95, label %99

95:                                               ; preds = %76
  %96 = and i32 %93, -536870913
  store i32 0, ptr %77, align 4
  br label %99

97:                                               ; preds = %13
  %98 = icmp eq i32 %14, 0
  br i1 %98, label %13, label %105

99:                                               ; preds = %95, %76, %73, %71, %50
  %100 = phi i32 [ %72, %71 ], [ %68, %50 ], [ %96, %95 ], [ %93, %76 ], [ %48, %73 ]
  %101 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %100) #6, !srcloc !9
  %102 = load ptr, ptr %23, align 4
  %103 = getelementptr i8, ptr %102, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 -1) #6, !srcloc !9
  %104 = icmp eq i32 %14, 0
  br i1 %104, label %10, label %106

105:                                              ; preds = %97
  br i1 %12, label %106, label %109

106:                                              ; preds = %105, %99
  %107 = load ptr, ptr %1, align 4
  %108 = tail call i32 @update_devfreq(ptr noundef %107) #6
  br label %109

109:                                              ; preds = %106, %105
  %110 = phi i32 [ 1, %106 ], [ 0, %105 ]
  %111 = load ptr, ptr %1, align 4
  %112 = getelementptr inbounds %struct.devfreq, ptr %111, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %112) #6
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table_noclk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_actmon_clk_notify_cb(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %5, label %90

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -28
  %7 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = udiv i32 %8, 1000
  %10 = getelementptr i8, ptr %0, i32 -4
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 68
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.devfreq, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, %9
  %18 = zext i32 %17 to i64
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = mul nuw i64 %22, %18
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %23, i32 0) #8, !srcloc !10
  %25 = extractvalue { i64, i32 } %24, 0
  %26 = extractvalue { i64, i32 } %24, 1
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %23, i64 %25, i32 %26) #8, !srcloc !11
  %28 = extractvalue { i64, i32 } %27, 0
  %29 = lshr i64 %28, 6
  %30 = tail call i64 @llvm.umin.i64(i64 %29, i64 4294967295) #6
  %31 = trunc i64 %30 to i32
  %32 = getelementptr i8, ptr %0, i32 72
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #6, !srcloc !9
  %35 = load ptr, ptr %11, align 4
  %36 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %35, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = zext i32 %37 to i64
  %39 = mul nuw i64 %38, %18
  %40 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %39, i32 0) #8, !srcloc !10
  %41 = extractvalue { i64, i32 } %40, 0
  %42 = extractvalue { i64, i32 } %40, 1
  %43 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %39, i64 %41, i32 %42) #8, !srcloc !11
  %44 = extractvalue { i64, i32 } %43, 0
  %45 = lshr i64 %44, 6
  %46 = tail call i64 @llvm.umin.i64(i64 %45, i64 4294967295) #6
  %47 = trunc i64 %46 to i32
  %48 = load ptr, ptr %32, align 4
  %49 = getelementptr i8, ptr %48, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #6, !srcloc !9
  %50 = getelementptr i8, ptr %0, i32 88
  %51 = load i32, ptr %10, align 4
  %52 = load ptr, ptr %6, align 4
  %53 = getelementptr inbounds %struct.devfreq, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = mul i32 %56, %51
  %58 = zext i32 %57 to i64
  %59 = load ptr, ptr %50, align 4
  %60 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %59, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = zext i32 %61 to i64
  %63 = mul nuw i64 %62, %58
  %64 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %63, i32 0) #8, !srcloc !10
  %65 = extractvalue { i64, i32 } %64, 0
  %66 = extractvalue { i64, i32 } %64, 1
  %67 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %63, i64 %65, i32 %66) #8, !srcloc !11
  %68 = extractvalue { i64, i32 } %67, 0
  %69 = lshr i64 %68, 6
  %70 = tail call i64 @llvm.umin.i64(i64 %69, i64 4294967295) #6
  %71 = trunc i64 %70 to i32
  %72 = getelementptr i8, ptr %0, i32 92
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %71) #6, !srcloc !9
  %75 = load ptr, ptr %50, align 4
  %76 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %75, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = zext i32 %77 to i64
  %79 = mul nuw i64 %78, %58
  %80 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %79, i32 0) #8, !srcloc !10
  %81 = extractvalue { i64, i32 } %80, 0
  %82 = extractvalue { i64, i32 } %80, 1
  %83 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %79, i64 %81, i32 %82) #8, !srcloc !11
  %84 = extractvalue { i64, i32 } %83, 0
  %85 = lshr i64 %84, 6
  %86 = tail call i64 @llvm.umin.i64(i64 %85, i64 4294967295) #6
  %87 = trunc i64 %86 to i32
  %88 = load ptr, ptr %72, align 4
  %89 = getelementptr i8, ptr %88, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #6, !srcloc !9
  br label %90

90:                                               ; preds = %5, %3
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_actmon_cpu_notify_cb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %103

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -84
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.devfreq, ptr %7, i32 0, i32 1
  %9 = tail call i32 @mutex_trylock(ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %99, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.cpufreq_freqs, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 32
  %15 = getelementptr i8, ptr %0, i32 40
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.devfreq, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = udiv i32 %16, %21
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = udiv i32 10000, %25
  %27 = zext i32 %22 to i64
  %28 = zext i32 %26 to i64
  %29 = mul nuw nsw i64 %28, %27
  %30 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %29, i32 0) #8, !srcloc !10
  %31 = extractvalue { i64, i32 } %30, 0
  %32 = extractvalue { i64, i32 } %30, 1
  %33 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %29, i64 %31, i32 %32) #8, !srcloc !11
  %34 = extractvalue { i64, i32 } %33, 0
  %35 = lshr i64 %34, 6
  %36 = tail call i64 @llvm.umin.i64(i64 %35, i64 4294967295) #6
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %23, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, %37
  br i1 %40, label %41, label %43

41:                                               ; preds = %11
  %42 = getelementptr inbounds %struct.devfreq, ptr %17, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %42) #6
  br label %103

43:                                               ; preds = %11
  %44 = icmp ult i32 %13, 1400000
  br i1 %44, label %52, label %45

45:                                               ; preds = %62, %60, %58, %56, %54, %52, %43
  %46 = phi ptr [ @actmon_emc_ratios, %43 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 1), %52 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 2), %54 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 3), %56 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 4), %58 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 5), %60 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 6), %62 ]
  %47 = getelementptr inbounds %struct.tegra_actmon_emc_ratio, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %0, i32 -64
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @llvm.umin.i32(i32 %48, i32 %50) #6
  br label %64

52:                                               ; preds = %43
  %53 = icmp ult i32 %13, 1200000
  br i1 %53, label %54, label %45

54:                                               ; preds = %52
  %55 = icmp ult i32 %13, 1100000
  br i1 %55, label %56, label %45

56:                                               ; preds = %54
  %57 = icmp ult i32 %13, 1000000
  br i1 %57, label %58, label %45

58:                                               ; preds = %56
  %59 = icmp ult i32 %13, 800000
  br i1 %59, label %60, label %45

60:                                               ; preds = %58
  %61 = icmp ult i32 %13, 500000
  br i1 %61, label %62, label %45

62:                                               ; preds = %60
  %63 = icmp ult i32 %13, 250000
  br i1 %63, label %64, label %45

64:                                               ; preds = %62, %45
  %65 = phi i32 [ %51, %45 ], [ 0, %62 ]
  %66 = getelementptr i8, ptr %0, i32 44
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, %37
  %69 = icmp ult i32 %68, %65
  %70 = select i1 %69, i32 %65, i32 0
  %71 = getelementptr inbounds %struct.cpufreq_freqs, ptr %2, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %72, 1400000
  br i1 %73, label %81, label %74

74:                                               ; preds = %91, %89, %87, %85, %83, %81, %64
  %75 = phi ptr [ @actmon_emc_ratios, %64 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 1), %81 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 2), %83 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 3), %85 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 4), %87 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 5), %89 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 6), %91 ]
  %76 = getelementptr inbounds %struct.tegra_actmon_emc_ratio, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr i8, ptr %0, i32 -64
  %79 = load i32, ptr %78, align 4
  %80 = tail call i32 @llvm.umin.i32(i32 %77, i32 %79) #6
  br label %93

81:                                               ; preds = %64
  %82 = icmp ult i32 %72, 1200000
  br i1 %82, label %83, label %74

83:                                               ; preds = %81
  %84 = icmp ult i32 %72, 1100000
  br i1 %84, label %85, label %74

85:                                               ; preds = %83
  %86 = icmp ult i32 %72, 1000000
  br i1 %86, label %87, label %74

87:                                               ; preds = %85
  %88 = icmp ult i32 %72, 800000
  br i1 %88, label %89, label %74

89:                                               ; preds = %87
  %90 = icmp ult i32 %72, 500000
  br i1 %90, label %91, label %74

91:                                               ; preds = %89
  %92 = icmp ult i32 %72, 250000
  br i1 %92, label %93, label %74

93:                                               ; preds = %91, %74
  %94 = phi i32 [ %80, %74 ], [ 0, %91 ]
  %95 = icmp ult i32 %68, %94
  %96 = select i1 %95, i32 %94, i32 0
  %97 = getelementptr inbounds %struct.devfreq, ptr %17, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %97) #6
  %98 = icmp eq i32 %70, %96
  br i1 %98, label %103, label %99

99:                                               ; preds = %93, %5
  %100 = getelementptr i8, ptr %0, i32 -44
  %101 = load ptr, ptr @system_wq, align 4
  %102 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %101, ptr noundef %100, i32 noundef 2) #6
  br label %103

103:                                              ; preds = %99, %93, %41, %3
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_actmon_delayed_update(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -40
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.devfreq, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #6
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @update_devfreq(ptr noundef %5) #6
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.devfreq, ptr %7, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_devfreq_add_governor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_devfreq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_tegra_devfreq_deinit_hw(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @reset_control_reset(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %6) #6
  tail call void @clk_unprepare(ptr noundef %6) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_governor_get_target(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %149, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 9
  %12 = tail call i32 %6(ptr noundef %10, ptr noundef %11) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %149

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 9, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tegra_devfreq, ptr %16, i32 0, i32 5
  %18 = getelementptr %struct.tegra_devfreq, ptr %16, i32 0, i32 10, i32 0
  %19 = getelementptr %struct.tegra_devfreq, ptr %16, i32 0, i32 10, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds %struct.devfreq, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = udiv i32 %20, %25
  %27 = load ptr, ptr %18, align 4
  %28 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = udiv i32 10000, %29
  %31 = zext i32 %26 to i64
  %32 = zext i32 %30 to i64
  %33 = mul nuw nsw i64 %32, %31
  %34 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %33, i32 0) #8, !srcloc !10
  %35 = extractvalue { i64, i32 } %34, 0
  %36 = extractvalue { i64, i32 } %34, 1
  %37 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %33, i64 %35, i32 %36) #8, !srcloc !11
  %38 = extractvalue { i64, i32 } %37, 0
  %39 = lshr i64 %38, 6
  %40 = tail call i64 @llvm.umin.i64(i64 %39, i64 4294967295) #6
  %41 = trunc i64 %40 to i32
  %42 = getelementptr %struct.tegra_devfreq, ptr %16, i32 0, i32 10, i32 0, i32 4
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %27, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = icmp ugt i32 %44, %41
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %77, label %48

48:                                               ; preds = %14
  %49 = tail call i32 @cpufreq_quick_get(i32 noundef 0) #6
  %50 = icmp ult i32 %49, 1400000
  br i1 %50, label %57, label %51

51:                                               ; preds = %67, %65, %63, %61, %59, %57, %48
  %52 = phi ptr [ @actmon_emc_ratios, %48 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 1), %57 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 2), %59 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 3), %61 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 4), %63 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 5), %65 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 6), %67 ]
  %53 = getelementptr inbounds %struct.tegra_actmon_emc_ratio, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %17, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %54, i32 %55) #6
  br label %69

57:                                               ; preds = %48
  %58 = icmp ult i32 %49, 1200000
  br i1 %58, label %59, label %51

59:                                               ; preds = %57
  %60 = icmp ult i32 %49, 1100000
  br i1 %60, label %61, label %51

61:                                               ; preds = %59
  %62 = icmp ult i32 %49, 1000000
  br i1 %62, label %63, label %51

63:                                               ; preds = %61
  %64 = icmp ult i32 %49, 800000
  br i1 %64, label %65, label %51

65:                                               ; preds = %63
  %66 = icmp ult i32 %49, 500000
  br i1 %66, label %67, label %51

67:                                               ; preds = %65
  %68 = icmp ult i32 %49, 250000
  br i1 %68, label %69, label %51

69:                                               ; preds = %67, %51
  %70 = phi i32 [ %56, %51 ], [ 0, %67 ]
  %71 = getelementptr %struct.tegra_devfreq, ptr %16, i32 0, i32 10, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %42, align 4
  %74 = add i32 %73, %72
  %75 = tail call i32 @llvm.umax.i32(i32 %74, i32 %70) #6
  %76 = load ptr, ptr %16, align 4
  br label %81

77:                                               ; preds = %14
  %78 = getelementptr %struct.tegra_devfreq, ptr %16, i32 0, i32 10, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, %41
  br label %81

81:                                               ; preds = %77, %69
  %82 = phi ptr [ %21, %77 ], [ %76, %69 ]
  %83 = phi i32 [ %80, %77 ], [ %75, %69 ]
  store i32 %83, ptr %42, align 4
  %84 = getelementptr %struct.tegra_devfreq, ptr %16, i32 0, i32 10, i32 1
  %85 = getelementptr %struct.tegra_devfreq, ptr %16, i32 0, i32 10, i32 1, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.devfreq, ptr %82, i32 0, i32 3
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %88, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = udiv i32 %86, %90
  %92 = load ptr, ptr %84, align 4
  %93 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %92, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = udiv i32 10000, %94
  %96 = zext i32 %91 to i64
  %97 = zext i32 %95 to i64
  %98 = mul nuw nsw i64 %97, %96
  %99 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %98, i32 0) #8, !srcloc !10
  %100 = extractvalue { i64, i32 } %99, 0
  %101 = extractvalue { i64, i32 } %99, 1
  %102 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %98, i64 %100, i32 %101) #8, !srcloc !11
  %103 = extractvalue { i64, i32 } %102, 0
  %104 = lshr i64 %103, 6
  %105 = tail call i64 @llvm.umin.i64(i64 %104, i64 4294967295) #6
  %106 = trunc i64 %105 to i32
  %107 = getelementptr %struct.tegra_devfreq, ptr %16, i32 0, i32 10, i32 1, i32 4
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %92, i32 0, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  %111 = icmp ugt i32 %109, %106
  %112 = select i1 %110, i1 true, i1 %111
  br i1 %112, label %141, label %113

113:                                              ; preds = %81
  %114 = tail call i32 @cpufreq_quick_get(i32 noundef 0) #6
  %115 = icmp ult i32 %114, 1400000
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = icmp ult i32 %114, 1200000
  br i1 %117, label %118, label %128

118:                                              ; preds = %116
  %119 = icmp ult i32 %114, 1100000
  br i1 %119, label %120, label %128

120:                                              ; preds = %118
  %121 = icmp ult i32 %114, 1000000
  br i1 %121, label %122, label %128

122:                                              ; preds = %120
  %123 = icmp ult i32 %114, 800000
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  %125 = icmp ult i32 %114, 500000
  br i1 %125, label %126, label %128

126:                                              ; preds = %124
  %127 = icmp ult i32 %114, 250000
  br i1 %127, label %134, label %128

128:                                              ; preds = %126, %124, %122, %120, %118, %116, %113
  %129 = phi ptr [ @actmon_emc_ratios, %113 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 1), %116 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 2), %118 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 3), %120 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 4), %122 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 5), %124 ], [ getelementptr inbounds ([7 x %struct.tegra_actmon_emc_ratio], ptr @actmon_emc_ratios, i32 0, i32 6), %126 ]
  %130 = getelementptr inbounds %struct.tegra_actmon_emc_ratio, ptr %129, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = load i32, ptr %17, align 4
  %133 = tail call i32 @llvm.umin.i32(i32 %131, i32 %132) #6
  br label %134

134:                                              ; preds = %128, %126
  %135 = phi i32 [ %133, %128 ], [ 0, %126 ]
  %136 = getelementptr %struct.tegra_devfreq, ptr %16, i32 0, i32 10, i32 1, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = load i32, ptr %107, align 4
  %139 = add i32 %138, %137
  %140 = tail call i32 @llvm.umax.i32(i32 %139, i32 %135) #6
  br label %145

141:                                              ; preds = %81
  %142 = getelementptr %struct.tegra_devfreq, ptr %16, i32 0, i32 10, i32 1, i32 3
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, %106
  br label %145

145:                                              ; preds = %141, %134
  %146 = phi i32 [ %144, %141 ], [ %140, %134 ]
  store i32 %146, ptr %107, align 4
  %147 = tail call i32 @llvm.umax.i32(i32 %83, i32 %146)
  %148 = mul i32 %147, 1000
  store i32 %148, ptr %1, align 4
  br label %149

149:                                              ; preds = %145, %8, %2
  %150 = phi i32 [ 0, %145 ], [ %12, %8 ], [ -22, %2 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_governor_event_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  store ptr %0, ptr %7, align 4
  switch i32 %1, label %33 [
    i32 1, label %8
    i32 2, label %16
    i32 3, label %18
    i32 4, label %23
    i32 5, label %25
  ]

8:                                                ; preds = %3
  tail call void @devfreq_monitor_start(ptr noundef %0) #6
  %9 = getelementptr inbounds %struct.tegra_devfreq, ptr %7, i32 0, i32 12
  %10 = load i8, ptr %9, align 4, !range !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  store i8 1, ptr %9, align 4
  %13 = tail call fastcc i32 @tegra_actmon_resume(ptr noundef %7) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %12
  store i8 0, ptr %9, align 4
  br label %33

16:                                               ; preds = %3
  tail call fastcc void @tegra_actmon_pause(ptr noundef %7) #6
  %17 = getelementptr inbounds %struct.tegra_devfreq, ptr %7, i32 0, i32 12
  store i8 0, ptr %17, align 4
  tail call void @devfreq_monitor_stop(ptr noundef %0) #6
  br label %33

18:                                               ; preds = %3
  %19 = load i32, ptr %2, align 4
  %20 = icmp ugt i32 %19, 256
  br i1 %20, label %33, label %21

21:                                               ; preds = %18
  tail call fastcc void @tegra_actmon_pause(ptr noundef %7)
  tail call void @devfreq_update_interval(ptr noundef %0, ptr noundef %2) #6
  %22 = tail call fastcc i32 @tegra_actmon_resume(ptr noundef %7)
  br label %33

23:                                               ; preds = %3
  tail call fastcc void @tegra_actmon_pause(ptr noundef %7) #6
  %24 = getelementptr inbounds %struct.tegra_devfreq, ptr %7, i32 0, i32 12
  store i8 0, ptr %24, align 4
  tail call void @devfreq_monitor_suspend(ptr noundef %0) #6
  br label %33

25:                                               ; preds = %3
  tail call void @devfreq_monitor_resume(ptr noundef %0) #6
  %26 = getelementptr inbounds %struct.tegra_devfreq, ptr %7, i32 0, i32 12
  %27 = load i8, ptr %26, align 4, !range !12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  store i8 1, ptr %26, align 4
  %30 = tail call fastcc i32 @tegra_actmon_resume(ptr noundef %7) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i8 0, ptr %26, align 4
  br label %33

33:                                               ; preds = %32, %29, %25, %23, %21, %18, %16, %15, %12, %8, %3
  %34 = phi i32 [ 0, %3 ], [ 0, %23 ], [ %22, %21 ], [ 0, %16 ], [ -22, %18 ], [ 0, %8 ], [ %13, %15 ], [ 0, %12 ], [ 0, %25 ], [ %30, %32 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_quick_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_actmon_pause(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.devfreq, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 12
  %10 = load i8, ptr %9, align 4, !range !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  tail call void @disable_irq(i32 noundef %14) #6
  %15 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 9
  %16 = tail call i32 @cpufreq_unregister_notifier(ptr noundef %15, i32 noundef 0) #6
  %17 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 8
  %18 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %17) #6
  %19 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 10, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #6, !srcloc !9
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -1) #6, !srcloc !9
  %23 = getelementptr %struct.tegra_devfreq, ptr %0, i32 0, i32 10, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #6, !srcloc !9
  %25 = load ptr, ptr %23, align 4
  %26 = getelementptr i8, ptr %25, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -1) #6, !srcloc !9
  %27 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 7
  %30 = tail call i32 @clk_notifier_unregister(ptr noundef %28, ptr noundef %29) #6
  br label %31

31:                                               ; preds = %12, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_update_interval(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_actmon_resume(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.devfreq, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %134, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 12
  %10 = load i8, ptr %9, align 4, !range !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %134, label %12

12:                                               ; preds = %8
  %13 = add i32 %6, -1
  %14 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #6, !srcloc !9
  %17 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 7
  %20 = tail call i32 @clk_notifier_register(ptr noundef %18, ptr noundef %19) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.devfreq, ptr %23, i32 0, i32 2, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.14) #7
  br label %134

26:                                               ; preds = %12
  %27 = load ptr, ptr %17, align 4
  %28 = tail call i32 @clk_get_rate(ptr noundef %27) #6
  %29 = udiv i32 %28, 1000
  %30 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 5
  %32 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 13
  br label %33

33:                                               ; preds = %33, %26
  %34 = phi i1 [ true, %26 ], [ false, %33 ]
  %35 = phi i32 [ 0, %26 ], [ 1, %33 ]
  %36 = getelementptr %struct.tegra_devfreq, ptr %0, i32 0, i32 10, i32 %35
  %37 = getelementptr %struct.tegra_devfreq, ptr %0, i32 0, i32 10, i32 %35, i32 3
  store i32 0, ptr %37, align 4
  %38 = load i32, ptr %30, align 4
  %39 = getelementptr %struct.tegra_devfreq, ptr %0, i32 0, i32 10, i32 %35, i32 4
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.devfreq, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = mul i32 %44, %38
  %46 = getelementptr %struct.tegra_devfreq, ptr %0, i32 0, i32 10, i32 %35, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr %struct.tegra_devfreq, ptr %0, i32 0, i32 10, i32 %35, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %45) #6, !srcloc !9
  %50 = load i32, ptr %31, align 4
  %51 = mul i32 %50, 6
  %52 = udiv i32 %51, 1000
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.devfreq, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = mul i32 %57, %52
  %59 = load i32, ptr %46, align 4
  %60 = tail call i32 @llvm.uadd.sat.i32(i32 %59, i32 %58) #6
  %61 = load ptr, ptr %47, align 4
  %62 = getelementptr i8, ptr %61, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #6, !srcloc !9
  %63 = load i32, ptr %46, align 4
  %64 = tail call i32 @llvm.usub.sat.i32(i32 %63, i32 %58) #6
  %65 = load ptr, ptr %47, align 4
  %66 = getelementptr i8, ptr %65, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #6, !srcloc !9
  %67 = load i32, ptr %30, align 4
  %68 = load ptr, ptr %0, align 4
  %69 = getelementptr inbounds %struct.devfreq, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %70, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = mul i32 %72, %67
  %74 = zext i32 %73 to i64
  %75 = load ptr, ptr %36, align 4
  %76 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %75, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = zext i32 %77 to i64
  %79 = mul nuw i64 %78, %74
  %80 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %79, i32 0) #8, !srcloc !10
  %81 = extractvalue { i64, i32 } %80, 0
  %82 = extractvalue { i64, i32 } %80, 1
  %83 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %79, i64 %81, i32 %82) #8, !srcloc !11
  %84 = extractvalue { i64, i32 } %83, 0
  %85 = lshr i64 %84, 6
  %86 = tail call i64 @llvm.umin.i64(i64 %85, i64 4294967295) #6
  %87 = trunc i64 %86 to i32
  %88 = load ptr, ptr %47, align 4
  %89 = getelementptr i8, ptr %88, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #6, !srcloc !9
  %90 = load ptr, ptr %36, align 4
  %91 = getelementptr inbounds %struct.tegra_devfreq_device_config, ptr %90, i32 0, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = zext i32 %92 to i64
  %94 = mul nuw i64 %93, %74
  %95 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %94, i32 0) #8, !srcloc !10
  %96 = extractvalue { i64, i32 } %95, 0
  %97 = extractvalue { i64, i32 } %95, 1
  %98 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %94, i64 %96, i32 %97) #8, !srcloc !11
  %99 = extractvalue { i64, i32 } %98, 0
  %100 = lshr i64 %99, 6
  %101 = tail call i64 @llvm.umin.i64(i64 %100, i64 4294967295) #6
  %102 = trunc i64 %101 to i32
  %103 = load ptr, ptr %47, align 4
  %104 = getelementptr i8, ptr %103, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #6, !srcloc !9
  %105 = load ptr, ptr %32, align 4
  %106 = getelementptr inbounds %struct.tegra_devfreq_soc_data, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = load ptr, ptr %47, align 4
  %109 = getelementptr i8, ptr %108, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %107) #6, !srcloc !9
  %110 = load ptr, ptr %47, align 4
  %111 = getelementptr i8, ptr %110, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 -1) #6, !srcloc !9
  %112 = load ptr, ptr %47, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 -1053551616) #6, !srcloc !9
  br i1 %34, label %33, label %113

113:                                              ; preds = %33
  %114 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 9
  %115 = tail call i32 @cpufreq_register_notifier(ptr noundef %114, i32 noundef 0) #6
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %0, align 4
  %119 = getelementptr inbounds %struct.devfreq, ptr %118, i32 0, i32 2, i32 1
  %120 = load ptr, ptr %119, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.15, i32 noundef %115) #7
  %121 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 10, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 0) #6, !srcloc !9
  %123 = load ptr, ptr %121, align 4
  %124 = getelementptr i8, ptr %123, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 -1) #6, !srcloc !9
  %125 = getelementptr %struct.tegra_devfreq, ptr %0, i32 0, i32 10, i32 1, i32 1
  %126 = load ptr, ptr %125, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 0) #6, !srcloc !9
  %127 = load ptr, ptr %125, align 4
  %128 = getelementptr i8, ptr %127, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 -1) #6, !srcloc !9
  %129 = load ptr, ptr %17, align 4
  %130 = tail call i32 @clk_notifier_unregister(ptr noundef %129, ptr noundef %19) #6
  br label %134

131:                                              ; preds = %113
  %132 = getelementptr inbounds %struct.tegra_devfreq, ptr %0, i32 0, i32 11
  %133 = load i32, ptr %132, align 4
  tail call void @enable_irq(i32 noundef %133) #6
  br label %134

134:                                              ; preds = %131, %117, %22, %8, %1
  %135 = phi i32 [ %20, %22 ], [ %115, %117 ], [ 0, %131 ], [ 0, %8 ], [ 0, %1 ]
  ret i32 %135
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_devfreq_target(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @devfreq_recommended_opp(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %7) #7
  %8 = ptrtoint ptr %4 to i32
  br label %11

9:                                                ; preds = %3
  %10 = tail call i32 @dev_pm_opp_set_opp(ptr noundef %0, ptr noundef %4) #6
  tail call void @dev_pm_opp_put(ptr noundef %4) #6
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %8, %6 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_devfreq_get_dev_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_devfreq, ptr %4, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 3
  store ptr %4, ptr %7, align 4
  %8 = mul i32 %6, 1000
  %9 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tegra_devfreq, ptr %4, i32 0, i32 10, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !8
  %14 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 1
  %15 = shl i32 %13, 2
  store i32 %15, ptr %14, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.devfreq, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %20, %6
  store i32 %21, ptr %1, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %15, i32 %21)
  store i32 %22, ptr %14, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_opp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!8 = !{i64 4066955}
!9 = !{i64 4066537}
!10 = !{i64 893743, i64 893770, i64 893792, i64 893820}
!11 = !{i64 894151, i64 894178, i64 894211, i64 894232, i64 894259, i64 894285}
!12 = !{i8 0, i8 2}
