; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/dpaux.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/dpaux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.tegra_dpaux_soc = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_dpaux = type { %struct.drm_dp_aux, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.completion, %struct.work_struct, %struct.list_head, ptr, %struct.pinctrl_desc }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tegra_output = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.drm_encoder, %struct.drm_connector }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.75 }
%union.anon.75 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }

@.str = private unnamed_addr constant [12 x i8] c"tegra-dpaux\00", align 1
@tegra_dpaux_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-dpaux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_dpaux_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-dpaux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_dpaux_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-dpaux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_dpaux_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-dpaux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_dpaux_soc }, %struct.of_device_id zeroinitializer], align 4
@tegra_dpaux_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dpaux_suspend, ptr @tegra_dpaux_resume, ptr null }, align 4
@tegra_dpaux_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @tegra_dpaux_probe, ptr @tegra_dpaux_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_dpaux_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dpaux_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@dpaux_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dpaux_lock, i64 12), ptr getelementptr (i8, ptr @dpaux_lock, i64 12) } }, align 4
@dpaux_list = internal global %struct.list_head { ptr @dpaux_list, ptr @dpaux_list }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [6 x i8] c"dpaux\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get reset control: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to get module clock: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to get parent clock: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to set clock to 270 MHz: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to get VDD supply: %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to request IRQ#%u: %d\0A\00", align 1
@tegra_dpaux_pins = internal constant [2 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.14, ptr null }], align 4
@tegra_dpaux_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @tegra_dpaux_get_groups_count, ptr @tegra_dpaux_get_group_name, ptr @tegra_dpaux_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinconf_generic_dt_free_map }, align 4
@tegra_dpaux_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @tegra_dpaux_get_functions_count, ptr @tegra_dpaux_get_function_name, ptr @tegra_dpaux_get_function_groups, ptr @tegra_dpaux_set_mux, ptr null, ptr null, ptr null, i8 0 }, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"failed to register pincontrol\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to populate AUX bus: %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"DP_AUX_CHx_P\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"DP_AUX_CHx_N\00", align 1
@tegra_dpaux_groups = internal constant [1 x ptr] [ptr @.str.15], align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"dpaux-io\00", align 1
@tegra_dpaux_pin_numbers = internal constant [2 x i32] [i32 0, i32 1], align 4
@tegra_dpaux_functions = internal unnamed_addr constant [3 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18], align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@__tracepoint_dpaux_writel = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@tegra194_dpaux_soc = internal constant %struct.tegra_dpaux_soc { i32 2, i32 4, i32 44 }, align 4
@tegra210_dpaux_soc = internal constant %struct.tegra_dpaux_soc { i32 2, i32 4, i32 48 }, align 4
@tegra124_dpaux_soc = internal constant %struct.tegra_dpaux_soc { i32 2, i32 4, i32 24 }, align 4
@.str.20 = private unnamed_addr constant [28 x i8] c"failed to assert reset: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"failed to enable parent clock: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"failed to deassert reset: %d\0A\00", align 1
@__tracepoint_dpaux_readl = external dso_local global %struct.tracepoint, align 4
@switch.table.tegra_dpaux_transfer = private unnamed_addr constant [8 x i8] c"\01\02\00\04\00\00\00\08", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 936, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %156, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #8
  %7 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 11
  store i32 -32, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 11, i32 1
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 11, i32 1, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 11, i32 2
  store ptr @tegra_dpaux_hotplug, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 10
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #8
  %14 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 12
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 12, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 1
  store ptr %2, ptr %16, align 8
  %17 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %18 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %17) #8
  %19 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 3
  store ptr %18, ptr %19, align 8
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = ptrtoint ptr %18 to i32
  br label %156

23:                                               ; preds = %5
  %24 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %25 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 4
  store i32 %24, ptr %25, align 4
  %26 = icmp slt i32 %24, 0
  br i1 %26, label %156, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 12
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %33 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 6
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = ptrtoint ptr %32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %36) #9
  %37 = load ptr, ptr %33, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %156

39:                                               ; preds = %31, %27
  %40 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #8
  %41 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 8
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %44) #9
  %45 = load ptr, ptr %41, align 4
  %46 = ptrtoint ptr %45 to i32
  br label %156

47:                                               ; preds = %39
  %48 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.4) #8
  %49 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 7
  store ptr %48, ptr %49, align 8
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = ptrtoint ptr %48 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %52) #9
  %53 = load ptr, ptr %49, align 8
  %54 = ptrtoint ptr %53 to i32
  br label %156

