; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/fimc-capture.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-capture.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.fimc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, [2 x ptr], ptr, %struct.wait_queue_head, ptr, %struct.fimc_m2m_device, %struct.fimc_vid_cap, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fimc_m2m_device = type { %struct.video_device, ptr, ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
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
%struct.fimc_vid_cap = type { ptr, %struct.v4l2_subdev, %struct.exynos_video_entity, %struct.media_pad, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, %struct.fimc_source_info, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i8, i32, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.fimc_source_info = type { i32, i32, i16, i16 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.fimc_pipeline = type { %struct.exynos_media_pipeline, %struct.list_head, ptr, [5 x ptr] }
%struct.exynos_media_pipeline = type { %struct.media_pipeline, ptr }
%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_frame, i32, i32, i32, i32, i32, i32, %struct.fimc_scaler, %struct.fimc_effect, i32, i8, i32, i32, ptr, %struct.v4l2_fh, %struct.fimc_ctrls }
%struct.fimc_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], %struct.fimc_addr, %struct.fimc_dma_offset, ptr, i8 }
%struct.fimc_addr = type { i32, i32, i32 }
%struct.fimc_dma_offset = type { i32, i32, i32, i32, i32, i32 }
%struct.fimc_scaler = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fimc_effect = type { i32, i8, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.fimc_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.100, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fimc_drvdata = type { [4 x ptr], i32, i32, i8, i8, i8, i8 }
%struct.exynos_media_pipeline_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fimc_vid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.fimc_addr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.fimc_md = type { [2 x %struct.fimc_csis_info], [4 x %struct.fimc_sensor_info], i32, [2 x %struct.fimc_camclk_info], [2 x ptr], [3 x ptr], [4 x ptr], ptr, i8, ptr, %struct.media_device, %struct.v4l2_device, ptr, %struct.cam_clk_provider, %struct.v4l2_async_notifier, i8, %struct.spinlock, %struct.list_head, %struct.media_graph }
%struct.fimc_csis_info = type { ptr, i32 }
%struct.fimc_sensor_info = type { %struct.fimc_source_info, ptr, ptr, ptr }
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
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.fimc_variant = type { i8, ptr, i16, i16, i16, i16 }
%struct.fimc_pix_limit = type { i16, i16, i16, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.v4l2_format = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.78, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.78 = type { i8 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_mbus_frame_desc = type { [4 x %struct.v4l2_mbus_frame_desc_entry], i16 }
%struct.v4l2_mbus_frame_desc_entry = type { i32, i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }

@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@fimc_subdev_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_subdev_pad_ops }, align 4
@.str = private unnamed_addr constant [8 x i8] c"FIMC.%d\00", align 1
@fimc_sd_media_ops = internal constant %struct.media_entity_operations { ptr null, ptr @fimc_link_setup, ptr null }, align 4
@fimc_capture_sd_internal_ops = internal constant %struct.v4l2_subdev_internal_ops { ptr @fimc_capture_subdev_registered, ptr @fimc_capture_subdev_unregistered, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"\013%s: stream on failed: %d\0A\00", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@fimc_subdev_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr null, ptr @fimc_subdev_enum_mbus_code, ptr null, ptr null, ptr @fimc_subdev_get_fmt, ptr @fimc_subdev_set_fmt, ptr @fimc_subdev_get_selection, ptr @fimc_subdev_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"drivers/media/platform/exynos4-is/fimc-capture.c\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"include/media/v4l2-subdev.h\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fimc.%d.capture\00", align 1
@fimc_capture_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @fimc_capture_open, ptr @fimc_capture_release }, align 4
@fimc_capture_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @fimc_cap_querycap, ptr @fimc_cap_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_cap_g_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_cap_s_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_cap_try_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_cap_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @fimc_cap_streamon, ptr @fimc_cap_streamoff, ptr null, ptr null, ptr null, ptr @fimc_cap_enum_input, ptr @fimc_cap_g_input, ptr @fimc_cap_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_cap_g_selection, ptr @fimc_cap_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fimc_capture_qops = internal constant %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"\016%s: Registered %s as /dev/%s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.7 = private unnamed_addr constant [35 x i8] c"\013%s: Unsupported buffer size: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"\013%s: User buffer too small (%ld < %ld)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_capture_irq_handler(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13
  %5 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr %struct.fimc_pipeline, ptr %6, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 14
  %11 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %10) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %14, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %146

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 9
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %40, label %19

19:                                               ; preds = %15
  %20 = load volatile i32, ptr %10, align 4
  %21 = and i32 %20, 64
  %22 = icmp ne i32 %21, 0
  %23 = icmp ne i32 %1, 0
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %17, i32 -640
  %27 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  %31 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 11
  %32 = load i32, ptr %31, align 8
  %33 = add i32 %32, -1
  store i32 %33, ptr %31, align 8
  %34 = tail call i64 @ktime_get() #12
  %35 = getelementptr i8, ptr %17, i32 -616
  store i64 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 13
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 8
  %39 = getelementptr i8, ptr %17, i32 -272
  store i32 %37, ptr %39, align 8
  tail call void @vb2_buffer_done(ptr noundef %26, i32 noundef 5) #12
  br label %40

40:                                               ; preds = %25, %19, %15
  %41 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 8
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %63, label %44

44:                                               ; preds = %40
  %45 = getelementptr %struct.list_head, ptr %42, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %42, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %42, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %45, align 4
  %49 = getelementptr i8, ptr %42, i32 8
  %50 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 12
  %51 = load i32, ptr %50, align 4
  tail call void @fimc_hw_set_output_addr(ptr noundef %0, ptr noundef %49, i32 noundef %51) #12
  %52 = load i32, ptr %50, align 4
  %53 = getelementptr i8, ptr %42, i32 20
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 9, i32 1
  %55 = load ptr, ptr %54, align 4
  store ptr %42, ptr %54, align 4
  store ptr %16, ptr %42, align 4
  store ptr %55, ptr %45, align 4
  store volatile ptr %42, ptr %55, align 4
  %56 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 11
  %57 = load i32, ptr %56, align 8
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8
  %59 = load i32, ptr %50, align 4
  %60 = add i32 %59, 1
  %61 = icmp sgt i32 %60, 3
  %62 = select i1 %61, i32 0, i32 %60
  store i32 %62, ptr %50, align 4
  br label %63

63:                                               ; preds = %44, %40
  %64 = getelementptr inbounds %struct.fimc_ctx, ptr %9, i32 0, i32 1, i32 12
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.fimc_fmt, ptr %65, i32 0, i32 7
  %67 = load i16, ptr %66, align 4
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %112, label %69

69:                                               ; preds = %63
  %70 = load volatile ptr, ptr %16, align 4
  %71 = icmp eq ptr %70, %16
  br i1 %71, label %112, label %72

72:                                               ; preds = %69
  %73 = tail call i16 @llvm.cttz.i16(i16 %67, i1 true), !range !8
  %74 = zext i16 %73 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %75 = getelementptr %struct.fimc_ctx, ptr %9, i32 0, i32 1, i32 8, i32 %74
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %3, align 4
  %77 = tail call i32 @fimc_hw_get_frame_index(ptr noundef %0) #12
  br label %78

78:                                               ; preds = %82, %72
  %79 = phi ptr [ %16, %72 ], [ %80, %82 ]
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %16
  br i1 %81, label %111, label %82

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %80, i32 20
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %77
  br i1 %85, label %86, label %78

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %80, i32 -640
  %88 = tail call ptr @vb2_plane_vaddr(ptr noundef %87, i32 noundef %74) #12
  %89 = icmp eq ptr %8, null
  br i1 %89, label %111, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %111, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %94, i32 0, i32 17
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %111, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %101, i32 0, i32 17
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %100
  br label %108

108:                                              ; preds = %107, %103
  %109 = phi ptr [ %98, %107 ], [ %105, %103 ]
  %110 = call i32 %109(ptr noundef nonnull %8, ptr noundef %88, ptr noundef nonnull %3) #12
  br label %111

111:                                              ; preds = %108, %96, %90, %86, %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %112

112:                                              ; preds = %111, %69, %63
  %113 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 11
  %114 = load i32, ptr %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = icmp eq i32 %1, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %116
  call void @_clear_bit(i32 noundef 6, ptr noundef %10) #12
  br label %119

119:                                              ; preds = %118, %116
  %120 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 12
  %121 = load i32, ptr %120, align 4
  %122 = add i32 %121, 1
  %123 = icmp sgt i32 %122, 3
  %124 = select i1 %123, i32 0, i32 %122
  store i32 %124, ptr %120, align 4
  br label %126

125:                                              ; preds = %112
  call void @_set_bit(i32 noundef 6, ptr noundef %10) #12
  br label %126

126:                                              ; preds = %125, %119
  %127 = load volatile i32, ptr %10, align 4
  %128 = and i32 %127, 4096
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %146, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %4, align 8
  %132 = getelementptr inbounds %struct.fimc_ctx, ptr %131, i32 0, i32 14
  %133 = load ptr, ptr %132, align 4
  call void @fimc_hw_set_camera_offset(ptr noundef %133, ptr noundef %131) #12
  %134 = call i32 @fimc_set_scaler_info(ptr noundef %131) #12
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  call void @fimc_hw_set_prescaler(ptr noundef %131) #12
  call void @fimc_hw_set_mainscaler(ptr noundef %131) #12
  call void @fimc_hw_set_target_format(ptr noundef %131) #12
  call void @fimc_hw_set_rotation(ptr noundef %131) #12
  call void @fimc_hw_set_effect(ptr noundef %131) #12
  %137 = getelementptr inbounds %struct.fimc_ctx, ptr %131, i32 0, i32 1
  call void @fimc_prepare_dma_offset(ptr noundef %131, ptr noundef %137) #12
  call void @fimc_hw_set_out_dma(ptr noundef %131) #12
  %138 = getelementptr inbounds %struct.fimc_dev, ptr %133, i32 0, i32 6
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.fimc_drvdata, ptr %139, i32 0, i32 5
  %141 = load i8, ptr %140, align 2
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %136
  call void @fimc_hw_set_rgb_alpha(ptr noundef %131) #12
  br label %144

144:                                              ; preds = %143, %136
  %145 = getelementptr inbounds %struct.fimc_dev, ptr %133, i32 0, i32 14
  call void @_clear_bit(i32 noundef 12, ptr noundef %145) #12
  br label %146

146:                                              ; preds = %144, %130, %126, %13
  %147 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 11
  %148 = load i32, ptr %147, align 8
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  call void @fimc_deactivate_capture(ptr noundef %0) #12
  call void @_clear_bit(i32 noundef 7, ptr noundef %10) #12
  br label %151

151:                                              ; preds = %150, %146
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_output_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_hw_get_frame_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_deactivate_capture(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_capture_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 14
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 2048
  %5 = icmp ne i32 %4, 0
  %6 = tail call fastcc i32 @fimc_stop_capture(ptr noundef %0, i1 noundef zeroext %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 2
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 2, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef nonnull %13) #12
  br label %25

25:                                               ; preds = %23, %19, %15, %11, %8, %1
  %26 = phi i32 [ %6, %1 ], [ -2, %11 ], [ -2, %8 ], [ %24, %23 ], [ -515, %19 ], [ -515, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_stop_capture(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 96
  %8 = icmp eq i32 %7, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #12
  br i1 %8, label %36, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  tail call void @_set_bit(i32 noundef 10, ptr noundef %5) #12
  tail call void @fimc_deactivate_capture(ptr noundef %0) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %10) #12
  %11 = load volatile i32, ptr %5, align 4
  %12 = and i32 %11, 1024
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #12
  %15 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 10
  %16 = call i32 @prepare_to_wait_event(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 2) #12
  %17 = load volatile i32, ptr %5, align 4
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %20, %14
  %21 = phi i32 [ %30, %20 ], [ 20, %14 ]
  %22 = call i32 @schedule_timeout(i32 noundef %21) #12
  %23 = call i32 @prepare_to_wait_event(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 2) #12
  %24 = load volatile i32, ptr %5, align 4
  %25 = and i32 %24, 1024
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = icmp ne i32 %22, 0
  %29 = select i1 %26, i1 true, i1 %28
  %30 = select i1 %29, i32 %22, i32 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %27, i1 true, i1 %31
  br i1 %32, label %33, label %20

33:                                               ; preds = %20, %14
  call void @finish_wait(ptr noundef %15, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #12
  br label %34

34:                                               ; preds = %33, %9
  %35 = call fastcc i32 @fimc_capture_state_cleanup(ptr noundef %0, i1 noundef zeroext %1)
  br label %36

36:                                               ; preds = %34, %2
  %37 = phi i32 [ %35, %34 ], [ 0, %2 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_capture_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 2
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 14
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %3) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %44, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 9
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 9, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 12
  store i32 0, ptr %9, align 4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 2, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %17, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef nonnull %13, ptr noundef nonnull %2, i1 noundef zeroext false) #12
  br label %25

25:                                               ; preds = %23, %19, %15, %11, %6
  %26 = tail call fastcc i32 @fimc_capture_hw_init(ptr noundef %0)
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %3) #12
  %27 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 8
  %28 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 14
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %35, %25
  %32 = phi i32 [ %41, %35 ], [ 0, %25 ]
  %33 = load volatile ptr, ptr %27, align 4
  %34 = icmp eq ptr %33, %27
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %33, i32 -640
  %37 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %33, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %33, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  tail call void @buffer_queue(ptr noundef %36)
  %41 = add nuw i32 %32, 1
  %42 = load i32, ptr %28, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %31, label %44

44:                                               ; preds = %35, %31, %25, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_capture_hw_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 7
  %4 = load ptr, ptr %2, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fimc_frame, ptr %4, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %3, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = tail call i32 @fimc_hw_camblk_cfg_writeback(ptr noundef %0) #12
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %13, %10
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %18 = getelementptr inbounds %struct.fimc_ctx, ptr %4, i32 0, i32 1
  tail call void @fimc_prepare_dma_offset(ptr noundef nonnull %4, ptr noundef %18) #12
  tail call void @fimc_set_yuv_order(ptr noundef nonnull %4) #12
  %19 = tail call i32 @fimc_hw_set_camera_polarity(ptr noundef %0, ptr noundef %3) #12
  %20 = tail call i32 @fimc_hw_set_camera_type(ptr noundef %0, ptr noundef %3) #12
  %21 = tail call i32 @fimc_hw_set_camera_source(ptr noundef %0, ptr noundef %3) #12
  tail call void @fimc_hw_set_camera_offset(ptr noundef %0, ptr noundef nonnull %4) #12
  %22 = tail call i32 @fimc_set_scaler_info(ptr noundef nonnull %4) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  tail call void @fimc_hw_set_input_path(ptr noundef nonnull %4) #12
  tail call void @fimc_hw_set_prescaler(ptr noundef nonnull %4) #12
  tail call void @fimc_hw_set_mainscaler(ptr noundef nonnull %4) #12
  tail call void @fimc_hw_set_target_format(ptr noundef nonnull %4) #12
  tail call void @fimc_hw_set_rotation(ptr noundef nonnull %4) #12
  tail call void @fimc_hw_set_effect(ptr noundef nonnull %4) #12
  tail call void @fimc_hw_set_output_path(ptr noundef nonnull %4) #12
  tail call void @fimc_hw_set_out_dma(ptr noundef nonnull %4) #12
  %25 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 6
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.fimc_drvdata, ptr %26, i32 0, i32 5
  %28 = load i8, ptr %27, align 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @fimc_hw_set_rgb_alpha(ptr noundef nonnull %4) #12
  br label %31

31:                                               ; preds = %30, %24
  %32 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %32) #12
  br label %33

33:                                               ; preds = %31, %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %17) #12
  br label %34

