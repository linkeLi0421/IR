; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/fimc-isp-video.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-isp-video.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.fimc_isp_ctrls = type { %struct.v4l2_ctrl_handler, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr, ptr }
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
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.78, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.78 = type { i8 }
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
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.isp_video_buf = type { %struct.vb2_v4l2_buffer, [1 x i32], i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.exynos_media_pipeline = type { %struct.media_pipeline, ptr }
%struct.exynos_media_pipeline_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@fimc_isp_video_device_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [17 x i8] c"&isp->video_lock\00", align 1
@isp_video_capture_qops = internal constant %struct.vb2_ops { ptr @isp_video_capture_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @isp_video_capture_buffer_prepare, ptr null, ptr null, ptr @isp_video_capture_start_streaming, ptr @isp_video_capture_stop_streaming, ptr @isp_video_capture_buffer_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"fimc-is-isp.capture\00", align 1
@isp_video_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @isp_video_open, ptr @isp_video_release }, align 4
@isp_video_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @isp_video_querycap, ptr @isp_video_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_g_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_s_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_try_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isp_video_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @isp_video_streamon, ptr @isp_video_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"\016%s: Registered %s as /dev/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\013%s: User buffer too small (%ld < %ld)\0A\00", align 1
@fimc_isp_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"\017%s: buf_count: %d, planes: %d, dma addr table: %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%s: DMA stop failed\0A\00", align 1
@__func__.isp_video_capture_stop_streaming = private unnamed_addr constant [33 x i8] c"isp_video_capture_stop_streaming\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\017%s: dma_buf %d (%d/%d/%d) addr: %pad\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.8 = private unnamed_addr constant [51 x i8] c"drivers/media/platform/exynos4-is/fimc-isp-video.c\00", align 1
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_isp_video_irq_handler(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 5, i32 11
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 19, i32 3, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 5, i32 12, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = urem i32 %9, %11
  %13 = getelementptr %struct.fimc_is, ptr %0, i32 0, i32 5, i32 12, i32 11, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i64 @ktime_get() #8
  %16 = getelementptr inbounds %struct.vb2_buffer, ptr %14, i32 0, i32 5
  store i64 %15, ptr %16, align 8
  tail call void @vb2_buffer_done(ptr noundef %14, i32 noundef 5) #8
  %17 = shl nuw i32 1, %12
  %18 = xor i32 %17, -1
  %19 = getelementptr inbounds %struct.fimc_is, ptr %0, i32 0, i32 5, i32 12, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, %18
  store i32 %21, ptr %19, align 8
  tail call void @fimc_is_hw_set_isp_buf_mask(ptr noundef %0, i32 noundef %21) #8
  br label %22

22:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_is_hw_set_isp_buf_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_isp_video_device_register(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12
  %5 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 5
  %6 = icmp eq i32 %2, 9
  br i1 %6, label %7, label %66

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @fimc_isp_video_device_register.__key) #8
  %9 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 3
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 4
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 4, i32 1
  store ptr %11, ptr %12, align 4
  %13 = tail call ptr @fimc_isp_find_format(ptr noundef null, ptr noundef null, i32 noundef 0) #8
  %14 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 12
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 13
  store i32 1280, ptr %15, align 8
  %16 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 13, i32 1
  store i32 720, ptr %16, align 4
  %17 = getelementptr inbounds %struct.fimc_fmt, ptr %13, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 13, i32 2
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 13, i32 4
  store i32 8, ptr %20, align 8
  %21 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 5, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(332) %21, i8 0, i64 332, i1 false)
  store i32 9, ptr %5, align 4
  %22 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 5, i32 1
  store i32 3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 5, i32 7
  store ptr @isp_video_capture_qops, ptr %23, align 4
  %24 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 5, i32 8
  store ptr @vb2_dma_contig_memops, ptr %24, align 4
  %25 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 5, i32 12
  store i32 648, ptr %25, align 4
  %26 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 5, i32 10
  store ptr %0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 5, i32 13
  store i32 8192, ptr %27, align 4
  %28 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 5, i32 5
  store ptr %8, ptr %28, align 4
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 5, i32 2
  store ptr %30, ptr %31, align 4
  %32 = tail call i32 @vb2_queue_init(ptr noundef %5) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %7
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(856) %4, i8 0, i32 856, i1 false)
  %35 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 12
  %36 = tail call i32 @strscpy(ptr noundef %35, ptr noundef nonnull @.str.1, i32 noundef 32) #8
  %37 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 10
  store ptr %5, ptr %37, align 8
  %38 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 3
  store ptr @isp_video_fops, ptr %38, align 4
  %39 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 24
  store ptr @isp_video_ioctl_ops, ptr %39, align 4
  %40 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 7
  store ptr %1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 15
  store i32 -1, ptr %41, align 8
  %42 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 23
  store ptr @video_device_release_empty, ptr %42, align 8
  %43 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 26
  store ptr %8, ptr %43, align 8
  %44 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 4
  store i32 67112960, ptr %44, align 8
  %45 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 2
  %46 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 2, i32 4
  store i32 1, ptr %46, align 4
  %47 = tail call i32 @media_entity_pads_init(ptr noundef %4, i16 noundef zeroext 1, ptr noundef %45) #8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 5, i32 8
  store ptr %0, ptr %50, align 8
  %51 = load ptr, ptr %38, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @__video_register_device(ptr noundef %4, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %52) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %57 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 5, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi ptr [ %62, %60 ], [ %58, %55 ]
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %56, ptr noundef %35, ptr noundef %64) #9
  br label %66

