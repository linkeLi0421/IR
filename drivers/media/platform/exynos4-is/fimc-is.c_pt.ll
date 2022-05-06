; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/fimc-is.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-is.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fimc_is = type { ptr, ptr, ptr, %struct.fimc_is_firmware, %struct.fimc_is_memory, %struct.fimc_isp, [2 x %struct.fimc_is_sensor], %struct.fimc_is_setfile, %struct.v4l2_ctrl_handler, %struct.mutex, %struct.spinlock, [21 x ptr], ptr, ptr, i32, %struct.wait_queue_head, i8, i32, i32, %struct.i2h_cmd, %struct.h2i_cmd, %struct.is_fd_result_header, [4 x %struct.chain_config], i32, ptr, i32, ptr, %struct.is_af_info, ptr }
%struct.fimc_is_firmware = type { ptr, i32, ptr, i32, [32 x i8], [8 x i8], [40 x i8], i8 }
%struct.fimc_is_memory = type { i32, ptr, i32 }
%struct.fimc_isp = type { ptr, %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, ptr, %struct.fimc_isp_ctrls, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fimc_is_video }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.77, i16, i16, i16, [10 x i16] }
%union.anon.77 = type { i16 }
%struct.fimc_isp_ctrls = type { %struct.v4l2_ctrl_handler, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.81 = type { ptr, ptr }
%struct.fimc_is_video = type { %struct.exynos_video_entity, i32, %struct.media_pad, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i32, [4 x ptr], ptr, %struct.v4l2_pix_format_mplane }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.82, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.82 = type { i8 }
%struct.fimc_is_sensor = type { ptr, i32, i8 }
%struct.fimc_is_setfile = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.is_region = type { %struct.is_param_region, %struct.is_tune_region, [8 x %struct.is_frame_header], [16 x %struct.is_face_marker], [500 x i32] }
%struct.is_param_region = type { %struct.global_param, %struct.sensor_param, %struct.buffer_param, %struct.isp_param, %struct.drc_param, %struct.scalerc_param, %struct.odc_param, %struct.dis_param, %struct.tdnr_param, %struct.scalerp_param, %struct.fd_param }
%struct.buffer_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_otf_output }
%struct.scalerc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_scaler_imageeffect, %struct.param_scaler_input_crop, %struct.param_scaler_output_crop, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_scaler_imageeffect = type { i32, i32, i32, [12 x i32], i32 }
%struct.param_scaler_input_crop = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_scaler_output_crop = type { i32, i32, i32, i32, i32, i32, [9 x i32], i32 }
%struct.odc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_otf_output }
%struct.dis_param = type { %struct.param_control, %struct.param_otf_output, %struct.param_otf_output }
%struct.tdnr_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_3dnr_1stframe, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_3dnr_1stframe = type { i32, [14 x i32], i32 }
%struct.scalerp_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_scaler_imageeffect, %struct.param_scaler_input_crop, %struct.param_scaler_output_crop, %struct.param_scaler_rotation, %struct.param_scaler_flip, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_scaler_rotation = type { i32, [14 x i32], i32 }
%struct.param_scaler_flip = type { i32, [14 x i32], i32 }
%struct.is_tune_region = type { %struct.is_tune_sensor, %struct.is_tune_isp }
%struct.is_tune_sensor = type { i32, i32, i32, i32 }
%struct.is_tune_isp = type { i32, i32, i32, i32, [4 x %struct.is_tune_gammacurve], i32, i32, i32, i32, i32 }
%struct.is_tune_gammacurve = type { [32 x i32], [32 x i32], [32 x i32], [32 x i32] }
%struct.is_frame_header = type { i32, i32, i32, i32, %struct.exif_attribute }
%struct.exif_attribute = type { %struct.rational, %struct.srational, i32, i32, %struct.srational }
%struct.rational = type { i32, i32 }
%struct.srational = type { i32, i32 }
%struct.is_face_marker = type { i32, %struct.is_fd_rect, %struct.is_fd_rect, %struct.is_fd_rect, %struct.is_fd_rect, i32, i32, i32, i32, i32 }
%struct.is_fd_rect = type { i32, i32, i32, i32 }
%struct.sensor_drv_data = type { i32, i16 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.83, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.84, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.85, ptr, %struct.address_space, %struct.list_head, %union.anon.86, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.84 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.85 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.86 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.is_share_region = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [600 x %struct.is_debug_frame_descriptor], i32, i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8] }
%struct.is_debug_frame_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = private unnamed_addr constant [44 x i8] c"drivers/media/platform/exynos4-is/fimc-is.c\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s %s: %s() timed out\0A\00", align 1
@__func__.fimc_is_wait_event = private unnamed_addr constant [19 x i8] c"fimc_is_wait_event\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"firmware is not loaded\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"FIMC-IS CPU power on failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"get setfile address timed out\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"exynos4_s5k6a3_setfile.bin\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"loading setfile timed out\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\016%s:%d FIMC-IS Setfile info: %s\0A\00", align 1
@__func__.fimc_is_hw_initialize = private unnamed_addr constant [22 x i8] c"fimc_is_hw_initialize\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"magic number error!\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"stream off timeout\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"initialization sequence completed (%d)\0A\00", align 1
@fimc_is_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-fimc-is\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias258 = internal constant [31 x i8] c"alias=platform:exynos4-fimc-is\00", section ".modinfo", align 1
@__UNIQUE_ID_author259 = internal constant [45 x i8] c"author=Younghwan Joo <yhwan.joo@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [51 x i8] c"author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"firmware request failed (%d)\0A\00", align 1
@fimc_is_driver = internal global %struct.platform_driver { ptr @fimc_is_probe, ptr @fimc_is_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fimc_is_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_is_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.12 = private unnamed_addr constant [16 x i8] c"exynos4-fimc-is\00", align 1
@fimc_is_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @fimc_is_suspend, ptr @fimc_is_resume, ptr @fimc_is_suspend, ptr @fimc_is_resume, ptr @fimc_is_suspend, ptr @fimc_is_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_is_runtime_suspend, ptr @fimc_is_runtime_resume, ptr null }, align 4
@fimc_is_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"&is->irq_queue\00", align 1
@fimc_is_probe.__key.14 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"&is->lock\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"pmu\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"no irq found\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"irq request failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"exynos4_fimc_is_fw.bin\00", align 1
@fimc_is_clocks = internal unnamed_addr constant [21 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], align 4
@.str.20 = private unnamed_addr constant [25 x i8] c"failed to get clock: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"ppmuispx\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"ppmuispmx\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"lite0\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"lite1\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"mpll\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"isp\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"drc\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"mcuisp\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"gicisp\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"pwm_isp\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"mcuctl_isp\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"ispdiv0\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"ispdiv1\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"mcuispdiv0\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"mcuispdiv1\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"aclk200\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"div_aclk200\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"aclk400mcuisp\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"div_aclk400mcuisp\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"\016%s:%d unknown command: %#x\0A\00", align 1
@__func__.fimc_is_general_irq_handler = private unnamed_addr constant [28 x i8] c"fimc_is_general_irq_handler\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"\013%s:%d ISR_NDONE: %d: %#x, %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"\013%s:%d IS_ERROR_TIME_OUT\0A\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"\013%s:%d IS control sequence error: Not Ready\0A\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"clock %s enable failed\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"samsung,exynos4212-i2c-isp\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"no driver data found for: %pOF\0A\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"reg property not found at: %pOF\0A\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"fimc_is\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"fw_log\00", align 1
@fimc_is_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fimc_is_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.53 = private unnamed_addr constant [36 x i8] c"firmware memory is not initialized\0A\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"firmware request failed\0A\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"wrong firmware size: %zu\0A\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"failed to allocate FIMC-IS CPU memory\0A\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"loaded firmware: %s, rev. %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [31 x i8] c"FIMC-IS CPU memory base: %pad\0A\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"invalid firmware memory alignment: %#x\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias258, ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_license261], section "llvm.metadata"

