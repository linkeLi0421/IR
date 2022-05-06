; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dp/dp_display.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_display.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.component_ops = type { ptr, ptr }
%struct.msm_dp_config = type { ptr, i32 }
%struct.msm_dp_desc = type { i32, i32 }
%struct.msm_dp = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i32, ptr, i32, i32, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.dp_panel = type { [16 x i8], [16 x i8], i32, i32, %struct.dp_link_info, %struct.drm_dp_desc, ptr, ptr, %struct.dp_display_mode, i8, i32, i32, i32, i32 }
%struct.dp_link_info = type { i8, i32, i32, i32 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.dp_display_mode = type { %struct.drm_display_mode, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.dp_link = type { i32, i32, i8, i8, %struct.dp_link_test_video, %struct.dp_link_test_audio, %struct.dp_link_phy_params, %struct.dp_link_info }
%struct.dp_link_test_video = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_test_audio = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_phy_params = type { i32, i8, i8 }
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
%struct.dp_display_private = type { ptr, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dp_usbpd_cb, %struct.dp_display_mode, %struct.msm_dp, %struct.completion, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, [8 x %struct.dp_event], %struct.spinlock, ptr }
%struct.dp_usbpd_cb = type { ptr, ptr, ptr }
%struct.dp_event = type { i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.79 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.87, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.87 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.dp_audio = type { i32, i32 }
%struct.dp_panel_in = type { ptr, ptr, ptr, ptr }
%struct.dp_parser = type { ptr, [4 x %struct.dss_module_power], %struct.dp_pinctrl, %struct.dp_io, %struct.dp_display_data, ptr, i32, ptr, ptr }
%struct.dss_module_power = type { i32, ptr }
%struct.dp_pinctrl = type { ptr, ptr, ptr, ptr }
%struct.dp_io = type { %struct.dss_io_data, ptr, %union.phy_configure_opts }
%struct.dss_io_data = type { %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region }
%struct.dss_io_region = type { i32, ptr }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dp_display_data = type { ptr, ptr, i8, ptr, ptr }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = private unnamed_addr constant [16 x i8] c"invalid params\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid input\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to get irq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"dp_display_isr\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to request IRQ%u: %d\0A\00", align 1
@dp_display_driver = internal global %struct.platform_driver { ptr @dp_display_probe, ptr @dp_display_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.18, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @dp_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.5 = private unnamed_addr constant [34 x i8] c"Dp display driver register failed\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"failed to initialize debug, rc = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"drivers/gpu/drm/msm/dp/dp_display.c\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"request_irq failed, ret=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to create dp connector: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"*ERROR* failed to create dp bridge: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"invalid data\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"hpd isr status=%#x\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"msm-dp-display\00", align 1
@dp_dt_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-dp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7180_dp_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-dp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7280_dp_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-edp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc7280_dp_cfg }, %struct.of_device_id zeroinitializer], align 4
@dp_pm_ops = internal constant %struct.dev_pm_ops { ptr @dp_pm_prepare, ptr @dp_pm_complete, ptr @dp_pm_suspend, ptr @dp_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"pdev not found\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"drm_dp\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"init sub module failed\0A\00", align 1
@dp_display_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"&dp->event_mutex\00", align 1
@dp_display_comp_ops = internal constant %struct.component_ops { ptr @dp_display_bind, ptr @dp_display_unbind }, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"component add failed, rc=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"unknown displayport instance\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"failed to initialize hpd, rc = %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"failed to initialize parser, rc = %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"failed to initialize catalog, rc = %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"failed to initialize power, rc = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"failed to initialize aux, rc = %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"failed to initialize link, rc = %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"failed to initialize panel, rc = %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"failed to initialize ctrl, rc = %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"\013failed to initialize audio, rc = %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"failed to complete DP link training\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"hpd_state=%d sink_request=%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"sink count is zero, nothing to do\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"present=%#x sink_count=%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Disconnected sink_request: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"Disconnected, no DP_LINK_STATUS_UPDATED\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"device tree parsing failed\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"DRM DP AUX register failed\0A\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"Power client create failed\0A\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"Audio registration Dp failed\0A\00", align 1
@sc7180_dp_cfg = internal constant %struct.msm_dp_config { ptr @.compoundliteral, i32 1 }, align 4
@sc7280_dp_cfg = internal constant %struct.msm_dp_config { ptr @.compoundliteral.46, i32 2 }, align 4
@.compoundliteral = internal constant [1 x %struct.msm_dp_desc] [%struct.msm_dp_desc { i32 183042048, i32 10 }], align 4
@.compoundliteral.46 = internal constant [2 x %struct.msm_dp_desc] [%struct.msm_dp_desc { i32 183042048, i32 10 }, %struct.msm_dp_desc { i32 183107584, i32 14 }], align 4
@.str.47 = private unnamed_addr constant [36 x i8] c"Before, core_inited=%d power_on=%d\0A\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"After, core_inited=%d power_on=%d\0A\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"DP core not initialized\0A\00", align 1
@.str.50 = private unnamed_addr constant [65 x i8] c"After, sink_count=%d is_connected=%d core_inited=%d power_on=%d\0A\00", align 1
@dp_hpd_event_setup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"&dp_priv->event_q\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"dp_hpd_handler\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"hpd_state=%d\0A\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"HPD already %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"hpd=%d\0A\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"\013event_q is full: pndx=%d gndx=%d\0A\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"core_initialized=%d\0A\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"DP core already initialized\0A\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"sink_count=%d\0A\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"Link already setup, return\0A\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"audio comp timeout\0A\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"sink count: %d\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dp_display_signal_audio_start(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 48
  store i32 0, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_display_signal_audio_complete(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 48
  tail call void @complete_all(ptr noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_display_set_plugged_cb(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 10
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp ne i8 %7, 0
  %9 = icmp eq ptr %1, null
  %10 = icmp eq ptr %2, null
  %11 = or i1 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %0, i32 -186
  %14 = load i8, ptr %13, align 2, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %1(ptr noundef nonnull %2, i1 noundef zeroext %8) #12
  br label %17

17:                                               ; preds = %16, %12, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_display_validate_mode(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #12
  br label %29

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %0, i32 -152
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_connector, ptr %8, i32 0, i32 20, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = mul i32 %15, 3
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 24, i32 %16
  %19 = tail call i32 @dp_panel_get_mode_bpp(ptr noundef %13, i32 noundef %18, i32 noundef %1) #12
  %20 = mul i32 %19, %1
  %21 = getelementptr inbounds %struct.dp_panel, ptr %13, i32 0, i32 4, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dp_panel, ptr %13, i32 0, i32 4, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %22, 3
  %26 = mul i32 %25, %24
  %27 = icmp ugt i32 %20, %26
  %28 = select i1 %27, i32 -2, i32 0
  br label %29

29:                                               ; preds = %11, %10
  %30 = phi i32 [ -22, %10 ], [ %28, %11 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_panel_get_mode_bpp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_display_get_modes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #12
  br label %15

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -152
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @dp_panel_get_modes(ptr noundef %7, ptr noundef %9, ptr noundef %1) #12
  %11 = load i32, ptr %1, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 11
  store i32 %11, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %5, %4
  %16 = phi i32 [ 0, %4 ], [ %10, %13 ], [ %10, %5 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_panel_get_modes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dp_display_check_video_test(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i32 -152
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 9
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_display_get_test_bpp(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #12
  br label %12

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -156
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dp_link, ptr %6, i32 0, i32 4, i32 1
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %11 [
    i32 0, label %12
    i32 32, label %9
    i32 64, label %10
  ]

9:                                                ; preds = %4
  br label %12

10:                                               ; preds = %4
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11, %10, %9, %4, %3
  %13 = phi i32 [ 0, %3 ], [ 0, %11 ], [ 30, %10 ], [ 24, %9 ], [ 18, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dp_snapshot(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %1, i32 64
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.msm_dp, ptr %1, i32 0, i32 8
  %5 = load i8, ptr %4, align 2, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %1, i32 -164
  %9 = load ptr, ptr %8, align 4
  tail call void @dp_catalog_snapshot(ptr noundef %9, ptr noundef %0) #12
  br label %10

10:                                               ; preds = %7, %2
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_display_request_irq(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %22

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -184
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @irq_of_parse_and_map(ptr noundef %8, i32 noundef 0) #12
  %10 = getelementptr i8, ptr %0, i32 -196
  store i32 %9, ptr %10, align 4
  %11 = icmp slt i32 %9, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %9) #12
  br label %22

13:                                               ; preds = %4
  %14 = getelementptr i8, ptr %0, i32 -200
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %17 = tail call i32 @devm_request_threaded_irq(ptr noundef %16, i32 noundef %9, ptr noundef nonnull @dp_display_irq_handler, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.3, ptr noundef %14) #12
  %18 = icmp slt i32 %17, 0
  %19 = load i32, ptr %10, align 4
  br i1 %18, label %20, label %21

20:                                               ; preds = %13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %19, i32 noundef %17) #12
  br label %22

21:                                               ; preds = %13
  tail call void @disable_irq(i32 noundef %19) #12
  br label %22

22:                                               ; preds = %21, %20, %12, %3
  %23 = phi i32 [ %9, %12 ], [ %17, %20 ], [ 0, %21 ], [ -22, %3 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_display_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #12
  br label %138

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @dp_catalog_hpd_get_intr_status(ptr noundef %7) #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.17, i32 noundef %8) #12
  %9 = and i32 %8, 15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %133, label %11

11:                                               ; preds = %5
  %12 = and i32 %8, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 27
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #12
  %17 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  %20 = srem i32 %19, 8
  %21 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 25
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %18, i32 noundef %20) #13
  br label %32

26:                                               ; preds = %14
  %27 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %18
  %28 = and i32 %19, 7
  store i32 %28, ptr %17, align 4
  store i32 2, ptr %27, align 4
  %29 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %18, i32 1
  store i32 0, ptr %29, align 4
  %30 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %18, i32 2
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %31, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %32

32:                                               ; preds = %26, %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #12
  br label %33

33:                                               ; preds = %32, %11
  %34 = and i32 %8, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %74, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 27
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #12
  %39 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 24
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 25
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %58, label %44

44:                                               ; preds = %53, %36
  %45 = phi i32 [ %54, %53 ], [ %40, %36 ]
  %46 = phi i32 [ %56, %53 ], [ %42, %36 ]
  %47 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  store i32 0, ptr %47, align 4
  %51 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %46, i32 2
  store i32 0, ptr %51, align 4
  %52 = load i32, ptr %39, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i32 [ %52, %50 ], [ %45, %44 ]
  %55 = add i32 %46, 1
  %56 = and i32 %55, 7
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %44

58:                                               ; preds = %53, %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #12
  %59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #12
  %60 = load i32, ptr %39, align 4
  %61 = add i32 %60, 1
  %62 = srem i32 %61, 8
  %63 = load i32, ptr %41, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %60, i32 noundef %62) #13
  br label %73

67:                                               ; preds = %58
  %68 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %60
  %69 = and i32 %61, 7
  store i32 %69, ptr %39, align 4
  store i32 3, ptr %68, align 4
  %70 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %60, i32 1
  store i32 0, ptr %70, align 4
  %71 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %60, i32 2
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %72, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %73

73:                                               ; preds = %67, %65
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %59) #12
  br label %74

74:                                               ; preds = %73, %33
  %75 = and i32 %8, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %111, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 27
  %79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %78) #12
  %80 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 24
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  %83 = srem i32 %82, 8
  %84 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 25
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %81, i32 noundef %83) #13
  br label %95

89:                                               ; preds = %77
  %90 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %81
  %91 = and i32 %82, 7
  store i32 %91, ptr %80, align 4
  store i32 4, ptr %90, align 4
  %92 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %81, i32 1
  store i32 0, ptr %92, align 4
  %93 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %81, i32 2
  store i32 0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %94, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %95

95:                                               ; preds = %89, %87
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %78, i32 noundef %79) #12
  %96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %78) #12
  %97 = load i32, ptr %80, align 4
  %98 = add i32 %97, 1
  %99 = srem i32 %98, 8
  %100 = load i32, ptr %84, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %97, i32 noundef %99) #13
  br label %110

104:                                              ; preds = %95
  %105 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %97
  %106 = and i32 %98, 7
  store i32 %106, ptr %80, align 4
  store i32 2, ptr %105, align 4
  %107 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %97, i32 1
  store i32 0, ptr %107, align 4
  %108 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %97, i32 2
  store i32 3, ptr %108, align 4
  %109 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %109, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %110

110:                                              ; preds = %104, %102
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %78, i32 noundef %96) #12
  br label %111

111:                                              ; preds = %110, %74
  %112 = and i32 %8, 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %133, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 27
  %116 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %115) #12
  %117 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 24
  %118 = load i32, ptr %117, align 4
  %119 = add i32 %118, 1
  %120 = srem i32 %119, 8
  %121 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 25
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %118, i32 noundef %120) #13
  br label %132

126:                                              ; preds = %114
  %127 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %118
  %128 = and i32 %119, 7
  store i32 %128, ptr %117, align 4
  store i32 4, ptr %127, align 4
  %129 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %118, i32 1
  store i32 0, ptr %129, align 4
  %130 = getelementptr %struct.dp_display_private, ptr %1, i32 0, i32 26, i32 %118, i32 2
  store i32 0, ptr %130, align 4
  %131 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %131, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %132

132:                                              ; preds = %126, %124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %115, i32 noundef %116) #12
  br label %133

133:                                              ; preds = %132, %111, %5
  %134 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 15
  %135 = load ptr, ptr %134, align 4
  tail call void @dp_ctrl_isr(ptr noundef %135) #12
  %136 = getelementptr inbounds %struct.dp_display_private, ptr %1, i32 0, i32 12
  %137 = load ptr, ptr %136, align 4
  tail call void @dp_aux_isr(ptr noundef %137) #12
  br label %138

138:                                              ; preds = %133, %4
  %139 = phi i32 [ 1, %133 ], [ 0, %4 ]
  ret i32 %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @msm_dp_register() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dp_display_driver, ptr noundef nonnull @__this_module) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #12
  br label %4

4:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_dp_unregister() local_unnamed_addr #5 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dp_display_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dp_irq_postinstall(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 -200
  %5 = getelementptr i8, ptr %0, i32 84
  tail call void @__init_waitqueue_head(ptr noundef %5, ptr noundef nonnull @.str.51, ptr noundef nonnull @dp_hpd_event_setup.__key) #12
  %6 = getelementptr i8, ptr %0, i32 204
  store i32 0, ptr %6, align 4
  %7 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @hpd_event_thread, ptr noundef %4, i32 noundef -1, ptr noundef nonnull @.str.52) #12
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @wake_up_process(ptr noundef %7) #12
  br label %11

