; ModuleID = '/llk/IR/drivers/media/platform/atmel/atmel-isi.c_pt.bc'
source_filename = "../drivers/media/platform/atmel/atmel-isi.c"
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.isi_format = type { i32, i32, i8, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.106, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.106 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
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
%struct.atmel_isi = type { %struct.spinlock, ptr, ptr, i32, ptr, i32, %struct.list_head, [32 x %struct.isi_dma_desc], i8, %struct.completion, ptr, i32, %struct.isi_platform_data, i16, %struct.list_head, ptr, %struct.v4l2_device, ptr, %struct.v4l2_async_notifier, %struct.isi_graph_entity, %struct.v4l2_format, ptr, i32, ptr, %struct.mutex, %struct.vb2_queue }
%struct.isi_dma_desc = type { %struct.list_head, ptr, i32 }
%struct.isi_platform_data = type { i8, i8, i8, i8, i8, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.isi_graph_entity = type { ptr, ptr }
%struct.v4l2_format = type { i32, %union.anon.82 }
%union.anon.82 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.84, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.84 = type { i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.77 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.74], %struct.media_entity_enum, i32 }
%struct.anon.74 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.fbd = type { i32, i32, i32 }
%struct.frame_buffer = type { %struct.vb2_v4l2_buffer, ptr, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.103, i16, i16, i16, [10 x i16] }
%union.anon.103 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_state = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.99, [2 x i32] }
%union.anon.99 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.100, [2 x i32] }
%union.anon.100 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }

@atmel_isi_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-isi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author266 = internal constant [35 x i8] c"author=Josh Wu <josh.wu@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description267 = internal constant [44 x i8] c"description=The V4L2 driver for Atmel Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@atmel_isi_driver = internal global %struct.platform_driver { ptr @atmel_isi_probe, ptr @atmel_isi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_isi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_isi_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"atmel_isi\00", align 1
@atmel_isi_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_isi_runtime_suspend, ptr @atmel_isi_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"isi_clk\00", align 1
@atmel_isi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"&isi->lock\00", align 1
@isi_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @isi_open, ptr @isi_release }, align 4
@isi_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @isi_querycap, ptr @isi_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isi_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isi_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isi_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @isi_enum_input, ptr @isi_g_input, ptr @isi_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isi_g_parm, ptr @isi_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr @isi_enum_framesizes, ptr @isi_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@isi_video_qops = internal constant %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @buffer_init, ptr @buffer_prepare, ptr null, ptr @buffer_cleanup, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to initialize VB2 queue\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Can't allocate descriptors!\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"isi\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Unable to request irq %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Could not find the endpoint\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Could not parse the endpoint\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Unsupported bus width: %d\0A\00", align 1
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"atmel-isi\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Atmel Image Sensor Interface\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"platform:isi\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"%s data will not fit into plane (%lu < %lu)\0A\00", align 1
@__func__.buffer_prepare = private unnamed_addr constant [15 x i8] c"buffer_prepare\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Not enough dma descriptors.\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"stream on failed in subdev\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Reset ISI timed out\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Already in frame handling.\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"stream off failed in subdev\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.22 = private unnamed_addr constant [45 x i8] c"Timeout waiting for finishing codec request\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Disable ISI timed out\0A\00", align 1
@isi_graph_notify_ops = internal constant %struct.v4l2_async_notifier_operations { ptr @isi_graph_notify_bound, ptr @isi_graph_notify_complete, ptr @isi_graph_notify_unbind }, align 4
@.str.24 = private unnamed_addr constant [30 x i8] c"Notifier registration failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"No supported mediabus format found\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Can't wake up device\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Could not set default format\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@isi_formats = internal constant [10 x %struct.isi_format] [%struct.isi_format { i32 1448695129, i32 8200, i8 2, i32 0 }, %struct.isi_format { i32 1448695129, i32 8201, i8 2, i32 268435456 }, %struct.isi_format { i32 1448695129, i32 8198, i8 2, i32 536870912 }, %struct.isi_format { i32 1448695129, i32 8199, i8 2, i32 805306368 }, %struct.isi_format { i32 1346520914, i32 8200, i8 2, i32 536870912 }, %struct.isi_format { i32 1346520914, i32 8201, i8 2, i32 805306368 }, %struct.isi_format { i32 1346520914, i32 8198, i8 2, i32 0 }, %struct.isi_format { i32 1346520914, i32 8199, i8 2, i32 268435456 }, %struct.isi_format { i32 1497715271, i32 8202, i8 1, i32 8192 }, %struct.isi_format { i32 540422489, i32 8202, i8 2, i32 8192 }], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_license268], section "llvm.metadata"

@__mod_of__atmel_isi_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @atmel_isi_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_isi_driver, ptr noundef nonnull @__this_module) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_isi_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_isi_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1328, i32 noundef 3520) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %173, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.1) #13
  %8 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 10
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %7 to i32
  br label %173

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %14 = load ptr, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i32 64, i1 false) #13
  %15 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 12
  %16 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 12, i32 4
  store i8 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 12, i32 6
  store i32 0, ptr %17, align 4
  %18 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %14, ptr noundef null) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #14
  br label %56

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 3
  %23 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %22, ptr noundef nonnull %2) #13
  call void @of_node_put(ptr noundef nonnull %18) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #14
  br label %56

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %2, i32 0, i32 2
  %28 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %2, i32 0, i32 2, i32 0, i32 1
  %29 = load i8, ptr %28, align 4
  switch i8 %29, label %31 [
    i8 8, label %33
    i8 10, label %30
  ]

30:                                               ; preds = %26
  br label %33

31:                                               ; preds = %26
  %32 = zext i8 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %32) #14
  br label %56

33:                                               ; preds = %30, %26
  %34 = phi i32 [ 3, %30 ], [ 1, %26 ]
  %35 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 12, i32 5
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %27, align 4
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 12, i32 1
  store i8 1, ptr %40, align 1
  br label %41

41:                                               ; preds = %39, %33
  %42 = and i32 %36, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 12, i32 2
  store i8 1, ptr %45, align 2
  br label %46

46:                                               ; preds = %44, %41
  %47 = and i32 %36, 128
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 12, i32 3
  store i8 1, ptr %50, align 1
  br label %51

51:                                               ; preds = %49, %46
  %52 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %2, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  store i8 1, ptr %15, align 4
  br label %58