55:                                               ; preds = %47
  %56 = tail call i32 @clk_set_rate(ptr noundef %48, i32 noundef 270000000) #8
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %56) #9
  br label %156

59:                                               ; preds = %55
  %60 = tail call ptr @devm_regulator_get_optional(ptr noundef %2, ptr noundef nonnull @.str.7) #8
  %61 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 9
  store ptr %60, ptr %61, align 8
  %62 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = ptrtoint ptr %60 to i32
  switch i32 %64, label %65 [
    i32 -19, label %68
    i32 -517, label %156
  ]

65:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %64) #9
  %66 = load ptr, ptr %61, align 8
  %67 = ptrtoint ptr %66 to i32
  br label %156

68:                                               ; preds = %63
  store ptr null, ptr %61, align 8
  br label %69

69:                                               ; preds = %68, %59
  %70 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %70, align 8
  tail call void @pm_runtime_enable(ptr noundef %2) #8
  %71 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #8
  %72 = load ptr, ptr %16, align 8
  %73 = load i32, ptr %25, align 4
  %74 = getelementptr inbounds %struct.device, ptr %72, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load ptr, ptr %72, align 4
  br label %79

79:                                               ; preds = %77, %69
  %80 = phi ptr [ %78, %77 ], [ %75, %69 ]
  %81 = tail call i32 @devm_request_threaded_irq(ptr noundef %72, i32 noundef %73, ptr noundef nonnull @tegra_dpaux_irq, ptr noundef null, i32 noundef 0, ptr noundef %80, ptr noundef nonnull %3) #8
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load ptr, ptr %16, align 8
  %85 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.9, i32 noundef %85, i32 noundef %81) #9
  br label %156

86:                                               ; preds = %79
  %87 = load i32, ptr %25, align 4
  tail call void @disable_irq(i32 noundef %87) #8
  %88 = getelementptr inbounds %struct.drm_dp_aux, ptr %3, i32 0, i32 8
  store ptr @tegra_dpaux_transfer, ptr %88, align 4
  %89 = getelementptr inbounds %struct.drm_dp_aux, ptr %3, i32 0, i32 2
  store ptr %2, ptr %89, align 8
  tail call void @drm_dp_aux_init(ptr noundef nonnull %3) #8
  %90 = tail call fastcc i32 @tegra_dpaux_pad_config(ptr noundef nonnull %3, i32 noundef 1)
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %156, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load ptr, ptr %2, align 4
  br label %98

98:                                               ; preds = %96, %92
  %99 = phi ptr [ %97, %96 ], [ %94, %92 ]
  %100 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 14
  store ptr %99, ptr %100, align 8
  %101 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 14, i32 1
  store ptr @tegra_dpaux_pins, ptr %101, align 4
  %102 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 14, i32 2
  store i32 2, ptr %102, align 8
  %103 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 14, i32 3
  store ptr @tegra_dpaux_pinctrl_ops, ptr %103, align 4
  %104 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 14, i32 4
  store ptr @tegra_dpaux_pinmux_ops, ptr %104, align 8
  %105 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 14, i32 6
  store ptr null, ptr %105, align 8
  %106 = tail call ptr @devm_pinctrl_register(ptr noundef %2, ptr noundef %100, ptr noundef nonnull %3) #8
  %107 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 13
  store ptr %106, ptr %107, align 4
  %108 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #9
  %110 = load ptr, ptr %107, align 4
  %111 = ptrtoint ptr %110 to i32
  br label %156

112:                                              ; preds = %98
  %113 = load ptr, ptr %16, align 8
  %114 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 1), align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = tail call ptr @llvm.thread.pointer() #8
  %118 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %119 = load i32, ptr %118, align 8
  %120 = lshr i32 %119, 5
  %121 = getelementptr i32, ptr @__cpu_online_mask, i32 %120
  %122 = load volatile i32, ptr %121, align 4
  %123 = and i32 %119, 31
  %124 = shl nuw i32 1, %123
  %125 = and i32 %124, %122
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %116
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %128 = tail call i32 @__traceiter_dpaux_writel(ptr noundef null, ptr noundef %113, i32 noundef 1, i32 noundef 15) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %129

129:                                              ; preds = %127, %116, %112
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %130 = load ptr, ptr %19, align 8
  %131 = getelementptr i8, ptr %130, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 15) #8, !srcloc !11
  %132 = load ptr, ptr %16, align 8
  %133 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 1), align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %129
  %136 = tail call ptr @llvm.thread.pointer() #8
  %137 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 5
  %140 = getelementptr i32, ptr @__cpu_online_mask, i32 %139
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %138, 31
  %143 = shl nuw i32 1, %142
  %144 = and i32 %143, %141
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %135
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %147 = tail call i32 @__traceiter_dpaux_writel(ptr noundef null, ptr noundef %132, i32 noundef 5, i32 noundef 15) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %148