34:                                               ; preds = %33, %13, %6, %1
  %35 = phi i32 [ %22, %33 ], [ -22, %6 ], [ -22, %1 ], [ %14, %13 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_ctx, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %9 = getelementptr inbounds %struct.fimc_ctx, ptr %4, i32 0, i32 1
  %10 = getelementptr inbounds %struct.fimc_vid_buffer, ptr %0, i32 0, i32 2
  %11 = tail call i32 @fimc_prepare_addr(ptr noundef %4, ptr noundef %0, ptr noundef %9, ptr noundef %10) #12
  %12 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 14
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %1
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 11
  %22 = load i32, ptr %21, align 8
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 14
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 12
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %30, %28 ], [ -1, %24 ]
  tail call void @fimc_hw_set_output_addr(ptr noundef %6, ptr noundef %10, i32 noundef %32) #12
  %33 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fimc_vid_buffer, ptr %0, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.fimc_vid_buffer, ptr %0, i32 0, i32 1
  %37 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 9
  %38 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 9, i32 1
  %39 = load ptr, ptr %38, align 4
  store ptr %36, ptr %38, align 4
  store ptr %37, ptr %36, align 4
  %40 = getelementptr inbounds %struct.fimc_vid_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %36, ptr %39, align 4
  %41 = load i32, ptr %21, align 8
  %42 = add i32 %41, 1
  store i32 %42, ptr %21, align 8
  %43 = load i32, ptr %33, align 4
  %44 = add i32 %43, 1
  %45 = icmp sgt i32 %44, 3
  %46 = select i1 %45, i32 0, i32 %44
  store i32 %46, ptr %33, align 4
  br label %53

47:                                               ; preds = %20, %16, %1
  %48 = getelementptr inbounds %struct.fimc_vid_buffer, ptr %0, i32 0, i32 1
  %49 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 8
  %50 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 8, i32 1
  %51 = load ptr, ptr %50, align 4
  store ptr %48, ptr %50, align 4
  store ptr %49, ptr %48, align 4
  %52 = getelementptr inbounds %struct.fimc_vid_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %51, ptr %52, align 4
  store volatile ptr %48, ptr %51, align 4
  br label %53

53:                                               ; preds = %47, %31
  %54 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 10, i32 28
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, 1
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %93, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 14
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %60, 1
  %62 = select i1 %61, i32 2, i32 1
  %63 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 11
  %64 = load i32, ptr %63, align 8
  %65 = icmp slt i32 %64, %62
  br i1 %65, label %93, label %66

66:                                               ; preds = %58
  %67 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %12) #12
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %66
  tail call void @fimc_activate_capture(ptr noundef %4) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %8) #12
  %70 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %12) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %69
  %73 = icmp eq ptr %7, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 2, i32 1
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %89, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %76, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %80, i32 0, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = tail call i32 %84(ptr noundef nonnull %76, i1 noundef zeroext true) #12
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86, %82, %78, %74, %72
  %90 = phi i32 [ %87, %86 ], [ -515, %78 ], [ -515, %82 ], [ -2, %72 ], [ -2, %74 ]
  %91 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 2, i32 0, i32 12
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %91, i32 noundef %90) #13
  br label %94

93:                                               ; preds = %66, %58, %53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %8) #12
  br label %94

94:                                               ; preds = %93, %89, %86, %69
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_sensor_notify(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr i8, ptr %8, i32 -192
  %11 = select i1 %9, ptr null, ptr %10
  %12 = getelementptr inbounds %struct.fimc_md, ptr %11, i32 0, i32 16
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #12
  %14 = icmp eq ptr %7, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.fimc_sensor_info, ptr %7, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ne ptr %17, null
  %19 = icmp ne ptr %2, null
  %20 = and i1 %19, %18
  %21 = icmp eq i32 %1, 25856
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %53

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.fimc_dev, ptr %17, i32 0, i32 14
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %17) #12
  %30 = getelementptr inbounds %struct.fimc_dev, ptr %17, i32 0, i32 13, i32 9
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %52, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %2, align 4
  %35 = getelementptr i8, ptr %31, i32 -624
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = getelementptr i8, ptr %31, i32 -552
  %40 = load i32, ptr %39, align 8
  %41 = icmp ult i32 %40, %34
  %42 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !10

45:                                               ; preds = %38
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %46

46:                                               ; preds = %45, %38
  br i1 %41, label %47, label %49

47:                                               ; preds = %46
  %48 = load i32, ptr %39, align 8
  br label %49

49:                                               ; preds = %47, %46
  %50 = phi i32 [ %48, %47 ], [ %34, %46 ]
  %51 = getelementptr i8, ptr %31, i32 -556
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %49, %33, %28
  tail call void @fimc_capture_irq_handler(ptr noundef nonnull %17, i32 noundef 1)
  tail call void @fimc_deactivate_capture(ptr noundef nonnull %17) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %17, i32 noundef %29) #12
  br label %53

53:                                               ; preds = %52, %23, %15, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #12
  br label %54

54:                                               ; preds = %53, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_initialize_capture_subdev(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 1
  tail call void @v4l2_subdev_init(ptr noundef %2, ptr noundef nonnull @fimc_subdev_ops) #12
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 1, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 4
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 1, i32 9
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %6, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %8)
  %10 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 4
  %11 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 4, i32 0, i32 4
  store i32 1, ptr %11, align 4
  %12 = getelementptr %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 4, i32 1, i32 4
  store i32 1, ptr %12, align 4
  %13 = getelementptr %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 4, i32 2, i32 4
  store i32 2, ptr %13, align 4
  %14 = tail call i32 @media_entity_pads_init(ptr noundef %2, i16 noundef zeroext 3, ptr noundef %10) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 1, i32 0, i32 11
  store ptr @fimc_sd_media_ops, ptr %17, align 4
  %18 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 1, i32 0, i32 3
  store i32 16389, ptr %18, align 4
  %19 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 1, i32 7
  store ptr @fimc_capture_sd_internal_ops, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 1, i32 11
  store ptr %0, ptr %20, align 4
  br label %21

21:                                               ; preds = %16, %1
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_unregister_capture_subdev(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 1, i32 11
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_camera_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_set_scaler_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_prescaler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_mainscaler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_target_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_rotation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_effect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_prepare_dma_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_out_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_rgb_alpha(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_capture_state_cleanup(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, -1985
  %9 = and i32 %5, -2017
  %10 = or i32 %8, 512
  %11 = select i1 %1, i32 %10, i32 %9
  store i32 %11, ptr %4, align 8
  br i1 %1, label %25, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 8
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %25, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %23, %16 ], [ %14, %12 ]
  %18 = getelementptr i8, ptr %17, i32 -640
  %19 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  tail call void @vb2_buffer_done(ptr noundef %18, i32 noundef 6) #12
  %23 = load volatile ptr, ptr %13, align 4
  %24 = icmp eq ptr %23, %13
  br i1 %24, label %25, label %16

25:                                               ; preds = %16, %12, %2
  %26 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 9
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 11
  %31 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 8
  %32 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 8, i32 1
  br label %33

33:                                               ; preds = %45, %29
  %34 = phi ptr [ %27, %29 ], [ %46, %45 ]
  %35 = getelementptr %struct.list_head, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %34, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %34, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  %39 = load i32, ptr %30, align 8
  %40 = add i32 %39, -1
  store i32 %40, ptr %30, align 8
  br i1 %1, label %41, label %43

41:                                               ; preds = %33
  %42 = load ptr, ptr %32, align 4
  store ptr %34, ptr %32, align 4
  store ptr %31, ptr %34, align 4
  store ptr %42, ptr %35, align 4
  store volatile ptr %34, ptr %42, align 4
  br label %45

43:                                               ; preds = %33
  %44 = getelementptr i8, ptr %34, i32 -640
  tail call void @vb2_buffer_done(ptr noundef %44, i32 noundef 6) #12
  br label %45

45:                                               ; preds = %43, %41
  %46 = load volatile ptr, ptr %26, align 4
  %47 = icmp eq ptr %46, %26
  br i1 %47, label %48, label %33

48:                                               ; preds = %45, %25
  tail call void @fimc_hw_reset(ptr noundef %0) #12
  %49 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 12
  store i32 0, ptr %49, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #12
  br i1 %7, label %67, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 2
  %52 = icmp eq ptr %51, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 2, i32 1
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %55, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %59, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call i32 %63(ptr noundef nonnull %55, i1 noundef zeroext false) #12
  br label %67

67:                                               ; preds = %65, %61, %57, %53, %50, %48
  %68 = phi i32 [ -2, %53 ], [ -2, %50 ], [ %66, %65 ], [ -515, %61 ], [ -515, %57 ], [ 0, %48 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_hw_camblk_cfg_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_set_yuv_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_hw_set_camera_polarity(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_hw_set_camera_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_hw_set_camera_source(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_input_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_output_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_prepare_addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_activate_capture(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_subdev_enum_mbus_code(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @fimc_find_format(ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef %5) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ 0, %8 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_subdev_get_fmt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %18, label %17, !prof !11

17:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %18

18:                                               ; preds = %17, %10
  %19 = phi i32 [ 0, %17 ], [ %12, %10 ]
  %20 = load ptr, ptr %1, align 4
  %21 = getelementptr %struct.v4l2_subdev_pad_config, ptr %20, i32 %19
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %22, ptr noundef align 4 dereferenceable(48) %21, i32 48, i1 false)
  br label %48

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %25 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %25) #12
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %44 [
    i32 2, label %28
    i32 1, label %42
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.fimc_frame, ptr %7, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !10

32:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1489, i32 noundef 9, ptr noundef null) #12
  br label %36

33:                                               ; preds = %28
  %34 = load i32, ptr %30, align 4
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %33, %32
  %37 = getelementptr inbounds %struct.fimc_frame, ptr %7, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %24, align 4
  %39 = getelementptr inbounds %struct.fimc_frame, ptr %7, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  store i32 %40, ptr %41, align 4
  br label %46

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %24, ptr noundef align 8 dereferenceable(48) %43, i32 48, i1 false)
  br label %46

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %24, ptr noundef align 8 dereferenceable(48) %45, i32 48, i1 false)
  br label %46

46:                                               ; preds = %44, %42, %36
  tail call void @mutex_unlock(ptr noundef %25) #12
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 7, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_subdev_set_fmt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 10, i32 21
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %100

16:                                               ; preds = %12, %3
  %17 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %17) #12
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %20 = load i32, ptr %9, align 4
  %21 = tail call fastcc ptr @fimc_capture_try_format(ptr noundef %8, ptr noundef %6, ptr noundef %18, ptr noundef %19, ptr noundef null, i32 noundef %20)
  tail call void @mutex_unlock(ptr noundef %17) #12
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 7, ptr %22, align 4
  %23 = load i32, ptr %2, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load i32, ptr %9, align 4
  %27 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %32, label %31, !prof !11

31:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 998, i32 noundef 9, ptr noundef null) #12
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i32 [ 0, %31 ], [ %26, %25 ]
  %34 = load ptr, ptr %1, align 4
  %35 = getelementptr %struct.v4l2_subdev_pad_config, ptr %34, i32 %33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %35, ptr noundef align 4 dereferenceable(48) %6, i32 48, i1 false)
  br label %100