56:                                               ; preds = %31, %25, %20
  %57 = phi i32 [ -22, %20 ], [ -22, %31 ], [ %23, %25 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  br label %173

58:                                               ; preds = %55, %51
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  %59 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 15
  store ptr null, ptr %59, align 4
  %60 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 1
  store ptr %3, ptr %60, align 4
  %61 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 24
  call void @__mutex_init(ptr noundef %61, ptr noundef nonnull @.str.2, ptr noundef nonnull @atmel_isi_probe.__key) #13
  store i32 0, ptr %4, align 4
  %62 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 14
  store volatile ptr %62, ptr %62, align 4
  %63 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 14, i32 1
  store ptr %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 6
  store volatile ptr %64, ptr %64, align 4
  %65 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 6, i32 1
  store ptr %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 25
  %67 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 16
  %68 = call i32 @v4l2_device_register(ptr noundef %3, ptr noundef %67) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %173

70:                                               ; preds = %58
  %71 = call ptr @video_device_alloc() #13
  %72 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 17
  store ptr %71, ptr %72, align 4
  %73 = icmp eq ptr %71, null
  br i1 %73, label %171, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.video_device, ptr %71, i32 0, i32 3
  store ptr @isi_fops, ptr %75, align 4
  %76 = load ptr, ptr %72, align 4
  %77 = getelementptr inbounds %struct.video_device, ptr %76, i32 0, i32 7
  store ptr %67, ptr %77, align 4
  %78 = load ptr, ptr %72, align 4
  %79 = getelementptr inbounds %struct.video_device, ptr %78, i32 0, i32 10
  store ptr %66, ptr %79, align 8
  %80 = load ptr, ptr %72, align 4
  %81 = getelementptr inbounds %struct.video_device, ptr %80, i32 0, i32 12
  %82 = call i32 @strscpy(ptr noundef %81, ptr noundef nonnull @.str, i32 noundef 32) #13
  %83 = load ptr, ptr %72, align 4
  %84 = getelementptr inbounds %struct.video_device, ptr %83, i32 0, i32 23
  store ptr @video_device_release, ptr %84, align 8
  %85 = load ptr, ptr %72, align 4
  %86 = getelementptr inbounds %struct.video_device, ptr %85, i32 0, i32 24
  store ptr @isi_ioctl_ops, ptr %86, align 4
  %87 = load ptr, ptr %72, align 4
  %88 = getelementptr inbounds %struct.video_device, ptr %87, i32 0, i32 26
  store ptr %61, ptr %88, align 8
  %89 = load ptr, ptr %72, align 4
  %90 = getelementptr inbounds %struct.video_device, ptr %89, i32 0, i32 4
  store i32 83886081, ptr %90, align 8
  %91 = load ptr, ptr %72, align 4
  %92 = getelementptr inbounds %struct.video_device, ptr %91, i32 0, i32 5, i32 8
  store ptr %4, ptr %92, align 8
  store i32 1, ptr %66, align 4
  %93 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 25, i32 1
  store i32 21, ptr %93, align 4
  %94 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 25, i32 5
  store ptr %61, ptr %94, align 4
  %95 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 25, i32 10
  store ptr %4, ptr %95, align 4
  %96 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 25, i32 12
  store i32 656, ptr %96, align 4
  %97 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 25, i32 7
  store ptr @isi_video_qops, ptr %97, align 4
  %98 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 25, i32 8
  store ptr @vb2_dma_contig_memops, ptr %98, align 4
  %99 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 25, i32 13
  store i32 8192, ptr %99, align 4
  %100 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 25, i32 15
  store i32 2, ptr %100, align 4
  %101 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 25, i32 2
  store ptr %3, ptr %101, align 4
  %102 = call i32 @vb2_queue_init(ptr noundef %66) #13
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %74
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #14
  br label %168

105:                                              ; preds = %74
  %106 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 5
  %107 = call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef 384, ptr noundef %106, i32 noundef 3264, i32 noundef 0) #13
  %108 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 4
  store ptr %107, ptr %108, align 4
  %109 = icmp eq ptr %107, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #14
  br label %168

111:                                              ; preds = %126, %105
  %112 = phi ptr [ %127, %126 ], [ %107, %105 ]
  %113 = phi i32 [ %124, %126 ], [ 0, %105 ]
  %114 = getelementptr %struct.fbd, ptr %112, i32 %113
  %115 = getelementptr %struct.atmel_isi, ptr %4, i32 0, i32 7, i32 %113
  %116 = getelementptr %struct.atmel_isi, ptr %4, i32 0, i32 7, i32 %113, i32 1
  store ptr %114, ptr %116, align 4
  %117 = load i32, ptr %106, align 4
  %118 = mul nuw nsw i32 %113, 12
  %119 = add i32 %117, %118
  %120 = getelementptr %struct.atmel_isi, ptr %4, i32 0, i32 7, i32 %113, i32 2
  store i32 %119, ptr %120, align 4
  %121 = load ptr, ptr %64, align 4
  %122 = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  store ptr %115, ptr %122, align 4
  store ptr %121, ptr %115, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  store ptr %64, ptr %123, align 4
  store volatile ptr %115, ptr %64, align 4
  %124 = add nuw nsw i32 %113, 1
  %125 = icmp eq i32 %124, 32
  br i1 %125, label %128, label %126

126:                                              ; preds = %111
  %127 = load ptr, ptr %108, align 4
  br label %111

128:                                              ; preds = %111
  %129 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #13
  %130 = call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %129) #13
  %131 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 2
  store ptr %130, ptr %131, align 4
  %132 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = ptrtoint ptr %130 to i32
  br label %164

135:                                              ; preds = %128
  %136 = load i32, ptr %35, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 13
  store i16 128, ptr %140, align 4
  br label %141

141:                                              ; preds = %139, %135
  %142 = and i32 %136, 2
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 13
  %146 = load i16, ptr %145, align 4
  %147 = or i16 %146, 512
  store i16 %147, ptr %145, align 4
  br label %148

148:                                              ; preds = %144, %141
  %149 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #13
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %148
  %152 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %149, ptr noundef nonnull @isi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef %4) #13
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %149) #14
  br label %164

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 11
  store i32 %149, ptr %156, align 4
  %157 = call fastcc i32 @isi_graph_init(ptr noundef nonnull %4)
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %161 = load i16, ptr %160, align 8
  %162 = or i16 %161, 256
  store i16 %162, ptr %160, align 8
  call void @pm_runtime_enable(ptr noundef %3) #13
  %163 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %163, align 8
  br label %173

164:                                              ; preds = %155, %154, %148, %133
  %165 = phi i32 [ %134, %133 ], [ %152, %154 ], [ %157, %155 ], [ %149, %148 ]
  %166 = load ptr, ptr %108, align 4
  %167 = load i32, ptr %106, align 4
  call void @dma_free_attrs(ptr noundef %3, i32 noundef 384, ptr noundef %166, i32 noundef %167, i32 noundef 0) #13
  br label %168