66:                                               ; preds = %63, %49, %34, %7, %3
  %67 = phi i32 [ 0, %63 ], [ -38, %3 ], [ %32, %7 ], [ %47, %34 ], [ %53, %49 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_isp_find_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_isp_video_device_unregister(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 9
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 0, i32 17
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12
  tail call void @video_unregister_device(ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.fimc_isp, ptr %0, i32 0, i32 12, i32 0, i32 1
  store ptr null, ptr %12, align 8
  br label %13

13:                                               ; preds = %10, %4
  tail call void @mutex_unlock(ptr noundef %5) #8
  br label %14

14:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_capture_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #5 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 12, i32 13
  %9 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 12, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %8, align 1
  %12 = getelementptr inbounds %struct.fimc_isp, ptr %7, i32 0, i32 12, i32 13, i32 1
  %13 = load i32, ptr %12, align 1
  %14 = mul i32 %13, %11
  %15 = icmp eq ptr %10, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %5
  %17 = load i32, ptr %1, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %17, i32 2)
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 32)
  store i32 %19, ptr %1, align 4
  %20 = load i32, ptr %2, align 4
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.fimc_fmt, ptr %10, i32 0, i32 3
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  br i1 %21, label %40, label %25

25:                                               ; preds = %16
  %26 = icmp eq i32 %20, %24
  br i1 %26, label %30, label %55

27:                                               ; preds = %30
  %28 = add nuw i32 %31, 1
  %29 = icmp eq i32 %28, %20
  br i1 %29, label %55, label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %28, %27 ], [ 0, %25 ]
  %32 = getelementptr i32, ptr %3, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.fimc_fmt, ptr %10, i32 0, i32 6, i32 %31
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = mul i32 %14, %36
  %38 = lshr i32 %37, 3
  %39 = icmp ult i32 %33, %38
  br i1 %39, label %55, label %27

40:                                               ; preds = %16
  store i32 %24, ptr %2, align 4
  %41 = load i16, ptr %22, align 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %43, %40
  %44 = phi i32 [ %51, %43 ], [ 0, %40 ]
  %45 = getelementptr %struct.fimc_fmt, ptr %10, i32 0, i32 6, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = mul i32 %14, %47
  %49 = lshr i32 %48, 3
  %50 = getelementptr i32, ptr %3, i32 %44
  store i32 %49, ptr %50, align 4
  %51 = add nuw nsw i32 %44, 1
  %52 = load i16, ptr %22, align 4
  %53 = zext i16 %52 to i32
  %54 = icmp ult i32 %51, %53
  br i1 %54, label %43, label %55

