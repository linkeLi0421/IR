; ModuleID = '/llk/IR/drivers/media/platform/renesas-ceu.c_pt.bc'
source_filename = "../drivers/media/platform/renesas-ceu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ceu_data = type { i32 }
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
%struct.v4l2_async_notifier_operations = type { ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_format = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.89, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.89 = type { i8 }
%struct.ceu_fmt = type { i32, i32 }
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
%struct.ceu_device = type { ptr, %struct.video_device, %struct.v4l2_device, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_pix_format_mplane, %struct.v4l2_async_notifier, %struct.vb2_queue, %struct.list_head, ptr, i32, %struct.mutex, %struct.spinlock, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.ceu_subdev = type { %struct.v4l2_async_subdev, ptr, i32, %struct.ceu_mbus_fmt }
%struct.v4l2_async_subdev = type { i32, %union.anon.82, %struct.list_head, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i16 }
%struct.ceu_mbus_fmt = type { i32, i32, i32, i8, i8, i8 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.86, i32 }
%union.anon.86 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.ceu_platform_data = type { i32, [2 x %struct.ceu_async_subdev] }
%struct.ceu_async_subdev = type { i32, i8, i8, i32, i32 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceu_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.80, i16, i16, i16, [10 x i16] }
%union.anon.80 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev_state = type { ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.104, [2 x i32] }
%union.anon.104 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_frame_interval_enum = type { i32, i32, i32, i32, i32, %struct.v4l2_fract, i32, [8 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.105, [2 x i32] }
%union.anon.105 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@ceu_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r7s72100-ceu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ceu_data_rz }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7740-ceu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ceu_data_rz }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description258 = internal constant [38 x i8] c"description=Renesas CEU camera driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author259 = internal constant [48 x i8] c"author=Jacopo Mondi <jacopo+renesas@jmondi.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@ceu_data_rz = internal constant %struct.ceu_data { i32 60289811 }, align 4
@ceu_driver = internal global %struct.platform_driver { ptr @ceu_probe, ptr @ceu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ceu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"renesas-ceu\00", align 1
@ceu_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceu_runtime_suspend, ptr @ceu_runtime_resume, ptr null }, align 4
@ceu_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"&ceudev->mlock\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to request CEU interrupt.\0A\00", align 1
@ceu_data_sh4 = internal unnamed_addr constant %struct.ceu_data { i32 64484115 }, align 4
@ceu_notify_ops = internal constant %struct.v4l2_async_notifier_operations { ptr @ceu_notify_bound, ptr @ceu_notify_complete, ptr null }, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Renesas Capture Engine Unit %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"VBP interrupt: abort capture\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"No subdevice connected on endpoint %u.\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Unable to parse endpoint #%u: %d.\0A\00", align 1
@ceu_vb2_ops = internal constant %struct.vb2_ops { ptr @ceu_vb2_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @ceu_vb2_prepare, ptr null, ptr null, ptr @ceu_start_streaming, ptr @ceu_stop_streaming, ptr @ceu_vb2_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@ceu_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @ceu_open, ptr @ceu_release }, align 4
@ceu_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @ceu_querycap, ptr @ceu_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceu_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceu_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceu_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @ceu_enum_input, ptr @ceu_g_input, ptr @ceu_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceu_g_parm, ptr @ceu_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr @ceu_enum_framesizes, ptr @ceu_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"\013%s: video_register_device failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Plane size too small (%lu < %u)\0A\00", align 1
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"soft reset time out\0A\00", align 1
@__const.ceu_set_default_fmt.v4l2_fmt = private unnamed_addr constant %struct.v4l2_format { i32 9, %union.anon.87 { %struct.v4l2_pix_format_mplane { i32 640, i32 480, i32 909203022, i32 1, i32 0, [8 x %struct.v4l2_plane_pix_format] [%struct.v4l2_plane_pix_format { i32 614400, i32 1280, [6 x i16] zeroinitializer }, %struct.v4l2_plane_pix_format { i32 614400, i32 1280, [6 x i16] zeroinitializer }, %struct.v4l2_plane_pix_format zeroinitializer, %struct.v4l2_plane_pix_format zeroinitializer, %struct.v4l2_plane_pix_format zeroinitializer, %struct.v4l2_plane_pix_format zeroinitializer, %struct.v4l2_plane_pix_format zeroinitializer, %struct.v4l2_plane_pix_format zeroinitializer], i8 2, i8 0, %union.anon.89 zeroinitializer, i8 0, i8 0, [7 x i8] zeroinitializer }, [8 x i8] zeroinitializer } }, align 4
@ceu_fmt_list = internal unnamed_addr constant [8 x %struct.ceu_fmt] [%struct.ceu_fmt { i32 909203022, i32 16 }, %struct.ceu_fmt { i32 825644622, i32 16 }, %struct.ceu_fmt { i32 842094158, i32 12 }, %struct.ceu_fmt { i32 825382478, i32 12 }, %struct.ceu_fmt { i32 1448695129, i32 16 }, %struct.ceu_fmt { i32 1498831189, i32 16 }, %struct.ceu_fmt { i32 1431918169, i32 16 }, %struct.ceu_fmt { i32 1498765654, i32 16 }], align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"Renesas CEU\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"platform:renesas-ceu-%s\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Camera%u: %s\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_license260], section "llvm.metadata"
@switch.table.ceu_s_input = private unnamed_addr constant [4 x i32] [i32 256, i32 0, i32 768, i32 512], align 4

@__mod_of__ceu_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @ceu_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ceu_driver, ptr noundef nonnull @__this_module) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ceu_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1600) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %122, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  store ptr %3, ptr %5, align 8
  %9 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 12
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 12, i32 1
  store ptr %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 16
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @ceu_probe.__key) #13
  %13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #13
  %14 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 17
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = ptrtoint ptr %13 to i32
  br label %120

18:                                               ; preds = %7
  %19 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #13
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %120, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi ptr [ %26, %25 ], [ %23, %21 ]
  %29 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %19, ptr noundef nonnull @ceu_irq, ptr noundef null, i32 noundef 0, ptr noundef %28, ptr noundef nonnull %5) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #15
  br label %120

32:                                               ; preds = %27
  tail call void @pm_runtime_enable(ptr noundef %3) #13
  %33 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 2
  %34 = tail call i32 @v4l2_device_register(ptr noundef %3, ptr noundef %33) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %118

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 10
  tail call void @v4l2_async_nf_init(ptr noundef %37) #13
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %92, label %41

41:                                               ; preds = %36
  %42 = tail call ptr @of_device_get_match_data(ptr noundef %3) #13
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 25
  %45 = load ptr, ptr %44, align 8
  %46 = tail call i32 @of_graph_get_endpoint_count(ptr noundef %45) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %116, label %48

48:                                               ; preds = %41
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %46, i32 4) #13
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %51, label %53, !prof !8

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 3
  store ptr null, ptr %52, align 8
  br label %116

53:                                               ; preds = %48
  %54 = load ptr, ptr %5, align 8
  %55 = extractvalue { i32, i1 } %49, 0
  %56 = tail call noalias ptr @devm_kmalloc(ptr noundef %54, i32 noundef %55, i32 noundef 3520) #13
  %57 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 3
  store ptr %56, ptr %57, align 8
  %58 = icmp eq ptr %56, null
  br i1 %58, label %116, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 4
  store ptr null, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 5
  store i32 0, ptr %61, align 8
  %62 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 6
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %2, i32 0, i32 1
  %64 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %2, i32 0, i32 2
  %65 = getelementptr inbounds { %struct.fwnode_endpoint, i32, { { i32, i8, i8, [2 x i8] }, %struct.v4l2_fwnode_bus_mipi_csi1, [3 x i8], { i32, [8 x i8], i8, i8, [9 x i8], [1 x i8] } }, ptr, i32 }, ptr %2, i32 0, i32 2, i32 0, i32 1
  br label %66

