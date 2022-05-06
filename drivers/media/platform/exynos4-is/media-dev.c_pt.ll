; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/media-dev.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/media-dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.exynos_media_pipeline_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.fimc_md = type { [2 x %struct.fimc_csis_info], [4 x %struct.fimc_sensor_info], i32, [2 x %struct.fimc_camclk_info], [2 x ptr], [3 x ptr], [4 x ptr], ptr, i8, ptr, %struct.media_device, %struct.v4l2_device, ptr, %struct.cam_clk_provider, %struct.v4l2_async_notifier, i8, %struct.spinlock, %struct.list_head, %struct.media_graph }
%struct.fimc_csis_info = type { ptr, i32 }
%struct.fimc_sensor_info = type { %struct.fimc_source_info, ptr, ptr, ptr }
%struct.fimc_source_info = type { i32, i32, i16, i16 }
%struct.fimc_camclk_info = type { ptr, i32, i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam_clk_provider = type { [2 x ptr], %struct.clk_onecell_data, ptr, [2 x %struct.cam_clk], i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.cam_clk = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.fimc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, [2 x ptr], ptr, %struct.wait_queue_head, ptr, %struct.fimc_m2m_device, %struct.fimc_vid_cap, i32 }
%struct.fimc_m2m_device = type { %struct.video_device, ptr, ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.fimc_vid_cap = type { ptr, %struct.v4l2_subdev, %struct.exynos_video_entity, %struct.media_pad, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, %struct.fimc_source_info, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i8, i32, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.83, i16, i16, i16, [10 x i16] }
%union.anon.83 = type { i16 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.fimc_pipeline = type { %struct.exynos_media_pipeline, %struct.list_head, ptr, [5 x ptr] }
%struct.exynos_media_pipeline = type { %struct.media_pipeline, ptr }
%struct.fimc_lite = type { ptr, ptr, %struct.exynos_video_entity, ptr, %struct.v4l2_fh, %struct.v4l2_subdev, %struct.media_pad, [3 x %struct.media_pad], ptr, %struct.v4l2_ctrl_handler, ptr, i32, %struct.mutex, %struct.spinlock, ptr, ptr, %struct.wait_queue_head, [1 x i32], %struct.flite_frame, %struct.flite_frame, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.vb2_queue, i16, i32, i32, %struct.fimc_lite_events, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.flite_frame = type { i16, i16, %struct.v4l2_rect, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.fimc_lite_events = type { i32 }
%struct.fimc_is = type { ptr, ptr, ptr, %struct.fimc_is_firmware, %struct.fimc_is_memory, %struct.fimc_isp, [2 x %struct.fimc_is_sensor], %struct.fimc_is_setfile, %struct.v4l2_ctrl_handler, %struct.mutex, %struct.spinlock, [21 x ptr], ptr, ptr, i32, %struct.wait_queue_head, i8, i32, i32, %struct.i2h_cmd, %struct.h2i_cmd, %struct.is_fd_result_header, [4 x %struct.chain_config], i32, ptr, i32, ptr, %struct.is_af_info, ptr }
%struct.fimc_is_firmware = type { ptr, i32, ptr, i32, [32 x i8], [8 x i8], [40 x i8], i8 }
%struct.fimc_is_memory = type { i32, ptr, i32 }
%struct.fimc_isp = type { ptr, %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, ptr, %struct.fimc_isp_ctrls, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fimc_is_video }
%struct.fimc_isp_ctrls = type { %struct.v4l2_ctrl_handler, ptr, %struct.anon.88, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.88 = type { ptr, ptr }
%struct.fimc_is_video = type { %struct.exynos_video_entity, i32, %struct.media_pad, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i32, [4 x ptr], ptr, %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.89, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.89 = type { i8 }
%struct.fimc_is_sensor = type { ptr, i32, i8 }
%struct.fimc_is_setfile = type { ptr, i32, i32, i32, i32 }
%struct.i2h_cmd = type { i32, i32, i16, [12 x i32] }
%struct.h2i_cmd = type { i16, i32 }
%struct.is_fd_result_header = type { i32, i32, i32, i32, i32, i32 }
%struct.chain_config = type { %struct.global_param, %struct.sensor_param, %struct.isp_param, %struct.drc_param, %struct.fd_param, [2 x i32] }
%struct.global_param = type { %struct.param_global_shotmode }
%struct.param_global_shotmode = type { i32, i32, [13 x i32], i32 }
%struct.sensor_param = type { %struct.param_control, %struct.param_otf_output, %struct.param_sensor_framerate }
%struct.param_control = type { i32, i32, i32, i32, i32, [10 x i32], i32 }
%struct.param_otf_output = type { i32, i32, i32, i32, i32, i32, [9 x i32], i32 }
%struct.param_sensor_framerate = type { i32, [14 x i32], i32 }
%struct.isp_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_dma_input, %struct.param_isp_aa, %struct.param_isp_flash, %struct.param_isp_awb, %struct.param_isp_imageeffect, %struct.param_isp_iso, %struct.param_isp_adjust, %struct.param_isp_metering, %struct.param_isp_afc, %struct.param_otf_output, %struct.param_dma_output, %struct.param_dma_output }
%struct.param_otf_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.param_dma_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_isp_aa = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_isp_flash = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_awb = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_imageeffect = type { i32, [14 x i32], i32 }
%struct.param_isp_iso = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_adjust = type { i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.param_isp_metering = type { i32, i32, i32, i32, i32, [10 x i32], i32 }
%struct.param_isp_afc = type { i32, i32, [13 x i32], i32 }
%struct.param_dma_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32 }
%struct.drc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_otf_output }
%struct.fd_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_fd_config }
%struct.param_fd_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32 }
%struct.is_af_info = type { i16, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.72, %union.anon.73, ptr, i32, i8 }
%union.anon.72 = type { ptr }
%union.anon.73 = type { ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.90, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.90 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_async_subdev = type { i32, %union.anon.85, %struct.list_head, %struct.list_head }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { i32, i16 }
%struct.media_entity_operations = type { ptr, ptr, ptr }

@__mod_platform__fimc_driver_ids_device_table = dso_local local_unnamed_addr constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s5p-fimc-md\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@fimc_md_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,fimc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author260 = internal constant [51 x i8] c"author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description261 = internal constant [70 x i8] c"description=S5P FIMC camera host interface/video postprocessor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version263 = internal constant [14 x i8] c"version=2.0.1\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"s5p-csis\00", align 1
@fimc_md_driver = internal global %struct.platform_driver { ptr @fimc_md_probe, ptr @fimc_md_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fimc_md_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [12 x i8] c"s5p-fimc-md\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Samsung S5P FIMC\00", align 1
@fimc_md_ops = internal constant %struct.media_device_ops { ptr @fimc_md_link_notify, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"\013%s: Failed to register v4l2_device: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to get pinctrl: %d\0A\00", align 1
@dev_attr_subdev_conf_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420 }, ptr @subdev_conf_mode_show, ptr @subdev_conf_mode_store }, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"\013%s: clock provider registration failed\0A\00", align 1
@subdev_notifier_ops = internal constant %struct.v4l2_async_notifier_operations { ptr @subdev_notifier_bound, ptr @subdev_notifier_complete, ptr null }, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"drivers/media/platform/exynos4-is/media-dev.c\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\014%s(): No sensor subdev\0A\00", align 1
@__func__.__fimc_pipeline_open = private unnamed_addr constant [21 x i8] c"__fimc_pipeline_open\00", align 1
@fimc_pipeline_s_power.seq = internal unnamed_addr constant [2 x [4 x i8]] [[4 x i8] c"\03\00\01\02", [4 x i8] c"\01\02\00\03"], align 1
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@__func__.__fimc_pipeline_close = private unnamed_addr constant [22 x i8] c"__fimc_pipeline_close\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"fimc-is\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"sclk_cam%u\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Failed to get clock: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"pxl_async%u\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"\013%s: Failed to get clock: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"csis\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"fimc-lite\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"fimc\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"samsung,lcd-wb\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"deferring %s device registration\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"%s device registration failed (%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"\013%s: Failed to register FIMC.%d (%d)\0A\00", align 1
@fimc_pipeline_ops = internal constant %struct.exynos_media_pipeline_ops { ptr null, ptr null, ptr @__fimc_pipeline_open, ptr @__fimc_pipeline_close, ptr @__fimc_pipeline_s_stream }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__fimc_pipeline_s_stream.seq = internal unnamed_addr constant [2 x [5 x i8]] [[5 x i8] c"\04\00\03\01\02", [5 x i8] c"\01\02\04\00\03"], align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"\013%s: Failed to register FIMC.LITE%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"\013%s: Failed to register MIPI-CSIS.%d (%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"\013%s: Failed to register FIMC-ISP (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"parallel-ports\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"\016%s: Remote device at %pOF not found\0A\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"\013%s: Wrong port id (%u) at node %pOF\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"i2c-isp\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"subdev_conf_mode\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"Sub-device API (sub-dev)\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"V4L2 video node only API (vid-dev)\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"vid-dev\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"sub-dev\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@cam_clk_ops = internal constant %struct.clk_ops { ptr @cam_clk_prepare, ptr @cam_clk_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.35 = private unnamed_addr constant [36 x i8] c"failed to register clock: %s (%ld)\0A\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"clk provider not registered\0A\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"\016%s: Registered sensor subdevice: %s (%d)\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Wrong CSI channel id: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [65 x i8] c"MIPI-CSI interface specified but s5p-csis module is not loaded!\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"\016%s: created link [%s] => [%s]\0A\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"\013%s: Wrong bus_type: %x\0A\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"\016%s: created link [%s] %c> [%s]\0A\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"\016%s: created link [%s] -> [%s]\0A\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"\016%s: Unregistered all entities\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_license262, ptr @__UNIQUE_ID_version263], section "llvm.metadata"

@__mod_of__fimc_md_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @fimc_md_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str) #12
  %2 = tail call i32 @fimc_register_driver() #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fimc_md_driver, ptr noundef nonnull @__this_module) #12
  br label %6

6:                                                ; preds = %4, %0
  %7 = phi i32 [ %5, %4 ], [ %2, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fimc_md_driver) #12
  tail call void @fimc_unregister_driver() #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_register_driver() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_md_probe(ptr noundef %0) #3 {
  %2 = alloca i32, align 4
  %3 = alloca [32 x i8], align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 968, i32 noundef 3520) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %413, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 16
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 17
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 17, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 12
  store ptr %0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 10
  %13 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 10, i32 2
  %14 = tail call i32 @strscpy(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef 32) #12
  %15 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 10, i32 21
  store ptr @fimc_md_ops, ptr %15, align 8
  store ptr %4, ptr %12, align 8
  %16 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 11
  %17 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 11, i32 1
  store ptr %12, ptr %17, align 4
  %18 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 11, i32 5
  store ptr @fimc_sensor_notify, ptr %18, align 4
  %19 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 11, i32 4
  %20 = tail call i32 @strscpy(ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef 36) #12
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = tail call ptr @of_get_child_by_name(ptr noundef %22, ptr noundef nonnull @.str.8) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %7
  %26 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %23) #12
  br label %27

27:                                               ; preds = %25, %7
  %28 = phi i1 [ %26, %25 ], [ false, %7 ]
  %29 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 8
  %30 = zext i1 %28 to i8
  store i8 %30, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 15
  store i8 1, ptr %31, align 4
  tail call void @media_device_init(ptr noundef %12) #12
  %32 = tail call i32 @v4l2_device_register(ptr noundef %4, ptr noundef %16) #12
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %19, i32 noundef %32) #13
  br label %411

36:                                               ; preds = %27
  %37 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false) #12, !annotation !8
  %38 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 3, i32 0
  store ptr inttoptr (i32 -22 to ptr), ptr %38, align 4
  %39 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 3, i32 1
  store ptr inttoptr (i32 -22 to ptr), ptr %39, align 4
  %40 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef 0) #12
  %42 = call ptr @clk_get(ptr noundef %40, ptr noundef nonnull %3) #12
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  store ptr %42, ptr %38, align 4
  %45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef 1) #12
  %46 = call ptr @clk_get(ptr noundef %40, ptr noundef nonnull %3) #12
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store ptr %46, ptr %39, align 4
  br label %69