11:                                               ; preds = %9, %3
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %13 = getelementptr i8, ptr %0, i32 100
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  %16 = srem i32 %15, 8
  %17 = getelementptr i8, ptr %0, i32 104
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %14, i32 noundef %16) #13
  br label %27

22:                                               ; preds = %11
  %23 = getelementptr %struct.dp_display_private, ptr %4, i32 0, i32 26, i32 %14
  %24 = and i32 %15, 7
  store i32 %24, ptr %13, align 4
  store i32 1, ptr %23, align 4
  %25 = getelementptr %struct.dp_display_private, ptr %4, i32 0, i32 26, i32 %14, i32 1
  store i32 0, ptr %25, align 4
  %26 = getelementptr %struct.dp_display_private, ptr %4, i32 0, i32 26, i32 %14, i32 2
  store i32 100, ptr %26, align 4
  tail call void @__wake_up(ptr noundef %5, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %27

27:                                               ; preds = %22, %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %12) #12
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dp_debugfs_init(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 -184
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr i8, ptr %0, i32 -152
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -176
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 -156
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @dp_debug_get(ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %11, ptr noundef %13, ptr noundef %1) #12
  %15 = getelementptr i8, ptr %0, i32 -144
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = ptrtoint ptr %14 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %18) #12
  store ptr null, ptr %15, align 4
  br label %19

19:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_debug_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dp_modeset_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1465, i32 noundef 9, ptr noundef null) #12
  br label %44

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1465, i32 noundef 9, ptr noundef null) #12
  br label %44

9:                                                ; preds = %6
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1465, i32 noundef 9, ptr noundef null) #12
  br label %44

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  store ptr %1, ptr %0, align 4
  %15 = tail call i32 @dp_display_request_irq(ptr noundef nonnull %0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %15) #12
  br label %44

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 4
  store ptr %2, ptr %19, align 4
  %20 = tail call ptr @dp_drm_connector_init(ptr noundef nonnull %0) #12
  %21 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = ptrtoint ptr %20 to i32
  %25 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %26, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %24) #12
  store ptr null, ptr %21, align 4
  br label %44

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.msm_drm_private, ptr %14, i32 0, i32 32
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  %31 = getelementptr %struct.msm_drm_private, ptr %14, i32 0, i32 33, i32 %29
  store ptr %20, ptr %31, align 4
  %32 = tail call ptr @msm_dp_bridge_init(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #12
  %33 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = ptrtoint ptr %32 to i32
  %37 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %38, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %36) #12
  store ptr null, ptr %33, align 4
  br label %44

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.msm_drm_private, ptr %14, i32 0, i32 30
  %41 = load i32, ptr %40, align 8
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 8
  %43 = getelementptr %struct.msm_drm_private, ptr %14, i32 0, i32 31, i32 %41
  store ptr %32, ptr %43, align 4
  br label %44

