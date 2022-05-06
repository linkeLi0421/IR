; ModuleID = '/llk/IR/drivers/memory/samsung/exynos5422-dmc.c_pt.bc'
source_filename = "../drivers/memory/samsung/exynos5422-dmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.exynos5_dmc = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, ptr, ptr, ptr, %struct.mutex, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [2 x i64], i32, i32, i8 }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.dmc_opp_table = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.lpddr3_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpddr3_min_tck = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.69, ptr }
%union.anon.69 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.devfreq_event_data = type { i32, i32 }

@__param_str_irqmode = internal constant [8 x i8] c"irqmode\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@irqmode = internal global i32 0, align 4
@__param_irqmode = internal constant %struct.kernel_param { ptr @__param_str_irqmode, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @irqmode } }, section "__param", align 4
@__UNIQUE_ID_irqmodetype247 = internal constant [21 x i8] c"parmtype=irqmode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irqmode248 = internal constant [53 x i8] c"parm=irqmode:Enable IRQ mode (0=off [default], 1=on)\00", section ".modinfo", align 1
@exynos5_dmc_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5422-dmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description287 = internal constant [97 x i8] c"description=Driver for Exynos5422 Dynamic Memory Controller dynamic frequency and voltage change\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author289 = internal constant [19 x i8] c"author=Lukasz Luba\00", section ".modinfo", align 1
@exynos5_dmc_platdrv = internal global %struct.platform_driver { ptr @exynos5_dmc_probe, ptr @exynos5_dmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos5_dmc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"exynos5-dmc\00", align 1
@exynos5_dmc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&dmc->lock\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"samsung,syscon-clk\00", align 1
@exynos5_dmc_df_profile = internal global %struct.devfreq_dev_profile { i32 0, i32 0, i32 1, i8 0, ptr @exynos5_dmc_target, ptr @exynos5_dmc_get_status, ptr @exynos5_dmc_get_cur_freq, ptr null, ptr null, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"couldn't initialize frequency settings\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"couldn't initialize timings settings\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"couldn't get access to PAUSE register\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"drex_0\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"drex_1\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"couldn't grab IRQ\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"couldn't probe performance counters\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"simple_ondemand\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"DMC initialized, in irq mode: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Failed to get OPP table\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"could not set event counter\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"fout_spll\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"fout_bpll\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"mout_mclk_cdrex\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"mout_bpll\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"mout_mx_mspll_ccore\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"ff_dout_spll2\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"mout_sclk_spll\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"device-handle\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"could not find 'device-handle' in DT\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"could not get timings from DT\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"could not get tck from DT\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"devfreq failed with %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"devfreq-events\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"could not get devfreq-event counters\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"could not enable event counter\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description287, ptr @__UNIQUE_ID_irqmode248, ptr @__UNIQUE_ID_irqmodetype247, ptr @__UNIQUE_ID_license288, ptr @__param_irqmode], section "llvm.metadata"

@__mod_of__exynos5_dmc_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @exynos5_dmc_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos5_dmc_platdrv, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos5_dmc_platdrv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_dmc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 168, i32 noundef 3520) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %233, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos5_dmc_probe.__key) #8
  store ptr %4, ptr %7, align 8
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %11, align 8
  %12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %13 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 3
  store ptr %12, ptr %13, align 8
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = ptrtoint ptr %12 to i32
  br label %233

17:                                               ; preds = %9
  %18 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #8
  %19 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 4
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = ptrtoint ptr %18 to i32
  br label %233

23:                                               ; preds = %17
  %24 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %6, ptr noundef nonnull @.str.2) #8
  %25 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 5
  store ptr %24, ptr %25, align 8
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i32
  br label %233

29:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %30 = load ptr, ptr %7, align 8
  %31 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %30) #8
  %32 = icmp slt i32 %31, 0
  %33 = load ptr, ptr %7, align 8
  br i1 %32, label %34, label %35

34:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.13) #9
  br label %70

35:                                               ; preds = %29
  %36 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %33) #8
  %37 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 10
  store i32 %36, ptr %37, align 4
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 8) #8
  %39 = extractvalue { i32, i1 } %38, 1
  br i1 %39, label %40, label %42, !prof !8

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 9
  store ptr null, ptr %41, align 8
  br label %70

42:                                               ; preds = %35
  %43 = load ptr, ptr %7, align 8
  %44 = extractvalue { i32, i1 } %38, 0
  %45 = tail call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef %44, i32 noundef 3264) #8
  %46 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 9
  store ptr %45, ptr %46, align 8
  %47 = icmp eq ptr %45, null
  br i1 %47, label %70, label %48

48:                                               ; preds = %42
  %49 = load i32, ptr %37, align 4
  store i32 -1, ptr %3, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %56, %48
  %52 = phi i32 [ %65, %56 ], [ 0, %48 ]
  %53 = load ptr, ptr %7, align 8
  %54 = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %53, ptr noundef nonnull %3) #8
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %76, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %3, align 4
  %58 = load ptr, ptr %46, align 8
  %59 = xor i32 %52, -1
  %60 = add i32 %49, %59
  %61 = getelementptr %struct.dmc_opp_table, ptr %58, i32 %60
  store i32 %57, ptr %61, align 4
  %62 = call i32 @dev_pm_opp_get_voltage(ptr noundef %54) #8
  %63 = load ptr, ptr %46, align 8
  %64 = getelementptr %struct.dmc_opp_table, ptr %63, i32 %60, i32 1
  store i32 %62, ptr %64, align 4
  call void @dev_pm_opp_put(ptr noundef %54) #8
  %65 = add nuw nsw i32 %52, 1
  %66 = load i32, ptr %3, align 4
  %67 = add i32 %66, -1
  store i32 %67, ptr %3, align 4
  %68 = load i32, ptr %37, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %51, label %72

70:                                               ; preds = %42, %40, %34
  %71 = phi i32 [ -12, %40 ], [ -12, %42 ], [ %31, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %78

72:                                               ; preds = %56, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %73 = call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.4) #8
  %74 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 20
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %80, label %82

76:                                               ; preds = %51
  %77 = ptrtoint ptr %54 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %78