49:                                               ; preds = %44, %36
  %50 = phi ptr [ %42, %36 ], [ %46, %44 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #13
  %51 = ptrtoint ptr %50 to i32
  %52 = load ptr, ptr %39, align 4
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  call void @clk_put(ptr noundef %52) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %39, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load ptr, ptr %38, align 4
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @clk_put(ptr noundef %56) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %38, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 4, i32 0
  %61 = load ptr, ptr %60, align 4
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  call void @clk_put(ptr noundef %61) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %60, align 4
  br label %64

64:                                               ; preds = %63, %59
  %65 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 4, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void @clk_put(ptr noundef %66) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %65, align 4
  br label %69

69:                                               ; preds = %68, %64, %48
  %70 = phi i32 [ %51, %64 ], [ %51, %68 ], [ 0, %48 ]
  %71 = load i8, ptr %29, align 4, !range !9
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %104, label %73

73:                                               ; preds = %69
  %74 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 4
  store ptr inttoptr (i32 -22 to ptr), ptr %74, align 4
  %75 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef 1) #12
  %76 = call ptr @clk_get(ptr noundef %40, ptr noundef nonnull %3) #12
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %19, ptr noundef nonnull %3) #13
  %80 = ptrtoint ptr %76 to i32
  br label %83

81:                                               ; preds = %73
  %82 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 4, i32 1
  store ptr %76, ptr %82, align 4
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i32 [ %80, %78 ], [ %70, %81 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %104, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %39, align 4
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  call void @clk_put(ptr noundef %87) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %39, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load ptr, ptr %38, align 4
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  call void @clk_put(ptr noundef %91) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %38, align 4
  br label %94

94:                                               ; preds = %93, %90
  %95 = load ptr, ptr %74, align 4
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  call void @clk_put(ptr noundef %95) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %74, align 4
  br label %98

98:                                               ; preds = %97, %94
  %99 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 4, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  call void @clk_put(ptr noundef %100) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %99, align 4
  br label %103

103:                                              ; preds = %102, %98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  br label %409

104:                                              ; preds = %83, %69
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  %105 = call ptr @devm_pinctrl_get(ptr noundef %4) #12
  %106 = icmp ugt ptr %105, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = icmp eq ptr %105, inttoptr (i32 517 to ptr)
  br i1 %108, label %390, label %109

109:                                              ; preds = %107
  %110 = ptrtoint ptr %105 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %110) #13
  br label %390

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %112, align 8
  %113 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 14
  call void @v4l2_async_nf_init(ptr noundef %113) #12
  %114 = load ptr, ptr %21, align 8
  %115 = call ptr @of_get_next_available_child(ptr noundef %114, ptr noundef null) #12
  %116 = icmp eq ptr %115, null
  br i1 %116, label %315, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 7
  %119 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 9
  br label %120

120:                                              ; preds = %309, %117
  %121 = phi i32 [ 0, %117 ], [ %310, %309 ]
  %122 = phi ptr [ %115, %117 ], [ %311, %309 ]
  %123 = call ptr @of_find_device_by_node(ptr noundef nonnull %122) #12
  %124 = icmp eq ptr %123, null
  br i1 %124, label %309, label %125

125:                                              ; preds = %120
  %126 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %122, ptr noundef nonnull @.str.13) #12
  br i1 %126, label %136, label %127

127:                                              ; preds = %125
  %128 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %122, ptr noundef nonnull @.str.8) #12
  br i1 %128, label %136, label %129

129:                                              ; preds = %127
  %130 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %122, ptr noundef nonnull @.str.14) #12
  br i1 %130, label %136, label %131

131:                                              ; preds = %129
  %132 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %122, ptr noundef nonnull @.str.15) #12
  br i1 %132, label %133, label %304

133:                                              ; preds = %131
  %134 = call ptr @of_find_property(ptr noundef nonnull %122, ptr noundef nonnull @.str.16, ptr noundef null) #12
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %304

136:                                              ; preds = %133, %129, %127, %125
  %137 = phi i32 [ 4, %133 ], [ 2, %129 ], [ 3, %127 ], [ 1, %125 ]
  %138 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3, i32 9
  call void @mutex_lock(ptr noundef %138) #12
  %139 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3, i32 6
  %140 = load ptr, ptr %139, align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %268, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.device_driver, ptr %140, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = call zeroext i1 @try_module_get(ptr noundef %144) #12
  br i1 %145, label %146, label %268

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3, i32 8
  %148 = load ptr, ptr %147, align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %269, label %150

150:                                              ; preds = %146
  switch i32 %137, label %269 [
    i32 4, label %151
    i32 2, label %191
    i32 1, label %219
    i32 3, label %252
  ]

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct.fimc_dev, ptr %148, i32 0, i32 7
  %153 = load i32, ptr %152, align 4
  %154 = icmp sgt i32 %153, 3
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 6, i32 %153
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %160, label %159, !prof !10

159:                                              ; preds = %155, %151
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 615, i32 noundef 9, ptr noundef null) #12
  br label %269

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.fimc_dev, ptr %148, i32 0, i32 13, i32 1, i32 10
  store i32 4096, ptr %161, align 4
  %162 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %163 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %162, i32 noundef 3520, i32 noundef 180) #14
  %164 = icmp eq ptr %163, null
  br i1 %164, label %269, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.fimc_pipeline, ptr %163, i32 0, i32 1
  %167 = load ptr, ptr %10, align 4
  store ptr %166, ptr %10, align 4
  store ptr %9, ptr %166, align 4
  %168 = getelementptr inbounds %struct.fimc_pipeline, ptr %163, i32 0, i32 1, i32 1
  store ptr %167, ptr %168, align 8
  store volatile ptr %166, ptr %167, align 4
  %169 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %163, i32 0, i32 1
  store ptr @fimc_pipeline_ops, ptr %169, align 8
  %170 = getelementptr inbounds %struct.fimc_dev, ptr %148, i32 0, i32 13, i32 1
  %171 = getelementptr inbounds %struct.fimc_dev, ptr %148, i32 0, i32 13, i32 1, i32 12
  store ptr %163, ptr %171, align 4
  %172 = call i32 @v4l2_device_register_subdev(ptr noundef %16, ptr noundef %170) #12
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %188

174:                                              ; preds = %165
  %175 = load ptr, ptr %119, align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.fimc_dev, ptr %148, i32 0, i32 2
  %179 = load ptr, ptr %178, align 8
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.platform_device, ptr %179, i32 0, i32 3
  store ptr %182, ptr %119, align 8
  br label %183

183:                                              ; preds = %181, %177, %174
  %184 = load i32, ptr %152, align 4
  %185 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 6, i32 %184
  store ptr %148, ptr %185, align 4
  %186 = load i8, ptr %31, align 4, !range !9
  %187 = getelementptr inbounds %struct.fimc_dev, ptr %148, i32 0, i32 13, i32 17
  store i8 %186, ptr %187, align 8
  br label %269

188:                                              ; preds = %165
  %189 = load i32, ptr %152, align 4
  %190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %19, i32 noundef %189, i32 noundef %172) #13
  br label %269

191:                                              ; preds = %150
  %192 = getelementptr inbounds %struct.fimc_lite, ptr %148, i32 0, i32 11
  %193 = load i32, ptr %192, align 8
  %194 = icmp sgt i32 %193, 2
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 5, i32 %193
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %200, label %199, !prof !10

199:                                              ; preds = %195, %191
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 588, i32 noundef 9, ptr noundef null) #12
  br label %269

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.fimc_lite, ptr %148, i32 0, i32 5, i32 10
  store i32 8192, ptr %201, align 4
  %202 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %203 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %202, i32 noundef 3520, i32 noundef 180) #14
  %204 = icmp eq ptr %203, null
  br i1 %204, label %269, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.fimc_pipeline, ptr %203, i32 0, i32 1
  %207 = load ptr, ptr %10, align 4
  store ptr %206, ptr %10, align 4
  store ptr %9, ptr %206, align 4
  %208 = getelementptr inbounds %struct.fimc_pipeline, ptr %203, i32 0, i32 1, i32 1
  store ptr %207, ptr %208, align 8
  store volatile ptr %206, ptr %207, align 4
  %209 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %203, i32 0, i32 1
  store ptr @fimc_pipeline_ops, ptr %209, align 8
  %210 = getelementptr inbounds %struct.fimc_lite, ptr %148, i32 0, i32 5
  %211 = getelementptr inbounds %struct.fimc_lite, ptr %148, i32 0, i32 5, i32 12
  store ptr %203, ptr %211, align 4
  %212 = call i32 @v4l2_device_register_subdev(ptr noundef %16, ptr noundef %210) #12
  %213 = icmp eq i32 %212, 0
  %214 = load i32, ptr %192, align 8
  br i1 %213, label %215, label %217

215:                                              ; preds = %205
  %216 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 5, i32 %214
  store ptr %148, ptr %216, align 4
  br label %269

217:                                              ; preds = %205
  %218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %19, i32 noundef %214) #13
  br label %269

219:                                              ; preds = %150
  %220 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3, i32 25
  %221 = load ptr, ptr %220, align 8
  %222 = icmp eq ptr %221, null
  br i1 %222, label %232, label %223

223:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4
  %224 = call ptr @of_get_child_by_name(ptr noundef nonnull %221, ptr noundef nonnull @.str.22) #12
  %225 = icmp eq ptr %224, null
  br i1 %225, label %230, label %226

226:                                              ; preds = %223
  %227 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %224, ptr noundef nonnull @.str.23, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #12
  call void @of_node_put(ptr noundef nonnull %224) #12
  %228 = load i32, ptr %2, align 4
  %229 = add i32 %228, -3
  br label %230

230:                                              ; preds = %226, %223
  %231 = phi i32 [ %229, %226 ], [ -22, %223 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %236

232:                                              ; preds = %219
  %233 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 1
  %234 = load i32, ptr %233, align 4
  %235 = call i32 @llvm.smax.i32(i32 %234, i32 0) #12
  br label %236

236:                                              ; preds = %232, %230
  %237 = phi i32 [ %231, %230 ], [ %235, %232 ]
  %238 = icmp ugt i32 %237, 1
  br i1 %238, label %239, label %240, !prof !11

239:                                              ; preds = %236
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 649, i32 noundef 9, ptr noundef null) #12
  br label %269

240:                                              ; preds = %236
  %241 = getelementptr [2 x %struct.fimc_csis_info], ptr %5, i32 0, i32 %237
  %242 = load ptr, ptr %241, align 8
  %243 = icmp eq ptr %242, null
  br i1 %243, label %245, label %244, !prof !10

244:                                              ; preds = %240
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 652, i32 noundef 9, ptr noundef null) #12
  br label %269

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.v4l2_subdev, ptr %148, i32 0, i32 10
  store i32 2048, ptr %246, align 4
  %247 = call i32 @v4l2_device_register_subdev(ptr noundef %16, ptr noundef nonnull %148) #12
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  store ptr %148, ptr %241, align 8
  br label %269

250:                                              ; preds = %245
  %251 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %19, i32 noundef %237, i32 noundef %247) #13
  br label %269