148:                                              ; preds = %146, %135, %129
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %149 = load ptr, ptr %19, align 8
  %150 = getelementptr i8, ptr %149, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 15) #8, !srcloc !11
  tail call void @mutex_lock(ptr noundef nonnull @dpaux_lock) #8
  %151 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpaux_list, i32 0, i32 1), align 4
  store ptr %14, ptr getelementptr inbounds (%struct.list_head, ptr @dpaux_list, i32 0, i32 1), align 4
  store ptr @dpaux_list, ptr %14, align 4
  store ptr %151, ptr %15, align 4
  store volatile ptr %14, ptr %151, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dpaux_lock) #8
  %152 = tail call i32 @devm_of_dp_aux_populate_ep_devices(ptr noundef nonnull %3) #8
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.11, i32 noundef %152) #9
  br label %156

156:                                              ; preds = %154, %148, %109, %86, %83, %65, %63, %58, %51, %43, %35, %23, %21, %1
  %157 = phi i32 [ %22, %21 ], [ %46, %43 ], [ %54, %51 ], [ %56, %58 ], [ %81, %83 ], [ %111, %109 ], [ %152, %154 ], [ %38, %35 ], [ -12, %1 ], [ -6, %23 ], [ %90, %86 ], [ 0, %148 ], [ %64, %63 ], [ %67, %65 ]
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 11
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #8
  tail call fastcc void @tegra_dpaux_pad_power_down(ptr noundef %3)
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #8
  tail call void @mutex_lock(ptr noundef nonnull @dpaux_lock) #8
  %8 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 12
  %9 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 12, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dpaux_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_dp_aux_find_by_of_node(ptr noundef readnone %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @dpaux_lock) #8
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @dpaux_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @dpaux_list
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -68
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %2

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %4, i32 -876
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ null, %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dpaux_lock) #8
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_attach(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  store ptr %4, ptr %5, align 4
  %6 = tail call i32 @drm_dp_aux_register(ptr noundef %0) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %60, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 10, i32 33
  store i8 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 5
  store ptr %1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @regulator_enable(ptr noundef nonnull %16) #8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %60, label %21

21:                                               ; preds = %18, %14
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = sub i32 -25, %22
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = add i32 %23, %24
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 3
  %29 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 1
  br label %30

30:                                               ; preds = %53, %27
  %31 = load ptr, ptr %28, align 8
  %32 = getelementptr i8, ptr %31, i32 196
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %34 = load ptr, ptr %29, align 8
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = tail call ptr @llvm.thread.pointer() #8
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %49 = tail call i32 @__traceiter_dpaux_readl(ptr noundef null, ptr noundef %34, i32 noundef 49, i32 noundef %33) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %50

50:                                               ; preds = %48, %37, %30
  %51 = and i32 %33, 268435456
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = add i32 %23, %54
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %30, label %60

57:                                               ; preds = %50, %8
  %58 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  tail call void @enable_irq(i32 noundef %59) #8
  br label %60

60:                                               ; preds = %57, %53, %21, %18, %2
  %61 = phi i32 [ 0, %57 ], [ %6, %2 ], [ %19, %18 ], [ -110, %21 ], [ -110, %53 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_detect(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 196
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %6 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #8
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %22 = tail call i32 @__traceiter_dpaux_readl(ptr noundef null, ptr noundef %7, i32 noundef 49, i32 noundef %5) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %23

23:                                               ; preds = %21, %10, %1
  %24 = and i32 %5, 268435456
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 2, i32 1
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_detach(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @drm_dp_aux_unregister(ptr noundef %0) #8
  %2 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  tail call void @disable_irq(i32 noundef %3) #8
  %4 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tegra_output, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %53, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @regulator_disable(ptr noundef nonnull %11) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %53, label %16

16:                                               ; preds = %13, %9
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = sub i32 -25, %17
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = add i32 %18, %19
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 3
  %24 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 1
  br label %25

25:                                               ; preds = %48, %22
  %26 = load ptr, ptr %23, align 8
  %27 = getelementptr i8, ptr %26, i32 196
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %29 = load ptr, ptr %24, align 8
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = tail call ptr @llvm.thread.pointer() #8
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %44 = tail call i32 @__traceiter_dpaux_readl(ptr noundef null, ptr noundef %29, i32 noundef 49, i32 noundef %28) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %45

45:                                               ; preds = %43, %32, %25
  %46 = and i32 %28, 268435456
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = add i32 %18, %49
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %25, label %53

52:                                               ; preds = %45
  store ptr null, ptr %4, align 8
  br label %53

53:                                               ; preds = %52, %48, %16, %13, %1
  %54 = phi i32 [ 0, %52 ], [ 0, %1 ], [ %14, %13 ], [ -110, %16 ], [ -110, %48 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_enable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @tegra_dpaux_pad_config(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_dpaux_pad_config(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  switch i32 %1, label %85 [
    i32 0, label %5
    i32 1, label %3
    i32 2, label %4
  ]

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  tail call fastcc void @tegra_dpaux_pad_power_down(ptr noundef %0)
  br label %85

5:                                                ; preds = %3, %2
  %6 = phi i32 [ 49153, %3 ], [ 2, %2 ]
  %7 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 12
  %11 = and i32 %10, 12288
  %12 = getelementptr inbounds %struct.tegra_dpaux_soc, ptr %8, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 8
  %15 = and i32 %14, 1792
  %16 = getelementptr inbounds %struct.tegra_dpaux_soc, ptr %8, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 2
  %19 = and i32 %18, 252
  %20 = or i32 %11, %15
  %21 = or i32 %20, %19
  %22 = or i32 %21, %6
  %23 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %5
  %28 = tail call ptr @llvm.thread.pointer() #8
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 5
  %32 = getelementptr i32, ptr @__cpu_online_mask, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %39 = tail call i32 @__traceiter_dpaux_writel(ptr noundef null, ptr noundef %24, i32 noundef 73, i32 noundef %22) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %40

40:                                               ; preds = %38, %27, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %41 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr i8, ptr %42, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %22) #8, !srcloc !11
  %44 = load ptr, ptr %41, align 8
  %45 = getelementptr i8, ptr %44, i32 308
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %47 = load ptr, ptr %23, align 8
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %40
  %51 = tail call ptr @llvm.thread.pointer() #8
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %62 = tail call i32 @__traceiter_dpaux_readl(ptr noundef null, ptr noundef %47, i32 noundef 77, i32 noundef %46) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %63 = load ptr, ptr %23, align 8
  br label %64

64:                                               ; preds = %61, %50, %40
  %65 = phi ptr [ %47, %40 ], [ %47, %50 ], [ %63, %61 ]
  %66 = and i32 %46, -2
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = tail call ptr @llvm.thread.pointer() #8
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %81 = tail call i32 @__traceiter_dpaux_writel(ptr noundef null, ptr noundef %65, i32 noundef 77, i32 noundef %66) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %82

82:                                               ; preds = %80, %69, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %83 = load ptr, ptr %41, align 8
  %84 = getelementptr i8, ptr %83, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %66) #8, !srcloc !11
  br label %85

85:                                               ; preds = %82, %4, %2
  %86 = phi i32 [ 0, %4 ], [ 0, %82 ], [ -524, %2 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_disable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call fastcc void @tegra_dpaux_pad_power_down(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_dpaux_pad_power_down(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 308
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %6 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = tail call ptr @llvm.thread.pointer() #8
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %22 = tail call i32 @__traceiter_dpaux_readl(ptr noundef null, ptr noundef %7, i32 noundef 77, i32 noundef %5) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %23 = load ptr, ptr %6, align 8
  br label %24

24:                                               ; preds = %21, %10, %1
  %25 = phi ptr [ %7, %1 ], [ %7, %10 ], [ %23, %21 ]
  %26 = or i32 %5, 1
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = tail call ptr @llvm.thread.pointer() #8
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %41 = tail call i32 @__traceiter_dpaux_writel(ptr noundef null, ptr noundef %25, i32 noundef 77, i32 noundef %26) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %42

42:                                               ; preds = %40, %29, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr i8, ptr %43, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %26) #8, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_dpaux_hotplug(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -36
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tegra_output, ptr %3, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %7) #8
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %7 = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = tail call ptr @llvm.thread.pointer() #8
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %23 = tail call i32 @__traceiter_dpaux_readl(ptr noundef null, ptr noundef %8, i32 noundef 5, i32 noundef %6) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %24 = load ptr, ptr %7, align 8
  br label %25

25:                                               ; preds = %22, %11, %2
  %26 = phi ptr [ %8, %2 ], [ %8, %11 ], [ %24, %22 ]
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = tail call ptr @llvm.thread.pointer() #8
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %41 = tail call i32 @__traceiter_dpaux_writel(ptr noundef null, ptr noundef %26, i32 noundef 5, i32 noundef %6) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %42

42:                                               ; preds = %40, %29, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr i8, ptr %43, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %6) #8, !srcloc !11
  %45 = and i32 %6, 3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 11
  %49 = load ptr, ptr @system_wq, align 4
  %50 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %49, ptr noundef %48) #8
  br label %51

51:                                               ; preds = %47, %42
  %52 = and i32 %6, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 10
  tail call void @complete(ptr noundef %55) #8
  br label %56

56:                                               ; preds = %54, %51
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_transfer(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 16
  br i1 %5, label %285, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, -5
  %12 = icmp ult i8 %11, 3
  br i1 %12, label %18, label %285

13:                                               ; preds = %6
  %14 = add nuw nsw i32 %4, 255
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i8 [ %17, %13 ], [ %10, %8 ]
  %20 = phi i32 [ %15, %13 ], [ 256, %8 ]
  %21 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 1
  %22 = zext i8 %19 to i32
  %23 = and i8 %19, -5
  switch i8 %23, label %285 [
    i8 0, label %24
    i8 1, label %28
    i8 2, label %35
    i8 8, label %42
    i8 9, label %44
  ]

24:                                               ; preds = %18
  %25 = shl nuw nsw i32 %22, 12
  %26 = and i32 %25, 16384
  %27 = or i32 %26, %20
  br label %46

28:                                               ; preds = %18
  %29 = and i32 %22, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = or i32 %20, 20480
  br label %46

33:                                               ; preds = %28
  %34 = or i32 %20, 4096
  br label %46

35:                                               ; preds = %18
  %36 = and i32 %22, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = or i32 %20, 24576
  br label %46

40:                                               ; preds = %35
  %41 = or i32 %20, 8192
  br label %46

42:                                               ; preds = %18
  %43 = or i32 %20, 32768
  br label %46

44:                                               ; preds = %18
  %45 = or i32 %20, 36864
  br label %46

46:                                               ; preds = %44, %42, %40, %38, %33, %31, %24
  %47 = phi i32 [ %45, %44 ], [ %43, %42 ], [ %39, %38 ], [ %41, %40 ], [ %32, %31 ], [ %34, %33 ], [ %27, %24 ]
  %48 = load i32, ptr %1, align 4
  %49 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = tail call ptr @llvm.thread.pointer() #8
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 5
  %58 = getelementptr i32, ptr @__cpu_online_mask, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %56, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %65 = tail call i32 @__traceiter_dpaux_writel(ptr noundef null, ptr noundef %50, i32 noundef 41, i32 noundef %48) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %66

66:                                               ; preds = %64, %53, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %67 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr i8, ptr %68, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %48) #8, !srcloc !11
  %70 = load ptr, ptr %49, align 8
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 1), align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = tail call ptr @llvm.thread.pointer() #8
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = lshr i32 %76, 5
  %78 = getelementptr i32, ptr @__cpu_online_mask, i32 %77
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %76, 31
  %81 = shl nuw i32 1, %80
  %82 = and i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %85 = tail call i32 @__traceiter_dpaux_writel(ptr noundef null, ptr noundef %70, i32 noundef 45, i32 noundef %47) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %86

86:                                               ; preds = %84, %73, %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %87 = load ptr, ptr %67, align 8
  %88 = getelementptr i8, ptr %87, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %47) #8, !srcloc !11
  %89 = load i8, ptr %21, align 4
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %164

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = load i32, ptr %3, align 4
  %96 = add i32 %95, 3
  %97 = icmp ult i32 %96, 4
  br i1 %97, label %164, label %98

98:                                               ; preds = %92
  %99 = lshr i32 %96, 2
  br label %100

100:                                              ; preds = %155, %98
  %101 = phi i32 [ %95, %98 ], [ %160, %155 ]
  %102 = phi i32 [ 0, %98 ], [ %159, %155 ]
  %103 = tail call i32 @llvm.umin.i32(i32 %101, i32 4) #8
  %104 = shl i32 %102, 2
  %105 = sub i32 %95, %104
  %106 = tail call i32 @llvm.umin.i32(i32 %105, i32 4) #8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %136, label %108

108:                                              ; preds = %100
  %109 = getelementptr i8, ptr %94, i32 %104
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %103, 1
  br i1 %112, label %136, label %113

113:                                              ; preds = %108
  %114 = or i32 %104, 1
  %115 = getelementptr i8, ptr %94, i32 %114
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i32
  %118 = shl nuw nsw i32 %117, 8
  %119 = or i32 %118, %111
  %120 = icmp eq i32 %103, 2
  br i1 %120, label %136, label %121

121:                                              ; preds = %113
  %122 = or i32 %104, 2
  %123 = getelementptr i8, ptr %94, i32 %122
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = shl nuw nsw i32 %125, 16
  %127 = or i32 %126, %119
  %128 = icmp eq i32 %103, 3
  br i1 %128, label %136, label %129

129:                                              ; preds = %121
  %130 = or i32 %104, 3
  %131 = getelementptr i8, ptr %94, i32 %130
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = shl nuw i32 %133, 24
  %135 = or i32 %134, %127
  br label %136

136:                                              ; preds = %129, %121, %113, %108, %100
  %137 = phi i32 [ 0, %100 ], [ %111, %108 ], [ %119, %113 ], [ %127, %121 ], [ %135, %129 ]
  %138 = add i32 %104, 9
  %139 = load ptr, ptr %49, align 8
  %140 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 1), align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = tail call ptr @llvm.thread.pointer() #8
  %144 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 2
  %145 = load i32, ptr %144, align 8
  %146 = lshr i32 %145, 5
  %147 = getelementptr i32, ptr @__cpu_online_mask, i32 %146
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %145, 31
  %150 = shl nuw i32 1, %149
  %151 = and i32 %150, %148
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %142
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %154 = tail call i32 @__traceiter_dpaux_writel(ptr noundef null, ptr noundef %139, i32 noundef %138, i32 noundef %137) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %155

155:                                              ; preds = %153, %142, %136
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %156 = load ptr, ptr %67, align 8
  %157 = shl i32 %138, 2
  %158 = getelementptr i8, ptr %156, i32 %157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %137) #8, !srcloc !11
  %159 = add nuw nsw i32 %102, 1
  %160 = add i32 %101, -4
  %161 = icmp eq i32 %159, %99
  br i1 %161, label %162, label %100