@__mod_of__fimc_is_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @fimc_is_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_is_cpu_set_power(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 1507328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #9, !srcloc !8
  %8 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr i8, ptr %10, i32 1572868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #9, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %12 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 8840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 98304) #9, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr i8, ptr %15, i32 8832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #9, !srcloc !8
  br label %39

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 8840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 65536) #9, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %21, i32 8832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 0) #9, !srcloc !8
  %23 = load ptr, ptr %18, align 4
  %24 = getelementptr i8, ptr %23, i32 8836
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %31, %17
  %29 = phi i32 [ %32, %31 ], [ 1000, %17 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = add nsw i32 %29, -1
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #9
  %34 = load ptr, ptr %18, align 4
  %35 = getelementptr i8, ptr %34, i32 8836
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %28

39:                                               ; preds = %31, %28, %17, %4
  %40 = phi i32 [ 0, %4 ], [ 0, %17 ], [ -62, %28 ], [ 0, %31 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_is_wait_event(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = icmp eq i32 %2, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 17
  %9 = lshr i32 %1, 5
  %10 = getelementptr i32, ptr %8, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %1, 31
  %13 = lshr i32 %11, %12
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, %7
  %16 = icmp eq i32 %3, 0
  %17 = and i1 %16, %15
  %18 = select i1 %17, i32 1, i32 %3
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %15, i1 true, i1 %19
  br i1 %20, label %48, label %21

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #9
  %22 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 15
  %23 = call i32 @prepare_to_wait_event(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 2) #9
  %24 = load volatile i32, ptr %10, align 4
  %25 = lshr i32 %24, %12
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, %7
  %28 = and i1 %27, %16
  %29 = select i1 %28, i32 1, i32 %3
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %27, i1 true, i1 %30
  br i1 %31, label %46, label %32

32:                                               ; preds = %32, %21
  %33 = phi i32 [ %43, %32 ], [ %29, %21 ]
  %34 = call i32 @schedule_timeout(i32 noundef %33) #9
  %35 = call i32 @prepare_to_wait_event(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 2) #9
  %36 = load volatile i32, ptr %10, align 4
  %37 = lshr i32 %36, %12
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, %7
  %40 = xor i1 %39, true
  %41 = icmp ne i32 %34, 0
  %42 = select i1 %40, i1 true, i1 %41
  %43 = select i1 %42, i32 %34, i32 1
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %39, i1 true, i1 %44
  br i1 %45, label %46, label %32

46:                                               ; preds = %32, %21
  %47 = phi i32 [ %29, %21 ], [ %43, %32 ]
  call void @finish_wait(ptr noundef %22, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  br label %48

48:                                               ; preds = %46, %4
  %49 = phi i32 [ %18, %4 ], [ %47, %46 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  %54 = call ptr @dev_driver_string(ptr noundef %53) #9
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %51
  %63 = phi ptr [ %61, %59 ], [ %57, %51 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 301, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %54, ptr noundef %63, ptr noundef nonnull @__func__.fimc_is_wait_event) #9
  br label %64

64:                                               ; preds = %62, %48
  %65 = phi i32 [ -62, %62 ], [ 0, %48 ]
  ret i32 %65
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_is_start_firmware(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %4 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 4, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %9, ptr align 1 %11, i32 %12, i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %13 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 12
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 1507328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !8
  %16 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %18 = load ptr, ptr %13, align 8
  %19 = getelementptr i8, ptr %18, i32 1572868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %20 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 13
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 8840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 98304) #9, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !10
  tail call void @arm_heavy_mb() #9
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr i8, ptr %23, i32 8832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 1) #9, !srcloc !8
  %25 = tail call i32 @fimc_is_wait_event(ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 100)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %7, %1
  %28 = phi ptr [ @.str.2, %1 ], [ @.str.3, %7 ]
  %29 = phi i32 [ -22, %1 ], [ %25, %7 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %28) #10
  br label %30

30:                                               ; preds = %27, %7
  %31 = phi i32 [ %25, %7 ], [ %29, %27 ]
  ret i32 %31
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_is_hw_initialize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.is_region, ptr %7, i32 0, i32 4
  %9 = tail call i32 @fimc_is_hw_wait_intmsr0_intmsd0(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.is_region, ptr %7, i32 0, i32 4, i32 5
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.is_region, ptr %7, i32 0, i32 4, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %8, i8 0, i64 20, i1 false) #9
  store i32 88000000, ptr %11, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %13 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 12
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 1572992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 12) #9, !srcloc !8
  %16 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 18
  %17 = load i32, ptr %16, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %18 = load ptr, ptr %13, align 8
  %19 = getelementptr i8, ptr %18, i32 1572996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !8
  %20 = load ptr, ptr %5, align 4
  %21 = load i32, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %22 = load ptr, ptr %13, align 8
  %23 = getelementptr i8, ptr %22, i32 1573000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #9, !srcloc !8
  %24 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 6, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %26 = load ptr, ptr %13, align 8
  %27 = getelementptr i8, ptr %26, i32 1573004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !8
  %28 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 25
  %29 = load i32, ptr %28, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !9
  tail call void @arm_heavy_mb() #9
  %30 = load ptr, ptr %13, align 8
  %31 = getelementptr i8, ptr %30, i32 1573008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #9, !srcloc !8
  tail call void @fimc_is_hw_set_intgr0_gd0(ptr noundef %0) #9
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr inbounds %struct.sensor_drv_data, ptr %32, i32 0, i32 1
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = tail call i32 @fimc_is_wait_event(ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef %35) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %107, label %38

38:                                               ; preds = %1
  tail call void @fimc_is_hw_get_setfile_addr(ptr noundef %0) #9
  %39 = tail call i32 @fimc_is_wait_event(ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 3000)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #10
  br label %107

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !13
  %43 = load ptr, ptr %0, align 8
  %44 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  %45 = call i32 @request_firmware(ptr noundef nonnull %2, ptr noundef nonnull @.str.5, ptr noundef %44) #9
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.11, i32 noundef %45) #10
  br label %71

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 4, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 7, i32 4
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr i8, ptr %52, i32 %54
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr inbounds %struct.firmware, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %56, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %55, ptr align 1 %58, i32 %59, i1 false) #9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %60 = load ptr, ptr %2, align 4
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 7, i32 2
  store i32 %61, ptr %62, align 8
  %63 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 3, i32 6
  %64 = getelementptr inbounds %struct.firmware, ptr %60, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = load i32, ptr %60, align 4
  %67 = getelementptr i8, ptr %65, i32 %66
  %68 = getelementptr i8, ptr %67, i32 -39
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(38) %63, ptr noundef align 1 dereferenceable(38) %68, i32 38, i1 false) #9
  %69 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 3, i32 6, i32 38
  store i8 0, ptr %69, align 2
  %70 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 7, i32 1
  store i32 1, ptr %70, align 4
  call void @release_firmware(ptr noundef %60) #9
  br label %71