168:                                              ; preds = %164, %110, %104
  %169 = phi i32 [ %102, %104 ], [ %165, %164 ], [ -12, %110 ]
  %170 = load ptr, ptr %72, align 4
  call void @video_device_release(ptr noundef %170) #13
  br label %171

171:                                              ; preds = %168, %70
  %172 = phi i32 [ %169, %168 ], [ -12, %70 ]
  call void @v4l2_device_unregister(ptr noundef %67) #13
  br label %173

173:                                              ; preds = %171, %159, %58, %56, %10, %1
  %174 = phi i32 [ %11, %10 ], [ %172, %171 ], [ 0, %159 ], [ -12, %1 ], [ %68, %58 ], [ %57, %56 ]
  ret i32 %174
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_isi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  tail call void @dma_free_attrs(ptr noundef %4, i32 noundef 384, ptr noundef %6, i32 noundef %8, i32 noundef 0) #13
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #13
  %9 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 18
  tail call void @v4l2_async_nf_unregister(ptr noundef %9) #13
  tail call void @v4l2_async_nf_cleanup(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 16
  tail call void @v4l2_device_unregister(ptr noundef %10) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @_raw_spin_lock(ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %10 = and i32 %9, %6
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 9
  tail call void @complete(ptr noundef %14) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 4) #13, !srcloc !11
  br label %74

17:                                               ; preds = %2
  %18 = and i32 %10, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 9
  tail call void @complete(ptr noundef %21) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 2) #13, !srcloc !11
  br label %74

24:                                               ; preds = %17
  %25 = and i32 %10, 131072
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30, !prof !12

27:                                               ; preds = %24
  %28 = and i32 %10, 65536
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %74, label %30, !prof !12

30:                                               ; preds = %27, %24
  %31 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 15
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.frame_buffer, ptr %32, i32 0, i32 2
  %36 = getelementptr inbounds %struct.frame_buffer, ptr %32, i32 0, i32 2, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %35, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %38, ptr %37, align 4
  store volatile ptr %35, ptr %35, align 4
  store ptr %35, ptr %36, align 4
  %40 = tail call i64 @ktime_get() #13
  %41 = getelementptr inbounds %struct.vb2_buffer, ptr %32, i32 0, i32 5
  store i64 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %32, i32 0, i32 4
  store i32 %43, ptr %45, align 8
  %46 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %32, i32 0, i32 2
  store i32 1, ptr %46, align 4
  tail call void @vb2_buffer_done(ptr noundef nonnull %32, i32 noundef 5) #13
  br label %47

47:                                               ; preds = %34, %30
  %48 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 14
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store ptr null, ptr %31, align 4
  br label %74

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %49, i32 -644
  store ptr %53, ptr %31, align 4
  %54 = getelementptr inbounds %struct.atmel_isi, ptr %1, i32 0, i32 8
  %55 = load i8, ptr %54, align 4, !range !13
  %56 = icmp eq i8 %55, 0
  %57 = getelementptr i8, ptr %49, i32 -4
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.isi_dma_desc, ptr %58, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %61 = load ptr, ptr %3, align 4
  br i1 %56, label %62, label %68

62:                                               ; preds = %52
  %63 = getelementptr i8, ptr %61, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %60) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr i8, ptr %64, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 9) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr i8, ptr %66, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 2) #13, !srcloc !11
  br label %74

68:                                               ; preds = %52
  %69 = getelementptr i8, ptr %61, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %60) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %70 = load ptr, ptr %3, align 4
  %71 = getelementptr i8, ptr %70, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 9) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr i8, ptr %72, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 1) #13, !srcloc !11
  br label %74

74:                                               ; preds = %68, %62, %51, %27, %20, %13
  %75 = phi i32 [ 1, %13 ], [ 1, %20 ], [ 0, %27 ], [ 1, %51 ], [ 1, %62 ], [ 1, %68 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %76 = load i16, ptr %1, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isi_graph_init(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %5, ptr noundef null) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 18
  tail call void @v4l2_async_nf_init(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  %11 = tail call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %9, ptr noundef %10, i32 noundef 28) #13
  tail call void @of_node_put(ptr noundef nonnull %6) #13
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %11 to i32
  br label %21

15:                                               ; preds = %8
  store ptr @isi_graph_notify_ops, ptr %9, align 4
  %16 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 16
  %17 = tail call i32 @v4l2_async_nf_register(ptr noundef %16, ptr noundef %9) #13
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.24) #14
  tail call void @v4l2_async_nf_cleanup(ptr noundef %9) #13
  br label %21