162:                                              ; preds = %155
  %163 = load i32, ptr %3, align 4
  br label %164

164:                                              ; preds = %162, %92, %86
  %165 = phi i32 [ 0, %86 ], [ %163, %162 ], [ %95, %92 ]
  %166 = load ptr, ptr %67, align 8
  %167 = getelementptr i8, ptr %166, i32 180
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %169 = load ptr, ptr %49, align 8
  %170 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 1), align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %164
  %173 = tail call ptr @llvm.thread.pointer() #8
  %174 = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 2
  %175 = load i32, ptr %174, align 8
  %176 = lshr i32 %175, 5
  %177 = getelementptr i32, ptr @__cpu_online_mask, i32 %176
  %178 = load volatile i32, ptr %177, align 4
  %179 = and i32 %175, 31
  %180 = shl nuw i32 1, %179
  %181 = and i32 %180, %178
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %172
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %184 = tail call i32 @__traceiter_dpaux_readl(ptr noundef null, ptr noundef %169, i32 noundef 45, i32 noundef %168) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %185 = load ptr, ptr %49, align 8
  br label %186

186:                                              ; preds = %183, %172, %164
  %187 = phi ptr [ %169, %164 ], [ %169, %172 ], [ %185, %183 ]
  %188 = or i32 %168, 65536
  %189 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 1), align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %186
  %192 = tail call ptr @llvm.thread.pointer() #8
  %193 = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 2
  %194 = load i32, ptr %193, align 8
  %195 = lshr i32 %194, 5
  %196 = getelementptr i32, ptr @__cpu_online_mask, i32 %195
  %197 = load volatile i32, ptr %196, align 4
  %198 = and i32 %194, 31
  %199 = shl nuw i32 1, %198
  %200 = and i32 %199, %197
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %191
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %203 = tail call i32 @__traceiter_dpaux_writel(ptr noundef null, ptr noundef %187, i32 noundef 45, i32 noundef %188) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %204