36:                                               ; preds = %16
  %37 = icmp eq ptr %21, null
  br i1 %37, label %38, label %39, !prof !10

38:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1539, i32 noundef 9, ptr noundef null) #12
  br label %100

39:                                               ; preds = %36
  tail call void @fimc_alpha_ctrl_update(ptr noundef %8) #12
  %40 = getelementptr inbounds %struct.fimc_fmt, ptr %21, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 384
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.fimc_ctx, ptr %8, i32 0, i32 8
  %45 = load i8, ptr %44, align 4
  %46 = select i1 %43, i8 8, i8 0
  %47 = and i8 %45, -9
  %48 = or i8 %46, %47
  store i8 %48, ptr %44, align 4
  tail call void @fimc_ctrls_activate(ptr noundef %8, i1 noundef zeroext %43) #12
  %49 = getelementptr inbounds %struct.fimc_ctx, ptr %8, i32 0, i32 14
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.fimc_dev, ptr %50, i32 0, i32 14
  br i1 %43, label %53, label %52

52:                                               ; preds = %39
  tail call void @_set_bit(i32 noundef 13, ptr noundef %51) #12
  br label %54

53:                                               ; preds = %39
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %51) #12
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, ptr %9, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.fimc_ctx, ptr %8, i32 0, i32 1
  %59 = getelementptr inbounds %struct.fimc_frame, ptr %8, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %6, align 4
  %61 = getelementptr inbounds %struct.fimc_frame, ptr %8, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %18, align 4
  br label %63

63:                                               ; preds = %57, %54
  %64 = phi ptr [ %58, %57 ], [ %8, %54 ]
  tail call void @mutex_lock(ptr noundef %17) #12
  %65 = load i32, ptr %6, align 4
  %66 = load i32, ptr %18, align 4
  %67 = getelementptr inbounds %struct.fimc_frame, ptr %64, i32 0, i32 2
  store i32 %65, ptr %67, align 4
  %68 = getelementptr inbounds %struct.fimc_frame, ptr %64, i32 0, i32 3
  store i32 %66, ptr %68, align 4
  store i32 %65, ptr %64, align 4
  %69 = getelementptr inbounds %struct.fimc_frame, ptr %64, i32 0, i32 1
  store i32 %66, ptr %69, align 4
  %70 = load i32, ptr %9, align 4
  switch i32 %70, label %77 [
    i32 1, label %71
    i32 0, label %73
  ]

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 6
  br label %75

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 5
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %74, %73 ], [ %72, %71 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %76, ptr noundef align 4 dereferenceable(48) %6, i32 48, i1 false)
  br label %77

77:                                               ; preds = %75, %63
  %78 = getelementptr inbounds %struct.fimc_frame, ptr %64, i32 0, i32 12
  store ptr %21, ptr %78, align 4
  %79 = load i32, ptr %9, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.fimc_ctx, ptr %8, i32 0, i32 13
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %81, %77
  %87 = load i32, ptr %6, align 4
  %88 = load i32, ptr %18, align 4
  %89 = getelementptr inbounds %struct.fimc_frame, ptr %64, i32 0, i32 4
  store i32 0, ptr %89, align 4
  %90 = getelementptr inbounds %struct.fimc_frame, ptr %64, i32 0, i32 5
  store i32 0, ptr %90, align 4
  %91 = getelementptr inbounds %struct.fimc_frame, ptr %64, i32 0, i32 6
  store i32 %87, ptr %91, align 4
  %92 = getelementptr inbounds %struct.fimc_frame, ptr %64, i32 0, i32 7
  store i32 %88, ptr %92, align 4
  %93 = load i32, ptr %9, align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %99, label %95

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.fimc_ctx, ptr %8, i32 0, i32 13
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, -3
  store i32 %98, ptr %96, align 4
  br label %99

99:                                               ; preds = %95, %86, %81
  tail call void @mutex_unlock(ptr noundef %17) #12
  br label %100

100:                                              ; preds = %99, %38, %32, %12
  %101 = phi i32 [ 0, %32 ], [ -22, %38 ], [ 0, %99 ], [ -16, %12 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_subdev_get_selection(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %70, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %68 [
    i32 258, label %16
    i32 2, label %18
    i32 0, label %27
    i32 256, label %38
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fimc_ctx, ptr %7, i32 0, i32 1
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %7, %12 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.fimc_frame, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fimc_frame, ptr %19, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  store i32 %24, ptr %25, align 4
  store i32 0, ptr %8, align 4
  %26 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  store i32 0, ptr %26, align 4
  br label %68

27:                                               ; preds = %12
  %28 = load i32, ptr %9, align 4
  %29 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %34, label %33, !prof !11

33:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1016, i32 noundef 9, ptr noundef null) #12
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i32 [ 0, %33 ], [ %28, %27 ]
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr %struct.v4l2_subdev_pad_config, ptr %36, i32 %35, i32 1
  br label %50

38:                                               ; preds = %12
  %39 = load i32, ptr %9, align 4
  %40 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %45, label %44, !prof !11

44:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1034, i32 noundef 9, ptr noundef null) #12
  br label %45

45:                                               ; preds = %44, %38
  %46 = phi i32 [ 0, %44 ], [ %39, %38 ]
  %47 = load ptr, ptr %1, align 4
  %48 = getelementptr %struct.v4l2_subdev_pad_config, ptr %47, i32 %46, i32 2
  %49 = getelementptr inbounds %struct.fimc_ctx, ptr %7, i32 0, i32 1
  br label %50

50:                                               ; preds = %45, %34
  %51 = phi ptr [ %49, %45 ], [ %7, %34 ]
  %52 = phi ptr [ %48, %45 ], [ %37, %34 ]
  %53 = load i32, ptr %2, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %8, ptr noundef align 4 dereferenceable(16) %52, i32 16, i1 false)
  br label %68

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.fimc_frame, ptr %51, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr %8, align 4
  %59 = getelementptr inbounds %struct.fimc_frame, ptr %51, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.fimc_frame, ptr %51, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.fimc_frame, ptr %51, i32 0, i32 7
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  store i32 %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %56, %55, %18, %12
  %69 = phi i32 [ 0, %18 ], [ -22, %12 ], [ 0, %56 ], [ 0, %55 ]
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %70

70:                                               ; preds = %68, %3
  %71 = phi i32 [ -22, %3 ], [ %69, %68 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_subdev_set_selection(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %9 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %68, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #12
  tail call fastcc void @fimc_capture_try_selection(ptr noundef %7, ptr noundef %8, i32 noundef 0)
  %14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %66 [
    i32 0, label %16
    i32 256, label %27
  ]

16:                                               ; preds = %12
  %17 = load i32, ptr %9, align 4
  %18 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %23, label %22, !prof !11

22:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1016, i32 noundef 9, ptr noundef null) #12
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi i32 [ 0, %22 ], [ %17, %16 ]
  %25 = load ptr, ptr %1, align 4
  %26 = getelementptr %struct.v4l2_subdev_pad_config, ptr %25, i32 %24, i32 1
  br label %39

27:                                               ; preds = %12
  %28 = load i32, ptr %9, align 4
  %29 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %34, label %33, !prof !11

33:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1034, i32 noundef 9, ptr noundef null) #12
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i32 [ 0, %33 ], [ %28, %27 ]
  %36 = load ptr, ptr %1, align 4
  %37 = getelementptr %struct.v4l2_subdev_pad_config, ptr %36, i32 %35, i32 2
  %38 = getelementptr inbounds %struct.fimc_ctx, ptr %7, i32 0, i32 1
  br label %39

39:                                               ; preds = %34, %23
  %40 = phi ptr [ %38, %34 ], [ %7, %23 ]
  %41 = phi ptr [ %37, %34 ], [ %26, %23 ]
  %42 = load i32, ptr %2, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %41, ptr noundef align 4 dereferenceable(16) %8, i32 16, i1 false)
  br label %66

45:                                               ; preds = %39
  %46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %47 = load i32, ptr %8, align 4
  %48 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.fimc_frame, ptr %40, i32 0, i32 4
  store i32 %47, ptr %54, align 4
  %55 = getelementptr inbounds %struct.fimc_frame, ptr %40, i32 0, i32 5
  store i32 %49, ptr %55, align 4
  %56 = getelementptr inbounds %struct.fimc_frame, ptr %40, i32 0, i32 6
  store i32 %51, ptr %56, align 4
  %57 = getelementptr inbounds %struct.fimc_frame, ptr %40, i32 0, i32 7
  store i32 %53, ptr %57, align 4
  %58 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 12, ptr noundef %58) #12
  %59 = load i32, ptr %14, align 4
  %60 = icmp eq i32 %59, 256
  br i1 %60, label %61, label %65

61:                                               ; preds = %45
  %62 = getelementptr inbounds %struct.fimc_ctx, ptr %7, i32 0, i32 13
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 2
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %61, %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %46) #12
  br label %66

66:                                               ; preds = %65, %44, %12
  %67 = phi i32 [ -22, %12 ], [ 0, %65 ], [ 0, %44 ]
  tail call void @mutex_unlock(ptr noundef %13) #12
  br label %68