44:                                               ; preds = %39, %35, %23, %17, %11, %8, %5
  %45 = phi i32 [ %15, %17 ], [ %24, %23 ], [ %36, %35 ], [ 0, %39 ], [ -22, %11 ], [ -22, %8 ], [ -22, %5 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_drm_connector_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_dp_bridge_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dp_display_enable(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 -200
  %4 = getelementptr i8, ptr %0, i32 -128
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #12
  br label %175

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 64
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = getelementptr i8, ptr %0, i32 204
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #12
  %12 = getelementptr i8, ptr %0, i32 100
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %0, i32 104
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %31, label %17

17:                                               ; preds = %26, %8
  %18 = phi i32 [ %27, %26 ], [ %13, %8 ]
  %19 = phi i32 [ %29, %26 ], [ %15, %8 ]
  %20 = getelementptr %struct.dp_display_private, ptr %3, i32 0, i32 26, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 6
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  store i32 0, ptr %20, align 4
  %24 = getelementptr %struct.dp_display_private, ptr %3, i32 0, i32 26, i32 %19, i32 2
  store i32 0, ptr %24, align 4
  %25 = load i32, ptr %12, align 4
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i32 [ %25, %23 ], [ %18, %17 ]
  %28 = add i32 %19, 1
  %29 = and i32 %28, 7
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %17

31:                                               ; preds = %26, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #12
  %32 = getelementptr i8, ptr %0, i32 -152
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dp_panel, ptr %33, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %34, ptr noundef align 4 dereferenceable(112) %4, i32 112, i1 false) #12
  %35 = getelementptr i8, ptr %0, i32 -12
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr inbounds %struct.dp_panel, ptr %37, i32 0, i32 8, i32 2
  store i32 %36, ptr %38, align 4
  %39 = getelementptr i8, ptr %0, i32 -16
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %32, align 4
  %42 = getelementptr inbounds %struct.dp_panel, ptr %41, i32 0, i32 8, i32 1
  store i32 %40, ptr %42, align 4
  %43 = load ptr, ptr %32, align 4
  %44 = tail call i32 @dp_panel_init_panel_info(ptr noundef %43) #12
  %45 = getelementptr i8, ptr %0, i32 96
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %129

48:                                               ; preds = %31
  %49 = getelementptr i8, ptr %0, i32 -188
  %50 = load i8, ptr %49, align 4, !range !8
  %51 = zext i8 %50 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.59, i32 noundef %51) #12
  %52 = load i8, ptr %49, align 4, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.60) #12
  br label %68

55:                                               ; preds = %48
  %56 = getelementptr i8, ptr %0, i32 -176
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 2
  %60 = getelementptr i8, ptr %0, i32 -168
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 @dp_power_init(ptr noundef %61, i1 noundef zeroext %59) #12
  %63 = getelementptr i8, ptr %0, i32 -148
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 @dp_ctrl_host_init(ptr noundef %64, i1 noundef zeroext %59, i1 noundef zeroext true) #12
  %66 = getelementptr i8, ptr %0, i32 -160
  %67 = load ptr, ptr %66, align 4
  tail call void @dp_aux_init(ptr noundef %67) #12
  store i8 1, ptr %49, align 4
  br label %68

68:                                               ; preds = %55, %54
  %69 = getelementptr i8, ptr %0, i32 -156
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.dp_link, ptr %70, i32 0, i32 3
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.61, i32 noundef %73) #12
  %74 = getelementptr i8, ptr %0, i32 26
  %75 = load i8, ptr %74, align 2, !range !8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.62) #12
  br label %84

78:                                               ; preds = %68
  %79 = getelementptr i8, ptr %0, i32 -148
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @dp_ctrl_on_stream(ptr noundef %80) #12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i8 1, ptr %74, align 2
  br label %84

84:                                               ; preds = %83, %78, %77
  %85 = getelementptr i8, ptr %0, i32 -186
  %86 = load i8, ptr %85, align 2, !range !8
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %69, align 4
  %90 = getelementptr inbounds %struct.dp_link, ptr %89, i32 0, i32 7, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %91) #12
  %93 = zext i8 %92 to i32
  %94 = getelementptr i8, ptr %0, i32 208
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.dp_audio, ptr %95, i32 0, i32 1
  store i32 %93, ptr %96, align 4
  %97 = load ptr, ptr %69, align 4
  %98 = getelementptr inbounds %struct.dp_link, ptr %97, i32 0, i32 7, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = load ptr, ptr %94, align 4
  store i32 %99, ptr %100, align 4
  br label %101

101:                                              ; preds = %88, %84
  %102 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 10
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i8, ptr %85, align 2, !range !8
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  tail call void %103(ptr noundef nonnull %107, i1 noundef zeroext true) #12
  br label %113

113:                                              ; preds = %112, %109, %105, %101
  %114 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #12
  %115 = load i32, ptr %12, align 4
  %116 = add i32 %115, 1
  %117 = srem i32 %116, 8
  %118 = load i32, ptr %14, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %115, i32 noundef %117) #13
  br label %128

122:                                              ; preds = %113
  %123 = getelementptr %struct.dp_display_private, ptr %3, i32 0, i32 26, i32 %115
  %124 = and i32 %116, 7
  store i32 %124, ptr %12, align 4
  store i32 3, ptr %123, align 4
  %125 = getelementptr %struct.dp_display_private, ptr %3, i32 0, i32 26, i32 %115, i32 1
  store i32 0, ptr %125, align 4
  %126 = getelementptr %struct.dp_display_private, ptr %3, i32 0, i32 26, i32 %115, i32 2
  store i32 0, ptr %126, align 4
  %127 = getelementptr i8, ptr %0, i32 84
  tail call void @__wake_up(ptr noundef %127, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %128

128:                                              ; preds = %122, %120
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %114) #12
  br label %174

129:                                              ; preds = %31
  %130 = getelementptr i8, ptr %0, i32 -156
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.dp_link, ptr %131, i32 0, i32 3
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.61, i32 noundef %134) #12
  %135 = getelementptr i8, ptr %0, i32 26
  %136 = load i8, ptr %135, align 2, !range !8
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %129
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.62) #12
  br label %145

139:                                              ; preds = %129
  %140 = getelementptr i8, ptr %0, i32 -148
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i32 @dp_ctrl_on_stream(ptr noundef %141) #12
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store i8 1, ptr %135, align 2
  br label %145

145:                                              ; preds = %144, %139, %138
  %146 = getelementptr i8, ptr %0, i32 -186
  %147 = load i8, ptr %146, align 2, !range !8
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %130, align 4
  %151 = getelementptr inbounds %struct.dp_link, ptr %150, i32 0, i32 7, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %152) #12
  %154 = zext i8 %153 to i32
  %155 = getelementptr i8, ptr %0, i32 208
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.dp_audio, ptr %156, i32 0, i32 1
  store i32 %154, ptr %157, align 4
  %158 = load ptr, ptr %130, align 4
  %159 = getelementptr inbounds %struct.dp_link, ptr %158, i32 0, i32 7, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %155, align 4
  store i32 %160, ptr %161, align 4
  br label %162

162:                                              ; preds = %149, %145
  %163 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 10
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %174, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i8, ptr %146, align 2, !range !8
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %170
  tail call void %164(ptr noundef nonnull %168, i1 noundef zeroext true) #12
  br label %174

174:                                              ; preds = %173, %170, %166, %162, %128
  store i32 2, ptr %45, align 4
  tail call void @mutex_unlock(ptr noundef %9) #12
  br label %175

175:                                              ; preds = %174, %7
  %176 = phi i32 [ 0, %174 ], [ -22, %7 ]
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dp_display_pre_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 -148
  %4 = load ptr, ptr %3, align 4
  tail call void @dp_ctrl_push_idle(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_ctrl_push_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_dp_display_disable(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr i8, ptr %0, i32 -200
  %4 = getelementptr i8, ptr %0, i32 64
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %0, i32 204
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %7 = getelementptr i8, ptr %0, i32 100
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 104
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %26, label %12

12:                                               ; preds = %21, %2
  %13 = phi i32 [ %22, %21 ], [ %8, %2 ]
  %14 = phi i32 [ %24, %21 ], [ %10, %2 ]
  %15 = getelementptr %struct.dp_display_private, ptr %3, i32 0, i32 26, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 7
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  store i32 0, ptr %15, align 4
  %19 = getelementptr %struct.dp_display_private, ptr %3, i32 0, i32 26, i32 %14, i32 2
  store i32 0, ptr %19, align 4
  %20 = load i32, ptr %7, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i32 [ %20, %18 ], [ %13, %12 ]
  %23 = add i32 %14, 1
  %24 = and i32 %23, 7
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %12

26:                                               ; preds = %21, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  %27 = getelementptr i8, ptr %0, i32 26
  %28 = load i8, ptr %27, align 2, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %70, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %0, i32 25
  %32 = load i8, ptr %31, align 1, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %0, i32 32
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %0, i32 -186
  %44 = load i8, ptr %43, align 2, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void %36(ptr noundef nonnull %40, i1 noundef zeroext false) #12
  br label %47

47:                                               ; preds = %46, %42, %38, %34
  %48 = getelementptr i8, ptr %0, i32 48
  %49 = tail call i32 @wait_for_completion_timeout(ptr noundef %48, i32 noundef 500) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.63) #12
  br label %52

52:                                               ; preds = %51, %47, %30
  store i8 0, ptr %31, align 1
  %53 = getelementptr i8, ptr %0, i32 -156
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dp_link, ptr %54, i32 0, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr i8, ptr %0, i32 -148
  %59 = load ptr, ptr %58, align 4
  br i1 %57, label %60, label %62

60:                                               ; preds = %52
  %61 = tail call i32 @dp_ctrl_off_link_stream(ptr noundef %59) #12
  br label %65

62:                                               ; preds = %52
  %63 = tail call i32 @dp_ctrl_off(ptr noundef %59) #12
  %64 = getelementptr i8, ptr %0, i32 -188
  store i8 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %62, %60
  store i8 0, ptr %27, align 2
  %66 = load ptr, ptr %53, align 4
  %67 = getelementptr inbounds %struct.dp_link, ptr %66, i32 0, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.64, i32 noundef %69) #12
  br label %70