252:                                              ; preds = %150
  %253 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %254 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %253, i32 noundef 3520, i32 noundef 180) #14
  %255 = icmp eq ptr %254, null
  br i1 %255, label %269, label %256

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.fimc_pipeline, ptr %254, i32 0, i32 1
  %258 = load ptr, ptr %10, align 4
  store ptr %257, ptr %10, align 4
  store ptr %9, ptr %257, align 4
  %259 = getelementptr inbounds %struct.fimc_pipeline, ptr %254, i32 0, i32 1, i32 1
  store ptr %258, ptr %259, align 8
  store volatile ptr %257, ptr %258, align 4
  %260 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %254, i32 0, i32 1
  store ptr @fimc_pipeline_ops, ptr %260, align 8
  %261 = getelementptr inbounds %struct.fimc_is, ptr %148, i32 0, i32 5, i32 1
  %262 = getelementptr inbounds %struct.fimc_is, ptr %148, i32 0, i32 5, i32 1, i32 12
  store ptr %254, ptr %262, align 4
  %263 = call i32 @v4l2_device_register_subdev(ptr noundef %16, ptr noundef %261) #12
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %256
  %266 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %19, i32 noundef %263) #13
  br label %269

267:                                              ; preds = %256
  store ptr %148, ptr %118, align 8
  br label %269

268:                                              ; preds = %142, %136
  call void @mutex_unlock(ptr noundef %138) #12
  br label %275

269:                                              ; preds = %267, %265, %252, %250, %249, %244, %239, %217, %215, %200, %199, %188, %183, %160, %159, %150, %146
  %270 = phi i32 [ -517, %146 ], [ -19, %150 ], [ -16, %159 ], [ %172, %188 ], [ 0, %183 ], [ -12, %160 ], [ -16, %199 ], [ %212, %217 ], [ 0, %215 ], [ -12, %200 ], [ -2, %239 ], [ -16, %244 ], [ %247, %250 ], [ 0, %249 ], [ %263, %265 ], [ 0, %267 ], [ -12, %252 ]
  %271 = load ptr, ptr %139, align 8
  %272 = getelementptr inbounds %struct.device_driver, ptr %271, i32 0, i32 2
  %273 = load ptr, ptr %272, align 4
  call void @module_put(ptr noundef %273) #12
  call void @mutex_unlock(ptr noundef %138) #12
  %274 = icmp eq i32 %270, -517
  br i1 %274, label %275, label %286

275:                                              ; preds = %269, %268
  %276 = load ptr, ptr %11, align 8
  %277 = getelementptr inbounds %struct.platform_device, ptr %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3, i32 3
  %279 = load ptr, ptr %278, align 4
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %284

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3
  %283 = load ptr, ptr %282, align 4
  br label %284

284:                                              ; preds = %281, %275
  %285 = phi ptr [ %283, %281 ], [ %279, %275 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %277, ptr noundef nonnull @.str.17, ptr noundef %285) #13
  br label %301

286:                                              ; preds = %269
  %287 = icmp slt i32 %270, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %286
  %289 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3
  call void @put_device(ptr noundef %289) #12
  br label %309

290:                                              ; preds = %286
  %291 = load ptr, ptr %11, align 8
  %292 = getelementptr inbounds %struct.platform_device, ptr %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3, i32 3
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3
  %298 = load ptr, ptr %297, align 4
  br label %299

299:                                              ; preds = %296, %290
  %300 = phi ptr [ %298, %296 ], [ %294, %290 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %292, ptr noundef nonnull @.str.18, ptr noundef %300, i32 noundef %270) #13
  br label %301

301:                                              ; preds = %299, %284
  %302 = phi i32 [ -517, %284 ], [ %270, %299 ]
  %303 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3
  call void @put_device(ptr noundef %303) #12
  br label %307

304:                                              ; preds = %133, %131
  %305 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3
  call void @put_device(ptr noundef %305) #12
  %306 = icmp slt i32 %121, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %304, %301
  %308 = phi i32 [ %302, %301 ], [ %121, %304 ]
  call void @of_node_put(ptr noundef nonnull %122) #12
  br label %390

309:                                              ; preds = %304, %288, %120
  %310 = phi i32 [ %270, %288 ], [ %121, %304 ], [ %121, %120 ]
  %311 = call ptr @of_get_next_available_child(ptr noundef %114, ptr noundef nonnull %122) #12
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %120

313:                                              ; preds = %309
  %314 = icmp eq i32 %310, 0
  br i1 %314, label %315, label %390

315:                                              ; preds = %313, %111
  %316 = load ptr, ptr %11, align 8
  %317 = getelementptr inbounds %struct.platform_device, ptr %316, i32 0, i32 3, i32 25
  %318 = load ptr, ptr %317, align 8
  %319 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 9
  %320 = load ptr, ptr %319, align 8
  %321 = icmp eq ptr %320, null
  br i1 %321, label %388, label %322

322:                                              ; preds = %315
  %323 = call i32 @__pm_runtime_resume(ptr noundef nonnull %320, i32 noundef 4) #12
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %331

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.device, ptr %320, i32 0, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %326) #12, !srcloc !13
  %327 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %326, ptr %326, i32 0, i32 -1, ptr elementtype(i32) %326) #12, !srcloc !14
  %328 = extractvalue { i32, i32, i32 } %327, 0
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %388, label %330

330:                                              ; preds = %325
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  br label %388

331:                                              ; preds = %322
  %332 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 2
  store i32 0, ptr %332, align 8
  %333 = call ptr @of_get_next_available_child(ptr noundef %318, ptr noundef null) #12
  %334 = icmp eq ptr %333, null
  br i1 %334, label %347, label %335

335:                                              ; preds = %344, %331
  %336 = phi ptr [ %345, %344 ], [ %333, %331 ]
  %337 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %336, ptr noundef nonnull @.str.13) #12
  br i1 %337, label %338, label %344

338:                                              ; preds = %335
  %339 = call ptr @of_get_next_child(ptr noundef nonnull %336, ptr noundef null) #12
  %340 = icmp eq ptr %339, null
  br i1 %340, label %344, label %341

341:                                              ; preds = %338
  %342 = call fastcc i32 @fimc_md_parse_port_node(ptr noundef %5, ptr noundef nonnull %339) #12
  call void @of_node_put(ptr noundef nonnull %339) #12
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %361, label %344

344:                                              ; preds = %341, %338, %335
  %345 = call ptr @of_get_next_available_child(ptr noundef %318, ptr noundef nonnull %336) #12
  %346 = icmp eq ptr %345, null
  br i1 %346, label %347, label %335

347:                                              ; preds = %344, %331
  %348 = call ptr @of_get_child_by_name(ptr noundef %318, ptr noundef nonnull @.str.25) #12
  %349 = icmp eq ptr %348, null
  br i1 %349, label %367, label %350

350:                                              ; preds = %347
  %351 = call ptr @of_get_next_child(ptr noundef nonnull %348, ptr noundef null) #12
  %352 = icmp eq ptr %351, null
  br i1 %352, label %360, label %353

353:                                              ; preds = %357, %350
  %354 = phi ptr [ %358, %357 ], [ %351, %350 ]
  %355 = call fastcc i32 @fimc_md_parse_port_node(ptr noundef %5, ptr noundef nonnull %354) #12
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %353
  %358 = call ptr @of_get_next_child(ptr noundef nonnull %348, ptr noundef nonnull %354) #12
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %353

360:                                              ; preds = %357, %350
  call void @of_node_put(ptr noundef nonnull %348) #12
  br label %367

361:                                              ; preds = %353, %341
  %362 = phi ptr [ %354, %353 ], [ %336, %341 ]
  %363 = phi ptr [ %348, %353 ], [ null, %341 ]
  %364 = phi i32 [ %355, %353 ], [ %342, %341 ]
  call void @of_node_put(ptr noundef nonnull %362) #12
  call void @of_node_put(ptr noundef %363) #12
  call void @v4l2_async_nf_cleanup(ptr noundef %113) #12
  %365 = load ptr, ptr %319, align 8
  %366 = call i32 @__pm_runtime_idle(ptr noundef %365, i32 noundef 5) #12
  br label %388

367:                                              ; preds = %360, %347
  %368 = load ptr, ptr %319, align 8
  %369 = call i32 @__pm_runtime_idle(ptr noundef %368, i32 noundef 5) #12
  %370 = call i32 @device_create_file(ptr noundef %4, ptr noundef nonnull @dev_attr_subdev_conf_mode) #12
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %386

372:                                              ; preds = %367
  %373 = call fastcc i32 @fimc_md_register_clk_provider(ptr noundef nonnull %5)
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %372
  %376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %19) #13
  br label %384

377:                                              ; preds = %372
  %378 = load i32, ptr %332, align 8
  %379 = icmp sgt i32 %378, 0
  br i1 %379, label %380, label %413

380:                                              ; preds = %377
  store ptr @subdev_notifier_ops, ptr %113, align 4
  store i32 0, ptr %332, align 8
  %381 = call i32 @v4l2_async_nf_register(ptr noundef %16, ptr noundef %113) #12
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %413, label %383

383:                                              ; preds = %380
  call fastcc void @fimc_md_unregister_clk_provider(ptr noundef nonnull %5)
  br label %384

384:                                              ; preds = %383, %375
  %385 = phi i32 [ %373, %375 ], [ %381, %383 ]
  call void @device_remove_file(ptr noundef %4, ptr noundef nonnull @dev_attr_subdev_conf_mode) #12
  br label %386

386:                                              ; preds = %384, %367
  %387 = phi i32 [ %370, %367 ], [ %385, %384 ]
  call void @v4l2_async_nf_cleanup(ptr noundef %113) #12
  br label %388

388:                                              ; preds = %386, %361, %330, %325, %315
  %389 = phi i32 [ %387, %386 ], [ %323, %330 ], [ %323, %325 ], [ -6, %315 ], [ %364, %361 ]
  call fastcc void @fimc_md_unregister_entities(ptr noundef nonnull %5)
  br label %390

390:                                              ; preds = %388, %313, %307, %109, %107
  %391 = phi i32 [ %110, %109 ], [ 517, %107 ], [ %310, %313 ], [ %389, %388 ], [ %308, %307 ]
  %392 = load ptr, ptr %39, align 4
  %393 = icmp ugt ptr %392, inttoptr (i32 -4096 to ptr)
  br i1 %393, label %395, label %394

394:                                              ; preds = %390
  call void @clk_put(ptr noundef %392) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %39, align 4
  br label %395

395:                                              ; preds = %394, %390
  %396 = load ptr, ptr %38, align 4
  %397 = icmp ugt ptr %396, inttoptr (i32 -4096 to ptr)
  br i1 %397, label %399, label %398

398:                                              ; preds = %395
  call void @clk_put(ptr noundef %396) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %38, align 4
  br label %399

399:                                              ; preds = %398, %395
  %400 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 4, i32 0
  %401 = load ptr, ptr %400, align 4
  %402 = icmp ugt ptr %401, inttoptr (i32 -4096 to ptr)
  br i1 %402, label %404, label %403

403:                                              ; preds = %399
  call void @clk_put(ptr noundef %401) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %400, align 4
  br label %404

404:                                              ; preds = %403, %399
  %405 = getelementptr %struct.fimc_md, ptr %5, i32 0, i32 4, i32 1
  %406 = load ptr, ptr %405, align 4
  %407 = icmp ugt ptr %406, inttoptr (i32 -4096 to ptr)
  br i1 %407, label %409, label %408

408:                                              ; preds = %404
  call void @clk_put(ptr noundef %406) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %405, align 4
  br label %409