68:                                               ; preds = %66, %3
  %69 = phi i32 [ -22, %3 ], [ %67, %66 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_find_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fimc_capture_try_format(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fimc_dev, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fimc_variant, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %3, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ne ptr %18, null
  %20 = icmp eq i32 %5, 2
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.fimc_fmt, ptr %18, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 384
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %18, align 4
  store i32 %28, ptr %3, align 4
  br label %29

29:                                               ; preds = %27, %22, %16, %6
  %30 = icmp eq ptr %4, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %4, align 4
  %33 = icmp ne i32 %32, 1195724874
  %34 = icmp eq i32 %5, 2
  %35 = and i1 %34, %33
  %36 = select i1 %35, i32 7, i32 1
  br label %37

37:                                               ; preds = %31, %29
  %38 = phi i32 [ 1, %29 ], [ %36, %31 ]
  %39 = icmp eq i32 %5, 1
  %40 = select i1 %39, i32 32, i32 %38
  %41 = tail call ptr @fimc_find_format(ptr noundef %4, ptr noundef %3, i32 noundef %40, i32 noundef 0) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !10

43:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 587, i32 noundef 9, ptr noundef null) #12
  br label %138

44:                                               ; preds = %37
  br i1 %15, label %47, label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %41, align 4
  store i32 %46, ptr %3, align 4
  br label %47

47:                                               ; preds = %45, %44
  br i1 %30, label %51, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.fimc_fmt, ptr %41, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr %4, align 4
  br label %51

51:                                               ; preds = %48, %47
  %52 = icmp eq i32 %5, 2
  %53 = getelementptr inbounds %struct.fimc_fmt, ptr %41, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 384
  %56 = icmp eq i32 %55, 0
  br i1 %52, label %67, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.fimc_pix_limit, ptr %14, i32 0, i32 1
  %59 = select i1 %56, ptr %14, ptr %58
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = load i32, ptr %1, align 4
  %63 = tail call i32 @llvm.umax.i32(i32 %62, i32 32)
  %64 = load i32, ptr %2, align 4
  %65 = tail call i32 @llvm.umax.i32(i32 %64, i32 32)
  %66 = select i1 %56, i32 1, i32 3
  tail call void @v4l_bound_align_image(ptr noundef %1, i32 noundef %63, i32 noundef %61, i32 noundef 4, ptr noundef %2, i32 noundef %65, i32 noundef 8192, i32 noundef %66, i32 noundef 0) #12
  br label %138

67:                                               ; preds = %51
  br i1 %56, label %72, label %68

68:                                               ; preds = %67
  %69 = load i32, ptr %0, align 4
  store i32 %69, ptr %1, align 4
  %70 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  store i32 %71, ptr %2, align 4
  br label %138

72:                                               ; preds = %67
  switch i32 %8, label %75 [
    i32 270, label %73
    i32 90, label %73
  ]

73:                                               ; preds = %72, %72
  %74 = getelementptr inbounds %struct.fimc_pix_limit, ptr %14, i32 0, i32 4
  br label %77

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.fimc_pix_limit, ptr %14, i32 0, i32 5
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi ptr [ %74, %73 ], [ %76, %75 ]
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 13
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 4
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, %87
  %91 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 7
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, %92
  br label %100

96:                                               ; preds = %77
  %97 = getelementptr inbounds %struct.fimc_variant, ptr %12, i32 0, i32 3
  %98 = load i16, ptr %97, align 2
  %99 = zext i16 %98 to i32
  br label %100

100:                                              ; preds = %96, %85
  %101 = phi i32 [ %95, %85 ], [ %99, %96 ]
  %102 = phi i32 [ %90, %85 ], [ %99, %96 ]
  %103 = getelementptr inbounds %struct.fimc_variant, ptr %12, i32 0, i32 5
  %104 = load i16, ptr %103, align 2
  %105 = icmp eq i16 %104, 1
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  switch i32 %8, label %107 [
    i32 270, label %111
    i32 90, label %111
  ]

107:                                              ; preds = %106
  %108 = lshr i32 %54, 4
  %109 = and i32 %108, 1
  %110 = xor i32 %109, 1
  br label %111

111:                                              ; preds = %107, %106, %106, %100
  %112 = phi i32 [ 3, %106 ], [ %110, %107 ], [ 3, %100 ], [ 3, %106 ]
  %113 = getelementptr inbounds %struct.fimc_fmt, ptr %41, i32 0, i32 4
  %114 = load i16, ptr %113, align 2
  %115 = zext i16 %114 to i32
  %116 = icmp eq i16 %114, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %117, %111
  %118 = phi i32 [ %123, %117 ], [ 0, %111 ]
  %119 = phi i32 [ %124, %117 ], [ 0, %111 ]
  %120 = getelementptr %struct.fimc_fmt, ptr %41, i32 0, i32 6, i32 %119
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = add i32 %118, %122
  %124 = add nuw nsw i32 %119, 1
  %125 = icmp eq i32 %124, %115
  br i1 %125, label %126, label %117

126:                                              ; preds = %117
  %127 = add i32 %123, 7
  %128 = and i32 %127, -8
  br label %129

129:                                              ; preds = %126, %111
  %130 = phi i32 [ 0, %111 ], [ %128, %126 ]
  %131 = getelementptr inbounds %struct.fimc_variant, ptr %12, i32 0, i32 3
  %132 = load i16, ptr %131, align 2
  %133 = tail call i16 @llvm.cttz.i16(i16 %132, i1 true), !range !8
  %134 = zext i16 %133 to i32
  %135 = icmp eq i16 %132, 0
  %136 = select i1 %135, i32 -1, i32 %134
  %137 = udiv i32 64, %130
  tail call void @v4l_bound_align_image(ptr noundef %1, i32 noundef %102, i32 noundef %80, i32 noundef %136, ptr noundef %2, i32 noundef %101, i32 noundef 8192, i32 noundef %112, i32 noundef %137) #12
  br label %138

138:                                              ; preds = %129, %68, %57, %43
  ret ptr %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_alpha_ctrl_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_ctrls_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fimc_capture_try_selection(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fimc_dev, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.fimc_variant, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fimc_fmt, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load i32, ptr %0, align 4
  %20 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i32 0, i32 1
  store i32 0, ptr %24, align 4
  br label %128

25:                                               ; preds = %3
  %26 = icmp eq i32 %2, 256
  br i1 %26, label %27, label %46

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @llvm.cttz.i32(i32 %29, i1 true), !range !12
  %31 = add nsw i32 %30, -2
  %32 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @llvm.cttz.i32(i32 %33, i1 true), !range !12
  %35 = icmp eq i32 %5, 90
  %36 = icmp eq i32 %5, 270
  %37 = or i1 %35, %36
  %38 = select i1 %37, i32 4, i32 1
  %39 = shl nuw nsw i32 1, %31
  %40 = tail call i32 @llvm.smin.i32(i32 %39, i32 64)
  %41 = shl nuw i32 1, %34
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 64)
  %43 = getelementptr inbounds %struct.fimc_variant, ptr %9, i32 0, i32 3
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  br label %73

46:                                               ; preds = %25
  %47 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 12
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.fimc_fmt, ptr %48, i32 0, i32 4
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp eq i16 %52, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %55, %50
  %56 = phi i32 [ %61, %55 ], [ 0, %50 ]
  %57 = phi i32 [ %62, %55 ], [ 0, %50 ]
  %58 = getelementptr %struct.fimc_fmt, ptr %48, i32 0, i32 6, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = add i32 %56, %60
  %62 = add nuw nsw i32 %57, 1
  %63 = icmp eq i32 %62, %53
  br i1 %63, label %64, label %55

64:                                               ; preds = %55
  %65 = add i32 %61, 7
  %66 = and i32 %65, -8
  br label %67

67:                                               ; preds = %64, %50, %46
  %68 = phi i32 [ 0, %46 ], [ 0, %50 ], [ %66, %64 ]
  %69 = udiv i32 64, %68
  %70 = getelementptr inbounds %struct.fimc_variant, ptr %9, i32 0, i32 2
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  br label %73

73:                                               ; preds = %67, %27
  %74 = phi i32 [ %42, %27 ], [ 1, %67 ]
  %75 = phi i32 [ %40, %27 ], [ 1, %67 ]
  %76 = phi i32 [ %38, %27 ], [ 4, %67 ]
  %77 = phi i32 [ 0, %27 ], [ %69, %67 ]
  %78 = phi i32 [ %45, %27 ], [ %72, %67 ]
  %79 = phi i32 [ 0, %27 ], [ %72, %67 ]
  switch i32 %5, label %82 [
    i32 270, label %80
    i32 90, label %80
  ]

80:                                               ; preds = %73, %73
  %81 = getelementptr inbounds %struct.fimc_pix_limit, ptr %11, i32 0, i32 4
  br label %84

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.fimc_pix_limit, ptr %11, i32 0, i32 5
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi ptr [ %81, %80 ], [ %83, %82 ]
  %86 = load i16, ptr %85, align 2
  %87 = zext i16 %86 to i32
  switch i32 %5, label %90 [
    i32 270, label %88
    i32 90, label %88
  ]

88:                                               ; preds = %84, %84
  %89 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 1
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi ptr [ %89, %88 ], [ %0, %84 ]
  %92 = load i32, ptr %91, align 4
  %93 = tail call i32 @llvm.umin.i32(i32 %92, i32 %87)
  %94 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = tail call i32 @llvm.umin.i32(i32 %95, i32 8192)
  br i1 %26, label %97, label %104

97:                                               ; preds = %90
  %98 = load i32, ptr %0, align 4
  %99 = udiv i32 %98, %75
  %100 = tail call i32 @llvm.umin.i32(i32 %93, i32 %99)
  %101 = udiv i32 %95, %74
  %102 = tail call i32 @llvm.umin.i32(i32 %96, i32 %101)
  switch i32 %5, label %104 [
    i32 270, label %103
    i32 90, label %103
  ]

103:                                              ; preds = %97, %97
  br label %104

104:                                              ; preds = %103, %97, %90
  %105 = phi i32 [ %100, %103 ], [ %102, %97 ], [ %79, %90 ]
  %106 = phi i32 [ %102, %103 ], [ %100, %97 ], [ %79, %90 ]
  %107 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i32 0, i32 2
  %108 = tail call i32 @llvm.cttz.i32(i32 %78, i1 true), !range !12
  %109 = icmp eq i32 %78, 0
  %110 = select i1 %109, i32 -1, i32 %108
  %111 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i32 0, i32 3
  tail call void @v4l_bound_align_image(ptr noundef %107, i32 noundef %106, i32 noundef %93, i32 noundef %110, ptr noundef %111, i32 noundef %105, i32 noundef %96, i32 noundef %76, i32 noundef %77) #12
  %112 = load i32, ptr %1, align 4
  %113 = load i32, ptr %0, align 4
  %114 = load i32, ptr %107, align 4
  %115 = sub i32 %113, %114
  %116 = tail call i32 @llvm.umin.i32(i32 %112, i32 %115)
  store i32 %116, ptr %1, align 4
  %117 = getelementptr inbounds %struct.v4l2_rect, ptr %1, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = load i32, ptr %94, align 4
  %120 = load i32, ptr %111, align 4
  %121 = sub i32 %119, %120
  %122 = tail call i32 @llvm.umin.i32(i32 %118, i32 %121)
  store i32 %122, ptr %117, align 4
  %123 = getelementptr inbounds %struct.fimc_variant, ptr %9, i32 0, i32 4
  %124 = load i16, ptr %123, align 4
  %125 = zext i16 %124 to i32
  %126 = sub nsw i32 0, %125
  %127 = and i32 %116, %126
  br label %128

128:                                              ; preds = %104, %18
  %129 = phi i32 [ %127, %104 ], [ 0, %18 ]
  store i32 %129, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_link_setup(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.media_pad, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.media_entity, ptr %9, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = icmp eq ptr %6, null
  br i1 %16, label %17, label %18, !prof !10

17:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1374, i32 noundef 9, ptr noundef null) #12
  br label %42

18:                                               ; preds = %15
  %19 = and i32 %3, 1
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 16
  br i1 %20, label %22, label %23

22:                                               ; preds = %18
  store i32 0, ptr %21, align 4
  br label %42

23:                                               ; preds = %18
  %24 = load i32, ptr %21, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %21, align 4
  %29 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 17
  %30 = load i8, ptr %29, align 8, !range !13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 1
  %34 = tail call ptr @fimc_find_remote_sensor(ptr noundef %33) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %7, align 8
  %38 = getelementptr inbounds %struct.fimc_ctx, ptr %37, i32 0, i32 16
  %39 = getelementptr inbounds %struct.v4l2_subdev, ptr %34, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %38, ptr noundef %40, ptr noundef null, i1 noundef zeroext true) #12
  br label %42

42:                                               ; preds = %36, %32, %26, %23, %22, %17, %11, %4
  %43 = phi i32 [ 0, %17 ], [ %41, %36 ], [ 0, %22 ], [ -22, %11 ], [ -16, %23 ], [ 0, %26 ], [ 0, %32 ], [ -22, %4 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_find_remote_sensor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_capture_subdev_registered(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %106, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @fimc_register_m2m_device(ptr noundef nonnull %3, ptr noundef %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %106

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 1
  store ptr %12, ptr %13, align 8
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 596) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %104, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13
  %21 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 10
  %22 = getelementptr inbounds %struct.fimc_ctx, ptr %17, i32 0, i32 14
  store ptr %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fimc_ctx, ptr %17, i32 0, i32 6
  store i32 1, ptr %23, align 8
  %24 = getelementptr inbounds %struct.fimc_ctx, ptr %17, i32 0, i32 7
  store i32 2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.fimc_ctx, ptr %17, i32 0, i32 13
  store i32 131072, ptr %25, align 8
  %26 = tail call ptr @fimc_find_format(ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 0) #12
  %27 = getelementptr inbounds %struct.fimc_frame, ptr %17, i32 0, i32 12
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.fimc_ctx, ptr %17, i32 0, i32 1, i32 12
  store ptr %26, ptr %28, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(856) %15, i8 0, i32 856, i1 false) #12
  %29 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 12
  %30 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %29, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %31) #12
  %33 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 3
  store ptr @fimc_capture_fops, ptr %33, align 4
  %34 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 24
  store ptr @fimc_capture_ioctl_ops, ptr %34, align 4
  %35 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 7
  store ptr %14, ptr %35, align 4
  %36 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 15
  store i32 -1, ptr %36, align 8
  %37 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 23
  store ptr @video_device_release_empty, ptr %37, align 8
  %38 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 10
  store ptr %21, ptr %38, align 8
  %39 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 1
  %40 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 26
  store ptr %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 4
  store i32 67112960, ptr %41, align 8
  %42 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 5, i32 8
  store ptr %3, ptr %42, align 8
  %43 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 11
  store i32 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 14
  store i32 0, ptr %44, align 4
  store ptr %17, ptr %20, align 8
  %45 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 8
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 8, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 9
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 9, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 10, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(340) %49, i8 0, i32 328, i1 false) #12
  store i32 9, ptr %21, align 4
  %50 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 10, i32 1
  store i32 19, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 10, i32 10
  store ptr %17, ptr %51, align 4
  %52 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 10, i32 7
  store ptr @fimc_capture_qops, ptr %52, align 4
  %53 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 10, i32 8
  store ptr @vb2_dma_contig_memops, ptr %53, align 4
  %54 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 10, i32 12
  store i32 664, ptr %54, align 4
  %55 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 10, i32 13
  store i32 8192, ptr %55, align 4
  %56 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 10, i32 5
  store ptr %39, ptr %56, align 4
  %57 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 10, i32 2
  store ptr %59, ptr %60, align 4
  %61 = tail call i32 @vb2_queue_init(ptr noundef %21) #12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %19
  %64 = tail call ptr @fimc_find_format(ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 0) #12
  %65 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 5
  store i32 640, ptr %65, align 8
  %66 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 5, i32 1
  store i32 480, ptr %66, align 4
  %67 = load i32, ptr %64, align 4
  %68 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 5, i32 2
  store i32 %67, ptr %68, align 8
  %69 = getelementptr inbounds %struct.fimc_frame, ptr %17, i32 0, i32 6
  store i32 640, ptr %69, align 8
  %70 = getelementptr inbounds %struct.fimc_frame, ptr %17, i32 0, i32 7
  store i32 480, ptr %70, align 4
  store ptr %64, ptr %27, align 4
  %71 = tail call ptr @fimc_find_format(ptr noundef null, ptr noundef null, i32 noundef 32, i32 noundef 0) #12
  %72 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %72, ptr noundef align 8 dereferenceable(48) %65, i32 48, i1 false) #12
  %73 = load i32, ptr %71, align 4
  %74 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 6, i32 2
  store i32 %73, ptr %74, align 8
  %75 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 3
  %76 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 3, i32 4
  store i32 1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 0, i32 3
  store i32 16389, ptr %77, align 8
  %78 = tail call i32 @media_entity_pads_init(ptr noundef %15, i16 noundef zeroext 1, ptr noundef %75) #12
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %63
  %81 = tail call i32 @fimc_ctrls_create(ptr noundef nonnull %17) #12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load ptr, ptr %33, align 4
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 @__video_register_device(ptr noundef %15, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %85) #12
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.v4l2_device, ptr %14, i32 0, i32 4
  %90 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 5, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 5
  %95 = load ptr, ptr %94, align 4
  br label %99