70:                                               ; preds = %65, %26
  %71 = getelementptr i8, ptr %0, i32 96
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 3
  %74 = select i1 %73, i32 0, i32 4
  store i32 %74, ptr %71, align 4
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_dp_display_mode_set(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr i8, ptr %0, i32 -128
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(128) %5, i8 0, i32 128, i1 false)
  %6 = getelementptr i8, ptr %0, i32 -152
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dp_panel, ptr %7, i32 0, i32 9
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %4
  %12 = icmp eq ptr %0, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #12
  br label %28

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %0, i32 -156
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dp_link, ptr %16, i32 0, i32 4, i32 1
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %21 [
    i32 0, label %28
    i32 32, label %19
    i32 64, label %20
  ]

19:                                               ; preds = %14
  br label %28

20:                                               ; preds = %14
  br label %28

21:                                               ; preds = %14
  br label %28

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.msm_dp, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_connector, ptr %24, i32 0, i32 20, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = mul i32 %26, 3
  br label %28

28:                                               ; preds = %22, %21, %20, %19, %14, %13
  %29 = phi i32 [ %27, %22 ], [ 0, %13 ], [ 0, %21 ], [ 30, %20 ], [ 24, %19 ], [ 18, %14 ]
  %30 = getelementptr i8, ptr %0, i32 -12
  store i32 %29, ptr %30, align 4
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 -12
  store i32 24, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %28
  tail call void @drm_mode_copy(ptr noundef %5, ptr noundef %3) #12
  %35 = getelementptr i8, ptr %0, i32 -104
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 3
  %38 = and i32 %37, 1
  %39 = getelementptr i8, ptr %0, i32 -4
  store i32 %38, ptr %39, align 4
  %40 = lshr i32 %36, 1
  %41 = and i32 %40, 1
  %42 = getelementptr i8, ptr %0, i32 -8
  store i32 %41, ptr %42, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_hpd_get_intr_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_ctrl_isr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_isr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_display_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.dp_panel_in, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4, %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #12
  br label %139

10:                                               ; preds = %4
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 412, i32 noundef 3520) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %139, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 2
  %15 = tail call ptr @of_device_get_match_data(ptr noundef %5) #12
  %16 = tail call ptr @platform_get_resource(ptr noundef nonnull %0, i32 noundef 512, i32 noundef 0) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %139, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.msm_dp_config, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %15, align 4
  %24 = load i32, ptr %16, align 4
  br label %25

25:                                               ; preds = %30, %22
  %26 = phi i32 [ 0, %22 ], [ %31, %30 ]
  %27 = getelementptr %struct.msm_dp_desc, ptr %23, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %24
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = add nuw i32 %26, 1
  %32 = icmp eq i32 %31, %20
  br i1 %32, label %33, label %25

33:                                               ; preds = %30, %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.24) #13
  br label %139

34:                                               ; preds = %25
  store i32 %26, ptr %14, align 4
  %35 = load ptr, ptr %15, align 4
  %36 = getelementptr %struct.msm_dp_desc, ptr %35, i32 %26
  %37 = icmp eq ptr %36, null
  br i1 %37, label %139, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 6
  store ptr %0, ptr %39, align 4
  store ptr @.str.20, ptr %11, align 4
  %40 = getelementptr %struct.msm_dp_desc, ptr %35, i32 %26, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 19, i32 9
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  store ptr %5, ptr %2, align 4
  %44 = getelementptr inbounds %struct.dp_panel_in, ptr %2, i32 0, i32 1
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dp_panel_in, ptr %2, i32 0, i32 2
  store ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dp_panel_in, ptr %2, i32 0, i32 3
  store ptr null, ptr %46, align 4
  store ptr @dp_display_usbpd_configure_cb, ptr %43, align 4
  %47 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 17, i32 1
  store ptr @dp_display_usbpd_disconnect_cb, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 17, i32 2
  store ptr @dp_display_usbpd_attention_cb, ptr %48, align 4
  %49 = tail call ptr @dp_hpd_get(ptr noundef %5, ptr noundef %43) #12
  %50 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 8
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = ptrtoint ptr %49 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %53) #12
  store ptr null, ptr %50, align 4
  br label %132

54:                                               ; preds = %38
  %55 = load ptr, ptr %39, align 4
  %56 = tail call ptr @dp_parser_get(ptr noundef %55) #12
  %57 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 9
  store ptr %56, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = ptrtoint ptr %56 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef %60) #12
  store ptr null, ptr %57, align 4
  br label %132

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.dp_parser, ptr %56, i32 0, i32 3
  %63 = tail call ptr @dp_catalog_get(ptr noundef %5, ptr noundef %62) #12
  %64 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 11
  store ptr %63, ptr %64, align 4
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = ptrtoint ptr %63 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %67) #12
  store ptr null, ptr %64, align 4
  br label %132

68:                                               ; preds = %61
  %69 = load ptr, ptr %57, align 4
  %70 = tail call ptr @dp_power_get(ptr noundef %5, ptr noundef %69) #12
  %71 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 10
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = ptrtoint ptr %70 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, i32 noundef %74) #12
  store ptr null, ptr %71, align 4
  br label %132

75:                                               ; preds = %68
  %76 = load ptr, ptr %64, align 4
  %77 = tail call ptr @dp_aux_get(ptr noundef %5, ptr noundef %76) #12
  %78 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 12
  store ptr %77, ptr %78, align 4
  %79 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = ptrtoint ptr %77 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, i32 noundef %81) #12
  store ptr null, ptr %78, align 4
  br label %132

82:                                               ; preds = %75
  %83 = tail call ptr @dp_link_get(ptr noundef %5, ptr noundef %77) #12
  %84 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 13
  store ptr %83, ptr %84, align 4
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = ptrtoint ptr %83 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %87) #12
  store ptr null, ptr %84, align 4
  br label %130

88:                                               ; preds = %82
  %89 = load ptr, ptr %78, align 4
  store ptr %89, ptr %44, align 4
  %90 = load ptr, ptr %64, align 4
  store ptr %90, ptr %46, align 4
  store ptr %83, ptr %45, align 4
  %91 = call ptr @dp_panel_get(ptr noundef nonnull %2) #12
  %92 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 14
  store ptr %91, ptr %92, align 4
  %93 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = ptrtoint ptr %91 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %95) #12
  store ptr null, ptr %92, align 4
  br label %130

96:                                               ; preds = %88
  %97 = load ptr, ptr %84, align 4
  %98 = load ptr, ptr %78, align 4
  %99 = load ptr, ptr %71, align 4
  %100 = load ptr, ptr %64, align 4
  %101 = load ptr, ptr %57, align 4
  %102 = call ptr @dp_ctrl_get(ptr noundef %5, ptr noundef %97, ptr noundef %91, ptr noundef %98, ptr noundef %99, ptr noundef %100, ptr noundef %101) #12
  %103 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 15
  store ptr %102, ptr %103, align 4
  %104 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = ptrtoint ptr %102 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32, i32 noundef %106) #12
  br label %127

107:                                              ; preds = %96
  %108 = load ptr, ptr %39, align 4
  %109 = load ptr, ptr %92, align 4
  %110 = load ptr, ptr %64, align 4
  %111 = call ptr @dp_audio_get(ptr noundef %108, ptr noundef %109, ptr noundef %110) #12
  %112 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 28
  store ptr %111, ptr %112, align 4
  %113 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %124, label %114

114:                                              ; preds = %107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  %115 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 19
  %116 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 21
  call void @__mutex_init(ptr noundef %116, ptr noundef nonnull @.str.22, ptr noundef nonnull @dp_display_probe.__key) #12
  %117 = load ptr, ptr %112, align 4
  %118 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 19, i32 13
  store ptr %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 20
  store i32 0, ptr %119, align 4
  %120 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 20, i32 1
  call void @__init_swait_queue_head(ptr noundef %120, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_completion.__key) #12
  %121 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %115, ptr %121, align 8
  %122 = call i32 @component_add(ptr noundef %5, ptr noundef nonnull @dp_display_comp_ops) #12
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %139, label %133

124:                                              ; preds = %107
  %125 = ptrtoint ptr %111 to i32
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %125) #13
  br label %127