204:                                              ; preds = %202, %191, %186
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %205 = load ptr, ptr %67, align 8
  %206 = getelementptr i8, ptr %205, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %188) #8, !srcloc !11
  %207 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 10
  %208 = tail call i32 @wait_for_completion_timeout(ptr noundef %207, i32 noundef 25) #8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %285, label %210

210:                                              ; preds = %204
  %211 = load ptr, ptr %67, align 8
  %212 = getelementptr i8, ptr %211, i32 196
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %214 = load ptr, ptr %49, align 8
  %215 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 1), align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %210
  %218 = tail call ptr @llvm.thread.pointer() #8
  %219 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %220 = load i32, ptr %219, align 8
  %221 = lshr i32 %220, 5
  %222 = getelementptr i32, ptr @__cpu_online_mask, i32 %221
  %223 = load volatile i32, ptr %222, align 4
  %224 = and i32 %220, 31
  %225 = shl nuw i32 1, %224
  %226 = and i32 %225, %223
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %217
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %229 = tail call i32 @__traceiter_dpaux_readl(ptr noundef null, ptr noundef %214, i32 noundef 49, i32 noundef %213) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %230 = load ptr, ptr %49, align 8
  br label %231

231:                                              ; preds = %228, %217, %210
  %232 = phi ptr [ %214, %210 ], [ %214, %217 ], [ %230, %228 ]
  %233 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 1), align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %248