96:                                               ; preds = %83
  tail call void @fimc_ctrls_delete(ptr noundef nonnull %17) #12
  br label %97

97:                                               ; preds = %96, %80, %63, %19
  %98 = phi i32 [ %61, %19 ], [ %78, %63 ], [ %81, %80 ], [ %86, %96 ]
  tail call void @kfree(ptr noundef nonnull %17) #12
  br label %104

99:                                               ; preds = %93, %88
  %100 = phi ptr [ %95, %93 ], [ %91, %88 ]
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %89, ptr noundef %29, ptr noundef %100) #13
  %102 = getelementptr inbounds %struct.fimc_ctx, ptr %17, i32 0, i32 16
  %103 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 9
  store ptr %102, ptr %103, align 4
  br label %106

104:                                              ; preds = %97, %10
  %105 = phi i32 [ -12, %10 ], [ %98, %97 ]
  tail call void @fimc_unregister_m2m_device(ptr noundef nonnull %3) #12
  store ptr null, ptr %13, align 8
  br label %106

106:                                              ; preds = %104, %99, %5, %1
  %107 = phi i32 [ -6, %1 ], [ %8, %5 ], [ %105, %104 ], [ 0, %99 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimc_capture_subdev_unregistered(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #12
  tail call void @fimc_unregister_m2m_device(ptr noundef nonnull %3) #12
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13
  %8 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 0, i32 17
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2
  tail call void @video_unregister_device(ptr noundef %13) #12
  %14 = load ptr, ptr %7, align 8
  tail call void @fimc_ctrls_delete(ptr noundef %14) #12
  %15 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 13, i32 2, i32 1
  store ptr null, ptr %15, align 8
  br label %16

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %7, align 8
  tail call void @kfree(ptr noundef %17) #12
  store ptr null, ptr %7, align 8
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %18

18:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_register_m2m_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_unregister_m2m_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_ctrls_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_ctrls_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_capture_open(ptr noundef %0) #0 {
  %2 = alloca %struct.v4l2_format, align 4
  %3 = tail call ptr @video_devdata(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 2
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 14
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %80

12:                                               ; preds = %1
  tail call void @_set_bit(i32 noundef 11, ptr noundef %8) #12
  %13 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #12, !srcloc !15
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 0, i32 -1, ptr elementtype(i32) %19) #12, !srcloc !16
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %80, label %23

23:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  br label %80

24:                                               ; preds = %12
  %25 = tail call i32 @v4l2_fh_open(ptr noundef %0) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %13, align 8
  %29 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %30 = tail call i32 @__pm_runtime_idle(ptr noundef %29, i32 noundef 4) #12
  br label %80

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 @v4l2_fh_is_singular(ptr noundef %33) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %80, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds %struct.media_device, ptr %37, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %38) #12
  %39 = icmp eq ptr %6, null
  br i1 %39, label %68, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 2, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %68, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %42, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %68, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %46, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %68, label %52

52:                                               ; preds = %48
  %53 = tail call i32 %50(ptr noundef nonnull %42, ptr noundef nonnull %6, i1 noundef zeroext true) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 13, i32 2, i32 0, i32 0, i32 13
  %57 = load i32, ptr %56, align 8
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8
  %59 = load ptr, ptr %6, align 8
  %60 = getelementptr inbounds %struct.media_device, ptr %59, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %60) #12
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %2) #12
  %61 = getelementptr inbounds i8, ptr %2, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(204) %61, i8 0, i32 180, i1 false) #12
  store i32 9, ptr %2, align 4
  %62 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  store i32 640, ptr %62, align 4
  %63 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 480, ptr %63, align 4
  %64 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 1448695129, ptr %64, align 4
  %65 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 7, ptr %66, align 4
  %67 = call fastcc i32 @__fimc_capture_set_format(ptr noundef %5, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %2) #12
  br label %72

68:                                               ; preds = %52, %48, %44, %40, %36
  %69 = phi i32 [ %53, %52 ], [ -515, %44 ], [ -515, %48 ], [ -2, %36 ], [ -2, %40 ]
  %70 = load ptr, ptr %6, align 8
  %71 = getelementptr inbounds %struct.media_device, ptr %70, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %71) #12
  br label %72

72:                                               ; preds = %68, %55
  %73 = phi i32 [ %67, %55 ], [ %69, %68 ]
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  call void @_clear_bit(i32 noundef 11, ptr noundef %8) #12
  %76 = load ptr, ptr %13, align 8
  %77 = getelementptr inbounds %struct.platform_device, ptr %76, i32 0, i32 3
  %78 = call i32 @__pm_runtime_idle(ptr noundef %77, i32 noundef 4) #12
  %79 = call i32 @v4l2_fh_release(ptr noundef %0) #12
  br label %80

80:                                               ; preds = %75, %72, %31, %27, %23, %18, %1
  %81 = phi i32 [ -16, %1 ], [ %25, %27 ], [ %73, %75 ], [ %73, %72 ], [ 0, %31 ], [ %16, %18 ], [ %16, %23 ]
  call void @mutex_unlock(ptr noundef %7) #12
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_capture_release(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @v4l2_fh_is_singular(ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.fimc_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #12
  br i1 %8, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.fimc_dev, ptr %4, i32 0, i32 13, i32 15
  %12 = load i8, ptr %11, align 8, !range !13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fimc_dev, ptr %4, i32 0, i32 13, i32 2
  tail call void @media_pipeline_stop(ptr noundef %15) #12
  store i8 0, ptr %11, align 8
  br label %18

16:                                               ; preds = %1
  %17 = tail call i32 @_vb2_fop_release(ptr noundef %0, ptr noundef null) #12
  br label %45

18:                                               ; preds = %14, %10
  %19 = tail call i32 @_vb2_fop_release(ptr noundef %0, ptr noundef null) #12
  %20 = getelementptr inbounds %struct.fimc_dev, ptr %4, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %20) #12
  %21 = getelementptr inbounds %struct.fimc_dev, ptr %4, i32 0, i32 13, i32 2
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.fimc_dev, ptr %4, i32 0, i32 13, i32 2, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %25, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %29, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 %33(ptr noundef nonnull %25) #12
  br label %37

37:                                               ; preds = %35, %31, %27, %23, %18
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %20) #12
  %38 = load ptr, ptr %21, align 8
  %39 = getelementptr inbounds %struct.media_device, ptr %38, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %39) #12
  %40 = getelementptr inbounds %struct.fimc_dev, ptr %4, i32 0, i32 13, i32 2, i32 0, i32 0, i32 13
  %41 = load i32, ptr %40, align 8
  %42 = add i32 %41, -1
  store i32 %42, ptr %40, align 8
  %43 = load ptr, ptr %21, align 8
  %44 = getelementptr inbounds %struct.media_device, ptr %43, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %44) #12
  br label %45

45:                                               ; preds = %37, %16
  %46 = phi i32 [ %19, %37 ], [ %17, %16 ]
  %47 = getelementptr inbounds %struct.fimc_dev, ptr %4, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  %50 = tail call i32 @__pm_runtime_idle(ptr noundef %49, i32 noundef 4) #12
  tail call void @mutex_unlock(ptr noundef %9) #12
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__fimc_capture_set_format(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr null, ptr %3, align 4
  %8 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 10, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %86

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 1, i32 12
  %13 = call fastcc i32 @__video_try_or_set_format(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef nonnull %3, ptr noundef %12)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %86, label %15

15:                                               ; preds = %11
  call void @fimc_alpha_ctrl_update(ptr noundef %5) #12
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr inbounds %struct.fimc_fmt, ptr %16, i32 0, i32 3
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %20, %15
  %21 = phi i32 [ %28, %20 ], [ 0, %15 ]
  %22 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 %21
  %23 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 %21, i32 1
  %24 = load i32, ptr %23, align 1
  %25 = getelementptr %struct.fimc_ctx, ptr %5, i32 0, i32 1, i32 9, i32 %21
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %22, align 1
  %27 = getelementptr %struct.fimc_ctx, ptr %5, i32 0, i32 1, i32 8, i32 %21
  store i32 %26, ptr %27, align 4
  %28 = add nuw nsw i32 %21, 1
  %29 = load ptr, ptr %12, align 4
  %30 = getelementptr inbounds %struct.fimc_fmt, ptr %29, i32 0, i32 3
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = icmp ult i32 %28, %32
  br i1 %33, label %20, label %34

34:                                               ; preds = %20, %15
  %35 = phi ptr [ %16, %15 ], [ %29, %20 ]
  %36 = load i32, ptr %6, align 1
  %37 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  %38 = load i32, ptr %37, align 1
  %39 = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 1, i32 2
  store i32 %36, ptr %39, align 4
  %40 = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 1, i32 3
  store i32 %38, ptr %40, align 4
  store i32 %36, ptr %7, align 4
  %41 = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 1, i32 1
  store i32 %38, ptr %41, align 4
  %42 = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 13
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %34
  %47 = load i32, ptr %6, align 1
  %48 = load i32, ptr %37, align 1
  %49 = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 1, i32 4
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 1, i32 5
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 1, i32 6
  store i32 %47, ptr %51, align 4
  %52 = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 1, i32 7
  store i32 %48, ptr %52, align 4
  br label %53

53:                                               ; preds = %46, %34
  %54 = getelementptr inbounds %struct.fimc_fmt, ptr %35, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 384
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 8
  %59 = load i8, ptr %58, align 4
  %60 = select i1 %57, i8 8, i8 0
  %61 = and i8 %59, -9
  %62 = or i8 %60, %61
  store i8 %62, ptr %58, align 4
  call void @fimc_ctrls_activate(ptr noundef %5, i1 noundef zeroext %57) #12
  %63 = getelementptr inbounds %struct.fimc_ctx, ptr %5, i32 0, i32 14
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.fimc_dev, ptr %64, i32 0, i32 14
  br i1 %57, label %67, label %66

66:                                               ; preds = %53
  call void @_set_bit(i32 noundef 13, ptr noundef %65) #12
  br label %68

67:                                               ; preds = %53
  call void @_clear_bit(i32 noundef 13, ptr noundef %65) #12
  br label %68

68:                                               ; preds = %67, %66
  %69 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 17
  %70 = load i8, ptr %69, align 8, !range !13
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load ptr, ptr %3, align 4
  %74 = getelementptr inbounds %struct.fimc_frame, ptr %5, i32 0, i32 12
  store ptr %73, ptr %74, align 4
  %75 = load i32, ptr %6, align 1
  %76 = load i32, ptr %37, align 1
  %77 = getelementptr inbounds %struct.fimc_frame, ptr %5, i32 0, i32 2
  store i32 %75, ptr %77, align 4
  %78 = getelementptr inbounds %struct.fimc_frame, ptr %5, i32 0, i32 3
  store i32 %76, ptr %78, align 4
  store i32 %75, ptr %5, align 4
  %79 = getelementptr inbounds %struct.fimc_frame, ptr %5, i32 0, i32 1
  store i32 %76, ptr %79, align 4
  %80 = load i32, ptr %6, align 1
  %81 = load i32, ptr %37, align 1
  %82 = getelementptr inbounds %struct.fimc_frame, ptr %5, i32 0, i32 4
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.fimc_frame, ptr %5, i32 0, i32 5
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.fimc_frame, ptr %5, i32 0, i32 6
  store i32 %80, ptr %84, align 4
  %85 = getelementptr inbounds %struct.fimc_frame, ptr %5, i32 0, i32 7
  store i32 %81, ptr %85, align 4
  br label %86

86:                                               ; preds = %72, %68, %11, %2
  %87 = phi i32 [ -16, %2 ], [ %13, %11 ], [ %13, %72 ], [ %13, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__video_try_or_set_format(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.v4l2_subdev_format, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_mbus_framefmt, align 4
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13
  %11 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 2
  %12 = load ptr, ptr %10, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  %14 = load i32, ptr %13, align 1
  switch i32 %14, label %19 [
    i32 1229141331, label %15
    i32 1195724874, label %15
  ]

15:                                               ; preds = %5, %5
  %16 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  %17 = tail call fastcc ptr @fimc_capture_try_format(ptr noundef %12, ptr noundef %9, ptr noundef %16, ptr noundef null, ptr noundef %13, i32 noundef 0)
  %18 = load i32, ptr %9, align 1
  br i1 %2, label %23, label %27

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  %21 = tail call fastcc ptr @fimc_capture_try_format(ptr noundef %12, ptr noundef %9, ptr noundef %20, ptr noundef null, ptr noundef %13, i32 noundef 2)
  store ptr %21, ptr %4, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %279, label %32

23:                                               ; preds = %15
  %24 = load i32, ptr %16, align 1
  %25 = tail call fastcc ptr @fimc_capture_try_format(ptr noundef %12, ptr noundef %9, ptr noundef %16, ptr noundef null, ptr noundef %13, i32 noundef 2)
  store ptr %25, ptr %4, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %279, label %33

27:                                               ; preds = %15
  store i32 %18, ptr %12, align 4
  %28 = load i32, ptr %16, align 1
  %29 = getelementptr inbounds %struct.fimc_frame, ptr %12, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = tail call fastcc ptr @fimc_capture_try_format(ptr noundef %12, ptr noundef %9, ptr noundef %16, ptr noundef null, ptr noundef %13, i32 noundef 2)
  store ptr %30, ptr %4, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %279, label %39

32:                                               ; preds = %19
  br i1 %2, label %33, label %39

33:                                               ; preds = %32, %23
  %34 = phi i32 [ 0, %32 ], [ %18, %23 ]
  %35 = phi i32 [ 0, %32 ], [ %24, %23 ]
  %36 = phi ptr [ %20, %32 ], [ %16, %23 ]
  %37 = load i32, ptr %13, align 1
  switch i32 %37, label %39 [
    i32 1229141331, label %38
    i32 1195724874, label %38
  ]

38:                                               ; preds = %33, %33
  store i32 %34, ptr %9, align 1
  store i32 %35, ptr %36, align 1
  br label %39

39:                                               ; preds = %38, %33, %32, %27
  %40 = phi ptr [ %36, %38 ], [ %36, %33 ], [ %20, %32 ], [ %16, %27 ]
  %41 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 17
  %42 = load i8, ptr %41, align 8, !range !13
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %247

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %8, i8 0, i32 48, i1 false), !annotation !9
  %45 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 5
  %46 = select i1 %2, ptr %8, ptr %45
  %47 = load ptr, ptr %4, align 4
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %8, i32 0, i32 2
  %50 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 5, i32 2
  %51 = select i1 %2, ptr %49, ptr %50
  store i32 %48, ptr %51, align 4
  %52 = load i32, ptr %9, align 1
  store i32 %52, ptr %46, align 4
  %53 = load i32, ptr %40, align 1
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %8, i32 0, i32 1
  %55 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 5, i32 1
  %56 = select i1 %2, ptr %54, ptr %55
  store i32 %53, ptr %56, align 4
  %57 = load ptr, ptr %11, align 8
  %58 = getelementptr inbounds %struct.media_device, ptr %57, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %58) #12
  %59 = getelementptr inbounds %struct.fimc_ctx, ptr %12, i32 0, i32 14
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.fimc_dev, ptr %60, i32 0, i32 13, i32 2, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.fimc_pipeline, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #12
  %65 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  %66 = icmp eq ptr %64, null
  %67 = icmp eq ptr %46, null
  %68 = or i1 %67, %66
  br i1 %68, label %69, label %70, !prof !10

69:                                               ; preds = %44
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 774, i32 noundef 9, ptr noundef null) #12
  br label %239