78:                                               ; preds = %76, %70
  %79 = phi i32 [ %71, %70 ], [ %77, %76 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  br label %233

80:                                               ; preds = %72
  %81 = ptrtoint ptr %73 to i32
  br label %233

82:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !9
  %83 = load ptr, ptr %7, align 8
  %84 = call ptr @devm_clk_get(ptr noundef %83, ptr noundef nonnull @.str.15) #8
  %85 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 21
  store ptr %84, ptr %85, align 8
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %159, label %87

87:                                               ; preds = %82
  %88 = load ptr, ptr %7, align 8
  %89 = call ptr @devm_clk_get(ptr noundef %88, ptr noundef nonnull @.str.16) #8
  %90 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 22
  store ptr %89, ptr %90, align 4
  %91 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %159, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr %7, align 8
  %94 = call ptr @devm_clk_get(ptr noundef %93, ptr noundef nonnull @.str.17) #8
  %95 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 25
  store ptr %94, ptr %95, align 8
  %96 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %159, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr %7, align 8
  %99 = call ptr @devm_clk_get(ptr noundef %98, ptr noundef nonnull @.str.18) #8
  %100 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 24
  store ptr %99, ptr %100, align 4
  %101 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %159, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %7, align 8
  %104 = call ptr @devm_clk_get(ptr noundef %103, ptr noundef nonnull @.str.19) #8
  %105 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 26
  store ptr %104, ptr %105, align 4
  %106 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %159, label %107

107:                                              ; preds = %102
  %108 = load ptr, ptr %7, align 8
  %109 = call ptr @devm_clk_get(ptr noundef %108, ptr noundef nonnull @.str.20) #8
  %110 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 23
  store ptr %109, ptr %110, align 8
  %111 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load ptr, ptr %7, align 8
  %114 = call ptr @devm_clk_get(ptr noundef %113, ptr noundef nonnull @.str.21) #8
  store ptr %114, ptr %110, align 8
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %159, label %116

116:                                              ; preds = %112, %107
  %117 = load ptr, ptr %95, align 8
  %118 = call i32 @clk_get_rate(ptr noundef %117) #8
  %119 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 7
  store i32 %118, ptr %119, align 8
  %120 = load i32, ptr %37, align 4
  %121 = load ptr, ptr %46, align 8
  br label %122

122:                                              ; preds = %126, %116
  %123 = phi i32 [ %120, %116 ], [ %124, %126 ]
  %124 = add i32 %123, -1
  %125 = icmp sgt i32 %124, -1
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr %struct.dmc_opp_table, ptr %121, i32 %124
  %128 = load i32, ptr %127, align 4
  %129 = icmp ugt i32 %128, %118
  br i1 %129, label %122, label %134

130:                                              ; preds = %122
  %131 = add i32 %120, -1
  %132 = getelementptr %struct.dmc_opp_table, ptr %121, i32 %131
  %133 = load i32, ptr %132, align 4
  br label %134

134:                                              ; preds = %130, %126
  %135 = phi i32 [ %133, %130 ], [ %128, %126 ]
  store i32 %135, ptr %119, align 8
  store i32 %135, ptr @exynos5_dmc_df_profile, align 4
  %136 = load ptr, ptr %7, align 8
  %137 = call ptr @devfreq_recommended_opp(ptr noundef %136, ptr noundef %119, i32 noundef 0) #8
  %138 = icmp ugt ptr %137, inttoptr (i32 -4096 to ptr)
  br i1 %138, label %159, label %139

139:                                              ; preds = %134
  %140 = call i32 @dev_pm_opp_get_freq(ptr noundef %137) #8
  %141 = call i32 @dev_pm_opp_get_voltage(ptr noundef %137) #8
  call void @dev_pm_opp_put(ptr noundef %137) #8
  %142 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 8
  store i32 %141, ptr %142, align 4
  %143 = load ptr, ptr %105, align 4
  %144 = load ptr, ptr %110, align 8
  %145 = call i32 @clk_set_parent(ptr noundef %143, ptr noundef %144) #8
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %233

148:                                              ; preds = %139
  %149 = load ptr, ptr %90, align 4
  call fastcc void @clk_prepare_enable(ptr noundef %149) #8
  %150 = load ptr, ptr %100, align 4
  call fastcc void @clk_prepare_enable(ptr noundef %150) #8
  %151 = load ptr, ptr %25, align 8
  %152 = call i32 @regmap_read(ptr noundef %151, i32 noundef 132864, ptr noundef nonnull %2) #8
  %153 = load i32, ptr %2, align 4
  %154 = and i32 %153, -4
  store i32 %154, ptr %2, align 4
  %155 = load ptr, ptr %25, align 8
  %156 = call i32 @regmap_write(ptr noundef %155, i32 noundef 132864, i32 noundef %154) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %157 = call fastcc i32 @of_get_dram_timings(ptr noundef nonnull %7)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %162

159:                                              ; preds = %134, %112, %102, %97, %92, %87, %82
  %160 = phi ptr [ %84, %82 ], [ %89, %87 ], [ %94, %92 ], [ %99, %97 ], [ %104, %102 ], [ %114, %112 ], [ %137, %134 ]
  %161 = ptrtoint ptr %160 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %233

162:                                              ; preds = %148
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.5) #9
  br label %229

163:                                              ; preds = %148
  %164 = call fastcc i32 @exynos5_dmc_set_pause_on_switching(ptr noundef nonnull %7)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.6) #9
  br label %229

167:                                              ; preds = %163
  %168 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.7) #8
  %169 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.8) #8
  %170 = icmp sgt i32 %168, 0
  %171 = icmp sgt i32 %169, 0
  %172 = select i1 %170, i1 %171, i1 false
  %173 = load i32, ptr @irqmode, align 4
  %174 = icmp ne i32 %173, 0
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %176, label %201

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load ptr, ptr %4, align 4
  br label %182

182:                                              ; preds = %180, %176
  %183 = phi ptr [ %181, %180 ], [ %178, %176 ]
  %184 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %168, ptr noundef null, ptr noundef nonnull @dmc_irq_thread, i32 noundef 8192, ptr noundef %183, ptr noundef nonnull %7) #8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #9
  br label %229

187:                                              ; preds = %182
  %188 = load ptr, ptr %177, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = load ptr, ptr %4, align 4
  br label %192

192:                                              ; preds = %190, %187
  %193 = phi ptr [ %191, %190 ], [ %188, %187 ]
  %194 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %169, ptr noundef null, ptr noundef nonnull @dmc_irq_thread, i32 noundef 8192, ptr noundef %193, ptr noundef nonnull %7) #8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %192
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #9
  br label %229

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 2
  store i32 55, ptr %198, align 8
  %199 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 2, i32 1
  store i32 5, ptr %199, align 4
  call fastcc void @exynos5_dmc_enable_perf_events(ptr noundef nonnull %7)
  %200 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 32
  store i8 1, ptr %200, align 8
  br label %208

201:                                              ; preds = %167
  %202 = call fastcc i32 @exynos5_performance_counters_init(ptr noundef nonnull %7)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %201
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.10) #9
  br label %229

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 2
  store i32 10, ptr %206, align 8
  %207 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 2, i32 1
  store i32 5, ptr %207, align 4
  store i32 100, ptr getelementptr inbounds (%struct.devfreq_dev_profile, ptr @exynos5_dmc_df_profile, i32 0, i32 1), align 4
  br label %208

208:                                              ; preds = %205, %197
  %209 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 2
  %210 = call ptr @devm_devfreq_add_device(ptr noundef %4, ptr noundef nonnull @exynos5_dmc_df_profile, ptr noundef nonnull @.str.11, ptr noundef %209) #8
  %211 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 1
  store ptr %210, ptr %211, align 4
  %212 = icmp ugt ptr %210, inttoptr (i32 -4096 to ptr)
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = ptrtoint ptr %210 to i32
  %215 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 32
  %216 = load i8, ptr %215, align 8, !range !10
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %228, label %227

218:                                              ; preds = %208
  %219 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 32
  %220 = load i8, ptr %219, align 8, !range !10
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %218
  call fastcc void @exynos5_dmc_start_perf_events(ptr noundef nonnull %7)
  %223 = load i8, ptr %219, align 8, !range !10
  %224 = zext i8 %223 to i32
  br label %225

225:                                              ; preds = %222, %218
  %226 = phi i32 [ 0, %218 ], [ %224, %222 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %226) #9
  br label %233