127:                                              ; preds = %124, %105
  %128 = phi ptr [ %112, %124 ], [ %103, %105 ]
  store ptr null, ptr %128, align 4
  %129 = load ptr, ptr %92, align 4
  call void @dp_panel_put(ptr noundef %129) #12
  br label %130

130:                                              ; preds = %127, %94, %86
  %131 = load ptr, ptr %78, align 4
  call void @dp_aux_put(ptr noundef %131) #12
  br label %132

132:                                              ; preds = %130, %80, %73, %66, %59, %52
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #12
  br label %139

133:                                              ; preds = %114
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %122) #12
  %134 = getelementptr inbounds %struct.dp_display_private, ptr %11, i32 0, i32 16
  %135 = load ptr, ptr %134, align 4
  call void @dp_debug_put(ptr noundef %135) #12
  %136 = load ptr, ptr %112, align 4
  call void @dp_audio_put(ptr noundef %136) #12
  %137 = load ptr, ptr %92, align 4
  call void @dp_panel_put(ptr noundef %137) #12
  %138 = load ptr, ptr %78, align 4
  call void @dp_aux_put(ptr noundef %138) #12
  br label %139

139:                                              ; preds = %133, %132, %114, %34, %33, %13, %10, %9
  %140 = phi i32 [ -517, %132 ], [ -19, %9 ], [ -12, %10 ], [ -22, %34 ], [ %122, %133 ], [ 0, %114 ], [ -22, %33 ], [ -22, %13 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_display_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -144
  %6 = load ptr, ptr %5, align 4
  tail call void @dp_debug_put(ptr noundef %6) #12
  %7 = getelementptr i8, ptr %4, i32 208
  %8 = load ptr, ptr %7, align 4
  tail call void @dp_audio_put(ptr noundef %8) #12
  %9 = getelementptr i8, ptr %4, i32 -152
  %10 = load ptr, ptr %9, align 4
  tail call void @dp_panel_put(ptr noundef %10) #12
  %11 = getelementptr i8, ptr %4, i32 -160
  %12 = load ptr, ptr %11, align 4
  tail call void @dp_aux_put(ptr noundef %12) #12
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @dp_display_comp_ops) #12
  store ptr null, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_display_usbpd_configure_cb(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -188
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = zext i8 %5 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.59, i32 noundef %6) #12
  %7 = load i8, ptr %4, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.60) #12
  br label %23

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %3, i32 -176
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  %15 = getelementptr i8, ptr %3, i32 -168
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @dp_power_init(ptr noundef %16, i1 noundef zeroext %14) #12
  %18 = getelementptr i8, ptr %3, i32 -148
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @dp_ctrl_host_init(ptr noundef %19, i1 noundef zeroext %14, i1 noundef zeroext false) #12
  %21 = getelementptr i8, ptr %3, i32 -160
  %22 = load ptr, ptr %21, align 4
  tail call void @dp_aux_init(ptr noundef %22) #12
  store i8 1, ptr %4, align 4
  br label %23

23:                                               ; preds = %10, %9
  %24 = getelementptr i8, ptr %3, i32 -200
  %25 = tail call fastcc i32 @dp_display_process_hpd_high(ptr noundef %24)
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_display_usbpd_disconnect_cb(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 204
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = getelementptr i8, ptr %3, i32 100
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  %9 = srem i32 %8, 8
  %10 = getelementptr i8, ptr %3, i32 104
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %7, i32 noundef %9) #13
  br label %22

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %3, i32 -200
  %17 = getelementptr %struct.dp_display_private, ptr %16, i32 0, i32 26, i32 %7
  %18 = and i32 %8, 7
  store i32 %18, ptr %6, align 4
  store i32 5, ptr %17, align 4
  %19 = getelementptr %struct.dp_display_private, ptr %16, i32 0, i32 26, i32 %7, i32 1
  store i32 0, ptr %19, align 4
  %20 = getelementptr %struct.dp_display_private, ptr %16, i32 0, i32 26, i32 %7, i32 2
  store i32 0, ptr %20, align 4
  %21 = getelementptr i8, ptr %3, i32 84
  tail call void @__wake_up(ptr noundef %21, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %22

22:                                               ; preds = %15, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_display_usbpd_attention_cb(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -200
  %5 = getelementptr i8, ptr %3, i32 -156
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @dp_link_process_request(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %90

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %3, i32 96
  %13 = load i32, ptr %12, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.35, i32 noundef %13, i32 noundef %11) #12
  %14 = and i32 %11, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %65, label %16

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %3, i32 -152
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr [16 x i8], ptr %18, i32 0, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.dp_link, ptr %22, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.37, i32 noundef %21, i32 noundef %25) #12
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr [16 x i8], ptr %26, i32 0, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %58, label %31

31:                                               ; preds = %16
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr inbounds %struct.dp_link, ptr %32, i32 0, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.36) #12
  %37 = load i32, ptr %12, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %90, label %39

39:                                               ; preds = %36
  store i32 3, ptr %12, align 4
  %40 = getelementptr i8, ptr %3, i32 204
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #12
  %42 = getelementptr i8, ptr %3, i32 100
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  %45 = srem i32 %44, 8
  %46 = getelementptr i8, ptr %3, i32 104
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %43, i32 noundef %45) #13
  br label %57

51:                                               ; preds = %39
  %52 = getelementptr %struct.dp_display_private, ptr %4, i32 0, i32 26, i32 %43
  %53 = and i32 %44, 7
  store i32 %53, ptr %42, align 4
  store i32 5, ptr %52, align 4
  %54 = getelementptr %struct.dp_display_private, ptr %4, i32 0, i32 26, i32 %43, i32 1
  store i32 0, ptr %54, align 4
  %55 = getelementptr %struct.dp_display_private, ptr %4, i32 0, i32 26, i32 %43, i32 2
  store i32 0, ptr %55, align 4
  %56 = getelementptr i8, ptr %3, i32 84
  tail call void @__wake_up(ptr noundef %56, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %57

57:                                               ; preds = %51, %49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #12
  br label %90

58:                                               ; preds = %31, %16
  %59 = load i32, ptr %12, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %58
  store i32 1, ptr %12, align 4
  %62 = tail call fastcc i32 @dp_display_process_hpd_high(ptr noundef %4) #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %61
  store i32 0, ptr %12, align 4
  br label %90

65:                                               ; preds = %9
  %66 = load ptr, ptr %5, align 4
  %67 = load i32, ptr %66, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.38, i32 noundef %67) #12
  %68 = load i32, ptr %12, align 4
  %69 = icmp ne i32 %68, 0
  %70 = and i32 %67, 128
  %71 = icmp eq i32 %70, 0
  %72 = or i1 %71, %69
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.39, i32 noundef %67) #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40) #12
  br label %90

74:                                               ; preds = %65
  %75 = getelementptr i8, ptr %3, i32 -148
  %76 = load ptr, ptr %75, align 4
  tail call void @dp_ctrl_handle_sink_request(ptr noundef %76) #12
  %77 = and i32 %67, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %5, align 4
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = getelementptr i8, ptr %3, i32 -152
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.dp_panel, ptr %86, i32 0, i32 9
  store i8 1, ptr %87, align 4
  %88 = load ptr, ptr %5, align 4
  %89 = tail call zeroext i1 @dp_link_send_test_response(ptr noundef %88) #12
  br label %90

90:                                               ; preds = %84, %79, %74, %73, %64, %61, %58, %57, %36, %1
  %91 = phi i32 [ %7, %1 ], [ 0, %57 ], [ 0, %36 ], [ %62, %64 ], [ 0, %61 ], [ 0, %58 ], [ -22, %73 ], [ 0, %74 ], [ 0, %79 ], [ 0, %84 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_hpd_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_parser_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_catalog_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_power_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_aux_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_link_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_panel_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_ctrl_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dp_audio_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_panel_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dp_display_process_hpd_high(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dp_parser, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dp_panel, ptr %7, i32 0, i32 12
  store i32 %5, ptr %8, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 19, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @dp_panel_read_sink_caps(ptr noundef %9, ptr noundef %11) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @dp_link_process_request(ptr noundef %16) #12
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.dp_panel, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %20) #12
  %22 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 5
  %23 = zext i1 %21 to i8
  store i8 %23, ptr %22, align 2
  %24 = load ptr, ptr %6, align 4
  tail call void @dp_panel_handle_sink_request(ptr noundef %24) #12
  %25 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 19, i32 11
  store i32 675000, ptr %25, align 4
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.dp_parser, ptr %26, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 19, i32 12
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %15, align 4
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.dp_panel, ptr %31, i32 0, i32 4
  %33 = tail call i32 @dp_link_psm_config(ptr noundef %30, ptr noundef %32, i1 noundef zeroext false) #12
  %34 = load ptr, ptr %15, align 4
  tail call void @dp_link_reset_phy_params_vx_px(ptr noundef %34) #12
  %35 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @dp_ctrl_on_link(ptr noundef %36) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #12
  br label %59

40:                                               ; preds = %14
  %41 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 27
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #12
  %43 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 24
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  %46 = srem i32 %45, 8
  %47 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 25
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %44, i32 noundef %46) #13
  br label %58