70:                                               ; preds = %44
  %71 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %71, i8 0, i32 84, i1 false) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %65, ptr noundef nonnull align 4 dereferenceable(48) %46, i32 48, i1 false) #12
  %72 = zext i1 %2 to i32
  store i32 %72, ptr %6, align 4
  %73 = getelementptr inbounds %struct.media_entity, ptr %64, i32 0, i32 9
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.media_pad, ptr %74, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %70
  %80 = call ptr @media_entity_remote_pad(ptr noundef %74) #12
  %81 = icmp eq ptr %80, null
  br i1 %81, label %95, label %85

82:                                               ; preds = %85
  %83 = call ptr @media_entity_remote_pad(ptr noundef %90) #12
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %82, %79
  %86 = phi ptr [ %83, %82 ], [ %80, %79 ]
  %87 = getelementptr inbounds %struct.media_pad, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.media_entity, ptr %88, i32 0, i32 9
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.media_pad, ptr %90, i32 0, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %82, label %95

95:                                               ; preds = %85, %82, %79, %70
  %96 = phi ptr [ %64, %70 ], [ %64, %79 ], [ %88, %82 ], [ %88, %85 ]
  %97 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, ptr null, ptr %97
  %101 = call ptr @fimc_find_format(ptr noundef null, ptr noundef %100, i32 noundef 1, i32 noundef 1) #12
  %102 = icmp eq ptr %101, null
  br i1 %102, label %239, label %103

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.fimc_dev, ptr %60, i32 0, i32 13, i32 1
  %105 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %106 = icmp eq ptr %105, null
  %107 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %105, i32 0, i32 5
  %108 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 1
  br label %109

109:                                              ; preds = %227, %103
  %110 = phi ptr [ %101, %103 ], [ %232, %227 ]
  %111 = phi i32 [ 2, %103 ], [ %231, %227 ]
  %112 = phi ptr [ %96, %103 ], [ %104, %227 ]
  %113 = load i32, ptr %110, align 4
  store i32 %113, ptr %51, align 4
  store i32 %113, ptr %97, align 4
  %114 = icmp eq ptr %112, %104
  br i1 %114, label %183, label %115

115:                                              ; preds = %175, %109
  %116 = phi ptr [ %177, %175 ], [ %112, %109 ]
  %117 = icmp eq ptr %116, null
  store i32 0, ptr %71, align 4
  br i1 %117, label %239, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.v4l2_subdev, ptr %116, i32 0, i32 6
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %120, i32 0, i32 7
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %239, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %122, i32 0, i32 5
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %239, label %128

128:                                              ; preds = %124
  br i1 %106, label %132, label %129

129:                                              ; preds = %128
  %130 = load ptr, ptr %107, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %129, %128
  br label %133

133:                                              ; preds = %132, %129
  %134 = phi ptr [ %126, %132 ], [ %130, %129 ]
  %135 = call i32 %134(ptr noundef nonnull %116, ptr noundef null, ptr noundef nonnull %6) #12
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %239

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.media_entity, ptr %116, i32 0, i32 9
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.media_pad, ptr %139, i32 0, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %169, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.media_entity, ptr %116, i32 0, i32 5
  %146 = load i16, ptr %145, align 4
  %147 = zext i16 %146 to i32
  %148 = add nsw i32 %147, -1
  store i32 %148, ptr %71, align 4
  %149 = load i32, ptr %51, align 4
  store i32 %149, ptr %97, align 4
  %150 = load ptr, ptr %119, align 4
  %151 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %150, i32 0, i32 7
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %239, label %154

154:                                              ; preds = %144
  %155 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %152, i32 0, i32 5
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %239, label %158

158:                                              ; preds = %154
  br i1 %106, label %162, label %159

159:                                              ; preds = %158
  %160 = load ptr, ptr %107, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %159, %158
  br label %163

163:                                              ; preds = %162, %159
  %164 = phi ptr [ %156, %162 ], [ %160, %159 ]
  %165 = call i32 %164(ptr noundef nonnull %116, ptr noundef null, ptr noundef nonnull %6) #12
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %239

167:                                              ; preds = %163
  %168 = load ptr, ptr %138, align 4
  br label %169

169:                                              ; preds = %167, %137
  %170 = phi ptr [ %168, %167 ], [ %139, %137 ]
  %171 = load i32, ptr %71, align 4
  %172 = getelementptr %struct.media_pad, ptr %170, i32 %171
  %173 = call ptr @media_entity_remote_pad(ptr noundef %172) #12
  %174 = icmp eq ptr %173, null
  br i1 %174, label %239, label %175

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.media_pad, ptr %173, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, %104
  br i1 %178, label %179, label %115

179:                                              ; preds = %175
  %180 = load i32, ptr %97, align 4
  %181 = load i32, ptr %51, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %227

183:                                              ; preds = %179, %109
  %184 = getelementptr inbounds %struct.fimc_fmt, ptr %110, i32 0, i32 1
  %185 = load i32, ptr %184, align 4
  store i32 %185, ptr %7, align 4
  %186 = load i32, ptr %65, align 4
  store i32 %186, ptr %46, align 4
  %187 = load i32, ptr %108, align 4
  store i32 %187, ptr %56, align 4
  %188 = load ptr, ptr %59, align 4
  %189 = getelementptr inbounds %struct.fimc_dev, ptr %188, i32 0, i32 5
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.fimc_variant, ptr %190, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = call ptr @fimc_find_format(ptr noundef nonnull %7, ptr noundef null, i32 noundef 1, i32 noundef 0) #12
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %196, !prof !10

195:                                              ; preds = %183
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 587, i32 noundef 9, ptr noundef null) #12
  br label %212

196:                                              ; preds = %183
  %197 = getelementptr inbounds %struct.fimc_fmt, ptr %193, i32 0, i32 1
  %198 = load i32, ptr %197, align 4
  store i32 %198, ptr %7, align 4
  %199 = getelementptr inbounds %struct.fimc_fmt, ptr %193, i32 0, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = and i32 %200, 384
  %202 = icmp eq i32 %201, 0
  %203 = getelementptr inbounds %struct.fimc_pix_limit, ptr %192, i32 0, i32 1
  %204 = select i1 %202, ptr %192, ptr %203
  %205 = load i16, ptr %204, align 2
  %206 = zext i16 %205 to i32
  %207 = load i32, ptr %46, align 4
  %208 = call i32 @llvm.umax.i32(i32 %207, i32 32) #12
  %209 = load i32, ptr %56, align 4
  %210 = call i32 @llvm.umax.i32(i32 %209, i32 32) #12
  %211 = select i1 %202, i32 1, i32 3
  call void @v4l_bound_align_image(ptr noundef %46, i32 noundef %208, i32 noundef %206, i32 noundef 4, ptr noundef %56, i32 noundef %210, i32 noundef 8192, i32 noundef %211, i32 noundef 0) #12
  br label %212

212:                                              ; preds = %196, %195
  %213 = call fastcc ptr @fimc_capture_try_format(ptr noundef %12, ptr noundef %46, ptr noundef %56, ptr noundef null, ptr noundef nonnull %7, i32 noundef 2) #12
  %214 = icmp ne ptr %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i32, ptr %213, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %215
  store i32 %216, ptr %97, align 4
  br label %219

219:                                              ; preds = %218, %215, %212
  %220 = load i32, ptr %65, align 4
  %221 = load i32, ptr %46, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i32, ptr %108, align 4
  %225 = load i32, ptr %56, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %234, label %227

227:                                              ; preds = %223, %219, %179
  %228 = load i32, ptr %97, align 4
  %229 = icmp eq i32 %228, 0
  %230 = select i1 %229, ptr null, ptr %97
  %231 = add i32 %111, 1
  %232 = call ptr @fimc_find_format(ptr noundef null, ptr noundef %230, i32 noundef 1, i32 noundef %111) #12
  %233 = icmp eq ptr %232, null
  br i1 %233, label %239, label %109

234:                                              ; preds = %223
  %235 = icmp ne ptr %3, null
  %236 = select i1 %235, i1 %214, i1 false
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  store ptr %213, ptr %3, align 4
  br label %238

238:                                              ; preds = %237, %234
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %46, ptr noundef align 4 dereferenceable(48) %65, i32 48, i1 false) #12
  br label %239

239:                                              ; preds = %238, %227, %169, %163, %154, %144, %133, %124, %118, %115, %95, %69
  %240 = phi i32 [ -22, %69 ], [ 0, %238 ], [ -22, %95 ], [ -515, %144 ], [ -515, %154 ], [ -19, %115 ], [ -515, %124 ], [ -515, %118 ], [ -22, %169 ], [ %165, %163 ], [ %135, %133 ], [ -22, %227 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #12
  %241 = load ptr, ptr %11, align 8
  %242 = getelementptr inbounds %struct.media_device, ptr %241, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %242) #12
  %243 = icmp slt i32 %240, 0
  br i1 %243, label %278, label %244

244:                                              ; preds = %239
  %245 = load i32, ptr %46, align 4
  store i32 %245, ptr %9, align 1
  %246 = load i32, ptr %56, align 4
  store i32 %246, ptr %40, align 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #12
  br label %247