66:                                               ; preds = %83, %59
  %67 = phi i32 [ 0, %59 ], [ %88, %83 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i32 64, i1 false) #13
  store i32 1, ptr %63, align 4
  store i32 20, ptr %64, align 4
  store i8 8, ptr %65, align 4
  %68 = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %45, i32 noundef 0, i32 noundef %67) #13
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.5, i32 noundef %67) #15
  br label %90

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.device_node, ptr %68, i32 0, i32 3
  %74 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %73, ptr noundef nonnull %2) #13
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.6, i32 noundef %67, i32 noundef %74) #15
  br label %90

78:                                               ; preds = %72
  %79 = call ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef %37, ptr noundef %73, i32 noundef 52) #13
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = ptrtoint ptr %79 to i32
  br label %90

83:                                               ; preds = %78
  %84 = load i32, ptr %64, align 4
  %85 = getelementptr inbounds %struct.ceu_subdev, ptr %79, i32 0, i32 2
  store i32 %84, ptr %85, align 4
  %86 = load ptr, ptr %57, align 8
  %87 = getelementptr ptr, ptr %86, i32 %67
  store ptr %79, ptr %87, align 4
  call void @of_node_put(ptr noundef nonnull %68) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  %88 = add nuw i32 %67, 1
  %89 = icmp eq i32 %88, %46
  br i1 %89, label %98, label %66