55:                                               ; preds = %43, %40, %30, %27, %25, %5
  %56 = phi i32 [ -22, %5 ], [ -22, %25 ], [ 0, %40 ], [ 0, %43 ], [ -22, %30 ], [ 0, %27 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_capture_buffer_prepare(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %62, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fimc_fmt, ptr %6, i32 0, i32 3
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  br label %15

15:                                               ; preds = %34, %12
  %16 = phi ptr [ %6, %12 ], [ %35, %34 ]
  %17 = phi i32 [ 0, %12 ], [ %36, %34 ]
  %18 = getelementptr %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 13, i32 5, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %14, %17
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %17, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = icmp ult i32 %23, %19
  br i1 %24, label %27, label %31

25:                                               ; preds = %15
  %26 = icmp eq i32 %19, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %23, %21 ], [ 0, %25 ]
  %29 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 0, i32 0, i32 12
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %29, i32 noundef %28, i32 noundef %19) #9
  br label %62

31:                                               ; preds = %21
  %32 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %17, i32 3
  store i32 %19, ptr %32, align 4
  %33 = load ptr, ptr %5, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi ptr [ %16, %25 ], [ %33, %31 ]
  %36 = add nuw nsw i32 %17, 1
  %37 = getelementptr inbounds %struct.fimc_fmt, ptr %35, i32 0, i32 3
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %15, label %41

41:                                               ; preds = %34, %8
  %42 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 11
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %41
  %47 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #8
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %62, label %55

52:                                               ; preds = %55
  %53 = add nuw i32 %56, 1
  %54 = icmp eq i32 %53, %50
  br i1 %54, label %62, label %55

55:                                               ; preds = %52, %46
  %56 = phi i32 [ %53, %52 ], [ 0, %46 ]
  %57 = getelementptr %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 11, i32 %56
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.isp_video_buf, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 8
  %61 = icmp eq i32 %60, %48
  br i1 %61, label %62, label %52

62:                                               ; preds = %55, %52, %46, %41, %27, %1
  %63 = phi i32 [ -22, %1 ], [ -22, %27 ], [ 0, %41 ], [ -6, %46 ], [ -6, %52 ], [ 0, %55 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_capture_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -128
  %6 = getelementptr i8, ptr %4, i32 9440
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr %struct.fimc_is, ptr %5, i32 0, i32 22, i32 %7, i32 2, i32 14
  %9 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12
  %10 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 11
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %66, label %14

14:                                               ; preds = %2
  %15 = load volatile i32, ptr %10, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %66

18:                                               ; preds = %14
  store i32 1, ptr %8, align 4
  %19 = getelementptr inbounds %struct.param_dma_output, ptr %8, i32 0, i32 9
  store i32 1, ptr %19, align 4
  %20 = getelementptr i8, ptr %4, i32 9448
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 7668
  %23 = getelementptr inbounds %struct.param_dma_output, ptr %8, i32 0, i32 8
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.param_dma_output, ptr %8, i32 0, i32 7
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 8
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.param_dma_output, ptr %8, i32 0, i32 10
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr @fimc_isp_debug, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %42

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 0, i32 0, i32 12
  %34 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.fimc_fmt, ptr %37, i32 0, i32 3
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %33, i32 noundef %35, i32 noundef %40, i32 noundef %22) #9
  br label %42