71:                                               ; preds = %50, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %72 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 17
  call void @_clear_bit(i32 noundef 5, ptr noundef %72) #9
  call void @fimc_is_hw_load_setfile(ptr noundef %0) #9
  %73 = call i32 @fimc_is_wait_event(ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef 3000)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #10
  br label %107

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 3, i32 6
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.fimc_is_hw_initialize, i32 noundef 691, ptr noundef %77) #10
  %79 = load ptr, ptr %6, align 4
  %80 = getelementptr %struct.is_region, ptr %79, i32 0, i32 4, i32 499
  %81 = load i32, ptr %80, align 1
  %82 = icmp eq i32 %81, 16909060
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #10
  br label %107

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 7, i32 3
  store i32 0, ptr %85, align 4
  call void @fimc_is_hw_stream_off(ptr noundef %0) #9
  %86 = call i32 @fimc_is_wait_event(ptr noundef %0, i32 noundef 8, i32 noundef 1, i32 noundef 3000)
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #10
  br label %107

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 23
  %91 = load i32, ptr %90, align 8
  store i32 0, ptr %90, align 8
  call void @fimc_is_set_initial_params(ptr noundef %0) #9
  %92 = call i32 @fimc_is_itf_s_param(ptr noundef %0, i1 noundef zeroext true) #9
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %89
  store i32 1, ptr %90, align 8
  call void @fimc_is_set_initial_params(ptr noundef %0) #9
  %95 = call i32 @fimc_is_itf_s_param(ptr noundef %0, i1 noundef zeroext true) #9
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  store i32 2, ptr %90, align 8
  call void @fimc_is_set_initial_params(ptr noundef %0) #9
  %98 = call i32 @fimc_is_itf_s_param(ptr noundef %0, i1 noundef zeroext true) #9
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  store i32 3, ptr %90, align 8
  call void @fimc_is_set_initial_params(ptr noundef %0) #9
  %101 = call i32 @fimc_is_itf_s_param(ptr noundef %0, i1 noundef zeroext true) #9
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  store i32 %91, ptr %90, align 8
  call void @_set_bit(i32 noundef 6, ptr noundef %72) #9
  %104 = load i32, ptr %90, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %104) #10
  br label %107

105:                                              ; preds = %100, %97, %94, %89
  %106 = phi i32 [ %92, %89 ], [ %95, %94 ], [ %98, %97 ], [ %101, %100 ]
  store i32 %91, ptr %90, align 8
  br label %107