21:                                               ; preds = %19, %15, %13, %1
  %22 = phi i32 [ %14, %13 ], [ %17, %19 ], [ -22, %1 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_open(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 19, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 24
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %78

10:                                               ; preds = %1
  %11 = tail call i32 @v4l2_fh_open(ptr noundef %0) #13
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %76, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @v4l2_fh_is_singular(ptr noundef %15) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %67, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %6, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %23, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %30, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi ptr [ %27, %36 ], [ %34, %32 ]
  %39 = tail call i32 %38(ptr noundef nonnull %6, i32 noundef 1) #13
  br label %40

40:                                               ; preds = %37, %18
  %41 = phi i32 [ -19, %18 ], [ %39, %37 ]
  %42 = icmp slt i32 %41, 0
  %43 = icmp ne i32 %41, -515
  %44 = and i1 %42, %43
  br i1 %44, label %73, label %45

45:                                               ; preds = %40, %25, %20
  %46 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 20
  %47 = tail call fastcc i32 @isi_set_fmt(ptr noundef %4, ptr noundef %46)
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i1 true, i1 %19
  br i1 %49, label %67, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %53, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %60, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %59
  br label %70

67:                                               ; preds = %45, %13
  %68 = phi i32 [ %47, %45 ], [ %11, %13 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %73

70:                                               ; preds = %66, %62
  %71 = phi ptr [ %57, %66 ], [ %64, %62 ]
  %72 = tail call i32 %71(ptr noundef nonnull %6, i32 noundef 0) #13
  br label %73

73:                                               ; preds = %70, %67, %55, %50, %40
  %74 = phi i32 [ %68, %67 ], [ %47, %55 ], [ %47, %50 ], [ %41, %40 ], [ %47, %70 ]
  %75 = tail call i32 @v4l2_fh_release(ptr noundef %0) #13
  br label %76

76:                                               ; preds = %73, %67, %10
  %77 = phi i32 [ %11, %10 ], [ %74, %73 ], [ 0, %67 ]
  tail call void @mutex_unlock(ptr noundef %7) #13
  br label %78

78:                                               ; preds = %76, %1
  %79 = phi i32 [ %77, %76 ], [ -512, %1 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_release(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 19, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 24
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @v4l2_fh_is_singular(ptr noundef %9) #13
  %11 = icmp eq i32 %10, 0
  %12 = tail call i32 @_vb2_fop_release(ptr noundef %0, ptr noundef null) #13
  %13 = icmp eq ptr %6, null
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %35, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.v4l2_subdev, ptr %6, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %18, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %25, i32 0, i32 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi ptr [ %22, %31 ], [ %29, %27 ]
  %34 = tail call i32 %33(ptr noundef nonnull %6, i32 noundef 0) #13
  br label %35

35:                                               ; preds = %32, %20, %15, %1
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isi_set_fmt(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.v4l2_subdev_format, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #13
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %5, i8 0, i32 84, i1 false)
  store i32 1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !18
  %6 = call fastcc i32 @isi_try_fmt(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %66

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.isi_format, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %10, align 4
  store i32 %14, ptr %9, align 4
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 3
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 4
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 5
  store i16 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 6
  store i16 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 7
  store i16 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 2, i32 2
  store i32 %13, ptr %36, align 4
  %37 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 19, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %66, label %40

40:                                               ; preds = %8
  %41 = getelementptr inbounds %struct.v4l2_subdev, ptr %38, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %42, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %66, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %44, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %51, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi ptr [ %48, %57 ], [ %55, %53 ]
  %60 = call i32 %59(ptr noundef nonnull %38, ptr noundef null, ptr noundef nonnull %3) #13
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(204) %63, ptr noundef align 4 dereferenceable(204) %1, i32 204, i1 false)
  %64 = load ptr, ptr %4, align 4
  %65 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 23
  store ptr %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %62, %58, %46, %40, %8, %2
  %67 = phi i32 [ 0, %62 ], [ %6, %2 ], [ %60, %58 ], [ -515, %40 ], [ -515, %46 ], [ -19, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #13
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @isi_try_fmt(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef writeonly %2) unnamed_addr #2 {
  %4 = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  %5 = alloca %struct.v4l2_subdev_pad_config, align 4
  %6 = alloca %struct.v4l2_subdev_state, align 4
  %7 = alloca %struct.v4l2_subdev_format, align 4
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %5, i8 0, i32 80, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr %5, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %7, i8 0, i32 88, i1 false)
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 21
  %15 = load ptr, ptr %14, align 4
  br i1 %13, label %27, label %19

16:                                               ; preds = %19
  %17 = add nuw i32 %20, 1
  %18 = icmp eq i32 %17, %12
  br i1 %18, label %27, label %19

19:                                               ; preds = %16, %3
  %20 = phi i32 [ %17, %16 ], [ 0, %3 ]
  %21 = getelementptr ptr, ptr %15, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %10
  br i1 %24, label %25, label %16

25:                                               ; preds = %19
  %26 = icmp eq ptr %22, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %25, %16, %3
  %28 = add i32 %12, -1
  %29 = getelementptr ptr, ptr %15, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %9, align 4
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi ptr [ %22, %25 ], [ %30, %27 ]
  %34 = load i32, ptr %8, align 4
  %35 = call i32 @llvm.umin.i32(i32 %34, i32 2048)
  store i32 %35, ptr %8, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = call i32 @llvm.umin.i32(i32 %37, i32 2048)
  store i32 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2
  %40 = getelementptr inbounds %struct.isi_format, ptr %33, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  store i32 %35, ptr %39, align 4
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 1
  store i32 %38, ptr %42, align 4
  %43 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 3
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 4
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = trunc i32 %50 to i16
  %52 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 5
  store i16 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = trunc i32 %54 to i16
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 6
  store i16 %55, ptr %56, align 2
  %57 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 7
  store i16 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 2
  store i32 %41, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %62 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i64 64, i1 false) #13
  %63 = load i32, ptr %40, align 4
  store i32 %63, ptr %62, align 4
  %64 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 19, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %91, label %67

67:                                               ; preds = %32
  %68 = getelementptr inbounds %struct.v4l2_subdev, ptr %65, i32 0, i32 6
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %69, i32 0, i32 7
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %91, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %71, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %91, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %78, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi ptr [ %75, %84 ], [ %82, %80 ]
  %87 = call i32 %86(ptr noundef nonnull %65, ptr noundef nonnull %6, ptr noundef nonnull %4) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %6, align 4
  br label %91

91:                                               ; preds = %89, %73, %67, %32
  %92 = phi ptr [ %90, %89 ], [ %5, %73 ], [ %5, %67 ], [ %5, %32 ]
  %93 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %92, i32 0, i32 1, i32 2
  store i32 2048, ptr %93, align 4
  br label %101

94:                                               ; preds = %85
  %95 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = load ptr, ptr %6, align 4
  %98 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %97, i32 0, i32 1, i32 2
  store i32 %96, ptr %98, align 4
  %99 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 6
  %100 = load i32, ptr %99, align 4
  br label %101

101:                                              ; preds = %94, %91
  %102 = phi ptr [ %97, %94 ], [ %92, %91 ]
  %103 = phi i32 [ %100, %94 ], [ 2048, %91 ]
  %104 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %102, i32 0, i32 1, i32 3
  store i32 %103, ptr %104, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  %105 = load ptr, ptr %64, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %148, label %107

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.v4l2_subdev, ptr %105, i32 0, i32 6
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %109, i32 0, i32 7
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %148, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %111, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %148, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %118, i32 0, i32 5
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %117
  br label %125

125:                                              ; preds = %124, %120
  %126 = phi ptr [ %115, %124 ], [ %122, %120 ]
  %127 = call i32 %126(ptr noundef nonnull %105, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %39, align 4
  store i32 %130, ptr %8, align 4
  %131 = load i32, ptr %42, align 4
  store i32 %131, ptr %36, align 4
  %132 = load i32, ptr %48, align 4
  store i32 %132, ptr %46, align 4
  %133 = load i16, ptr %52, align 4
  %134 = zext i16 %133 to i32
  store i32 %134, ptr %49, align 4
  %135 = load i16, ptr %56, align 2
  %136 = zext i16 %135 to i32
  store i32 %136, ptr %53, align 4
  %137 = load i16, ptr %60, align 4
  %138 = zext i16 %137 to i32
  store i32 %138, ptr %57, align 4
  store i32 1, ptr %43, align 4
  %139 = getelementptr inbounds %struct.isi_format, ptr %33, i32 0, i32 2
  %140 = load i8, ptr %139, align 4
  %141 = zext i8 %140 to i32
  %142 = mul i32 %130, %141
  %143 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 4
  store i32 %142, ptr %143, align 4
  %144 = mul i32 %142, %131
  %145 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5
  store i32 %144, ptr %145, align 4
  %146 = icmp eq ptr %2, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %129
  store ptr %33, ptr %2, align 4
  br label %148

148:                                              ; preds = %147, %129, %125, %113, %107, %101
  %149 = phi i32 [ %127, %125 ], [ 0, %147 ], [ 0, %129 ], [ -515, %107 ], [ -515, %113 ], [ -19, %101 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #13
  ret i32 %149
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_querycap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 16) #13
  %5 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %6 = tail call i32 @strscpy(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef 32) #13
  %7 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %8 = tail call i32 @strscpy(ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef 32) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_enum_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.atmel_isi, ptr %6, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.atmel_isi, ptr %6, i32 0, i32 21
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %7
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %11, %3
  %19 = phi i32 [ 0, %11 ], [ -22, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_g_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.atmel_isi, ptr %6, i32 0, i32 20
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(204) %2, ptr noundef align 4 dereferenceable(204) %7, i32 204, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_s_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.atmel_isi, ptr %6, i32 0, i32 25, i32 28
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @isi_set_fmt(ptr noundef %6, ptr noundef %2)
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i32 [ %12, %11 ], [ -16, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_try_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc i32 @isi_try_fmt(ptr noundef %6, ptr noundef %2, ptr noundef null)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_enum_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = load i32, ptr %2, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 2
  store i32 2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %9 = tail call i32 @strscpy(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef 32) #13
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @isi_g_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @isi_s_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #8 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 0, i32 -22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_g_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.atmel_isi, ptr %6, i32 0, i32 19, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @v4l2_g_parm_cap(ptr noundef %7, ptr noundef %9, ptr noundef %2) #13
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_s_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.atmel_isi, ptr %6, i32 0, i32 19, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @v4l2_s_parm_cap(ptr noundef %7, ptr noundef %9, ptr noundef %2) #13
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_enum_framesizes(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %8, i8 0, i64 60, i1 false)
  %9 = load i32, ptr %2, align 4
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 7
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.atmel_isi, ptr %7, i32 0, i32 22
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %67, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.atmel_isi, ptr %7, i32 0, i32 21
  %18 = load ptr, ptr %17, align 4
  br label %22

19:                                               ; preds = %22
  %20 = add nuw i32 %23, 1
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %67, label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ 0, %16 ], [ %20, %19 ]
  %24 = getelementptr ptr, ptr %18, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %12
  br i1 %27, label %28, label %19

28:                                               ; preds = %22
  %29 = icmp eq ptr %25, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.isi_format, ptr %25, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.atmel_isi, ptr %7, i32 0, i32 19, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %67, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.v4l2_subdev, ptr %35, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %39, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %67, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %41, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %48, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %47
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi ptr [ %45, %54 ], [ %52, %50 ]
  %57 = call i32 %56(ptr noundef nonnull %35, ptr noundef null, ptr noundef nonnull %4) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 2
  store i32 1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 %65, ptr %66, align 4
  br label %67

67:                                               ; preds = %59, %55, %43, %37, %30, %28, %19, %3
  %68 = phi i32 [ 0, %59 ], [ -22, %28 ], [ %57, %55 ], [ -22, %3 ], [ -515, %37 ], [ -515, %43 ], [ -19, %30 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_enum_frameintervals(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %8, i8 0, i64 60, i1 false)
  %9 = load i32, ptr %2, align 4
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 4
  %14 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 6
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.atmel_isi, ptr %7, i32 0, i32 22
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %70, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.atmel_isi, ptr %7, i32 0, i32 21
  %24 = load ptr, ptr %23, align 4
  br label %28

25:                                               ; preds = %28
  %26 = add nuw i32 %29, 1
  %27 = icmp eq i32 %26, %20
  br i1 %27, label %70, label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ 0, %22 ], [ %26, %25 ]
  %30 = getelementptr ptr, ptr %24, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %18
  br i1 %33, label %34, label %25

34:                                               ; preds = %28
  %35 = icmp eq ptr %31, null
  br i1 %35, label %70, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.isi_format, ptr %31, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.atmel_isi, ptr %7, i32 0, i32 19, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %70, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.v4l2_subdev, ptr %41, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %45, i32 0, i32 7
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %47, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %54, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi ptr [ %51, %60 ], [ %58, %56 ]
  %63 = call i32 %62(ptr noundef nonnull %41, ptr noundef null, ptr noundef nonnull %4) #13
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 4
  store i32 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5
  %68 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 5
  %69 = load i64, ptr %68, align 4
  store i64 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %65, %61, %49, %43, %36, %34, %25, %3
  %71 = phi i32 [ 0, %65 ], [ -22, %34 ], [ %63, %61 ], [ -22, %3 ], [ -515, %43 ], [ -515, %49 ], [ -19, %36 ], [ -22, %25 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #9 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.atmel_isi, ptr %7, i32 0, i32 20, i32 1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr %3, align 4
  %14 = icmp ult i32 %13, %9
  %15 = select i1 %14, i32 -22, i32 0
  br label %18

16:                                               ; preds = %5
  store i32 1, ptr %2, align 4
  store i32 %9, ptr %3, align 4
  %17 = getelementptr inbounds %struct.atmel_isi, ptr %7, i32 0, i32 15
  store ptr null, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %15, %12 ], [ 0, %16 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @buffer_init(ptr noundef %0) #10 {
  %2 = getelementptr inbounds %struct.frame_buffer, ptr %0, i32 0, i32 1
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %struct.frame_buffer, ptr %0, i32 0, i32 2
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.frame_buffer, ptr %0, i32 0, i32 2, i32 1
  store ptr %3, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 20, i32 1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %22, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i32 %14, %6
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %10
  %17 = phi i32 [ 0, %10 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.buffer_prepare, i32 noundef %17, i32 noundef %6) #14
  br label %46

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 %6, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %10
  %23 = getelementptr inbounds %struct.frame_buffer, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 6
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.15) #14
  br label %46

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %28, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %35, ptr %37, align 4
  store volatile ptr %36, ptr %35, align 4
  store volatile ptr %28, ptr %28, align 4
  store ptr %28, ptr %34, align 4
  %38 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #13
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.isi_dma_desc, ptr %28, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  store i32 %39, ptr %41, align 4
  %42 = load ptr, ptr %40, align 4
  %43 = getelementptr inbounds %struct.fbd, ptr %42, i32 0, i32 2
  store i32 0, ptr %43, align 4
  %44 = load ptr, ptr %40, align 4
  %45 = getelementptr inbounds %struct.fbd, ptr %44, i32 0, i32 1
  store i32 2, ptr %45, align 4
  store ptr %28, ptr %23, align 8
  br label %46

46:                                               ; preds = %33, %30, %22, %16
  %47 = phi i32 [ -22, %16 ], [ -22, %30 ], [ 0, %33 ], [ 0, %22 ]
  ret i32 %47
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @buffer_cleanup(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.frame_buffer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.vb2_queue, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_isi, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %3, ptr %11, align 4
  store ptr %10, ptr %3, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %9, ptr %12, align 4
  store volatile ptr %3, ptr %9, align 4
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #13
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #13, !srcloc !20
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 -1, ptr elementtype(i32) %10) #13, !srcloc !21
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %145, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  br label %145

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 19, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %23, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %30, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi ptr [ %27, %36 ], [ %34, %32 ]
  %39 = tail call i32 %38(ptr noundef nonnull %17, i32 noundef 1) #13
  switch i32 %39, label %40 [
    i32 -515, label %43
    i32 0, label %43
  ]

40:                                               ; preds = %37, %15
  %41 = phi i32 [ %39, %37 ], [ -19, %15 ]
  %42 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.17) #14
  br label %126

43:                                               ; preds = %37, %37, %25, %19
  %44 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 9
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %45, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %46 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 4) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr i8, ptr %49, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 4) #13, !srcloc !11
  %51 = tail call i32 @wait_for_completion_timeout(ptr noundef %44, i32 noundef 50) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.18) #14
  %55 = load ptr, ptr %16, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %126, label %105

57:                                               ; preds = %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %58 = load ptr, ptr %46, align 4
  %59 = getelementptr i8, ptr %58, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 -1) #13, !srcloc !11
  %60 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 3
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 23
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %62, align 4
  switch i32 %63, label %64 [
    i32 1346520914, label %65
    i32 876758866, label %65
    i32 540422489, label %65
  ]

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %57, %57, %57
  %66 = phi i1 [ true, %57 ], [ false, %64 ], [ true, %57 ], [ true, %57 ]
  %67 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 8
  %68 = zext i1 %66 to i8
  store i8 %68, ptr %67, align 4
  %69 = getelementptr inbounds %struct.isi_format, ptr %62, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %71 = load ptr, ptr %46, align 4
  %72 = getelementptr i8, ptr %71, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 2) #13, !srcloc !11
  %73 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 20, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = shl i32 %74, 16
  %76 = add i32 %75, 134152192
  %77 = and i32 %76, 134152192
  %78 = or i32 %77, %70
  %79 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 20, i32 1, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 2047
  %82 = and i32 %81, 2047
  %83 = or i32 %78, %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %84 = load ptr, ptr %46, align 4
  %85 = getelementptr i8, ptr %84, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %83) #13, !srcloc !11
  %86 = load i32, ptr %73, align 4
  %87 = shl i32 %86, 16
  %88 = add i32 %87, 67043328
  %89 = and i32 %88, 67043328
  %90 = load i32, ptr %79, align 4
  %91 = add i32 %90, 1023
  %92 = and i32 %91, 1023
  %93 = or i32 %89, %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %94 = load ptr, ptr %46, align 4
  %95 = getelementptr i8, ptr %94, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %96 = load ptr, ptr %46, align 4
  %97 = getelementptr i8, ptr %96, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 16) #13, !srcloc !11
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #13
  %98 = load ptr, ptr %46, align 4
  %99 = getelementptr i8, ptr %98, i32 40
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %101 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 15
  %102 = load ptr, ptr %101, align 4
  tail call fastcc void @start_dma(ptr noundef %4, ptr noundef %102)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %103 = load i16, ptr %4, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %145