42:                                               ; preds = %32, %18
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %43 = load i32, ptr %6, align 8
  %44 = getelementptr %struct.fimc_is, ptr %5, i32 0, i32 22, i32 %43, i32 5
  tail call void @_set_bit(i32 noundef 21, ptr noundef %44) #8
  %45 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %5, i32 noundef 21) #8
  %46 = tail call i32 @fimc_is_itf_s_param(ptr noundef %5, i1 noundef zeroext false) #8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %42
  %49 = icmp eq ptr %9, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %52, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %56, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = tail call i32 %60(ptr noundef nonnull %52, i1 noundef zeroext true) #8
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call void @_set_bit(i32 noundef 1, ptr noundef %10) #8
  br label %66

66:                                               ; preds = %65, %62, %58, %54, %50, %48, %42, %14, %2
  %67 = phi i32 [ %63, %65 ], [ 0, %14 ], [ 0, %2 ], [ %46, %42 ], [ %63, %62 ], [ -515, %54 ], [ -515, %58 ], [ -2, %48 ], [ -2, %50 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isp_video_capture_stop_streaming(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -128
  %5 = getelementptr i8, ptr %3, i32 9440
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 22, i32 %6, i32 2, i32 14
  %8 = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %16, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef nonnull %12, i1 noundef zeroext false) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  store i32 0, ptr %7, align 4
  %26 = getelementptr inbounds %struct.param_dma_output, ptr %7, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %27 = load i32, ptr %5, align 8
  %28 = getelementptr %struct.fimc_is, ptr %4, i32 0, i32 22, i32 %27, i32 5
  tail call void @_set_bit(i32 noundef 21, ptr noundef %28) #8
  %29 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %4, i32 noundef 21) #8
  %30 = tail call i32 @fimc_is_itf_s_param(ptr noundef %4, i1 noundef zeroext false) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.isp_video_capture_stop_streaming) #9
  br label %35

35:                                               ; preds = %32, %25
  tail call void @fimc_is_hw_set_isp_buf_mask(ptr noundef %4, i32 noundef 0) #8
  %36 = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %36) #8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %36) #8
  %37 = getelementptr inbounds %struct.fimc_isp, ptr %3, i32 0, i32 12, i32 7
  store i32 0, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %22, %18, %14, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isp_video_capture_buffer_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 11
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %4, i32 2280
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.isp_video_buf, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %13
  %15 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = or i32 %16, %14
  store i32 %17, ptr %15, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #8
  br label %63

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fimc_fmt, ptr %20, i32 0, i32 3
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.isp_video_buf, ptr %0, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 11, i32 %25
  store ptr %0, ptr %27, align 4
  %28 = icmp eq i16 %22, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %18
  %30 = getelementptr i8, ptr %4, i32 9444
  %31 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 0, i32 0, i32 12
  %32 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 1
  br label %33

33:                                               ; preds = %50, %29
  %34 = phi i32 [ 0, %29 ], [ %51, %50 ]
  %35 = load i32, ptr %26, align 4
  %36 = mul i32 %35, %23
  %37 = add i32 %36, %34
  %38 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef %34) #8
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.isp_video_buf, ptr %0, i32 0, i32 1, i32 %34
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %30, align 4
  %42 = add i32 %37, 32
  %43 = getelementptr %struct.is_region, ptr %41, i32 0, i32 4, i32 %42
  store i32 %39, ptr %43, align 1
  %44 = load i32, ptr @fimc_isp_debug, align 4
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i32, ptr %26, align 4
  %48 = load i32, ptr %32, align 4
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %31, i32 noundef %37, i32 noundef %47, i32 noundef %34, i32 noundef %48, ptr noundef %40) #9
  br label %50

50:                                               ; preds = %46, %33
  %51 = add nuw nsw i32 %34, 1
  %52 = icmp eq i32 %51, %23
  br i1 %52, label %53, label %33

53:                                               ; preds = %50, %18
  %54 = load i32, ptr %24, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %24, align 4
  %56 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 6
  %57 = load i32, ptr %56, align 8
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %70, label %59

59:                                               ; preds = %53
  %60 = shl nsw i32 -1, %55
  %61 = xor i32 %60, -1
  %62 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 8
  store i32 %61, ptr %62, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %5) #8
  br label %63