52:                                               ; preds = %40
  %53 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %44
  %54 = and i32 %45, 7
  store i32 %54, ptr %43, align 4
  store i32 5, ptr %53, align 4
  %55 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %44, i32 1
  store i32 1, ptr %55, align 4
  %56 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %44, i32 2
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %57, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %58

58:                                               ; preds = %52, %50
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %42) #12
  br label %59

59:                                               ; preds = %58, %39, %1
  %60 = phi i32 [ %12, %1 ], [ %37, %39 ], [ 0, %58 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_panel_read_sink_caps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_link_process_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_monitor_audio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_panel_handle_sink_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_link_psm_config(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_link_reset_phy_params_vx_px(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_ctrl_on_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_ctrl_handle_sink_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_link_send_test_response(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_display_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %5, align 4
  %9 = getelementptr i8, ptr %5, i32 -192
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.msm_drm_private, ptr %7, i32 0, i32 6, i32 %10
  store ptr %5, ptr %11, align 4
  %12 = getelementptr i8, ptr %5, i32 -172
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dp_parser, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %5, i32 28
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 %15(ptr noundef %13, i32 noundef %17) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %3
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr inbounds %struct.dp_parser, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %5, i32 20
  store ptr %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %5, i32 -160
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_dp_aux, ptr %26, i32 0, i32 3
  store ptr %8, ptr %27, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = tail call i32 @dp_aux_register(ptr noundef %28) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = getelementptr i8, ptr %5, i32 -168
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @dp_power_client_init(ptr noundef %33) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %5, i32 208
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @dp_register_audio_driver(ptr noundef %0, ptr noundef %38) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %31, %20, %3
  %42 = phi ptr [ @.str.42, %3 ], [ @.str.43, %20 ], [ @.str.44, %31 ], [ @.str.45, %36 ]
  %43 = phi i32 [ %18, %3 ], [ %29, %20 ], [ %34, %31 ], [ %39, %36 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %42) #12
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi i32 [ 0, %36 ], [ %43, %41 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dp_display_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %5, i32 -168
  %9 = load ptr, ptr %8, align 4
  tail call void @dp_power_client_deinit(ptr noundef %9) #12
  %10 = getelementptr i8, ptr %5, i32 -160
  %11 = load ptr, ptr %10, align 4
  tail call void @dp_aux_unregister(ptr noundef %11) #12
  %12 = getelementptr i8, ptr %5, i32 -192
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.msm_drm_private, ptr %7, i32 0, i32 6, i32 %13
  store ptr null, ptr %14, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_aux_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_power_client_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_register_audio_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_power_client_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_debug_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_audio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dp_pm_prepare(ptr nocapture noundef readnone %0) #8 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @dp_pm_complete(ptr nocapture noundef %0) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_pm_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 64
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %3, i32 -188
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.msm_dp, ptr %3, i32 0, i32 8
  %9 = load i8, ptr %8, align 2, !range !8
  %10 = zext i8 %9 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.47, i32 noundef %7, i32 noundef %10) #12
  %11 = load i8, ptr %5, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %3, i32 -168
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @dp_power_clk_status(ptr noundef %15, i32 noundef 1) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %3, i32 -148
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @dp_ctrl_off_link_stream(ptr noundef %20) #12
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i8, ptr %5, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.49) #12
  br label %33

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %3, i32 -148
  %28 = load ptr, ptr %27, align 4
  tail call void @dp_ctrl_host_deinit(ptr noundef %28) #12
  %29 = getelementptr i8, ptr %3, i32 -160
  %30 = load ptr, ptr %29, align 4
  tail call void @dp_aux_deinit(ptr noundef %30) #12
  %31 = load ptr, ptr %14, align 4
  %32 = tail call i32 @dp_power_deinit(ptr noundef %31) #12
  br label %33

33:                                               ; preds = %26, %25, %1
  %34 = getelementptr i8, ptr %3, i32 96
  store i32 5, ptr %34, align 4
  store i8 0, ptr %5, align 4
  %35 = load i8, ptr %8, align 2, !range !8
  %36 = zext i8 %35 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef %36) #12
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_pm_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 64
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr i8, ptr %3, i32 -188
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.msm_dp, ptr %3, i32 0, i32 8
  %9 = load i8, ptr %8, align 2, !range !8
  %10 = zext i8 %9 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.47, i32 noundef %7, i32 noundef %10) #12
  %11 = getelementptr i8, ptr %3, i32 96
  store i32 0, ptr %11, align 4
  %12 = load i8, ptr %5, align 4, !range !8
  %13 = zext i8 %12 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.59, i32 noundef %13) #12
  %14 = load i8, ptr %5, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.60) #12
  br label %30

17:                                               ; preds = %1
  %18 = getelementptr i8, ptr %3, i32 -176
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  %22 = getelementptr i8, ptr %3, i32 -168
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @dp_power_init(ptr noundef %23, i1 noundef zeroext %21) #12
  %25 = getelementptr i8, ptr %3, i32 -148
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @dp_ctrl_host_init(ptr noundef %26, i1 noundef zeroext %21, i1 noundef zeroext true) #12
  %28 = getelementptr i8, ptr %3, i32 -160
  %29 = load ptr, ptr %28, align 4
  tail call void @dp_aux_init(ptr noundef %29) #12
  store i8 1, ptr %5, align 4
  br label %30

30:                                               ; preds = %17, %16
  %31 = getelementptr i8, ptr %3, i32 -164
  %32 = load ptr, ptr %31, align 4
  tail call void @dp_catalog_ctrl_hpd_config(ptr noundef %32) #12
  %33 = getelementptr i8, ptr %3, i32 -156
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %3, i32 -152
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dp_panel, ptr %36, i32 0, i32 4
  %38 = tail call i32 @dp_link_psm_config(ptr noundef %34, ptr noundef %37, i1 noundef zeroext false) #12
  %39 = load ptr, ptr %31, align 4
  %40 = tail call i32 @dp_catalog_link_is_connected(ptr noundef %39) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %30
  %43 = getelementptr i8, ptr %3, i32 -160
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @drm_dp_read_sink_count(ptr noundef %44) #12
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 0)
  %47 = trunc i32 %46 to i8
  br label %48

48:                                               ; preds = %42, %30
  %49 = phi i8 [ %47, %42 ], [ 0, %30 ]
  %50 = load ptr, ptr %33, align 4
  %51 = getelementptr inbounds %struct.dp_link, ptr %50, i32 0, i32 3
  store i8 %49, ptr %51, align 1
  %52 = load ptr, ptr %33, align 4
  %53 = getelementptr inbounds %struct.dp_link, ptr %52, i32 0, i32 3
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  %56 = getelementptr inbounds %struct.msm_dp, ptr %3, i32 0, i32 6
  br i1 %55, label %58, label %57

57:                                               ; preds = %48
  store i8 1, ptr %56, align 4
  br label %74

58:                                               ; preds = %48
  store i8 0, ptr %56, align 4
  %59 = getelementptr inbounds %struct.msm_dp, ptr %3, i32 0, i32 10
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.msm_dp, ptr %3, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %3, i32 -186
  %68 = load i8, ptr %67, align 2, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  tail call void %60(ptr noundef nonnull %64, i1 noundef zeroext false) #12
  %71 = load ptr, ptr %33, align 4
  %72 = load i8, ptr %56, align 4, !range !8
  %73 = zext i8 %72 to i32
  br label %74

