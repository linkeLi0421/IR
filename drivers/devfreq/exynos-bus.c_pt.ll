; ModuleID = '/llk/IR/drivers/devfreq/exynos-bus.c_pt.bc'
source_filename = "../drivers/devfreq/exynos-bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.exynos_bus = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, i32, ptr, ptr, i32 }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.65, ptr }
%union.anon.65 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.devfreq_event_data = type { i32, i32 }

@exynos_bus_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description247 = internal constant [48 x i8] c"description=Generic Exynos Bus frequency driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [44 x i8] c"author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@exynos_bus_platdrv = internal global %struct.platform_driver { ptr @exynos_bus_probe, ptr null, ptr @exynos_bus_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_bus_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_bus_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [11 x i8] c"exynos-bus\00", align 1
@exynos_bus_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @exynos_bus_suspend, ptr @exynos_bus_resume, ptr @exynos_bus_suspend, ptr @exynos_bus_resume, ptr @exynos_bus_suspend, ptr @exynos_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to find devicetree node\0A\00", align 1
@exynos_bus_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"&bus->lock\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"devfreq\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"#interconnect-cells\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"exynos-generic-icc\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"\016exynos-bus: new bus device registered: %s (%6ld KHz ~ %6ld KHz)\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"failed to set regulators %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"devfreq-events\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"failed to get the count of devfreq-event dev\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"exynos,saturation-ratio\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"failed to get bus clock\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"failed to get enable clock\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"failed to get OPP table\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"failed to find dev_pm_opp\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"failed to add devfreq dev with passive governor\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"failed to get recommended opp instance\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"simple_ondemand\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"failed to add devfreq device\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"failed to register opp notifier\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"failed to enable devfreq-event devices\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"failed to set event to devfreq-event devices\0A\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"failed to disable the devfreq-event devices\0A\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"failed to get event from devfreq-event devices\0A\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"failed to enable the devfreq-event devices\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__exynos_bus_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @exynos_bus_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_bus_platdrv, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_bus_platdrv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_bus_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #7
  br label %252

11:                                               ; preds = %1
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 56, i32 noundef 3520) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %252, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull @exynos_bus_probe.__key) #6
  store ptr %6, ptr %12, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %16, align 8
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 40, i32 noundef 3520) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %252, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #6, !annotation !8
  %21 = call i32 @__of_parse_phandle_with_args(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #6
  %22 = icmp ne i32 %21, 0
  %23 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #6
  %24 = icmp eq ptr %23, null
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  call void @of_node_put(ptr noundef nonnull %23) #6
  br label %68

27:                                               ; preds = %19
  %28 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr @.str.7, ptr %4, align 4
  %29 = call ptr @dev_pm_opp_set_regulators(ptr noundef %28, ptr noundef nonnull %4, i32 noundef 1) #6
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %65, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 7
  store ptr %29, ptr %32, align 4
  %33 = call i32 @devfreq_event_get_edev_count(ptr noundef %28, ptr noundef nonnull @.str.9) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.10) #7
  br label %61

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 4
  store i32 %33, ptr %37, align 4
  %38 = shl i32 %33, 2
  %39 = call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef %38, i32 noundef 3520) #6
  %40 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 3
  store ptr %39, ptr %40, align 4
  %41 = icmp eq ptr %39, null
  br i1 %41, label %61, label %42

42:                                               ; preds = %36
  %43 = icmp eq i32 %33, 0
  br i1 %43, label %56, label %47

44:                                               ; preds = %47
  %45 = add nuw nsw i32 %48, 1
  %46 = icmp eq i32 %45, %33
  br i1 %46, label %56, label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ %45, %44 ], [ 0, %42 ]
  %49 = call ptr @devfreq_event_get_edev_by_phandle(ptr noundef %28, ptr noundef nonnull @.str.9, i32 noundef %48) #6
  %50 = load ptr, ptr %40, align 4
  %51 = getelementptr ptr, ptr %50, i32 %48
  store ptr %49, ptr %51, align 4
  %52 = load ptr, ptr %40, align 4
  %53 = getelementptr ptr, ptr %52, i32 %48
  %54 = load ptr, ptr %53, align 4
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %61, label %44