247:                                              ; preds = %244, %39
  %248 = phi i32 [ 0, %39 ], [ %240, %244 ]
  %249 = load ptr, ptr %4, align 4
  %250 = load i32, ptr %9, align 1
  %251 = load i32, ptr %40, align 1
  call void @fimc_adjust_mplane_format(ptr noundef %249, i32 noundef %250, i32 noundef %251, ptr noundef %9) #12
  %252 = load ptr, ptr %4, align 4
  %253 = getelementptr inbounds %struct.fimc_fmt, ptr %252, i32 0, i32 8
  %254 = load i16, ptr %253, align 2
  %255 = and i16 %254, 16
  %256 = icmp eq i16 %255, 0
  br i1 %256, label %279, label %257

257:                                              ; preds = %247
  %258 = load ptr, ptr %11, align 8
  %259 = getelementptr inbounds %struct.media_device, ptr %258, i32 0, i32 16
  call void @mutex_lock(ptr noundef %259) #12
  %260 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 13, i32 2, i32 1
  %261 = load ptr, ptr %260, align 8
  %262 = icmp eq ptr %261, null
  br i1 %262, label %274, label %263

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.fimc_pipeline, ptr %261, i32 0, i32 3
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %274, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5
  %269 = load ptr, ptr %4, align 4
  %270 = getelementptr inbounds %struct.fimc_fmt, ptr %269, i32 0, i32 3
  %271 = load i16, ptr %270, align 4
  %272 = zext i16 %271 to i32
  %273 = call fastcc i32 @fimc_get_sensor_frame_desc(ptr noundef nonnull %265, ptr noundef %268, i32 noundef %272, i1 noundef zeroext %2)
  br label %274

274:                                              ; preds = %267, %263, %257
  %275 = phi i32 [ %248, %267 ], [ -32, %263 ], [ -32, %257 ]
  %276 = load ptr, ptr %11, align 8
  %277 = getelementptr inbounds %struct.media_device, ptr %276, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %277) #12
  br label %279

278:                                              ; preds = %239
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #12
  br label %279

279:                                              ; preds = %278, %274, %247, %27, %23, %19
  %280 = phi i32 [ -22, %19 ], [ %240, %278 ], [ %275, %274 ], [ %248, %247 ], [ -22, %27 ], [ -22, %23 ]
  ret i32 %280
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_adjust_mplane_format(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_get_sensor_frame_desc(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.v4l2_mbus_frame_desc, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %5, i8 0, i32 52, i1 false), !annotation !9
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %4
  %8 = phi i32 [ %12, %7 ], [ 0, %4 ]
  %9 = getelementptr %struct.v4l2_plane_pix_format, ptr %1, i32 %8
  %10 = load i32, ptr %9, align 1
  %11 = getelementptr [4 x %struct.v4l2_mbus_frame_desc_entry], ptr %5, i32 0, i32 %8, i32 2
  store i32 %10, ptr %11, align 4
  %12 = add nuw i32 %8, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %4
  %15 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = add nsw i32 %17, -1
  %19 = icmp eq ptr %0, null
  br i1 %3, label %20, label %39

20:                                               ; preds = %14
  br i1 %19, label %84, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %84, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %25, i32 0, i32 14
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %84, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %32, i32 0, i32 14
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %34, %31
  br label %58

39:                                               ; preds = %14
  br i1 %19, label %84, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %42, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %84, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %44, i32 0, i32 13
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %84, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %51, i32 0, i32 13
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %53, %38, %34
  %59 = phi ptr [ %48, %57 ], [ %29, %38 ], [ %36, %34 ], [ %55, %53 ]
  %60 = call i32 %59(ptr noundef nonnull %0, i32 noundef %18, ptr noundef nonnull %5) #12
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.v4l2_mbus_frame_desc, ptr %5, i32 0, i32 1
  %64 = load i16, ptr %63, align 4
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %65, %2
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  br i1 %6, label %75, label %68

68:                                               ; preds = %68, %67
  %69 = phi i32 [ %73, %68 ], [ 0, %67 ]
  %70 = getelementptr [4 x %struct.v4l2_mbus_frame_desc_entry], ptr %5, i32 0, i32 %69, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr %struct.v4l2_plane_pix_format, ptr %1, i32 %69
  store i32 %71, ptr %72, align 1
  %73 = add nuw i32 %69, 1
  %74 = icmp eq i32 %73, %2
  br i1 %74, label %75, label %68

75:                                               ; preds = %68, %67
  %76 = getelementptr inbounds %struct.v4l2_mbus_frame_desc_entry, ptr %5, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp ugt i32 %77, 10485760
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.v4l2_device, ptr %81, i32 0, i32 4
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %82, i32 noundef %77) #13
  br label %84