105:                                              ; preds = %53
  %106 = getelementptr inbounds %struct.v4l2_subdev, ptr %55, i32 0, i32 6
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %107, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %126, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %109, i32 0, i32 10
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %126, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %116, i32 0, i32 10
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = tail call i32 %120(ptr noundef nonnull %55, i32 noundef 0) #13
  br label %126

124:                                              ; preds = %118, %115
  %125 = tail call i32 %113(ptr noundef nonnull %55, i32 noundef 0) #13
  br label %126

126:                                              ; preds = %124, %122, %111, %105, %53, %40
  %127 = phi i32 [ %41, %40 ], [ -110, %105 ], [ -110, %111 ], [ -110, %53 ], [ -110, %124 ], [ -110, %122 ]
  %128 = load ptr, ptr %5, align 4
  %129 = tail call i32 @__pm_runtime_idle(ptr noundef %128, i32 noundef 5) #13
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #13
  %130 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 15
  store ptr null, ptr %130, align 4
  %131 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 14
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, %131
  br i1 %133, label %142, label %134

134:                                              ; preds = %134, %126
  %135 = phi ptr [ %137, %134 ], [ %132, %126 ]
  %136 = getelementptr i8, ptr %135, i32 -644
  %137 = load ptr, ptr %135, align 4
  %138 = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  store ptr %139, ptr %140, align 4
  store volatile ptr %137, ptr %139, align 4
  store volatile ptr %135, ptr %135, align 4
  store ptr %135, ptr %138, align 4
  tail call void @vb2_buffer_done(ptr noundef %136, i32 noundef 3) #13
  %141 = icmp eq ptr %137, %131
  br i1 %141, label %142, label %134