56:                                               ; preds = %44, %42
  %57 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 9
  %58 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.11, ptr noundef %57, i32 noundef 1, i32 noundef 0) #6
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  store i32 40, ptr %57, align 4
  br label %64

61:                                               ; preds = %47, %36, %35
  %62 = phi i32 [ %33, %35 ], [ -12, %36 ], [ -517, %47 ]
  %63 = load ptr, ptr %32, align 4
  call void @dev_pm_opp_put_regulators(ptr noundef %63) #6
  store ptr null, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %252

64:                                               ; preds = %60, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %68

65:                                               ; preds = %27
  %66 = ptrtoint ptr %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.8, i32 noundef %66) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %67 = icmp slt ptr %29, null
  br i1 %67, label %252, label %68

68:                                               ; preds = %65, %64, %26
  %69 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %70 = call ptr @devm_clk_get(ptr noundef %69, ptr noundef nonnull @.str.12) #6
  %71 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 8
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.13) #7
  %74 = load ptr, ptr %71, align 4
  %75 = ptrtoint ptr %74 to i32
  br label %104

76:                                               ; preds = %68
  %77 = call i32 @clk_prepare(ptr noundef %70) #6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = call i32 @clk_enable(ptr noundef %70) #6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  call void @clk_unprepare(ptr noundef %70) #6
  br label %83

83:                                               ; preds = %82, %76
  %84 = phi i32 [ %77, %76 ], [ %80, %82 ]
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %248

87:                                               ; preds = %83, %79
  %88 = call i32 @dev_pm_opp_of_add_table(ptr noundef %69) #6
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.15) #7
  br label %101

91:                                               ; preds = %87
  %92 = load ptr, ptr %71, align 4
  %93 = call i32 @clk_get_rate(ptr noundef %92) #6
  store i32 %93, ptr %3, align 4
  %94 = call ptr @devfreq_recommended_opp(ptr noundef %69, ptr noundef nonnull %3, i32 noundef 0) #6
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.16) #7
  %97 = ptrtoint ptr %94 to i32
  call void @dev_pm_opp_of_remove_table(ptr noundef %69) #6
  br label %101

98:                                               ; preds = %91
  %99 = call i32 @dev_pm_opp_get_freq(ptr noundef %94) #6
  %100 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 6
  store i32 %99, ptr %100, align 4
  call void @dev_pm_opp_put(ptr noundef %94) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %107

101:                                              ; preds = %96, %90
  %102 = phi i32 [ %88, %90 ], [ %97, %96 ]
  %103 = load ptr, ptr %71, align 4
  call void @clk_disable(ptr noundef %103) #6
  call void @clk_unprepare(ptr noundef %103) #6
  br label %104

104:                                              ; preds = %101, %73
  %105 = phi i32 [ %75, %73 ], [ %102, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %248, label %107

107:                                              ; preds = %104, %98
  %108 = load ptr, ptr %12, align 4
  br i1 %25, label %124, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %17, i32 0, i32 4
  store ptr @exynos_bus_target, ptr %110, align 4
  %111 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %17, i32 0, i32 7
  store ptr @exynos_bus_passive_exit, ptr %111, align 4
  %112 = call ptr @devfreq_get_devfreq_by_phandle(ptr noundef %108, ptr noundef nonnull @.str.3, i32 noundef 0) #6
  %113 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %245, label %114

114:                                              ; preds = %109
  %115 = call noalias ptr @devm_kmalloc(ptr noundef %108, i32 noundef 24, i32 noundef 3520) #6
  %116 = icmp eq ptr %115, null
  br i1 %116, label %245, label %117

117:                                              ; preds = %114
  store ptr %112, ptr %115, align 4
  %118 = call ptr @devm_devfreq_add_device(ptr noundef %108, ptr noundef nonnull %17, ptr noundef nonnull @.str.17, ptr noundef nonnull %115) #6
  %119 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 2
  store ptr %118, ptr %119, align 4
  %120 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %120, label %121, label %207

121:                                              ; preds = %117
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.18) #7
  %122 = load ptr, ptr %119, align 4
  %123 = ptrtoint ptr %122 to i32
  br label %204