90:                                               ; preds = %81, %76, %70
  %91 = phi i32 [ -19, %70 ], [ %82, %81 ], [ %74, %76 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  call void @v4l2_async_nf_cleanup(ptr noundef %37) #13
  call void @of_node_put(ptr noundef %68) #13
  br label %98

92:                                               ; preds = %36
  %93 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %116, label %96

96:                                               ; preds = %92
  %97 = tail call fastcc i32 @ceu_parse_platform_data(ptr noundef nonnull %5, ptr noundef nonnull %94)
  br label %98

98:                                               ; preds = %96, %90, %83
  %99 = phi ptr [ @ceu_data_sh4, %96 ], [ %42, %90 ], [ %42, %83 ]
  %100 = phi i32 [ %97, %96 ], [ %91, %90 ], [ %46, %83 ]
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %98
  %103 = load i32, ptr %99, align 4
  %104 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 7
  store i32 %103, ptr %104, align 8
  %105 = getelementptr inbounds %struct.ceu_device, ptr %5, i32 0, i32 10, i32 1
  store ptr %33, ptr %105, align 4
  store ptr @ceu_notify_ops, ptr %37, align 8
  %106 = call i32 @v4l2_async_nf_register(ptr noundef %33, ptr noundef %37) #13
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load ptr, ptr %22, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load ptr, ptr %3, align 4
  br label %113

113:                                              ; preds = %111, %108
  %114 = phi ptr [ %112, %111 ], [ %109, %108 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef %114) #15
  br label %122

115:                                              ; preds = %102
  call void @v4l2_async_nf_cleanup(ptr noundef %37) #13
  br label %116

116:                                              ; preds = %115, %98, %92, %53, %51, %41
  %117 = phi i32 [ %106, %115 ], [ %100, %98 ], [ -12, %51 ], [ -12, %53 ], [ -19, %41 ], [ -22, %92 ]
  call void @v4l2_device_unregister(ptr noundef %33) #13
  br label %118

118:                                              ; preds = %116, %32
  %119 = phi i32 [ %34, %32 ], [ %117, %116 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #13
  br label %120

120:                                              ; preds = %118, %31, %18, %16
  %121 = phi i32 [ %17, %16 ], [ %19, %18 ], [ %29, %31 ], [ %119, %118 ]
  call void @kfree(ptr noundef nonnull %5) #13
  br label %122

122:                                              ; preds = %120, %113, %1
  %123 = phi i32 [ %121, %120 ], [ 0, %113 ], [ -12, %1 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #13
  %5 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 10
  tail call void @v4l2_async_nf_unregister(ptr noundef %5) #13
  tail call void @v4l2_async_nf_cleanup(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 2
  tail call void @v4l2_device_unregister(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %7) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 116
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  %7 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = xor i32 %8, -1
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 116
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #13, !srcloc !12
  %12 = and i32 %6, 1048577
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %60, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %15) #13
  %16 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %20 = load i16, ptr %15, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  br label %60

22:                                               ; preds = %14
  %23 = and i32 %6, 1048576
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.4) #15
  tail call void @vb2_buffer_done(ptr noundef nonnull %17, i32 noundef 6) #13
  %27 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %57, label %52

30:                                               ; preds = %22
  %31 = tail call i64 @ktime_get() #13
  %32 = getelementptr inbounds %struct.vb2_buffer, ptr %17, i32 0, i32 5
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 14
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 8
  %36 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %17, i32 0, i32 4
  store i32 %34, ptr %36, align 8
  %37 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %17, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ceu_device, ptr %1, i32 0, i32 12
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %49, label %43

43:                                               ; preds = %30
  %44 = getelementptr i8, ptr %41, i32 -640
  %45 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %41, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %45, align 4
  store ptr %44, ptr %16, align 4
  tail call fastcc void @ceu_capture(ptr noundef %1)
  br label %49

49:                                               ; preds = %43, %30
  tail call void @vb2_buffer_done(ptr noundef nonnull %17, i32 noundef 5) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %50 = load i16, ptr %15, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  br label %60

52:                                               ; preds = %52, %25
  %53 = phi ptr [ %55, %52 ], [ %28, %25 ]
  %54 = getelementptr i8, ptr %53, i32 -640
  tail call void @vb2_buffer_done(ptr noundef %54, i32 noundef 6) #13
  %55 = load ptr, ptr %53, align 4
  %56 = icmp eq ptr %55, %27
  br i1 %56, label %57, label %52

57:                                               ; preds = %52, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !13
  %58 = load i16, ptr %15, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  br label %60

60:                                               ; preds = %57, %49, %19, %2
  %61 = phi i32 [ 1, %57 ], [ 1, %49 ], [ 1, %19 ], [ 0, %2 ]
  ret i32 %61
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ceu_parse_platform_data(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %44, label %5

5:                                                ; preds = %2
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #13
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %8, label %10, !prof !8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ceu_device, ptr %0, i32 0, i32 3
  store ptr null, ptr %9, align 8
  br label %44

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8
  %12 = extractvalue { i32, i1 } %6, 0
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef %12, i32 noundef 3520) #13
  %14 = getelementptr inbounds %struct.ceu_device, ptr %0, i32 0, i32 3
  store ptr %13, ptr %14, align 8
  %15 = icmp eq ptr %13, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ceu_device, ptr %0, i32 0, i32 4
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ceu_device, ptr %0, i32 0, i32 5
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ceu_device, ptr %0, i32 0, i32 6
  store i32 0, ptr %19, align 4
  %20 = load i32, ptr %1, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ceu_device, ptr %0, i32 0, i32 10
  br label %24

24:                                               ; preds = %35, %22
  %25 = phi i32 [ 0, %22 ], [ %41, %35 ]
  %26 = getelementptr %struct.ceu_platform_data, ptr %1, i32 0, i32 1, i32 %25, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.ceu_platform_data, ptr %1, i32 0, i32 1, i32 %25, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = trunc i32 %29 to i16
  %31 = tail call ptr @__v4l2_async_nf_add_i2c(ptr noundef %23, i32 noundef %27, i16 noundef zeroext %30, i32 noundef 52) #13
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  tail call void @v4l2_async_nf_cleanup(ptr noundef %23) #13
  %34 = ptrtoint ptr %31 to i32
  br label %44

35:                                               ; preds = %24
  %36 = getelementptr %struct.ceu_platform_data, ptr %1, i32 0, i32 1, i32 %25
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ceu_subdev, ptr %31, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = load ptr, ptr %14, align 8
  %40 = getelementptr ptr, ptr %39, i32 %25
  store ptr %31, ptr %40, align 4
  %41 = add nuw i32 %25, 1
  %42 = load i32, ptr %1, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %24, label %44

44:                                               ; preds = %35, %33, %16, %10, %8, %2
  %45 = phi i32 [ %34, %33 ], [ -19, %2 ], [ -12, %10 ], [ -12, %8 ], [ 0, %16 ], [ %42, %35 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_nf_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ceu_capture(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ceu_device, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @vb2_plane_cookie(ptr noundef %3, i32 noundef 0) #13
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ceu_device, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #13, !srcloc !12
  %9 = getelementptr inbounds %struct.ceu_device, ptr %0, i32 0, i32 9, i32 2
  %10 = load i32, ptr %9, align 1
  switch i32 %10, label %17 [
    i32 825382478, label %11
    i32 842094158, label %11
    i32 825644622, label %11
    i32 909203022, label %11
  ]

11:                                               ; preds = %1, %1, %1, %1
  %12 = load ptr, ptr %2, align 4
  %13 = tail call ptr @vb2_plane_cookie(ptr noundef %12, i32 noundef 1) #13
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #13, !srcloc !12
  br label %17

17:                                               ; preds = %11, %1
  %18 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1) #13, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_get_endpoint_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode_remote(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_i2c(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ceu_notify_bound(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.v4l2_async_notifier, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ceu_subdev, ptr %2, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr i8, ptr %5, i32 100
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_notify_complete(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_format, align 4
  %4 = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  %5 = getelementptr inbounds %struct.v4l2_async_notifier, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -864
  %8 = getelementptr i8, ptr %6, i32 -856
  %9 = getelementptr i8, ptr %6, i32 352
  store i32 9, ptr %9, align 4
  %10 = getelementptr i8, ptr %6, i32 356
  store i32 17, ptr %10, align 4
  %11 = getelementptr i8, ptr %6, i32 392
  store ptr %7, ptr %11, align 4
  %12 = getelementptr i8, ptr %6, i32 380
  store ptr @ceu_vb2_ops, ptr %12, align 4
  %13 = getelementptr i8, ptr %6, i32 384
  store ptr @vb2_dma_contig_memops, ptr %13, align 4
  %14 = getelementptr i8, ptr %6, i32 400
  store i32 648, ptr %14, align 4
  %15 = getelementptr i8, ptr %6, i32 404
  store i32 8192, ptr %15, align 4
  %16 = getelementptr i8, ptr %6, i32 412
  store i32 2, ptr %16, align 4
  %17 = getelementptr i8, ptr %6, i32 708
  %18 = getelementptr i8, ptr %6, i32 372
  store ptr %17, ptr %18, align 4
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr i8, ptr %6, i32 360
  store ptr %19, ptr %20, align 4
  %21 = tail call i32 @vb2_queue_init(ptr noundef %9) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %112

23:                                               ; preds = %1
  %24 = getelementptr i8, ptr %6, i32 92
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %6, i32 88
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %29, align 4
  store ptr %30, ptr %24, align 4
  %31 = getelementptr i8, ptr %6, i32 96
  store i32 0, ptr %31, align 8
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi ptr [ %30, %27 ], [ %25, %23 ]
  %34 = getelementptr inbounds %struct.ceu_subdev, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ceu_subdev, ptr %33, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false) #13
  %37 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %4, i32 0, i32 3
  store i32 1, ptr %37, align 4
  %38 = icmp eq ptr %35, null
  %39 = getelementptr inbounds %struct.v4l2_subdev, ptr %35, i32 0, i32 6
  %40 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %40, i32 0, i32 1
  %43 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %4, i32 0, i32 2
  %44 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %4, i32 0, i32 1
  br i1 %38, label %84, label %45

45:                                               ; preds = %63, %32
  %46 = load ptr, ptr %39, align 4
  %47 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %46, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %84, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %48, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %84, label %54

54:                                               ; preds = %50
  br i1 %41, label %58, label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr %42, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %54
  br label %59

59:                                               ; preds = %58, %55
  %60 = phi ptr [ %52, %58 ], [ %56, %55 ]
  %61 = call i32 %60(ptr noundef nonnull %35, ptr noundef null, ptr noundef nonnull %4) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load i32, ptr %43, align 4
  %65 = add i32 %64, -8198
  %66 = icmp ult i32 %65, 4
  %67 = load i32, ptr %44, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %44, align 4
  br i1 %66, label %69, label %45

69:                                               ; preds = %63
  store i32 %64, ptr %36, align 4
  %70 = getelementptr inbounds %struct.ceu_subdev, ptr %33, i32 0, i32 3, i32 4
  store i8 8, ptr %70, align 1
  %71 = add i32 %64, -8198
  %72 = icmp ult i32 %71, 4
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = shl i32 %71, 8
  %75 = getelementptr inbounds [4 x i32], ptr @switch.table.ceu_s_input, i32 0, i32 %71
  %76 = load i32, ptr %75, align 4
  %77 = shl i32 %71, 3
  %78 = lshr i32 16777472, %77
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds %struct.ceu_subdev, ptr %33, i32 0, i32 3, i32 1
  store i32 %74, ptr %80, align 4
  %81 = getelementptr inbounds %struct.ceu_subdev, ptr %33, i32 0, i32 3, i32 2
  store i32 %76, ptr %81, align 4
  %82 = getelementptr inbounds %struct.ceu_subdev, ptr %33, i32 0, i32 3, i32 3
  store i8 %79, ptr %82, align 4
  %83 = getelementptr inbounds %struct.ceu_subdev, ptr %33, i32 0, i32 3, i32 5
  store i8 16, ptr %83, align 2
  br label %85

84:                                               ; preds = %59, %50, %45, %32
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  br label %112

85:                                               ; preds = %73, %69
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(204) %3, ptr noundef nonnull align 4 dereferenceable(204) @__const.ceu_set_default_fmt.v4l2_fmt, i32 204, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %86 = call fastcc i32 @__ceu_try_fmt(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %3) #13
  br label %112

89:                                               ; preds = %85
  %90 = getelementptr i8, ptr %6, i32 112
  %91 = getelementptr inbounds %struct.v4l2_format, ptr %3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(192) %90, ptr noundef align 4 dereferenceable(192) %91, i32 192, i1 false) #13
  %92 = getelementptr i8, ptr %6, i32 108
  store i32 1, ptr %92, align 4
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %3) #13
  %93 = getelementptr i8, ptr %6, i32 -120
  %94 = call i32 @strscpy(ptr noundef %93, ptr noundef nonnull @.str, i32 noundef 32) #13
  %95 = getelementptr i8, ptr %6, i32 -140
  store ptr %6, ptr %95, align 4
  %96 = getelementptr i8, ptr %6, i32 -8
  store ptr %17, ptr %96, align 8
  %97 = getelementptr i8, ptr %6, i32 -128
  store ptr %9, ptr %97, align 8
  %98 = getelementptr inbounds %struct.v4l2_subdev, ptr %35, i32 0, i32 8
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %6, i32 -132
  store ptr %99, ptr %100, align 4
  %101 = getelementptr i8, ptr %6, i32 -628
  store ptr @ceu_fops, ptr %101, align 4
  %102 = getelementptr i8, ptr %6, i32 -36
  store ptr @ceu_ioctl_ops, ptr %102, align 4
  %103 = getelementptr i8, ptr %6, i32 -40
  store ptr @ceu_vdev_release, ptr %103, align 8
  %104 = getelementptr i8, ptr %6, i32 -624
  store i32 67112960, ptr %104, align 8
  %105 = getelementptr i8, ptr %6, i32 -552
  store ptr %7, ptr %105, align 8
  %106 = call i32 @__video_register_device(ptr noundef %8, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @__this_module) #13
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %89
  %109 = load ptr, ptr %95, align 4
  %110 = getelementptr inbounds %struct.v4l2_device, ptr %109, i32 0, i32 4
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %110, i32 noundef %106) #15
  br label %112