235:                                              ; preds = %231
  %236 = tail call ptr @llvm.thread.pointer() #8
  %237 = getelementptr inbounds %struct.thread_info, ptr %236, i32 0, i32 2
  %238 = load i32, ptr %237, align 8
  %239 = lshr i32 %238, 5
  %240 = getelementptr i32, ptr @__cpu_online_mask, i32 %239
  %241 = load volatile i32, ptr %240, align 4
  %242 = and i32 %238, 31
  %243 = shl nuw i32 1, %242
  %244 = and i32 %243, %241
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %235
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %247 = tail call i32 @__traceiter_dpaux_writel(ptr noundef null, ptr noundef %232, i32 noundef 49, i32 noundef 3840) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  br label %248

248:                                              ; preds = %246, %235, %231
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %249 = load ptr, ptr %67, align 8
  %250 = getelementptr i8, ptr %249, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 3840) #8, !srcloc !11
  %251 = and i32 %213, 256
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %285

253:                                              ; preds = %248
  %254 = and i32 %213, 3584
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %285

256:                                              ; preds = %253
  %257 = lshr i32 %213, 16
  %258 = and i32 %257, 15
  %259 = add nsw i32 %258, -1
  %260 = icmp ult i32 %259, 8
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = getelementptr inbounds [8 x i8], ptr @switch.table.tegra_dpaux_transfer, i32 0, i32 %259
  %263 = load i8, ptr %262, align 1
  br label %264