63:                                               ; preds = %59, %9
  %64 = load volatile i32, ptr %5, align 4
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load ptr, ptr %0, align 8
  %69 = tail call i32 @isp_video_capture_start_streaming(ptr noundef %68, i32 noundef 0)
  br label %70

70:                                               ; preds = %67, %63, %53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fimc_is_hw_update_param(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_is_itf_s_param(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_open(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12
  %6 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 7
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %1
  %10 = tail call i32 @v4l2_fh_open(ptr noundef %0) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %59, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #8, !srcloc !10
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 -1, ptr elementtype(i32) %18) #8, !srcloc !11
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  br label %56

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @v4l2_fh_is_singular(ptr noundef %25) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %59, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.media_device, ptr %29, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %30) #8
  %31 = icmp eq ptr %5, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %34, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %38, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = tail call i32 %42(ptr noundef nonnull %34, ptr noundef nonnull %5, i1 noundef zeroext true) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 0, i32 0, i32 0, i32 13
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %44, %40, %36, %32, %28
  %52 = phi i32 [ 0, %47 ], [ %45, %44 ], [ -515, %36 ], [ -515, %40 ], [ -2, %28 ], [ -2, %32 ]
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr inbounds %struct.media_device, ptr %53, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %54) #8
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51, %22, %17
  %57 = phi i32 [ %52, %51 ], [ %15, %17 ], [ %15, %22 ]
  %58 = tail call i32 @v4l2_fh_release(ptr noundef %0) #8
  br label %59

59:                                               ; preds = %56, %51, %23, %9
  %60 = phi i32 [ %10, %9 ], [ %57, %56 ], [ 0, %51 ], [ 0, %23 ]
  tail call void @mutex_unlock(ptr noundef %6) #8
  br label %61

61:                                               ; preds = %59, %1
  %62 = phi i32 [ %60, %59 ], [ -512, %1 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_release(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @v4l2_fh_is_singular(ptr noundef %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 10
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @media_pipeline_stop(ptr noundef %5) #8
  store i32 0, ptr %13, align 8
  br label %17

17:                                               ; preds = %16, %12
  %18 = tail call i32 @_vb2_fop_release(ptr noundef %0, ptr noundef null) #8
  %19 = icmp eq ptr %5, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %26, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef nonnull %22) #8
  br label %34

34:                                               ; preds = %32, %28, %24, %20, %17
  %35 = getelementptr inbounds %struct.media_device, ptr %6, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %35) #8
  %36 = getelementptr inbounds %struct.fimc_isp, ptr %4, i32 0, i32 12, i32 0, i32 0, i32 0, i32 13
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -1
  store i32 %38, ptr %36, align 4
  tail call void @mutex_unlock(ptr noundef %35) #8
  br label %41

39:                                               ; preds = %1
  %40 = tail call i32 @_vb2_fop_release(ptr noundef %0, ptr noundef null) #8
  br label %41

41:                                               ; preds = %39, %34
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  %44 = tail call i32 @__pm_runtime_idle(ptr noundef %43, i32 noundef 5) #8
  tail call void @mutex_unlock(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_querycap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void @__fimc_vidioc_querycap(ptr noundef %8, ptr noundef %2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_enum_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ugt i32 %4, 2
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @fimc_isp_find_format(ptr noundef null, ptr noundef null, i32 noundef %4) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !13

9:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 365, i32 noundef 9, ptr noundef null) #8
  br label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fimc_fmt, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %9, %3
  %15 = phi i32 [ -22, %9 ], [ 0, %10 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_g_fmt_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.fimc_isp, ptr %6, i32 0, i32 12, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(192) %7, ptr noundef align 8 dereferenceable(192) %8, i32 192, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_s_fmt_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr i8, ptr %6, i32 9440
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %11 = tail call ptr @fimc_isp_find_format(ptr noundef %10, ptr noundef null, i32 noundef 2) #8
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %12, align 1
  %13 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %13, align 1
  %14 = getelementptr inbounds %struct.fimc_fmt, ptr %11, i32 0, i32 3
  %15 = load i16, ptr %14, align 4
  %16 = trunc i16 %15 to i8
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 6
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.fimc_fmt, ptr %11, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %10, align 1
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %7, i32 noundef 8, i32 noundef 4000, i32 noundef 3, ptr noundef %20, i32 noundef 8, i32 noundef 4000, i32 noundef 0, i32 noundef 0) #8
  %21 = icmp eq ptr %11, null
  br i1 %21, label %22, label %23, !prof !13

22:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 427, i32 noundef 9, ptr noundef null) #8
  br label %41

23:                                               ; preds = %3
  %24 = getelementptr i8, ptr %6, i32 -128
  %25 = getelementptr %struct.fimc_is, ptr %24, i32 0, i32 22, i32 %9, i32 2, i32 14
  %26 = getelementptr inbounds %struct.param_dma_output, ptr %25, i32 0, i32 3
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.param_dma_output, ptr %25, i32 0, i32 6
  store i32 15, ptr %27, align 4
  %28 = load i16, ptr %14, align 4
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.param_dma_output, ptr %25, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.fimc_fmt, ptr %11, i32 0, i32 6
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.param_dma_output, ptr %25, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  %35 = load i32, ptr %7, align 1
  %36 = getelementptr inbounds %struct.param_dma_output, ptr %25, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %20, align 1
  %38 = getelementptr inbounds %struct.param_dma_output, ptr %25, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %39 = getelementptr inbounds %struct.fimc_isp, ptr %6, i32 0, i32 12, i32 12
  store ptr %11, ptr %39, align 4
  %40 = getelementptr inbounds %struct.fimc_isp, ptr %6, i32 0, i32 12, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(192) %40, ptr noundef align 1 dereferenceable(192) %7, i32 192, i1 false)
  br label %41