74:                                               ; preds = %70, %66, %62, %58, %57
  %75 = phi i32 [ %73, %70 ], [ 0, %66 ], [ 0, %62 ], [ 0, %58 ], [ 1, %57 ]
  %76 = phi ptr [ %71, %70 ], [ %52, %66 ], [ %52, %62 ], [ %52, %58 ], [ %52, %57 ]
  %77 = getelementptr inbounds %struct.dp_link, ptr %76, i32 0, i32 3
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, ptr %5, align 4, !range !8
  %81 = zext i8 %80 to i32
  %82 = load i8, ptr %8, align 2, !range !8
  %83 = zext i8 %82 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.50, i32 noundef %79, i32 noundef %75, i32 noundef %81, i32 noundef %83) #12
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_power_clk_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_ctrl_off_link_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_ctrl_host_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_power_deinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_ctrl_hpd_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_catalog_link_is_connected(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_read_sink_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hpd_event_thread(ptr noundef %0) #10 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 24
  %5 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 25
  %6 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 22
  %7 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 27
  %8 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 21
  %9 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 23
  %10 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 19, i32 6
  %11 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 14
  %12 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 19, i32 3
  %13 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 8
  %16 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 11
  %17 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 13
  %18 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 15
  %19 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 19, i32 10
  %20 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 19, i32 1
  %21 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 5
  %22 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 10
  %23 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 12
  %24 = getelementptr inbounds %struct.dp_display_private, ptr %0, i32 0, i32 1
  br label %25

25:                                               ; preds = %115, %1
  %26 = phi i1 [ true, %1 ], [ %72, %115 ]
  br label %27

27:                                               ; preds = %91, %25
  %28 = load i32, ptr %4, align 4
  %29 = load i32, ptr %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %26, label %51, label %31

31:                                               ; preds = %27
  br i1 %30, label %67, label %32

32:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #12
  %33 = call i32 @prepare_to_wait_event(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 2) #12
  %34 = load i32, ptr %4, align 4
  %35 = load i32, ptr %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %50, label %37

37:                                               ; preds = %37, %32
  %38 = phi i32 [ %47, %37 ], [ 10, %32 ]
  %39 = call i32 @schedule_timeout(i32 noundef %38) #12
  %40 = call i32 @prepare_to_wait_event(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 2) #12
  %41 = load i32, ptr %4, align 4
  %42 = load i32, ptr %5, align 4
  %43 = icmp eq i32 %41, %42
  %44 = xor i1 %43, true
  %45 = icmp ne i32 %39, 0
  %46 = select i1 %44, i1 true, i1 %45
  %47 = select i1 %46, i32 %39, i32 1
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %43, i1 true, i1 %48
  br i1 %49, label %50, label %37

50:                                               ; preds = %37, %32
  call void @finish_wait(ptr noundef %6, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  br label %67

51:                                               ; preds = %27
  br i1 %30, label %52, label %67

52:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #12
  %53 = call i32 @prepare_to_wait_event(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 1) #12
  %54 = load i32, ptr %4, align 4
  %55 = load i32, ptr %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %60, %52
  %58 = phi i32 [ %61, %60 ], [ %53, %52 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  call void @schedule() #12
  %61 = call i32 @prepare_to_wait_event(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 1) #12
  %62 = load i32, ptr %4, align 4
  %63 = load i32, ptr %5, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %57, label %65

65:                                               ; preds = %60, %52
  call void @finish_wait(ptr noundef %6, ptr noundef nonnull %3) #12
  br label %66

66:                                               ; preds = %65, %57
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  br label %67

67:                                               ; preds = %66, %51, %50, %31
  %68 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %69 = load i32, ptr %5, align 4
  %70 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %69, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %88, label %73

73:                                               ; preds = %67
  %74 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %69
  %75 = add i32 %69, 1
  %76 = and i32 %75, 7
  store i32 %76, ptr %5, align 4
  %77 = load i32, ptr %4, align 4
  %78 = add i32 %77, 1
  %79 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %77
  %80 = and i32 %78, 7
  store i32 %80, ptr %4, align 4
  %81 = load i32, ptr %74, align 4
  store i32 %81, ptr %79, align 4
  %82 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %69, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %77, i32 1
  store i32 %83, ptr %84, align 4
  %85 = load i32, ptr %70, align 4
  %86 = add i32 %85, -1
  %87 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %77, i32 2
  store i32 %86, ptr %87, align 4
  store i32 0, ptr %74, align 4
  store i32 0, ptr %70, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %68) #12
  br label %115

88:                                               ; preds = %67
  %89 = load i32, ptr %4, align 4
  %90 = icmp eq i32 %89, %69
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %68) #12
  br label %27

92:                                               ; preds = %88
  %93 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %69
  %94 = add i32 %69, 1
  %95 = and i32 %94, 7
  store i32 %95, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %68) #12
  %96 = load i32, ptr %93, align 4
  switch i32 %96, label %115 [
    i32 1, label %97
    i32 2, label %116
    i32 4, label %162
    i32 3, label %259
    i32 5, label %305
    i32 6, label %324
    i32 7, label %329
  ]

97:                                               ; preds = %92
  %98 = load i8, ptr %13, align 4, !range !8
  %99 = zext i8 %98 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.59, i32 noundef %99) #12
  %100 = load i8, ptr %13, align 4, !range !8
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.60) #12
  br label %112

103:                                              ; preds = %97
  %104 = load ptr, ptr %15, align 4
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 2
  %107 = load ptr, ptr %22, align 4
  %108 = call i32 @dp_power_init(ptr noundef %107, i1 noundef zeroext %106) #12
  %109 = load ptr, ptr %18, align 4
  %110 = call i32 @dp_ctrl_host_init(ptr noundef %109, i1 noundef zeroext %106, i1 noundef zeroext true) #12
  %111 = load ptr, ptr %23, align 4
  call void @dp_aux_init(ptr noundef %111) #12
  store i8 1, ptr %13, align 4
  br label %112

112:                                              ; preds = %103, %102
  %113 = load ptr, ptr %16, align 4
  call void @dp_catalog_ctrl_hpd_config(ptr noundef %113) #12
  %114 = load i32, ptr %24, align 4
  call void @enable_irq(i32 noundef %114) #12
  br label %115

115:                                              ; preds = %333, %328, %319, %314, %304, %258, %162, %161, %116, %112, %92, %73
  br label %25

116:                                              ; preds = %92
  %117 = load ptr, ptr %15, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %115, label %119

119:                                              ; preds = %116
  call void @mutex_lock(ptr noundef %8) #12
  %120 = load i32, ptr %9, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.53, i32 noundef %120) #12
  switch i32 %120, label %136 [
    i32 5, label %161
    i32 4, label %161
    i32 2, label %161
    i32 1, label %161
    i32 3, label %121
  ]

121:                                              ; preds = %119
  %122 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %123 = load i32, ptr %4, align 4
  %124 = add i32 %123, 1
  %125 = srem i32 %124, 8
  %126 = load i32, ptr %5, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %123, i32 noundef %125) #13
  br label %135

130:                                              ; preds = %121
  %131 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %123
  %132 = and i32 %124, 7
  store i32 %132, ptr %4, align 4
  store i32 2, ptr %131, align 4
  %133 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %123, i32 1
  store i32 0, ptr %133, align 4
  %134 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %123, i32 2
  store i32 1, ptr %134, align 4
  call void @__wake_up(ptr noundef %6, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %135

135:                                              ; preds = %130, %128
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %122) #12
  br label %161

136:                                              ; preds = %119
  store i32 1, ptr %9, align 4
  %137 = load ptr, ptr %14, align 4
  %138 = getelementptr inbounds %struct.platform_device, ptr %137, i32 0, i32 3
  %139 = call i32 @dp_display_usbpd_configure_cb(ptr noundef %138) #12
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  store i32 0, ptr %9, align 4
  %142 = icmp eq i32 %139, -104
  br i1 %142, label %143, label %159

143:                                              ; preds = %141
  store i8 0, ptr %13, align 4
  br label %159

144:                                              ; preds = %136
  %145 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %146 = load i32, ptr %4, align 4
  %147 = add i32 %146, 1
  %148 = srem i32 %147, 8
  %149 = load i32, ptr %5, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %146, i32 noundef %148) #13
  br label %158

153:                                              ; preds = %144
  %154 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %146
  %155 = and i32 %147, 7
  store i32 %155, ptr %4, align 4
  store i32 6, ptr %154, align 4
  %156 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %146, i32 1
  store i32 0, ptr %156, align 4
  %157 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %146, i32 2
  store i32 500, ptr %157, align 4
  call void @__wake_up(ptr noundef %6, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %158

158:                                              ; preds = %153, %151
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %145) #12
  br label %159

159:                                              ; preds = %158, %143, %141
  %160 = load ptr, ptr %16, align 4
  call void @dp_catalog_hpd_config_intr(ptr noundef %160, i32 noundef 6, i1 noundef zeroext true) #12
  br label %161

161:                                              ; preds = %159, %135, %119, %119, %119, %119
  call void @mutex_unlock(ptr noundef %8) #12
  br label %115

162:                                              ; preds = %92
  %163 = load ptr, ptr %15, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %115, label %165

165:                                              ; preds = %162
  call void @mutex_lock(ptr noundef %8) #12
  %166 = load i32, ptr %9, align 4
  %167 = load ptr, ptr %16, align 4
  call void @dp_catalog_hpd_config_intr(ptr noundef %167, i32 noundef 6, i1 noundef zeroext false) #12
  %168 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %169 = load i32, ptr %4, align 4
  %170 = load i32, ptr %5, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %186, label %172

172:                                              ; preds = %181, %165
  %173 = phi i32 [ %182, %181 ], [ %169, %165 ]
  %174 = phi i32 [ %184, %181 ], [ %170, %165 ]
  %175 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %174
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, 3
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  store i32 0, ptr %175, align 4
  %179 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %174, i32 2
  store i32 0, ptr %179, align 4
  %180 = load i32, ptr %4, align 4
  br label %181

181:                                              ; preds = %178, %172
  %182 = phi i32 [ %180, %178 ], [ %173, %172 ]
  %183 = add i32 %174, 1
  %184 = and i32 %183, 7
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %172

186:                                              ; preds = %181, %165
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %168) #12
  switch i32 %166, label %209 [
    i32 0, label %187
    i32 3, label %258
    i32 1, label %194
  ]

187:                                              ; preds = %186
  %188 = load ptr, ptr %17, align 4
  %189 = getelementptr inbounds %struct.dp_link, ptr %188, i32 0, i32 3
  %190 = load i8, ptr %189, align 1
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %258