409:                                              ; preds = %408, %404, %103
  %410 = phi i32 [ %84, %103 ], [ %391, %404 ], [ %391, %408 ]
  call void @v4l2_device_unregister(ptr noundef %16) #12
  br label %411

411:                                              ; preds = %409, %34
  %412 = phi i32 [ %32, %34 ], [ %410, %409 ]
  call void @media_device_cleanup(ptr noundef %12) #12
  br label %413

413:                                              ; preds = %411, %380, %377, %1
  %414 = phi i32 [ %412, %411 ], [ -12, %1 ], [ 0, %380 ], [ 0, %377 ]
  ret i32 %414
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_md_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fimc_md, ptr %3, i32 0, i32 13
  %7 = getelementptr inbounds %struct.fimc_md, ptr %3, i32 0, i32 13, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @of_clk_del_provider(ptr noundef nonnull %8) #12
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.fimc_md, ptr %3, i32 0, i32 13, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %15, %11
  %16 = phi i32 [ %19, %15 ], [ 0, %11 ]
  %17 = getelementptr [2 x ptr], ptr %6, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_unregister(ptr noundef %18) #12
  %19 = add nuw i32 %16, 1
  %20 = load i32, ptr %12, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %15, label %22

22:                                               ; preds = %15, %11
  %23 = getelementptr inbounds %struct.fimc_md, ptr %3, i32 0, i32 14
  tail call void @v4l2_async_nf_unregister(ptr noundef %23) #12
  tail call void @v4l2_async_nf_cleanup(ptr noundef %23) #12
  %24 = getelementptr inbounds %struct.fimc_md, ptr %3, i32 0, i32 11
  tail call void @v4l2_device_unregister(ptr noundef %24) #12
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %25, ptr noundef nonnull @dev_attr_subdev_conf_mode) #12
  tail call fastcc void @fimc_md_unregister_entities(ptr noundef nonnull %3)
  %26 = getelementptr inbounds %struct.fimc_md, ptr %3, i32 0, i32 17
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %38, label %29

29:                                               ; preds = %29, %22
  %30 = phi ptr [ %36, %29 ], [ %27, %22 ]
  %31 = getelementptr i8, ptr %30, i32 -148
  %32 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %32, align 4
  tail call void @kfree(ptr noundef %31) #12
  %36 = load volatile ptr, ptr %26, align 4
  %37 = icmp eq ptr %36, %26
  br i1 %37, label %38, label %29

38:                                               ; preds = %29, %22
  %39 = getelementptr inbounds %struct.fimc_md, ptr %3, i32 0, i32 10
  tail call void @media_device_unregister(ptr noundef %39) #12
  tail call void @media_device_cleanup(ptr noundef %39) #12
  %40 = getelementptr %struct.fimc_md, ptr %3, i32 0, i32 3, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  tail call void @clk_put(ptr noundef %41) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %40, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = getelementptr %struct.fimc_md, ptr %3, i32 0, i32 3, i32 0
  %46 = load ptr, ptr %45, align 4
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @clk_put(ptr noundef %46) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %45, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr %struct.fimc_md, ptr %3, i32 0, i32 4, i32 0
  %51 = load ptr, ptr %50, align 4
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @clk_put(ptr noundef %51) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %50, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr %struct.fimc_md, ptr %3, i32 0, i32 4, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @clk_put(ptr noundef %56) #12
  store ptr inttoptr (i32 -22 to ptr), ptr %55, align 4
  br label %59