112:                                              ; preds = %108, %89, %88, %84, %1
  %113 = phi i32 [ %106, %108 ], [ %21, %1 ], [ %86, %88 ], [ 0, %89 ], [ -6, %84 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ceu_vdev_release(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_vb2_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #10 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.ceu_device, ptr %7, i32 0, i32 9, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  br i1 %9, label %25, label %13

13:                                               ; preds = %5
  %14 = icmp eq i8 %11, 0
  br i1 %14, label %37, label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i32 %19, 1
  %17 = icmp eq i32 %16, %12
  br i1 %17, label %37, label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %16, %15 ], [ 0, %13 ]
  %20 = getelementptr i32, ptr %3, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.ceu_device, ptr %7, i32 0, i32 9, i32 5, i32 %19
  %23 = load i32, ptr %22, align 1
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %37, label %15

25:                                               ; preds = %5
  store i32 %12, ptr %2, align 4
  %26 = load i8, ptr %10, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %28, %25
  %29 = phi i32 [ %33, %28 ], [ 0, %25 ]
  %30 = getelementptr %struct.ceu_device, ptr %7, i32 0, i32 9, i32 5, i32 %29
  %31 = load i32, ptr %30, align 1
  %32 = getelementptr i32, ptr %3, i32 %29
  store i32 %31, ptr %32, align 4
  %33 = add nuw nsw i32 %29, 1
  %34 = load i8, ptr %10, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %28, label %37

37:                                               ; preds = %28, %25, %18, %15, %13
  %38 = phi i32 [ 0, %25 ], [ 0, %13 ], [ 0, %28 ], [ -22, %18 ], [ 0, %15 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_vb2_prepare(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 9, i32 6
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %32, %8
  %12 = phi i8 [ %6, %8 ], [ %33, %32 ]
  %13 = phi i32 [ 0, %8 ], [ %34, %32 ]
  %14 = icmp ugt i32 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %13, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr %struct.ceu_device, ptr %4, i32 0, i32 9, i32 5, i32 %13
  %19 = load i32, ptr %18, align 1
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %25, label %29

21:                                               ; preds = %11
  %22 = getelementptr %struct.ceu_device, ptr %4, i32 0, i32 9, i32 5, i32 %13
  %23 = load i32, ptr %22, align 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %15
  %26 = phi i32 [ %19, %15 ], [ %23, %21 ]
  %27 = phi i32 [ %17, %15 ], [ 0, %21 ]
  %28 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.8, i32 noundef %27, i32 noundef %26) #15
  br label %37

29:                                               ; preds = %15
  %30 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %13, i32 3
  store i32 %19, ptr %30, align 4
  %31 = load i8, ptr %5, align 1
  br label %32

32:                                               ; preds = %29, %21
  %33 = phi i8 [ %12, %21 ], [ %31, %29 ]
  %34 = add nuw nsw i32 %13, 1
  %35 = zext i8 %33 to i32
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %11, label %37

37:                                               ; preds = %32, %25, %1
  %38 = phi i32 [ -22, %25 ], [ 0, %1 ], [ 0, %32 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ceu_subdev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 9
  %10 = getelementptr inbounds %struct.ceu_subdev, ptr %6, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #13, !srcloc !12
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr i8, ptr %15, i32 92
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #13, !srcloc !12
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #13, !srcloc !12
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #13, !srcloc !12
  %21 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 9, i32 1
  %22 = load i32, ptr %21, align 1
  %23 = shl i32 %22, 16
  %24 = load i32, ptr %9, align 1
  %25 = getelementptr inbounds %struct.ceu_subdev, ptr %6, i32 0, i32 3, i32 5
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = mul i32 %24, %27
  %29 = lshr i32 %28, 3
  %30 = or i32 %29, %23
  %31 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 9, i32 2
  %32 = load i32, ptr %31, align 1
  switch i32 %32, label %145 [
    i32 1448695129, label %33
    i32 1431918169, label %33
    i32 1498831189, label %33
    i32 1498765654, label %33
    i32 909203022, label %36
    i32 842094158, label %37
    i32 825644622, label %46
    i32 825382478, label %47
  ]

33:                                               ; preds = %2, %2, %2, %2
  %34 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 9, i32 5, i32 0, i32 1
  %35 = load i32, ptr %34, align 1
  br label %56

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %2
  %38 = phi i32 [ 7, %2 ], [ 23, %36 ]
  %39 = getelementptr inbounds %struct.ceu_subdev, ptr %6, i32 0, i32 3, i32 3
  %40 = load i8, ptr %39, align 4, !range !17
  %41 = icmp eq i8 %40, 0
  %42 = getelementptr inbounds %struct.ceu_subdev, ptr %6, i32 0, i32 3, i32 2
  %43 = getelementptr inbounds %struct.ceu_subdev, ptr %6, i32 0, i32 3, i32 1
  %44 = select i1 %41, ptr %43, ptr %42
  %45 = load i32, ptr %44, align 4
  br label %56

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %46, %2
  %48 = phi i32 [ 7, %2 ], [ 23, %46 ]
  %49 = getelementptr inbounds %struct.ceu_subdev, ptr %6, i32 0, i32 3, i32 3
  %50 = load i8, ptr %49, align 4, !range !17
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr inbounds %struct.ceu_subdev, ptr %6, i32 0, i32 3, i32 1
  %53 = getelementptr inbounds %struct.ceu_subdev, ptr %6, i32 0, i32 3, i32 2
  %54 = select i1 %51, ptr %53, ptr %52
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %47, %37, %33
  %57 = phi i32 [ %55, %47 ], [ %45, %37 ], [ 16, %33 ]
  %58 = phi i32 [ %48, %47 ], [ %38, %37 ], [ 23, %33 ]
  %59 = phi i32 [ %24, %47 ], [ %24, %37 ], [ %35, %33 ]
  %60 = or i32 %23, %24
  %61 = lshr i32 %11, 4
  %62 = and i32 %61, 2
  %63 = lshr i32 %11, 3
  %64 = and i32 %63, 1
  %65 = or i32 %64, %62
  %66 = or i32 %65, %57
  %67 = load ptr, ptr %12, align 4
  %68 = getelementptr i8, ptr %67, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #13, !srcloc !12
  %69 = load ptr, ptr %12, align 4
  %70 = getelementptr i8, ptr %69, i32 100
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %58) #13, !srcloc !12
  %71 = load ptr, ptr %12, align 4
  %72 = getelementptr i8, ptr %71, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 3145728) #13, !srcloc !12
  %73 = load ptr, ptr %12, align 4
  %74 = getelementptr i8, ptr %73, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 0) #13, !srcloc !12
  %75 = load ptr, ptr %12, align 4
  %76 = getelementptr i8, ptr %75, i32 20
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %30) #13, !srcloc !12
  %77 = load ptr, ptr %12, align 4
  %78 = getelementptr i8, ptr %77, i32 52
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %60) #13, !srcloc !12
  %79 = load ptr, ptr %12, align 4
  %80 = getelementptr i8, ptr %79, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %59) #13, !srcloc !12
  %81 = icmp eq ptr %8, null
  br i1 %81, label %145, label %82