264:                                              ; preds = %261, %256
  %265 = phi i8 [ 0, %256 ], [ %263, %261 ]
  %266 = load i32, ptr %3, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %282, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 2
  %270 = load i8, ptr %269, align 1
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %268
  %273 = load i8, ptr %21, align 4
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %282, label %276

276:                                              ; preds = %272
  %277 = and i32 %213, 255
  %278 = icmp eq i32 %277, %266
  br i1 %278, label %279, label %285

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 3
  %281 = load ptr, ptr %280, align 4
  tail call fastcc void @tegra_dpaux_read_fifo(ptr noundef %0, ptr noundef %281, i32 noundef %266)
  br label %282

282:                                              ; preds = %279, %272, %268, %264
  %283 = phi i32 [ %165, %272 ], [ %165, %268 ], [ %165, %264 ], [ %266, %279 ]
  %284 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 2
  store i8 %265, ptr %284, align 1
  br label %285

285:                                              ; preds = %282, %276, %253, %248, %204, %18, %8, %2
  %286 = phi i32 [ -22, %2 ], [ -22, %8 ], [ -22, %18 ], [ -110, %204 ], [ -110, %248 ], [ -5, %253 ], [ %283, %282 ], [ -16, %276 ]
  ret i32 %286
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_dp_aux_populate_ep_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_dpaux_read_fifo(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = add i32 %2, 3
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %65, label %6

6:                                                ; preds = %3
  %7 = lshr i32 %4, 2
  %8 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.tegra_dpaux, ptr %0, i32 0, i32 1
  br label %10

10:                                               ; preds = %61, %6
  %11 = phi i32 [ %2, %6 ], [ %63, %61 ]
  %12 = phi i32 [ 0, %6 ], [ %62, %61 ]
  %13 = call i32 @llvm.umin.i32(i32 %11, i32 4)
  %14 = shl i32 %12, 2
  %15 = sub i32 %2, %14
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 4)
  %17 = add i32 %14, 25
  %18 = load ptr, ptr %8, align 8
  %19 = shl i32 %17, 2
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  %22 = load ptr, ptr %9, align 8
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %10
  %26 = tail call ptr @llvm.thread.pointer() #8
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %37 = tail call i32 @__traceiter_dpaux_readl(ptr noundef null, ptr noundef %22, i32 noundef %17, i32 noundef %21) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %38