124:                                              ; preds = %107
  %125 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %17, i32 0, i32 1
  store i32 50, ptr %125, align 4
  %126 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %17, i32 0, i32 4
  store ptr @exynos_bus_target, ptr %126, align 4
  %127 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %17, i32 0, i32 5
  store ptr @exynos_bus_get_dev_status, ptr %127, align 4
  %128 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %17, i32 0, i32 7
  store ptr @exynos_bus_exit, ptr %128, align 4
  %129 = call noalias ptr @devm_kmalloc(ptr noundef %108, i32 noundef 8, i32 noundef 3520) #6
  %130 = icmp eq ptr %129, null
  br i1 %130, label %245, label %131

131:                                              ; preds = %124
  store i32 40, ptr %129, align 4
  %132 = getelementptr inbounds %struct.devfreq_simple_ondemand_data, ptr %129, i32 0, i32 1
  store i32 5, ptr %132, align 4
  %133 = call ptr @devm_devfreq_add_device(ptr noundef %108, ptr noundef nonnull %17, ptr noundef nonnull @.str.20, ptr noundef nonnull %129) #6
  %134 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 2
  store ptr %133, ptr %134, align 4
  %135 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.21) #7
  %137 = load ptr, ptr %134, align 4
  %138 = ptrtoint ptr %137 to i32
  br label %204

139:                                              ; preds = %131
  %140 = call i32 @devm_devfreq_register_opp_notifier(ptr noundef %108, ptr noundef %133) #6
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.22) #7
  br label %245

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 4
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %207, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 3
  br label %149

149:                                              ; preds = %161, %147
  %150 = phi i32 [ %145, %147 ], [ %162, %161 ]
  %151 = phi i32 [ 0, %147 ], [ %163, %161 ]
  %152 = load ptr, ptr %148, align 4
  %153 = getelementptr ptr, ptr %152, i32 %151
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %161, label %156

156:                                              ; preds = %149
  %157 = call i32 @devfreq_event_enable_edev(ptr noundef nonnull %154) #6
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = load i32, ptr %144, align 4
  br label %161

161:                                              ; preds = %159, %149
  %162 = phi i32 [ %160, %159 ], [ %150, %149 ]
  %163 = add nuw i32 %151, 1
  %164 = icmp ult i32 %163, %162
  br i1 %164, label %149, label %166

165:                                              ; preds = %156
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.23) #7
  br label %245

166:                                              ; preds = %161
  %167 = icmp eq i32 %162, 0
  br i1 %167, label %207, label %168

168:                                              ; preds = %180, %166
  %169 = phi i32 [ %181, %180 ], [ %162, %166 ]
  %170 = phi i32 [ %182, %180 ], [ 0, %166 ]
  %171 = load ptr, ptr %148, align 4
  %172 = getelementptr ptr, ptr %171, i32 %170
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %180, label %175

175:                                              ; preds = %168
  %176 = call i32 @devfreq_event_set_event(ptr noundef nonnull %173) #6
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = load i32, ptr %144, align 4
  br label %180

180:                                              ; preds = %178, %168
  %181 = phi i32 [ %179, %178 ], [ %169, %168 ]
  %182 = add nuw i32 %170, 1
  %183 = icmp ult i32 %182, %181
  br i1 %183, label %168, label %207

184:                                              ; preds = %175
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.24) #7
  %185 = load i32, ptr %144, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %245, label %187