142:                                              ; preds = %134, %126
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %143 = load i16, ptr %4, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  br label %145

145:                                              ; preds = %142, %65, %14, %9
  %146 = phi i32 [ %127, %142 ], [ 0, %65 ], [ %7, %9 ], [ %7, %14 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 19, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %11, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %18, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %17
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi ptr [ %15, %24 ], [ %22, %20 ]
  %27 = tail call i32 %26(ptr noundef nonnull %5, i32 noundef 0) #13
  switch i32 %27, label %28 [
    i32 -515, label %31
    i32 0, label %31
  ]

28:                                               ; preds = %25, %1
  %29 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.21) #14
  br label %31

31:                                               ; preds = %28, %25, %25, %13, %7
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #13
  %32 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 15
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 14
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %44, label %36

36:                                               ; preds = %36, %31
  %37 = phi ptr [ %39, %36 ], [ %34, %31 ]
  %38 = getelementptr i8, ptr %37, i32 -644
  %39 = load ptr, ptr %37, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %39, ptr %41, align 4
  store volatile ptr %37, ptr %37, align 4
  store ptr %37, ptr %40, align 4
  tail call void @vb2_buffer_done(ptr noundef %38, i32 noundef 6) #13
  %43 = icmp eq ptr %39, %33
  br i1 %43, label %44, label %36