82:                                               ; preds = %56
  %83 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %103, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %86, i32 0, i32 10
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %103, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %93, i32 0, i32 10
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %92
  br label %100

100:                                              ; preds = %99, %95
  %101 = phi ptr [ %90, %99 ], [ %97, %95 ]
  %102 = tail call i32 %101(ptr noundef nonnull %8, i32 noundef 1) #13
  switch i32 %102, label %145 [
    i32 -515, label %103
    i32 0, label %103
  ]

103:                                              ; preds = %100, %100, %88, %82
  %104 = phi i32 [ %102, %100 ], [ %102, %100 ], [ -515, %88 ], [ -515, %82 ]
  %105 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 16
  %106 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %105) #13
  %107 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 14
  store i32 0, ptr %107, align 8
  %108 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 12
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr i8, ptr %109, i32 -640
  %111 = icmp eq ptr %110, null
  br i1 %111, label %125, label %112

112:                                              ; preds = %103
  %113 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %109, align 4
  %116 = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  store ptr %114, ptr %116, align 4
  store volatile ptr %115, ptr %114, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %109, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %113, align 4
  %117 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 13
  store ptr %110, ptr %117, align 4
  %118 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 7
  %119 = load i32, ptr %118, align 8
  %120 = xor i32 %119, -1
  %121 = load ptr, ptr %12, align 4
  %122 = getelementptr i8, ptr %121, i32 116
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %120) #13, !srcloc !12
  %123 = load ptr, ptr %12, align 4
  %124 = getelementptr i8, ptr %123, i32 112
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 1048577) #13, !srcloc !12
  tail call fastcc void @ceu_capture(ptr noundef %4)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %105, i32 noundef %106) #13
  br label %161

125:                                              ; preds = %103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %105, i32 noundef %106) #13
  %126 = load ptr, ptr %83, align 4
  %127 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %126, i32 0, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %145, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %128, i32 0, i32 10
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %145, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %135, i32 0, i32 10
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %137, %134
  br label %142

142:                                              ; preds = %141, %137
  %143 = phi ptr [ %132, %141 ], [ %139, %137 ]
  %144 = tail call i32 %143(ptr noundef nonnull %8, i32 noundef 0) #13
  br label %145

145:                                              ; preds = %142, %130, %125, %100, %56, %2
  %146 = phi i32 [ %102, %100 ], [ %104, %125 ], [ %104, %130 ], [ -22, %2 ], [ -19, %56 ], [ %104, %142 ]
  %147 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 16
  %148 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %147) #13
  %149 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 12
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, %149
  br i1 %151, label %159, label %152

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 13
  br label %154

154:                                              ; preds = %154, %152
  %155 = phi ptr [ %150, %152 ], [ %157, %154 ]
  %156 = load ptr, ptr %153, align 4
  tail call void @vb2_buffer_done(ptr noundef %156, i32 noundef 3) #13
  %157 = load ptr, ptr %155, align 4
  %158 = icmp eq ptr %157, %149
  br i1 %158, label %159, label %154

159:                                              ; preds = %154, %145
  %160 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 13
  store ptr null, ptr %160, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %147, i32 noundef %148) #13
  br label %161

161:                                              ; preds = %159, %112
  %162 = phi i32 [ %146, %159 ], [ 0, %112 ]
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ceu_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ceu_subdev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 116
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  %12 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 7
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, %11
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 116
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #13, !srcloc !12
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr i8, ptr %17, i32 112
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 1048577) #13, !srcloc !12
  %19 = icmp eq ptr %7, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %24, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %31, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi ptr [ %28, %37 ], [ %35, %33 ]
  %40 = tail call i32 %39(ptr noundef nonnull %7, i32 noundef 0) #13
  br label %41

41:                                               ; preds = %38, %26, %20, %1
  %42 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 16
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #13
  %44 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 13
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  tail call void @vb2_buffer_done(ptr noundef nonnull %45, i32 noundef 6) #13
  store ptr null, ptr %44, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 12
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %57, label %52

52:                                               ; preds = %52, %48
  %53 = phi ptr [ %55, %52 ], [ %50, %48 ]
  %54 = getelementptr i8, ptr %53, i32 -640
  tail call void @vb2_buffer_done(ptr noundef %54, i32 noundef 6) #13
  %55 = load ptr, ptr %53, align 4
  %56 = icmp eq ptr %55, %49
  br i1 %56, label %57, label %52

57:                                               ; preds = %52, %48
  store volatile ptr %49, ptr %49, align 4
  %58 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 12, i32 1
  store ptr %49, ptr %58, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %43) #13
  %59 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 65536) #13, !srcloc !12
  br label %60

60:                                               ; preds = %67, %57
  %61 = phi i32 [ 0, %57 ], [ %69, %67 ]
  %62 = load ptr, ptr %8, align 4
  %63 = getelementptr i8, ptr %62, i32 124
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %60
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748) #13
  %69 = add nuw nsw i32 %61, 1
  %70 = icmp eq i32 %69, 100
  br i1 %70, label %73, label %60

71:                                               ; preds = %60
  %72 = icmp eq i32 %61, 100
  br i1 %72, label %73, label %75

73:                                               ; preds = %71, %67
  %74 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.10) #15
  br label %85

75:                                               ; preds = %81, %71
  %76 = phi i32 [ %83, %81 ], [ 0, %71 ]
  %77 = load ptr, ptr %8, align 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  %79 = and i32 %78, 65536
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748) #13
  %83 = add nuw nsw i32 %76, 1
  %84 = icmp eq i32 %83, 100
  br i1 %84, label %85, label %75

85:                                               ; preds = %81, %75, %73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ceu_vb2_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 16
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #13
  %7 = getelementptr inbounds %struct.ceu_buffer, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 12
  %9 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 12, i32 1
  %10 = load ptr, ptr %9, align 4
  store ptr %7, ptr %9, align 4
  store ptr %8, ptr %7, align 4
  %11 = getelementptr inbounds %struct.ceu_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %7, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ceu_try_fmt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = alloca %struct.v4l2_subdev_pad_config, align 4
  %5 = alloca %struct.v4l2_subdev_state, align 4
  %6 = alloca %struct.v4l2_subdev_format, align 4
  %7 = getelementptr inbounds %struct.ceu_device, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ceu_subdev, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %4, i8 0, i32 80, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr %4, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %6, i8 0, i32 88, i1 false)
  %12 = getelementptr inbounds %struct.ceu_subdev, ptr %8, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  %15 = load i32, ptr %14, align 1
  switch i32 %15, label %16 [
    i32 1448695129, label %21
    i32 1498831189, label %22
    i32 1431918169, label %23
    i32 1498765654, label %24
    i32 909203022, label %25
    i32 825644622, label %18
    i32 842094158, label %19
    i32 825382478, label %20
  ]