107:                                              ; preds = %105, %103, %88, %83, %75, %41, %1
  %108 = phi i32 [ %39, %41 ], [ %73, %75 ], [ -5, %83 ], [ %86, %88 ], [ %106, %105 ], [ 0, %103 ], [ %36, %1 ]
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_get_setfile_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_load_setfile(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_stream_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_set_initial_params(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_itf_s_param(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 {
  %1 = tail call i32 @fimc_is_register_i2c_driver() #9
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fimc_is_driver, ptr noundef nonnull @__this_module) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @fimc_is_unregister_i2c_driver() #9
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ %4, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 {
  tail call void @fimc_is_unregister_i2c_driver() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @fimc_is_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_hw_wait_intmsr0_intmsd0(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_set_intgr0_gd0(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_register_i2c_driver() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_unregister_i2c_driver() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_is_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.resource, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !13
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 9624, i32 noundef 3520) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %162, label %6

6:                                                ; preds = %1
  store ptr %0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 5
  store ptr %0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %8, ptr noundef nonnull @.str.13, ptr noundef nonnull @fimc_is_probe.__key) #9
  %9 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 10
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef nonnull @fimc_is_probe.__key.14) #9
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @of_address_to_resource(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %2) #9
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %162, label %15

15:                                               ; preds = %6
  %16 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef nonnull %2) #9
  %17 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 12
  store ptr %16, ptr %17, align 8
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = ptrtoint ptr %16 to i32
  br label %162

21:                                               ; preds = %15
  %22 = load ptr, ptr %11, align 8
  %23 = call ptr @of_get_child_by_name(ptr noundef %22, ptr noundef nonnull @.str.16) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %162, label %25

25:                                               ; preds = %21
  %26 = call ptr @of_iomap(ptr noundef nonnull %23, i32 noundef 0) #9
  %27 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 13
  store ptr %26, ptr %27, align 4
  call void @of_node_put(ptr noundef nonnull %23) #9
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %162, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %11, align 8
  %32 = call i32 @irq_of_parse_and_map(ptr noundef %31, i32 noundef 0) #9
  %33 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 14
  store i32 %32, ptr %33, align 8
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #10
  br label %159

36:                                               ; preds = %30
  %37 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 0
  store ptr inttoptr (i32 -22 to ptr), ptr %37, align 4
  %38 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 1
  store ptr inttoptr (i32 -22 to ptr), ptr %38, align 4
  %39 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 2
  store ptr inttoptr (i32 -22 to ptr), ptr %39, align 4
  %40 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 3
  store ptr inttoptr (i32 -22 to ptr), ptr %40, align 4
  %41 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 4
  store ptr inttoptr (i32 -22 to ptr), ptr %41, align 4
  %42 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 5
  store ptr inttoptr (i32 -22 to ptr), ptr %42, align 4
  %43 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 6
  store ptr inttoptr (i32 -22 to ptr), ptr %43, align 4
  %44 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 7
  store ptr inttoptr (i32 -22 to ptr), ptr %44, align 4
  %45 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 8
  store ptr inttoptr (i32 -22 to ptr), ptr %45, align 4
  %46 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 9
  store ptr inttoptr (i32 -22 to ptr), ptr %46, align 4
  %47 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 10
  store ptr inttoptr (i32 -22 to ptr), ptr %47, align 4
  %48 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 11
  store ptr inttoptr (i32 -22 to ptr), ptr %48, align 4
  %49 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 12
  store ptr inttoptr (i32 -22 to ptr), ptr %49, align 4
  %50 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 13
  store ptr inttoptr (i32 -22 to ptr), ptr %50, align 4
  %51 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 14
  store ptr inttoptr (i32 -22 to ptr), ptr %51, align 4
  %52 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 15
  store ptr inttoptr (i32 -22 to ptr), ptr %52, align 4
  %53 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 16
  store ptr inttoptr (i32 -22 to ptr), ptr %53, align 4
  %54 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 17
  store ptr inttoptr (i32 -22 to ptr), ptr %54, align 4
  %55 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 18
  store ptr inttoptr (i32 -22 to ptr), ptr %55, align 4
  %56 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 19
  store ptr inttoptr (i32 -22 to ptr), ptr %56, align 4
  %57 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 20
  store ptr inttoptr (i32 -22 to ptr), ptr %57, align 4
  br label %61

58:                                               ; preds = %61
  %59 = add nuw nsw i32 %62, 1
  %60 = icmp eq i32 %59, 21
  br i1 %60, label %84, label %61

61:                                               ; preds = %58, %36
  %62 = phi i32 [ %59, %58 ], [ 0, %36 ]
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  %65 = getelementptr [21 x ptr], ptr @fimc_is_clocks, i32 0, i32 %62
  %66 = load ptr, ptr %65, align 4
  %67 = call ptr @clk_get(ptr noundef %64, ptr noundef %66) #9
  %68 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 %62
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %58

70:                                               ; preds = %76, %61
  %71 = phi i32 [ %77, %76 ], [ 0, %61 ]
  %72 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  call void @clk_put(ptr noundef %73) #9
  store ptr inttoptr (i32 -22 to ptr), ptr %72, align 4
  br label %76

76:                                               ; preds = %75, %70
  %77 = add nuw nsw i32 %71, 1
  %78 = icmp eq i32 %77, 21
  br i1 %78, label %79, label %70

79:                                               ; preds = %76
  %80 = ptrtoint ptr %67 to i32
  %81 = load ptr, ptr %4, align 8
  %82 = getelementptr inbounds %struct.platform_device, ptr %81, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.20, ptr noundef %66) #10
  %83 = icmp slt ptr %67, null
  br i1 %83, label %159, label %84

84:                                               ; preds = %79, %58
  %85 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %85, align 8
  %86 = load i32, ptr %33, align 8
  %87 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load ptr, ptr %3, align 4
  br label %92

92:                                               ; preds = %90, %84
  %93 = phi ptr [ %91, %90 ], [ %88, %84 ]
  %94 = call i32 @request_threaded_irq(i32 noundef %86, ptr noundef nonnull @fimc_is_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %93, ptr noundef %4) #9
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #10
  br label %148

97:                                               ; preds = %92
  call void @pm_runtime_enable(ptr noundef %3) #9
  %98 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %99 = load i16, ptr %98, align 8
  %100 = and i16 %99, 7
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = call i32 @fimc_is_runtime_resume(ptr noundef %3)
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %144, label %105

105:                                              ; preds = %102, %97
  %106 = call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %109) #9, !srcloc !17
  %110 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %109, ptr %109, i32 0, i32 -1, ptr elementtype(i32) %109) #9, !srcloc !18
  %111 = extractvalue { i32, i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %144, label %113

113:                                              ; preds = %108
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  br label %144

114:                                              ; preds = %105
  %115 = call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %3, i32 noundef -1) #9
  %116 = call i32 @devm_of_platform_populate(ptr noundef %3) #9
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %114
  %119 = call fastcc i32 @fimc_is_register_subdevs(ptr noundef nonnull %4)
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  call fastcc void @fimc_is_debugfs_create(ptr noundef nonnull %4)
  %122 = load ptr, ptr %4, align 8
  %123 = getelementptr inbounds %struct.platform_device, ptr %122, i32 0, i32 3
  %124 = call i32 @request_firmware_nowait(ptr noundef nonnull @__this_module, i1 noundef zeroext true, ptr noundef nonnull @.str.19, ptr noundef %123, i32 noundef 3264, ptr noundef %4, ptr noundef nonnull @fimc_is_load_firmware) #9
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %121
  %127 = call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #9
  br label %162

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 28
  %130 = load ptr, ptr %129, align 8
  call void @debugfs_remove(ptr noundef %130) #9
  store ptr null, ptr %129, align 8
  call void @fimc_isp_subdev_destroy(ptr noundef %7) #9
  br label %131