44:                                               ; preds = %36, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %45 = load i16, ptr %3, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %47 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 8
  %48 = load i8, ptr %47, align 4, !range !13
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %44
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = add i32 %51, 6
  %53 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 40
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %57 = and i32 %56, 256
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %63, %50
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = sub i32 %60, %52
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  tail call void @msleep(i32 noundef 1) #13
  %64 = load ptr, ptr %53, align 4
  %65 = getelementptr i8, ptr %64, i32 40
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %67 = and i32 %66, 256
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %59

69:                                               ; preds = %63, %59, %50
  %70 = load volatile i32, ptr @jiffies, align 64
  %71 = sub i32 %52, %70
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.22) #14
  br label %76

76:                                               ; preds = %73, %69, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %77 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 196608) #13, !srcloc !11
  %80 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 9
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %81, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #13
  tail call void asm sideeffect "dsb st", "~{memory}"() #13
  tail call void @arm_heavy_mb() #13
  %82 = load ptr, ptr %77, align 4
  %83 = getelementptr i8, ptr %82, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 2) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %84 = load ptr, ptr %77, align 4
  %85 = getelementptr i8, ptr %84, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 2) #13, !srcloc !11
  %86 = tail call i32 @wait_for_completion_timeout(ptr noundef %80, i32 noundef 50) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.23) #14
  br label %91

91:                                               ; preds = %88, %76
  %92 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 @__pm_runtime_idle(ptr noundef %93, i32 noundef 5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.frame_buffer, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 14
  %8 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 14, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %6, ptr %8, align 4
  store ptr %7, ptr %6, align 4
  %10 = getelementptr inbounds %struct.frame_buffer, ptr %0, i32 0, i32 2, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %6, ptr %9, align 4
  %11 = getelementptr inbounds %struct.atmel_isi, ptr %4, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  store ptr %0, ptr %11, align 4
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.vb2_queue, ptr %15, i32 0, i32 28
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call fastcc void @start_dma(ptr noundef %4, ptr noundef %0)
  br label %21

21:                                               ; preds = %20, %14, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @start_dma(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr i8, ptr %6, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 196608) #13, !srcloc !11
  %8 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 8
  %9 = load i8, ptr %8, align 4, !range !13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #13, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !9
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.20) #14
  br label %54

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.frame_buffer, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.isi_dma_desc, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 9) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 2) #13, !srcloc !11
  br label %42

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.frame_buffer, ptr %1, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.isi_dma_desc, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr i8, ptr %36, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr i8, ptr %38, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 9) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i8, ptr %40, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 1) #13, !srcloc !11
  br label %42

42:                                               ; preds = %31, %20
  %43 = and i32 %5, -3841
  %44 = getelementptr inbounds %struct.atmel_isi, ptr %0, i32 0, i32 12, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %43, %45
  %47 = or i32 %46, 2048
  %48 = load i8, ptr %8, align 4, !range !13
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 257, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr i8, ptr %51, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #13, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  tail call void @arm_heavy_mb() #13
  %53 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %47) #13, !srcloc !11
  br label %54

54:                                               ; preds = %42, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @isi_graph_notify_bound(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 52
  store ptr %1, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @isi_graph_notify_complete(ptr nocapture noundef %0) #2 {
  %2 = alloca %struct.v4l2_format, align 4
  %3 = alloca [10 x ptr], align 4
  %4 = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  %5 = getelementptr i8, ptr %0, i32 -696
  %6 = getelementptr i8, ptr %0, i32 52
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.video_device, ptr %11, i32 0, i32 9
  store ptr %9, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false) #13, !annotation !18
  %13 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false) #13
  %14 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %4, i32 0, i32 3
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %16 = icmp eq ptr %13, null
  br i1 %16, label %97, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %18, i32 0, i32 1
  %21 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %4, i32 0, i32 2
  %22 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %4, i32 0, i32 1
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %97, label %27

27:                                               ; preds = %74, %17
  %28 = phi ptr [ %79, %74 ], [ %25, %17 ]
  %29 = phi i32 [ %71, %74 ], [ 0, %17 ]
  %30 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %28, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %81, label %33

33:                                               ; preds = %27
  br i1 %19, label %37, label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %20, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %33
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi ptr [ %31, %37 ], [ %35, %34 ]
  %40 = call i32 %39(ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %4) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %81

42:                                               ; preds = %38
  %43 = load i32, ptr %21, align 4
  br label %44

44:                                               ; preds = %70, %42
  %45 = phi i32 [ 0, %42 ], [ %72, %70 ]
  %46 = phi i32 [ %29, %42 ], [ %71, %70 ]
  %47 = getelementptr [10 x %struct.isi_format], ptr @isi_formats, i32 0, i32 %45
  %48 = getelementptr [10 x %struct.isi_format], ptr @isi_formats, i32 0, i32 %45, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %43
  br i1 %50, label %51, label %70

51:                                               ; preds = %44
  %52 = icmp eq i32 %46, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %51
  %54 = load i32, ptr %47, align 4
  br label %55

55:                                               ; preds = %61, %53
  %56 = phi i32 [ 0, %53 ], [ %62, %61 ]
  %57 = getelementptr [10 x ptr], ptr %3, i32 0, i32 %56
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %54
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = add nuw i32 %56, 1
  %63 = icmp eq i32 %62, %46
  br i1 %63, label %67, label %55

64:                                               ; preds = %55, %51
  %65 = phi i32 [ 0, %51 ], [ %56, %55 ]
  %66 = icmp eq i32 %65, %46
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %61
  %68 = add i32 %46, 1
  %69 = getelementptr [10 x ptr], ptr %3, i32 0, i32 %46
  store ptr %47, ptr %69, align 4
  br label %70

70:                                               ; preds = %67, %64, %44
  %71 = phi i32 [ %46, %44 ], [ %68, %67 ], [ %46, %64 ]
  %72 = add nuw nsw i32 %45, 1
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %44

74:                                               ; preds = %70
  %75 = load i32, ptr %22, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %22, align 4
  %77 = load ptr, ptr %15, align 4
  %78 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %77, i32 0, i32 7
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %27

81:                                               ; preds = %74, %38, %27
  %82 = phi i32 [ %71, %74 ], [ %29, %27 ], [ %29, %38 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %81
  %85 = getelementptr i8, ptr %0, i32 264
  store i32 %82, ptr %85, align 4
  %86 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %82, i32 4) #13
  %87 = extractvalue { i32, i1 } %86, 1
  br i1 %87, label %88, label %90, !prof !12