227:                                              ; preds = %213
  call fastcc void @exynos5_dmc_disable_perf_events(ptr noundef nonnull %7)
  br label %229

228:                                              ; preds = %213
  call fastcc void @exynos5_counters_disable_edev(ptr noundef nonnull %7)
  br label %229

229:                                              ; preds = %228, %227, %204, %196, %186, %166, %162
  %230 = phi i32 [ %157, %162 ], [ %164, %166 ], [ %184, %186 ], [ %194, %196 ], [ %214, %227 ], [ %214, %228 ], [ %202, %204 ]
  %231 = load ptr, ptr %100, align 4
  call void @clk_disable(ptr noundef %231) #8
  call void @clk_unprepare(ptr noundef %231) #8
  %232 = load ptr, ptr %90, align 4
  call void @clk_disable(ptr noundef %232) #8
  call void @clk_unprepare(ptr noundef %232) #8
  br label %233

233:                                              ; preds = %229, %225, %159, %147, %80, %78, %27, %21, %15, %1
  %234 = phi i32 [ %16, %15 ], [ %22, %21 ], [ %28, %27 ], [ %79, %78 ], [ %81, %80 ], [ %230, %229 ], [ 0, %225 ], [ -12, %1 ], [ %161, %159 ], [ %145, %147 ]
  ret i32 %234
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_dmc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos5_dmc, ptr %3, i32 0, i32 32
  %5 = load i8, ptr %4, align 8, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call fastcc void @exynos5_dmc_disable_perf_events(ptr noundef %3)
  br label %30

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.exynos5_dmc, ptr %3, i32 0, i32 28
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.exynos5_dmc, ptr %3, i32 0, i32 27
  br label %14

14:                                               ; preds = %26, %12
  %15 = phi i32 [ %10, %12 ], [ %27, %26 ]
  %16 = phi i32 [ 0, %12 ], [ %28, %26 ]
  %17 = load ptr, ptr %13, align 8
  %18 = getelementptr ptr, ptr %17, i32 %16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = tail call i32 @devfreq_event_disable_edev(ptr noundef nonnull %19) #8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %9, align 4
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i32 [ %25, %24 ], [ %15, %14 ]
  %28 = add nuw nsw i32 %16, 1
  %29 = icmp slt i32 %28, %27
  br i1 %29, label %14, label %30

30:                                               ; preds = %26, %21, %8, %7
  %31 = getelementptr inbounds %struct.exynos5_dmc, ptr %3, i32 0, i32 24
  %32 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %32) #8
  tail call void @clk_unprepare(ptr noundef %32) #8
  %33 = getelementptr inbounds %struct.exynos5_dmc, ptr %3, i32 0, i32 22
  %34 = load ptr, ptr %33, align 4
  tail call void @clk_disable(ptr noundef %34) #8
  tail call void @clk_unprepare(ptr noundef %34) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @of_get_dram_timings(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !9
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.22, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %7 = icmp ne i32 %6, 0
  %8 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %7, i1 true, i1 %9
  %11 = load ptr, ptr %0, align 8
  br i1 %10, label %12, label %13

12:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.23) #9
  br label %400

13:                                               ; preds = %1
  %14 = call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 76, i32 noundef 3264) #8
  %15 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 12
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %400, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8
  %19 = call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef 76, i32 noundef 3264) #8
  %20 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 13
  store ptr %19, ptr %20, align 8
  %21 = icmp eq ptr %19, null
  br i1 %21, label %400, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 8
  %24 = call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef 76, i32 noundef 3264) #8
  %25 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 14
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %400, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 11
  %30 = call ptr @of_lpddr3_get_ddr_timings(ptr noundef nonnull %8, ptr noundef %28, i32 noundef 6, ptr noundef %29) #8
  %31 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 15
  store ptr %30, ptr %31, align 8
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  call void @of_node_put(ptr noundef nonnull %8) #8
  %34 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.24) #9
  br label %400

35:                                               ; preds = %27
  %36 = load ptr, ptr %0, align 8
  %37 = call ptr @of_lpddr3_get_min_tck(ptr noundef nonnull %8, ptr noundef %36) #8
  %38 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 16
  store ptr %37, ptr %38, align 4
  %39 = icmp eq ptr %37, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 10
  %42 = load i32, ptr %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %386

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 9
  br label %48

46:                                               ; preds = %35
  call void @of_node_put(ptr noundef nonnull %8) #8
  %47 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.25) #9
  br label %400