59:                                               ; preds = %58, %54, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_sensor_notify(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_md_register_clk_provider(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 13
  %5 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 25
  %9 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  %10 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  %13 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 13, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %14 = load ptr, ptr %8, align 8
  %15 = call i32 @of_property_read_string_helper(ptr noundef %14, ptr noundef nonnull @.str.34, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %36, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #12
  %18 = load i32, ptr %13, align 4
  br label %55

19:                                               ; preds = %1
  %20 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 13, i32 3, i32 0
  %21 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 3, i32 0
  %22 = load ptr, ptr %21, align 4
  %23 = call ptr @__clk_get_name(ptr noundef %22) #12
  store ptr %23, ptr %3, align 4
  store ptr %3, ptr %9, align 4
  store i8 1, ptr %10, align 4
  store ptr @cam_clk_ops, ptr %11, align 4
  store i32 4, ptr %12, align 4
  %24 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 13, i32 3, i32 0, i32 0, i32 2
  store ptr %2, ptr %24, align 4
  %25 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 13, i32 3, i32 0, i32 1
  store ptr %0, ptr %25, align 4
  %26 = call ptr @clk_register(ptr noundef null, ptr noundef %20) #12
  store ptr %26, ptr %4, align 4
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %36

28:                                               ; preds = %42, %19
  %29 = phi ptr [ %26, %19 ], [ %49, %42 ]
  %30 = phi i32 [ 0, %19 ], [ 1, %42 ]
  %31 = getelementptr [2 x ptr], ptr %4, i32 0, i32 %30
  %32 = load ptr, ptr %2, align 4
  %33 = ptrtoint ptr %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.35, ptr noundef %32, i32 noundef %33) #13
  %34 = load ptr, ptr %31, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #12
  br label %67

36:                                               ; preds = %19
  %37 = load i32, ptr %13, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4, !annotation !8
  %39 = load ptr, ptr %8, align 8
  %40 = call i32 @of_property_read_string_helper(ptr noundef %39, ptr noundef nonnull @.str.34, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 1) #12
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %17, label %42

42:                                               ; preds = %36
  %43 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 13, i32 3, i32 1
  %44 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 3, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = call ptr @__clk_get_name(ptr noundef %45) #12
  store ptr %46, ptr %3, align 4
  store ptr %3, ptr %9, align 4
  store i8 1, ptr %10, align 4
  store ptr @cam_clk_ops, ptr %11, align 4
  store i32 4, ptr %12, align 4
  %47 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 13, i32 3, i32 1, i32 0, i32 2
  store ptr %2, ptr %47, align 4
  %48 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 13, i32 3, i32 1, i32 1
  store ptr %0, ptr %48, align 4
  %49 = call ptr @clk_register(ptr noundef null, ptr noundef %43) #12
  %50 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 13, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %28, label %52

52:                                               ; preds = %42
  %53 = load i32, ptr %13, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #12
  br label %55

55:                                               ; preds = %52, %17
  %56 = phi i32 [ %54, %52 ], [ %18, %17 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.36) #13
  br label %83

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 13, i32 1
  store ptr %4, ptr %60, align 4
  %61 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 13, i32 1, i32 1
  store i32 %56, ptr %61, align 4
  %62 = load ptr, ptr %8, align 8
  %63 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 13, i32 2
  store ptr %62, ptr %63, align 4
  %64 = load ptr, ptr %8, align 8
  %65 = call i32 @of_clk_add_provider(ptr noundef %64, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %60) #12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %59, %28
  %68 = phi i32 [ %35, %28 ], [ %65, %59 ]
  %69 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 13, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  call void @of_clk_del_provider(ptr noundef nonnull %70) #12
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, ptr %13, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %76, %73
  %77 = phi i32 [ %80, %76 ], [ 0, %73 ]
  %78 = getelementptr [2 x ptr], ptr %4, i32 0, i32 %77
  %79 = load ptr, ptr %78, align 4
  call void @clk_unregister(ptr noundef %79) #12
  %80 = add nuw i32 %77, 1
  %81 = load i32, ptr %13, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %76, label %83

83:                                               ; preds = %76, %73, %59, %58
  %84 = phi i32 [ 0, %58 ], [ 0, %59 ], [ %68, %73 ], [ %68, %76 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fimc_md_unregister_clk_provider(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 13
  %3 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 13, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @of_clk_del_provider(ptr noundef nonnull %4) #12
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 13, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %11, %7
  %12 = phi i32 [ %15, %11 ], [ 0, %7 ]
  %13 = getelementptr [2 x ptr], ptr %2, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_unregister(ptr noundef %14) #12
  %15 = add nuw i32 %12, 1
  %16 = load i32, ptr %8, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %11, label %18

18:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fimc_md_unregister_entities(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 6, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 1
  store ptr null, ptr %7, align 8
  store ptr null, ptr %2, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.fimc_dev, ptr %10, i32 0, i32 13, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.fimc_dev, ptr %10, i32 0, i32 13, i32 2, i32 1
  store ptr null, ptr %14, align 8
  store ptr null, ptr %9, align 4
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 6, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.fimc_dev, ptr %17, i32 0, i32 13, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %20) #12
  %21 = getelementptr inbounds %struct.fimc_dev, ptr %17, i32 0, i32 13, i32 2, i32 1
  store ptr null, ptr %21, align 8
  store ptr null, ptr %16, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 6, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.fimc_dev, ptr %24, i32 0, i32 13, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %27) #12
  %28 = getelementptr inbounds %struct.fimc_dev, ptr %24, i32 0, i32 13, i32 2, i32 1
  store ptr null, ptr %28, align 8
  store ptr null, ptr %23, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 5, i32 0
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.fimc_lite, ptr %31, i32 0, i32 5
  tail call void @v4l2_device_unregister_subdev(ptr noundef %34) #12
  %35 = getelementptr inbounds %struct.fimc_lite, ptr %31, i32 0, i32 2, i32 1
  store ptr null, ptr %35, align 8
  store ptr null, ptr %30, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 5, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.fimc_lite, ptr %38, i32 0, i32 5
  tail call void @v4l2_device_unregister_subdev(ptr noundef %41) #12
  %42 = getelementptr inbounds %struct.fimc_lite, ptr %38, i32 0, i32 2, i32 1
  store ptr null, ptr %42, align 8
  store ptr null, ptr %37, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 5, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.fimc_lite, ptr %45, i32 0, i32 5
  tail call void @v4l2_device_unregister_subdev(ptr noundef %48) #12
  %49 = getelementptr inbounds %struct.fimc_lite, ptr %45, i32 0, i32 2, i32 1
  store ptr null, ptr %49, align 8
  store ptr null, ptr %44, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load ptr, ptr %0, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %51) #12
  store ptr null, ptr %0, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = getelementptr [2 x %struct.fimc_csis_info], ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void @v4l2_device_unregister_subdev(ptr noundef nonnull %56) #12
  store ptr null, ptr %55, align 8
  br label %59

59:                                               ; preds = %58, %54
  %60 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 7
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.fimc_is, ptr %61, i32 0, i32 5, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %64) #12
  br label %65

65:                                               ; preds = %63, %59
  %66 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 11, i32 4
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %66) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_md_link_notify(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr i8, ptr %4, i32 636
  %6 = getelementptr inbounds %struct.media_link, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.media_pad, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  switch i32 %2, label %30 [
    i32 0, label %10
    i32 1, label %18
  ]

10:                                               ; preds = %3
  %11 = tail call i32 @media_graph_walk_init(ptr noundef %5, ptr noundef %4) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = and i32 %1, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @__fimc_md_modify_pipelines(ptr noundef %9, i1 noundef zeroext false, ptr noundef %5)
  br label %27

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.media_link, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc i32 @__fimc_md_modify_pipelines(ptr noundef %9, i1 noundef zeroext true, ptr noundef %5)
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi i32 [ %24, %23 ], [ 0, %18 ]
  tail call void @media_graph_walk_cleanup(ptr noundef %5) #12
  br label %27

27:                                               ; preds = %25, %16
  %28 = phi i32 [ %17, %16 ], [ %26, %25 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %13, %3
  br label %31

31:                                               ; preds = %30, %27, %10
  %32 = phi i32 [ %11, %10 ], [ 0, %30 ], [ -32, %27 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_graph_walk_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__fimc_md_modify_pipelines(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) unnamed_addr #3 {
  tail call void @media_graph_walk_start(ptr noundef %2, ptr noundef %0) #12
  %4 = tail call ptr @media_graph_walk_next(ptr noundef %2) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %11, %3
  %7 = phi ptr [ %12, %11 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %14, %6
  %12 = tail call ptr @media_graph_walk_next(ptr noundef %2) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %6

14:                                               ; preds = %6
  %15 = tail call fastcc i32 @__fimc_md_modify_pipeline(ptr noundef nonnull %7, i1 noundef zeroext %1)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %11

17:                                               ; preds = %14
  tail call void @media_graph_walk_start(ptr noundef %2, ptr noundef %0) #12
  %18 = xor i1 %1, true
  %19 = tail call ptr @media_graph_walk_next(ptr noundef %2) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %26, %17
  %22 = phi ptr [ %27, %26 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.media_entity, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %29, %21
  %27 = tail call ptr @media_graph_walk_next(ptr noundef %2) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %21

29:                                               ; preds = %21
  %30 = tail call fastcc i32 @__fimc_md_modify_pipeline(ptr noundef nonnull %22, i1 noundef zeroext %18)
  %31 = icmp eq ptr %22, %7
  br i1 %31, label %32, label %26

32:                                               ; preds = %29, %26, %17, %11, %3
  %33 = phi i32 [ %15, %17 ], [ 0, %3 ], [ %15, %26 ], [ %15, %29 ], [ 0, %11 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_graph_walk_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__fimc_md_modify_pipeline(ptr noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.exynos_video_entity, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  br i1 %1, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.fimc_pipeline, ptr %8, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %30

13:                                               ; preds = %6
  %14 = load ptr, ptr %0, align 4
  %15 = icmp eq ptr %14, null
  %16 = getelementptr i8, ptr %14, i32 -192
  %17 = select i1 %15, ptr null, ptr %16
  %18 = icmp eq ptr %8, null
  %19 = icmp eq ptr %0, null
  %20 = or i1 %19, %18
  br i1 %20, label %21, label %22, !prof !11

21:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 233, i32 noundef 9, ptr noundef null) #12
  br label %50

22:                                               ; preds = %13
  tail call fastcc void @fimc_pipeline_prepare(ptr noundef nonnull %8, ptr noundef nonnull %0) #12
  %23 = getelementptr inbounds %struct.fimc_pipeline, ptr %8, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__fimc_pipeline_open) #13
  br label %50

28:                                               ; preds = %22
  %29 = tail call fastcc i32 @__fimc_pipeline_enable(ptr noundef nonnull %8, ptr noundef %17) #12
  br label %50

30:                                               ; preds = %9
  %31 = icmp eq ptr %8, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__fimc_pipeline_close) #13
  br label %49

34:                                               ; preds = %30
  %35 = tail call fastcc i32 @fimc_pipeline_s_power(ptr noundef nonnull %8, i1 noundef zeroext false) #12
  %36 = load ptr, ptr %11, align 4
  %37 = icmp eq ptr %36, null
  %38 = getelementptr i8, ptr %36, i32 -192
  %39 = select i1 %37, ptr null, ptr %38
  %40 = getelementptr %struct.fimc_md, ptr %39, i32 0, i32 4, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %48, label %43

43:                                               ; preds = %34
  %44 = getelementptr %struct.fimc_pipeline, ptr %8, i32 0, i32 3, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @clk_disable(ptr noundef %41) #12
  tail call void @clk_unprepare(ptr noundef %41) #12
  br label %48

48:                                               ; preds = %47, %43, %34
  switch i32 %35, label %50 [
    i32 -6, label %49
    i32 0, label %49
  ]

49:                                               ; preds = %48, %48, %32
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false)
  br label %50

50:                                               ; preds = %49, %48, %28, %26, %21, %9, %2
  %51 = phi i32 [ 0, %2 ], [ 0, %9 ], [ 0, %49 ], [ %29, %28 ], [ 0, %26 ], [ -22, %21 ], [ %35, %48 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__fimc_pipeline_open(ptr noundef %0, ptr noundef readonly %1, i1 noundef zeroext %2) #3 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -192
  %7 = select i1 %5, ptr null, ptr %6
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 233, i32 noundef 9, ptr noundef null) #12
  br label %22

12:                                               ; preds = %3
  br i1 %2, label %13, label %14

13:                                               ; preds = %12
  tail call fastcc void @fimc_pipeline_prepare(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %14

14:                                               ; preds = %13, %12
  %15 = getelementptr inbounds %struct.fimc_pipeline, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__fimc_pipeline_open) #13
  br label %22

20:                                               ; preds = %14
  %21 = tail call fastcc i32 @__fimc_pipeline_enable(ptr noundef nonnull %0, ptr noundef %7)
  br label %22

22:                                               ; preds = %20, %18, %11
  %23 = phi i32 [ -22, %11 ], [ 0, %18 ], [ %21, %20 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__fimc_pipeline_close(ptr noundef readonly %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fimc_pipeline, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3, %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__fimc_pipeline_close) #13
  br label %26

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @fimc_pipeline_s_power(ptr noundef nonnull %0, i1 noundef zeroext false)
  %11 = load ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -192
  %14 = select i1 %12, ptr null, ptr %13
  %15 = getelementptr %struct.fimc_md, ptr %14, i32 0, i32 4, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %23, label %18

18:                                               ; preds = %9
  %19 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @clk_disable(ptr noundef %16) #12
  tail call void @clk_unprepare(ptr noundef %16) #12
  br label %23

23:                                               ; preds = %22, %18, %9
  %24 = icmp eq i32 %10, -6
  %25 = select i1 %24, i32 0, i32 %10
  br label %26

26:                                               ; preds = %23, %7
  %27 = phi i32 [ 0, %7 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fimc_pipeline_prepare(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 -192
  %5 = getelementptr i8, ptr %0, i32 160
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false)
  %6 = icmp eq ptr %3, null
  %7 = select i1 %6, ptr null, ptr %4
  %8 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 3
  %9 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 4
  %10 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 2
  %11 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 1
  %12 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %13 = load i16, ptr %12, align 4
  br label %14

14:                                               ; preds = %60, %2
  %15 = phi i16 [ %63, %60 ], [ %13, %2 ]
  %16 = phi ptr [ %61, %60 ], [ null, %2 ]
  %17 = phi ptr [ %43, %60 ], [ %1, %2 ]
  %18 = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 5
  %19 = icmp eq i16 %15, 0
  br i1 %19, label %65, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 9
  br label %22

22:                                               ; preds = %36, %20
  %23 = phi i16 [ %15, %20 ], [ %37, %36 ]
  %24 = phi i32 [ 0, %20 ], [ %38, %36 ]
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr %struct.media_pad, ptr %25, i32 %24, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = getelementptr %struct.media_pad, ptr %25, i32 %24
  %32 = tail call ptr @media_entity_remote_pad(ptr noundef %31) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i16, ptr %18, align 4
  br label %36

36:                                               ; preds = %34, %22
  %37 = phi i16 [ %35, %34 ], [ %23, %22 ]
  %38 = add nuw nsw i32 %24, 1
  %39 = zext i16 %37 to i32
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %22, label %65

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.media_pad, ptr %32, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.media_entity, ptr %43, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.v4l2_subdev, ptr %43, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  switch i32 %51, label %60 [
    i32 256, label %52
    i32 512, label %57
    i32 2048, label %53
    i32 8192, label %54
    i32 4096, label %55
    i32 16384, label %56
  ]

52:                                               ; preds = %49
  br label %57

53:                                               ; preds = %49
  br label %57

54:                                               ; preds = %49
  br label %57

55:                                               ; preds = %49
  br label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %55, %54, %53, %52, %49
  %58 = phi ptr [ %8, %56 ], [ %9, %55 ], [ %10, %54 ], [ %11, %53 ], [ %5, %49 ], [ %5, %52 ]
  %59 = phi ptr [ %16, %56 ], [ %16, %55 ], [ %16, %54 ], [ %16, %53 ], [ %16, %49 ], [ %43, %52 ]
  store ptr %43, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %49
  %61 = phi ptr [ %16, %49 ], [ %59, %57 ]
  %62 = getelementptr inbounds %struct.media_entity, ptr %43, i32 0, i32 5
  %63 = load i16, ptr %62, align 4
  %64 = icmp eq i16 %63, 1
  br i1 %64, label %65, label %14

65:                                               ; preds = %60, %45, %41, %36, %14
  %66 = phi ptr [ %16, %36 ], [ %16, %14 ], [ %61, %60 ], [ %16, %41 ], [ %16, %45 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %9, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %84, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.v4l2_subdev, ptr %66, i32 0, i32 12
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = icmp eq ptr %7, null
  br i1 %76, label %77, label %78, !prof !11

77:                                               ; preds = %75
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 49, i32 noundef 9, ptr noundef null) #12
  br label %84

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.fimc_md, ptr %7, i32 0, i32 16
  %80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %79) #12
  %81 = getelementptr inbounds %struct.v4l2_subdev, ptr %69, i32 0, i32 11
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.fimc_sensor_info, ptr %73, i32 0, i32 3
  store ptr %82, ptr %83, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %80) #12
  br label %84

84:                                               ; preds = %78, %77, %71, %68, %65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__fimc_pipeline_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr %struct.fimc_md, ptr %1, i32 0, i32 4, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @clk_prepare(ptr noundef %4) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call i32 @clk_enable(ptr noundef %4) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %4) #12
  br label %17

17:                                               ; preds = %16, %10
  %18 = phi i32 [ %11, %10 ], [ %14, %16 ]
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17, %13, %6, %2
  %21 = tail call fastcc i32 @fimc_pipeline_s_power(ptr noundef %0, i1 noundef zeroext true)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @clk_disable(ptr noundef %24) #12
  tail call void @clk_unprepare(ptr noundef %24) #12
  br label %31

31:                                               ; preds = %30, %26, %23, %20, %17
  %32 = phi i32 [ %18, %17 ], [ 0, %20 ], [ %21, %30 ], [ %21, %26 ], [ %21, %23 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_pipeline_s_power(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.fimc_pipeline, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %99, label %6

6:                                                ; preds = %2
  %7 = zext i1 %1 to i32
  %8 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %8, i32 0, i32 8
  br label %11

11:                                               ; preds = %55, %6
  %12 = phi i32 [ 0, %6 ], [ %56, %55 ]
  %13 = getelementptr [2 x [4 x i8]], ptr @fimc_pipeline_s_power.seq, i32 0, i32 %7, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 13
  %21 = load i32, ptr %20, align 4
  br i1 %1, label %22, label %25

22:                                               ; preds = %19
  %23 = add i32 %21, 1
  store i32 %23, ptr %20, align 4
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %55, label %30

25:                                               ; preds = %19
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %25
  %28 = add i32 %21, -1
  store i32 %28, ptr %20, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %27, %22
  %31 = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %33, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  br i1 %9, label %43, label %40

40:                                               ; preds = %39
  %41 = load ptr, ptr %10, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %39
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi ptr [ %37, %43 ], [ %41, %40 ]
  %46 = tail call i32 %45(ptr noundef nonnull %17, i32 noundef %7) #12
  %47 = icmp eq i32 %46, -515
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = icmp slt i32 %46, 0
  %50 = icmp ne i32 %46, -6
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = xor i1 %1, true
  %54 = zext i1 %53 to i32
  br label %58

55:                                               ; preds = %48, %44, %35, %30, %27, %25, %22, %11
  %56 = add nuw nsw i32 %12, 1
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %99, label %11

58:                                               ; preds = %95, %52
  %59 = phi i8 [ %14, %52 ], [ %98, %95 ]
  %60 = phi i32 [ %12, %52 ], [ %96, %95 ]
  %61 = zext i8 %59 to i32
  %62 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %93, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.media_entity, ptr %63, i32 0, i32 13
  %67 = load i32, ptr %66, align 4
  br i1 %1, label %71, label %68

68:                                               ; preds = %65
  %69 = add i32 %67, 1
  store i32 %69, ptr %66, align 4
  %70 = icmp sgt i32 %67, 0
  br i1 %70, label %93, label %76

71:                                               ; preds = %65
  %72 = icmp eq i32 %67, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %71
  %74 = add i32 %67, -1
  store i32 %74, ptr %66, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %73, %68
  %77 = getelementptr inbounds %struct.v4l2_subdev, ptr %63, i32 0, i32 6
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %93, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %79, i32 0, i32 8
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  br i1 %9, label %89, label %86

86:                                               ; preds = %85
  %87 = load ptr, ptr %10, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi ptr [ %83, %89 ], [ %87, %86 ]
  %92 = tail call i32 %91(ptr noundef nonnull %63, i32 noundef %54) #12
  br label %93

93:                                               ; preds = %90, %81, %76, %73, %71, %68, %58
  %94 = icmp sgt i32 %60, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = add nsw i32 %60, -1
  %97 = getelementptr [2 x [4 x i8]], ptr @fimc_pipeline_s_power.seq, i32 0, i32 %7, i32 %96
  %98 = load i8, ptr %97, align 1
  br label %58

99:                                               ; preds = %93, %55, %2
  %100 = phi i32 [ -6, %2 ], [ %46, %93 ], [ 0, %55 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__fimc_pipeline_s_stream(ptr nocapture noundef %0, i1 noundef zeroext %1) #3 {
  %3 = getelementptr inbounds %struct.fimc_pipeline, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  %7 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %227, label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 -192
  %19 = select i1 %17, ptr null, ptr %18
  %20 = getelementptr inbounds %struct.fimc_md, ptr %19, i32 0, i32 15
  %21 = load i8, ptr %20, align 4, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %227, label %23

23:                                               ; preds = %14
  %24 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %227, label %35

35:                                               ; preds = %31, %27, %23
  %36 = phi ptr [ %25, %23 ], [ %29, %27 ], [ %33, %31 ]
  tail call fastcc void @fimc_pipeline_prepare(ptr noundef %0, ptr noundef nonnull %36)
  %37 = load ptr, ptr %3, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %227, label %39

39:                                               ; preds = %35
  %40 = tail call fastcc i32 @__fimc_pipeline_enable(ptr noundef %0, ptr noundef %19)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %227, label %42

42:                                               ; preds = %39, %2
  %43 = zext i1 %1 to i32
  %44 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %44, i32 0, i32 10
  br label %47

47:                                               ; preds = %82, %42
  %48 = phi i32 [ 0, %42 ], [ %83, %82 ]
  %49 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %43, i32 %48
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.v4l2_subdev, ptr %53, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %59, i32 0, i32 10
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  br i1 %45, label %69, label %66

66:                                               ; preds = %65
  %67 = load ptr, ptr %46, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi ptr [ %63, %69 ], [ %67, %66 ]
  %72 = tail call i32 %71(ptr noundef nonnull %53, i32 noundef %43) #12
  br label %73

73:                                               ; preds = %70, %61, %55, %47
  %74 = phi i32 [ -19, %47 ], [ -515, %61 ], [ -515, %55 ], [ %72, %70 ]
  %75 = freeze i32 %74
  %76 = icmp slt i32 %75, 0
  %77 = icmp eq i32 %75, -19
  %78 = icmp eq i32 %75, -515
  %79 = or i1 %77, %78
  %80 = select i1 %79, i32 0, i32 5
  %81 = select i1 %76, i32 %80, i32 0
  switch i32 %81, label %227 [
    i32 0, label %82
    i32 5, label %85
  ]

82:                                               ; preds = %73
  %83 = add nuw nsw i32 %48, 1
  %84 = icmp eq i32 %83, 5
  br i1 %84, label %227, label %47

85:                                               ; preds = %73
  %86 = freeze i32 %74
  %87 = xor i1 %1, true
  %88 = tail call fastcc i32 @fimc_pipeline_s_power(ptr noundef %0, i1 noundef zeroext %87)
  %89 = zext i1 %87 to i32
  %90 = zext i8 %50 to i32
  %91 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %112, label %94

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.v4l2_subdev, ptr %92, i32 0, i32 6
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %98, i32 0, i32 10
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  br i1 %45, label %108, label %105

105:                                              ; preds = %104
  %106 = load ptr, ptr %46, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %104
  br label %109

109:                                              ; preds = %108, %105
  %110 = phi ptr [ %102, %108 ], [ %106, %105 ]
  %111 = tail call i32 %110(ptr noundef nonnull %92, i32 noundef %89) #12
  br label %112

112:                                              ; preds = %109, %100, %94, %85
  %113 = icmp eq i32 %48, 0
  br i1 %113, label %227, label %114

114:                                              ; preds = %112
  %115 = add nsw i32 %48, -1
  %116 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %43, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 %118
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %140, label %122

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.v4l2_subdev, ptr %120, i32 0, i32 6
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %126, i32 0, i32 10
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  br i1 %45, label %136, label %133

133:                                              ; preds = %132
  %134 = load ptr, ptr %46, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %133, %132
  br label %137

137:                                              ; preds = %136, %133
  %138 = phi ptr [ %130, %136 ], [ %134, %133 ]
  %139 = tail call i32 %138(ptr noundef nonnull %120, i32 noundef %89) #12
  br label %140

140:                                              ; preds = %137, %128, %122, %114
  %141 = icmp ugt i32 %48, 1
  br i1 %141, label %142, label %227

142:                                              ; preds = %140
  %143 = add nsw i32 %48, -2
  %144 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %43, i32 %143
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 %146
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %168, label %150

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct.v4l2_subdev, ptr %148, i32 0, i32 6
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %152, i32 0, i32 3
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %168, label %156

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %154, i32 0, i32 10
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %168, label %160

160:                                              ; preds = %156
  br i1 %45, label %164, label %161

161:                                              ; preds = %160
  %162 = load ptr, ptr %46, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %161, %160
  br label %165

165:                                              ; preds = %164, %161
  %166 = phi ptr [ %158, %164 ], [ %162, %161 ]
  %167 = tail call i32 %166(ptr noundef nonnull %148, i32 noundef %89) #12
  br label %168

168:                                              ; preds = %165, %156, %150, %142
  %169 = icmp ugt i32 %48, 2
  br i1 %169, label %170, label %227

170:                                              ; preds = %168
  %171 = add nsw i32 %48, -3
  %172 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %43, i32 %171
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 %174
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %196, label %178

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.v4l2_subdev, ptr %176, i32 0, i32 6
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %180, i32 0, i32 3
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %196, label %184

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %182, i32 0, i32 10
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %196, label %188

188:                                              ; preds = %184
  br i1 %45, label %192, label %189

189:                                              ; preds = %188
  %190 = load ptr, ptr %46, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %189, %188
  br label %193

193:                                              ; preds = %192, %189
  %194 = phi ptr [ %186, %192 ], [ %190, %189 ]
  %195 = tail call i32 %194(ptr noundef nonnull %176, i32 noundef %89) #12
  br label %196

196:                                              ; preds = %193, %184, %178, %170
  %197 = icmp ugt i32 %48, 3
  br i1 %197, label %198, label %227

198:                                              ; preds = %196
  %199 = add nsw i32 %48, -4
  %200 = getelementptr [2 x [5 x i8]], ptr @__fimc_pipeline_s_stream.seq, i32 0, i32 %43, i32 %199
  %201 = load i8, ptr %200, align 1
  %202 = zext i8 %201 to i32
  %203 = getelementptr %struct.fimc_pipeline, ptr %0, i32 0, i32 3, i32 %202
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %224, label %206

206:                                              ; preds = %198
  %207 = getelementptr inbounds %struct.v4l2_subdev, ptr %204, i32 0, i32 6
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %208, i32 0, i32 3
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %224, label %212

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %210, i32 0, i32 10
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %224, label %216

216:                                              ; preds = %212
  br i1 %45, label %220, label %217

217:                                              ; preds = %216
  %218 = load ptr, ptr %46, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %221

220:                                              ; preds = %217, %216
  br label %221

221:                                              ; preds = %220, %217
  %222 = phi ptr [ %214, %220 ], [ %218, %217 ]
  %223 = tail call i32 %222(ptr noundef nonnull %204, i32 noundef %89) #12
  br label %224

224:                                              ; preds = %221, %212, %206, %198
  %225 = icmp ugt i32 %48, 4
  %226 = xor i1 %225, true
  call void @llvm.assume(i1 %226)
  br label %227

227:                                              ; preds = %224, %196, %168, %140, %112, %82, %73, %39, %35, %31, %14, %10
  %228 = phi i32 [ %40, %39 ], [ -19, %10 ], [ -19, %14 ], [ -19, %31 ], [ -19, %35 ], [ %86, %224 ], [ %86, %196 ], [ %86, %168 ], [ %86, %140 ], [ %86, %112 ], [ 0, %73 ], [ 0, %82 ]
  ret i32 %228
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_md_parse_port_node(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %4 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %83, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 11, i32 4
  %9 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 14
  br label %12

12:                                               ; preds = %80, %6
  %13 = phi ptr [ %4, %6 ], [ %81, %80 ]
  %14 = load i32, ptr %7, align 8
  %15 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 1, i32 %14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #12
  %16 = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 3
  %17 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %16, ptr noundef nonnull %3) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  call void @of_node_put(ptr noundef nonnull %13) #12
  br label %75

20:                                               ; preds = %12
  %21 = load i32, ptr %3, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %71, label %23, !prof !11

23:                                               ; preds = %20
  %24 = icmp sgt i32 %14, 3
  br i1 %24, label %73, label %25

25:                                               ; preds = %23
  %26 = trunc i32 %21 to i16
  %27 = and i16 %26, 1
  %28 = xor i16 %27, 1
  %29 = getelementptr inbounds %struct.fimc_source_info, ptr %15, i32 0, i32 3
  store i16 %28, ptr %29, align 2
  %30 = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %13) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %8, ptr noundef nonnull %13) #13
  call void @of_node_put(ptr noundef nonnull %13) #12
  br label %74

34:                                               ; preds = %25
  %35 = load i32, ptr %3, align 4
  %36 = add i32 %35, -1
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32, ptr %9, align 4
  %40 = icmp eq i32 %39, 1
  %41 = select i1 %40, i32 1, i32 2
  %42 = getelementptr inbounds %struct.fimc_source_info, ptr %15, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = load i32, ptr %10, align 4
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds %struct.fimc_source_info, ptr %15, i32 0, i32 2
  store i16 %44, ptr %45, align 4
  br label %53

46:                                               ; preds = %34
  %47 = add i32 %35, -3
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.fimc_source_info, ptr %15, i32 0, i32 1
  store i32 3, ptr %50, align 4
  br label %53

51:                                               ; preds = %46
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %8, i32 noundef %35, ptr noundef nonnull %30) #13
  br label %53

53:                                               ; preds = %51, %49, %38
  %54 = call ptr @of_get_parent(ptr noundef nonnull %30) #12
  call void @of_node_put(ptr noundef nonnull %30) #12
  %55 = call zeroext i1 @of_node_name_eq(ptr noundef %54, ptr noundef nonnull @.str.28) #12
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.fimc_source_info, ptr %15, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i32 [ %58, %56 ], [ 5, %53 ]
  store i32 %60, ptr %15, align 4
  call void @of_node_put(ptr noundef %54) #12
  %61 = icmp ugt i32 %14, 3
  br i1 %61, label %71, label %62, !prof !11

62:                                               ; preds = %59
  %63 = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %11, ptr noundef %16, i32 noundef 28) #12
  call void @of_node_put(ptr noundef nonnull %13) #12
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = ptrtoint ptr %63 to i32
  br label %75

67:                                               ; preds = %62
  %68 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 1, i32 %14, i32 1
  store ptr %63, ptr %68, align 4
  %69 = load i32, ptr %7, align 8
  %70 = add i32 %69, 1
  store i32 %70, ptr %7, align 8
  br label %74

71:                                               ; preds = %59, %20
  %72 = phi i32 [ 414, %20 ], [ 462, %59 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef %72, i32 noundef 9, ptr noundef null) #12
  br label %73

73:                                               ; preds = %71, %23
  call void @of_node_put(ptr noundef nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  br label %78

74:                                               ; preds = %67, %32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  br label %80

75:                                               ; preds = %65, %19
  %76 = phi i32 [ %17, %19 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75, %73
  %79 = phi i32 [ -22, %73 ], [ %76, %75 ]
  call void @of_node_put(ptr noundef nonnull %13) #12
  br label %83

80:                                               ; preds = %75, %74
  %81 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %13) #12
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %12

83:                                               ; preds = %80, %78, %2
  %84 = phi i32 [ %79, %78 ], [ 0, %2 ], [ 0, %80 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subdev_conf_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fimc_md, ptr %5, i32 0, i32 15
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr @.str.31, ptr @.str.30
  %10 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull %9, i32 noundef 4096) #12
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subdev_conf_mode_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef returned %3) #8 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(9) @.str.32)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(9) @.str.33)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %9, %4
  %13 = xor i1 %8, true
  %14 = getelementptr inbounds %struct.fimc_md, ptr %6, i32 0, i32 15
  %15 = zext i1 %13 to i8
  store i8 %15, ptr %14, align 4
  %16 = getelementptr %struct.fimc_md, ptr %6, i32 0, i32 6, i32 0
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.fimc_dev, ptr %17, i32 0, i32 13, i32 17
  store i8 %15, ptr %20, align 8
  br label %21

21:                                               ; preds = %19, %12
  %22 = getelementptr %struct.fimc_md, ptr %6, i32 0, i32 6, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.fimc_dev, ptr %23, i32 0, i32 13, i32 17
  store i8 %15, ptr %26, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr %struct.fimc_md, ptr %6, i32 0, i32 6, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.fimc_dev, ptr %29, i32 0, i32 13, i32 17
  store i8 %15, ptr %32, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr %struct.fimc_md, ptr %6, i32 0, i32 6, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.fimc_dev, ptr %35, i32 0, i32 13, i32 17
  store i8 %15, ptr %38, align 8
  br label %39

39:                                               ; preds = %37, %33, %9
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cam_clk_prepare(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.cam_clk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_md, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %5, i32 noundef 4) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #12, !srcloc !13
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #12, !srcloc !14
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  br label %16

16:                                               ; preds = %15, %10, %7, %1
  %17 = phi i32 [ -19, %1 ], [ 0, %7 ], [ %8, %10 ], [ %8, %15 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cam_clk_unprepare(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.cam_clk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_md, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %5, i32 noundef 4) #12
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subdev_notifier_bound(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 14
  %5 = getelementptr i8, ptr %0, i32 -736
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -748
  %10 = getelementptr inbounds %struct.v4l2_async_subdev, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 3
  %17 = select i1 %15, ptr null, ptr %16
  %18 = icmp eq ptr %11, %17
  %19 = select i1 %18, ptr %9, ptr null
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi ptr [ null, %3 ], [ %19, %8 ]
  %22 = getelementptr i8, ptr %0, i32 -712
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 -724
  %27 = getelementptr inbounds %struct.v4l2_async_subdev, ptr %23, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %struct.device_node, ptr %31, i32 0, i32 3
  %34 = select i1 %32, ptr null, ptr %33
  %35 = icmp eq ptr %28, %34
  %36 = select i1 %35, ptr %26, ptr %21
  br label %37

37:                                               ; preds = %25, %20
  %38 = phi ptr [ %21, %20 ], [ %36, %25 ]
  %39 = getelementptr i8, ptr %0, i32 -688
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %0, i32 -700
  %44 = getelementptr inbounds %struct.v4l2_async_subdev, ptr %40, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 25
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  %50 = getelementptr inbounds %struct.device_node, ptr %48, i32 0, i32 3
  %51 = select i1 %49, ptr null, ptr %50
  %52 = icmp eq ptr %45, %51
  %53 = select i1 %52, ptr %43, ptr %38
  br label %54

54:                                               ; preds = %42, %37
  %55 = phi ptr [ %38, %37 ], [ %53, %42 ]
  %56 = getelementptr i8, ptr %0, i32 -664
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = getelementptr i8, ptr %0, i32 -676
  %61 = getelementptr inbounds %struct.v4l2_async_subdev, ptr %57, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 25
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.device_node, ptr %65, i32 0, i32 3
  %68 = select i1 %66, ptr null, ptr %67
  %69 = icmp eq ptr %62, %68
  %70 = select i1 %69, ptr %60, ptr %55
  br label %71

71:                                               ; preds = %59, %54
  %72 = phi ptr [ %55, %54 ], [ %70, %59 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %88, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 12
  store ptr %72, ptr %75, align 4
  %76 = load i32, ptr %72, align 4
  %77 = icmp eq i32 %76, 5
  %78 = select i1 %77, i32 512, i32 256
  %79 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 10
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.fimc_sensor_info, ptr %72, i32 0, i32 2
  store ptr %1, ptr %80, align 4
  %81 = getelementptr i8, ptr %0, i32 -128
  %82 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 9
  %83 = getelementptr i8, ptr %0, i32 -652
  %84 = load i32, ptr %83, align 8
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %81, ptr noundef %82, i32 noundef %84) #13
  %86 = load i32, ptr %83, align 8
  %87 = add i32 %86, 1
  store i32 %87, ptr %83, align 8
  br label %88

88:                                               ; preds = %74, %71
  %89 = phi i32 [ 0, %74 ], [ -22, %71 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subdev_notifier_complete(ptr noundef %0) #3 {
  %2 = alloca [2 x ptr], align 8
  %3 = getelementptr i8, ptr %0, i32 -764
  %4 = getelementptr i8, ptr %0, i32 -572
  %5 = getelementptr i8, ptr %0, i32 -352
  tail call void @mutex_lock(ptr noundef %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8
  %6 = getelementptr i8, ptr %0, i32 -652
  %7 = load i32, ptr %6, align 8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -128
  br label %15

11:                                               ; preds = %60, %1
  %12 = phi i32 [ 0, %1 ], [ %61, %60 ]
  %13 = load ptr, ptr %3, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %69, label %65

15:                                               ; preds = %60, %9
  %16 = phi i32 [ 0, %9 ], [ %61, %60 ]
  %17 = phi i32 [ 0, %9 ], [ %62, %60 ]
  %18 = getelementptr %struct.fimc_md, ptr %3, i32 0, i32 1, i32 %17, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %60, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %60, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.fimc_source_info, ptr %23, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %55 [
    i32 3, label %28
    i32 1, label %57
    i32 2, label %57
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.fimc_source_info, ptr %23, i32 0, i32 3
  %30 = load i16, ptr %29, align 2
  %31 = icmp ugt i16 %30, 1
  %32 = zext i16 %30 to i32
  br i1 %31, label %33, label %35, !prof !11

33:                                               ; preds = %28
  %34 = zext i16 %30 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 981, i32 noundef 9, ptr noundef nonnull @.str.38, i32 noundef %34) #12
  br label %186

35:                                               ; preds = %28
  %36 = getelementptr [2 x %struct.fimc_csis_info], ptr %3, i32 0, i32 %32
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40, !prof !11

39:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 986, i32 noundef 9, ptr noundef nonnull @.str.39) #12
  br label %186

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.media_entity, ptr %19, i32 0, i32 5
  %42 = load i16, ptr %41, align 4
  %43 = add i16 %42, -1
  %44 = tail call i32 @media_create_pad_link(ptr noundef nonnull %19, i16 noundef zeroext %43, ptr noundef nonnull %37, i16 noundef zeroext 0, i32 noundef 3) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %189

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.media_entity, ptr %19, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.media_entity, ptr %37, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %10, ptr noundef %48, ptr noundef %50) #13
  %52 = load i16, ptr %29, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr [2 x ptr], ptr %2, i32 0, i32 %53
  store ptr %19, ptr %54, align 4
  br label %60

55:                                               ; preds = %25
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %10, i32 noundef %27) #13
  br label %186

57:                                               ; preds = %25, %25
  %58 = add i32 %16, 1
  %59 = shl nuw i32 1, %16
  tail call fastcc void @__fimc_md_create_fimc_sink_links(ptr noundef %3, ptr noundef nonnull %19, ptr noundef nonnull %19, i32 noundef 0, i32 noundef %59) #12
  br label %60

60:                                               ; preds = %57, %46, %21, %15
  %61 = phi i32 [ %16, %15 ], [ %58, %57 ], [ %16, %21 ], [ %16, %46 ]
  %62 = add nuw nsw i32 %17, 1
  %63 = load i32, ptr %6, align 8
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %15, label %11

65:                                               ; preds = %11
  %66 = load ptr, ptr %2, align 8
  %67 = add i32 %12, 1
  %68 = shl nuw i32 1, %12
  tail call fastcc void @__fimc_md_create_fimc_sink_links(ptr noundef %3, ptr noundef nonnull %13, ptr noundef %66, i32 noundef 1, i32 noundef %68) #12
  br label %69

69:                                               ; preds = %65, %11
  %70 = phi i32 [ %12, %11 ], [ %67, %65 ]
  %71 = getelementptr i8, ptr %0, i32 -756
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds [2 x ptr], ptr %2, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = shl nuw i32 1, %70
  tail call fastcc void @__fimc_md_create_fimc_sink_links(ptr noundef %3, ptr noundef nonnull %72, ptr noundef %76, i32 noundef 1, i32 noundef %77) #12
  br label %78

78:                                               ; preds = %74, %69
  br label %79

79:                                               ; preds = %93, %78
  %80 = phi i32 [ %94, %93 ], [ 0, %78 ]
  %81 = getelementptr %struct.fimc_md, ptr %3, i32 0, i32 6, i32 %80
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.fimc_dev, ptr %82, i32 0, i32 13, i32 1
  %86 = getelementptr inbounds %struct.fimc_dev, ptr %82, i32 0, i32 13, i32 2
  %87 = tail call i32 @media_create_pad_link(ptr noundef %85, i16 noundef zeroext 2, ptr noundef %86, i16 noundef zeroext 0, i32 noundef 3) #12
  %88 = icmp eq i32 %87, 0
  %89 = icmp ult i32 %80, 3
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %93, label %95

91:                                               ; preds = %79
  %92 = icmp ult i32 %80, 3
  br i1 %92, label %93, label %95

93:                                               ; preds = %91, %84
  %94 = add nuw nsw i32 %80, 1
  br label %79

95:                                               ; preds = %91, %84
  %96 = getelementptr i8, ptr %0, i32 -588
  %97 = getelementptr i8, ptr %0, i32 -616
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.fimc_lite, ptr %98, i32 0, i32 5
  %102 = getelementptr inbounds %struct.fimc_lite, ptr %98, i32 0, i32 2
  %103 = tail call i32 @media_create_pad_link(ptr noundef %101, i16 noundef zeroext 1, ptr noundef %102, i16 noundef zeroext 0, i32 noundef 0) #12
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %138

105:                                              ; preds = %100
  %106 = load ptr, ptr %96, align 8
  %107 = getelementptr inbounds %struct.fimc_is, ptr %106, i32 0, i32 5, i32 1
  %108 = tail call i32 @media_create_pad_link(ptr noundef %101, i16 noundef zeroext 2, ptr noundef %107, i16 noundef zeroext 0, i32 noundef 0) #12
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %105, %95
  %111 = getelementptr i8, ptr %0, i32 -612
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %124, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.fimc_lite, ptr %112, i32 0, i32 5
  %116 = getelementptr inbounds %struct.fimc_lite, ptr %112, i32 0, i32 2
  %117 = tail call i32 @media_create_pad_link(ptr noundef %115, i16 noundef zeroext 1, ptr noundef %116, i16 noundef zeroext 0, i32 noundef 0) #12
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %138

119:                                              ; preds = %114
  %120 = load ptr, ptr %96, align 8
  %121 = getelementptr inbounds %struct.fimc_is, ptr %120, i32 0, i32 5, i32 1
  %122 = tail call i32 @media_create_pad_link(ptr noundef %115, i16 noundef zeroext 2, ptr noundef %121, i16 noundef zeroext 0, i32 noundef 0) #12
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %119, %110
  %125 = getelementptr i8, ptr %0, i32 -608
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %141, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.fimc_lite, ptr %126, i32 0, i32 5
  %130 = getelementptr inbounds %struct.fimc_lite, ptr %126, i32 0, i32 2
  %131 = tail call i32 @media_create_pad_link(ptr noundef %129, i16 noundef zeroext 1, ptr noundef %130, i16 noundef zeroext 0, i32 noundef 0) #12
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load ptr, ptr %96, align 8
  %135 = getelementptr inbounds %struct.fimc_is, ptr %134, i32 0, i32 5, i32 1
  %136 = tail call i32 @media_create_pad_link(ptr noundef %129, i16 noundef zeroext 2, ptr noundef %135, i16 noundef zeroext 0, i32 noundef 0) #12
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133, %128, %119, %114, %105, %100
  %139 = phi i32 [ %108, %105 ], [ %103, %100 ], [ %117, %114 ], [ %122, %119 ], [ %131, %128 ], [ %136, %133 ]
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %186, label %141

141:                                              ; preds = %138, %133, %124
  %142 = getelementptr i8, ptr %0, i32 -584
  %143 = load i8, ptr %142, align 4, !range !9
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %188, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr %96, align 8
  %147 = getelementptr inbounds %struct.fimc_is, ptr %146, i32 0, i32 5, i32 1
  %148 = getelementptr i8, ptr %0, i32 -604
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.fimc_dev, ptr %149, i32 0, i32 13, i32 1
  %153 = tail call i32 @media_create_pad_link(ptr noundef %147, i16 noundef zeroext 1, ptr noundef %152, i16 noundef zeroext 1, i32 noundef 0) #12
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %189

155:                                              ; preds = %151, %145
  %156 = getelementptr i8, ptr %0, i32 -600
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.fimc_dev, ptr %157, i32 0, i32 13, i32 1
  %161 = tail call i32 @media_create_pad_link(ptr noundef %147, i16 noundef zeroext 1, ptr noundef %160, i16 noundef zeroext 1, i32 noundef 0) #12
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %189

163:                                              ; preds = %159, %155
  %164 = getelementptr i8, ptr %0, i32 -596
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.fimc_dev, ptr %165, i32 0, i32 13, i32 1
  %169 = tail call i32 @media_create_pad_link(ptr noundef %147, i16 noundef zeroext 1, ptr noundef %168, i16 noundef zeroext 1, i32 noundef 0) #12
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %167, %163
  %172 = getelementptr i8, ptr %0, i32 -592
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.fimc_dev, ptr %173, i32 0, i32 13, i32 1
  %177 = tail call i32 @media_create_pad_link(ptr noundef %147, i16 noundef zeroext 1, ptr noundef %176, i16 noundef zeroext 1, i32 noundef 0) #12
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %175, %171
  %180 = getelementptr inbounds %struct.fimc_is, ptr %146, i32 0, i32 5, i32 12, i32 0, i32 0, i32 0, i32 5
  %181 = load i16, ptr %180, align 4
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.fimc_is, ptr %146, i32 0, i32 5, i32 12
  %185 = tail call i32 @media_create_pad_link(ptr noundef %147, i16 noundef zeroext 2, ptr noundef %184, i16 noundef zeroext 0, i32 noundef 0) #12
  br label %189

186:                                              ; preds = %138, %55, %39, %33
  %187 = phi i32 [ %139, %138 ], [ -22, %39 ], [ -22, %33 ], [ -22, %55 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %192

188:                                              ; preds = %179, %141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %194

189:                                              ; preds = %183, %175, %167, %159, %151, %40
  %190 = phi i32 [ %185, %183 ], [ %153, %151 ], [ %161, %159 ], [ %169, %167 ], [ %177, %175 ], [ %44, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189, %186
  %193 = phi i32 [ %187, %186 ], [ %190, %189 ]
  tail call void @mutex_unlock(ptr noundef %5) #12
  br label %200

194:                                              ; preds = %189, %188
  %195 = getelementptr i8, ptr %0, i32 -148
  %196 = tail call i32 @__v4l2_device_register_subdev_nodes(ptr noundef %195, i1 noundef zeroext false) #12
  tail call void @mutex_unlock(ptr noundef %5) #12
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %194
  %199 = tail call i32 @__media_device_register(ptr noundef %4, ptr noundef nonnull @__this_module) #12
  br label %200

200:                                              ; preds = %198, %194, %192
  %201 = phi i32 [ %199, %198 ], [ %196, %194 ], [ %193, %192 ]
  ret i32 %201
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__fimc_md_create_fimc_sink_links(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.v4l2_subdev, ptr %2, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 4
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = trunc i32 %3 to i16
  br label %65

16:                                               ; preds = %11, %7, %5
  %17 = trunc i32 %3 to i16
  %18 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 9
  %19 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 11, i32 4
  %20 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 1
  br label %21

21:                                               ; preds = %62, %16
  %22 = phi i32 [ 0, %16 ], [ %63, %62 ]
  %23 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 6, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %62, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.fimc_dev, ptr %24, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %26
  %33 = shl nuw nsw i32 1, %22
  %34 = and i32 %33, %4
  %35 = icmp eq i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = getelementptr inbounds %struct.fimc_dev, ptr %24, i32 0, i32 13, i32 1
  %39 = tail call i32 @media_create_pad_link(ptr noundef %1, i16 noundef zeroext %17, ptr noundef %38, i16 noundef zeroext 0, i32 noundef %37) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %153

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.fimc_dev, ptr %24, i32 0, i32 13, i32 1, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.media_entity_operations, ptr %43, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.fimc_dev, ptr %24, i32 0, i32 13, i32 1, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %18, align 4
  %53 = getelementptr %struct.media_pad, ptr %52, i32 %3
  %54 = tail call i32 %47(ptr noundef %38, ptr noundef %51, ptr noundef %53, i32 noundef %37) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load ptr, ptr %20, align 4
  %58 = select i1 %35, i32 45, i32 61
  %59 = getelementptr inbounds %struct.fimc_dev, ptr %24, i32 0, i32 13, i32 1, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %19, ptr noundef %57, i32 noundef %58, ptr noundef %60) #13
  br label %62

62:                                               ; preds = %56, %26, %21
  %63 = add nuw nsw i32 %22, 1
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %21

65:                                               ; preds = %62, %49, %45, %41, %14
  %66 = phi i16 [ %15, %14 ], [ %17, %41 ], [ %17, %45 ], [ %17, %49 ], [ %17, %62 ]
  %67 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 9
  %68 = getelementptr inbounds %struct.fimc_md, ptr %0, i32 0, i32 11, i32 4
  %69 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 1
  %70 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 5, i32 0
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %97, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.fimc_lite, ptr %71, i32 0, i32 5
  %75 = tail call i32 @media_create_pad_link(ptr noundef %1, i16 noundef zeroext %66, ptr noundef %74, i16 noundef zeroext 0, i32 noundef 0) #12
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %153

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.fimc_lite, ptr %71, i32 0, i32 5, i32 0, i32 11
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %153, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.media_entity_operations, ptr %79, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %153, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.fimc_lite, ptr %71, i32 0, i32 5, i32 0, i32 9
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %67, align 4
  %89 = getelementptr %struct.media_pad, ptr %88, i32 %3
  %90 = tail call i32 %83(ptr noundef %74, ptr noundef %87, ptr noundef %89, i32 noundef 0) #12
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %153

92:                                               ; preds = %85
  %93 = load ptr, ptr %69, align 4
  %94 = getelementptr inbounds %struct.fimc_lite, ptr %71, i32 0, i32 5, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %68, ptr noundef %93, ptr noundef %95) #13
  br label %97

97:                                               ; preds = %92, %65
  %98 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 5, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %125, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.fimc_lite, ptr %99, i32 0, i32 5
  %103 = tail call i32 @media_create_pad_link(ptr noundef %1, i16 noundef zeroext %66, ptr noundef %102, i16 noundef zeroext 0, i32 noundef 0) #12
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %153

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.fimc_lite, ptr %99, i32 0, i32 5, i32 0, i32 11
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %153, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.media_entity_operations, ptr %107, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %153, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.fimc_lite, ptr %99, i32 0, i32 5, i32 0, i32 9
  %115 = load ptr, ptr %114, align 4
  %116 = load ptr, ptr %67, align 4
  %117 = getelementptr %struct.media_pad, ptr %116, i32 %3
  %118 = tail call i32 %111(ptr noundef %102, ptr noundef %115, ptr noundef %117, i32 noundef 0) #12
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %153

120:                                              ; preds = %113
  %121 = load ptr, ptr %69, align 4
  %122 = getelementptr inbounds %struct.fimc_lite, ptr %99, i32 0, i32 5, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %68, ptr noundef %121, ptr noundef %123) #13
  br label %125

125:                                              ; preds = %120, %97
  %126 = getelementptr %struct.fimc_md, ptr %0, i32 0, i32 5, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %153, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.fimc_lite, ptr %127, i32 0, i32 5
  %131 = tail call i32 @media_create_pad_link(ptr noundef %1, i16 noundef zeroext %66, ptr noundef %130, i16 noundef zeroext 0, i32 noundef 0) #12
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.fimc_lite, ptr %127, i32 0, i32 5, i32 0, i32 11
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %153, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.media_entity_operations, ptr %135, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %153, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.fimc_lite, ptr %127, i32 0, i32 5, i32 0, i32 9
  %143 = load ptr, ptr %142, align 4
  %144 = load ptr, ptr %67, align 4
  %145 = getelementptr %struct.media_pad, ptr %144, i32 %3
  %146 = tail call i32 %139(ptr noundef %130, ptr noundef %143, ptr noundef %145, i32 noundef 0) #12
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load ptr, ptr %69, align 4
  %150 = getelementptr inbounds %struct.fimc_lite, ptr %127, i32 0, i32 5, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %68, ptr noundef %149, ptr noundef %151) #13
  br label %153

153:                                              ; preds = %148, %141, %137, %133, %129, %125, %113, %109, %105, %101, %85, %81, %77, %73, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_device_register_subdev_nodes(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_unregister_driver() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148070548}
!13 = !{i64 569655, i64 2148059626, i64 2148059652, i64 2148059699, i64 2148059721, i64 2148059749, i64 2148059769}
!14 = !{i64 556224, i64 556249, i64 556271, i64 556287, i64 556299, i64 556319, i64 556343, i64 556359, i64 556371}
!15 = !{i64 2148070674}