84:                                               ; preds = %79, %75, %62, %58, %46, %40, %39, %27, %21, %20
  %85 = phi i32 [ -22, %79 ], [ %60, %58 ], [ -22, %62 ], [ 0, %75 ], [ -515, %40 ], [ -515, %46 ], [ -19, %39 ], [ -515, %21 ], [ -515, %27 ], [ -19, %20 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #12
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_cap_querycap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void @__fimc_vidioc_querycap(ptr noundef %9, ptr noundef %2) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_cap_enum_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = tail call ptr @fimc_find_format(ptr noundef null, ptr noundef null, i32 noundef 7, i32 noundef %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fimc_fmt, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_cap_g_fmt_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.fimc_ctx, ptr %8, i32 0, i32 1
  tail call void @__fimc_get_format(ptr noundef %9, ptr noundef %2) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_cap_s_fmt_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc i32 @__fimc_capture_set_format(ptr noundef %6, ptr noundef %2)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_cap_try_fmt_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = tail call ptr @video_devdata(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4
  %9 = call fastcc i32 @__video_try_or_set_format(ptr noundef %8, ptr noundef %2, i1 noundef zeroext true, ptr noundef nonnull %5, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_cap_reqbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @vb2_ioctl_reqbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 4
  %11 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 14
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %3
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_cap_streamon(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.v4l2_subdev_format, align 4
  %5 = alloca %struct.v4l2_subdev_format, align 4
  %6 = alloca [3 x %struct.v4l2_plane_pix_format], align 1
  %7 = tail call ptr @video_devdata(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 5, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13, i32 2
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %12 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 14
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 96
  %15 = icmp eq i32 %14, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %11) #12
  br i1 %15, label %16, label %222

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13, i32 2, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @media_pipeline_start(ptr noundef %10, ptr noundef %18) #12
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %222, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %17, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %220, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.fimc_pipeline, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %220, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.v4l2_subdev, ptr %26, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %220, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %33, ptr noundef nonnull align 4 dereferenceable(12) %30, i32 12, i1 false)
  %34 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 16384
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 5, ptr %33, align 8
  br label %38

38:                                               ; preds = %37, %32
  %39 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13, i32 17
  %40 = load i8, ptr %39, align 8, !range !13
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %215, label %42

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false) #12, !annotation !9
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %5, i8 0, i32 88, i1 false) #12, !annotation !9
  %43 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13
  %44 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13, i32 1
  %45 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13, i32 1, i32 0, i32 5
  %46 = load i16, ptr %45, align 4
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %214, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 1
  %50 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %51 = icmp eq ptr %50, null
  %52 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %50, i32 0, i32 4
  %53 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2
  %54 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 1
  %55 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 2
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 1
  %57 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2
  %58 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 1
  %59 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 2
  br label %60

60:                                               ; preds = %207, %48
  %61 = phi i16 [ %46, %48 ], [ %209, %207 ]
  %62 = phi ptr [ %45, %48 ], [ %208, %207 ]
  %63 = phi ptr [ %44, %48 ], [ %135, %207 ]
  %64 = getelementptr inbounds %struct.media_entity, ptr %63, i32 0, i32 9
  br label %65

65:                                               ; preds = %79, %60
  %66 = phi i16 [ %61, %60 ], [ %80, %79 ]
  %67 = phi i32 [ 0, %60 ], [ %81, %79 ]
  %68 = load ptr, ptr %64, align 4
  %69 = getelementptr %struct.media_pad, ptr %68, i32 %67, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = getelementptr %struct.media_pad, ptr %68, i32 %67
  %75 = call ptr @media_entity_remote_pad(ptr noundef %74) #12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i16, ptr %62, align 4
  br label %79

79:                                               ; preds = %77, %65
  %80 = phi i16 [ %78, %77 ], [ %66, %65 ]
  %81 = add nuw nsw i32 %67, 1
  %82 = zext i16 %80 to i32
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %65, label %214

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.media_pad, ptr %75, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %214, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.media_entity, ptr %86, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %214

92:                                               ; preds = %88
  %93 = icmp eq ptr %63, %44
  br i1 %93, label %94, label %106

94:                                               ; preds = %92
  %95 = load ptr, ptr %43, align 8
  %96 = load i32, ptr %95, align 4
  store i32 %96, ptr %53, align 4
  %97 = getelementptr inbounds %struct.fimc_frame, ptr %95, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  store i32 %98, ptr %54, align 4
  %99 = getelementptr inbounds %struct.fimc_frame, ptr %95, i32 0, i32 12
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %94
  %103 = load i32, ptr %100, align 4
  br label %104

104:                                              ; preds = %102, %94
  %105 = phi i32 [ %103, %102 ], [ 0, %94 ]
  store i32 %105, ptr %55, align 4
  br label %134

106:                                              ; preds = %92
  %107 = getelementptr %struct.media_pad, ptr %68, i32 %67, i32 2
  %108 = load i16, ptr %107, align 4
  %109 = zext i16 %108 to i32
  store i32 %109, ptr %49, align 4
  store i32 1, ptr %4, align 4
  %110 = icmp eq ptr %63, null
  br i1 %110, label %129, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.v4l2_subdev, ptr %63, i32 0, i32 6
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %113, i32 0, i32 7
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %134, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %115, i32 0, i32 4
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %134, label %121

121:                                              ; preds = %117
  br i1 %51, label %125, label %122

122:                                              ; preds = %121
  %123 = load ptr, ptr %52, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %122, %121
  br label %126

126:                                              ; preds = %125, %122
  %127 = phi ptr [ %119, %125 ], [ %123, %122 ]
  %128 = call i32 %127(ptr noundef nonnull %63, ptr noundef null, ptr noundef nonnull %4) #12
  br label %129

129:                                              ; preds = %126, %106
  %130 = phi i32 [ -19, %106 ], [ %128, %126 ]
  %131 = icmp slt i32 %130, 0
  %132 = icmp ne i32 %130, -515
  %133 = and i1 %131, %132
  br i1 %133, label %213, label %134

134:                                              ; preds = %129, %117, %111, %104
  %135 = load ptr, ptr %85, align 4
  %136 = icmp eq ptr %135, null
  %137 = getelementptr inbounds %struct.media_pad, ptr %75, i32 0, i32 2
  %138 = load i16, ptr %137, align 4
  %139 = zext i16 %138 to i32
  store i32 %139, ptr %56, align 4
  store i32 1, ptr %5, align 4
  br i1 %136, label %158, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.v4l2_subdev, ptr %135, i32 0, i32 6
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %142, i32 0, i32 7
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %163, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %144, i32 0, i32 4
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %163, label %150

150:                                              ; preds = %146
  br i1 %51, label %154, label %151

151:                                              ; preds = %150
  %152 = load ptr, ptr %52, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %151, %150
  br label %155

155:                                              ; preds = %154, %151
  %156 = phi ptr [ %148, %154 ], [ %152, %151 ]
  %157 = call i32 %156(ptr noundef nonnull %135, ptr noundef null, ptr noundef nonnull %5) #12
  br label %158

158:                                              ; preds = %155, %134
  %159 = phi i32 [ -19, %134 ], [ %157, %155 ]
  %160 = icmp slt i32 %159, 0
  %161 = icmp ne i32 %159, -515
  %162 = and i1 %160, %161
  br i1 %162, label %213, label %163

163:                                              ; preds = %158, %146, %140
  %164 = load i32, ptr %57, align 4
  %165 = load i32, ptr %53, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %213

167:                                              ; preds = %163
  %168 = load i32, ptr %58, align 4
  %169 = load i32, ptr %54, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %213

171:                                              ; preds = %167
  %172 = load i32, ptr %59, align 4
  %173 = load i32, ptr %55, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %213

175:                                              ; preds = %171
  %176 = load ptr, ptr %25, align 4
  %177 = icmp eq ptr %135, %176
  %178 = and i32 %172, -4097
  %179 = icmp eq i32 %178, 16385
  %180 = select i1 %177, i1 %179, i1 false
  br i1 %180, label %181, label %207

181:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %6, i8 0, i32 60, i1 false) #12, !annotation !9
  %182 = load ptr, ptr %43, align 8
  %183 = getelementptr inbounds %struct.fimc_ctx, ptr %182, i32 0, i32 1, i32 12
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.fimc_fmt, ptr %184, i32 0, i32 3
  %186 = load i16, ptr %185, align 4
  %187 = zext i16 %186 to i32
  %188 = call fastcc i32 @fimc_get_sensor_frame_desc(ptr noundef %135, ptr noundef nonnull %6, i32 noundef %187, i1 noundef zeroext false) #12
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %211, label %190

190:                                              ; preds = %181
  %191 = load ptr, ptr %183, align 4
  %192 = getelementptr inbounds %struct.fimc_fmt, ptr %191, i32 0, i32 3
  %193 = load i16, ptr %192, align 4
  %194 = zext i16 %193 to i32
  %195 = icmp eq i16 %193, 0
  br i1 %195, label %206, label %199

196:                                              ; preds = %199
  %197 = add nuw nsw i32 %200, 1
  %198 = icmp eq i32 %197, %194
  br i1 %198, label %206, label %199

199:                                              ; preds = %196, %190
  %200 = phi i32 [ %197, %196 ], [ 0, %190 ]
  %201 = getelementptr %struct.fimc_ctx, ptr %182, i32 0, i32 1, i32 8, i32 %200
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr [3 x %struct.v4l2_plane_pix_format], ptr %6, i32 0, i32 %200
  %204 = load i32, ptr %203, align 1
  %205 = icmp ult i32 %202, %204
  br i1 %205, label %212, label %196

206:                                              ; preds = %196, %190
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #12
  br label %207

207:                                              ; preds = %206, %175
  %208 = getelementptr inbounds %struct.media_entity, ptr %135, i32 0, i32 5
  %209 = load i16, ptr %208, align 4
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %214, label %60

211:                                              ; preds = %181
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #12
  br label %213

212:                                              ; preds = %199
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #12
  br label %213

213:                                              ; preds = %212, %211, %171, %167, %163, %158, %129
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #12
  br label %220

214:                                              ; preds = %207, %88, %84, %79, %42
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #12
  br label %215

215:                                              ; preds = %214, %38
  %216 = call i32 @vb2_ioctl_streamon(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13, i32 15
  store i8 1, ptr %219, align 8
  br label %222

220:                                              ; preds = %215, %213, %28, %24, %21
  %221 = phi i32 [ %216, %215 ], [ -32, %28 ], [ -32, %213 ], [ -32, %24 ], [ -32, %21 ]
  call void @media_pipeline_stop(ptr noundef %10) #12
  br label %222

222:                                              ; preds = %220, %218, %16, %3
  %223 = phi i32 [ %221, %220 ], [ 0, %218 ], [ -16, %3 ], [ %19, %16 ]
  ret i32 %223
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_cap_streamoff(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @vb2_ioctl_streamoff(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 15
  %11 = load i8, ptr %10, align 8, !range !13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 2
  tail call void @media_pipeline_stop(ptr noundef %14) #12
  store i8 0, ptr %10, align 8
  br label %15

15:                                               ; preds = %13, %9, %3
  %16 = phi i32 [ %7, %3 ], [ 0, %13 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_cap_enum_input(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = load i32, ptr %2, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13, i32 2
  %11 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 2
  store i32 2, ptr %11, align 4
  %12 = load ptr, ptr %10, align 8
  %13 = getelementptr inbounds %struct.media_device, ptr %12, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.fimc_dev, ptr %9, i32 0, i32 13, i32 2, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.fimc_pipeline, ptr %15, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %7
  %21 = phi ptr [ %19, %17 ], [ null, %7 ]
  %22 = load ptr, ptr %10, align 8
  %23 = getelementptr inbounds %struct.media_device, ptr %22, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %23) #12
  %24 = icmp eq ptr %21, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %27 = getelementptr inbounds %struct.v4l2_subdev, ptr %21, i32 0, i32 9
  %28 = tail call i32 @strscpy(ptr noundef %26, ptr noundef %27, i32 noundef 32) #12
  br label %29

29:                                               ; preds = %25, %20, %3
  %30 = phi i32 [ -22, %3 ], [ 0, %25 ], [ 0, %20 ]
  ret i32 %30
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fimc_cap_g_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @fimc_cap_s_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #10 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 0, i32 -22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_cap_g_selection(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %42

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %42 [
    i32 257, label %14
    i32 258, label %14
    i32 2, label %16
    i32 1, label %16
    i32 256, label %24
    i32 0, label %26
  ]

14:                                               ; preds = %11, %11
  %15 = getelementptr inbounds %struct.fimc_ctx, ptr %8, i32 0, i32 1
  br label %16

16:                                               ; preds = %14, %11, %11
  %17 = phi ptr [ %8, %11 ], [ %8, %11 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fimc_frame, ptr %17, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fimc_frame, ptr %17, i32 0, i32 3
  br label %38

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.fimc_ctx, ptr %8, i32 0, i32 1
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi ptr [ %8, %11 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.fimc_frame, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.fimc_frame, ptr %27, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.fimc_frame, ptr %27, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.fimc_frame, ptr %27, i32 0, i32 7
  br label %38

38:                                               ; preds = %26, %16
  %39 = phi ptr [ %37, %26 ], [ %23, %16 ]
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %38, %11, %3
  %43 = phi i32 [ -22, %3 ], [ -22, %11 ], [ 0, %38 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_cap_s_selection(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.v4l2_rect, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.fimc_dev, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %10 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %10, i32 16, i1 false)
  %11 = load i32, ptr %2, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %93

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %93 [
    i32 256, label %16
    i32 0, label %18
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fimc_ctx, ptr %9, i32 0, i32 1
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ %9, %13 ]
  call fastcc void @fimc_capture_try_selection(ptr noundef %9, ptr noundef nonnull %4, i32 noundef %15)
  %20 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %93, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %93, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %25
  %38 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %26
  %41 = icmp ugt i32 %37, %40
  br i1 %41, label %93, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %30
  %46 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, %32
  %49 = icmp ugt i32 %45, %48
  br i1 %49, label %93, label %50

50:                                               ; preds = %42, %18
  %51 = and i32 %21, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %79, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %10, align 4
  %55 = load i32, ptr %4, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %93, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %93, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %54
  %67 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, %55
  %70 = icmp ugt i32 %66, %69
  br i1 %70, label %93, label %71

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %59
  %75 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, %61
  %78 = icmp ugt i32 %74, %77
  br i1 %78, label %93, label %79

79:                                               ; preds = %71, %50
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  %80 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %81 = load i32, ptr %10, align 4
  %82 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.fimc_frame, ptr %19, i32 0, i32 4
  store i32 %81, ptr %88, align 4
  %89 = getelementptr inbounds %struct.fimc_frame, ptr %19, i32 0, i32 5
  store i32 %83, ptr %89, align 4
  %90 = getelementptr inbounds %struct.fimc_frame, ptr %19, i32 0, i32 6
  store i32 %85, ptr %90, align 4
  %91 = getelementptr inbounds %struct.fimc_frame, ptr %19, i32 0, i32 7
  store i32 %87, ptr %91, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %80) #12
  %92 = getelementptr inbounds %struct.fimc_dev, ptr %7, i32 0, i32 14
  call void @_set_bit(i32 noundef 12, ptr noundef %92) #12
  br label %93

93:                                               ; preds = %79, %71, %63, %57, %53, %42, %34, %28, %24, %13, %3
  %94 = phi i32 [ 0, %79 ], [ -22, %3 ], [ -22, %13 ], [ -34, %42 ], [ -34, %71 ], [ -34, %28 ], [ -34, %24 ], [ -34, %34 ], [ -34, %57 ], [ -34, %53 ], [ -34, %63 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fimc_vidioc_querycap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fimc_get_format(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #11 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fimc_ctx, ptr %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.fimc_ctx, ptr %7, i32 0, i32 1, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %8, align 4
  %12 = getelementptr inbounds %struct.fimc_ctx, ptr %7, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %11
  %15 = icmp eq ptr %10, null
  br i1 %15, label %66, label %16

16:                                               ; preds = %5
  %17 = load i32, ptr %2, align 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.fimc_fmt, ptr %10, i32 0, i32 3
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  br i1 %18, label %37, label %22

22:                                               ; preds = %16
  %23 = icmp eq i32 %17, %21
  br i1 %23, label %27, label %66

24:                                               ; preds = %27
  %25 = add nuw i32 %28, 1
  %26 = icmp eq i32 %25, %17
  br i1 %26, label %66, label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %25, %24 ], [ 0, %22 ]
  %29 = getelementptr i32, ptr %3, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.fimc_fmt, ptr %10, i32 0, i32 6, i32 %28
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = mul i32 %14, %33
  %35 = lshr i32 %34, 3
  %36 = icmp ult i32 %30, %35
  br i1 %36, label %66, label %24

37:                                               ; preds = %16
  store i32 %21, ptr %2, align 4
  %38 = load i16, ptr %19, align 4
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %66, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.fimc_fmt, ptr %10, i32 0, i32 2
  br label %42

42:                                               ; preds = %59, %40
  %43 = phi i32 [ 0, %40 ], [ %62, %59 ]
  %44 = load i32, ptr %41, align 4
  %45 = and i32 %44, 384
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = getelementptr %struct.fimc_ctx, ptr %7, i32 0, i32 1, i32 8, i32 %43
  %49 = load i32, ptr %48, align 4
  br label %59

50:                                               ; preds = %42
  %51 = getelementptr %struct.fimc_fmt, ptr %10, i32 0, i32 6, i32 %43
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = mul i32 %14, %53
  %55 = lshr i32 %54, 3
  %56 = getelementptr %struct.fimc_ctx, ptr %7, i32 0, i32 1, i32 8, i32 %43
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 @llvm.umax.i32(i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %50, %47
  %60 = phi i32 [ %58, %50 ], [ %49, %47 ]
  %61 = getelementptr i32, ptr %3, i32 %43
  store i32 %60, ptr %61, align 4
  %62 = add nuw nsw i32 %43, 1
  %63 = load i16, ptr %19, align 4
  %64 = zext i16 %63 to i32
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %42, label %66

66:                                               ; preds = %59, %37, %27, %24, %22, %5
  %67 = phi i32 [ -22, %5 ], [ -22, %22 ], [ 0, %37 ], [ 0, %59 ], [ -22, %27 ], [ 0, %24 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_ctx, ptr %4, i32 0, i32 1, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fimc_fmt, ptr %6, i32 0, i32 3
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  br label %15

15:                                               ; preds = %36, %12
  %16 = phi ptr [ %6, %12 ], [ %37, %36 ]
  %17 = phi i32 [ 0, %12 ], [ %38, %36 ]
  %18 = getelementptr %struct.fimc_ctx, ptr %4, i32 0, i32 1, i32 8, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %14, %17
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %17, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = icmp ult i32 %23, %19
  br i1 %24, label %27, label %33

25:                                               ; preds = %15
  %26 = icmp eq i32 %19, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %23, %21 ], [ 0, %25 ]
  %29 = getelementptr inbounds %struct.fimc_ctx, ptr %4, i32 0, i32 14
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fimc_dev, ptr %30, i32 0, i32 13, i32 2, i32 0, i32 12
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %31, i32 noundef %28, i32 noundef %19) #13
  br label %43

33:                                               ; preds = %21
  %34 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %17, i32 3
  store i32 %19, ptr %34, align 4
  %35 = load ptr, ptr %5, align 4
  br label %36

36:                                               ; preds = %33, %25
  %37 = phi ptr [ %16, %25 ], [ %35, %33 ]
  %38 = add nuw nsw i32 %17, 1
  %39 = getelementptr inbounds %struct.fimc_fmt, ptr %37, i32 0, i32 3
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %15, label %43

43:                                               ; preds = %36, %27, %8, %1
  %44 = phi i32 [ -22, %1 ], [ -22, %27 ], [ 0, %8 ], [ 0, %36 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_ctx, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 13
  store i32 0, ptr %7, align 8
  %8 = tail call fastcc i32 @fimc_capture_hw_init(ptr noundef %6)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @fimc_capture_state_cleanup(ptr noundef %6, i1 noundef zeroext false)
  br label %44

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 5, ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 14
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 1
  %17 = select i1 %16, i32 2, i32 1
  %18 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 11
  %19 = load i32, ptr %18, align 8
  %20 = icmp slt i32 %19, %17
  br i1 %20, label %44, label %21

21:                                               ; preds = %12
  %22 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %13) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  tail call void @fimc_activate_capture(ptr noundef %4) #12
  %25 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %13) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 2
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 13, i32 2, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %32, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %36, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %40(ptr noundef nonnull %32, i1 noundef zeroext true) #12
  br label %44

44:                                               ; preds = %42, %38, %34, %30, %27, %24, %21, %12, %10
  %45 = phi i32 [ %8, %10 ], [ -2, %30 ], [ -2, %27 ], [ %43, %42 ], [ -515, %38 ], [ -515, %34 ], [ 0, %24 ], [ 0, %21 ], [ 0, %12 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 14
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 96
  %10 = icmp eq i32 %9, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call fastcc i32 @fimc_stop_capture(ptr noundef %5, i1 noundef zeroext false)
  br label %13

13:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i16 0, i16 17}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i32 0, i32 33}
!13 = !{i8 0, i8 2}
!14 = !{i64 2148090916}
!15 = !{i64 590023, i64 2148079994, i64 2148080020, i64 2148080067, i64 2148080089, i64 2148080117, i64 2148080137}
!16 = !{i64 576592, i64 576617, i64 576639, i64 576655, i64 576667, i64 576687, i64 576711, i64 576727, i64 576739}
!17 = !{i64 2148091042}