48:                                               ; preds = %48, %44
  %49 = phi i32 [ 0, %44 ], [ %383, %48 ]
  %50 = load ptr, ptr %45, align 8
  %51 = getelementptr %struct.dmc_opp_table, ptr %50, i32 %49
  %52 = load i32, ptr %51, align 4
  %53 = udiv i32 %52, 1000000
  %54 = udiv i32 1000000, %53
  %55 = load ptr, ptr %15, align 4
  %56 = getelementptr i32, ptr %55, i32 %49
  %57 = load ptr, ptr %20, align 8
  %58 = getelementptr i32, ptr %57, i32 %49
  %59 = load ptr, ptr %25, align 4
  %60 = getelementptr i32, ptr %59, i32 %49
  store i32 0, ptr %56, align 4
  store i32 0, ptr %58, align 4
  store i32 0, ptr %60, align 4
  %61 = load ptr, ptr %31, align 8
  %62 = getelementptr inbounds %struct.lpddr3_timings, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = freeze i32 %63
  %65 = freeze i32 %54
  %66 = udiv i32 %64, %65
  %67 = mul i32 %66, %65
  %68 = sub i32 %64, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = add nuw nsw i32 %66, %70
  %72 = load ptr, ptr %38, align 4
  %73 = load i32, ptr %72, align 4
  %74 = call i32 @llvm.umax.i32(i32 %71, i32 %73) #8
  %75 = shl i32 %74, 24
  %76 = load i32, ptr %56, align 4
  %77 = or i32 %75, %76
  store i32 %77, ptr %56, align 4
  %78 = load ptr, ptr %31, align 8
  %79 = getelementptr inbounds %struct.lpddr3_timings, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = freeze i32 %80
  %82 = freeze i32 %54
  %83 = udiv i32 %81, %82
  %84 = mul i32 %83, %82
  %85 = sub i32 %81, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = add nuw nsw i32 %83, %87
  %89 = load ptr, ptr %38, align 4
  %90 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %89, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = call i32 @llvm.umax.i32(i32 %88, i32 %91) #8
  %93 = shl i32 %92, 20
  %94 = or i32 %93, %77
  store i32 %94, ptr %56, align 4
  %95 = load ptr, ptr %31, align 8
  %96 = getelementptr inbounds %struct.lpddr3_timings, ptr %95, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = freeze i32 %97
  %99 = freeze i32 %54
  %100 = udiv i32 %98, %99
  %101 = mul i32 %100, %99
  %102 = sub i32 %98, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = add nuw nsw i32 %100, %104
  %106 = load ptr, ptr %38, align 4
  %107 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = call i32 @llvm.umax.i32(i32 %105, i32 %108) #8
  %110 = shl i32 %109, 16
  %111 = or i32 %110, %94
  store i32 %111, ptr %56, align 4
  %112 = load ptr, ptr %31, align 8
  %113 = getelementptr inbounds %struct.lpddr3_timings, ptr %112, i32 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = freeze i32 %114
  %116 = freeze i32 %54
  %117 = udiv i32 %115, %116
  %118 = mul i32 %117, %116
  %119 = sub i32 %115, %118
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = add nuw nsw i32 %117, %121
  %123 = load ptr, ptr %38, align 4
  %124 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %123, i32 0, i32 4
  %125 = load i32, ptr %124, align 4
  %126 = call i32 @llvm.umax.i32(i32 %122, i32 %125) #8
  %127 = shl i32 %126, 12
  %128 = or i32 %127, %111
  store i32 %128, ptr %56, align 4
  %129 = load ptr, ptr %31, align 8
  %130 = getelementptr inbounds %struct.lpddr3_timings, ptr %129, i32 0, i32 7
  %131 = load i32, ptr %130, align 4
  %132 = freeze i32 %131
  %133 = freeze i32 %54
  %134 = udiv i32 %132, %133
  %135 = mul i32 %134, %133
  %136 = sub i32 %132, %135
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = add nuw nsw i32 %134, %138
  %140 = load ptr, ptr %38, align 4
  %141 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %140, i32 0, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = call i32 @llvm.umax.i32(i32 %139, i32 %142) #8
  %144 = shl i32 %143, 6
  %145 = or i32 %144, %128
  store i32 %145, ptr %56, align 4
  %146 = load ptr, ptr %31, align 8
  %147 = getelementptr inbounds %struct.lpddr3_timings, ptr %146, i32 0, i32 8
  %148 = load i32, ptr %147, align 4
  %149 = freeze i32 %148
  %150 = freeze i32 %54
  %151 = udiv i32 %149, %150
  %152 = mul i32 %151, %150
  %153 = sub i32 %149, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = add nuw nsw i32 %151, %155
  %157 = load ptr, ptr %38, align 4
  %158 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %157, i32 0, i32 6
  %159 = load i32, ptr %158, align 4
  %160 = call i32 @llvm.umax.i32(i32 %156, i32 %159) #8
  %161 = or i32 %160, %145
  store i32 %161, ptr %56, align 4
  %162 = load ptr, ptr %31, align 8
  %163 = getelementptr inbounds %struct.lpddr3_timings, ptr %162, i32 0, i32 9
  %164 = load i32, ptr %163, align 4
  %165 = freeze i32 %164
  %166 = freeze i32 %54
  %167 = udiv i32 %165, %166
  %168 = mul i32 %167, %166
  %169 = sub i32 %165, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = add nuw nsw i32 %167, %171
  %173 = load ptr, ptr %38, align 4
  %174 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %173, i32 0, i32 7
  %175 = load i32, ptr %174, align 4
  %176 = call i32 @llvm.umax.i32(i32 %172, i32 %175) #8
  %177 = shl i32 %176, 28
  %178 = load i32, ptr %58, align 4
  %179 = or i32 %177, %178
  store i32 %179, ptr %58, align 4
  %180 = load ptr, ptr %31, align 8
  %181 = getelementptr inbounds %struct.lpddr3_timings, ptr %180, i32 0, i32 10
  %182 = load i32, ptr %181, align 4
  %183 = freeze i32 %182
  %184 = freeze i32 %54
  %185 = udiv i32 %183, %184
  %186 = mul i32 %185, %184
  %187 = sub i32 %183, %186
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = add nuw nsw i32 %185, %189
  %191 = load ptr, ptr %38, align 4
  %192 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %191, i32 0, i32 8
  %193 = load i32, ptr %192, align 4
  %194 = call i32 @llvm.umax.i32(i32 %190, i32 %193) #8
  %195 = shl i32 %194, 24
  %196 = or i32 %195, %179
  store i32 %196, ptr %58, align 4
  %197 = load ptr, ptr %31, align 8
  %198 = getelementptr inbounds %struct.lpddr3_timings, ptr %197, i32 0, i32 11
  %199 = load i32, ptr %198, align 4
  %200 = freeze i32 %199
  %201 = freeze i32 %54
  %202 = udiv i32 %200, %201
  %203 = mul i32 %202, %201
  %204 = sub i32 %200, %203
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = add nuw nsw i32 %202, %206
  %208 = load ptr, ptr %38, align 4
  %209 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %208, i32 0, i32 9
  %210 = load i32, ptr %209, align 4
  %211 = call i32 @llvm.umax.i32(i32 %207, i32 %210) #8
  %212 = shl i32 %211, 20
  %213 = or i32 %212, %196
  store i32 %213, ptr %58, align 4
  %214 = load ptr, ptr %31, align 8
  %215 = getelementptr inbounds %struct.lpddr3_timings, ptr %214, i32 0, i32 12
  %216 = load i32, ptr %215, align 4
  %217 = freeze i32 %216
  %218 = freeze i32 %54
  %219 = udiv i32 %217, %218
  %220 = mul i32 %219, %218
  %221 = sub i32 %217, %220
  %222 = icmp ne i32 %221, 0
  %223 = zext i1 %222 to i32
  %224 = add nuw nsw i32 %219, %223
  %225 = load ptr, ptr %38, align 4
  %226 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %225, i32 0, i32 10
  %227 = load i32, ptr %226, align 4
  %228 = call i32 @llvm.umax.i32(i32 %224, i32 %227) #8
  %229 = shl i32 %228, 14
  %230 = or i32 %229, %213
  store i32 %230, ptr %58, align 4
  %231 = load ptr, ptr %31, align 8
  %232 = getelementptr inbounds %struct.lpddr3_timings, ptr %231, i32 0, i32 13
  %233 = load i32, ptr %232, align 4
  %234 = freeze i32 %233
  %235 = freeze i32 %54
  %236 = udiv i32 %234, %235
  %237 = mul i32 %236, %235
  %238 = sub i32 %234, %237
  %239 = icmp ne i32 %238, 0
  %240 = zext i1 %239 to i32
  %241 = add nuw nsw i32 %236, %240
  %242 = load ptr, ptr %38, align 4
  %243 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %242, i32 0, i32 11
  %244 = load i32, ptr %243, align 4
  %245 = call i32 @llvm.umax.i32(i32 %241, i32 %244) #8
  %246 = shl i32 %245, 12
  %247 = or i32 %246, %230
  store i32 %247, ptr %58, align 4
  %248 = load ptr, ptr %31, align 8
  %249 = getelementptr inbounds %struct.lpddr3_timings, ptr %248, i32 0, i32 14
  %250 = load i32, ptr %249, align 4
  %251 = freeze i32 %250
  %252 = freeze i32 %54
  %253 = udiv i32 %251, %252
  %254 = mul i32 %253, %252
  %255 = sub i32 %251, %254
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i32
  %258 = add nuw nsw i32 %253, %257
  %259 = load ptr, ptr %38, align 4
  %260 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %259, i32 0, i32 12
  %261 = load i32, ptr %260, align 4
  %262 = call i32 @llvm.umax.i32(i32 %258, i32 %261) #8
  %263 = shl i32 %262, 8
  %264 = or i32 %263, %247
  store i32 %264, ptr %58, align 4
  %265 = load ptr, ptr %31, align 8
  %266 = getelementptr inbounds %struct.lpddr3_timings, ptr %265, i32 0, i32 15
  %267 = load i32, ptr %266, align 4
  %268 = freeze i32 %267
  %269 = freeze i32 %54
  %270 = udiv i32 %268, %269
  %271 = mul i32 %270, %269
  %272 = sub i32 %268, %271
  %273 = icmp ne i32 %272, 0
  %274 = zext i1 %273 to i32
  %275 = add nuw nsw i32 %270, %274
  %276 = load ptr, ptr %38, align 4
  %277 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %276, i32 0, i32 13
  %278 = load i32, ptr %277, align 4
  %279 = call i32 @llvm.umax.i32(i32 %275, i32 %278) #8
  %280 = shl i32 %279, 4
  %281 = or i32 %280, %264
  store i32 %281, ptr %58, align 4
  %282 = load ptr, ptr %31, align 8
  %283 = getelementptr inbounds %struct.lpddr3_timings, ptr %282, i32 0, i32 16
  %284 = load i32, ptr %283, align 4
  %285 = freeze i32 %284
  %286 = freeze i32 %54
  %287 = udiv i32 %285, %286
  %288 = mul i32 %287, %286
  %289 = sub i32 %285, %288
  %290 = icmp ne i32 %289, 0
  %291 = zext i1 %290 to i32
  %292 = add nuw nsw i32 %287, %291
  %293 = load ptr, ptr %38, align 4
  %294 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %293, i32 0, i32 14
  %295 = load i32, ptr %294, align 4
  %296 = call i32 @llvm.umax.i32(i32 %292, i32 %295) #8
  %297 = or i32 %296, %281
  store i32 %297, ptr %58, align 4
  %298 = load ptr, ptr %31, align 8
  %299 = getelementptr inbounds %struct.lpddr3_timings, ptr %298, i32 0, i32 17
  %300 = load i32, ptr %299, align 4
  %301 = freeze i32 %300
  %302 = freeze i32 %54
  %303 = udiv i32 %301, %302
  %304 = mul i32 %303, %302
  %305 = sub i32 %301, %304
  %306 = icmp ne i32 %305, 0
  %307 = zext i1 %306 to i32
  %308 = add nuw nsw i32 %303, %307
  %309 = load ptr, ptr %38, align 4
  %310 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %309, i32 0, i32 15
  %311 = load i32, ptr %310, align 4
  %312 = call i32 @llvm.umax.i32(i32 %308, i32 %311) #8
  %313 = shl i32 %312, 26
  %314 = load i32, ptr %60, align 4
  %315 = or i32 %313, %314
  store i32 %315, ptr %60, align 4
  %316 = load ptr, ptr %31, align 8
  %317 = getelementptr inbounds %struct.lpddr3_timings, ptr %316, i32 0, i32 18
  %318 = load i32, ptr %317, align 4
  %319 = freeze i32 %318
  %320 = freeze i32 %54
  %321 = udiv i32 %319, %320
  %322 = mul i32 %321, %320
  %323 = sub i32 %319, %322
  %324 = icmp ne i32 %323, 0
  %325 = zext i1 %324 to i32
  %326 = add nuw nsw i32 %321, %325
  %327 = load ptr, ptr %38, align 4
  %328 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %327, i32 0, i32 16
  %329 = load i32, ptr %328, align 4
  %330 = call i32 @llvm.umax.i32(i32 %326, i32 %329) #8
  %331 = shl i32 %330, 16
  %332 = or i32 %331, %315
  store i32 %332, ptr %60, align 4
  %333 = load ptr, ptr %31, align 8
  %334 = getelementptr inbounds %struct.lpddr3_timings, ptr %333, i32 0, i32 19
  %335 = load i32, ptr %334, align 4
  %336 = freeze i32 %335
  %337 = freeze i32 %54
  %338 = udiv i32 %336, %337
  %339 = mul i32 %338, %337
  %340 = sub i32 %336, %339
  %341 = icmp ne i32 %340, 0
  %342 = zext i1 %341 to i32
  %343 = add nuw nsw i32 %338, %342
  %344 = load ptr, ptr %38, align 4
  %345 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %344, i32 0, i32 17
  %346 = load i32, ptr %345, align 4
  %347 = call i32 @llvm.umax.i32(i32 %343, i32 %346) #8
  %348 = shl i32 %347, 8
  %349 = or i32 %348, %332
  store i32 %349, ptr %60, align 4
  %350 = load ptr, ptr %31, align 8
  %351 = getelementptr inbounds %struct.lpddr3_timings, ptr %350, i32 0, i32 20
  %352 = load i32, ptr %351, align 4
  %353 = freeze i32 %352
  %354 = freeze i32 %54
  %355 = udiv i32 %353, %354
  %356 = mul i32 %355, %354
  %357 = sub i32 %353, %356
  %358 = icmp ne i32 %357, 0
  %359 = zext i1 %358 to i32
  %360 = add nuw nsw i32 %355, %359
  %361 = load ptr, ptr %38, align 4
  %362 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %361, i32 0, i32 18
  %363 = load i32, ptr %362, align 4
  %364 = call i32 @llvm.umax.i32(i32 %360, i32 %363) #8
  %365 = shl i32 %364, 4
  %366 = or i32 %365, %349
  store i32 %366, ptr %60, align 4
  %367 = load ptr, ptr %31, align 8
  %368 = getelementptr inbounds %struct.lpddr3_timings, ptr %367, i32 0, i32 22
  %369 = load i32, ptr %368, align 4
  %370 = freeze i32 %369
  %371 = freeze i32 %54
  %372 = udiv i32 %370, %371
  %373 = mul i32 %372, %371
  %374 = sub i32 %370, %373
  %375 = icmp ne i32 %374, 0
  %376 = zext i1 %375 to i32
  %377 = add nuw nsw i32 %372, %376
  %378 = load ptr, ptr %38, align 4
  %379 = getelementptr inbounds %struct.lpddr3_min_tck, ptr %378, i32 0, i32 20
  %380 = load i32, ptr %379, align 4
  %381 = call i32 @llvm.umax.i32(i32 %377, i32 %380) #8
  %382 = or i32 %381, %366
  store i32 %382, ptr %60, align 4
  %383 = add nuw nsw i32 %49, 1
  %384 = load i32, ptr %41, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %48, label %386