187:                                              ; preds = %199, %184
  %188 = phi i32 [ %200, %199 ], [ %185, %184 ]
  %189 = phi i32 [ %201, %199 ], [ 0, %184 ]
  %190 = load ptr, ptr %148, align 4
  %191 = getelementptr ptr, ptr %190, i32 %189
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %199, label %194

194:                                              ; preds = %187
  %195 = call i32 @devfreq_event_disable_edev(ptr noundef nonnull %192) #6
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %194
  %198 = load i32, ptr %144, align 4
  br label %199

199:                                              ; preds = %197, %187
  %200 = phi i32 [ %198, %197 ], [ %188, %187 ]
  %201 = add nuw i32 %189, 1
  %202 = icmp ult i32 %201, %200
  br i1 %202, label %187, label %204

203:                                              ; preds = %194
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %108, ptr noundef nonnull @.str.25) #7
  br label %204

204:                                              ; preds = %203, %199, %136, %121
  %205 = phi i32 [ %123, %121 ], [ %138, %136 ], [ %176, %203 ], [ %176, %199 ]
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %245, label %207

207:                                              ; preds = %204, %180, %166, %143, %117
  %208 = load ptr, ptr %7, align 8
  %209 = call ptr @of_get_property(ptr noundef %208, ptr noundef nonnull @.str.4, ptr noundef null) #6
  %210 = icmp eq ptr %209, null
  br i1 %210, label %222, label %211

211:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #6
  %212 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %212, i8 0, i32 48, i1 false) #6, !annotation !8
  store ptr %6, ptr %2, align 8
  %213 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 1
  store ptr null, ptr %213, align 4
  %214 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  store ptr @.str.5, ptr %214, align 4
  %215 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  store i32 -2, ptr %215, align 8
  %216 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %216, i8 0, i64 16, i1 false) #6
  %217 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #6
  %218 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 1
  store ptr %217, ptr %218, align 4
  %219 = icmp ugt ptr %217, inttoptr (i32 -4096 to ptr)
  br i1 %219, label %220, label %222

220:                                              ; preds = %211
  %221 = ptrtoint ptr %217 to i32
  br label %245

222:                                              ; preds = %211, %207
  %223 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 2
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.devfreq, ptr %224, i32 0, i32 3
  %226 = load ptr, ptr %225, align 8
  %227 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %226, i32 0, i32 9
  %228 = load i32, ptr %227, align 4
  %229 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %226, i32 0, i32 8
  %230 = load ptr, ptr %229, align 4
  %231 = load i32, ptr %230, align 4
  %232 = udiv i32 %231, 1000
  %233 = add i32 %228, -1
  %234 = getelementptr i32, ptr %230, i32 %233
  %235 = load i32, ptr %234, align 4
  %236 = udiv i32 %235, 1000
  %237 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %242

240:                                              ; preds = %222
  %241 = load ptr, ptr %6, align 4
  br label %242

242:                                              ; preds = %240, %222
  %243 = phi ptr [ %241, %240 ], [ %238, %222 ]
  %244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %243, i32 noundef %232, i32 noundef %236) #7
  br label %252

245:                                              ; preds = %220, %204, %184, %165, %142, %124, %114, %109
  %246 = phi i32 [ %205, %204 ], [ %221, %220 ], [ %176, %184 ], [ -12, %124 ], [ %157, %165 ], [ %140, %142 ], [ -12, %114 ], [ -517, %109 ]
  call void @dev_pm_opp_of_remove_table(ptr noundef %6) #6
  %247 = load ptr, ptr %71, align 4
  call void @clk_disable(ptr noundef %247) #6
  call void @clk_unprepare(ptr noundef %247) #6
  br label %248

248:                                              ; preds = %245, %104, %86
  %249 = phi i32 [ %105, %104 ], [ %246, %245 ], [ %84, %86 ]
  %250 = getelementptr inbounds %struct.exynos_bus, ptr %12, i32 0, i32 7
  %251 = load ptr, ptr %250, align 4
  call void @dev_pm_opp_put_regulators(ptr noundef %251) #6
  store ptr null, ptr %250, align 4
  br label %252