41:                                               ; preds = %23, %22
  %42 = phi i32 [ -22, %22 ], [ 0, %23 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_try_fmt_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %7 = tail call ptr @fimc_isp_find_format(ptr noundef %6, ptr noundef null, i32 noundef 2) #8
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 8, ptr %8, align 1
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %9, align 1
  %10 = getelementptr inbounds %struct.fimc_fmt, ptr %7, i32 0, i32 3
  %11 = load i16, ptr %10, align 4
  %12 = trunc i16 %11 to i8
  %13 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 6
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.fimc_fmt, ptr %7, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %6, align 1
  %16 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %5, i32 noundef 8, i32 noundef 4000, i32 noundef 3, ptr noundef %16, i32 noundef 8, i32 noundef 4000, i32 noundef 0, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_reqbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @vb2_ioctl_reqbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  store i32 0, ptr %2, align 4
  %13 = tail call i32 @vb2_ioctl_reqbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  %14 = load i32, ptr %2, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i32 [ %14, %12 ], [ %10, %9 ]
  %17 = phi i32 [ -12, %12 ], [ %7, %9 ]
  %18 = getelementptr inbounds %struct.fimc_isp, ptr %6, i32 0, i32 12, i32 6
  store i32 %16, ptr %18, align 8
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i32 [ %17, %15 ], [ %7, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_streamon(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.v4l2_subdev_format, align 4
  %5 = alloca %struct.v4l2_subdev_format, align 4
  %6 = tail call ptr @video_devdata(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.fimc_isp, ptr %8, i32 0, i32 12
  %10 = getelementptr inbounds %struct.fimc_isp, ptr %8, i32 0, i32 12, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @media_pipeline_start(ptr noundef %9, ptr noundef %11) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %118, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.fimc_isp, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false) #8, !annotation !14
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %5, i8 0, i32 88, i1 false) #8, !annotation !14
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 2
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %19, i32 0, i32 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 1
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 2
  br label %27

27:                                               ; preds = %106, %14
  %28 = phi ptr [ %15, %14 ], [ %68, %106 ]
  %29 = getelementptr inbounds %struct.media_entity, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.media_pad, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %111, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.media_pad, ptr %30, i32 0, i32 2
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  store i32 %38, ptr %18, align 4
  store i32 1, ptr %4, align 4
  %39 = icmp eq ptr %28, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.v4l2_subdev, ptr %28, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %42, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %63, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %44, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %46
  br i1 %20, label %54, label %51

51:                                               ; preds = %50
  %52 = load ptr, ptr %21, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %50
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi ptr [ %48, %54 ], [ %52, %51 ]
  %57 = call i32 %56(ptr noundef nonnull %28, ptr noundef null, ptr noundef nonnull %4) #8
  br label %58

58:                                               ; preds = %55, %35
  %59 = phi i32 [ -19, %35 ], [ %57, %55 ]
  %60 = icmp slt i32 %59, 0
  %61 = icmp ne i32 %59, -515
  %62 = and i1 %60, %61
  br i1 %62, label %110, label %63

63:                                               ; preds = %58, %46, %40
  %64 = call ptr @media_entity_remote_pad(ptr noundef %30) #8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %111, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.media_pad, ptr %64, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %111, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.media_entity, ptr %68, i32 0, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %111

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.media_pad, ptr %64, i32 0, i32 2
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  store i32 %77, ptr %22, align 4
  store i32 1, ptr %5, align 4
  %78 = getelementptr inbounds %struct.v4l2_subdev, ptr %68, i32 0, i32 6
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %79, i32 0, i32 7
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %98, label %83

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %81, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %83
  br i1 %20, label %91, label %88

88:                                               ; preds = %87
  %89 = load ptr, ptr %21, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %87
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi ptr [ %85, %91 ], [ %89, %88 ]
  %94 = call i32 %93(ptr noundef nonnull %68, ptr noundef null, ptr noundef nonnull %5) #8
  %95 = icmp slt i32 %94, 0
  %96 = icmp ne i32 %94, -515
  %97 = and i1 %95, %96
  br i1 %97, label %110, label %98

98:                                               ; preds = %92, %83, %74
  %99 = load i32, ptr %23, align 4
  %100 = load i32, ptr %24, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i32, ptr %16, align 4
  %104 = load i32, ptr %25, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, ptr %17, align 4
  %108 = load i32, ptr %26, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %27, label %110

110:                                              ; preds = %106, %102, %98, %92, %58
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #8
  br label %116

111:                                              ; preds = %70, %66, %63, %27
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #8
  %112 = call i32 @vb2_ioctl_streamon(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.fimc_isp, ptr %8, i32 0, i32 12, i32 10
  store i32 1, ptr %115, align 8
  br label %118

116:                                              ; preds = %111, %110
  %117 = phi i32 [ %112, %111 ], [ -32, %110 ]
  call void @media_pipeline_stop(ptr noundef %9) #8
  br label %118

118:                                              ; preds = %116, %114, %3
  %119 = phi i32 [ %117, %116 ], [ 0, %114 ], [ %12, %3 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isp_video_streamoff(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @vb2_ioctl_streamoff(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.fimc_isp, ptr %6, i32 0, i32 12
  tail call void @media_pipeline_stop(ptr noundef %10) #8
  %11 = getelementptr inbounds %struct.fimc_isp, ptr %6, i32 0, i32 12, i32 10
  store i32 0, ptr %11, align 8
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ 0, %9 ], [ %7, %3 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fimc_vidioc_querycap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 2155279474}
!9 = !{i64 2147879967}
!10 = !{i64 378277, i64 2147868248, i64 2147868274, i64 2147868321, i64 2147868343, i64 2147868371, i64 2147868391}
!11 = !{i64 364846, i64 364871, i64 364893, i64 364909, i64 364921, i64 364941, i64 364965, i64 364981, i64 364993}
!12 = !{i64 2147880093}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"auto-init"}