386:                                              ; preds = %48, %40
  %387 = phi i32 [ -1, %40 ], [ %49, %48 ]
  call void @of_node_put(ptr noundef nonnull %8) #8
  %388 = load ptr, ptr %15, align 4
  %389 = getelementptr i32, ptr %388, i32 %387
  %390 = load i32, ptr %389, align 4
  %391 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 17
  store i32 %390, ptr %391, align 8
  %392 = load ptr, ptr %20, align 8
  %393 = getelementptr i32, ptr %392, i32 %387
  %394 = load i32, ptr %393, align 4
  %395 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 18
  store i32 %394, ptr %395, align 4
  %396 = load ptr, ptr %25, align 4
  %397 = getelementptr i32, ptr %396, i32 %387
  %398 = load i32, ptr %397, align 4
  %399 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 19
  store i32 %398, ptr %399, align 8
  br label %400

400:                                              ; preds = %386, %46, %33, %22, %17, %13, %12
  %401 = phi i32 [ 0, %386 ], [ -22, %46 ], [ -22, %33 ], [ -22, %12 ], [ -12, %13 ], [ -12, %17 ], [ -12, %22 ]
  ret i32 %401
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @exynos5_dmc_set_pause_on_switching(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 133404, ptr noundef nonnull %2) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4
  %9 = or i32 %8, 1
  store i32 %9, ptr %2, align 4
  %10 = load ptr, ptr %3, align 8
  %11 = call i32 @regmap_write(ptr noundef %10, i32 noundef 133404, i32 noundef %9) #8
  br label %12

12:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dmc_irq_thread(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.devfreq, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = tail call i64 @ktime_get() #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %7 = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %10 = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #8, !srcloc !12
  %13 = load ptr, ptr %7, align 8
  %14 = getelementptr i8, ptr %13, i32 57424
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 29
  br label %24

19:                                               ; preds = %2
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr i8, ptr %20, i32 57424
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %23 = getelementptr %struct.exynos5_dmc, ptr %1, i32 0, i32 29, i32 1
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi ptr [ %23, %19 ], [ %18, %17 ]
  %26 = load i64, ptr %25, align 8
  store i64 %6, ptr %25, align 8
  %27 = sub i64 %6, %26
  %28 = icmp ult i64 %27, 900000000
  %29 = select i1 %28, i32 70, i32 35
  %30 = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 30
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.exynos5_dmc, ptr %1, i32 0, i32 31
  store i32 100, ptr %31, align 4
  tail call fastcc void @exynos5_dmc_start_perf_events(ptr noundef %1) #8
  %32 = load ptr, ptr %3, align 4
  %33 = tail call i32 @update_devfreq(ptr noundef %32) #8
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.devfreq, ptr %34, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %35) #8
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %24
  %38 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.45, i32 noundef %33) #9
  br label %39

39:                                               ; preds = %37, %24
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos5_dmc_enable_perf_events(ptr nocapture noundef %0) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %2 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %5 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 109) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 111) #8, !srcloc !12
  %12 = tail call i64 @ktime_get() #8
  %13 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 29
  store i64 %12, ptr %13, align 8
  %14 = getelementptr %struct.exynos5_dmc, ptr %0, i32 0, i32 29, i32 1
  store i64 %12, ptr %14, align 8
  %15 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 30
  store i32 99, ptr %15, align 8
  %16 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 31
  store i32 100, ptr %16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @exynos5_performance_counters_init(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i32 @devfreq_event_get_edev_count(ptr noundef %2, ptr noundef nonnull @.str.46) #8
  %4 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 28
  store i32 %3, ptr %4, align 4
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.47) #9
  %8 = load i32, ptr %4, align 4
  br label %76

9:                                                ; preds = %1
  %10 = shl i32 %3, 9
  %11 = load ptr, ptr %0, align 8
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef %10, i32 noundef 3520) #8
  %13 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 27
  store ptr %12, ptr %13, align 8
  %14 = icmp eq ptr %12, null
  br i1 %14, label %76, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %22, label %76

18:                                               ; preds = %22
  %19 = add nuw nsw i32 %23, 1
  %20 = load i32, ptr %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18, %15
  %23 = phi i32 [ %19, %18 ], [ 0, %15 ]
  %24 = load ptr, ptr %0, align 8
  %25 = tail call ptr @devfreq_event_get_edev_by_phandle(ptr noundef %24, ptr noundef nonnull @.str.46, i32 noundef %23) #8
  %26 = load ptr, ptr %13, align 8
  %27 = getelementptr ptr, ptr %26, i32 %23
  store ptr %25, ptr %27, align 4
  %28 = load ptr, ptr %13, align 8
  %29 = getelementptr ptr, ptr %28, i32 %23
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %33 = or i1 %31, %32
  br i1 %33, label %76, label %18

34:                                               ; preds = %18
  %35 = icmp sgt i32 %20, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %52, %34
  %37 = phi ptr [ %53, %52 ], [ %28, %34 ]
  %38 = phi i32 [ %49, %52 ], [ %20, %34 ]
  %39 = phi i32 [ %50, %52 ], [ 0, %34 ]
  %40 = getelementptr ptr, ptr %37, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = tail call i32 @devfreq_event_enable_edev(ptr noundef nonnull %41) #8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %4, align 4
  br label %48

48:                                               ; preds = %46, %36
  %49 = phi i32 [ %47, %46 ], [ %38, %36 ]
  %50 = add nuw nsw i32 %39, 1
  %51 = icmp slt i32 %50, %49
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load ptr, ptr %13, align 8
  br label %36

54:                                               ; preds = %43
  %55 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.48) #9
  br label %76

56:                                               ; preds = %48
  %57 = icmp sgt i32 %49, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %70, %56
  %59 = phi i32 [ %71, %70 ], [ %49, %56 ]
  %60 = phi i32 [ %72, %70 ], [ 0, %56 ]
  %61 = load ptr, ptr %13, align 8
  %62 = getelementptr ptr, ptr %61, i32 %60
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = tail call i32 @devfreq_event_set_event(ptr noundef nonnull %63) #8
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %4, align 4
  br label %70

70:                                               ; preds = %68, %58
  %71 = phi i32 [ %69, %68 ], [ %59, %58 ]
  %72 = add nuw nsw i32 %60, 1
  %73 = icmp slt i32 %72, %71
  br i1 %73, label %58, label %76

74:                                               ; preds = %65
  tail call fastcc void @exynos5_counters_disable_edev(ptr noundef %0)
  %75 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.14) #9
  br label %76

76:                                               ; preds = %74, %70, %56, %54, %34, %22, %15, %9, %6
  %77 = phi i32 [ %8, %6 ], [ %44, %54 ], [ %66, %74 ], [ -12, %9 ], [ 0, %56 ], [ 0, %34 ], [ 0, %15 ], [ 0, %70 ], [ -517, %22 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos5_dmc_start_perf_events(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %2 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 57392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 4) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %5 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 57392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 4) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 57360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -2147483644) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 57360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 -2147483644) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr i8, ptr %12, i32 57424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 -2147483644) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !26
  tail call void @arm_heavy_mb() #8
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 57424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -2147483644) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr i8, ptr %16, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 6) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 6) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr i8, ptr %20, i32 57648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 -16777216) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 57648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 -16777216) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr i8, ptr %24, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr i8, ptr %26, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 1) #8, !srcloc !12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos5_dmc_disable_perf_events(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  %2 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %5 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 57344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !35
  tail call void @arm_heavy_mb() #8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr i8, ptr %8, i32 57408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 4) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !36
  tail call void @arm_heavy_mb() #8
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 57408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 4) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !37
  tail call void @arm_heavy_mb() #8
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr i8, ptr %12, i32 57376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 -2147483644) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !38
  tail call void @arm_heavy_mb() #8
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 57376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 -2147483644) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !39
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr i8, ptr %16, i32 57424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -2147483644) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !40
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 57424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 -2147483644) #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos5_counters_disable_edev(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 28
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.exynos5_dmc, ptr %0, i32 0, i32 27
  br label %7

7:                                                ; preds = %19, %5
  %8 = phi i32 [ %3, %5 ], [ %20, %19 ]
  %9 = phi i32 [ 0, %5 ], [ %21, %19 ]
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr ptr, ptr %10, i32 %9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @devfreq_event_disable_edev(ptr noundef nonnull %12) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %2, align 4
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi i32 [ %18, %17 ], [ %8, %7 ]
  %21 = add nuw nsw i32 %9, 1
  %22 = icmp slt i32 %21, %20
  br i1 %22, label %7, label %23