252:                                              ; preds = %248, %242, %65, %61, %14, %11, %10
  %253 = phi i32 [ %249, %248 ], [ 0, %242 ], [ -22, %10 ], [ -12, %11 ], [ -12, %14 ], [ %66, %65 ], [ %62, %61 ]
  ret i32 %253
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_bus_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_bus, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @devfreq_suspend_device(ptr noundef %5) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_of_remove_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_regulators(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_regulators(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_get_edev_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_event_get_edev_by_phandle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_bus_target(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @devfreq_recommended_opp(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19) #7
  %9 = ptrtoint ptr %6 to i32
  br label %19

10:                                               ; preds = %3
  tail call void @dev_pm_opp_put(ptr noundef %6) #6
  %11 = getelementptr inbounds %struct.exynos_bus, ptr %5, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %11) #6
  %12 = load i32, ptr %1, align 4
  %13 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %0, i32 noundef %12) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, ptr %1, align 4
  %17 = getelementptr inbounds %struct.exynos_bus, ptr %5, i32 0, i32 6
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %10
  tail call void @mutex_unlock(ptr noundef %11) #6
  br label %19

19:                                               ; preds = %18, %8
  %20 = phi i32 [ %9, %8 ], [ %13, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_bus_passive_exit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_bus, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #6
  tail call void @dev_pm_opp_of_remove_table(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.exynos_bus, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_get_devfreq_by_phandle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_bus_get_dev_status(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca %struct.devfreq_event_data, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.exynos_bus, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !8
  %9 = getelementptr inbounds %struct.exynos_bus, ptr %5, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %49

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.exynos_bus, ptr %5, i32 0, i32 3
  %15 = getelementptr inbounds %struct.devfreq_event_data, ptr %3, i32 0, i32 1
  br label %16

16:                                               ; preds = %39, %13
  %17 = phi i32 [ %10, %13 ], [ %40, %39 ]
  %18 = phi i32 [ 0, %13 ], [ %43, %39 ]
  %19 = phi i32 [ 0, %13 ], [ %44, %39 ]
  %20 = phi i32 [ 0, %13 ], [ %42, %39 ]
  %21 = phi i32 [ 0, %13 ], [ %41, %39 ]
  %22 = load ptr, ptr %14, align 4
  %23 = getelementptr ptr, ptr %22, i32 %19
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %16
  %27 = call i32 @devfreq_event_get_event(ptr noundef nonnull %24, ptr noundef nonnull %3) #6
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  br label %48

30:                                               ; preds = %26
  %31 = icmp eq i32 %19, 0
  %32 = load i32, ptr %3, align 8
  %33 = icmp ugt i32 %32, %21
  %34 = select i1 %31, i1 true, i1 %33
  %35 = load i32, ptr %15, align 4
  %36 = select i1 %34, i32 %32, i32 %21
  %37 = select i1 %34, i32 %35, i32 %20
  %38 = load i32, ptr %9, align 4
  br label %39

39:                                               ; preds = %30, %16
  %40 = phi i32 [ %17, %16 ], [ %38, %30 ]
  %41 = phi i32 [ %21, %16 ], [ %36, %30 ]
  %42 = phi i32 [ %20, %16 ], [ %37, %30 ]
  %43 = phi i32 [ %18, %16 ], [ %27, %30 ]
  %44 = add nuw i32 %19, 1
  %45 = icmp ult i32 %44, %40
  br i1 %45, label %16, label %46

46:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %47 = icmp slt i32 %43, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %46, %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.26) #7
  br label %56

49:                                               ; preds = %46, %12
  %50 = phi i32 [ 0, %12 ], [ %41, %46 ]
  %51 = phi i32 [ 0, %12 ], [ %42, %46 ]
  %52 = mul i32 %50, 100
  %53 = getelementptr inbounds %struct.exynos_bus, ptr %5, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = udiv i32 %52, %54
  br label %56

56:                                               ; preds = %49, %48
  %57 = phi i32 [ %55, %49 ], [ 0, %48 ]
  %58 = phi i32 [ %51, %49 ], [ 0, %48 ]
  %59 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 1
  store i32 %57, ptr %59, align 4
  store i32 %58, ptr %1, align 4
  %60 = load i32, ptr %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.exynos_bus, ptr %5, i32 0, i32 3
  br label %64

64:                                               ; preds = %76, %62
  %65 = phi i32 [ %60, %62 ], [ %77, %76 ]
  %66 = phi i32 [ 0, %62 ], [ %78, %76 ]
  %67 = load ptr, ptr %63, align 4
  %68 = getelementptr ptr, ptr %67, i32 %66
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = call i32 @devfreq_event_set_event(ptr noundef nonnull %69) #6
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %9, align 4
  br label %76

76:                                               ; preds = %74, %64
  %77 = phi i32 [ %75, %74 ], [ %65, %64 ]
  %78 = add nuw i32 %66, 1
  %79 = icmp ult i32 %78, %77
  br i1 %79, label %64, label %81

80:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24) #7
  br label %81

81:                                               ; preds = %80, %76, %56
  %82 = phi i32 [ %72, %80 ], [ 0, %56 ], [ 0, %76 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_bus_exit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_bus, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.exynos_bus, ptr %3, i32 0, i32 3
  br label %9

9:                                                ; preds = %21, %7
  %10 = phi i32 [ %5, %7 ], [ %22, %21 ]
  %11 = phi i32 [ 0, %7 ], [ %23, %21 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @devfreq_event_disable_edev(ptr noundef nonnull %14) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %4, align 4
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi i32 [ %20, %19 ], [ %10, %9 ]
  %23 = add nuw i32 %11, 1
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %9, label %26

25:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.25) #7
  br label %26

26:                                               ; preds = %25, %21, %1
  %27 = getelementptr inbounds %struct.exynos_bus, ptr %3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void @platform_device_unregister(ptr noundef %28) #6
  tail call void @dev_pm_opp_of_remove_table(ptr noundef %0) #6
  %29 = getelementptr inbounds %struct.exynos_bus, ptr %3, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_disable(ptr noundef %30) #6
  tail call void @clk_unprepare(ptr noundef %30) #6
  %31 = getelementptr inbounds %struct.exynos_bus, ptr %3, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  tail call void @dev_pm_opp_put_regulators(ptr noundef %32) #6
  store ptr null, ptr %31, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_devfreq_register_opp_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_get_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_enable_edev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_set_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_event_disable_edev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_suspend_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_bus_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_bus, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.exynos_bus, ptr %3, i32 0, i32 3
  br label %9

9:                                                ; preds = %21, %7
  %10 = phi i32 [ %5, %7 ], [ %22, %21 ]
  %11 = phi i32 [ 0, %7 ], [ %23, %21 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @devfreq_event_disable_edev(ptr noundef nonnull %14) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %4, align 4
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi i32 [ %20, %19 ], [ %10, %9 ]
  %23 = add nuw i32 %11, 1
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %9, label %26

25:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25) #7
  br label %26

26:                                               ; preds = %25, %21, %1
  %27 = phi i32 [ %17, %25 ], [ 0, %1 ], [ 0, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_bus_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.exynos_bus, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.exynos_bus, ptr %3, i32 0, i32 3
  br label %9

9:                                                ; preds = %21, %7
  %10 = phi i32 [ %5, %7 ], [ %22, %21 ]
  %11 = phi i32 [ 0, %7 ], [ %23, %21 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = tail call i32 @devfreq_event_enable_edev(ptr noundef nonnull %14) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %4, align 4
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi i32 [ %20, %19 ], [ %10, %9 ]
  %23 = add nuw i32 %11, 1
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %9, label %26

25:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.27) #7
  br label %26

26:                                               ; preds = %25, %21, %1
  %27 = phi i32 [ %17, %25 ], [ 0, %1 ], [ 0, %21 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