38:                                               ; preds = %36, %25, %10
  %39 = icmp eq i32 %16, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %38
  %41 = trunc i32 %21 to i8
  %42 = getelementptr i8, ptr %1, i32 %14
  store i8 %41, ptr %42, align 1
  %43 = icmp eq i32 %13, 1
  br i1 %43, label %61, label %44

44:                                               ; preds = %40
  %45 = lshr i32 %21, 8
  %46 = trunc i32 %45 to i8
  %47 = or i32 %14, 1
  %48 = getelementptr i8, ptr %1, i32 %47
  store i8 %46, ptr %48, align 1
  %49 = icmp eq i32 %13, 2
  br i1 %49, label %61, label %50

50:                                               ; preds = %44
  %51 = lshr i32 %21, 16
  %52 = trunc i32 %51 to i8
  %53 = or i32 %14, 2
  %54 = getelementptr i8, ptr %1, i32 %53
  store i8 %52, ptr %54, align 1
  %55 = icmp eq i32 %13, 3
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = lshr i32 %21, 24
  %58 = trunc i32 %57 to i8
  %59 = or i32 %14, 3
  %60 = getelementptr i8, ptr %1, i32 %59
  store i8 %58, ptr %60, align 1
  br label %61

61:                                               ; preds = %56, %50, %44, %40, %38
  %62 = add nuw nsw i32 %12, 1
  %63 = add i32 %11, -4
  %64 = icmp eq i32 %62, %7
  br i1 %64, label %65, label %10

65:                                               ; preds = %61, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra_dpaux_get_groups_count(ptr nocapture noundef readnone %0) #3 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @tegra_dpaux_get_group_name(ptr nocapture noundef readnone %0, i32 noundef %1) #3 {
  ret ptr @.str.15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tegra_dpaux_get_group_pins(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #4 {
  store ptr @tegra_dpaux_pin_numbers, ptr %2, align 4
  store i32 2, ptr %3, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dt_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tegra_dpaux_get_functions_count(ptr nocapture noundef readnone %0) #3 {
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @tegra_dpaux_get_function_name(ptr nocapture noundef readnone %0, i32 noundef %1) #3 {
  %3 = getelementptr [3 x ptr], ptr @tegra_dpaux_functions, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tegra_dpaux_get_function_groups(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #4 {
  store i32 1, ptr %3, align 4
  store ptr @tegra_dpaux_groups, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %5 = tail call fastcc i32 @tegra_dpaux_pad_config(ptr noundef %4, i32 noundef %1)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpaux_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @reset_control_assert(ptr noundef nonnull %5) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %8) #9
  br label %17

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %8, %7 ], [ 0, %1 ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %13 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 7
  %14 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %15 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  br label %17

17:                                               ; preds = %11, %10
  %18 = phi i32 [ %8, %10 ], [ %12, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ]
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %13) #9
  br label %42

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 7
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @clk_prepare(ptr noundef %18) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = tail call i32 @clk_enable(ptr noundef %18) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %18) #8
  br label %25

25:                                               ; preds = %24, %16
  %26 = phi i32 [ %19, %16 ], [ %22, %24 ]
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %26) #9
  br label %39

29:                                               ; preds = %25, %21
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %30 = getelementptr inbounds %struct.tegra_dpaux, ptr %3, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @reset_control_deassert(ptr noundef nonnull %31) #8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %34) #9
  %37 = load ptr, ptr %17, align 8
  tail call void @clk_disable(ptr noundef %37) #8
  tail call void @clk_unprepare(ptr noundef %37) #8
  br label %39

38:                                               ; preds = %33
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  br label %42

39:                                               ; preds = %36, %28
  %40 = phi i32 [ %26, %28 ], [ %34, %36 ]
  %41 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %41) #8
  tail call void @clk_unprepare(ptr noundef %41) #8
  br label %42

42:                                               ; preds = %39, %38, %29, %15
  %43 = phi i32 [ %13, %15 ], [ %40, %39 ], [ 0, %38 ], [ 0, %29 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpaux_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{i64 2155736490}
!9 = !{i64 2155736662}
!10 = !{i64 2155817178}
!11 = !{i64 3106723}
!12 = !{i64 3107141}
!13 = !{i64 2155816812}
!14 = !{i64 2155756762}
!15 = !{i64 2155756932}