23:                                               ; preds = %19, %14, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_dmc_target(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @devfreq_recommended_opp(ptr noundef %8, ptr noundef %1, i32 noundef %2) #8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @dev_pm_opp_get_freq(ptr noundef %9) #8
  %13 = tail call i32 @dev_pm_opp_get_voltage(ptr noundef %9) #8
  tail call void @dev_pm_opp_put(ptr noundef %9) #8
  %14 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 7
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %194, label %19

17:                                               ; preds = %3
  %18 = ptrtoint ptr %9 to i32
  br label %194

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, %13
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 20
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @regulator_set_voltage(ptr noundef %26, i32 noundef %13, i32 noundef %13) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %191

29:                                               ; preds = %24
  store i32 %13, ptr %21, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 9
  br label %34

34:                                               ; preds = %38, %30
  %35 = phi i32 [ %32, %30 ], [ %36, %38 ]
  %36 = add i32 %35, -1
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %191

38:                                               ; preds = %34
  %39 = load ptr, ptr %33, align 8
  %40 = getelementptr %struct.dmc_opp_table, ptr %39, i32 %36
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, %12
  br i1 %42, label %34, label %43

43:                                               ; preds = %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %44 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr i8, ptr %45, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 46) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %47 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 17
  %48 = load i32, ptr %47, align 8
  %49 = load ptr, ptr %44, align 8
  %50 = getelementptr i8, ptr %49, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %51 = load i32, ptr %47, align 8
  %52 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %51) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %55 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 18
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %44, align 8
  %58 = getelementptr i8, ptr %57, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !45
  tail call void @arm_heavy_mb() #8
  %59 = load i32, ptr %55, align 4
  %60 = load ptr, ptr %52, align 4
  %61 = getelementptr i8, ptr %60, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !46
  tail call void @arm_heavy_mb() #8
  %62 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 19
  %63 = load i32, ptr %62, align 8
  %64 = load ptr, ptr %44, align 8
  %65 = getelementptr i8, ptr %64, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #8, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  %66 = load i32, ptr %62, align 8
  %67 = load ptr, ptr %52, align 4
  %68 = getelementptr i8, ptr %67, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #8, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %69 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 5
  %70 = load ptr, ptr %69, align 8
  %71 = call i32 @regmap_read(ptr noundef %70, i32 noundef 133664, ptr noundef nonnull %5) #8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %191

74:                                               ; preds = %43
  %75 = load i32, ptr %5, align 4
  %76 = or i32 %75, 268435456
  store i32 %76, ptr %5, align 4
  %77 = load ptr, ptr %69, align 8
  %78 = call i32 @regmap_write(ptr noundef %77, i32 noundef 133664, i32 noundef %76) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %79 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 21
  %80 = load ptr, ptr %79, align 8
  %81 = call i32 @clk_prepare(ptr noundef %80) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = call i32 @clk_enable(ptr noundef %80) #8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  call void @clk_unprepare(ptr noundef %80) #8
  br label %87

87:                                               ; preds = %86, %83, %74
  %88 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 23
  %89 = load ptr, ptr %88, align 8
  %90 = call i32 @clk_prepare(ptr noundef %89) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = call i32 @clk_enable(ptr noundef %89) #8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  call void @clk_unprepare(ptr noundef %89) #8
  br label %96

96:                                               ; preds = %95, %92, %87
  %97 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 26
  %98 = load ptr, ptr %97, align 4
  %99 = call i32 @clk_prepare(ptr noundef %98) #8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = call i32 @clk_enable(ptr noundef %98) #8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  call void @clk_unprepare(ptr noundef %98) #8
  br label %105

105:                                              ; preds = %104, %101, %96
  %106 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 25
  %107 = load ptr, ptr %106, align 8
  %108 = load ptr, ptr %97, align 4
  %109 = call i32 @clk_set_parent(ptr noundef %107, ptr noundef %108) #8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %185

111:                                              ; preds = %105
  %112 = load i32, ptr %31, align 4
  br label %113

113:                                              ; preds = %117, %111
  %114 = phi i32 [ %112, %111 ], [ %115, %117 ]
  %115 = add i32 %114, -1
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %158

117:                                              ; preds = %113
  %118 = load ptr, ptr %33, align 8
  %119 = getelementptr %struct.dmc_opp_table, ptr %118, i32 %115
  %120 = load i32, ptr %119, align 4
  %121 = icmp ugt i32 %120, %12
  br i1 %121, label %113, label %122

122:                                              ; preds = %117
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !48
  call void @arm_heavy_mb() #8
  %123 = load ptr, ptr %44, align 8
  %124 = getelementptr i8, ptr %123, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 46) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !49
  call void @arm_heavy_mb() #8
  %125 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 12
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i32, ptr %126, i32 %115
  %128 = load i32, ptr %127, align 4
  %129 = load ptr, ptr %44, align 8
  %130 = getelementptr i8, ptr %129, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !50
  call void @arm_heavy_mb() #8
  %131 = load ptr, ptr %125, align 4
  %132 = getelementptr i32, ptr %131, i32 %115
  %133 = load i32, ptr %132, align 4
  %134 = load ptr, ptr %52, align 4
  %135 = getelementptr i8, ptr %134, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !51
  call void @arm_heavy_mb() #8
  %136 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 13
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr i32, ptr %137, i32 %115
  %139 = load i32, ptr %138, align 4
  %140 = load ptr, ptr %44, align 8
  %141 = getelementptr i8, ptr %140, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %139) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !52
  call void @arm_heavy_mb() #8
  %142 = load ptr, ptr %136, align 8
  %143 = getelementptr i32, ptr %142, i32 %115
  %144 = load i32, ptr %143, align 4
  %145 = load ptr, ptr %52, align 4
  %146 = getelementptr i8, ptr %145, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !53
  call void @arm_heavy_mb() #8
  %147 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 14
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr i32, ptr %148, i32 %115
  %150 = load i32, ptr %149, align 4
  %151 = load ptr, ptr %44, align 8
  %152 = getelementptr i8, ptr %151, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %150) #8, !srcloc !12
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !54
  call void @arm_heavy_mb() #8
  %153 = load ptr, ptr %147, align 4
  %154 = getelementptr i32, ptr %153, i32 %115
  %155 = load i32, ptr %154, align 4
  %156 = load ptr, ptr %52, align 4
  %157 = getelementptr i8, ptr %156, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #8, !srcloc !12
  br label %158