131:                                              ; preds = %128, %118, %114
  %132 = phi i32 [ %116, %114 ], [ %119, %118 ], [ %124, %128 ]
  %133 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %133) #9, !srcloc !17
  %134 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %133, ptr %133, i32 0, i32 -1, ptr elementtype(i32) %133) #9, !srcloc !18
  %135 = extractvalue { i32, i32, i32 } %134, 0
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %131
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  br label %138

138:                                              ; preds = %137, %131
  %139 = load i16, ptr %98, align 8
  %140 = and i16 %139, 7
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = call i32 @fimc_is_runtime_suspend(ptr noundef %3)
  br label %144

144:                                              ; preds = %142, %138, %113, %108, %102
  %145 = phi i32 [ %132, %138 ], [ %132, %142 ], [ %103, %102 ], [ %106, %108 ], [ %106, %113 ]
  %146 = load i32, ptr %33, align 8
  %147 = call ptr @free_irq(i32 noundef %146, ptr noundef nonnull %4) #9
  br label %148

148:                                              ; preds = %144, %96
  %149 = phi i32 [ %94, %96 ], [ %145, %144 ]
  br label %150

150:                                              ; preds = %156, %148
  %151 = phi i32 [ 0, %148 ], [ %157, %156 ]
  %152 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 %151
  %153 = load ptr, ptr %152, align 4
  %154 = icmp ugt ptr %153, inttoptr (i32 -4096 to ptr)
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  call void @clk_put(ptr noundef %153) #9
  store ptr inttoptr (i32 -22 to ptr), ptr %152, align 4
  br label %156

156:                                              ; preds = %155, %150
  %157 = add nuw nsw i32 %151, 1
  %158 = icmp eq i32 %157, 21
  br i1 %158, label %159, label %150

159:                                              ; preds = %156, %79, %35
  %160 = phi i32 [ %80, %79 ], [ -22, %35 ], [ %149, %156 ]
  %161 = load ptr, ptr %27, align 4
  call void @iounmap(ptr noundef %161) #9
  br label %162

162:                                              ; preds = %159, %126, %25, %21, %19, %6, %1
  %163 = phi i32 [ %20, %19 ], [ %160, %159 ], [ 0, %126 ], [ -12, %1 ], [ %13, %6 ], [ -19, %21 ], [ -12, %25 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #9
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_is_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #9
  %5 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 2) #9
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @fimc_is_runtime_suspend(ptr noundef %2)
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 14
  %13 = load i32, ptr %12, align 8
  %14 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %4) #9
  %15 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 5
  tail call void @fimc_isp_subdev_destroy(ptr noundef %15) #9
  br label %16

16:                                               ; preds = %22, %11
  %17 = phi i32 [ 0, %11 ], [ %23, %22 ]
  %18 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 11, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void @clk_put(ptr noundef %19) #9
  store ptr inttoptr (i32 -22 to ptr), ptr %18, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = add nuw nsw i32 %17, 1
  %24 = icmp eq i32 %23, 21
  br i1 %24, label %25, label %16

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  tail call void @iounmap(ptr noundef %27) #9
  %28 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 28
  %29 = load ptr, ptr %28, align 8
  tail call void @debugfs_remove(ptr noundef %29) #9
  store ptr null, ptr %28, align 8
  %30 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void @release_firmware(ptr noundef %31) #9
  %32 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 4, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 4
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 4, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = load i32, ptr %36, align 8
  tail call void @dma_free_attrs(ptr noundef %38, i32 noundef %40, ptr noundef nonnull %33, i32 noundef %41, i32 noundef 0) #9
  br label %42