16:                                               ; preds = %3
  store i32 909203022, ptr %14, align 1
  %17 = load i32, ptr %12, align 4
  br label %25

18:                                               ; preds = %3
  br label %25

19:                                               ; preds = %3
  br label %25

20:                                               ; preds = %3
  br label %25

21:                                               ; preds = %3
  br label %25

22:                                               ; preds = %3
  br label %25

23:                                               ; preds = %3
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %16, %3
  %26 = phi i32 [ %13, %18 ], [ %13, %19 ], [ %13, %20 ], [ 8200, %21 ], [ 8198, %22 ], [ 8201, %23 ], [ 8199, %24 ], [ %17, %16 ], [ %13, %3 ]
  %27 = phi ptr [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 1), %18 ], [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 2), %19 ], [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 3), %20 ], [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 4), %21 ], [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 5), %22 ], [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 6), %23 ], [ getelementptr inbounds ([8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 7), %24 ], [ @ceu_fmt_list, %16 ], [ @ceu_fmt_list, %3 ]
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  call void @v4l_bound_align_image(ptr noundef %9, i32 noundef 2, i32 noundef 2560, i32 noundef 4, ptr noundef %28, i32 noundef 4, i32 noundef 1920, i32 noundef 4, i32 noundef 0) #13
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2
  %30 = load i32, ptr %9, align 1
  store i32 %30, ptr %29, align 4
  %31 = load i32, ptr %28, align 1
  %32 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 3
  %34 = load i32, ptr %33, align 1
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 3
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 4
  %37 = load i32, ptr %36, align 1
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 4
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 8
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i16
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 5
  store i16 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 9
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i16
  %46 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 6
  store i16 %45, ptr %46, align 2
  %47 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 10
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i16
  %50 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 7
  store i16 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 2
  store i32 %26, ptr %51, align 4
  %52 = icmp eq ptr %11, null
  br i1 %52, label %148, label %53

53:                                               ; preds = %25
  %54 = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %55, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %148, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %57, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %148, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %64, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi ptr [ %61, %70 ], [ %68, %66 ]
  %73 = call i32 %72(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  switch i32 %73, label %92 [
    i32 0, label %95
    i32 -22, label %74
  ]

74:                                               ; preds = %71
  store i32 %13, ptr %51, align 4
  %75 = load ptr, ptr %54, align 4
  %76 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %75, i32 0, i32 7
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %148, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %77, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %148, label %83

83:                                               ; preds = %79
  br i1 %65, label %88, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %64, i32 0, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %83
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi ptr [ %81, %88 ], [ %86, %84 ]
  %91 = call i32 %90(ptr noundef nonnull %11, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  br label %92

92:                                               ; preds = %89, %71
  %93 = phi i32 [ %73, %71 ], [ %91, %89 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %148

95:                                               ; preds = %92, %71
  %96 = load i32, ptr %29, align 4
  store i32 %96, ptr %9, align 1
  %97 = load i32, ptr %32, align 4
  store i32 %97, ptr %28, align 1
  %98 = load i32, ptr %35, align 4
  store i32 %98, ptr %33, align 1
  %99 = load i32, ptr %38, align 4
  store i32 %99, ptr %36, align 1
  %100 = load i16, ptr %42, align 4
  %101 = trunc i16 %100 to i8
  store i8 %101, ptr %39, align 1
  %102 = load i16, ptr %46, align 2
  %103 = trunc i16 %102 to i8
  store i8 %103, ptr %43, align 1
  %104 = load i16, ptr %50, align 4
  %105 = trunc i16 %104 to i8
  store i8 %105, ptr %47, align 1
  %106 = load i32, ptr %14, align 1
  switch i32 %106, label %133 [
    i32 1448695129, label %107
    i32 1498831189, label %107
    i32 1431918169, label %107
    i32 1498765654, label %107
    i32 842094158, label %118
    i32 825382478, label %118
  ]

107:                                              ; preds = %95, %95, %95, %95
  %108 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 6
  store i8 1, ptr %108, align 1
  %109 = getelementptr inbounds %struct.ceu_fmt, ptr %27, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = mul i32 %110, %96
  %112 = lshr i32 %111, 3
  %113 = mul i32 %112, %97
  %114 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5
  %115 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %115, i8 0, i32 16, i1 false) #13
  store i32 %113, ptr %114, align 1
  %116 = icmp ult i32 %111, 8
  br i1 %116, label %146, label %117

117:                                              ; preds = %107
  store i32 %112, ptr %115, align 1
  br label %146

118:                                              ; preds = %95, %95
  %119 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 6
  store i8 2, ptr %119, align 1
  %120 = mul i32 %97, %96
  %121 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5
  %122 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %122, i8 0, i32 16, i1 false) #13
  store i32 %120, ptr %121, align 1
  %123 = icmp eq i32 %96, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1
  %126 = lshr i32 %120, 1
  %127 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %127, i8 0, i32 16, i1 false) #13
  store i32 %126, ptr %125, align 1
  br label %146

128:                                              ; preds = %118
  store i32 %96, ptr %122, align 1
  %129 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1
  %130 = lshr i32 %120, 1
  %131 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %132 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %132, i8 0, i32 12, i1 false) #13
  store i32 %130, ptr %129, align 1
  store i32 %96, ptr %131, align 1
  br label %146

133:                                              ; preds = %95
  %134 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 6
  store i8 2, ptr %134, align 1
  %135 = mul i32 %97, %96
  %136 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5
  %137 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %137, i8 0, i32 16, i1 false) #13
  store i32 %135, ptr %136, align 1
  %138 = icmp eq i32 %96, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1
  %141 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %141, i8 0, i32 16, i1 false) #13
  store i32 %135, ptr %140, align 1
  br label %146

142:                                              ; preds = %133
  store i32 %96, ptr %137, align 1
  %143 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1
  %144 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %145 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %145, i8 0, i32 12, i1 false) #13
  store i32 %135, ptr %143, align 1
  store i32 %96, ptr %144, align 1
  br label %146

146:                                              ; preds = %142, %139, %128, %124, %117, %107
  %147 = load i32, ptr %51, align 4
  store i32 %147, ptr %2, align 4
  br label %148

148:                                              ; preds = %146, %92, %79, %74, %59, %53, %25
  %149 = phi i32 [ 0, %146 ], [ %93, %92 ], [ -515, %74 ], [ -515, %79 ], [ -515, %53 ], [ -515, %59 ], [ -19, %25 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #13
  ret i32 %149
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_open(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @v4l2_fh_open(ptr noundef %0) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %8) #13
  %9 = load ptr, ptr %4, align 8
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !20
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 -1, ptr elementtype(i32) %13) #13, !srcloc !21
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  br label %18