88:                                               ; preds = %84
  %89 = getelementptr i8, ptr %0, i32 260
  store ptr null, ptr %89, align 4
  br label %97

90:                                               ; preds = %84
  %91 = getelementptr i8, ptr %0, i32 -692
  %92 = load ptr, ptr %91, align 4
  %93 = extractvalue { i32, i1 } %86, 0
  %94 = call noalias ptr @devm_kmalloc(ptr noundef %92, i32 noundef %93, i32 noundef 3520) #13
  %95 = getelementptr i8, ptr %0, i32 260
  store ptr %94, ptr %95, align 4
  %96 = icmp eq ptr %94, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %90, %88, %81, %17, %1
  %98 = phi i32 [ -6, %17 ], [ -6, %1 ], [ -12, %88 ], [ -12, %90 ], [ -6, %81 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #13
  %99 = getelementptr i8, ptr %0, i32 -692
  br label %166

100:                                              ; preds = %90
  %101 = shl nuw i32 %82, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %94, ptr nonnull align 4 %3, i32 %101, i1 false) #13
  %102 = load ptr, ptr %94, align 4
  %103 = getelementptr i8, ptr %0, i32 268
  store ptr %102, ptr %103, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #13
  %104 = getelementptr i8, ptr %0, i32 -124
  %105 = getelementptr i8, ptr %0, i32 -123
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr i8, ptr %0, i32 -122
  %108 = load i8, ptr %107, align 2
  %109 = getelementptr i8, ptr %0, i32 -121
  %110 = load i8, ptr %109, align 1
  %111 = load i8, ptr %104, align 4
  %112 = getelementptr i8, ptr %0, i32 -120
  %113 = load i8, ptr %112, align 4
  %114 = load ptr, ptr %91, align 4
  %115 = call i32 @__pm_runtime_resume(ptr noundef %114, i32 noundef 4) #13
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %100
  %118 = getelementptr inbounds %struct.device, ptr %114, i32 0, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %118) #13, !srcloc !20
  %119 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %118, ptr %118, i32 0, i32 -1, ptr elementtype(i32) %118) #13, !srcloc !21
  %120 = extractvalue { i32, i32, i32 } %119, 0
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %166, label %122

122:                                              ; preds = %117
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  br label %166

123:                                              ; preds = %100
  %124 = icmp eq i8 %113, 0
  %125 = icmp eq i8 %111, 0
  %126 = icmp eq i8 %110, 0
  %127 = icmp eq i8 %108, 0
  %128 = icmp eq i8 %106, 0
  %129 = select i1 %128, i32 0, i32 4
  %130 = or i32 %129, 8
  %131 = select i1 %127, i32 %129, i32 %130
  %132 = or i32 %131, 16
  %133 = select i1 %126, i32 %131, i32 %132
  %134 = or i32 %133, 64
  %135 = select i1 %125, i32 %133, i32 %134
  %136 = or i32 %135, 4096
  %137 = select i1 %124, i32 %135, i32 %136
  %138 = or i32 %137, 16384
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  call void @arm_heavy_mb() #13
  %139 = getelementptr i8, ptr %0, i32 -688
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr i8, ptr %140, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 2) #13, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !10
  call void @arm_heavy_mb() #13
  %142 = load ptr, ptr %139, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %138) #13, !srcloc !11
  %143 = load ptr, ptr %91, align 4
  %144 = call i32 @__pm_runtime_idle(ptr noundef %143, i32 noundef 5) #13
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %2) #13
  %145 = getelementptr inbounds i8, ptr %2, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(184) %145, i8 0, i64 184, i1 false) #13
  store i32 1, ptr %2, align 4
  %146 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  store i32 640, ptr %146, align 4
  %147 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 480, ptr %147, align 4
  %148 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %149 = load ptr, ptr %95, align 4
  %150 = load ptr, ptr %149, align 4
  %151 = load i32, ptr %150, align 4
  store i32 %151, ptr %148, align 4
  %152 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %152, align 4
  %153 = call fastcc i32 @isi_try_fmt(ptr noundef %5, ptr noundef nonnull %2, ptr noundef null) #13
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %123
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %2) #13
  br label %166

156:                                              ; preds = %123
  %157 = load ptr, ptr %95, align 4
  %158 = load ptr, ptr %157, align 4
  store ptr %158, ptr %103, align 4
  %159 = getelementptr i8, ptr %0, i32 56
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(204) %159, ptr noundef nonnull align 4 dereferenceable(204) %2, i32 204, i1 false) #13
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %2) #13
  %160 = load ptr, ptr %10, align 4
  %161 = getelementptr inbounds %struct.video_device, ptr %160, i32 0, i32 3
  %162 = load ptr, ptr %161, align 4
  %163 = load ptr, ptr %162, align 4
  %164 = call i32 @__video_register_device(ptr noundef %160, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %163) #13
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %156, %155, %122, %117, %97
  %167 = phi ptr [ %91, %155 ], [ %99, %97 ], [ %91, %117 ], [ %91, %122 ], [ %91, %156 ]
  %168 = phi ptr [ @.str.27, %155 ], [ @.str.25, %97 ], [ @.str.26, %117 ], [ @.str.26, %122 ], [ @.str.28, %156 ]
  %169 = phi i32 [ %153, %155 ], [ %98, %97 ], [ %115, %117 ], [ %115, %122 ], [ %164, %156 ]
  %170 = load ptr, ptr %167, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %170, ptr noundef nonnull %168) #14
  br label %171

171:                                              ; preds = %166, %156
  %172 = phi i32 [ 0, %156 ], [ %169, %166 ]
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @isi_graph_notify_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  tail call void @video_unregister_device(ptr noundef %5) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_isi_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #13
  tail call void @clk_unprepare(ptr noundef %5) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_isi_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_isi, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #13
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!8 = !{i64 4031359}
!9 = !{i64 2155043846}
!10 = !{i64 2155043391}
!11 = !{i64 4030941}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i8 0, i8 2}
!14 = !{i64 2148911518}
!15 = !{i64 2148907342}
!16 = !{i64 2148907417, i64 2148907444, i64 2148907491, i64 2148907513, i64 2148907541, i64 2148907561}
!17 = !{i64 2148934521}
!18 = !{!"auto-init"}
!19 = !{i64 2147975040}
!20 = !{i64 473350, i64 2147963321, i64 2147963347, i64 2147963394, i64 2147963416, i64 2147963444, i64 2147963464}
!21 = !{i64 459919, i64 459944, i64 459966, i64 459982, i64 459994, i64 460014, i64 460038, i64 460054, i64 460066}
!22 = !{i64 2147975166}
!23 = !{i64 368834}
!24 = !{i64 2148935662}