42:                                               ; preds = %35, %25
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_is_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 10
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 1572904
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %105, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr i8, ptr %12, i32 1573032
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %15 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 19
  store i32 %14, ptr %15, align 4
  switch i32 %14, label %25 [
    i32 4096, label %16
    i32 4098, label %19
    i32 4099, label %19
    i32 4097, label %21
    i32 4100, label %21
    i32 8192, label %21
    i32 8193, label %23
    i32 4101, label %27
  ]

16:                                               ; preds = %11
  %17 = tail call i32 @fimc_is_hw_get_params(ptr noundef %1, i32 noundef 1) #9
  %18 = tail call i32 @fimc_is_hw_wait_intmsr0_intmsd0(ptr noundef %1) #9
  tail call void @fimc_is_hw_set_sensor_num(ptr noundef %1) #9
  br label %27

19:                                               ; preds = %11, %11
  %20 = tail call i32 @fimc_is_hw_get_params(ptr noundef %1, i32 noundef 2) #9
  br label %27

21:                                               ; preds = %11, %11, %11
  %22 = tail call i32 @fimc_is_hw_get_params(ptr noundef %1, i32 noundef 3) #9
  br label %27

23:                                               ; preds = %11
  %24 = tail call i32 @fimc_is_hw_get_params(ptr noundef %1, i32 noundef 4) #9
  br label %27

25:                                               ; preds = %11
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.fimc_is_general_irq_handler, i32 noundef 470, i32 noundef %14) #10
  br label %27

27:                                               ; preds = %25, %23, %21, %19, %16, %11
  tail call void @fimc_is_fw_clear_irq1(ptr noundef %1, i32 noundef 0) #9
  %28 = load i32, ptr %15, align 4
  switch i32 %28, label %103 [
    i32 4096, label %29
    i32 4101, label %101
    i32 4098, label %31
    i32 8193, label %75
    i32 8192, label %39
  ]

29:                                               ; preds = %27
  tail call void @fimc_is_hw_set_intgr0_gd0(ptr noundef %1) #9
  %30 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %30) #9
  br label %103

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 19, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 21
  %35 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 21, i32 1
  store i32 %33, ptr %35, align 4
  %36 = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 19, i32 3, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 21, i32 2
  store i32 %37, ptr %38, align 8
  store i32 0, ptr %34, align 8
  br label %103

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 19, i32 3
  %41 = load i32, ptr %40, align 4
  switch i32 %41, label %103 [
    i32 1, label %42
    i32 2, label %42
    i32 3, label %42
    i32 4, label %42
    i32 5, label %50
    i32 6, label %52
    i32 7, label %54
    i32 19, label %73
    i32 18, label %68
    i32 17, label %66
    i32 12, label %61
    i32 13, label %63
  ]

42:                                               ; preds = %39, %39, %39, %39
  %43 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 9, ptr noundef %43) #9
  %44 = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 19, i32 3, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 5, i32 9
  store i32 %45, ptr %46, align 4
  %47 = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 19, i32 3, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 5, i32 10
  store i32 %48, ptr %49, align 8
  br label %103

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %51) #9
  tail call void @_set_bit(i32 noundef 7, ptr noundef %51) #9
  br label %103

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %53) #9
  tail call void @_set_bit(i32 noundef 8, ptr noundef %53) #9
  br label %103

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 23
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 22, i32 %56, i32 5
  store i32 0, ptr %57, align 8
  %58 = load i32, ptr %55, align 8
  %59 = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 22, i32 %58, i32 5, i32 1
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 10, ptr noundef %60) #9
  br label %103

61:                                               ; preds = %39
  %62 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 4, ptr noundef %62) #9
  br label %103

63:                                               ; preds = %39
  %64 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %64) #9
  %65 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 18
  store i32 0, ptr %65, align 8
  br label %103

66:                                               ; preds = %39
  %67 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %67) #9
  br label %103

68:                                               ; preds = %39
  %69 = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 19, i32 3, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 7, i32 4
  store i32 %70, ptr %71, align 8
  %72 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 5, ptr noundef %72) #9
  br label %103

73:                                               ; preds = %39
  %74 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 5, ptr noundef %74) #9
  br label %103

75:                                               ; preds = %27
  %76 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 19, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 19, i32 3, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = tail call ptr @fimc_is_strerr(i32 noundef %79) #9
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.fimc_is_general_irq_handler, i32 noundef 570, i32 noundef %77, i32 noundef %79, ptr noundef %80) #10
  %82 = load i32, ptr %78, align 4
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %87, label %84

84:                                               ; preds = %75
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.fimc_is_general_irq_handler, i32 noundef 573) #10
  %86 = load i32, ptr %78, align 4
  br label %87

87:                                               ; preds = %84, %75
  %88 = phi i32 [ %86, %84 ], [ %82, %75 ]
  %89 = icmp eq i32 %88, 9
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  br label %91

91:                                               ; preds = %90, %87
  %92 = load i32, ptr %76, align 4
  %93 = icmp eq i32 %92, 7
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 23
  %96 = load i32, ptr %95, align 8
  %97 = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 22, i32 %96, i32 5
  store i32 0, ptr %97, align 8
  %98 = load i32, ptr %95, align 8
  %99 = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 22, i32 %98, i32 5, i32 1
  store i32 0, ptr %99, align 4
  %100 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 10, ptr noundef %100) #9
  br label %103

101:                                              ; preds = %27
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.fimc_is_general_irq_handler, i32 noundef 590) #10
  br label %103

103:                                              ; preds = %101, %94, %91, %73, %68, %66, %63, %61, %54, %52, %50, %42, %39, %31, %29, %27
  %104 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 15
  tail call void @__wake_up(ptr noundef %104, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %105

105:                                              ; preds = %103, %2
  %106 = and i32 %8, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  tail call void @fimc_isp_irq_handler(ptr noundef %1) #9
  br label %109

109:                                              ; preds = %108, %105
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_is_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_set_parent(ptr noundef %5, ptr noundef %7) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %67, label %10

10:                                               ; preds = %1
  %11 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_set_parent(ptr noundef %12, ptr noundef %14) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %67, label %17

17:                                               ; preds = %10
  %18 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef 100000000) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %67, label %22