18:                                               ; preds = %17, %12, %7
  %19 = phi i32 [ 0, %7 ], [ %10, %12 ], [ %10, %17 ]
  tail call void @mutex_unlock(ptr noundef %8) #13
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ %19, %18 ], [ %5, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_release(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @vb2_fop_release(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.ceu_device, ptr %4, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = load ptr, ptr %4, align 8
  %8 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #13
  tail call void @mutex_unlock(ptr noundef %6) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_querycap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %8 = tail call i32 @strscpy(ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef 32) #13
  %9 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 16) #13
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load ptr, ptr %10, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi ptr [ %15, %14 ], [ %12, %3 ]
  %18 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %17)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ceu_enum_fmt_vid_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #11 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ugt i32 %4, 7
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr [8 x %struct.ceu_fmt], ptr @ceu_fmt_list, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %8, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_g_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.ceu_device, ptr %6, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(192) %7, ptr noundef align 8 dereferenceable(192) %8, i32 192, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_s_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev_format, align 4
  %6 = tail call ptr @video_devdata(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ceu_device, ptr %8, i32 0, i32 11, i32 28
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %76

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ceu_device, ptr %8, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ceu_subdev, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #13
  %18 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %18, i8 0, i32 84, i1 false) #13
  store i32 1, ptr %5, align 4
  %19 = call fastcc i32 @__ceu_try_fmt(ptr noundef %8, ptr noundef %2, ptr noundef nonnull %4) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %13
  %22 = load i32, ptr %4, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 2
  store i32 %22, ptr %24, align 4
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %26 = load i32, ptr %25, align 1
  store i32 %26, ptr %23, align 4
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %28 = load i32, ptr %27, align 1
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %31 = load i32, ptr %30, align 1
  %32 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  %34 = load i32, ptr %33, align 1
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 4
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 8
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i16
  %39 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 5
  store i16 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 9
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  %43 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 6
  store i16 %42, ptr %43, align 2
  %44 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 10
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 7
  store i16 %46, ptr %47, align 4
  %48 = icmp eq ptr %17, null
  br i1 %48, label %74, label %49

49:                                               ; preds = %21
  %50 = getelementptr inbounds %struct.v4l2_subdev, ptr %17, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %51, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %74, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %53, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %60, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %59
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi ptr [ %57, %66 ], [ %64, %62 ]
  %69 = call i32 %68(ptr noundef nonnull %17, ptr noundef null, ptr noundef nonnull %5) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ceu_device, ptr %8, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(192) %72, ptr noundef align 4 dereferenceable(192) %25, i32 192, i1 false) #13
  %73 = getelementptr inbounds %struct.ceu_device, ptr %8, i32 0, i32 8
  store i32 1, ptr %73, align 4
  br label %74

