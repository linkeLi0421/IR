; ModuleID = '/llk/IR/drivers/media/usb/uvc/uvc_v4l2.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_v4l2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subscribed_event_ops = type { ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.uvc_fh = type { %struct.v4l2_fh, ptr, ptr, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.uvc_streaming = type { %struct.list_head, ptr, %struct.video_device, ptr, %struct.atomic_t, ptr, i32, i16, %struct.uvc_streaming_header, i32, i32, ptr, %struct.uvc_streaming_control, ptr, ptr, ptr, %struct.mutex, i8, %struct.uvc_video_queue, ptr, ptr, %struct.anon.117, %struct.anon.118, [5 x %struct.uvc_urb], i32, i32, i8, ptr, %struct.anon.119, %struct.uvc_clock }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.98 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.95], %struct.media_entity_enum, i32 }
%struct.anon.95 = type { ptr, ptr }
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
%struct.uvc_streaming_header = type { i8, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.uvc_streaming_control = type <{ i16, i8, i8, i32, i16, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8 }>
%struct.uvc_video_queue = type { %struct.vb2_queue, %struct.mutex, i32, i32, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.anon.117 = type { %struct.video_device, %struct.uvc_video_queue, i32 }
%struct.anon.118 = type { [256 x i8], i32, i32, i32, i32 }
%struct.uvc_urb = type { ptr, ptr, ptr, i32, ptr, i32, [32 x %struct.uvc_copy_op], %struct.work_struct }
%struct.uvc_copy_op = type { ptr, ptr, ptr, i32 }
%struct.anon.119 = type { %struct.uvc_stats_frame, %struct.uvc_stats_stream }
%struct.uvc_stats_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i16, i32 }
%struct.uvc_stats_stream = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uvc_clock = type { ptr, i32, i32, i32, i16, i16, [6 x i8], %struct.spinlock }
%struct.uvc_device = type { ptr, ptr, i32, i32, i32, [32 x i8], ptr, %struct.mutex, i32, %struct.atomic_t, %struct.media_device, %struct.v4l2_device, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, [64 x i8], %struct.uvc_ctrl_work, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.uvc_ctrl_work = type { %struct.work_struct, ptr, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.uvc_video_chain = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex, %struct.v4l2_prio_state, i32, i8 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.uvc_format = type { i8, i8, i8, i32, i32, i32, i32, i32, [32 x i8], i32, ptr }
%struct.uvc_entity = type { %struct.list_head, %struct.list_head, i32, i16, i16, [64 x i8], [16 x i8], ptr, %struct.v4l2_subdev, i32, i32, ptr, %union.anon.109, i8, ptr, ptr, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%union.anon.109 = type { %struct.anon.111 }
%struct.anon.111 = type { i8, ptr, i8, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_queryctrl = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, [2 x i32] }
%struct.v4l2_query_ext_ctrl = type { i32, i32, [32 x i8], i64, i64, i64, i64, i32, i32, i32, i32, [4 x i32], [32 x i32] }
%struct.v4l2_ext_controls = type { %union.anon.81, i32, i32, i32, [1 x i32], ptr }
%union.anon.81 = type { i32 }
%struct.v4l2_ext_control = type <{ i32, i32, [1 x i32], %union.anon.82 }>
%union.anon.82 = type { i64 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.uvc_frame = type { i8, i8, i16, i16, i32, i32, i32, i8, i32, ptr }
%struct.v4l2_streamparm = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.91, [2 x i32] }
%union.anon.91 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.92, [2 x i32] }
%union.anon.92 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.uvc_control_mapping = type { %struct.list_head, %struct.list_head, i32, ptr, [16 x i8], i8, i8, i8, i32, i32, ptr, i32, i32, i32, [2 x i32], ptr, ptr }
%struct.uvc_xu_control_mapping = type { i32, [32 x i8], [16 x i8], i8, i8, i8, i32, i32, ptr, i32, [4 x i32] }
%struct.v4l2_format = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.76, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.76 = type { i8 }

@uvc_ioctl_ops = dso_local local_unnamed_addr constant %struct.v4l2_ioctl_ops { ptr @uvc_ioctl_querycap, ptr @uvc_ioctl_enum_fmt_vid_cap, ptr null, ptr @uvc_ioctl_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_g_fmt_vid_cap, ptr null, ptr @uvc_ioctl_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_s_fmt_vid_cap, ptr null, ptr @uvc_ioctl_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_try_fmt_vid_cap, ptr null, ptr @uvc_ioctl_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_reqbufs, ptr @uvc_ioctl_querybuf, ptr @uvc_ioctl_qbuf, ptr @uvc_ioctl_expbuf, ptr @uvc_ioctl_dqbuf, ptr @uvc_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_streamon, ptr @uvc_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @uvc_ioctl_enum_input, ptr @uvc_ioctl_g_input, ptr @uvc_ioctl_s_input, ptr null, ptr null, ptr null, ptr @uvc_ioctl_queryctrl, ptr @uvc_ioctl_query_ext_ctrl, ptr null, ptr null, ptr @uvc_ioctl_g_ext_ctrls, ptr @uvc_ioctl_s_ext_ctrls, ptr @uvc_ioctl_try_ext_ctrls, ptr @uvc_ioctl_querymenu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_g_parm, ptr @uvc_ioctl_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_enum_framesizes, ptr @uvc_ioctl_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uvc_ioctl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr @uvc_ioctl_default }, align 4
@__this_module = external dso_local global %struct.module, align 64
@uvc_fops = dso_local local_unnamed_addr constant %struct.v4l2_file_operations { ptr @__this_module, ptr @uvc_v4l2_read, ptr null, ptr @uvc_v4l2_poll, ptr @video_ioctl2, ptr null, ptr @uvc_v4l2_mmap, ptr @uvc_v4l2_open, ptr @uvc_v4l2_release }, align 4
@.str = private unnamed_addr constant [9 x i8] c"uvcvideo\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@uvc_dbg_param = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Trying format 0x%08x (%c%c%c%c): %ux%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Unsupported size %ux%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Using default frame interval %u.%u us (%u.%u fps)\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Unknown bFormatIndex %u, using default\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Unknown bFrameIndex %u, using default\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Setting frame interval to %u/%u (%u)\0A\00", align 1
@uvc_ctrl_sub_ev_ops = external dso_local constant %struct.v4l2_subscribed_event_ops, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"Unsupported V4L2 control type %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"%s: not implemented\0A\00", align 1
@__func__.uvc_v4l2_read = private unnamed_addr constant [14 x i8] c"uvc_v4l2_read\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__func__.uvc_v4l2_poll = private unnamed_addr constant [14 x i8] c"uvc_v4l2_poll\00", align 1
@__func__.uvc_v4l2_mmap = private unnamed_addr constant [14 x i8] c"uvc_v4l2_mmap\00", align 1
@__func__.uvc_v4l2_open = private unnamed_addr constant [14 x i8] c"uvc_v4l2_open\00", align 1
@__func__.uvc_v4l2_release = private unnamed_addr constant [17 x i8] c"uvc_v4l2_release\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_querycap(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.uvc_fh, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uvc_fh, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 16) #10
  %11 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.uvc_device, ptr %14, i32 0, i32 5
  %16 = tail call i32 @strscpy(ptr noundef %11, ptr noundef %15, i32 noundef 32) #10
  %17 = getelementptr inbounds %struct.uvc_streaming, ptr %9, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %21 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 12
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.usb_bus, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 1
  %26 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %20, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %24, ptr noundef %25) #10
  %27 = getelementptr inbounds %struct.uvc_video_chain, ptr %7, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, -2080374784
  %30 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 4
  store i32 %29, ptr %30, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_enum_fmt_vid_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %8, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %2, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %17, i8 0, i32 56, i1 false) #10
  %18 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 11
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr %struct.uvc_format, ptr %19, i32 %8, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  store i32 %22, ptr %17, align 4
  %23 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 3
  %24 = getelementptr %struct.uvc_format, ptr %19, i32 %8, i32 8
  %25 = tail call i32 @strscpy(ptr noundef %23, ptr noundef %24, i32 noundef 32) #10
  %26 = getelementptr %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 3, i32 31
  store i8 0, ptr %26, align 1
  %27 = getelementptr %struct.uvc_format, ptr %19, i32 %8, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %16, %12, %3
  %31 = phi i32 [ 0, %16 ], [ -22, %12 ], [ -22, %3 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_enum_fmt_vid_out(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %8, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %2, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %17, i8 0, i32 56, i1 false) #10
  %18 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 11
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr %struct.uvc_format, ptr %19, i32 %8, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  store i32 %22, ptr %17, align 4
  %23 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 3
  %24 = getelementptr %struct.uvc_format, ptr %19, i32 %8, i32 8
  %25 = tail call i32 @strscpy(ptr noundef %23, ptr noundef %24, i32 noundef 32) #10
  %26 = getelementptr %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 3, i32 31
  store i8 0, ptr %26, align 1
  %27 = getelementptr %struct.uvc_format, ptr %19, i32 %8, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %16, %12, %3
  %31 = phi i32 [ 0, %16 ], [ -22, %12 ], [ -22, %3 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_g_fmt_vid_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @uvc_v4l2_get_format(ptr noundef %5, ptr noundef %2)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_g_fmt_vid_out(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc i32 @uvc_v4l2_get_format(ptr noundef %5, ptr noundef %2)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_s_fmt_vid_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.uvc_streaming_control, align 1
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #10, !srcloc !10
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, ptr %9, align 4
  br label %22

18:                                               ; preds = %12
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.uvc_streaming, ptr %19, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #10, !srcloc !9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #10, !srcloc !12
  br label %45

22:                                               ; preds = %17, %3
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(34) %4, i8 0, i32 34, i1 false) #10, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !13
  %23 = load i32, ptr %2, align 4
  %24 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 9
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = call fastcc i32 @uvc_v4l2_try_format(ptr noundef %8, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 16
  call void @mutex_lock(ptr noundef %31) #10
  %32 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 18
  %33 = call i32 @uvc_queue_allocated(ptr noundef %32) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(34) %36, ptr noundef nonnull align 1 dereferenceable(34) %4, i32 34, i1 false) #10
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 14
  store ptr %37, ptr %38, align 4
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 15
  store ptr %39, ptr %40, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i32 [ %28, %35 ], [ -16, %30 ]
  call void @mutex_unlock(ptr noundef %31) #10
  br label %43

43:                                               ; preds = %41, %27, %22
  %44 = phi i32 [ %42, %41 ], [ -22, %22 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #10
  br label %45

45:                                               ; preds = %43, %18
  %46 = phi i32 [ %44, %43 ], [ -16, %18 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_s_fmt_vid_out(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.uvc_streaming_control, align 1
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #10, !srcloc !9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #10, !srcloc !10
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, ptr %9, align 4
  br label %22

18:                                               ; preds = %12
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.uvc_streaming, ptr %19, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #10, !srcloc !9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #10, !srcloc !12
  br label %45

22:                                               ; preds = %17, %3
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(34) %4, i8 0, i32 34, i1 false) #10, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !13
  %23 = load i32, ptr %2, align 4
  %24 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 9
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = call fastcc i32 @uvc_v4l2_try_format(ptr noundef %8, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 16
  call void @mutex_lock(ptr noundef %31) #10
  %32 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 18
  %33 = call i32 @uvc_queue_allocated(ptr noundef %32) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(34) %36, ptr noundef nonnull align 1 dereferenceable(34) %4, i32 34, i1 false) #10
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 14
  store ptr %37, ptr %38, align 4
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr inbounds %struct.uvc_streaming, ptr %8, i32 0, i32 15
  store ptr %39, ptr %40, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i32 [ %28, %35 ], [ -16, %30 ]
  call void @mutex_unlock(ptr noundef %31) #10
  br label %43

43:                                               ; preds = %41, %27, %22
  %44 = phi i32 [ %42, %41 ], [ -22, %22 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #10
  br label %45

45:                                               ; preds = %43, %18
  %46 = phi i32 [ %44, %43 ], [ -16, %18 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_try_fmt_vid_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.uvc_streaming_control, align 1
  %5 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(34) %4, i8 0, i32 34, i1 false), !annotation !13
  %7 = call fastcc i32 @uvc_v4l2_try_format(ptr noundef %6, ptr noundef %2, ptr noundef nonnull %4, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_try_fmt_vid_out(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.uvc_streaming_control, align 1
  %5 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(34) %4, i8 0, i32 34, i1 false), !annotation !13
  %7 = call fastcc i32 @uvc_v4l2_try_format(ptr noundef %6, ptr noundef %2, ptr noundef nonnull %4, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_reqbufs(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #10, !srcloc !9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #10, !srcloc !10
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, ptr %6, align 4
  br label %19

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.uvc_streaming, ptr %16, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #10, !srcloc !9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #10, !srcloc !12
  br label %34

19:                                               ; preds = %14, %3
  %20 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %20) #10
  %21 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 18
  %22 = tail call i32 @uvc_request_buffers(ptr noundef %21, ptr noundef %2) #10
  tail call void @mutex_unlock(ptr noundef %20) #10
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %24
  %27 = load i32, ptr %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.uvc_streaming, ptr %30, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #10, !srcloc !9
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #10, !srcloc !12
  br label %33

33:                                               ; preds = %29, %26
  store i32 0, ptr %6, align 4
  br label %34

34:                                               ; preds = %33, %24, %19, %15
  %35 = phi i32 [ -16, %15 ], [ %22, %19 ], [ 0, %33 ], [ 0, %24 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_querybuf(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %9, i32 0, i32 18
  %11 = tail call i32 @uvc_query_buffer(ptr noundef %10, ptr noundef %2) #10
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -16, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_qbuf(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %9, i32 0, i32 18
  %11 = getelementptr inbounds %struct.uvc_streaming, ptr %9, i32 0, i32 2, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_device, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @uvc_queue_buffer(ptr noundef %10, ptr noundef %14, ptr noundef %2) #10
  br label %16

16:                                               ; preds = %7, %3
  %17 = phi i32 [ %15, %7 ], [ -16, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_expbuf(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %9, i32 0, i32 18
  %11 = tail call i32 @uvc_export_buffer(ptr noundef %10, ptr noundef %2) #10
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -16, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_dqbuf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %9, i32 0, i32 18
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2048
  %14 = tail call i32 @uvc_dequeue_buffer(ptr noundef %10, ptr noundef %2, i32 noundef %13) #10
  br label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ %14, %7 ], [ -16, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_create_bufs(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #10, !srcloc !9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #10, !srcloc !10
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 1, ptr %6, align 4
  br label %19

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.uvc_streaming, ptr %16, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #10, !srcloc !9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #10, !srcloc !12
  br label %22

19:                                               ; preds = %14, %3
  %20 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 18
  %21 = tail call i32 @uvc_create_buffers(ptr noundef %20, ptr noundef %2) #10
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i32 [ %21, %19 ], [ -16, %15 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_streamon(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %9, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %10) #10
  %11 = getelementptr inbounds %struct.uvc_streaming, ptr %9, i32 0, i32 18
  %12 = tail call i32 @uvc_queue_streamon(ptr noundef %11, i32 noundef %2) #10
  tail call void @mutex_unlock(ptr noundef %10) #10
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ %12, %7 ], [ -16, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_streamoff(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %9, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %10) #10
  %11 = getelementptr inbounds %struct.uvc_streaming, ptr %9, i32 0, i32 18
  %12 = tail call i32 @uvc_queue_streamoff(ptr noundef %11, i32 noundef %2) #10
  tail call void @mutex_unlock(ptr noundef %10) #10
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ 0, %7 ], [ -16, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_enum_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uvc_video_chain, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 8
  %9 = icmp eq ptr %7, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.uvc_device, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %10, %3
  %17 = icmp eq i32 %8, 0
  br i1 %17, label %18, label %91

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.uvc_video_chain, ptr %5, i32 0, i32 2
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi ptr [ %19, %18 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %22, i32 14
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 65280
  %29 = icmp ne i32 %28, 0
  %30 = and i32 %27, 32768
  %31 = icmp eq i32 %30, 0
  %32 = and i1 %29, %31
  br i1 %32, label %33, label %20

33:                                               ; preds = %24, %20
  %34 = phi ptr [ %22, %24 ], [ %19, %20 ]
  %35 = getelementptr i8, ptr %34, i32 12
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  br label %71

38:                                               ; preds = %10
  %39 = getelementptr inbounds %struct.uvc_entity, ptr %7, i32 0, i32 13
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = icmp ult i32 %8, %41
  br i1 %42, label %43, label %91

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.uvc_entity, ptr %7, i32 0, i32 14
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 %8
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds %struct.uvc_video_chain, ptr %5, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %71, label %52

52:                                               ; preds = %43
  %53 = zext i8 %47 to i16
  br label %54

54:                                               ; preds = %68, %52
  %55 = phi ptr [ %50, %52 ], [ %69, %68 ]
  %56 = getelementptr i8, ptr %55, i32 14
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 65280
  %60 = icmp ne i32 %59, 0
  %61 = and i32 %58, 32768
  %62 = icmp eq i32 %61, 0
  %63 = and i1 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = getelementptr i8, ptr %55, i32 12
  %66 = load i16, ptr %65, align 4
  %67 = icmp eq i16 %66, %53
  br i1 %67, label %71, label %68

68:                                               ; preds = %64, %54
  %69 = load ptr, ptr %55, align 4
  %70 = icmp eq ptr %69, %49
  br i1 %70, label %71, label %54

71:                                               ; preds = %68, %64, %43, %33
  %72 = phi i32 [ %37, %33 ], [ %48, %43 ], [ %48, %64 ], [ %48, %68 ]
  %73 = phi ptr [ %34, %33 ], [ %49, %43 ], [ %49, %68 ], [ %55, %64 ]
  %74 = getelementptr i8, ptr %73, i32 -8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %91, label %76

76:                                               ; preds = %71
  %77 = getelementptr i8, ptr %73, i32 12
  %78 = load i16, ptr %77, align 4
  %79 = zext i16 %78 to i32
  %80 = icmp eq i32 %72, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(80) %2, i8 0, i32 80, i1 false)
  store i32 %8, ptr %2, align 8
  %82 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %83 = getelementptr i8, ptr %73, i32 16
  %84 = tail call i32 @strscpy(ptr noundef %82, ptr noundef %83, i32 noundef 32) #10
  %85 = getelementptr i8, ptr %73, i32 14
  %86 = load i16, ptr %85, align 2
  %87 = and i16 %86, 32767
  %88 = icmp eq i16 %87, 513
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 2
  store i32 2, ptr %90, align 4
  br label %91

91:                                               ; preds = %89, %81, %76, %71, %38, %16
  %92 = phi i32 [ -22, %16 ], [ -22, %76 ], [ -22, %71 ], [ 0, %89 ], [ 0, %81 ], [ -22, %38 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_g_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uvc_video_chain, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.uvc_device, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %3
  store i32 0, ptr %2, align 4
  br label %36

16:                                               ; preds = %9
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 1) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 4
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.uvc_entity, ptr %22, i32 0, i32 3
  %24 = load i16, ptr %23, align 4
  %25 = trunc i16 %24 to i8
  %26 = getelementptr inbounds %struct.uvc_device, ptr %21, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i8
  %29 = tail call i32 @uvc_query_ctrl(ptr noundef %21, i8 noundef zeroext -127, i8 noundef zeroext %25, i8 noundef zeroext %28, i8 noundef zeroext 1, ptr noundef nonnull %18, i16 noundef zeroext 1) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i8, ptr %18, align 8
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr %2, align 4
  br label %35

35:                                               ; preds = %31, %20
  tail call void @kfree(ptr noundef nonnull %18) #10
  br label %36

36:                                               ; preds = %35, %16, %15
  %37 = phi i32 [ 0, %15 ], [ %29, %35 ], [ -12, %16 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_s_input(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uvc_streaming, ptr %11, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #10, !srcloc !9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #10, !srcloc !10
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, ptr %6, align 4
  br label %21

17:                                               ; preds = %9
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.uvc_streaming, ptr %18, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #10, !srcloc !9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #10, !srcloc !12
  br label %55

21:                                               ; preds = %16, %3
  %22 = getelementptr inbounds %struct.uvc_video_chain, ptr %5, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.uvc_device, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25, %21
  %32 = icmp eq i32 %2, 0
  %33 = select i1 %32, i32 0, i32 -22
  br label %55

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.uvc_entity, ptr %23, i32 0, i32 13
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = icmp ugt i32 %37, %2
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3264, i32 noundef 1) #11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = trunc i32 %2 to i8
  %45 = add i8 %44, 1
  store i8 %45, ptr %41, align 8
  %46 = load ptr, ptr %5, align 4
  %47 = load ptr, ptr %22, align 4
  %48 = getelementptr inbounds %struct.uvc_entity, ptr %47, i32 0, i32 3
  %49 = load i16, ptr %48, align 4
  %50 = trunc i16 %49 to i8
  %51 = getelementptr inbounds %struct.uvc_device, ptr %46, i32 0, i32 4
  %52 = load i32, ptr %51, align 8
  %53 = trunc i32 %52 to i8
  %54 = tail call i32 @uvc_query_ctrl(ptr noundef %46, i8 noundef zeroext 1, i8 noundef zeroext %50, i8 noundef zeroext %53, i8 noundef zeroext 1, ptr noundef nonnull %41, i16 noundef zeroext 1) #10
  tail call void @kfree(ptr noundef nonnull %41) #10
  br label %55

55:                                               ; preds = %43, %39, %34, %31, %17
  %56 = phi i32 [ %54, %43 ], [ -16, %17 ], [ %33, %31 ], [ -22, %34 ], [ -12, %39 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_queryctrl(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @uvc_query_v4l2_ctrl(ptr noundef %5, ptr noundef %2) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_query_ext_ctrl(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.v4l2_queryctrl, align 4
  %5 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #10
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  %8 = load i32, ptr %2, align 8
  store i32 %8, ptr %4, align 4
  %9 = call i32 @uvc_query_v4l2_ctrl(ptr noundef %6, ptr noundef nonnull %4) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %3
  %12 = load i32, ptr %4, align 4
  store i32 %12, ptr %2, align 8
  %13 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %2, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %2, i32 0, i32 2
  %17 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 2
  %18 = call i32 @strscpy(ptr noundef %16, ptr noundef %17, i32 noundef 32) #10
  %19 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %2, i32 0, i32 3
  store i64 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %2, i32 0, i32 4
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %2, i32 0, i32 5
  store i64 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %2, i32 0, i32 6
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %2, i32 0, i32 7
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %2, i32 0, i32 8
  store i32 4, ptr %38, align 4
  %39 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %2, i32 0, i32 9
  store i32 1, ptr %39, align 8
  %40 = getelementptr inbounds %struct.v4l2_query_ext_ctrl, ptr %2, i32 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(148) %40, i8 0, i64 148, i1 false)
  br label %41

41:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #10
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_g_ext_ctrls(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.v4l2_queryctrl, align 4
  %5 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %2, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %18, %3
  %13 = phi i32 [ %20, %18 ], [ 0, %3 ]
  %14 = phi ptr [ %19, %18 ], [ %8, %3 ]
  %15 = load i32, ptr %14, align 1
  %16 = tail call i32 @uvc_ctrl_is_accessible(ptr noundef %6, i32 noundef %15, i1 noundef zeroext true) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = getelementptr %struct.v4l2_ext_control, ptr %14, i32 1
  %20 = add nuw i32 %13, 1
  %21 = load i32, ptr %9, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %12, label %23

23:                                               ; preds = %18, %3
  %24 = phi i32 [ 0, %3 ], [ %21, %18 ]
  %25 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %2, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  br label %30

26:                                               ; preds = %12
  %27 = load i32, ptr %9, align 4
  %28 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %2, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = icmp slt i32 %16, 0
  br i1 %29, label %74, label %30

30:                                               ; preds = %26, %23
  %31 = phi i32 [ %24, %23 ], [ %27, %26 ]
  %32 = phi ptr [ %25, %23 ], [ %28, %26 ]
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %33, 251658240
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = icmp eq i32 %31, 0
  br i1 %36, label %74, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %4, i32 0, i32 6
  %39 = getelementptr inbounds i8, ptr %4, i32 4
  br label %40

40:                                               ; preds = %47, %37
  %41 = phi i32 [ 0, %37 ], [ %51, %47 ]
  %42 = phi ptr [ %8, %37 ], [ %50, %47 ]
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(64) %39, i8 0, i64 64, i1 false)
  %43 = load i32, ptr %42, align 1
  store i32 %43, ptr %4, align 4
  %44 = call i32 @uvc_query_v4l2_ctrl(ptr noundef %6, ptr noundef nonnull %4) #10
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 %41, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #10
  br label %74

47:                                               ; preds = %40
  %48 = load i32, ptr %38, align 4
  %49 = getelementptr inbounds %struct.v4l2_ext_control, ptr %42, i32 0, i32 3
  store i32 %48, ptr %49, align 1
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #10
  %50 = getelementptr %struct.v4l2_ext_control, ptr %42, i32 1
  %51 = add nuw i32 %41, 1
  %52 = load i32, ptr %9, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %40, label %74

54:                                               ; preds = %30
  %55 = tail call i32 @uvc_ctrl_begin(ptr noundef %6) #10
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %67, %57
  %61 = phi i32 [ %69, %67 ], [ 0, %57 ]
  %62 = phi ptr [ %68, %67 ], [ %8, %57 ]
  %63 = tail call i32 @uvc_ctrl_get(ptr noundef %6, ptr noundef %62) #10
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = tail call i32 @__uvc_ctrl_commit(ptr noundef %1, i32 noundef 1, ptr noundef null) #10
  store i32 %61, ptr %32, align 4
  br label %74

67:                                               ; preds = %60
  %68 = getelementptr %struct.v4l2_ext_control, ptr %62, i32 1
  %69 = add nuw i32 %61, 1
  %70 = load i32, ptr %9, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %60, label %72

72:                                               ; preds = %67, %57
  store i32 0, ptr %32, align 4
  %73 = tail call i32 @__uvc_ctrl_commit(ptr noundef %1, i32 noundef 1, ptr noundef null) #10
  br label %74

74:                                               ; preds = %72, %65, %54, %47, %46, %35, %26
  %75 = phi i32 [ %63, %65 ], [ %73, %72 ], [ %16, %26 ], [ %55, %54 ], [ %44, %46 ], [ 0, %35 ], [ 0, %47 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_s_ext_ctrls(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @uvc_ioctl_s_try_ext_ctrls(ptr noundef %1, ptr noundef %2, i32 noundef -1072146872)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_try_ext_ctrls(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @uvc_ioctl_s_try_ext_ctrls(ptr noundef %1, ptr noundef %2, i32 noundef -1072146871)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_querymenu(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @uvc_query_v4l2_menu(ptr noundef %5, ptr noundef %2) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_g_selection(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 9
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %32 [
    i32 1, label %13
    i32 2, label %13
    i32 257, label %15
    i32 258, label %15
  ]

13:                                               ; preds = %10, %10
  %14 = icmp eq i32 %6, 1
  br i1 %14, label %17, label %32

15:                                               ; preds = %10, %10
  %16 = icmp eq i32 %6, 2
  br i1 %16, label %17, label %32

17:                                               ; preds = %15, %13
  %18 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %20) #10
  %21 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 15
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.uvc_frame, ptr %22, i32 0, i32 2
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %21, align 8
  %28 = getelementptr inbounds %struct.uvc_frame, ptr %27, i32 0, i32 3
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %30, ptr %31, align 4
  tail call void @mutex_unlock(ptr noundef %20) #10
  br label %32

32:                                               ; preds = %17, %15, %13, %10, %3
  %33 = phi i32 [ 0, %17 ], [ -22, %3 ], [ -22, %13 ], [ -22, %15 ], [ -22, %10 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_g_parm(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 12, i32 3
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %13) #10
  store i32 10000000, ptr %5, align 4
  call void @uvc_simplify_fraction(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 8, i32 noundef 333) #10
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(204) %2, i8 0, i32 204, i1 false) #10
  %16 = load i32, ptr %9, align 8
  store i32 %16, ptr %2, align 4
  %17 = load i32, ptr %9, align 8
  %18 = icmp eq i32 %17, 1
  %19 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  store i32 4096, ptr %19, align 4
  %20 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %20, align 4
  %21 = load i32, ptr %4, align 4
  %22 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %5, align 4
  %24 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2, i32 1
  store i32 %23, ptr %24, align 4
  br i1 %18, label %25, label %28

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %12, %3
  %29 = phi i32 [ -22, %3 ], [ 0, %25 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_s_parm(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.uvc_streaming_control, align 1
  %5 = alloca %struct.v4l2_fract, align 8
  %6 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #10, !srcloc !9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #10, !srcloc !10
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, ptr %8, align 4
  br label %21

17:                                               ; preds = %11
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.uvc_streaming, ptr %18, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #10, !srcloc !9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #10, !srcloc !12
  br label %191

21:                                               ; preds = %16, %3
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %22 = load i32, ptr %2, align 4
  %23 = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 9
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %189

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  %28 = load i64, ptr %27, align 4
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.v4l2_fract, ptr %5, i32 0, i32 1
  %31 = lshr i64 %28, 32
  %32 = trunc i64 %31 to i32
  %33 = tail call i32 @uvc_fraction_to_interval(i32 noundef %29, i32 noundef %32) #10
  %34 = load i32, ptr @uvc_dbg_param, align 4
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %41, ptr noundef nonnull @.str.8, i32 noundef %29, i32 noundef %32, i32 noundef %33) #12
  br label %42

42:                                               ; preds = %37, %26
  %43 = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %43) #10
  %44 = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 18, i32 0, i32 28
  %45 = load i16, ptr %44, align 4
  %46 = and i16 %45, 1
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  tail call void @mutex_unlock(ptr noundef %43) #10
  br label %189

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 14
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 15
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.uvc_streaming, ptr %7, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(34) %4, ptr noundef align 4 dereferenceable(34) %54, i32 34, i1 false) #10
  %55 = getelementptr inbounds %struct.uvc_frame, ptr %53, i32 0, i32 7
  %56 = load i8, ptr %55, align 4
  %57 = icmp eq i8 %56, 0
  %58 = getelementptr inbounds %struct.uvc_frame, ptr %53, i32 0, i32 9
  br i1 %57, label %80, label %59

59:                                               ; preds = %49
  %60 = zext i8 %56 to i32
  %61 = load ptr, ptr %58, align 4
  br label %62

62:                                               ; preds = %72, %59
  %63 = phi i32 [ 0, %59 ], [ %73, %72 ]
  %64 = phi i32 [ -1, %59 ], [ %70, %72 ]
  %65 = getelementptr i32, ptr %61, i32 %63
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %66, %33
  %68 = sub i32 %33, %66
  %69 = sub i32 %66, %33
  %70 = select i1 %67, i32 %68, i32 %69
  %71 = icmp ugt i32 %70, %64
  br i1 %71, label %75, label %72

72:                                               ; preds = %62
  %73 = add nuw nsw i32 %63, 1
  %74 = icmp eq i32 %73, %60
  br i1 %74, label %75, label %62

75:                                               ; preds = %72, %62
  %76 = phi i32 [ %63, %62 ], [ %60, %72 ]
  %77 = add nsw i32 %76, -1
  %78 = getelementptr i32, ptr %61, i32 %77
  %79 = load i32, ptr %78, align 4
  br label %94

80:                                               ; preds = %49
  %81 = load ptr, ptr %58, align 4
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr i32, ptr %81, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr i32, ptr %81, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = sub i32 %33, %82
  %88 = lshr i32 %86, 1
  %89 = add i32 %88, %87
  %90 = urem i32 %89, %86
  %91 = sub i32 %82, %90
  %92 = add i32 %91, %89
  %93 = tail call i32 @llvm.umin.i32(i32 %92, i32 %84) #10
  br label %94

94:                                               ; preds = %80, %75
  %95 = phi i32 [ %79, %75 ], [ %93, %80 ]
  %96 = getelementptr inbounds %struct.uvc_streaming_control, ptr %4, i32 0, i32 3
  store i32 %95, ptr %96, align 1
  %97 = getelementptr inbounds %struct.uvc_format, ptr %51, i32 0, i32 9
  %98 = load i32, ptr %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = icmp ne i32 %95, %33
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %102, label %180

102:                                              ; preds = %94
  %103 = sub i32 %95, %33
  %104 = tail call i32 @llvm.abs.i32(i32 %103, i1 false) #10
  %105 = getelementptr inbounds %struct.uvc_format, ptr %51, i32 0, i32 10
  %106 = getelementptr inbounds %struct.uvc_frame, ptr %53, i32 0, i32 2
  %107 = getelementptr inbounds %struct.uvc_frame, ptr %53, i32 0, i32 3
  %108 = getelementptr inbounds %struct.uvc_streaming_control, ptr %4, i32 0, i32 2
  %109 = load ptr, ptr %105, align 4
  br label %110

110:                                              ; preds = %173, %102
  %111 = phi ptr [ %53, %102 ], [ %175, %173 ]
  %112 = phi i32 [ 0, %102 ], [ %176, %173 ]
  %113 = phi i32 [ %104, %102 ], [ %174, %173 ]
  %114 = getelementptr %struct.uvc_frame, ptr %109, i32 %112
  %115 = icmp eq ptr %114, %53
  br i1 %115, label %173, label %116

116:                                              ; preds = %110
  %117 = getelementptr %struct.uvc_frame, ptr %109, i32 %112, i32 2
  %118 = load i16, ptr %117, align 2
  %119 = load i16, ptr %106, align 2
  %120 = icmp eq i16 %118, %119
  br i1 %120, label %121, label %173

121:                                              ; preds = %116
  %122 = getelementptr %struct.uvc_frame, ptr %109, i32 %112, i32 3
  %123 = load i16, ptr %122, align 4
  %124 = load i16, ptr %107, align 4
  %125 = icmp eq i16 %123, %124
  br i1 %125, label %126, label %173

126:                                              ; preds = %121
  %127 = getelementptr %struct.uvc_frame, ptr %109, i32 %112, i32 7
  %128 = load i8, ptr %127, align 4
  %129 = icmp eq i8 %128, 0
  %130 = getelementptr %struct.uvc_frame, ptr %109, i32 %112, i32 9
  br i1 %129, label %152, label %131

131:                                              ; preds = %126
  %132 = zext i8 %128 to i32
  %133 = load ptr, ptr %130, align 4
  br label %134

134:                                              ; preds = %144, %131
  %135 = phi i32 [ 0, %131 ], [ %145, %144 ]
  %136 = phi i32 [ -1, %131 ], [ %142, %144 ]
  %137 = getelementptr i32, ptr %133, i32 %135
  %138 = load i32, ptr %137, align 4
  %139 = icmp ult i32 %138, %33
  %140 = sub i32 %33, %138
  %141 = sub i32 %138, %33
  %142 = select i1 %139, i32 %140, i32 %141
  %143 = icmp ugt i32 %142, %136
  br i1 %143, label %147, label %144

144:                                              ; preds = %134
  %145 = add nuw nsw i32 %135, 1
  %146 = icmp eq i32 %145, %132
  br i1 %146, label %147, label %134

147:                                              ; preds = %144, %134
  %148 = phi i32 [ %135, %134 ], [ %132, %144 ]
  %149 = add nsw i32 %148, -1
  %150 = getelementptr i32, ptr %133, i32 %149
  %151 = load i32, ptr %150, align 4
  br label %166

152:                                              ; preds = %126
  %153 = load ptr, ptr %130, align 4
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr i32, ptr %153, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr i32, ptr %153, i32 2
  %158 = load i32, ptr %157, align 4
  %159 = sub i32 %33, %154
  %160 = lshr i32 %158, 1
  %161 = add i32 %160, %159
  %162 = urem i32 %161, %158
  %163 = sub i32 %154, %162
  %164 = add i32 %163, %161
  %165 = tail call i32 @llvm.umin.i32(i32 %164, i32 %156) #10
  br label %166

166:                                              ; preds = %152, %147
  %167 = phi i32 [ %151, %147 ], [ %165, %152 ]
  %168 = sub i32 %167, %33
  %169 = tail call i32 @llvm.abs.i32(i32 %168, i1 false) #10
  %170 = icmp ult i32 %169, %113
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i8, ptr %114, align 4
  store i8 %172, ptr %108, align 1
  store i32 %167, ptr %96, align 1
  br label %173

173:                                              ; preds = %171, %166, %121, %116, %110
  %174 = phi i32 [ %169, %171 ], [ %113, %110 ], [ %113, %121 ], [ %113, %116 ], [ %113, %166 ]
  %175 = phi ptr [ %114, %171 ], [ %111, %110 ], [ %111, %121 ], [ %111, %116 ], [ %111, %166 ]
  %176 = add nuw i32 %112, 1
  %177 = icmp ult i32 %176, %98
  %178 = icmp ne i32 %174, 0
  %179 = select i1 %177, i1 %178, i1 false
  br i1 %179, label %110, label %180

180:                                              ; preds = %173, %94
  %181 = phi ptr [ %53, %94 ], [ %175, %173 ]
  %182 = call i32 @uvc_probe_video(ptr noundef %7, ptr noundef nonnull %4) #10
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  call void @mutex_unlock(ptr noundef %43) #10
  br label %189

185:                                              ; preds = %180
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(34) %54, ptr noundef nonnull align 1 dereferenceable(34) %4, i32 34, i1 false) #10
  store ptr %181, ptr %52, align 8
  call void @mutex_unlock(ptr noundef %43) #10
  %186 = load i32, ptr %96, align 1
  store i32 %186, ptr %5, align 8
  store i32 10000000, ptr %30, align 4
  call void @uvc_simplify_fraction(ptr noundef nonnull %5, ptr noundef %30, i32 noundef 8, i32 noundef 333) #10
  %187 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  %188 = load i64, ptr %5, align 8
  store i64 %188, ptr %27, align 4
  store i32 4096, ptr %187, align 4
  br label %189

189:                                              ; preds = %185, %184, %48, %21
  %190 = phi i32 [ -16, %48 ], [ %182, %184 ], [ -22, %21 ], [ 0, %185 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #10
  br label %191

191:                                              ; preds = %189, %17
  %192 = phi i32 [ %190, %189 ], [ -16, %17 ]
  ret i32 %192
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_enum_framesizes(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %77, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %19, %9
  %15 = phi i32 [ 0, %9 ], [ %20, %19 ]
  %16 = getelementptr %struct.uvc_format, ptr %11, i32 %15, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %13
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nuw i32 %15, 1
  %21 = icmp eq i32 %20, %7
  br i1 %21, label %77, label %14

22:                                               ; preds = %14
  %23 = getelementptr %struct.uvc_format, ptr %11, i32 %15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %77, label %25

25:                                               ; preds = %22
  %26 = getelementptr %struct.uvc_format, ptr %11, i32 %15, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.uvc_format, ptr %11, i32 %15, i32 10
  br label %31

31:                                               ; preds = %58, %29
  %32 = phi i32 [ 0, %29 ], [ %61, %58 ]
  %33 = phi i32 [ 0, %29 ], [ %60, %58 ]
  %34 = phi ptr [ null, %29 ], [ %59, %58 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load ptr, ptr %30, align 4
  br label %51

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.uvc_frame, ptr %34, i32 0, i32 2
  %40 = load i16, ptr %39, align 2
  %41 = load ptr, ptr %30, align 4
  %42 = getelementptr %struct.uvc_frame, ptr %41, i32 %32, i32 2
  %43 = load i16, ptr %42, align 2
  %44 = icmp eq i16 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.uvc_frame, ptr %34, i32 0, i32 3
  %47 = load i16, ptr %46, align 4
  %48 = getelementptr %struct.uvc_frame, ptr %41, i32 %32, i32 3
  %49 = load i16, ptr %48, align 4
  %50 = icmp eq i16 %47, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %45, %38, %36
  %52 = phi ptr [ %37, %36 ], [ %41, %45 ], [ %41, %38 ]
  %53 = getelementptr %struct.uvc_frame, ptr %52, i32 %32
  %54 = load i32, ptr %2, align 4
  %55 = icmp eq i32 %33, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = add i32 %33, 1
  br label %58

58:                                               ; preds = %56, %45
  %59 = phi ptr [ %34, %45 ], [ %53, %56 ]
  %60 = phi i32 [ %33, %45 ], [ %57, %56 ]
  %61 = add nuw i32 %32, 1
  %62 = icmp eq i32 %61, %27
  br i1 %62, label %77, label %31

63:                                               ; preds = %51, %25
  %64 = phi i32 [ 0, %25 ], [ %32, %51 ]
  %65 = phi ptr [ null, %25 ], [ %53, %51 ]
  %66 = icmp eq i32 %64, %27
  br i1 %66, label %77, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 2
  store i32 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.uvc_frame, ptr %65, i32 0, i32 2
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.uvc_frame, ptr %65, i32 0, i32 3
  %74 = load i16, ptr %73, align 4
  %75 = zext i16 %74 to i32
  %76 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 %75, ptr %76, align 4
  br label %77

77:                                               ; preds = %67, %63, %58, %22, %19, %3
  %78 = phi i32 [ 0, %67 ], [ -22, %22 ], [ -22, %63 ], [ -22, %3 ], [ -22, %58 ], [ -22, %19 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_enum_frameintervals(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %97, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %19, %9
  %15 = phi i32 [ 0, %9 ], [ %20, %19 ]
  %16 = getelementptr %struct.uvc_format, ptr %11, i32 %15, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %13
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nuw i32 %15, 1
  %21 = icmp eq i32 %20, %7
  br i1 %21, label %97, label %14

22:                                               ; preds = %14
  %23 = getelementptr %struct.uvc_format, ptr %11, i32 %15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %97, label %25

25:                                               ; preds = %22
  %26 = load i32, ptr %2, align 4
  %27 = getelementptr %struct.uvc_format, ptr %11, i32 %15, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %25
  %31 = getelementptr %struct.uvc_format, ptr %11, i32 %15, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 3
  br label %36

36:                                               ; preds = %58, %30
  %37 = phi i32 [ 0, %30 ], [ %60, %58 ]
  %38 = phi i32 [ %26, %30 ], [ %59, %58 ]
  %39 = getelementptr %struct.uvc_frame, ptr %32, i32 %37, i32 2
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %34, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = getelementptr %struct.uvc_frame, ptr %32, i32 %37, i32 3
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = load i32, ptr %35, align 4
  %48 = icmp eq i32 %47, %46
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = getelementptr %struct.uvc_frame, ptr %32, i32 %37, i32 7
  %51 = load i8, ptr %50, align 4
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, i8 1, i8 %51
  %54 = zext i8 %53 to i32
  %55 = icmp ult i32 %38, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = sub i32 %38, %54
  br label %58

58:                                               ; preds = %56, %43, %36
  %59 = phi i32 [ %57, %56 ], [ %38, %43 ], [ %38, %36 ]
  %60 = add nuw i32 %37, 1
  %61 = icmp eq i32 %60, %28
  br i1 %61, label %97, label %36

62:                                               ; preds = %49
  %63 = getelementptr %struct.uvc_frame, ptr %32, i32 %37
  br label %64

64:                                               ; preds = %62, %25
  %65 = phi i32 [ %26, %25 ], [ %38, %62 ]
  %66 = phi i32 [ 0, %25 ], [ %37, %62 ]
  %67 = phi ptr [ null, %25 ], [ %63, %62 ]
  %68 = icmp eq i32 %66, %28
  br i1 %68, label %97, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.uvc_frame, ptr %67, i32 0, i32 7
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, 0
  %73 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 4
  br i1 %72, label %81, label %74

74:                                               ; preds = %69
  store i32 1, ptr %73, align 4
  %75 = getelementptr inbounds %struct.uvc_frame, ptr %67, i32 0, i32 9
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i32, ptr %76, i32 %65
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5, i32 0, i32 0, i32 1
  store i32 10000000, ptr %80, align 4
  tail call void @uvc_simplify_fraction(ptr noundef %79, ptr noundef %80, i32 noundef 8, i32 noundef 333) #10
  br label %97

81:                                               ; preds = %69
  store i32 3, ptr %73, align 4
  %82 = getelementptr inbounds %struct.uvc_frame, ptr %67, i32 0, i32 9
  %83 = load ptr, ptr %82, align 4
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5, i32 0, i32 0, i32 1
  store i32 10000000, ptr %86, align 4
  %87 = load ptr, ptr %82, align 4
  %88 = getelementptr i32, ptr %87, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5, i32 0, i32 1
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5, i32 0, i32 1, i32 1
  store i32 10000000, ptr %91, align 4
  %92 = load ptr, ptr %82, align 4
  %93 = getelementptr i32, ptr %92, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5, i32 0, i32 2
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %2, i32 0, i32 5, i32 0, i32 2, i32 1
  store i32 10000000, ptr %96, align 4
  tail call void @uvc_simplify_fraction(ptr noundef %85, ptr noundef %86, i32 noundef 8, i32 noundef 333) #10
  tail call void @uvc_simplify_fraction(ptr noundef %90, ptr noundef %91, i32 noundef 8, i32 noundef 333) #10
  tail call void @uvc_simplify_fraction(ptr noundef %95, ptr noundef %96, i32 noundef 8, i32 noundef 333) #10
  br label %97

97:                                               ; preds = %81, %74, %64, %58, %22, %19, %3
  %98 = phi i32 [ -22, %22 ], [ -22, %64 ], [ 0, %81 ], [ 0, %74 ], [ -22, %3 ], [ -22, %58 ], [ -22, %19 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_subscribe_event(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @v4l2_event_subscribe(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull @uvc_ctrl_sub_ev_ops) #10
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_ioctl_default(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  switch i32 %3, label %73 [
    i32 -1067944672, label %8
    i32 -1072925407, label %71
  ]

8:                                                ; preds = %5
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 84) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 2
  store i32 %13, ptr %14, align 8
  %15 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %13) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %4, i32 0, i32 1
  %19 = tail call ptr @kmemdup(ptr noundef %18, i32 noundef 32, i32 noundef 3264) #10
  %20 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %69, label %22

22:                                               ; preds = %17, %12
  %23 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 4
  %24 = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %4, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %23, ptr noundef align 4 dereferenceable(16) %24, i32 16, i1 false) #10
  %25 = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %4, i32 0, i32 3
  %26 = load i8, ptr %25, align 4
  %27 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 5
  store i8 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %4, i32 0, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 6
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %4, i32 0, i32 5
  %32 = load i8, ptr %31, align 2
  %33 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 7
  store i8 %32, ptr %33, align 2
  %34 = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %4, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 8
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %4, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 9
  store i32 %38, ptr %39, align 8
  switch i32 %35, label %57 [
    i32 1, label %65
    i32 2, label %65
    i32 4, label %65
    i32 3, label %40
  ]

40:                                               ; preds = %22
  %41 = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %4, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -33
  %44 = icmp ult i32 %43, -32
  br i1 %44, label %69, label %45

45:                                               ; preds = %40
  %46 = mul nuw nsw i32 %42, 36
  %47 = getelementptr inbounds %struct.uvc_xu_control_mapping, ptr %4, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  %49 = tail call ptr @memdup_user(ptr noundef %48, i32 noundef %46) #10
  %50 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 10
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = ptrtoint ptr %49 to i32
  br label %69

54:                                               ; preds = %45
  %55 = load i32, ptr %41, align 4
  %56 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 11
  store i32 %55, ptr %56, align 8
  br label %65

57:                                               ; preds = %22
  %58 = load i32, ptr @uvc_dbg_param, align 4
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %7, align 4
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %64, ptr noundef nonnull @.str.9, i32 noundef %35) #12
  br label %69

65:                                               ; preds = %54, %22, %22, %22
  %66 = tail call i32 @uvc_ctrl_add_mapping(ptr noundef %7, ptr noundef nonnull %10) #10
  %67 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  tail call void @kfree(ptr noundef %68) #10
  br label %69

69:                                               ; preds = %65, %61, %57, %52, %40, %17
  %70 = phi i32 [ %53, %52 ], [ %66, %65 ], [ -12, %17 ], [ -22, %40 ], [ -25, %61 ], [ -25, %57 ]
  tail call void @kfree(ptr noundef nonnull %10) #10
  br label %73

71:                                               ; preds = %5
  %72 = tail call i32 @uvc_xu_ctrl_query(ptr noundef %7, ptr noundef %4) #10
  br label %73

73:                                               ; preds = %71, %69, %8, %5
  %74 = phi i32 [ %72, %71 ], [ -25, %5 ], [ %70, %69 ], [ -12, %8 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_read(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = load i32, ptr @uvc_dbg_param, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.uvc_fh, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %16, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.uvc_v4l2_read) #12
  br label %17

17:                                               ; preds = %8, %4
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.uvc_fh, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @uvc_dbg_param, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %14, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.uvc_v4l2_poll) #12
  br label %15

15:                                               ; preds = %10, %2
  %16 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 18
  %17 = tail call i32 @uvc_queue_poll(ptr noundef %16, ptr noundef %0, ptr noundef %1) #10
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.uvc_fh, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @uvc_dbg_param, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %14, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.uvc_v4l2_mmap) #12
  br label %15

15:                                               ; preds = %10, %2
  %16 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 18
  %17 = tail call i32 @uvc_queue_mmap(ptr noundef %16, ptr noundef %1) #10
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_open(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr @uvc_dbg_param, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uvc_streaming, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.uvc_v4l2_open) #12
  br label %13

13:                                               ; preds = %8, %1
  %14 = getelementptr inbounds %struct.uvc_streaming, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.uvc_device, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @usb_autopm_get_interface(ptr noundef %17) #10
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 92) #11
  %23 = icmp eq ptr %22, null
  %24 = load ptr, ptr %14, align 8
  br i1 %23, label %25, label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.uvc_device, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %27) #10
  br label %60

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.uvc_device, ptr %24, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %29) #10
  %30 = load ptr, ptr %14, align 8
  %31 = getelementptr inbounds %struct.uvc_device, ptr %30, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = tail call i32 @uvc_status_start(ptr noundef %30, i32 noundef 3264) #10
  %36 = icmp slt i32 %35, 0
  %37 = load ptr, ptr %14, align 8
  br i1 %36, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.uvc_device, ptr %37, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  br label %46

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.uvc_device, ptr %37, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %42) #10
  %43 = load ptr, ptr %14, align 8
  %44 = getelementptr inbounds %struct.uvc_device, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %45) #10
  tail call void @kfree(ptr noundef nonnull %22) #10
  br label %60

46:                                               ; preds = %38, %28
  %47 = phi i32 [ %40, %38 ], [ %32, %28 ]
  %48 = phi ptr [ %37, %38 ], [ %30, %28 ]
  %49 = getelementptr inbounds %struct.uvc_device, ptr %48, i32 0, i32 8
  %50 = add i32 %47, 1
  store i32 %50, ptr %49, align 4
  %51 = load ptr, ptr %14, align 8
  %52 = getelementptr inbounds %struct.uvc_device, ptr %51, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %52) #10
  %53 = getelementptr inbounds %struct.uvc_streaming, ptr %4, i32 0, i32 2
  tail call void @v4l2_fh_init(ptr noundef nonnull %22, ptr noundef %53) #10
  tail call void @v4l2_fh_add(ptr noundef nonnull %22) #10
  %54 = getelementptr inbounds %struct.uvc_streaming, ptr %4, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.uvc_fh, ptr %22, i32 0, i32 1
  store ptr %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.uvc_fh, ptr %22, i32 0, i32 2
  store ptr %4, ptr %57, align 4
  %58 = getelementptr inbounds %struct.uvc_fh, ptr %22, i32 0, i32 3
  store i32 0, ptr %58, align 8
  %59 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %22, ptr %59, align 8
  br label %60

60:                                               ; preds = %46, %41, %25, %13
  %61 = phi i32 [ -12, %25 ], [ %35, %41 ], [ 0, %46 ], [ %18, %13 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_v4l2_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uvc_fh, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @uvc_dbg_param, align 4
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.uvc_v4l2_release) #12
  br label %14

14:                                               ; preds = %9, %1
  %15 = getelementptr inbounds %struct.uvc_fh, ptr %3, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 18
  tail call void @uvc_queue_release(ptr noundef %19) #10
  %20 = load i32, ptr %15, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.uvc_streaming, ptr %23, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #10, !srcloc !9
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #10, !srcloc !12
  br label %26

26:                                               ; preds = %22, %18, %14
  store i32 0, ptr %15, align 4
  tail call void @v4l2_fh_del(ptr noundef %3) #10
  tail call void @v4l2_fh_exit(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %3) #10
  store ptr null, ptr %2, align 8
  %27 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.uvc_device, ptr %28, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %29) #10
  %30 = load ptr, ptr %27, align 8
  %31 = getelementptr inbounds %struct.uvc_device, ptr %30, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr %31, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load ptr, ptr %27, align 8
  tail call void @uvc_status_stop(ptr noundef %36) #10
  br label %37

37:                                               ; preds = %35, %26
  %38 = load ptr, ptr %27, align 8
  %39 = getelementptr inbounds %struct.uvc_device, ptr %38, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %39) #10
  %40 = load ptr, ptr %27, align 8
  %41 = getelementptr inbounds %struct.uvc_device, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %42) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_v4l2_get_format(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %58

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %10, null
  %14 = icmp eq ptr %12, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %56, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.uvc_format, ptr %10, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  store i32 %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.uvc_frame, ptr %12, i32 0, i32 2
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  store i32 %23, ptr %19, align 4
  %24 = getelementptr inbounds %struct.uvc_frame, ptr %12, i32 0, i32 3
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %28, align 4
  %29 = load i32, ptr %17, align 4
  switch i32 %29, label %33 [
    i32 842094158, label %30
    i32 842094169, label %30
    i32 842093913, label %30
    i32 808596557, label %30
  ]

30:                                               ; preds = %16, %16, %16, %16
  %31 = load i16, ptr %21, align 2
  %32 = zext i16 %31 to i32
  br label %41

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.uvc_format, ptr %10, i32 0, i32 2
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = load i16, ptr %21, align 2
  %38 = zext i16 %37 to i32
  %39 = mul nuw nsw i32 %38, %36
  %40 = lshr i32 %39, 3
  br label %41

41:                                               ; preds = %33, %30
  %42 = phi i32 [ %40, %33 ], [ %32, %30 ]
  %43 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 12, i32 9
  %45 = load i32, ptr %44, align 2
  %46 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.uvc_format, ptr %10, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.uvc_format, ptr %10, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.uvc_format, ptr %10, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %41, %7
  %57 = phi i32 [ 0, %41 ], [ -22, %7 ]
  tail call void @mutex_unlock(ptr noundef %8) #10
  br label %58

58:                                               ; preds = %56, %2
  %59 = phi i32 [ %57, %56 ], [ -22, %2 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_v4l2_try_format(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4) unnamed_addr #0 {
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %296

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  %13 = load i32, ptr @uvc_dbg_param, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  %21 = load i32, ptr %12, align 4
  %22 = and i32 %21, 255
  %23 = lshr i32 %21, 8
  %24 = and i32 %23, 255
  %25 = lshr i32 %21, 16
  %26 = and i32 %25, 255
  %27 = lshr i32 %21, 24
  %28 = load i32, ptr %11, align 4
  %29 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef %21, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %30) #12
  br label %31

31:                                               ; preds = %16, %10
  %32 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 11
  %37 = load ptr, ptr %36, align 8
  %38 = load i32, ptr %12, align 4
  br label %39

39:                                               ; preds = %44, %35
  %40 = phi i32 [ 0, %35 ], [ %45, %44 ]
  %41 = getelementptr %struct.uvc_format, ptr %37, i32 %40, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %38
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = add nuw i32 %40, 1
  %46 = icmp eq i32 %45, %33
  br i1 %46, label %53, label %39

47:                                               ; preds = %39
  %48 = getelementptr %struct.uvc_format, ptr %37, i32 %40
  br label %49

49:                                               ; preds = %47, %31
  %50 = phi i32 [ %40, %47 ], [ 0, %31 ]
  %51 = phi ptr [ %48, %47 ], [ null, %31 ]
  %52 = icmp eq i32 %50, %33
  br i1 %52, label %53, label %58

53:                                               ; preds = %49, %44
  %54 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 13
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.uvc_format, ptr %55, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %12, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi ptr [ %55, %53 ], [ %51, %49 ]
  %60 = load i32, ptr %11, align 4
  %61 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.uvc_format, ptr %59, i32 0, i32 9
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %99, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.uvc_format, ptr %59, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = and i32 %60, 65535
  %70 = and i32 %62, 65535
  %71 = mul nuw i32 %70, %69
  br label %72

72:                                               ; preds = %72, %66
  %73 = phi ptr [ null, %66 ], [ %92, %72 ]
  %74 = phi i32 [ -1, %66 ], [ %91, %72 ]
  %75 = phi i32 [ 0, %66 ], [ %94, %72 ]
  %76 = getelementptr %struct.uvc_frame, ptr %68, i32 %75, i32 2
  %77 = load i16, ptr %76, align 2
  %78 = getelementptr %struct.uvc_frame, ptr %68, i32 %75, i32 3
  %79 = load i16, ptr %78, align 4
  %80 = zext i16 %77 to i32
  %81 = tail call i32 @llvm.umin.i32(i32 %69, i32 %80)
  %82 = zext i16 %79 to i32
  %83 = tail call i32 @llvm.umin.i32(i32 %70, i32 %82)
  %84 = mul nuw i32 %82, %80
  %85 = add i32 %84, %71
  %86 = mul nsw i32 %81, -2
  %87 = mul i32 %86, %83
  %88 = add i32 %85, %87
  %89 = icmp ult i32 %88, %74
  %90 = getelementptr %struct.uvc_frame, ptr %68, i32 %75
  %91 = tail call i32 @llvm.umin.i32(i32 %88, i32 %74)
  %92 = select i1 %89, ptr %90, ptr %73
  %93 = icmp eq i32 %91, 0
  %94 = add nuw i32 %75, 1
  %95 = icmp eq i32 %94, %64
  %96 = select i1 %93, i1 true, i1 %95
  br i1 %96, label %97, label %72

97:                                               ; preds = %72
  %98 = icmp eq ptr %92, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %97, %58
  %100 = load i32, ptr @uvc_dbg_param, align 4
  %101 = and i32 %100, 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %296, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %105 = load ptr, ptr %104, align 8
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.usb_device, ptr %106, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %107, ptr noundef nonnull @.str.4, i32 noundef %60, i32 noundef %62) #12
  br label %296

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.uvc_frame, ptr %92, i32 0, i32 8
  %110 = load i32, ptr %109, align 4
  %111 = load i32, ptr @uvc_dbg_param, align 4
  %112 = and i32 %111, 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %116 = load ptr, ptr %115, align 8
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.usb_device, ptr %117, i32 0, i32 15
  %119 = freeze i32 %110
  %120 = udiv i32 %119, 10
  %121 = mul i32 %120, 10
  %122 = sub i32 %119, %121
  %123 = udiv i32 10000000, %110
  %124 = udiv i32 100000000, %110
  %125 = urem i32 %124, 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %118, ptr noundef nonnull @.str.5, i32 noundef %120, i32 noundef %122, i32 noundef %123, i32 noundef %125) #12
  br label %126

126:                                              ; preds = %114, %108
  %127 = getelementptr inbounds i8, ptr %2, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(34) %127, i8 0, i32 32, i1 false)
  store i16 1, ptr %2, align 1
  %128 = getelementptr inbounds %struct.uvc_format, ptr %59, i32 0, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = getelementptr inbounds %struct.uvc_streaming_control, ptr %2, i32 0, i32 1
  store i8 %129, ptr %130, align 1
  %131 = load i8, ptr %92, align 4
  %132 = getelementptr inbounds %struct.uvc_streaming_control, ptr %2, i32 0, i32 2
  store i8 %131, ptr %132, align 1
  %133 = getelementptr inbounds %struct.uvc_frame, ptr %92, i32 0, i32 7
  %134 = load i8, ptr %133, align 4
  %135 = icmp eq i8 %134, 0
  %136 = getelementptr inbounds %struct.uvc_frame, ptr %92, i32 0, i32 9
  br i1 %135, label %158, label %137

137:                                              ; preds = %126
  %138 = zext i8 %134 to i32
  %139 = load ptr, ptr %136, align 4
  br label %140

140:                                              ; preds = %150, %137
  %141 = phi i32 [ 0, %137 ], [ %151, %150 ]
  %142 = phi i32 [ -1, %137 ], [ %148, %150 ]
  %143 = getelementptr i32, ptr %139, i32 %141
  %144 = load i32, ptr %143, align 4
  %145 = icmp ult i32 %144, %110
  %146 = sub i32 %110, %144
  %147 = sub i32 %144, %110
  %148 = select i1 %145, i32 %146, i32 %147
  %149 = icmp ugt i32 %148, %142
  br i1 %149, label %153, label %150

150:                                              ; preds = %140
  %151 = add nuw nsw i32 %141, 1
  %152 = icmp eq i32 %151, %138
  br i1 %152, label %153, label %140

153:                                              ; preds = %150, %140
  %154 = phi i32 [ %141, %140 ], [ %138, %150 ]
  %155 = add nsw i32 %154, -1
  %156 = getelementptr i32, ptr %139, i32 %155
  %157 = load i32, ptr %156, align 4
  br label %172

158:                                              ; preds = %126
  %159 = load ptr, ptr %136, align 4
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr i32, ptr %159, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr i32, ptr %159, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = sub i32 %110, %160
  %166 = lshr i32 %164, 1
  %167 = add i32 %166, %165
  %168 = urem i32 %167, %164
  %169 = sub i32 %160, %168
  %170 = add i32 %169, %167
  %171 = tail call i32 @llvm.umin.i32(i32 %170, i32 %162) #10
  br label %172

172:                                              ; preds = %158, %153
  %173 = phi i32 [ %157, %153 ], [ %171, %158 ]
  %174 = getelementptr inbounds %struct.uvc_streaming_control, ptr %2, i32 0, i32 3
  store i32 %173, ptr %174, align 1
  %175 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %175) #10
  %176 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr inbounds %struct.uvc_device, ptr %177, i32 0, i32 3
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %172
  %183 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 12, i32 9
  %184 = load i32, ptr %183, align 2
  %185 = getelementptr inbounds %struct.uvc_streaming_control, ptr %2, i32 0, i32 9
  store i32 %184, ptr %185, align 1
  br label %186

186:                                              ; preds = %182, %172
  %187 = tail call i32 @uvc_probe_video(ptr noundef %0, ptr noundef %2) #10
  tail call void @mutex_unlock(ptr noundef %175) #10
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %296, label %189

189:                                              ; preds = %186
  %190 = load i32, ptr %32, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %206, label %192

192:                                              ; preds = %189
  %193 = load i8, ptr %130, align 1
  %194 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 11
  %195 = load ptr, ptr %194, align 8
  br label %196

196:                                              ; preds = %203, %192
  %197 = phi i32 [ 0, %192 ], [ %204, %203 ]
  %198 = getelementptr %struct.uvc_format, ptr %195, i32 %197, i32 1
  %199 = load i8, ptr %198, align 1
  %200 = icmp eq i8 %193, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = getelementptr %struct.uvc_format, ptr %195, i32 %197
  br label %206

203:                                              ; preds = %196
  %204 = add nuw i32 %197, 1
  %205 = icmp eq i32 %204, %190
  br i1 %205, label %210, label %196

206:                                              ; preds = %201, %189
  %207 = phi i32 [ %197, %201 ], [ 0, %189 ]
  %208 = phi ptr [ %202, %201 ], [ %59, %189 ]
  %209 = icmp eq i32 %207, %190
  br i1 %209, label %210, label %221

210:                                              ; preds = %206, %203
  %211 = phi ptr [ %208, %206 ], [ %59, %203 ]
  %212 = load i32, ptr @uvc_dbg_param, align 4
  %213 = and i32 %212, 8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %210
  %216 = load ptr, ptr %176, align 8
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr inbounds %struct.usb_device, ptr %217, i32 0, i32 15
  %219 = load i8, ptr %130, align 1
  %220 = zext i8 %219 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %218, ptr noundef nonnull @.str.6, i32 noundef %220) #12
  br label %221

221:                                              ; preds = %215, %210, %206
  %222 = phi ptr [ %211, %210 ], [ %211, %215 ], [ %208, %206 ]
  %223 = getelementptr inbounds %struct.uvc_format, ptr %222, i32 0, i32 9
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %238, label %226

226:                                              ; preds = %221
  %227 = load i8, ptr %132, align 1
  %228 = getelementptr inbounds %struct.uvc_format, ptr %222, i32 0, i32 10
  %229 = load ptr, ptr %228, align 4
  br label %230

230:                                              ; preds = %235, %226
  %231 = phi i32 [ 0, %226 ], [ %236, %235 ]
  %232 = getelementptr %struct.uvc_frame, ptr %229, i32 %231
  %233 = load i8, ptr %232, align 4
  %234 = icmp eq i8 %227, %233
  br i1 %234, label %238, label %235

235:                                              ; preds = %230
  %236 = add nuw i32 %231, 1
  %237 = icmp eq i32 %236, %224
  br i1 %237, label %242, label %230

238:                                              ; preds = %230, %221
  %239 = phi i32 [ 0, %221 ], [ %231, %230 ]
  %240 = phi ptr [ %92, %221 ], [ %232, %230 ]
  %241 = icmp eq i32 %239, %224
  br i1 %241, label %242, label %253

242:                                              ; preds = %238, %235
  %243 = phi ptr [ %240, %238 ], [ %92, %235 ]
  %244 = load i32, ptr @uvc_dbg_param, align 4
  %245 = and i32 %244, 8
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %253, label %247

247:                                              ; preds = %242
  %248 = load ptr, ptr %176, align 8
  %249 = load ptr, ptr %248, align 8
  %250 = getelementptr inbounds %struct.usb_device, ptr %249, i32 0, i32 15
  %251 = load i8, ptr %132, align 1
  %252 = zext i8 %251 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.2, ptr noundef %250, ptr noundef nonnull @.str.7, i32 noundef %252) #12
  br label %253

253:                                              ; preds = %247, %242, %238
  %254 = phi ptr [ %243, %242 ], [ %243, %247 ], [ %240, %238 ]
  %255 = getelementptr inbounds %struct.uvc_frame, ptr %254, i32 0, i32 2
  %256 = load i16, ptr %255, align 2
  %257 = zext i16 %256 to i32
  store i32 %257, ptr %11, align 4
  %258 = getelementptr inbounds %struct.uvc_frame, ptr %254, i32 0, i32 3
  %259 = load i16, ptr %258, align 4
  %260 = zext i16 %259 to i32
  store i32 %260, ptr %61, align 4
  %261 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %261, align 4
  %262 = getelementptr inbounds %struct.uvc_format, ptr %222, i32 0, i32 6
  %263 = load i32, ptr %262, align 4
  switch i32 %263, label %267 [
    i32 842094158, label %264
    i32 842094169, label %264
    i32 842093913, label %264
    i32 808596557, label %264
  ]

264:                                              ; preds = %253, %253, %253, %253
  %265 = load i16, ptr %255, align 2
  %266 = zext i16 %265 to i32
  br label %275

267:                                              ; preds = %253
  %268 = getelementptr inbounds %struct.uvc_format, ptr %222, i32 0, i32 2
  %269 = load i8, ptr %268, align 2
  %270 = zext i8 %269 to i32
  %271 = load i16, ptr %255, align 2
  %272 = zext i16 %271 to i32
  %273 = mul nuw nsw i32 %272, %270
  %274 = lshr i32 %273, 3
  br label %275

275:                                              ; preds = %267, %264
  %276 = phi i32 [ %274, %267 ], [ %266, %264 ]
  %277 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 4
  store i32 %276, ptr %277, align 4
  %278 = getelementptr inbounds %struct.uvc_streaming_control, ptr %2, i32 0, i32 9
  %279 = load i32, ptr %278, align 1
  %280 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5
  store i32 %279, ptr %280, align 4
  %281 = load i32, ptr %262, align 4
  store i32 %281, ptr %12, align 4
  %282 = getelementptr inbounds %struct.uvc_format, ptr %222, i32 0, i32 3
  %283 = load i32, ptr %282, align 4
  %284 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %283, ptr %284, align 4
  %285 = getelementptr inbounds %struct.uvc_format, ptr %222, i32 0, i32 4
  %286 = load i32, ptr %285, align 4
  %287 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 %286, ptr %287, align 4
  %288 = getelementptr inbounds %struct.uvc_format, ptr %222, i32 0, i32 5
  %289 = load i32, ptr %288, align 4
  %290 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 %289, ptr %290, align 4
  %291 = icmp eq ptr %3, null
  br i1 %291, label %293, label %292

292:                                              ; preds = %275
  store ptr %222, ptr %3, align 4
  br label %293

293:                                              ; preds = %292, %275
  %294 = icmp eq ptr %4, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %293
  store ptr %254, ptr %4, align 4
  br label %296

296:                                              ; preds = %295, %293, %186, %103, %99, %5
  %297 = phi i32 [ -22, %5 ], [ -22, %103 ], [ -22, %99 ], [ %187, %293 ], [ %187, %295 ], [ %187, %186 ]
  ret i32 %297
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_allocated(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_probe_video(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_request_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_query_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_export_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_dequeue_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_create_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_streamon(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_query_ctrl(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_query_v4l2_ctrl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_is_accessible(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__uvc_ctrl_commit(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_ioctl_s_try_ext_ctrls(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uvc_fh, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %2, -1072146873
  br label %13

13:                                               ; preds = %19, %11
  %14 = phi i32 [ 0, %11 ], [ %21, %19 ]
  %15 = phi ptr [ %5, %11 ], [ %20, %19 ]
  %16 = load i32, ptr %15, align 1
  %17 = tail call i32 @uvc_ctrl_is_accessible(ptr noundef %7, i32 noundef %16, i1 noundef zeroext %12) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = getelementptr %struct.v4l2_ext_control, ptr %15, i32 1
  %21 = add nuw i32 %14, 1
  %22 = load i32, ptr %8, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %13, label %24

24:                                               ; preds = %19, %13, %3
  %25 = phi i32 [ 0, %3 ], [ %21, %19 ], [ %14, %13 ]
  %26 = phi i32 [ 0, %3 ], [ 0, %19 ], [ %17, %13 ]
  %27 = icmp eq i32 %2, -1072146871
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %8, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %29, %28 ], [ %25, %24 ]
  %32 = getelementptr inbounds %struct.v4l2_ext_controls, ptr %1, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = icmp slt i32 %26, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @uvc_ctrl_begin(ptr noundef %7) #10
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %52, %37
  %41 = phi i32 [ %54, %52 ], [ 0, %37 ]
  %42 = phi ptr [ %53, %52 ], [ %5, %37 ]
  %43 = tail call i32 @uvc_ctrl_set(ptr noundef %0, ptr noundef %42) #10
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = tail call i32 @__uvc_ctrl_commit(ptr noundef %0, i32 noundef 1, ptr noundef null) #10
  %47 = icmp eq i32 %2, -1072146872
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, ptr %8, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %49, %48 ], [ %41, %45 ]
  store i32 %51, ptr %32, align 4
  br label %63

52:                                               ; preds = %40
  %53 = getelementptr %struct.v4l2_ext_control, ptr %42, i32 1
  %54 = add nuw i32 %41, 1
  %55 = load i32, ptr %8, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %40, label %57

57:                                               ; preds = %52, %37
  store i32 0, ptr %32, align 4
  %58 = icmp eq i32 %2, -1072146872
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = tail call i32 @__uvc_ctrl_commit(ptr noundef %0, i32 noundef 0, ptr noundef %1) #10
  br label %63

61:                                               ; preds = %57
  %62 = tail call i32 @__uvc_ctrl_commit(ptr noundef %0, i32 noundef 1, ptr noundef null) #10
  br label %63

63:                                               ; preds = %61, %59, %50, %34, %30
  %64 = phi i32 [ %43, %50 ], [ %60, %59 ], [ %62, %61 ], [ %26, %30 ], [ %35, %34 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_query_v4l2_menu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_simplify_fraction(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_fraction_to_interval(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_xu_ctrl_query(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_add_mapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_queue_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_status_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_queue_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_status_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!8 = !{i64 2148069993}
!9 = !{i64 470785, i64 2147960756, i64 2147960782, i64 2147960829, i64 2147960851, i64 2147960879, i64 2147960899}
!10 = !{i64 2147972855, i64 2147972887, i64 2147972916, i64 2147972950, i64 2147972981, i64 2147973004}
!11 = !{i64 2148070196}
!12 = !{i64 2147974528, i64 2147974554, i64 2147974583, i64 2147974617, i64 2147974648, i64 2147974671}
!13 = !{!"auto-init"}