22:                                               ; preds = %17
  %23 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @clk_set_rate(ptr noundef %24, i32 noundef 100000000) #9
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %67, label %27

27:                                               ; preds = %22
  %28 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @clk_set_rate(ptr noundef %29, i32 noundef 100000000) #9
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %27
  %33 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 16
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @clk_set_rate(ptr noundef %34, i32 noundef 100000000) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %64, %32
  %38 = phi i32 [ %65, %64 ], [ 0, %32 ]
  %39 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %64, label %42

42:                                               ; preds = %37
  %43 = tail call i32 @clk_prepare(ptr noundef %40) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = tail call i32 @clk_enable(ptr noundef %40) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  tail call void @clk_unprepare(ptr noundef %40) #9
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i32 [ %43, %42 ], [ %46, %48 ]
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  %55 = getelementptr [21 x ptr], ptr @fimc_is_clocks, i32 0, i32 %38
  %56 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.46, ptr noundef %56) #10
  %57 = icmp eq i32 %38, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %58, %52
  %59 = phi i32 [ %60, %58 ], [ %38, %52 ]
  %60 = add nsw i32 %59, -1
  %61 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 %60
  %62 = load ptr, ptr %61, align 4
  tail call void @clk_disable(ptr noundef %62) #9
  %63 = icmp sgt i32 %59, 1
  br i1 %63, label %58, label %67

64:                                               ; preds = %49, %45, %37
  %65 = add nuw nsw i32 %38, 1
  %66 = icmp eq i32 %65, 13
  br i1 %66, label %67, label %37

67:                                               ; preds = %64, %58, %52, %32, %27, %22, %17, %10, %1
  %68 = phi i32 [ %35, %32 ], [ %50, %52 ], [ %30, %27 ], [ %25, %22 ], [ %20, %17 ], [ %15, %10 ], [ %8, %1 ], [ %50, %58 ], [ 0, %64 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_is_register_subdevs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 5
  %4 = tail call i32 @fimc_isp_subdev_create(ptr noundef %3) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %54, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.47) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %50, %6
  %10 = phi i32 [ %51, %50 ], [ 0, %6 ]
  %11 = phi ptr [ %52, %50 ], [ %7, %6 ]
  %12 = call ptr @of_get_next_available_child(ptr noundef nonnull %11, ptr noundef null) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14

14:                                               ; preds = %9
  %15 = call i32 @llvm.smax.i32(i32 %10, i32 2)
  br label %16

16:                                               ; preds = %46, %14
  %17 = phi i32 [ %47, %46 ], [ %10, %14 ]
  %18 = phi ptr [ %48, %46 ], [ %12, %14 ]
  %19 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 6, i32 %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4
  %20 = call ptr @fimc_is_sensor_get_drvdata(ptr noundef nonnull %18) #9
  store ptr %20, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.48, ptr noundef nonnull %18) #10
  br label %37

25:                                               ; preds = %16
  %26 = call ptr @of_graph_get_next_endpoint(ptr noundef nonnull %18, ptr noundef null) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = call ptr @of_graph_get_remote_port(ptr noundef nonnull %26) #9
  call void @of_node_put(ptr noundef nonnull %26) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %29, ptr noundef nonnull @.str.49, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.50, ptr noundef nonnull %29) #10
  call void @of_node_put(ptr noundef nonnull %29) #9
  br label %37