192:                                              ; preds = %187
  %193 = load ptr, ptr %18, align 4
  call void @dp_ctrl_off_phy(ptr noundef %193) #12
  store i8 0, ptr %13, align 4
  br label %258

194:                                              ; preds = %186
  %195 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %196 = load i32, ptr %4, align 4
  %197 = add i32 %196, 1
  %198 = srem i32 %197, 8
  %199 = load i32, ptr %5, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %196, i32 noundef %198) #13
  br label %208

203:                                              ; preds = %194
  %204 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %196
  %205 = and i32 %197, 7
  store i32 %205, ptr %4, align 4
  store i32 4, ptr %204, align 4
  %206 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %196, i32 1
  store i32 0, ptr %206, align 4
  %207 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %196, i32 2
  store i32 1, ptr %207, align 4
  call void @__wake_up(ptr noundef %6, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %208

208:                                              ; preds = %203, %201
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %195) #12
  br label %258

209:                                              ; preds = %186
  store i32 3, ptr %9, align 4
  %210 = load ptr, ptr %16, align 4
  call void @dp_catalog_hpd_config_intr(ptr noundef %210, i32 noundef 1, i1 noundef zeroext false) #12
  %211 = load ptr, ptr %14, align 4
  %212 = getelementptr inbounds %struct.platform_device, ptr %211, i32 0, i32 3, i32 8
  %213 = load ptr, ptr %212, align 8
  %214 = getelementptr i8, ptr %213, i32 204
  %215 = call i32 @_raw_spin_lock_irqsave(ptr noundef %214) #12
  %216 = getelementptr i8, ptr %213, i32 100
  %217 = load i32, ptr %216, align 4
  %218 = add i32 %217, 1
  %219 = srem i32 %218, 8
  %220 = getelementptr i8, ptr %213, i32 104
  %221 = load i32, ptr %220, align 4
  %222 = icmp eq i32 %219, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %209
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %217, i32 noundef %219) #13
  br label %232

225:                                              ; preds = %209
  %226 = getelementptr i8, ptr %213, i32 -200
  %227 = getelementptr %struct.dp_display_private, ptr %226, i32 0, i32 26, i32 %217
  %228 = and i32 %218, 7
  store i32 %228, ptr %216, align 4
  store i32 5, ptr %227, align 4
  %229 = getelementptr %struct.dp_display_private, ptr %226, i32 0, i32 26, i32 %217, i32 1
  store i32 0, ptr %229, align 4
  %230 = getelementptr %struct.dp_display_private, ptr %226, i32 0, i32 26, i32 %217, i32 2
  store i32 0, ptr %230, align 4
  %231 = getelementptr i8, ptr %213, i32 84
  call void @__wake_up(ptr noundef %231, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %232

232:                                              ; preds = %225, %223
  call void @_raw_spin_unlock_irqrestore(ptr noundef %214, i32 noundef %215) #12
  %233 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %234 = load i32, ptr %4, align 4
  %235 = add i32 %234, 1
  %236 = srem i32 %235, 8
  %237 = load i32, ptr %5, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %232
  %240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %234, i32 noundef %236) #13
  br label %246

241:                                              ; preds = %232
  %242 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %234
  %243 = and i32 %235, 7
  store i32 %243, ptr %4, align 4
  store i32 7, ptr %242, align 4
  %244 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %234, i32 1
  store i32 0, ptr %244, align 4
  %245 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %234, i32 2
  store i32 500, ptr %245, align 4
  call void @__wake_up(ptr noundef %6, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %246

246:                                              ; preds = %241, %239
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %233) #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.53, i32 noundef %166) #12
  %247 = load ptr, ptr %19, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %256, label %249

249:                                              ; preds = %246
  %250 = load ptr, ptr %20, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %256, label %252

252:                                              ; preds = %249
  %253 = load i8, ptr %21, align 2, !range !8
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %252
  call void %247(ptr noundef nonnull %250, i1 noundef zeroext false) #12
  br label %256

256:                                              ; preds = %255, %252, %249, %246
  %257 = load ptr, ptr %16, align 4
  call void @dp_catalog_hpd_config_intr(ptr noundef %257, i32 noundef 1, i1 noundef zeroext true) #12
  br label %258

258:                                              ; preds = %256, %208, %192, %187, %186
  call void @mutex_unlock(ptr noundef %8) #12
  br label %115

259:                                              ; preds = %92
  call void @mutex_lock(ptr noundef %8) #12
  %260 = load i32, ptr %9, align 4
  %261 = and i32 %260, -2
  %262 = icmp eq i32 %261, 4
  br i1 %262, label %304, label %263

263:                                              ; preds = %259
  switch i32 %260, label %294 [
    i32 1, label %264
    i32 3, label %279
  ]

264:                                              ; preds = %263
  %265 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %266 = load i32, ptr %4, align 4
  %267 = add i32 %266, 1
  %268 = srem i32 %267, 8
  %269 = load i32, ptr %5, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %264
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %266, i32 noundef %268) #13
  br label %278

273:                                              ; preds = %264
  %274 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %266
  %275 = and i32 %267, 7
  store i32 %275, ptr %4, align 4
  store i32 3, ptr %274, align 4
  %276 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %266, i32 1
  store i32 0, ptr %276, align 4
  %277 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %266, i32 2
  store i32 1, ptr %277, align 4
  call void @__wake_up(ptr noundef %6, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %278

278:                                              ; preds = %273, %271
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %265) #12
  br label %304

279:                                              ; preds = %263
  %280 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %281 = load i32, ptr %4, align 4
  %282 = add i32 %281, 1
  %283 = srem i32 %282, 8
  %284 = load i32, ptr %5, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %279
  %287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %281, i32 noundef %283) #13
  br label %293

288:                                              ; preds = %279
  %289 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %281
  %290 = and i32 %282, 7
  store i32 %290, ptr %4, align 4
  store i32 3, ptr %289, align 4
  %291 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %281, i32 1
  store i32 0, ptr %291, align 4
  %292 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %281, i32 2
  store i32 1, ptr %292, align 4
  call void @__wake_up(ptr noundef %6, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %293

293:                                              ; preds = %288, %286
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %280) #12
  br label %304

294:                                              ; preds = %263
  %295 = load i8, ptr %13, align 4, !range !8
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %294
  %298 = load ptr, ptr %14, align 4
  %299 = getelementptr inbounds %struct.platform_device, ptr %298, i32 0, i32 3
  %300 = call i32 @dp_display_usbpd_attention_cb(ptr noundef %299) #12
  %301 = icmp eq i32 %300, -104
  br i1 %301, label %302, label %303

302:                                              ; preds = %297
  store i8 0, ptr %13, align 4
  br label %303

303:                                              ; preds = %302, %297, %294
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.53, i32 noundef %260) #12
  br label %304

304:                                              ; preds = %303, %293, %278, %259
  call void @mutex_unlock(ptr noundef %8) #12
  br label %115

305:                                              ; preds = %92
  %306 = getelementptr %struct.dp_display_private, ptr %0, i32 0, i32 26, i32 %69, i32 1
  %307 = load i32, ptr %306, align 4
  %308 = icmp ne i32 %307, 0
  %309 = zext i1 %308 to i8
  %310 = load i8, ptr %10, align 4, !range !8
  %311 = icmp eq i8 %310, 0
  br i1 %308, label %312, label %313

312:                                              ; preds = %305
  br i1 %311, label %319, label %314

313:                                              ; preds = %305
  br i1 %311, label %314, label %316

314:                                              ; preds = %313, %312
  %315 = phi ptr [ @.str.56, %313 ], [ @.str.55, %312 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.54, ptr noundef nonnull %315) #12
  br label %115

316:                                              ; preds = %313
  %317 = load ptr, ptr %11, align 4
  %318 = getelementptr inbounds %struct.dp_panel, ptr %317, i32 0, i32 9
  store i8 0, ptr %318, align 4
  br label %319

319:                                              ; preds = %316, %312
  store i8 %309, ptr %10, align 4
  %320 = zext i1 %308 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.57, i32 noundef %320) #12
  %321 = load ptr, ptr %12, align 4
  %322 = load ptr, ptr %321, align 8
  %323 = call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %322) #12
  br label %115

324:                                              ; preds = %92
  call void @mutex_lock(ptr noundef %8) #12
  %325 = load i32, ptr %9, align 4
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %327, label %328

327:                                              ; preds = %324
  store i32 2, ptr %9, align 4
  br label %328

328:                                              ; preds = %327, %324
  call void @mutex_unlock(ptr noundef %8) #12
  br label %115

329:                                              ; preds = %92
  call void @mutex_lock(ptr noundef %8) #12
  %330 = load i32, ptr %9, align 4
  %331 = icmp eq i32 %330, 3
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  store i32 0, ptr %9, align 4
  br label %333

333:                                              ; preds = %332, %329
  call void @mutex_unlock(ptr noundef %8) #12
  br label %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_catalog_hpd_config_intr(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_ctrl_off_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_panel_init_panel_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_power_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_ctrl_host_init(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_aux_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_ctrl_on_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_ctrl_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