74:                                               ; preds = %71, %67, %55, %49, %21, %13
  %75 = phi i32 [ 0, %71 ], [ %19, %13 ], [ %69, %67 ], [ -515, %49 ], [ -515, %55 ], [ -19, %21 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %76

76:                                               ; preds = %74, %3
  %77 = phi i32 [ %75, %74 ], [ -16, %3 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_try_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %8 = call fastcc i32 @__ceu_try_fmt(ptr noundef %7, ptr noundef %2, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %8
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
define internal i32 @ceu_enum_input(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 8
  %8 = getelementptr inbounds %struct.ceu_device, ptr %6, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ceu_device, ptr %6, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr ptr, ptr %13, i32 %7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 2
  store i32 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 5
  store i64 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.ceu_subdev, ptr %15, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev, ptr %20, i32 0, i32 9
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %7, ptr noundef %21)
  br label %23

23:                                               ; preds = %11, %3
  %24 = phi i32 [ 0, %11 ], [ -22, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_g_input(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ceu_device, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_s_input(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_format, align 4
  %6 = alloca %struct.v4l2_subdev_mbus_code_enum, align 4
  %7 = tail call ptr @video_devdata(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 5, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.ceu_device, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %13, label %137

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ceu_device, ptr %9, i32 0, i32 11, i32 28
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %137

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ceu_device, ptr %9, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %137, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ceu_device, ptr %9, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ceu_device, ptr %9, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr ptr, ptr %26, i32 %2
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %23, align 4
  %29 = getelementptr inbounds %struct.ceu_subdev, ptr %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.ceu_subdev, ptr %28, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %6, i8 0, i32 48, i1 false) #13
  %32 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %6, i32 0, i32 3
  store i32 1, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  %34 = getelementptr inbounds %struct.v4l2_subdev, ptr %31, i32 0, i32 6
  %35 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %35, i32 0, i32 1
  %38 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %6, i32 0, i32 2
  %39 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %6, i32 0, i32 1
  br i1 %33, label %79, label %40

40:                                               ; preds = %58, %22
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %41, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %79, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %43, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %79, label %49

49:                                               ; preds = %45
  br i1 %36, label %53, label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %37, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %49
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi ptr [ %47, %53 ], [ %51, %50 ]
  %56 = call i32 %55(ptr noundef nonnull %31, ptr noundef null, ptr noundef nonnull %6) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load i32, ptr %38, align 4
  %60 = add i32 %59, -8198
  %61 = icmp ult i32 %60, 4
  %62 = load i32, ptr %39, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %39, align 4
  br i1 %61, label %64, label %40

64:                                               ; preds = %58
  store i32 %59, ptr %29, align 4
  %65 = getelementptr inbounds %struct.ceu_subdev, ptr %28, i32 0, i32 3, i32 4
  store i8 8, ptr %65, align 1
  %66 = add i32 %59, -8198
  %67 = icmp ult i32 %66, 4
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = shl i32 %66, 8
  %70 = getelementptr inbounds [4 x i32], ptr @switch.table.ceu_s_input, i32 0, i32 %66
  %71 = load i32, ptr %70, align 4
  %72 = shl i32 %66, 3
  %73 = lshr i32 16777472, %72
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds %struct.ceu_subdev, ptr %28, i32 0, i32 3, i32 1
  store i32 %69, ptr %75, align 4
  %76 = getelementptr inbounds %struct.ceu_subdev, ptr %28, i32 0, i32 3, i32 2
  store i32 %71, ptr %76, align 4
  %77 = getelementptr inbounds %struct.ceu_subdev, ptr %28, i32 0, i32 3, i32 3
  store i8 %74, ptr %77, align 4
  %78 = getelementptr inbounds %struct.ceu_subdev, ptr %28, i32 0, i32 3, i32 5
  store i8 16, ptr %78, align 2
  br label %80

79:                                               ; preds = %54, %45, %40, %22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #13
  store ptr %24, ptr %23, align 4
  br label %137

80:                                               ; preds = %68, %64
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %5) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(204) %5, ptr noundef nonnull align 4 dereferenceable(204) @__const.ceu_set_default_fmt.v4l2_fmt, i32 204, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %81 = call fastcc i32 @__ceu_try_fmt(ptr noundef %9, ptr noundef nonnull %5, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %5) #13
  store ptr %24, ptr %23, align 4
  br label %137

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ceu_device, ptr %9, i32 0, i32 9
  %86 = getelementptr inbounds %struct.v4l2_format, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(192) %85, ptr noundef align 4 dereferenceable(192) %86, i32 192, i1 false) #13
  %87 = getelementptr inbounds %struct.ceu_device, ptr %9, i32 0, i32 8
  store i32 1, ptr %87, align 4
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %5) #13
  %88 = getelementptr inbounds %struct.ceu_subdev, ptr %24, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %111, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.v4l2_subdev, ptr %89, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %111, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %94, i32 0, i32 8
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %111, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %101, i32 0, i32 8
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %100
  br label %108

108:                                              ; preds = %107, %103
  %109 = phi ptr [ %98, %107 ], [ %105, %103 ]
  %110 = call i32 %109(ptr noundef nonnull %89, i32 noundef 0) #13
  br label %111

111:                                              ; preds = %108, %96, %91, %84
  %112 = load ptr, ptr %23, align 4
  %113 = getelementptr inbounds %struct.ceu_subdev, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %136, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.v4l2_subdev, ptr %114, i32 0, i32 6
  %118 = load ptr, ptr %117, align 4
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %136, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %119, i32 0, i32 8
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %136, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %126, i32 0, i32 8
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %128, %125
  br label %133

133:                                              ; preds = %132, %128
  %134 = phi ptr [ %123, %132 ], [ %130, %128 ]
  %135 = call i32 %134(ptr noundef nonnull %114, i32 noundef 1) #13
  br label %136

136:                                              ; preds = %133, %121, %116, %111
  store i32 %2, ptr %19, align 8
  br label %137

137:                                              ; preds = %136, %83, %79, %18, %13, %3
  %138 = phi i32 [ -22, %79 ], [ -22, %83 ], [ 0, %136 ], [ -22, %3 ], [ -16, %13 ], [ 0, %18 ]
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_g_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.ceu_device, ptr %6, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ceu_subdev, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @v4l2_g_parm_cap(ptr noundef %7, ptr noundef %11, ptr noundef %2) #13
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_s_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.ceu_device, ptr %6, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ceu_subdev, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @v4l2_s_parm_cap(ptr noundef %7, ptr noundef %11, ptr noundef %2) #13
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_enum_framesizes(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = alloca %struct.v4l2_subdev_frame_size_enum, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ceu_device, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ceu_subdev, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %12 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %12, i8 0, i64 60, i1 false)
  %13 = load i32, ptr %2, align 4
  store i32 %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.ceu_subdev, ptr %9, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 7
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %54 [
    i32 909203022, label %20
    i32 825644622, label %20
    i32 842094158, label %20
    i32 825382478, label %20
    i32 1448695129, label %20
    i32 1498831189, label %20
    i32 1431918169, label %20
    i32 1498765654, label %20
  ]

20:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %21 = icmp eq ptr %11, null
  br i1 %21, label %54, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %33, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi ptr [ %30, %39 ], [ %37, %35 ]
  %42 = call i32 %41(ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %4) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 2
  store i32 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = call i32 @llvm.umin.i32(i32 %47, i32 2560)
  %49 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %4, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = call i32 @llvm.umin.i32(i32 %51, i32 1920)
  %53 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %44, %40, %28, %22, %20, %3
  %55 = phi i32 [ 0, %44 ], [ %42, %40 ], [ -22, %3 ], [ -515, %22 ], [ -515, %28 ], [ -19, %20 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_enum_frameintervals(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = alloca %struct.v4l2_subdev_frame_interval_enum, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ceu_device, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ceu_subdev, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %12 = load i32, ptr %2, align 4
  store i32 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.ceu_subdev, ptr %9, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 3
  %18 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 4
  %21 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 5
  store i64 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 6
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.v4l2_subdev_frame_interval_enum, ptr %4, i32 0, i32 7
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %25, i8 0, i32 32, i1 false)
  %26 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %56 [
    i32 909203022, label %28
    i32 825644622, label %28
    i32 842094158, label %28
    i32 825382478, label %28
    i32 1448695129, label %28
    i32 1498831189, label %28
    i32 1431918169, label %28
    i32 1498765654, label %28
  ]

28:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %29 = icmp eq ptr %11, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %34, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %41, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi ptr [ %38, %47 ], [ %45, %43 ]
  %50 = call i32 %49(ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %4) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 4
  store i32 1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5
  %55 = load i64, ptr %23, align 4
  store i64 %55, ptr %54, align 4
  br label %56

56:                                               ; preds = %52, %48, %36, %30, %28, %3
  %57 = phi i32 [ 0, %52 ], [ %50, %48 ], [ -22, %3 ], [ -515, %30 ], [ -515, %36 ], [ -19, %28 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_nf_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ceu_subdev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %19, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %18
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi ptr [ %16, %25 ], [ %23, %21 ]
  %28 = tail call i32 %27(ptr noundef nonnull %7, i32 noundef 0) #13
  br label %29

29:                                               ; preds = %26, %14, %9, %1
  %30 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 112
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #13, !srcloc !12
  %33 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 65536) #13, !srcloc !12
  br label %34

34:                                               ; preds = %41, %29
  %35 = phi i32 [ 0, %29 ], [ %43, %41 ]
  %36 = load ptr, ptr %30, align 4
  %37 = getelementptr i8, ptr %36, i32 124
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #13
  %43 = add nuw nsw i32 %35, 1
  %44 = icmp eq i32 %43, 100
  br i1 %44, label %47, label %34

45:                                               ; preds = %34
  %46 = icmp eq i32 %35, 100
  br i1 %46, label %47, label %49

47:                                               ; preds = %45, %41
  %48 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.10) #15
  br label %59

49:                                               ; preds = %55, %45
  %50 = phi i32 [ %57, %55 ], [ 0, %45 ]
  %51 = load ptr, ptr %30, align 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  %53 = and i32 %52, 65536
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748) #13
  %57 = add nuw nsw i32 %50, 1
  %58 = icmp eq i32 %57, 100
  br i1 %58, label %59, label %49

59:                                               ; preds = %55, %49, %47
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ceu_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ceu_subdev, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %19, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %18
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi ptr [ %16, %25 ], [ %23, %21 ]
  %28 = tail call i32 %27(ptr noundef nonnull %7, i32 noundef 1) #13
  br label %29

29:                                               ; preds = %26, %14, %9, %1
  %30 = getelementptr inbounds %struct.ceu_device, ptr %3, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !11
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 65536) #13, !srcloc !12
  br label %32

32:                                               ; preds = %39, %29
  %33 = phi i32 [ 0, %29 ], [ %41, %39 ]
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr i8, ptr %34, i32 124
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #13
  %41 = add nuw nsw i32 %33, 1
  %42 = icmp eq i32 %41, 100
  br i1 %42, label %45, label %32

43:                                               ; preds = %32
  %44 = icmp eq i32 %33, 100
  br i1 %44, label %45, label %47

45:                                               ; preds = %43, %39
  %46 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.10) #15
  br label %57

47:                                               ; preds = %53, %43
  %48 = phi i32 [ %55, %53 ], [ 0, %43 ]
  %49 = load ptr, ptr %30, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #13, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !10
  %51 = and i32 %50, 65536
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #13
  %55 = add nuw nsw i32 %48, 1
  %56 = icmp eq i32 %55, 100
  br i1 %56, label %57, label %47

57:                                               ; preds = %53, %47, %45
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

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
!9 = !{i64 5003367}
!10 = !{i64 2152542820}
!11 = !{i64 2152544042}
!12 = !{i64 5002949}
!13 = !{i64 2149209872}
!14 = !{i64 2149205696}
!15 = !{i64 2149205771, i64 2149205798, i64 2149205845, i64 2149205867, i64 2149205895, i64 2149205915}
!16 = !{i64 2149232875}
!17 = !{i8 0, i8 2}
!18 = !{!"auto-init"}
!19 = !{i64 2147934120}
!20 = !{i64 432430, i64 2147922401, i64 2147922427, i64 2147922474, i64 2147922496, i64 2147922524, i64 2147922544}
!21 = !{i64 418999, i64 419024, i64 419046, i64 419062, i64 419074, i64 419094, i64 419118, i64 419134, i64 419146}
!22 = !{i64 2147934246}