37:                                               ; preds = %34, %28, %25, %22
  %38 = phi i32 [ -22, %22 ], [ %32, %34 ], [ -6, %28 ], [ -6, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %44

39:                                               ; preds = %31
  call void @of_node_put(ptr noundef nonnull %29) #9
  %40 = load i32, ptr %2, align 4
  %41 = add i32 %40, -3
  %42 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 6, i32 %17, i32 1
  store i32 %41, ptr %42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %43 = icmp eq i32 %17, %15
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %37
  %45 = phi i32 [ %38, %37 ], [ 0, %39 ]
  call void @of_node_put(ptr noundef nonnull %18) #9
  br label %54

46:                                               ; preds = %39
  %47 = add i32 %17, 1
  %48 = call ptr @of_get_next_available_child(ptr noundef nonnull %11, ptr noundef nonnull %18) #9
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %16

50:                                               ; preds = %46, %9
  %51 = phi i32 [ %10, %9 ], [ %47, %46 ]
  %52 = call ptr @of_find_compatible_node(ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull @.str.47) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %9

54:                                               ; preds = %50, %44, %6, %1
  %55 = phi i32 [ %45, %44 ], [ %4, %1 ], [ 0, %6 ], [ 0, %50 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fimc_is_debugfs_create(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.51, ptr noundef null) #9
  %3 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 28
  store ptr %2, ptr %3, align 8
  %4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 292, ptr noundef %2, ptr noundef %0, ptr noundef nonnull @fimc_is_fops) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_is_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @clk_disable(ptr noundef %10) #9
  tail call void @clk_unprepare(ptr noundef %10) #9
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @clk_disable(ptr noundef %15) #9
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @clk_disable(ptr noundef %20) #9
  tail call void @clk_unprepare(ptr noundef %20) #9
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @clk_disable(ptr noundef %25) #9
  tail call void @clk_unprepare(ptr noundef %25) #9
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @clk_disable(ptr noundef %30) #9
  tail call void @clk_unprepare(ptr noundef %30) #9
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @clk_disable(ptr noundef %35) #9
  tail call void @clk_unprepare(ptr noundef %35) #9
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @clk_disable(ptr noundef %40) #9
  tail call void @clk_unprepare(ptr noundef %40) #9
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @clk_disable(ptr noundef %45) #9
  tail call void @clk_unprepare(ptr noundef %45) #9
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 9
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @clk_disable(ptr noundef %50) #9
  tail call void @clk_unprepare(ptr noundef %50) #9
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 10
  %55 = load ptr, ptr %54, align 4
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @clk_disable(ptr noundef %55) #9
  tail call void @clk_unprepare(ptr noundef %55) #9
  br label %58

58:                                               ; preds = %57, %53
  %59 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @clk_disable(ptr noundef %60) #9
  tail call void @clk_unprepare(ptr noundef %60) #9
  br label %63

63:                                               ; preds = %62, %58
  %64 = getelementptr %struct.fimc_is, ptr %3, i32 0, i32 11, i32 12
  %65 = load ptr, ptr %64, align 4
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void @clk_disable(ptr noundef %65) #9
  tail call void @clk_unprepare(ptr noundef %65) #9
  br label %68

68:                                               ; preds = %67, %63
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_isp_irq_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_hw_get_params(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_set_sensor_num(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_fw_clear_irq1(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_is_strerr(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_isp_subdev_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_is_sensor_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_is_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @fimc_is_show, ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_is_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fimc_is, ptr %4, i32 0, i32 4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.53) #10
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %6, i32 8695808
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef %12) #9
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ -5, %8 ], [ 0, %11 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimc_is_load_firmware(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.55) #10
  br label %61

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %8) #9
  %9 = load i32, ptr %0, align 4
  %10 = add i32 %9, -4194305
  %11 = icmp ult i32 %10, -4161537
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.56, i32 noundef %9) #10
  br label %60

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 3, i32 3
  store i32 %9, ptr %14, align 4
  %15 = load ptr, ptr %1, align 8
  %16 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 4
  %18 = tail call ptr @dma_alloc_attrs(ptr noundef %16, i32 noundef 10485760, ptr noundef %17, i32 noundef 3264, i32 noundef 0) #9
  %19 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 4, i32 1
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 4, i32 2
  store i32 10485760, ptr %22, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.59, ptr noundef %17) #10
  %23 = load i32, ptr %17, align 8
  %24 = and i32 %23, 67108863
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.60, i32 noundef %23) #10
  %27 = load i32, ptr %22, align 8
  %28 = load ptr, ptr %19, align 4
  %29 = load i32, ptr %17, align 8
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef %27, ptr noundef %28, i32 noundef %29, i32 noundef 0) #9
  br label %30

30:                                               ; preds = %26, %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.57) #10
  br label %60

31:                                               ; preds = %21
  %32 = load ptr, ptr %19, align 4
  %33 = getelementptr i8, ptr %32, i32 10465280
  %34 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 24
  store ptr %33, ptr %34, align 4
  %35 = add nuw i32 %23, 10465280
  %36 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 25
  store i32 %35, ptr %36, align 8
  %37 = getelementptr i8, ptr %32, i32 9175040
  %38 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 26
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 3
  %40 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %0, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %41, i32 %42, i1 false)
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !21
  tail call void @arm_heavy_mb() #9
  %43 = load ptr, ptr %19, align 4
  %44 = load i32, ptr %0, align 4
  %45 = getelementptr i8, ptr %43, i32 %44
  %46 = getelementptr i8, ptr %45, i32 -38
  %47 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 3, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(31) %47, ptr noundef align 1 dereferenceable(31) %46, i32 31, i1 false)
  %48 = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 3, i32 4, i32 31
  store i8 0, ptr %48, align 1
  %49 = load i32, ptr %0, align 4
  %50 = getelementptr i8, ptr %43, i32 %49
  %51 = getelementptr i8, ptr %50, i32 -7
  %52 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 3, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(7) %52, ptr noundef align 1 dereferenceable(7) %51, i32 7, i1 false)
  %53 = getelementptr %struct.fimc_is, ptr %1, i32 0, i32 3, i32 5, i32 6
  store i8 0, ptr %53, align 2
  %54 = getelementptr inbounds %struct.fimc_is, ptr %1, i32 0, i32 3, i32 7
  store i8 1, ptr %54, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.58, ptr noundef %47, ptr noundef %52) #10
  %55 = load ptr, ptr %38, align 4
  %56 = getelementptr inbounds %struct.is_share_region, ptr %55, i32 0, i32 14
  store i32 934930, ptr %56, align 1
  %57 = load ptr, ptr %38, align 4
  %58 = getelementptr inbounds %struct.is_share_region, ptr %57, i32 0, i32 15
  store i32 1, ptr %58, align 1
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %59 = load ptr, ptr %39, align 4
  tail call void @release_firmware(ptr noundef %59) #9
  store ptr %0, ptr %39, align 4
  br label %60

60:                                               ; preds = %31, %30, %12
  tail call void @mutex_unlock(ptr noundef %8) #9
  br label %61

61:                                               ; preds = %60, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_isp_subdev_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fimc_is_suspend(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimc_is, ptr %3, i32 0, i32 17
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 0, i32 -16
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @fimc_is_resume(ptr nocapture noundef readnone %0) #7 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 4465126}
!9 = !{i64 2155323895}
!10 = !{i64 2155324879}
!11 = !{i64 4465544}
!12 = !{i64 2155325523}
!13 = !{!"auto-init"}
!14 = !{i64 2155344164}
!15 = !{i64 2155323091}
!16 = !{i64 2148158473}
!17 = !{i64 594138, i64 2148095704, i64 2148095730, i64 2148095777, i64 2148095799, i64 2148095827, i64 2148095847}
!18 = !{i64 580707, i64 580732, i64 580754, i64 580770, i64 580782, i64 580802, i64 580826, i64 580842, i64 580854}
!19 = !{i64 2148158599}
!20 = !{i64 2155324523}
!21 = !{i64 2155348213}