158:                                              ; preds = %122, %113
  %159 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 22
  %160 = load ptr, ptr %159, align 4
  %161 = call i32 @clk_set_rate(ptr noundef %160, i32 noundef %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %162 = load ptr, ptr %69, align 8
  %163 = call i32 @regmap_read(ptr noundef %162, i32 noundef 133664, ptr noundef nonnull %4) #8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %185

166:                                              ; preds = %158
  %167 = load i32, ptr %4, align 4
  %168 = and i32 %167, -268435457
  store i32 %168, ptr %4, align 4
  %169 = load ptr, ptr %69, align 8
  %170 = call i32 @regmap_write(ptr noundef %169, i32 noundef 133664, i32 noundef %168) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %171 = load ptr, ptr %106, align 8
  %172 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 24
  %173 = load ptr, ptr %172, align 4
  %174 = call i32 @clk_set_parent(ptr noundef %171, ptr noundef %173) #8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %166
  %177 = load i32, ptr %21, align 4
  %178 = icmp ugt i32 %177, %13
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.exynos5_dmc, ptr %7, i32 0, i32 20
  %181 = load ptr, ptr %180, align 4
  %182 = call i32 @regulator_set_voltage(ptr noundef %181, i32 noundef %13, i32 noundef %13) #8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  store i32 %13, ptr %21, align 4
  br label %185

185:                                              ; preds = %184, %179, %176, %166, %165, %105
  %186 = phi i32 [ %109, %105 ], [ %163, %165 ], [ %174, %166 ], [ 0, %176 ], [ 0, %184 ], [ %182, %179 ]
  %187 = load ptr, ptr %97, align 4
  call void @clk_disable(ptr noundef %187) #8
  call void @clk_unprepare(ptr noundef %187) #8
  %188 = load ptr, ptr %88, align 8
  call void @clk_disable(ptr noundef %188) #8
  call void @clk_unprepare(ptr noundef %188) #8
  %189 = load ptr, ptr %79, align 8
  call void @clk_disable(ptr noundef %189) #8
  call void @clk_unprepare(ptr noundef %189) #8
  %190 = icmp eq i32 %186, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %185, %73, %34, %24
  %192 = phi i32 [ %186, %185 ], [ %27, %24 ], [ %71, %73 ], [ -22, %34 ]
  call void @mutex_unlock(ptr noundef %20) #8
  br label %194

193:                                              ; preds = %185
  store i32 %12, ptr %14, align 8
  call void @mutex_unlock(ptr noundef %20) #8
  br label %194

194:                                              ; preds = %193, %191, %17, %11
  %195 = phi i32 [ %192, %191 ], [ 0, %193 ], [ %18, %17 ], [ 0, %11 ]
  ret i32 %195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_dmc_get_status(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca %struct.devfreq_event_data, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.exynos5_dmc, ptr %5, i32 0, i32 32
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.exynos5_dmc, ptr %5, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.exynos5_dmc, ptr %5, i32 0, i32 7
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef %10) #8
  %14 = getelementptr inbounds %struct.exynos5_dmc, ptr %5, i32 0, i32 30
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.exynos5_dmc, ptr %5, i32 0, i32 31
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %1, align 4
  br label %78

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !9
  %20 = getelementptr inbounds %struct.exynos5_dmc, ptr %5, i32 0, i32 28
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.exynos5_dmc, ptr %5, i32 0, i32 27
  %25 = getelementptr inbounds %struct.devfreq_event_data, ptr %3, i32 0, i32 1
  br label %26

26:                                               ; preds = %44, %23
  %27 = phi i32 [ 0, %23 ], [ %45, %44 ]
  %28 = phi i32 [ %21, %23 ], [ %46, %44 ]
  %29 = phi i32 [ 0, %23 ], [ %48, %44 ]
  %30 = phi i32 [ 0, %23 ], [ %47, %44 ]
  %31 = load ptr, ptr %24, align 8
  %32 = getelementptr ptr, ptr %31, i32 %29
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %26
  %36 = call i32 @devfreq_event_get_event(ptr noundef nonnull %33, ptr noundef nonnull %3) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %3, align 8
  %40 = add i32 %39, %27
  %41 = load i32, ptr %25, align 4
  %42 = call i32 @llvm.umax.i32(i32 %30, i32 %41) #8
  %43 = load i32, ptr %20, align 4
  br label %44

44:                                               ; preds = %38, %26
  %45 = phi i32 [ %27, %26 ], [ %40, %38 ]
  %46 = phi i32 [ %28, %26 ], [ %43, %38 ]
  %47 = phi i32 [ %30, %26 ], [ %42, %38 ]
  %48 = add nuw nsw i32 %29, 1
  %49 = icmp slt i32 %48, %46
  br i1 %49, label %26, label %51

50:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %78

51:                                               ; preds = %44, %19
  %52 = phi i32 [ 0, %19 ], [ %45, %44 ]
  %53 = phi i32 [ 0, %19 ], [ %47, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %54 = lshr i32 %52, 10
  %55 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  %56 = lshr i32 %53, 10
  store i32 %56, ptr %1, align 4
  %57 = load i32, ptr %20, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.exynos5_dmc, ptr %5, i32 0, i32 27
  br label %61

61:                                               ; preds = %73, %59
  %62 = phi i32 [ %57, %59 ], [ %74, %73 ]
  %63 = phi i32 [ 0, %59 ], [ %75, %73 ]
  %64 = load ptr, ptr %60, align 8
  %65 = getelementptr ptr, ptr %64, i32 %63
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = call i32 @devfreq_event_set_event(ptr noundef nonnull %66) #8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %20, align 4
  br label %73

73:                                               ; preds = %71, %61
  %74 = phi i32 [ %72, %71 ], [ %62, %61 ]
  %75 = add nuw nsw i32 %63, 1
  %76 = icmp slt i32 %75, %74
  br i1 %76, label %61, label %78

77:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14) #9
  br label %78

78:                                               ; preds = %77, %73, %51, %50, %9
  %79 = phi i32 [ %69, %77 ], [ -22, %50 ], [ 0, %9 ], [ 0, %51 ], [ 0, %73 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos5_dmc_get_cur_freq(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.exynos5_dmc, ptr %4, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.exynos5_dmc, ptr %4, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  store i32 %7, ptr %1, align 4
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
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
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_get_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_set_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_lpddr3_get_ddr_timings(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_lpddr3_get_min_tck(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_devfreq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_get_edev_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_event_get_edev_by_phandle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_enable_edev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_disable_edev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i64 2153760178}
!12 = !{i64 3820496}
!13 = !{i64 2153760515}
!14 = !{i64 3820914}
!15 = !{i64 2153761023}
!16 = !{i64 2153761993}
!17 = !{i64 2153762911}
!18 = !{i64 2153763408}
!19 = !{i64 2153763809}
!20 = !{i64 2153764168}
!21 = !{i64 2153752996}
!22 = !{i64 2153753493}
!23 = !{i64 2153754105}
!24 = !{i64 2153754779}
!25 = !{i64 2153755453}
!26 = !{i64 2153756127}
!27 = !{i64 2153756798}
!28 = !{i64 2153757467}
!29 = !{i64 2153757924}
!30 = !{i64 2153758285}
!31 = !{i64 2153758746}
!32 = !{i64 2153759243}
!33 = !{i64 2153764515}
!34 = !{i64 2153764852}
!35 = !{i64 2153765297}
!36 = !{i64 2153765794}
!37 = !{i64 2153766406}
!38 = !{i64 2153767080}
!39 = !{i64 2153767754}
!40 = !{i64 2153768428}
!41 = !{i64 2153747368}
!42 = !{i64 2153747736}
!43 = !{i64 2153748136}
!44 = !{i64 2153748537}
!45 = !{i64 2153748940}
!46 = !{i64 2153749344}
!47 = !{i64 2153749750}
!48 = !{i64 2153750148}
!49 = !{i64 2153750514}
!50 = !{i64 2153750908}
!51 = !{i64 2153751303}
!52 = !{i64 2153751700}
!53 = !{i64 2153752098}
!54 = !{i64 2153752498}
