; ModuleID = '/llk/IR/drivers/media/usb/uvc/uvc_video.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_video.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.uvc_streaming_control = type <{ i16, i8, i8, i32, i16, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8 }>
%struct.uvc_streaming = type { %struct.list_head, ptr, %struct.video_device, ptr, %struct.atomic_t, ptr, i32, i16, %struct.uvc_streaming_header, i32, i32, ptr, %struct.uvc_streaming_control, ptr, ptr, ptr, %struct.mutex, i8, %struct.uvc_video_queue, ptr, ptr, %struct.anon.86, %struct.anon.87, [5 x %struct.uvc_urb], i32, i32, i8, ptr, %struct.anon.88, %struct.uvc_clock }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.uvc_streaming_header = type { i8, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.uvc_video_queue = type { %struct.vb2_queue, %struct.mutex, i32, i32, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.anon.86 = type { %struct.video_device, %struct.uvc_video_queue, i32 }
%struct.anon.87 = type { [256 x i8], i32, i32, i32, i32 }
%struct.uvc_urb = type { ptr, ptr, ptr, i32, ptr, i32, [32 x %struct.uvc_copy_op], %struct.work_struct }
%struct.uvc_copy_op = type { ptr, ptr, ptr, i32 }
%struct.anon.88 = type { %struct.uvc_stats_frame, %struct.uvc_stats_stream }
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.uvc_format = type { i8, i8, i8, i32, i32, i32, i32, i32, [32 x i8], i32, ptr }
%struct.uvc_frame = type { i8, i8, i16, i16, i32, i32, i32, i8, i32, ptr }
%struct.uvc_clock_sample = type { i32, i16, i16, i64 }
%struct.uvc_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.kref }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.72, i32 }
%union.anon.72 = type { i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.uvc_meta_buf = type <{ i64, i16, i8, i8, [0 x i8] }>

@.str = private unnamed_addr constant [63 x i8] c"Failed to query (%s) UVC control %u on unit %u: %d (exp. %u).\0A\00", align 1
@uvc_dbg_param = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Control error %u\0A\00", align 1
@uvc_hw_timestamps_param = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [80 x i8] c"%s: PTS %u y %llu.%06llu SOF %u.%06llu (x1 %u x2 %u y1 %u y2 %u SOF offset %u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"%s: SOF %u.%06llu y %llu ts %llu buf ts %llu (x1 %u/%u/%u x2 %u/%u/%u y1 %u y2 %u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"frames:  %u\0Apackets: %u\0Aempty:   %u\0Aerrors:  %u\0Ainvalid: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"pts: %u early, %u initial, %u ok\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"scr: %u count ok, %u diff ok\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"sof: %u <= sof <= %u, freq %u.%03u kHz\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"No supported video formats found.\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"No frame descriptor found for the default format.\0A\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"Isochronous endpoints are not supported for video output devices.\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"SET_CUR\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"GET_CUR\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"GET_MIN\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"GET_MAX\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"GET_RES\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"GET_LEN\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"GET_INFO\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"GET_DEF\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@uvc_timeout_param = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [46 x i8] c"Failed to set UVC %s control : %d (exp. %u).\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"probe\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.24 = private unnamed_addr constant [85 x i8] c"UVC non compliance - GET_MIN/MAX(PROBE) incorrectly supported. Enabling workaround.\0A\00", align 1
@.str.25 = private unnamed_addr constant [73 x i8] c"UVC non compliance - GET_DEF(PROBE) not supported. Enabling workaround.\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"Failed to query (%u) UVC %s control : %d (exp. %u).\0A\00", align 1
@uvc_fixup_video_ctrl.elgato_cam_link_4k = internal constant %struct.usb_device_id { i16 3, i16 4057, i16 102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, align 4
@.str.27 = private unnamed_addr constant [112 x i8] c"Correct USB video probe response from {bmHint: 0x%04x, bFormatIndex: %u} to {bmHint: 0x%04x, bFormatIndex: %u}\0A\00", align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"Device requested null bandwidth, defaulting to lowest\0A\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"Device requested %u B/frame bandwidth\0A\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"No fast enough alt setting for requested bandwidth\0A\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"Selecting alternate setting %u (%u B/frame bandwidth)\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Failed to submit URB %u (%d).\0A\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"Allocated %u URB buffers of %ux%u bytes each\0A\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"Failed to allocate URB buffers (%u bytes per packet)\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"Non-zero status (%d) in video completion handler.\0A\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"Failed to resubmit video URB (%d).\0A\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"USB isochronous frame lost (%d)\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"Marking buffer as bad (error bit set)\0A\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"Dropping payload (out of sync)\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"Frame complete (FID bit toggled)\0A\00", align 1
@.str.41 = private unnamed_addr constant [106 x i8] c"frame %u stats: %u/%u/%u packets, %u/%u/%u pts (%searly %sinitial), %u/%u scr, last pts/stc/sof %u/%u/%u\0A\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@uvc_clock_param = external dso_local local_unnamed_addr global i32, align 4
@.str.44 = private unnamed_addr constant [77 x i8] c"%s(): t-sys %lluns, SOF %u, len %u, flags 0x%x, PTS %u, STC %u frame SOF %u\0A\00", align 1
@__func__.uvc_video_decode_meta = private unnamed_addr constant [22 x i8] c"uvc_video_decode_meta\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Frame complete (overflow)\0A\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"Frame complete (EOF found)\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"EOF in empty payload\0A\00", align 1
@switch.table.uvc_query_ctrl = private unnamed_addr constant [8 x i32] [i32 -16, i32 -84, i32 -66, i32 -34, i32 -5, i32 -5, i32 -5, i32 -22], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_query_ctrl(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, i16 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = icmp sgt i8 %1, -1
  %9 = load ptr, ptr %0, align 8
  %10 = load i32, ptr %9, align 8
  %11 = shl i32 %10, 8
  %12 = select i1 %8, i32 -2147483648, i32 -2147483520
  %13 = or i32 %11, %12
  %14 = and i8 %1, -128
  %15 = or i8 %14, 33
  %16 = zext i8 %4 to i16
  %17 = shl nuw i16 %16, 8
  %18 = zext i8 %2 to i16
  %19 = shl nuw i16 %18, 8
  %20 = zext i8 %3 to i16
  %21 = or i16 %19, %20
  %22 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %13, i8 noundef zeroext %1, i8 noundef zeroext %15, i16 noundef zeroext %17, i16 noundef zeroext %21, ptr noundef %5, i16 noundef zeroext %6, i32 noundef 5000) #11
  %23 = zext i16 %6 to i32
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %59, label %25, !prof !8

25:                                               ; preds = %7
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  %28 = tail call fastcc ptr @uvc_query_name(i8 noundef zeroext %1)
  %29 = zext i8 %4 to i32
  %30 = zext i8 %2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str, ptr noundef nonnull %28, i32 noundef %29, i32 noundef %30, i32 noundef %22, i32 noundef %23) #12
  %31 = icmp eq i32 %22, -32
  br i1 %31, label %32, label %59

32:                                               ; preds = %25
  %33 = load i8, ptr %5, align 1
  %34 = load ptr, ptr %0, align 8
  %35 = load i32, ptr %34, align 8
  %36 = shl i32 %35, 8
  %37 = or i32 %36, -2147483520
  %38 = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %37, i8 noundef zeroext -127, i8 noundef zeroext -95, i16 noundef zeroext 512, i16 noundef zeroext %20, ptr noundef %5, i16 noundef zeroext 1, i32 noundef 5000) #11
  %39 = load i8, ptr %5, align 1
  store i8 %33, ptr %5, align 1
  %40 = icmp eq i32 %38, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = icmp slt i32 %38, 0
  %43 = select i1 %42, i32 %38, i32 -32
  br label %59

44:                                               ; preds = %32
  %45 = load i32, ptr @uvc_dbg_param, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  %51 = zext i8 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %50, ptr noundef nonnull @.str.2, i32 noundef %51) #12
  br label %52

52:                                               ; preds = %48, %44
  %53 = add i8 %39, -1
  %54 = icmp ult i8 %53, 8
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = sext i8 %53 to i32
  %57 = getelementptr inbounds [8 x i32], ptr @switch.table.uvc_query_ctrl, i32 0, i32 %56
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %55, %52, %41, %25, %7
  %60 = phi i32 [ %43, %41 ], [ 0, %7 ], [ %22, %25 ], [ -32, %52 ], [ %58, %55 ]
  ret i32 %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @uvc_query_name(i8 noundef zeroext %0) unnamed_addr #3 {
  switch i8 %0, label %9 [
    i8 1, label %10
    i8 -127, label %2
    i8 -126, label %3
    i8 -125, label %4
    i8 -124, label %5
    i8 -123, label %6
    i8 -122, label %7
    i8 -121, label %8
  ]

2:                                                ; preds = %1
  br label %10

3:                                                ; preds = %1
  br label %10

4:                                                ; preds = %1
  br label %10

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  br label %10

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %4, %3, %2, %1
  %11 = phi ptr [ @.str.20, %9 ], [ @.str.19, %8 ], [ @.str.18, %7 ], [ @.str.17, %6 ], [ @.str.16, %5 ], [ @.str.15, %4 ], [ @.str.14, %3 ], [ @.str.13, %2 ], [ @.str.12, %1 ]
  ret ptr %11
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_probe_video(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.uvc_streaming_control, align 1
  %4 = alloca %struct.uvc_streaming_control, align 1
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(34) %3, i8 0, i32 34, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(34) %4, i8 0, i32 34, i1 false), !annotation !9
  %5 = tail call fastcc i32 @uvc_set_video_ctrl(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %90, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %7
  %15 = call fastcc i32 @uvc_get_video_ctrl(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext -126)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %90, label %17

17:                                               ; preds = %14
  %18 = call fastcc i32 @uvc_get_video_ctrl(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext -125)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %90, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.uvc_streaming_control, ptr %4, i32 0, i32 6
  %22 = load i16, ptr %21, align 1
  %23 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 6
  store i16 %22, ptr %23, align 1
  br label %24

24:                                               ; preds = %20, %7
  %25 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 5
  %26 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 10
  %27 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 7
  %28 = getelementptr inbounds %struct.uvc_streaming_control, ptr %3, i32 0, i32 4
  %29 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 4
  %30 = getelementptr inbounds %struct.uvc_streaming_control, ptr %3, i32 0, i32 5
  %31 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 5
  %32 = getelementptr inbounds %struct.uvc_streaming_control, ptr %4, i32 0, i32 6
  %33 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 6
  %34 = getelementptr inbounds %struct.uvc_streaming_control, ptr %3, i32 0, i32 7
  %35 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 7
  %36 = call fastcc i32 @uvc_set_video_ctrl(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %90, label %38

38:                                               ; preds = %24
  %39 = call fastcc i32 @uvc_get_video_ctrl(ptr noundef %0, ptr noundef %1, i8 noundef zeroext -127)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %90, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %25, align 8
  %43 = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %90, label %46

46:                                               ; preds = %41
  %47 = load i32, ptr %26, align 1
  %48 = and i32 %47, 65535
  %49 = load i16, ptr %27, align 8
  %50 = zext i16 %49 to i32
  %51 = icmp ugt i32 %48, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %46
  %53 = load ptr, ptr %8, align 8
  %54 = getelementptr inbounds %struct.uvc_device, ptr %53, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %52
  %59 = load i16, ptr %28, align 1
  store i16 %59, ptr %29, align 1
  %60 = load i16, ptr %30, align 1
  store i16 %60, ptr %31, align 1
  %61 = load i16, ptr %32, align 1
  store i16 %61, ptr %33, align 1
  %62 = load i16, ptr %34, align 1
  store i16 %62, ptr %35, align 1
  %63 = call fastcc i32 @uvc_set_video_ctrl(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %90, label %65

65:                                               ; preds = %58
  %66 = call fastcc i32 @uvc_get_video_ctrl(ptr noundef %0, ptr noundef %1, i8 noundef zeroext -127)
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %90, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %25, align 8
  %70 = getelementptr inbounds %struct.usb_interface, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %90, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr %26, align 1
  %75 = and i32 %74, 65535
  %76 = load i16, ptr %27, align 8
  %77 = zext i16 %76 to i32
  %78 = icmp ugt i32 %75, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %73
  %80 = load ptr, ptr %8, align 8
  %81 = getelementptr inbounds %struct.uvc_device, ptr %80, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i16, ptr %28, align 1
  store i16 %86, ptr %29, align 1
  %87 = load i16, ptr %30, align 1
  store i16 %87, ptr %31, align 1
  %88 = load i16, ptr %32, align 1
  store i16 %88, ptr %33, align 1
  %89 = load i16, ptr %34, align 1
  store i16 %89, ptr %35, align 1
  br label %90

90:                                               ; preds = %85, %79, %73, %68, %65, %58, %52, %46, %41, %38, %24, %17, %14, %2
  %91 = phi i32 [ %5, %2 ], [ %15, %14 ], [ %18, %17 ], [ %36, %24 ], [ %39, %38 ], [ 0, %41 ], [ 0, %46 ], [ -28, %52 ], [ %63, %58 ], [ %66, %65 ], [ 0, %68 ], [ 0, %73 ], [ -28, %79 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #11
  ret i32 %91
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_set_video_ctrl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 12
  %7 = load i16, ptr %6, align 8
  %8 = icmp ult i16 %7, 272
  %9 = icmp ult i16 %7, 336
  %10 = select i1 %9, i32 34, i32 48
  %11 = select i1 %8, i32 26, i32 %10
  %12 = trunc i32 %11 to i16
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %86, label %15

15:                                               ; preds = %3
  %16 = load i16, ptr %1, align 1
  store i16 %16, ptr %13, align 64
  %17 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr i8, ptr %13, i32 2
  store i8 %18, ptr %19, align 2
  %20 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr i8, ptr %13, i32 3
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 1
  %25 = getelementptr i8, ptr %13, i32 4
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 4
  %27 = load i16, ptr %26, align 1
  %28 = getelementptr i8, ptr %13, i32 8
  store i16 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 5
  %30 = load i16, ptr %29, align 1
  %31 = getelementptr i8, ptr %13, i32 10
  store i16 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 6
  %33 = load i16, ptr %32, align 1
  %34 = getelementptr i8, ptr %13, i32 12
  store i16 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 7
  %36 = load i16, ptr %35, align 1
  %37 = getelementptr i8, ptr %13, i32 14
  store i16 %36, ptr %37, align 2
  %38 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 8
  %39 = load i16, ptr %38, align 1
  %40 = getelementptr i8, ptr %13, i32 16
  store i16 %39, ptr %40, align 16
  %41 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 9
  %42 = load i32, ptr %41, align 1
  %43 = getelementptr i8, ptr %13, i32 18
  store i32 %42, ptr %43, align 2
  %44 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 10
  %45 = load i32, ptr %44, align 1
  %46 = getelementptr i8, ptr %13, i32 22
  store i32 %45, ptr %46, align 2
  %47 = icmp ugt i32 %11, 33
  br i1 %47, label %48, label %64

48:                                               ; preds = %15
  %49 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 11
  %50 = load i32, ptr %49, align 1
  %51 = getelementptr i8, ptr %13, i32 26
  store i32 %50, ptr %51, align 2
  %52 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 12
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr i8, ptr %13, i32 30
  store i8 %53, ptr %54, align 2
  %55 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 13
  %56 = load i8, ptr %55, align 1
  %57 = getelementptr i8, ptr %13, i32 31
  store i8 %56, ptr %57, align 1
  %58 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 14
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr i8, ptr %13, i32 32
  store i8 %59, ptr %60, align 32
  %61 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 15
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr i8, ptr %13, i32 33
  store i8 %62, ptr %63, align 1
  br label %64

64:                                               ; preds = %48, %15
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %2, 0
  %69 = load i32, ptr @uvc_timeout_param, align 4
  %70 = load ptr, ptr %65, align 8
  %71 = load i32, ptr %70, align 8
  %72 = shl i32 %71, 8
  %73 = or i32 %72, -2147483648
  %74 = select i1 %68, i16 512, i16 256
  %75 = trunc i32 %67 to i16
  %76 = and i16 %75, 255
  %77 = tail call i32 @usb_control_msg(ptr noundef %70, i32 noundef %73, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext %74, i16 noundef zeroext %76, ptr noundef nonnull %13, i16 noundef zeroext %12, i32 noundef %69) #11
  %78 = icmp eq i32 %77, %11
  br i1 %78, label %84, label %79

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 5
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.usb_interface, ptr %81, i32 0, i32 7
  %83 = select i1 %68, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.21, ptr noundef nonnull %83, i32 noundef %77, i32 noundef %11) #12
  br label %84

84:                                               ; preds = %79, %64
  %85 = phi i32 [ -5, %79 ], [ %11, %64 ]
  tail call void @kfree(ptr noundef nonnull %13) #11
  br label %86

86:                                               ; preds = %84, %3
  %87 = phi i32 [ %85, %84 ], [ -12, %3 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_get_video_ctrl(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 12
  %7 = load i16, ptr %6, align 8
  %8 = icmp ult i16 %7, 272
  %9 = icmp ult i16 %7, 336
  %10 = select i1 %9, i32 34, i32 48
  %11 = select i1 %8, i32 26, i32 %10
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp ne i32 %15, 0
  %17 = zext i8 %2 to i32
  %18 = icmp eq i8 %2, -121
  %19 = and i1 %18, %16
  br i1 %19, label %262, label %20

20:                                               ; preds = %3
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %262, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr @uvc_timeout_param, align 4
  %28 = icmp sgt i8 %2, -1
  %29 = load ptr, ptr %24, align 8
  %30 = load i32, ptr %29, align 8
  %31 = shl i32 %30, 8
  %32 = select i1 %28, i32 -2147483648, i32 -2147483520
  %33 = or i32 %31, %32
  %34 = and i8 %2, -128
  %35 = or i8 %34, 33
  %36 = trunc i32 %26 to i16
  %37 = and i16 %36, 255
  %38 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %33, i8 noundef zeroext %2, i8 noundef zeroext %35, i16 noundef zeroext 256, i16 noundef zeroext %37, ptr noundef nonnull %21, i16 noundef zeroext %12, i32 noundef %27) #11
  %39 = and i8 %2, -2
  %40 = icmp eq i8 %39, -126
  %41 = icmp eq i32 %38, 2
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %55

43:                                               ; preds = %23
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds %struct.uvc_device, ptr %44, i32 0, i32 2
  %46 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %45) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 8
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.24) #12
  br label %52

52:                                               ; preds = %48, %43
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(34) %1, i8 0, i32 34, i1 false)
  %53 = load i16, ptr %21, align 64
  %54 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 6
  store i16 %53, ptr %54, align 1
  br label %260

55:                                               ; preds = %23
  %56 = xor i1 %18, true
  %57 = icmp eq i32 %38, %11
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %4, align 8
  %61 = getelementptr inbounds %struct.uvc_device, ptr %60, i32 0, i32 2
  %62 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %61) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %260

64:                                               ; preds = %59
  %65 = load ptr, ptr %4, align 8
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.25) #12
  br label %260

68:                                               ; preds = %55
  br i1 %57, label %73, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 5
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.usb_interface, ptr %71, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.26, i32 noundef %17, ptr noundef nonnull @.str.22, i32 noundef %38, i32 noundef %11) #12
  br label %260

73:                                               ; preds = %68
  %74 = load i16, ptr %21, align 64
  store i16 %74, ptr %1, align 1
  %75 = getelementptr i8, ptr %21, i32 2
  %76 = load i8, ptr %75, align 2
  %77 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 1
  store i8 %76, ptr %77, align 1
  %78 = getelementptr i8, ptr %21, i32 3
  %79 = load i8, ptr %78, align 1
  %80 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 2
  store i8 %79, ptr %80, align 1
  %81 = getelementptr i8, ptr %21, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 3
  store i32 %82, ptr %83, align 1
  %84 = getelementptr i8, ptr %21, i32 8
  %85 = load i16, ptr %84, align 8
  %86 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 4
  store i16 %85, ptr %86, align 1
  %87 = getelementptr i8, ptr %21, i32 10
  %88 = load i16, ptr %87, align 2
  %89 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 5
  store i16 %88, ptr %89, align 1
  %90 = getelementptr i8, ptr %21, i32 12
  %91 = load i16, ptr %90, align 4
  %92 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 6
  store i16 %91, ptr %92, align 1
  %93 = getelementptr i8, ptr %21, i32 14
  %94 = load i16, ptr %93, align 2
  %95 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 7
  store i16 %94, ptr %95, align 1
  %96 = getelementptr i8, ptr %21, i32 16
  %97 = load i16, ptr %96, align 16
  %98 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 8
  store i16 %97, ptr %98, align 1
  %99 = getelementptr i8, ptr %21, i32 18
  %100 = load i32, ptr %99, align 2
  %101 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 9
  store i32 %100, ptr %101, align 1
  %102 = getelementptr i8, ptr %21, i32 22
  %103 = load i32, ptr %102, align 2
  %104 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 10
  store i32 %103, ptr %104, align 1
  %105 = icmp ugt i32 %11, 33
  br i1 %105, label %106, label %116

106:                                              ; preds = %73
  %107 = getelementptr i8, ptr %21, i32 26
  %108 = getelementptr i8, ptr %21, i32 30
  %109 = load i8, ptr %108, align 2
  %110 = getelementptr i8, ptr %21, i32 31
  %111 = load i8, ptr %110, align 1
  %112 = getelementptr i8, ptr %21, i32 32
  %113 = load i8, ptr %112, align 32
  %114 = getelementptr i8, ptr %21, i32 33
  %115 = load i8, ptr %114, align 1
  br label %119

116:                                              ; preds = %73
  %117 = load ptr, ptr %4, align 8
  %118 = getelementptr inbounds %struct.uvc_device, ptr %117, i32 0, i32 13
  br label %119

119:                                              ; preds = %116, %106
  %120 = phi ptr [ %107, %106 ], [ %118, %116 ]
  %121 = phi i8 [ %109, %106 ], [ 0, %116 ]
  %122 = phi i8 [ %111, %106 ], [ 0, %116 ]
  %123 = phi i8 [ %113, %106 ], [ 0, %116 ]
  %124 = phi i8 [ %115, %106 ], [ 0, %116 ]
  %125 = load i32, ptr %120, align 2
  %126 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 11
  store i32 %125, ptr %126, align 1
  %127 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 12
  store i8 %121, ptr %127, align 1
  %128 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 13
  store i8 %122, ptr %128, align 1
  %129 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 14
  store i8 %123, ptr %129, align 1
  %130 = getelementptr inbounds %struct.uvc_streaming_control, ptr %1, i32 0, i32 15
  store i8 %124, ptr %130, align 1
  %131 = load ptr, ptr %4, align 8
  %132 = getelementptr inbounds %struct.uvc_device, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = tail call i32 @usb_match_one_id(ptr noundef %133, ptr noundef nonnull @uvc_fixup_video_ctrl.elgato_cam_link_4k) #11
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %154, label %136

136:                                              ; preds = %119
  %137 = load i16, ptr %1, align 1
  %138 = zext i16 %137 to i32
  %139 = icmp ugt i16 %137, 255
  br i1 %139, label %140, label %154

140:                                              ; preds = %136
  %141 = lshr i16 %137, 8
  %142 = trunc i16 %141 to i8
  %143 = load i32, ptr @uvc_dbg_param, align 4
  %144 = and i32 %143, 1024
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %140
  %147 = load ptr, ptr %4, align 8
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %struct.usb_device, ptr %148, i32 0, i32 15
  %150 = load i8, ptr %77, align 1
  %151 = zext i8 %150 to i32
  %152 = zext i16 %141 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %149, ptr noundef nonnull @.str.27, i32 noundef %138, i32 noundef %151, i32 noundef 1, i32 noundef %152) #12
  br label %153

153:                                              ; preds = %146, %140
  store i16 1, ptr %1, align 1
  store i8 %142, ptr %77, align 1
  br label %154

154:                                              ; preds = %153, %136, %119
  %155 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 10
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %260, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 11
  %160 = load ptr, ptr %159, align 8
  %161 = load i8, ptr %77, align 1
  br label %162

162:                                              ; preds = %167, %158
  %163 = phi i32 [ 0, %158 ], [ %168, %167 ]
  %164 = getelementptr %struct.uvc_format, ptr %160, i32 %163, i32 1
  %165 = load i8, ptr %164, align 1
  %166 = icmp eq i8 %165, %161
  br i1 %166, label %170, label %167

167:                                              ; preds = %162
  %168 = add nuw i32 %163, 1
  %169 = icmp eq i32 %168, %156
  br i1 %169, label %260, label %162

170:                                              ; preds = %162
  %171 = getelementptr %struct.uvc_format, ptr %160, i32 %163
  %172 = icmp eq ptr %171, null
  br i1 %172, label %260, label %173

173:                                              ; preds = %170
  %174 = getelementptr %struct.uvc_format, ptr %160, i32 %163, i32 9
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %260, label %177

177:                                              ; preds = %173
  %178 = getelementptr %struct.uvc_format, ptr %160, i32 %163, i32 10
  %179 = load ptr, ptr %178, align 4
  %180 = load i8, ptr %80, align 1
  br label %181

181:                                              ; preds = %186, %177
  %182 = phi i32 [ 0, %177 ], [ %187, %186 ]
  %183 = getelementptr %struct.uvc_frame, ptr %179, i32 %182
  %184 = load i8, ptr %183, align 4
  %185 = icmp eq i8 %184, %180
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = add nuw i32 %182, 1
  %188 = icmp eq i32 %187, %175
  br i1 %188, label %260, label %181

189:                                              ; preds = %181
  %190 = icmp eq ptr %183, null
  br i1 %190, label %260, label %191

191:                                              ; preds = %189
  %192 = getelementptr %struct.uvc_format, ptr %160, i32 %163, i32 7
  %193 = load i32, ptr %192, align 4
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %204, label %196

196:                                              ; preds = %191
  %197 = load i32, ptr %101, align 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load ptr, ptr %4, align 8
  %201 = getelementptr inbounds %struct.uvc_device, ptr %200, i32 0, i32 12
  %202 = load i16, ptr %201, align 8
  %203 = icmp ult i16 %202, 272
  br i1 %203, label %204, label %207

204:                                              ; preds = %199, %191
  %205 = getelementptr %struct.uvc_frame, ptr %179, i32 %182, i32 6
  %206 = load i32, ptr %205, align 4
  store i32 %206, ptr %101, align 1
  br label %207

207:                                              ; preds = %204, %199, %196
  %208 = load i32, ptr %104, align 1
  %209 = icmp ugt i32 %208, -65537
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = and i32 %208, 65535
  store i32 %211, ptr %104, align 1
  br label %212

212:                                              ; preds = %210, %207
  %213 = load i32, ptr %192, align 4
  %214 = and i32 %213, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %260

216:                                              ; preds = %212
  %217 = load ptr, ptr %4, align 8
  %218 = getelementptr inbounds %struct.uvc_device, ptr %217, i32 0, i32 3
  %219 = load i32, ptr %218, align 4
  %220 = and i32 %219, 128
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %260, label %222

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 5
  %224 = load ptr, ptr %223, align 8
  %225 = getelementptr inbounds %struct.usb_interface, ptr %224, i32 0, i32 2
  %226 = load i32, ptr %225, align 8
  %227 = icmp ugt i32 %226, 1
  br i1 %227, label %228, label %260

228:                                              ; preds = %222
  %229 = load i32, ptr %83, align 1
  %230 = icmp ugt i32 %229, 100000
  br i1 %230, label %235, label %231

231:                                              ; preds = %228
  %232 = getelementptr %struct.uvc_frame, ptr %179, i32 %182, i32 9
  %233 = load ptr, ptr %232, align 4
  %234 = load i32, ptr %233, align 4
  br label %235

235:                                              ; preds = %231, %228
  %236 = phi i32 [ %234, %231 ], [ %229, %228 ]
  %237 = getelementptr %struct.uvc_frame, ptr %179, i32 %182, i32 2
  %238 = load i16, ptr %237, align 2
  %239 = zext i16 %238 to i32
  %240 = getelementptr %struct.uvc_frame, ptr %179, i32 %182, i32 3
  %241 = load i16, ptr %240, align 4
  %242 = zext i16 %241 to i32
  %243 = mul nuw i32 %242, %239
  %244 = sdiv i32 %243, 8
  %245 = getelementptr %struct.uvc_format, ptr %160, i32 %163, i32 2
  %246 = load i8, ptr %245, align 2
  %247 = zext i8 %246 to i32
  %248 = mul i32 %244, %247
  %249 = udiv i32 10000000, %236
  %250 = add nuw nsw i32 %249, 1
  %251 = mul i32 %248, %250
  %252 = load ptr, ptr %217, align 8
  %253 = getelementptr inbounds %struct.usb_device, ptr %252, i32 0, i32 4
  %254 = load i32, ptr %253, align 4
  %255 = icmp eq i32 %254, 3
  %256 = select i1 %255, i32 8000, i32 1000
  %257 = udiv i32 %251, %256
  %258 = tail call i32 @llvm.umax.i32(i32 %257, i32 1012) #11
  %259 = add nuw nsw i32 %258, 12
  store i32 %259, ptr %104, align 1
  br label %260

260:                                              ; preds = %235, %222, %216, %212, %189, %186, %173, %170, %167, %154, %69, %64, %59, %52
  %261 = phi i32 [ 0, %52 ], [ -5, %69 ], [ -5, %64 ], [ -5, %59 ], [ 0, %154 ], [ 0, %170 ], [ 0, %173 ], [ 0, %189 ], [ 0, %212 ], [ 0, %216 ], [ 0, %222 ], [ 0, %235 ], [ 0, %186 ], [ 0, %167 ]
  tail call void @kfree(ptr noundef nonnull %21) #11
  br label %262

262:                                              ; preds = %260, %20, %3
  %263 = phi i32 [ %261, %260 ], [ -5, %3 ], [ -12, %20 ]
  ret i32 %263
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_video_clock_update(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29
  %5 = load i32, ptr @uvc_hw_timestamps_param, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %187, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %187, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 7
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #11
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %186, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.uvc_clock_sample, ptr %19, i32 %21
  %23 = add i32 %21, -1
  %24 = urem i32 %23, %16
  %25 = getelementptr %struct.uvc_clock_sample, ptr %19, i32 %24
  %26 = getelementptr inbounds %struct.uvc_buffer, ptr %2, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, -2147483648
  %29 = load i32, ptr %22, align 8
  %30 = sub i32 %29, %28
  %31 = load i32, ptr %25, align 8
  %32 = sub i32 %31, %28
  %33 = icmp eq i32 %31, %29
  br i1 %33, label %186, label %34

34:                                               ; preds = %18
  %35 = getelementptr %struct.uvc_clock_sample, ptr %19, i32 %21, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = shl nuw i32 %37, 16
  %39 = add i32 %38, 134217728
  %40 = getelementptr %struct.uvc_clock_sample, ptr %19, i32 %24, i32 1
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = shl nuw i32 %42, 16
  %44 = add i32 %43, 134217728
  %45 = icmp ult i32 %44, %39
  %46 = add i32 %43, 268435456
  %47 = select i1 %45, i32 %46, i32 %44
  %48 = sub i32 %47, %39
  %49 = zext i32 %48 to i64
  %50 = shl nuw nsw i64 %49, 31
  %51 = zext i32 %39 to i64
  %52 = zext i32 %32 to i64
  %53 = mul nuw i64 %51, %52
  %54 = zext i32 %47 to i64
  %55 = zext i32 %30 to i64
  %56 = mul nuw i64 %54, %55
  %57 = sub i64 %53, %56
  %58 = add i64 %57, %50
  %59 = sub i32 %32, %30
  %60 = icmp ult i64 %58, 4294967296
  br i1 %60, label %61, label %65, !prof !8

61:                                               ; preds = %34
  %62 = trunc i64 %58 to i32
  %63 = udiv i32 %62, %59
  %64 = zext i32 %63 to i64
  br label %68

65:                                               ; preds = %34
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %59, i64 %58) #14, !srcloc !10
  %67 = extractvalue { i64, i64 } %66, 1
  br label %68

68:                                               ; preds = %65, %61
  %69 = phi i64 [ %64, %61 ], [ %67, %65 ]
  %70 = trunc i64 %69 to i32
  %71 = load i32, ptr @uvc_dbg_param, align 4
  %72 = and i32 %71, 4096
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.usb_device, ptr %77, i32 0, i32 15
  %79 = getelementptr inbounds %struct.uvc_device, ptr %76, i32 0, i32 5
  %80 = lshr i64 %69, 16
  %81 = and i64 %69, 65535
  %82 = mul nuw nsw i64 %81, 1000000
  %83 = lshr i64 %82, 16
  %84 = lshr i32 %70, 16
  %85 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 5
  %86 = load i16, ptr %85, align 2
  %87 = zext i16 %86 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %78, ptr noundef nonnull @.str.3, ptr noundef %79, i32 noundef %27, i64 noundef %80, i64 noundef %83, i32 noundef %84, i64 noundef %83, i32 noundef %30, i32 noundef %32, i32 noundef %39, i32 noundef %47, i32 noundef %87) #12
  %88 = load i16, ptr %35, align 4
  %89 = load i16, ptr %40, align 4
  br label %90

90:                                               ; preds = %74, %68
  %91 = phi i16 [ %89, %74 ], [ %41, %68 ]
  %92 = phi i16 [ %88, %74 ], [ %36, %68 ]
  %93 = getelementptr %struct.uvc_clock_sample, ptr %19, i32 %21, i32 2
  %94 = load i16, ptr %93, align 2
  %95 = sub i16 %94, %92
  %96 = zext i16 %95 to i32
  %97 = shl i32 %96, 24
  %98 = ashr exact i32 %97, 24
  %99 = trunc i32 %98 to i16
  %100 = add i16 %92, %99
  %101 = and i16 %100, 2047
  %102 = zext i16 %101 to i32
  %103 = shl nuw nsw i32 %102, 16
  %104 = or i32 %103, 134217728
  %105 = getelementptr %struct.uvc_clock_sample, ptr %19, i32 %24, i32 2
  %106 = load i16, ptr %105, align 2
  %107 = sub i16 %106, %91
  %108 = zext i16 %107 to i32
  %109 = shl i32 %108, 24
  %110 = ashr exact i32 %109, 24
  %111 = trunc i32 %110 to i16
  %112 = add i16 %91, %111
  %113 = and i16 %112, 2047
  %114 = zext i16 %113 to i32
  %115 = shl nuw nsw i32 %114, 16
  %116 = or i32 %115, 134217728
  %117 = icmp ult i32 %116, %104
  %118 = or i32 %115, 268435456
  %119 = select i1 %117, i32 %118, i32 %116
  %120 = icmp eq i32 %119, %104
  br i1 %120, label %186, label %121

121:                                              ; preds = %90
  %122 = getelementptr %struct.uvc_clock_sample, ptr %19, i32 %24, i32 3
  %123 = load i64, ptr %122, align 8
  %124 = getelementptr %struct.uvc_clock_sample, ptr %19, i32 %21, i32 3
  %125 = load i64, ptr %124, align 8
  %126 = sub i64 %123, %125
  %127 = trunc i64 %126 to i32
  %128 = add i32 %127, 1000000000
  %129 = add nuw nsw i32 %119, %104
  %130 = lshr exact i32 %129, 1
  %131 = add nsw i32 %130, -67108864
  %132 = icmp ugt i32 %131, %70
  br i1 %132, label %133, label %135

133:                                              ; preds = %121
  %134 = add i32 %70, 134217728
  br label %140

135:                                              ; preds = %121
  %136 = add nuw nsw i32 %130, 67108864
  %137 = icmp ult i32 %136, %70
  %138 = add i32 %70, -134217728
  %139 = select i1 %137, i32 %138, i32 %70
  br label %140

140:                                              ; preds = %135, %133
  %141 = phi i32 [ %134, %133 ], [ %139, %135 ]
  %142 = and i64 %126, 4294967295
  %143 = zext i32 %141 to i64
  %144 = mul nuw i64 %142, %143
  %145 = zext i32 %119 to i64
  %146 = mul nuw nsw i64 %145, 1000000000
  %147 = zext i32 %128 to i64
  %148 = zext i32 %104 to i64
  %149 = mul nuw nsw i64 %147, %148
  %150 = sub nsw i64 %146, %149
  %151 = add i64 %150, %144
  %152 = sub nsw i32 %119, %104
  %153 = icmp ult i64 %151, 4294967296
  br i1 %153, label %154, label %158, !prof !8

154:                                              ; preds = %140
  %155 = trunc i64 %151 to i32
  %156 = udiv i32 %155, %152
  %157 = zext i32 %156 to i64
  br label %161

158:                                              ; preds = %140
  %159 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %152, i64 %151) #14, !srcloc !10
  %160 = extractvalue { i64, i64 } %159, 1
  br label %161

161:                                              ; preds = %158, %154
  %162 = phi i64 [ %157, %154 ], [ %160, %158 ]
  %163 = add i64 %125, -1000000000
  %164 = add i64 %163, %162
  %165 = load i32, ptr @uvc_dbg_param, align 4
  %166 = and i32 %165, 4096
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %184, label %168

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %170 = load ptr, ptr %169, align 8
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr inbounds %struct.usb_device, ptr %171, i32 0, i32 15
  %173 = getelementptr inbounds %struct.uvc_device, ptr %170, i32 0, i32 5
  %174 = lshr i32 %141, 16
  %175 = and i64 %143, 65535
  %176 = mul nuw nsw i64 %175, 1000000
  %177 = lshr i64 %176, 16
  %178 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 5
  %179 = load i64, ptr %178, align 8
  %180 = zext i16 %94 to i32
  %181 = zext i16 %92 to i32
  %182 = zext i16 %106 to i32
  %183 = zext i16 %91 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %172, ptr noundef nonnull @.str.4, ptr noundef %173, i32 noundef %174, i64 noundef %177, i64 noundef %162, i64 noundef %164, i64 noundef %179, i32 noundef %104, i32 noundef %180, i32 noundef %181, i32 noundef %119, i32 noundef %182, i32 noundef %183, i32 noundef 1000000000, i32 noundef %128) #12
  br label %184

184:                                              ; preds = %168, %161
  %185 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 5
  store i64 %164, ptr %185, align 8
  br label %186

186:                                              ; preds = %184, %90, %18, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #11
  br label %187

187:                                              ; preds = %186, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_video_stats_dump(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1
  %5 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = load i64, ptr %4, align 8
  %8 = sub i64 %6, %7
  %9 = tail call i64 @llvm.abs.i64(i64 %8, i1 false) #11
  %10 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %9) #14, !srcloc !11
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %9, i64 %10, i32 0) #14, !srcloc !12
  %12 = extractvalue { i64, i32 } %11, 0
  %13 = lshr i64 %12, 18
  %14 = icmp slt i64 %8, 0
  %15 = sub nsw i64 0, %13
  %16 = select i1 %14, i64 %15, i64 %13
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 12
  %21 = load i32, ptr %20, align 8
  %22 = mul i32 %21, 1000
  %23 = udiv i32 %22, %17
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi i32 [ %23, %19 ], [ 0, %3 ]
  %26 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 4
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.5, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #11
  %37 = getelementptr i8, ptr %1, i32 %36
  %38 = sub i32 %2, %36
  %39 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 8
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %37, i32 noundef %38, ptr noundef nonnull @.str.6, i32 noundef %40, i32 noundef %42, i32 noundef %44) #11
  %46 = add i32 %45, %36
  %47 = getelementptr i8, ptr %1, i32 %46
  %48 = sub i32 %2, %46
  %49 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 10
  %50 = load i32, ptr %49, align 8
  %51 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 11
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %47, i32 noundef %48, ptr noundef nonnull @.str.7, i32 noundef %50, i32 noundef %52) #11
  %54 = add i32 %53, %46
  %55 = getelementptr i8, ptr %1, i32 %54
  %56 = sub i32 %2, %54
  %57 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 14
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 15
  %60 = load i32, ptr %59, align 4
  %61 = freeze i32 %25
  %62 = udiv i32 %61, 1000
  %63 = mul i32 %62, 1000
  %64 = sub i32 %61, %63
  %65 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %55, i32 noundef %56, ptr noundef nonnull @.str.8, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64) #11
  %66 = add i32 %65, %54
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_video_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 18, i32 0, i32 28
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 17
  %8 = load i8, ptr %7, align 8
  %9 = or i8 %8, 1
  store i8 %9, ptr %7, align 8
  %10 = tail call i64 @ktime_get() #11
  %11 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 1
  store i64 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 23
  %13 = getelementptr %struct.uvc_streaming, ptr %0, i32 0, i32 24
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 19
  %17 = load ptr, ptr %16, align 8
  tail call void @flush_workqueue(ptr noundef %17) #11
  br label %31

18:                                               ; preds = %18, %6
  %19 = phi ptr [ %21, %18 ], [ %12, %6 ]
  %20 = load ptr, ptr %19, align 4
  tail call void @usb_poison_urb(ptr noundef %20) #11
  %21 = getelementptr %struct.uvc_urb, ptr %19, i32 1
  %22 = icmp ult ptr %21, %13
  br i1 %22, label %18, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 19
  %25 = load ptr, ptr %24, align 8
  tail call void @flush_workqueue(ptr noundef %25) #11
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi ptr [ %29, %26 ], [ %12, %23 ]
  %28 = load ptr, ptr %27, align 4
  tail call void @usb_free_urb(ptr noundef %28) #11
  store ptr null, ptr %27, align 4
  %29 = getelementptr %struct.uvc_urb, ptr %27, i32 1
  %30 = icmp ult ptr %29, %13
  br i1 %30, label %26, label %31

31:                                               ; preds = %26, %15
  %32 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @usb_set_interface(ptr noundef %34, i32 noundef %36, i32 noundef 0) #11
  br label %38

38:                                               ; preds = %31, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uvc_video_stop_transfer(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @ktime_get() #11
  %4 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 1
  store i64 %3, ptr %4, align 8
  %5 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 23
  %6 = getelementptr %struct.uvc_streaming, ptr %0, i32 0, i32 24
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 8
  tail call void @flush_workqueue(ptr noundef %10) #11
  br label %24

11:                                               ; preds = %11, %2
  %12 = phi ptr [ %14, %11 ], [ %5, %2 ]
  %13 = load ptr, ptr %12, align 4
  tail call void @usb_poison_urb(ptr noundef %13) #11
  %14 = getelementptr %struct.uvc_urb, ptr %12, i32 1
  %15 = icmp ult ptr %14, %6
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 8
  tail call void @flush_workqueue(ptr noundef %18) #11
  br i1 %7, label %19, label %24

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %22, %19 ], [ %5, %16 ]
  %21 = load ptr, ptr %20, align 4
  tail call void @usb_free_urb(ptr noundef %21) #11
  store ptr null, ptr %20, align 4
  %22 = getelementptr %struct.uvc_urb, ptr %20, i32 1
  %23 = icmp ult ptr %22, %6
  br i1 %23, label %19, label %24

24:                                               ; preds = %19, %16, %8
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 12
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.usb_bus, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  br i1 %7, label %34, label %51

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 9
  br label %36

36:                                               ; preds = %48, %34
  %37 = phi ptr [ %5, %34 ], [ %49, %48 ]
  %38 = getelementptr inbounds %struct.uvc_urb, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  tail call void @dma_vunmap_noncontiguous(ptr noundef %33, ptr noundef nonnull %39) #11
  %42 = load i32, ptr %6, align 8
  %43 = getelementptr inbounds %struct.uvc_urb, ptr %37, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %35, align 8
  %46 = icmp eq i32 %45, 1
  %47 = select i1 %46, i32 2, i32 1
  tail call void @dma_free_noncontiguous(ptr noundef %33, i32 noundef %42, ptr noundef %44, i32 noundef %47) #11
  store ptr null, ptr %38, align 4
  store ptr null, ptr %43, align 4
  br label %48

48:                                               ; preds = %41, %36
  %49 = getelementptr %struct.uvc_urb, ptr %37, i32 1
  %50 = icmp ult ptr %49, %6
  br i1 %50, label %36, label %51

51:                                               ; preds = %48, %26
  store i32 0, ptr %6, align 8
  br label %52

52:                                               ; preds = %51, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_video_resume(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @usb_set_interface(ptr noundef %7, i32 noundef %9, i32 noundef 0) #11
  br label %11

11:                                               ; preds = %4, %2
  %12 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 17
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, -2
  store i8 %14, ptr %12, align 8
  %15 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 2
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 4
  store i16 -1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 5
  store i16 -1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 18, i32 0, i32 28
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 12
  %25 = tail call fastcc i32 @uvc_set_video_ctrl(ptr noundef %0, ptr noundef %24, i32 noundef 0) #11
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @uvc_video_start_transfer(ptr noundef %0, i32 noundef 3072)
  br label %29

29:                                               ; preds = %27, %23, %11
  %30 = phi i32 [ %28, %27 ], [ 0, %11 ], [ %25, %23 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_video_start_transfer(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 25
  store i32 -1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 26
  store i8 -1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 22, i32 1
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 22, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 22, i32 3
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(136) %10, i8 0, i32 136, i1 false) #11
  %11 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 14
  store i32 2048, ptr %11, align 8
  %12 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %15, label %202

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 12, i32 10
  %19 = load i32, ptr %18, align 2
  %20 = icmp eq i32 %19, 0
  %21 = load i32, ptr @uvc_dbg_param, align 4
  %22 = and i32 %21, 1024
  %23 = icmp eq i32 %22, 0
  br i1 %20, label %24, label %30

24:                                               ; preds = %15
  br i1 %23, label %36, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %29, ptr noundef nonnull @.str.28) #12
  br label %36

30:                                               ; preds = %15
  br i1 %23, label %36, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %35, ptr noundef nonnull @.str.29, i32 noundef %19) #12
  br label %36

36:                                               ; preds = %31, %30, %25, %24
  %37 = phi i32 [ %19, %31 ], [ %19, %30 ], [ 1, %25 ], [ 1, %24 ]
  %38 = load i32, ptr %12, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %96, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 8, i32 1
  %42 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  br label %43

43:                                               ; preds = %87, %40
  %44 = phi i32 [ 0, %40 ], [ %90, %87 ]
  %45 = phi i32 [ -1, %40 ], [ %89, %87 ]
  %46 = phi ptr [ null, %40 ], [ %88, %87 ]
  %47 = phi i32 [ 0, %40 ], [ %91, %87 ]
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr %struct.usb_host_interface, ptr %48, i32 %47
  %50 = load i8, ptr %41, align 1
  %51 = tail call ptr @uvc_find_endpoint(ptr noundef %49, i8 noundef zeroext %50) #11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %87, label %53

53:                                               ; preds = %43
  %54 = load ptr, ptr %42, align 8
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  switch i32 %57, label %73 [
    i32 5, label %58
    i32 6, label %58
    i32 3, label %61
    i32 4, label %69
  ]

58:                                               ; preds = %53, %53
  %59 = getelementptr inbounds %struct.usb_host_endpoint, ptr %51, i32 0, i32 1, i32 4
  %60 = load i16, ptr %59, align 1
  br label %77

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %51, i32 0, i32 4
  %63 = load i16, ptr %62, align 1
  %64 = and i16 %63, 2047
  %65 = lshr i16 %63, 11
  %66 = and i16 %65, 3
  %67 = add nuw nsw i16 %66, 1
  %68 = mul nuw nsw i16 %67, %64
  br label %77

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %51, i32 0, i32 4
  %71 = load i16, ptr %70, align 1
  %72 = and i16 %71, 2047
  br label %77

73:                                               ; preds = %53
  %74 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %51, i32 0, i32 4
  %75 = load i16, ptr %74, align 1
  %76 = and i16 %75, 2047
  br label %77

77:                                               ; preds = %73, %69, %61, %58
  %78 = phi i16 [ %76, %73 ], [ %72, %69 ], [ %68, %61 ], [ %60, %58 ]
  %79 = zext i16 %78 to i32
  %80 = icmp ugt i32 %37, %79
  %81 = icmp ult i32 %45, %79
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %49, i32 0, i32 3
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  br label %87

87:                                               ; preds = %83, %77, %43
  %88 = phi ptr [ %46, %43 ], [ %51, %83 ], [ %46, %77 ]
  %89 = phi i32 [ %45, %43 ], [ %79, %83 ], [ %45, %77 ]
  %90 = phi i32 [ %44, %43 ], [ %86, %83 ], [ %44, %77 ]
  %91 = add nuw i32 %47, 1
  %92 = load i32, ptr %12, align 8
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %43, label %94

94:                                               ; preds = %87
  %95 = icmp eq ptr %88, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %94, %36
  %97 = load i32, ptr @uvc_dbg_param, align 4
  %98 = and i32 %97, 1024
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %313, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %102 = load ptr, ptr %101, align 8
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.usb_device, ptr %103, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %104, ptr noundef nonnull @.str.30) #12
  br label %313

105:                                              ; preds = %94
  %106 = load i32, ptr @uvc_dbg_param, align 4
  %107 = and i32 %106, 1024
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %111 = load ptr, ptr %110, align 8
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.usb_device, ptr %112, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %113, ptr noundef nonnull @.str.31, i32 noundef %90, i32 noundef %89) #12
  br label %114

114:                                              ; preds = %109, %105
  %115 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %116 = load ptr, ptr %115, align 8
  %117 = load ptr, ptr %116, align 8
  %118 = tail call i32 @usb_set_interface(ptr noundef %117, i32 noundef %17, i32 noundef %90) #11
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %313, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %115, align 8
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr inbounds %struct.usb_device, ptr %122, i32 0, i32 4
  %124 = load i32, ptr %123, align 4
  switch i32 %124, label %140 [
    i32 5, label %125
    i32 6, label %125
    i32 3, label %128
    i32 4, label %136
  ]

125:                                              ; preds = %120, %120
  %126 = getelementptr inbounds %struct.usb_host_endpoint, ptr %88, i32 0, i32 1, i32 4
  %127 = load i16, ptr %126, align 1
  br label %144

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %88, i32 0, i32 4
  %130 = load i16, ptr %129, align 1
  %131 = and i16 %130, 2047
  %132 = lshr i16 %130, 11
  %133 = and i16 %132, 3
  %134 = add nuw nsw i16 %133, 1
  %135 = mul nuw nsw i16 %134, %131
  br label %144

136:                                              ; preds = %120
  %137 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %88, i32 0, i32 4
  %138 = load i16, ptr %137, align 1
  %139 = and i16 %138, 2047
  br label %144

140:                                              ; preds = %120
  %141 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %88, i32 0, i32 4
  %142 = load i16, ptr %141, align 1
  %143 = and i16 %142, 2047
  br label %144

144:                                              ; preds = %140, %136, %128, %125
  %145 = phi i16 [ %143, %140 ], [ %139, %136 ], [ %135, %128 ], [ %127, %125 ]
  %146 = zext i16 %145 to i32
  %147 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 12, i32 9
  %148 = load i32, ptr %147, align 2
  %149 = tail call fastcc i32 @uvc_alloc_urb_buffers(ptr noundef %0, i32 noundef %148, i32 noundef %146, i32 noundef %1) #11
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %313, label %151

151:                                              ; preds = %144
  %152 = mul i32 %149, %146
  %153 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 23
  %154 = getelementptr %struct.uvc_streaming, ptr %0, i32 0, i32 24
  %155 = icmp ult ptr %153, %154
  br i1 %155, label %156, label %264

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %88, i32 0, i32 2
  %158 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %88, i32 0, i32 5
  br label %159

159:                                              ; preds = %199, %156
  %160 = phi ptr [ %153, %156 ], [ %200, %199 ]
  %161 = tail call ptr @usb_alloc_urb(i32 noundef %149, i32 noundef %1) #11
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  tail call fastcc void @uvc_video_stop_transfer(ptr noundef %0, i32 noundef 1) #11
  br label %313

164:                                              ; preds = %159
  %165 = load ptr, ptr %115, align 8
  %166 = load ptr, ptr %165, align 8
  %167 = getelementptr inbounds %struct.urb, ptr %161, i32 0, i32 8
  store ptr %166, ptr %167, align 4
  %168 = getelementptr inbounds %struct.urb, ptr %161, i32 0, i32 27
  store ptr %160, ptr %168, align 4
  %169 = load ptr, ptr %115, align 8
  %170 = load ptr, ptr %169, align 8
  %171 = load i8, ptr %157, align 2
  %172 = zext i8 %171 to i32
  %173 = load i32, ptr %170, align 8
  %174 = shl i32 %173, 8
  %175 = shl nuw nsw i32 %172, 15
  %176 = or i32 %174, %175
  %177 = or i32 %176, 128
  %178 = getelementptr inbounds %struct.urb, ptr %161, i32 0, i32 10
  store i32 %177, ptr %178, align 4
  %179 = getelementptr inbounds %struct.urb, ptr %161, i32 0, i32 13
  store i32 6, ptr %179, align 4
  %180 = getelementptr inbounds %struct.uvc_urb, ptr %160, i32 0, i32 3
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.urb, ptr %161, i32 0, i32 15
  store i32 %181, ptr %182, align 4
  %183 = load i8, ptr %158, align 2
  %184 = zext i8 %183 to i32
  %185 = getelementptr inbounds %struct.urb, ptr %161, i32 0, i32 25
  store i32 %184, ptr %185, align 4
  %186 = getelementptr inbounds %struct.uvc_urb, ptr %160, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.urb, ptr %161, i32 0, i32 14
  store ptr %187, ptr %188, align 4
  %189 = getelementptr inbounds %struct.urb, ptr %161, i32 0, i32 28
  store ptr @uvc_video_complete, ptr %189, align 4
  %190 = getelementptr inbounds %struct.urb, ptr %161, i32 0, i32 24
  store i32 %149, ptr %190, align 4
  %191 = getelementptr inbounds %struct.urb, ptr %161, i32 0, i32 19
  store i32 %152, ptr %191, align 4
  br label %192

192:                                              ; preds = %192, %164
  %193 = phi i32 [ 0, %164 ], [ %197, %192 ]
  %194 = mul i32 %193, %146
  %195 = getelementptr %struct.urb, ptr %161, i32 0, i32 29, i32 %193
  store i32 %194, ptr %195, align 4
  %196 = getelementptr %struct.urb, ptr %161, i32 0, i32 29, i32 %193, i32 1
  store i32 %146, ptr %196, align 4
  %197 = add nuw i32 %193, 1
  %198 = icmp eq i32 %197, %149
  br i1 %198, label %199, label %192

199:                                              ; preds = %192
  store ptr %161, ptr %160, align 4
  %200 = getelementptr %struct.uvc_urb, ptr %160, i32 1
  %201 = icmp ult ptr %200, %154
  br i1 %201, label %159, label %264

202:                                              ; preds = %2
  %203 = load ptr, ptr %4, align 8
  %204 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 8, i32 1
  %205 = load i8, ptr %204, align 1
  %206 = tail call ptr @uvc_find_endpoint(ptr noundef %203, i8 noundef zeroext %205) #11
  %207 = icmp eq ptr %206, null
  br i1 %207, label %313, label %208

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %206, i32 0, i32 4
  %210 = load i16, ptr %209, align 1
  %211 = and i16 %210, 2047
  %212 = zext i16 %211 to i32
  %213 = icmp eq i16 %211, 0
  br i1 %213, label %313, label %214

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 12, i32 10
  %216 = load i32, ptr %215, align 2
  %217 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 22, i32 4
  store i32 %216, ptr %217, align 4
  %218 = tail call fastcc i32 @uvc_alloc_urb_buffers(ptr noundef %0, i32 noundef %216, i32 noundef %212, i32 noundef %1) #11
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %313, label %220

220:                                              ; preds = %214
  %221 = mul i32 %218, %212
  %222 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %206, i32 0, i32 2
  %223 = load i8, ptr %222, align 1
  %224 = icmp sgt i8 %223, -1
  %225 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %226 = load ptr, ptr %225, align 8
  %227 = load ptr, ptr %226, align 8
  %228 = zext i8 %223 to i32
  %229 = load i32, ptr %227, align 8
  %230 = shl i32 %229, 8
  %231 = shl nuw nsw i32 %228, 15
  %232 = select i1 %224, i32 -1073741824, i32 -1073741696
  %233 = or i32 %232, %231
  %234 = or i32 %233, %230
  %235 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 9
  %236 = load i32, ptr %235, align 8
  %237 = icmp eq i32 %236, 2
  %238 = select i1 %237, i32 0, i32 %221
  %239 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 23
  %240 = getelementptr %struct.uvc_streaming, ptr %0, i32 0, i32 24
  %241 = icmp ult ptr %239, %240
  br i1 %241, label %242, label %264

242:                                              ; preds = %247, %220
  %243 = phi ptr [ %262, %247 ], [ %239, %220 ]
  %244 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef %1) #11
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  tail call fastcc void @uvc_video_stop_transfer(ptr noundef %0, i32 noundef 1) #11
  br label %313

247:                                              ; preds = %242
  %248 = load ptr, ptr %225, align 8
  %249 = load ptr, ptr %248, align 8
  %250 = getelementptr inbounds %struct.uvc_urb, ptr %243, i32 0, i32 2
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr inbounds %struct.urb, ptr %244, i32 0, i32 8
  store ptr %249, ptr %252, align 4
  %253 = getelementptr inbounds %struct.urb, ptr %244, i32 0, i32 10
  store i32 %234, ptr %253, align 4
  %254 = getelementptr inbounds %struct.urb, ptr %244, i32 0, i32 14
  store ptr %251, ptr %254, align 4
  %255 = getelementptr inbounds %struct.urb, ptr %244, i32 0, i32 19
  store i32 %238, ptr %255, align 4
  %256 = getelementptr inbounds %struct.urb, ptr %244, i32 0, i32 28
  store ptr @uvc_video_complete, ptr %256, align 4
  %257 = getelementptr inbounds %struct.urb, ptr %244, i32 0, i32 27
  store ptr %243, ptr %257, align 4
  %258 = getelementptr inbounds %struct.urb, ptr %244, i32 0, i32 13
  store i32 4, ptr %258, align 4
  %259 = getelementptr inbounds %struct.uvc_urb, ptr %243, i32 0, i32 3
  %260 = load i32, ptr %259, align 4
  %261 = getelementptr inbounds %struct.urb, ptr %244, i32 0, i32 15
  store i32 %260, ptr %261, align 4
  store ptr %244, ptr %243, align 4
  %262 = getelementptr %struct.uvc_urb, ptr %243, i32 1
  %263 = icmp ult ptr %262, %240
  br i1 %263, label %242, label %264

264:                                              ; preds = %247, %220, %199, %151
  %265 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 23
  %266 = getelementptr %struct.uvc_streaming, ptr %0, i32 0, i32 24
  %267 = icmp ult ptr %265, %266
  br i1 %267, label %268, label %304

268:                                              ; preds = %301, %264
  %269 = phi ptr [ %302, %301 ], [ %265, %264 ]
  %270 = getelementptr inbounds %struct.uvc_urb, ptr %269, i32 0, i32 1
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.uvc_streaming, ptr %271, i32 0, i32 1
  %273 = load ptr, ptr %272, align 8
  %274 = load ptr, ptr %273, align 8
  %275 = getelementptr inbounds %struct.usb_device, ptr %274, i32 0, i32 12
  %276 = load ptr, ptr %275, align 8
  %277 = getelementptr inbounds %struct.usb_bus, ptr %276, i32 0, i32 1
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.uvc_urb, ptr %269, i32 0, i32 4
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.uvc_streaming, ptr %271, i32 0, i32 9
  %282 = load i32, ptr %281, align 8
  %283 = icmp eq i32 %282, 1
  %284 = select i1 %283, i32 2, i32 1
  %285 = load ptr, ptr %280, align 4
  %286 = getelementptr inbounds %struct.sg_table, ptr %280, i32 0, i32 2
  %287 = load i32, ptr %286, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %278, ptr noundef %285, i32 noundef %287, i32 noundef %284) #11
  %288 = load ptr, ptr %269, align 4
  %289 = tail call i32 @usb_submit_urb(ptr noundef %288, i32 noundef %1) #11
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %301

291:                                              ; preds = %268
  %292 = getelementptr inbounds %struct.uvc_urb, ptr %269, i32 0, i32 1
  %293 = load ptr, ptr %3, align 8
  %294 = getelementptr inbounds %struct.usb_interface, ptr %293, i32 0, i32 7
  %295 = load ptr, ptr %292, align 4
  %296 = getelementptr inbounds %struct.uvc_streaming, ptr %295, i32 0, i32 23
  %297 = ptrtoint ptr %269 to i32
  %298 = ptrtoint ptr %296 to i32
  %299 = sub i32 %297, %298
  %300 = sdiv exact i32 %299, 552
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %294, ptr noundef nonnull @.str.32, i32 noundef %300, i32 noundef %289) #12
  tail call fastcc void @uvc_video_stop_transfer(ptr noundef %0, i32 noundef 1)
  br label %313

301:                                              ; preds = %268
  %302 = getelementptr %struct.uvc_urb, ptr %269, i32 1
  %303 = icmp ult ptr %302, %266
  br i1 %303, label %268, label %304

304:                                              ; preds = %301, %264
  %305 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %306 = load ptr, ptr %305, align 8
  %307 = getelementptr inbounds %struct.uvc_device, ptr %306, i32 0, i32 3
  %308 = load i32, ptr %307, align 4
  %309 = and i32 %308, 1024
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %304
  %312 = tail call i32 @uvc_ctrl_restore_values(ptr noundef %306) #11
  br label %313

313:                                              ; preds = %311, %304, %291, %246, %214, %208, %202, %163, %144, %114, %100, %96
  %314 = phi i32 [ %289, %291 ], [ -5, %202 ], [ -5, %208 ], [ 0, %311 ], [ 0, %304 ], [ -5, %100 ], [ -5, %96 ], [ %118, %114 ], [ -12, %246 ], [ -12, %214 ], [ -12, %144 ], [ -12, %163 ]
  ret i32 %314
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_video_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 12
  %3 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %105, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 4
  store volatile i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @usb_set_interface(ptr noundef %10, i32 noundef %12, i32 noundef 0) #11
  %14 = tail call fastcc i32 @uvc_get_video_ctrl(ptr noundef %0, ptr noundef %2, i8 noundef zeroext -121)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = tail call fastcc i32 @uvc_set_video_ctrl(ptr noundef %0, ptr noundef %2, i32 noundef 1)
  br label %18

18:                                               ; preds = %16, %6
  %19 = tail call fastcc i32 @uvc_get_video_ctrl(ptr noundef %0, ptr noundef %2, i8 noundef zeroext -127)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %113, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 11
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 12, i32 1
  %28 = load i8, ptr %27, align 1
  br label %29

29:                                               ; preds = %29, %24
  %30 = phi i32 [ %22, %24 ], [ %31, %29 ]
  %31 = add i32 %30, -1
  %32 = getelementptr %struct.uvc_format, ptr %26, i32 %31, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, %28
  %35 = icmp eq i32 %31, 0
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %29

37:                                               ; preds = %29
  %38 = getelementptr %struct.uvc_format, ptr %26, i32 %31
  br label %39

39:                                               ; preds = %37, %21
  %40 = phi ptr [ null, %21 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.uvc_format, ptr %40, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %105, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.uvc_format, ptr %40, i32 0, i32 10
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 12, i32 2
  %48 = load i8, ptr %47, align 1
  br label %49

49:                                               ; preds = %49, %44
  %50 = phi i32 [ %42, %44 ], [ %51, %49 ]
  %51 = add i32 %50, -1
  %52 = getelementptr %struct.uvc_frame, ptr %46, i32 %51
  %53 = load i8, ptr %52, align 4
  %54 = icmp eq i8 %53, %48
  %55 = icmp eq i32 %51, 0
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %57, label %49

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.uvc_format, ptr %40, i32 0, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 12, i32 1
  store i8 %59, ptr %60, align 1
  %61 = load i8, ptr %52, align 4
  store i8 %61, ptr %47, align 1
  %62 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 13
  store ptr %40, ptr %62, align 8
  %63 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 14
  store ptr %40, ptr %63, align 4
  %64 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 15
  store ptr %52, ptr %64, align 8
  %65 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 9
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %85

68:                                               ; preds = %57
  %69 = load ptr, ptr %8, align 8
  %70 = getelementptr inbounds %struct.uvc_device, ptr %69, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 20
  store ptr @uvc_video_decode_isight, ptr %75, align 4
  br label %93

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 5
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.usb_interface, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = icmp ugt i32 %80, 1
  %82 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 20
  br i1 %81, label %83, label %84

83:                                               ; preds = %76
  store ptr @uvc_video_decode_isoc, ptr %82, align 4
  br label %93

84:                                               ; preds = %76
  store ptr @uvc_video_decode_bulk, ptr %82, align 4
  br label %93

85:                                               ; preds = %57
  %86 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 5
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.usb_interface, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %109

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 20
  store ptr @uvc_video_encode_bulk, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %84, %83, %74
  %94 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 23
  %95 = getelementptr %struct.uvc_streaming, ptr %0, i32 0, i32 24
  %96 = icmp ult ptr %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %97, %93
  %98 = phi ptr [ %103, %97 ], [ %94, %93 ]
  %99 = getelementptr inbounds %struct.uvc_urb, ptr %98, i32 0, i32 7
  store i32 -32, ptr %99, align 4
  %100 = getelementptr inbounds %struct.uvc_urb, ptr %98, i32 0, i32 7, i32 1
  store volatile ptr %100, ptr %100, align 4
  %101 = getelementptr inbounds %struct.uvc_urb, ptr %98, i32 0, i32 7, i32 1, i32 1
  store ptr %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.uvc_urb, ptr %98, i32 0, i32 7, i32 2
  store ptr @uvc_video_copy_data_work, ptr %102, align 4
  %103 = getelementptr %struct.uvc_urb, ptr %98, i32 1
  %104 = icmp ult ptr %103, %95
  br i1 %104, label %97, label %113

105:                                              ; preds = %39, %1
  %106 = phi ptr [ @.str.9, %1 ], [ @.str.10, %39 ]
  %107 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 5
  %108 = load ptr, ptr %107, align 8
  br label %109

109:                                              ; preds = %105, %85
  %110 = phi ptr [ %87, %85 ], [ %108, %105 ]
  %111 = phi ptr [ @.str.11, %85 ], [ %106, %105 ]
  %112 = getelementptr inbounds %struct.usb_interface, ptr %110, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %112, ptr noundef nonnull %111) #12
  br label %113

113:                                              ; preds = %109, %97, %93, %18
  %114 = phi i32 [ %19, %18 ], [ 0, %93 ], [ -22, %109 ], [ 0, %97 ]
  ret i32 %114
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_video_decode_isight(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_video_decode_isoc(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.uvc_urb, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %183

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 14
  %12 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 12, i32 9
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 14
  %14 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 21, i32 1
  %15 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 18
  %16 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 1
  %17 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 26
  br label %18

18:                                               ; preds = %177, %10
  %19 = phi i32 [ 0, %10 ], [ %180, %177 ]
  %20 = phi ptr [ %2, %10 ], [ %179, %177 ]
  %21 = phi ptr [ %1, %10 ], [ %178, %177 ]
  %22 = getelementptr %struct.urb, ptr %4, i32 0, i32 29, i32 %19, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load i32, ptr @uvc_dbg_param, align 4
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %16, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %32, ptr noundef nonnull @.str.37, i32 noundef %23) #12
  br label %33

33:                                               ; preds = %29, %25
  %34 = icmp eq ptr %21, null
  br i1 %34, label %177, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.uvc_buffer, ptr %21, i32 0, i32 3
  store i32 1, ptr %36, align 4
  br label %177

37:                                               ; preds = %18
  %38 = getelementptr %struct.urb, ptr %4, i32 0, i32 29, i32 %19
  %39 = load ptr, ptr %11, align 4
  %40 = load i32, ptr %38, align 4
  %41 = getelementptr i8, ptr %39, i32 %40
  %42 = getelementptr %struct.urb, ptr %4, i32 0, i32 29, i32 %19, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = tail call fastcc i32 @uvc_video_decode_start(ptr noundef %6, ptr noundef %21, ptr noundef %41, i32 noundef %43)
  %45 = icmp eq i32 %44, -11
  br i1 %45, label %46, label %88

46:                                               ; preds = %82, %37
  %47 = phi ptr [ %83, %82 ], [ %20, %37 ]
  %48 = phi ptr [ %84, %82 ], [ %21, %37 ]
  %49 = load i32, ptr %12, align 2
  %50 = getelementptr inbounds %struct.uvc_buffer, ptr %48, i32 0, i32 6
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr %13, align 4
  %55 = getelementptr inbounds %struct.uvc_format, ptr %54, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.uvc_buffer, ptr %48, i32 0, i32 3
  store i32 1, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %53, %46
  %62 = icmp eq ptr %47, null
  br i1 %62, label %82, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %48, i32 0, i32 4
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %47, i32 0, i32 4
  store i32 %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %48, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %47, i32 0, i32 2
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.vb2_buffer, ptr %48, i32 0, i32 5
  %71 = load i64, ptr %70, align 8
  %72 = getelementptr inbounds %struct.vb2_buffer, ptr %47, i32 0, i32 5
  store i64 %71, ptr %72, align 8
  %73 = getelementptr inbounds %struct.uvc_buffer, ptr %47, i32 0, i32 2
  store i32 3, ptr %73, align 8
  %74 = getelementptr inbounds %struct.uvc_buffer, ptr %47, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = getelementptr inbounds %struct.uvc_buffer, ptr %48, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  store i32 %79, ptr %74, align 4
  br label %80

80:                                               ; preds = %77, %63
  %81 = tail call ptr @uvc_queue_next_buffer(ptr noundef %14, ptr noundef nonnull %47) #11
  br label %82

82:                                               ; preds = %80, %61
  %83 = phi ptr [ null, %61 ], [ %81, %80 ]
  %84 = tail call ptr @uvc_queue_next_buffer(ptr noundef %15, ptr noundef %48) #11
  %85 = load i32, ptr %42, align 4
  %86 = tail call fastcc i32 @uvc_video_decode_start(ptr noundef %6, ptr noundef %84, ptr noundef %41, i32 noundef %85)
  %87 = icmp eq i32 %86, -11
  br i1 %87, label %46, label %88

88:                                               ; preds = %82, %37
  %89 = phi ptr [ %21, %37 ], [ %84, %82 ]
  %90 = phi ptr [ %20, %37 ], [ %83, %82 ]
  %91 = phi i32 [ %44, %37 ], [ %86, %82 ]
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %177, label %93

93:                                               ; preds = %88
  tail call fastcc void @uvc_video_decode_meta(ptr noundef %6, ptr noundef %90, ptr noundef %41, i32 noundef %91)
  %94 = getelementptr i8, ptr %41, i32 %91
  %95 = load i32, ptr %42, align 4
  %96 = sub i32 %95, %91
  tail call fastcc void @uvc_video_decode_data(ptr noundef %0, ptr noundef %89, ptr noundef %94, i32 noundef %96)
  %97 = load i32, ptr %42, align 4
  %98 = getelementptr i8, ptr %41, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, 2
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %136, label %102

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.uvc_buffer, ptr %89, i32 0, i32 6
  %104 = load i32, ptr %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %136, label %106

106:                                              ; preds = %102
  %107 = load i32, ptr @uvc_dbg_param, align 4
  %108 = and i32 %107, 128
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %16, align 8
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.usb_device, ptr %112, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %113, ptr noundef nonnull @.str.46) #12
  br label %114

114:                                              ; preds = %110, %106
  %115 = load i8, ptr %41, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %97, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i32, ptr @uvc_dbg_param, align 4
  %120 = and i32 %119, 128
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %16, align 8
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.usb_device, ptr %124, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %125, ptr noundef nonnull @.str.47) #12
  br label %126

126:                                              ; preds = %122, %118, %114
  %127 = getelementptr inbounds %struct.uvc_buffer, ptr %89, i32 0, i32 2
  store i32 3, ptr %127, align 8
  %128 = load ptr, ptr %16, align 8
  %129 = getelementptr inbounds %struct.uvc_device, ptr %128, i32 0, i32 3
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, 16
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %126
  %134 = load i8, ptr %17, align 8
  %135 = xor i8 %134, 1
  store i8 %135, ptr %17, align 8
  br label %136

136:                                              ; preds = %133, %126, %102, %93
  %137 = getelementptr inbounds %struct.uvc_buffer, ptr %89, i32 0, i32 2
  %138 = load i32, ptr %137, align 8
  %139 = icmp eq i32 %138, 3
  br i1 %139, label %140, label %177

140:                                              ; preds = %136
  %141 = load i32, ptr %12, align 2
  %142 = getelementptr inbounds %struct.uvc_buffer, ptr %89, i32 0, i32 6
  %143 = load i32, ptr %142, align 8
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %140
  %146 = load ptr, ptr %13, align 4
  %147 = getelementptr inbounds %struct.uvc_format, ptr %146, i32 0, i32 7
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.uvc_buffer, ptr %89, i32 0, i32 3
  store i32 1, ptr %152, align 4
  br label %153

153:                                              ; preds = %151, %145, %140
  %154 = icmp eq ptr %90, null
  br i1 %154, label %174, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %89, i32 0, i32 4
  %157 = load i32, ptr %156, align 8
  %158 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %90, i32 0, i32 4
  store i32 %157, ptr %158, align 8
  %159 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %89, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %90, i32 0, i32 2
  store i32 %160, ptr %161, align 4
  %162 = getelementptr inbounds %struct.vb2_buffer, ptr %89, i32 0, i32 5
  %163 = load i64, ptr %162, align 8
  %164 = getelementptr inbounds %struct.vb2_buffer, ptr %90, i32 0, i32 5
  store i64 %163, ptr %164, align 8
  %165 = getelementptr inbounds %struct.uvc_buffer, ptr %90, i32 0, i32 2
  store i32 3, ptr %165, align 8
  %166 = getelementptr inbounds %struct.uvc_buffer, ptr %90, i32 0, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %155
  %170 = getelementptr inbounds %struct.uvc_buffer, ptr %89, i32 0, i32 3
  %171 = load i32, ptr %170, align 4
  store i32 %171, ptr %166, align 4
  br label %172

172:                                              ; preds = %169, %155
  %173 = tail call ptr @uvc_queue_next_buffer(ptr noundef %14, ptr noundef nonnull %90) #11
  br label %174

174:                                              ; preds = %172, %153
  %175 = phi ptr [ null, %153 ], [ %173, %172 ]
  %176 = tail call ptr @uvc_queue_next_buffer(ptr noundef %15, ptr noundef %89) #11
  br label %177

177:                                              ; preds = %174, %136, %88, %35, %33
  %178 = phi ptr [ null, %33 ], [ %21, %35 ], [ %89, %88 ], [ %176, %174 ], [ %89, %136 ]
  %179 = phi ptr [ %20, %33 ], [ %20, %35 ], [ %90, %88 ], [ %175, %174 ], [ %90, %136 ]
  %180 = add nuw nsw i32 %19, 1
  %181 = load i32, ptr %7, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %18, label %183

183:                                              ; preds = %177, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_video_decode_bulk(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.uvc_urb, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 1
  %11 = load i32, ptr %10, align 8
  br i1 %9, label %12, label %22

12:                                               ; preds = %3
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %212, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22
  %18 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = add nuw nsw i32 %19, %8
  store i32 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 1
  br label %95

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22
  %26 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, %8
  store i32 %28, ptr %26, align 8
  %29 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 1
  %30 = icmp eq i32 %11, 0
  br i1 %30, label %31, label %95

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %95

35:                                               ; preds = %31
  %36 = tail call fastcc i32 @uvc_video_decode_start(ptr noundef %6, ptr noundef %1, ptr noundef %24, i32 noundef %8)
  %37 = icmp eq i32 %36, -11
  br i1 %37, label %38, label %84

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 12, i32 9
  %40 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 14
  %41 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 21, i32 1
  %42 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 18
  br label %43

43:                                               ; preds = %79, %38
  %44 = phi ptr [ %2, %38 ], [ %80, %79 ]
  %45 = phi ptr [ %1, %38 ], [ %81, %79 ]
  %46 = load i32, ptr %39, align 2
  %47 = getelementptr inbounds %struct.uvc_buffer, ptr %45, i32 0, i32 6
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr %40, align 4
  %52 = getelementptr inbounds %struct.uvc_format, ptr %51, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.uvc_buffer, ptr %45, i32 0, i32 3
  store i32 1, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %50, %43
  %59 = icmp eq ptr %44, null
  br i1 %59, label %79, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %45, i32 0, i32 4
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %44, i32 0, i32 4
  store i32 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %45, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %44, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.vb2_buffer, ptr %45, i32 0, i32 5
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds %struct.vb2_buffer, ptr %44, i32 0, i32 5
  store i64 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.uvc_buffer, ptr %44, i32 0, i32 2
  store i32 3, ptr %70, align 8
  %71 = getelementptr inbounds %struct.uvc_buffer, ptr %44, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.uvc_buffer, ptr %45, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %71, align 4
  br label %77

77:                                               ; preds = %74, %60
  %78 = tail call ptr @uvc_queue_next_buffer(ptr noundef %41, ptr noundef nonnull %44) #11
  br label %79

79:                                               ; preds = %77, %58
  %80 = phi ptr [ null, %58 ], [ %78, %77 ]
  %81 = tail call ptr @uvc_queue_next_buffer(ptr noundef %42, ptr noundef %45) #11
  %82 = tail call fastcc i32 @uvc_video_decode_start(ptr noundef %6, ptr noundef %81, ptr noundef %24, i32 noundef %8)
  %83 = icmp eq i32 %82, -11
  br i1 %83, label %43, label %84

84:                                               ; preds = %79, %35
  %85 = phi ptr [ %1, %35 ], [ %81, %79 ]
  %86 = phi ptr [ %2, %35 ], [ %80, %79 ]
  %87 = phi i32 [ %36, %35 ], [ %82, %79 ]
  %88 = icmp slt i32 %87, 0
  %89 = icmp eq ptr %85, null
  %90 = or i1 %89, %88
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 1, ptr %32, align 4
  br label %95

92:                                               ; preds = %84
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %25, ptr align 1 %24, i32 %87, i1 false)
  store i32 %87, ptr %29, align 8
  tail call fastcc void @uvc_video_decode_meta(ptr noundef %6, ptr noundef %86, ptr noundef %24, i32 noundef %87)
  %93 = getelementptr i8, ptr %24, i32 %87
  %94 = sub i32 %8, %87
  br label %95

95:                                               ; preds = %92, %91, %31, %22, %14
  %96 = phi ptr [ %29, %91 ], [ %29, %92 ], [ %29, %31 ], [ %29, %22 ], [ %21, %14 ]
  %97 = phi ptr [ %26, %91 ], [ %26, %92 ], [ %26, %31 ], [ %26, %22 ], [ %18, %14 ]
  %98 = phi ptr [ %25, %91 ], [ %25, %92 ], [ %25, %31 ], [ %25, %22 ], [ %17, %14 ]
  %99 = phi ptr [ %85, %91 ], [ %85, %92 ], [ %1, %31 ], [ %1, %22 ], [ %1, %14 ]
  %100 = phi ptr [ %86, %91 ], [ %86, %92 ], [ %2, %31 ], [ %2, %22 ], [ %2, %14 ]
  %101 = phi ptr [ %24, %91 ], [ %93, %92 ], [ %24, %31 ], [ %24, %22 ], [ %16, %14 ]
  %102 = phi i32 [ %8, %91 ], [ %94, %92 ], [ %8, %31 ], [ %8, %22 ], [ 0, %14 ]
  %103 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  %106 = icmp ne ptr %99, null
  %107 = and i1 %106, %105
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  tail call fastcc void @uvc_video_decode_data(ptr noundef %0, ptr noundef nonnull %99, ptr noundef %101, i32 noundef %102)
  br label %109

109:                                              ; preds = %108, %95
  %110 = load i32, ptr %7, align 4
  %111 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 19
  %112 = load i32, ptr %111, align 4
  %113 = icmp ult i32 %110, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32, ptr %97, align 8
  %116 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = icmp ult i32 %115, %117
  br i1 %118, label %212, label %119

119:                                              ; preds = %114, %109
  %120 = load i32, ptr %103, align 4
  %121 = icmp eq i32 %120, 0
  %122 = and i1 %106, %121
  br i1 %122, label %123, label %211

123:                                              ; preds = %119
  %124 = load i32, ptr %97, align 8
  %125 = getelementptr %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 0, i32 1
  %126 = load i8, ptr %125, align 1
  %127 = and i8 %126, 2
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %167, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.uvc_buffer, ptr %99, i32 0, i32 6
  %131 = load i32, ptr %130, align 8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %167, label %133

133:                                              ; preds = %129
  %134 = load i32, ptr @uvc_dbg_param, align 4
  %135 = and i32 %134, 128
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 1
  %139 = load ptr, ptr %138, align 8
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.usb_device, ptr %140, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %141, ptr noundef nonnull @.str.46) #12
  br label %142

142:                                              ; preds = %137, %133
  %143 = load i8, ptr %98, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %124, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load i32, ptr @uvc_dbg_param, align 4
  %148 = and i32 %147, 128
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 1
  %152 = load ptr, ptr %151, align 8
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.usb_device, ptr %153, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %154, ptr noundef nonnull @.str.47) #12
  br label %155

155:                                              ; preds = %150, %146, %142
  %156 = getelementptr inbounds %struct.uvc_buffer, ptr %99, i32 0, i32 2
  store i32 3, ptr %156, align 8
  %157 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 1
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.uvc_device, ptr %158, i32 0, i32 3
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, 16
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 26
  %165 = load i8, ptr %164, align 8
  %166 = xor i8 %165, 1
  store i8 %166, ptr %164, align 8
  br label %167

167:                                              ; preds = %163, %155, %129, %123
  %168 = getelementptr inbounds %struct.uvc_buffer, ptr %99, i32 0, i32 2
  %169 = load i32, ptr %168, align 8
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %171, label %211

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 12, i32 9
  %173 = load i32, ptr %172, align 2
  %174 = getelementptr inbounds %struct.uvc_buffer, ptr %99, i32 0, i32 6
  %175 = load i32, ptr %174, align 8
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %186, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 14
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.uvc_format, ptr %179, i32 0, i32 7
  %181 = load i32, ptr %180, align 4
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = getelementptr inbounds %struct.uvc_buffer, ptr %99, i32 0, i32 3
  store i32 1, ptr %185, align 4
  br label %186

186:                                              ; preds = %184, %177, %171
  %187 = icmp eq ptr %100, null
  br i1 %187, label %208, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %99, i32 0, i32 4
  %190 = load i32, ptr %189, align 8
  %191 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %100, i32 0, i32 4
  store i32 %190, ptr %191, align 8
  %192 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %99, i32 0, i32 2
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %100, i32 0, i32 2
  store i32 %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.vb2_buffer, ptr %99, i32 0, i32 5
  %196 = load i64, ptr %195, align 8
  %197 = getelementptr inbounds %struct.vb2_buffer, ptr %100, i32 0, i32 5
  store i64 %196, ptr %197, align 8
  %198 = getelementptr inbounds %struct.uvc_buffer, ptr %100, i32 0, i32 2
  store i32 3, ptr %198, align 8
  %199 = getelementptr inbounds %struct.uvc_buffer, ptr %100, i32 0, i32 3
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %188
  %203 = getelementptr inbounds %struct.uvc_buffer, ptr %99, i32 0, i32 3
  %204 = load i32, ptr %203, align 4
  store i32 %204, ptr %199, align 4
  br label %205

205:                                              ; preds = %202, %188
  %206 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 21, i32 1
  %207 = tail call ptr @uvc_queue_next_buffer(ptr noundef %206, ptr noundef nonnull %100) #11
  br label %208

208:                                              ; preds = %205, %186
  %209 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 18
  %210 = tail call ptr @uvc_queue_next_buffer(ptr noundef %209, ptr noundef nonnull %99) #11
  br label %211

211:                                              ; preds = %208, %167, %119
  store i32 0, ptr %96, align 8
  store i32 0, ptr %103, align 4
  store i32 0, ptr %97, align 8
  br label %212

212:                                              ; preds = %211, %114, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_video_encode_bulk(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.uvc_urb, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 24
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq ptr %1, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 3
  %18 = load i32, ptr %17, align 8
  br label %30

19:                                               ; preds = %12
  store i8 2, ptr %8, align 1
  %20 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 26
  %21 = load i8, ptr %20, align 8
  %22 = and i8 %21, 1
  %23 = or i8 %22, -126
  %24 = getelementptr i8, ptr %8, i32 1
  store i8 %23, ptr %24, align 1
  store i32 2, ptr %13, align 8
  %25 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 3
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, 2
  store i32 %27, ptr %25, align 8
  %28 = getelementptr i8, ptr %8, i32 2
  %29 = add i32 %10, -2
  br label %30

30:                                               ; preds = %19, %16
  %31 = phi i32 [ %27, %19 ], [ %18, %16 ]
  %32 = phi ptr [ %28, %19 ], [ %8, %16 ]
  %33 = phi i32 [ %29, %19 ], [ %10, %16 ]
  %34 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 18, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 6
  %40 = load i32, ptr %39, align 8
  %41 = sub i32 %40, %37
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %33) #11
  %43 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 22, i32 3
  %46 = sub i32 %44, %31
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 %42) #11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %32, ptr align 1 %38, i32 %47, i1 false) #11
  %48 = load i32, ptr %36, align 4
  %49 = add i32 %48, %47
  store i32 %49, ptr %36, align 4
  %50 = load i32, ptr %45, align 8
  %51 = add i32 %50, %47
  store i32 %51, ptr %45, align 8
  %52 = sub i32 %47, %33
  %53 = load i32, ptr %39, align 8
  %54 = icmp eq i32 %53, %49
  br i1 %54, label %58, label %55

55:                                               ; preds = %30
  %56 = load i32, ptr %43, align 4
  %57 = icmp eq i32 %51, %56
  br i1 %57, label %69, label %70

58:                                               ; preds = %30
  %59 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 18
  store i32 0, ptr %36, align 4
  %60 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 2
  store i32 3, ptr %60, align 8
  %61 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 25
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  store i32 %63, ptr %64, align 8
  %65 = tail call ptr @uvc_queue_next_buffer(ptr noundef %59, ptr noundef nonnull %1) #11
  %66 = getelementptr inbounds %struct.uvc_streaming, ptr %6, i32 0, i32 26
  %67 = load i8, ptr %66, align 8
  %68 = xor i8 %67, 1
  store i8 %68, ptr %66, align 8
  br label %69

69:                                               ; preds = %58, %55
  store i32 0, ptr %13, align 8
  store i32 0, ptr %45, align 8
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i32, ptr %9, align 8
  %72 = add i32 %52, %71
  br label %73

73:                                               ; preds = %70, %3
  %74 = phi i32 [ %72, %70 ], [ 0, %3 ]
  %75 = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 19
  store i32 %74, ptr %75, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_video_copy_data_work(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -536
  %3 = getelementptr i8, ptr %0, i32 -516
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -512
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ 0, %6 ], [ %18, %8 ]
  %10 = getelementptr [32 x %struct.uvc_copy_op], ptr %7, i32 0, i32 %9
  %11 = getelementptr inbounds %struct.uvc_copy_op, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.uvc_copy_op, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.uvc_copy_op, ptr %10, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr align 1 %14, i32 %16, i1 false)
  %17 = load ptr, ptr %10, align 4
  tail call void @uvc_queue_buffer_release(ptr noundef %17) #11
  %18 = add nuw i32 %9, 1
  %19 = load i32, ptr %3, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %8, label %21

21:                                               ; preds = %8, %1
  %22 = getelementptr i8, ptr %0, i32 -532
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.uvc_streaming, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 12
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.usb_bus, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %0, i32 -520
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.uvc_streaming, ptr %23, i32 0, i32 9
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 1
  %36 = select i1 %35, i32 2, i32 1
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr inbounds %struct.sg_table, ptr %32, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %30, ptr noundef %37, i32 noundef %39, i32 noundef %36) #11
  %40 = load ptr, ptr %2, align 4
  %41 = tail call i32 @usb_submit_urb(ptr noundef %40, i32 noundef 3264) #11
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %21
  %44 = load ptr, ptr %22, align 4
  %45 = getelementptr inbounds %struct.uvc_streaming, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.usb_interface, ptr %46, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.36, i32 noundef %41) #12
  br label %48

48:                                               ; preds = %43, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvc_video_start_streaming(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29
  %3 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 7
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 3
  store i32 32, ptr %4, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 512) #15
  store ptr %6, ptr %2, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 2
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 4
  store i16 -1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 5
  store i16 -1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 12
  %14 = tail call fastcc i32 @uvc_set_video_ctrl(ptr noundef %0, ptr noundef %13, i32 noundef 0) #11
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %8
  %17 = tail call fastcc i32 @uvc_video_start_transfer(ptr noundef %0, i32 noundef 3264)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @usb_set_interface(ptr noundef %22, i32 noundef %24, i32 noundef 0) #11
  br label %26

26:                                               ; preds = %19, %8
  %27 = phi i32 [ %14, %8 ], [ %17, %19 ]
  %28 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %28) #11
  store ptr null, ptr %2, align 8
  br label %29

29:                                               ; preds = %26, %16, %1
  %30 = phi i32 [ %27, %26 ], [ 0, %16 ], [ -12, %1 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_video_stop_streaming(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @uvc_video_stop_transfer(ptr noundef %0, i32 noundef 1)
  %2 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_interface, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @usb_set_interface(ptr noundef %10, i32 noundef %12, i32 noundef 0) #11
  br label %30

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 8, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 128
  %19 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = load i32, ptr %21, align 8
  %23 = shl i32 %22, 8
  %24 = shl nuw nsw i32 %17, 15
  %25 = and i32 %24, 491520
  %26 = or i32 %18, %25
  %27 = or i32 %26, %23
  %28 = or i32 %27, -1073741824
  %29 = tail call i32 @usb_clear_halt(ptr noundef %21, i32 noundef %28) #11
  br label %30

30:                                               ; preds = %14, %7
  %31 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29
  %32 = load ptr, ptr %31, align 8
  tail call void @kfree(ptr noundef %32) #11
  store ptr null, ptr %31, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_match_one_id(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_vunmap_noncontiguous(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_noncontiguous(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvc_find_endpoint(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_ctrl_restore_values(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_alloc_urb_buffers(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 24
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = udiv i32 %6, %2
  br label %103

10:                                               ; preds = %4
  %11 = add i32 %1, -1
  %12 = add i32 %11, %2
  %13 = udiv i32 %12, %2
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 32)
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %94

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 9
  %19 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 23
  br label %20

20:                                               ; preds = %91, %16
  %21 = phi i32 [ %14, %16 ], [ %92, %91 ]
  %22 = mul i32 %21, %2
  store i32 %22, ptr %5, align 8
  br label %23

23:                                               ; preds = %79, %20
  %24 = phi i32 [ %22, %20 ], [ %80, %79 ]
  %25 = phi i32 [ 0, %20 ], [ %77, %79 ]
  %26 = load ptr, ptr %17, align 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 12
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.usb_bus, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %18, align 8
  %33 = icmp eq i32 %32, 1
  %34 = select i1 %33, i32 2, i32 1
  %35 = tail call ptr @dma_alloc_noncontiguous(ptr noundef %31, i32 noundef %24, i32 noundef %34, i32 noundef %3, i32 noundef 0) #11
  %36 = getelementptr %struct.uvc_streaming, ptr %0, i32 0, i32 23, i32 %25, i32 4
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %23
  %39 = load ptr, ptr %35, align 4
  %40 = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.uvc_streaming, ptr %0, i32 0, i32 23, i32 %25, i32 3
  store i32 %41, ptr %42, align 4
  %43 = load i32, ptr %5, align 8
  %44 = tail call ptr @dma_vmap_noncontiguous(ptr noundef %31, i32 noundef %43, ptr noundef nonnull %35) #11
  %45 = getelementptr %struct.uvc_streaming, ptr %0, i32 0, i32 23, i32 %25, i32 2
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %47, label %75

47:                                               ; preds = %38
  %48 = load i32, ptr %5, align 8
  %49 = load ptr, ptr %36, align 4
  %50 = load i32, ptr %18, align 8
  %51 = icmp eq i32 %50, 1
  %52 = select i1 %51, i32 2, i32 1
  tail call void @dma_free_noncontiguous(ptr noundef %31, i32 noundef %48, ptr noundef %49, i32 noundef %52) #11
  store ptr null, ptr %36, align 4
  br label %53

53:                                               ; preds = %47, %23
  %54 = load ptr, ptr %17, align 8
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 12
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.usb_bus, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %72, %53
  %61 = phi ptr [ %19, %53 ], [ %73, %72 ]
  %62 = getelementptr inbounds %struct.uvc_urb, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  tail call void @dma_vunmap_noncontiguous(ptr noundef %59, ptr noundef nonnull %63) #11
  %66 = load i32, ptr %5, align 8
  %67 = getelementptr inbounds %struct.uvc_urb, ptr %61, i32 0, i32 4
  %68 = load ptr, ptr %67, align 4
  %69 = load i32, ptr %18, align 8
  %70 = icmp eq i32 %69, 1
  %71 = select i1 %70, i32 2, i32 1
  tail call void @dma_free_noncontiguous(ptr noundef %59, i32 noundef %66, ptr noundef %68, i32 noundef %71) #11
  store ptr null, ptr %62, align 4
  store ptr null, ptr %67, align 4
  br label %72

72:                                               ; preds = %65, %60
  %73 = getelementptr %struct.uvc_urb, ptr %61, i32 1
  %74 = icmp ult ptr %73, %5
  br i1 %74, label %60, label %81

75:                                               ; preds = %38
  %76 = getelementptr %struct.uvc_streaming, ptr %0, i32 0, i32 23, i32 %25, i32 1
  store ptr %0, ptr %76, align 4
  %77 = add nuw nsw i32 %25, 1
  %78 = icmp eq i32 %77, 5
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %5, align 8
  br label %23

81:                                               ; preds = %72
  store i32 0, ptr %5, align 8
  %82 = icmp eq i32 %25, 5
  br i1 %82, label %83, label %91

83:                                               ; preds = %81, %75
  %84 = load i32, ptr @uvc_dbg_param, align 4
  %85 = and i32 %84, 1024
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %17, align 8
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.usb_device, ptr %89, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %90, ptr noundef nonnull @.str.33, i32 noundef 5, i32 noundef %21, i32 noundef %2) #12
  br label %103

91:                                               ; preds = %81
  %92 = lshr i32 %21, 1
  %93 = icmp ugt i32 %21, 3
  br i1 %93, label %20, label %94

94:                                               ; preds = %91, %10
  %95 = load i32, ptr @uvc_dbg_param, align 4
  %96 = and i32 %95, 1024
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %100 = load ptr, ptr %99, align 8
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.usb_device, ptr %101, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %102, ptr noundef nonnull @.str.34, i32 noundef %2) #12
  br label %103

103:                                              ; preds = %98, %94, %87, %83, %8
  %104 = phi i32 [ %9, %8 ], [ %21, %87 ], [ %21, %83 ], [ 0, %98 ], [ 0, %94 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_video_complete(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uvc_urb, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 18
  %7 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 21, i32 1
  %8 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 21, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %12 [
    i32 0, label %32
    i32 -2, label %16
    i32 -104, label %23
    i32 -108, label %23
  ]

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.35, i32 noundef %11) #12
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 17
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %96

21:                                               ; preds = %16
  %22 = load i32, ptr %10, align 4
  br label %23

23:                                               ; preds = %21, %1, %1
  %24 = phi i32 [ %22, %21 ], [ %11, %1 ], [ %11, %1 ]
  %25 = icmp eq i32 %24, -108
  %26 = zext i1 %25 to i32
  tail call void @uvc_queue_cancel(ptr noundef %6, i32 noundef %26) #11
  %27 = icmp eq ptr %9, null
  br i1 %27, label %96, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %10, align 4
  %30 = icmp eq i32 %29, -108
  %31 = zext i1 %30 to i32
  tail call void @uvc_queue_cancel(ptr noundef %7, i32 noundef %31) #11
  br label %96

32:                                               ; preds = %1
  %33 = tail call ptr @uvc_queue_get_current_buffer(ptr noundef %6) #11
  %34 = icmp eq ptr %9, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 21, i32 1, i32 4
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #11
  %38 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 21, i32 1, i32 5
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  %41 = getelementptr i8, ptr %39, i32 -640
  %42 = select i1 %40, ptr null, ptr %41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #11
  br label %43

43:                                               ; preds = %35, %32
  %44 = phi ptr [ %42, %35 ], [ null, %32 ]
  %45 = getelementptr inbounds %struct.uvc_urb, ptr %3, i32 0, i32 5
  store i32 0, ptr %45, align 4
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.uvc_streaming, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 12
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.usb_bus, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.uvc_urb, ptr %3, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 9
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 1
  %59 = select i1 %58, i32 2, i32 1
  %60 = load ptr, ptr %55, align 4
  %61 = getelementptr inbounds %struct.sg_table, ptr %55, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %53, ptr noundef %60, i32 noundef %62, i32 noundef %59) #11
  %63 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 20
  %64 = load ptr, ptr %63, align 4
  tail call void %64(ptr noundef %3, ptr noundef %33, ptr noundef %44) #11
  %65 = load i32, ptr %45, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %43
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr inbounds %struct.uvc_streaming, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.usb_device, ptr %71, i32 0, i32 12
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.usb_bus, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %54, align 4
  %77 = getelementptr inbounds %struct.uvc_streaming, ptr %68, i32 0, i32 9
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 1
  %80 = select i1 %79, i32 2, i32 1
  %81 = load ptr, ptr %76, align 4
  %82 = getelementptr inbounds %struct.sg_table, ptr %76, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %75, ptr noundef %81, i32 noundef %83, i32 noundef %80) #11
  %84 = load ptr, ptr %3, align 4
  %85 = tail call i32 @usb_submit_urb(ptr noundef %84, i32 noundef 2592) #11
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %67
  %88 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 5
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.usb_interface, ptr %89, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.36, i32 noundef %85) #12
  br label %96

91:                                               ; preds = %43
  %92 = getelementptr inbounds %struct.uvc_streaming, ptr %5, i32 0, i32 19
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.uvc_urb, ptr %3, i32 0, i32 7
  %95 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %93, ptr noundef %94) #11
  br label %96

96:                                               ; preds = %91, %87, %67, %28, %23, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_noncontiguous(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_vmap_noncontiguous(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_queue_cancel(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvc_queue_get_current_buffer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_video_decode_start(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp slt i32 %3, 2
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1
  %8 = icmp ult i8 %7, 2
  %9 = zext i8 %7 to i32
  %10 = icmp ugt i32 %9, %3
  %11 = or i1 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6, %4
  %13 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8
  br label %441

16:                                               ; preds = %6
  %17 = getelementptr i8, ptr %2, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 26
  %21 = load i8, ptr %20, align 8
  %22 = icmp eq i8 %21, %19
  br i1 %22, label %138, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 25
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %138, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr @uvc_dbg_param, align 4
  %30 = and i32 %29, 2048
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 %40, %42
  %44 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 10
  %51 = load i8, ptr %50, align 1, !range !13
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, ptr @.str.43, ptr @.str.42
  %54 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 9
  %55 = load i8, ptr %54, align 4, !range !13
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, ptr @.str.43, ptr @.str.42
  %58 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 13
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 12
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 11
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 15
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 14
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %36, ptr noundef nonnull @.str.41, i32 noundef %26, i32 noundef %38, i32 noundef %43, i32 noundef %40, i32 noundef %45, i32 noundef %47, i32 noundef %49, ptr noundef nonnull %53, ptr noundef nonnull %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %68) #12
  br label %69

69:                                               ; preds = %32, %28
  %70 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 8
  %73 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, %74
  store i32 %77, ptr %75, align 4
  %78 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 4
  %81 = load i32, ptr %80, align 8
  %82 = add i32 %81, %79
  store i32 %82, ptr %80, align 8
  %83 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 6
  %86 = load i32, ptr %85, align 8
  %87 = add i32 %86, %84
  store i32 %87, ptr %85, align 8
  %88 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 4
  %89 = load i32, ptr %88, align 8
  %90 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 5
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, %89
  store i32 %92, ptr %90, align 4
  %93 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 10
  %94 = load i8, ptr %93, align 1, !range !13
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %69
  %97 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 8
  %98 = load i32, ptr %97, align 8
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 8
  br label %100

100:                                              ; preds = %96, %69
  %101 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 9
  %102 = load i8, ptr %101, align 4, !range !13
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 9
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 8
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp ugt i32 %110, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 7
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, 1
  store i32 %117, ptr %115, align 4
  br label %118

118:                                              ; preds = %114, %108
  %119 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 12
  %120 = load i32, ptr %119, align 4
  %121 = sub i32 %74, %79
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 10
  %125 = load i32, ptr %124, align 8
  %126 = add i32 %125, 1
  store i32 %126, ptr %124, align 8
  br label %127

127:                                              ; preds = %123, %118
  %128 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 13
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, 1
  %131 = icmp eq i32 %130, %120
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 11
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, 1
  store i32 %135, ptr %133, align 4
  br label %136

136:                                              ; preds = %132, %127
  %137 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(60) %137, i8 0, i32 60, i1 false) #11
  br label %138

138:                                              ; preds = %136, %23, %16
  %139 = load i8, ptr %17, align 1
  %140 = and i8 %139, 12
  %141 = zext i8 %140 to i32
  switch i32 %141, label %144 [
    i32 12, label %145
    i32 4, label %142
    i32 8, label %143
  ]

142:                                              ; preds = %138
  br label %145

143:                                              ; preds = %138
  br label %145

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %143, %142, %138
  %146 = phi i32 [ 2, %144 ], [ 8, %143 ], [ 6, %142 ], [ %141, %138 ]
  %147 = phi i1 [ false, %144 ], [ false, %143 ], [ true, %142 ], [ true, %138 ]
  %148 = phi i1 [ false, %144 ], [ true, %143 ], [ false, %142 ], [ true, %138 ]
  %149 = icmp ugt i32 %146, %3
  br i1 %149, label %215, label %150

150:                                              ; preds = %145
  %151 = icmp ne ptr %1, null
  %152 = and i1 %151, %147
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = getelementptr i8, ptr %2, i32 2
  %155 = load i32, ptr %154, align 1
  %156 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 7
  store i32 %155, ptr %156, align 4
  br label %157

157:                                              ; preds = %153, %150
  br i1 %148, label %158, label %215

158:                                              ; preds = %157
  %159 = add nsw i32 %146, -2
  %160 = getelementptr i8, ptr %2, i32 %159
  %161 = load i16, ptr %160, align 1
  %162 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29
  %163 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 4
  %164 = load i16, ptr %163, align 8
  %165 = icmp eq i16 %161, %164
  br i1 %165, label %215, label %166

166:                                              ; preds = %158
  store i16 %161, ptr %163, align 8
  %167 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %168 = load ptr, ptr %167, align 8
  %169 = load ptr, ptr %168, align 8
  %170 = tail call i32 @usb_get_current_frame_number(ptr noundef %169) #11
  %171 = trunc i32 %170 to i16
  %172 = load i32, ptr @uvc_clock_param, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = tail call i64 @ktime_get() #11
  br label %178

176:                                              ; preds = %166
  %177 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i64 [ %175, %174 ], [ %177, %176 ]
  %180 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 5
  %181 = load i16, ptr %180, align 2
  %182 = icmp eq i16 %181, -1
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = sub i16 %171, %161
  %185 = and i16 %184, 255
  %186 = icmp ugt i16 %185, 9
  %187 = select i1 %186, i16 %185, i16 0
  store i16 %187, ptr %180, align 2
  br label %188

188:                                              ; preds = %183, %178
  %189 = phi i16 [ %187, %183 ], [ %181, %178 ]
  %190 = add i16 %189, %161
  %191 = and i16 %190, 2047
  %192 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 7
  %193 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %192) #11
  %194 = load ptr, ptr %162, align 8
  %195 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr %struct.uvc_clock_sample, ptr %194, i32 %196
  %198 = add nsw i32 %146, -6
  %199 = getelementptr i8, ptr %2, i32 %198
  %200 = load i32, ptr %199, align 1
  store i32 %200, ptr %197, align 8
  %201 = getelementptr %struct.uvc_clock_sample, ptr %194, i32 %196, i32 1
  store i16 %191, ptr %201, align 4
  %202 = getelementptr %struct.uvc_clock_sample, ptr %194, i32 %196, i32 2
  store i16 %171, ptr %202, align 2
  %203 = getelementptr %struct.uvc_clock_sample, ptr %194, i32 %196, i32 3
  store i64 %179, ptr %203, align 8
  %204 = load i32, ptr %195, align 4
  %205 = add i32 %204, 1
  %206 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 3
  %207 = load i32, ptr %206, align 4
  %208 = urem i32 %205, %207
  store i32 %208, ptr %195, align 4
  %209 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 2
  %210 = load i32, ptr %209, align 8
  %211 = icmp ult i32 %210, %207
  br i1 %211, label %212, label %214

212:                                              ; preds = %188
  %213 = add nuw i32 %210, 1
  store i32 %213, ptr %209, align 8
  br label %214

214:                                              ; preds = %212, %188
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %192, i32 noundef %193) #11
  br label %215

215:                                              ; preds = %214, %158, %157, %145
  %216 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28
  %217 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1
  %218 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 2
  %219 = load i32, ptr %218, align 8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 2
  %223 = load i32, ptr %222, align 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = tail call i64 @ktime_get() #11
  store i64 %226, ptr %217, align 8
  br label %227

227:                                              ; preds = %225, %221, %215
  %228 = load i8, ptr %17, align 1
  %229 = and i8 %228, 12
  %230 = zext i8 %229 to i32
  switch i32 %230, label %233 [
    i32 12, label %234
    i32 4, label %231
    i32 8, label %232
  ]

231:                                              ; preds = %227
  br label %234

232:                                              ; preds = %227
  br label %234

233:                                              ; preds = %227
  br label %234

234:                                              ; preds = %233, %232, %231, %227
  %235 = phi i32 [ 2, %233 ], [ 8, %232 ], [ 6, %231 ], [ %230, %227 ]
  %236 = phi i1 [ false, %233 ], [ false, %232 ], [ true, %231 ], [ true, %227 ]
  %237 = phi i1 [ false, %233 ], [ true, %232 ], [ false, %231 ], [ true, %227 ]
  %238 = icmp ugt i32 %235, %3
  br i1 %238, label %243, label %239

239:                                              ; preds = %234
  %240 = load i8, ptr %2, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp ugt i32 %235, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %239, %234
  %244 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 4
  %245 = load i32, ptr %244, align 8
  %246 = add i32 %245, 1
  store i32 %246, ptr %244, align 8
  br label %359

247:                                              ; preds = %239
  br i1 %236, label %248, label %251

248:                                              ; preds = %247
  %249 = getelementptr i8, ptr %2, i32 2
  %250 = load i32, ptr %249, align 1
  br label %251

251:                                              ; preds = %248, %247
  %252 = phi i32 [ %250, %248 ], [ 0, %247 ]
  br i1 %237, label %253, label %260

253:                                              ; preds = %251
  %254 = add nsw i32 %235, -6
  %255 = getelementptr i8, ptr %2, i32 %254
  %256 = load i32, ptr %255, align 1
  %257 = add nsw i32 %235, -2
  %258 = getelementptr i8, ptr %2, i32 %257
  %259 = load i16, ptr %258, align 1
  br label %260

260:                                              ; preds = %253, %251
  %261 = phi i16 [ %259, %253 ], [ 0, %251 ]
  %262 = phi i32 [ %256, %253 ], [ 0, %251 ]
  br i1 %236, label %263, label %281

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 6
  %265 = load i32, ptr %264, align 8
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %278, label %267

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 11
  %269 = load i32, ptr %268, align 8
  %270 = icmp eq i32 %269, %252
  br i1 %270, label %278, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 7
  %273 = load i32, ptr %272, align 4
  %274 = add i32 %273, 1
  store i32 %274, ptr %272, align 4
  %275 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 2
  %276 = load i32, ptr %275, align 8
  %277 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 8
  store i32 %276, ptr %277, align 8
  br label %278

278:                                              ; preds = %271, %267, %263
  %279 = add i32 %265, 1
  store i32 %279, ptr %264, align 8
  %280 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 11
  store i32 %252, ptr %280, align 8
  br label %281

281:                                              ; preds = %278, %260
  %282 = load i32, ptr %216, align 8
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %281
  %285 = icmp ult i32 %235, %3
  br i1 %285, label %286, label %289

286:                                              ; preds = %284
  %287 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 9
  %288 = zext i1 %236 to i8
  store i8 %288, ptr %287, align 4
  br label %289

289:                                              ; preds = %286, %284
  %290 = icmp eq i32 %235, %3
  %291 = and i1 %236, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 10
  store i8 1, ptr %293, align 1
  br label %294

294:                                              ; preds = %292, %289, %281
  br i1 %237, label %295, label %336

295:                                              ; preds = %294
  %296 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 12
  %297 = load i32, ptr %296, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %307, label %299

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 15
  %301 = load i32, ptr %300, align 8
  %302 = icmp eq i32 %301, %262
  br i1 %302, label %312, label %303

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 13
  %305 = load i32, ptr %304, align 8
  %306 = add i32 %305, 1
  store i32 %306, ptr %304, align 8
  br label %312

307:                                              ; preds = %295
  %308 = load i32, ptr %218, align 8
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %307
  %311 = zext i16 %261 to i32
  br label %321

312:                                              ; preds = %307, %303, %299
  %313 = zext i16 %261 to i32
  %314 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 13
  %315 = load i32, ptr %314, align 4
  %316 = sub i32 %313, %315
  %317 = and i32 %316, 2047
  %318 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 12
  %319 = load i32, ptr %318, align 8
  %320 = add i32 %317, %319
  store i32 %320, ptr %318, align 8
  br label %321

321:                                              ; preds = %312, %310
  %322 = phi i32 [ %311, %310 ], [ %313, %312 ]
  %323 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 13
  store i32 %322, ptr %323, align 4
  %324 = add i32 %297, 1
  store i32 %324, ptr %296, align 4
  %325 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 15
  store i32 %262, ptr %325, align 8
  %326 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 14
  store i16 %261, ptr %326, align 4
  %327 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 14
  %328 = load i32, ptr %327, align 8
  %329 = icmp ugt i32 %328, %322
  br i1 %329, label %330, label %331

330:                                              ; preds = %321
  store i32 %322, ptr %327, align 8
  br label %331

331:                                              ; preds = %330, %321
  %332 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 1, i32 15
  %333 = load i32, ptr %332, align 4
  %334 = icmp ult i32 %333, %322
  br i1 %334, label %335, label %336

335:                                              ; preds = %331
  store i32 %322, ptr %332, align 4
  br label %336

336:                                              ; preds = %335, %331, %294
  %337 = icmp ult i32 %235, %3
  %338 = and i1 %337, %283
  %339 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 2
  %340 = load i32, ptr %339, align 8
  br i1 %338, label %341, label %343

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 1
  store i32 %340, ptr %342, align 4
  br label %343

343:                                              ; preds = %341, %336
  %344 = sub nsw i32 %3, %235
  %345 = add i32 %344, %282
  store i32 %345, ptr %216, align 8
  %346 = add i32 %340, 1
  store i32 %346, ptr %339, align 8
  br i1 %337, label %351, label %347

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 3
  %349 = load i32, ptr %348, align 4
  %350 = add i32 %349, 1
  store i32 %350, ptr %348, align 4
  br label %351

351:                                              ; preds = %347, %343
  %352 = load i8, ptr %17, align 1
  %353 = and i8 %352, 64
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %359, label %355

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 28, i32 0, i32 5
  %357 = load i32, ptr %356, align 4
  %358 = add i32 %357, 1
  store i32 %358, ptr %356, align 4
  br label %359

359:                                              ; preds = %355, %351, %243
  %360 = icmp eq ptr %1, null
  br i1 %360, label %361, label %362

361:                                              ; preds = %359
  store i8 %19, ptr %20, align 8
  br label %441

362:                                              ; preds = %359
  %363 = load i8, ptr %17, align 1
  %364 = and i8 %363, 64
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %377, label %366

366:                                              ; preds = %362
  %367 = load i32, ptr @uvc_dbg_param, align 4
  %368 = and i32 %367, 128
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %375, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %372 = load ptr, ptr %371, align 8
  %373 = load ptr, ptr %372, align 8
  %374 = getelementptr inbounds %struct.usb_device, ptr %373, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %374, ptr noundef nonnull @.str.38) #12
  br label %375

375:                                              ; preds = %370, %366
  %376 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 3
  store i32 1, ptr %376, align 4
  br label %377

377:                                              ; preds = %375, %362
  %378 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 2
  %379 = load i32, ptr %378, align 8
  %380 = icmp eq i32 %379, 2
  br i1 %380, label %421, label %381

381:                                              ; preds = %377
  %382 = load i8, ptr %20, align 8
  %383 = icmp eq i8 %19, %382
  br i1 %383, label %384, label %407

384:                                              ; preds = %381
  %385 = load i32, ptr @uvc_dbg_param, align 4
  %386 = and i32 %385, 128
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %393, label %388

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %390 = load ptr, ptr %389, align 8
  %391 = load ptr, ptr %390, align 8
  %392 = getelementptr inbounds %struct.usb_device, ptr %391, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %392, ptr noundef nonnull @.str.39) #12
  br label %393

393:                                              ; preds = %388, %384
  %394 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %395 = load ptr, ptr %394, align 8
  %396 = getelementptr inbounds %struct.uvc_device, ptr %395, i32 0, i32 3
  %397 = load i32, ptr %396, align 4
  %398 = and i32 %397, 16
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %441, label %400

400:                                              ; preds = %393
  %401 = load i8, ptr %17, align 1
  %402 = and i8 %401, 2
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %441, label %404

404:                                              ; preds = %400
  %405 = load i8, ptr %20, align 8
  %406 = xor i8 %405, 1
  store i8 %406, ptr %20, align 8
  br label %441

407:                                              ; preds = %381
  %408 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 2
  store i32 1, ptr %408, align 4
  %409 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 25
  %410 = load i32, ptr %409, align 4
  %411 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  store i32 %410, ptr %411, align 8
  %412 = load i32, ptr @uvc_clock_param, align 4
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %414, label %416

414:                                              ; preds = %407
  %415 = tail call i64 @ktime_get() #11
  br label %418

416:                                              ; preds = %407
  %417 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  br label %418

418:                                              ; preds = %416, %414
  %419 = phi i64 [ %415, %414 ], [ %417, %416 ]
  %420 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 5
  store i64 %419, ptr %420, align 8
  store i32 2, ptr %378, align 8
  br label %421

421:                                              ; preds = %418, %377
  %422 = load i8, ptr %20, align 8
  %423 = icmp eq i8 %19, %422
  br i1 %423, label %438, label %424

424:                                              ; preds = %421
  %425 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 6
  %426 = load i32, ptr %425, align 8
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %438, label %428

428:                                              ; preds = %424
  %429 = load i32, ptr @uvc_dbg_param, align 4
  %430 = and i32 %429, 128
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %437, label %432

432:                                              ; preds = %428
  %433 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %434 = load ptr, ptr %433, align 8
  %435 = load ptr, ptr %434, align 8
  %436 = getelementptr inbounds %struct.usb_device, ptr %435, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %436, ptr noundef nonnull @.str.40) #12
  br label %437

437:                                              ; preds = %432, %428
  store i32 3, ptr %378, align 8
  br label %441

438:                                              ; preds = %424, %421
  store i8 %19, ptr %20, align 8
  %439 = load i8, ptr %2, align 1
  %440 = zext i8 %439 to i32
  br label %441

441:                                              ; preds = %438, %437, %404, %400, %393, %361, %12
  %442 = phi i32 [ -22, %12 ], [ -61, %361 ], [ -11, %437 ], [ %440, %438 ], [ -61, %404 ], [ -61, %400 ], [ -61, %393 ]
  ret i32 %442
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uvc_video_decode_meta(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  %6 = icmp eq i32 %3, 2
  %7 = or i1 %5, %6
  br i1 %7, label %93, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = sub i32 %10, %12
  %14 = add i32 %3, 10
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 3
  store i32 1, ptr %17, align 4
  br label %93

18:                                               ; preds = %8
  %19 = getelementptr i8, ptr %2, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %21, 8
  %25 = icmp eq i32 %24, 0
  %26 = or i32 %22, 2
  %27 = getelementptr i8, ptr %2, i32 %26
  %28 = select i1 %25, i32 2, i32 8
  %29 = or i32 %28, %22
  %30 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 21, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 1212372565
  %33 = select i1 %32, i32 %29, i32 %3
  %34 = icmp eq i32 %33, %29
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  br i1 %25, label %93, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 6
  %38 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %27, ptr noundef dereferenceable(6) %37, i32 6)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %93, label %40

40:                                               ; preds = %36, %18
  %41 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr i8, ptr %42, i32 %12
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !14
  %45 = load i32, ptr @uvc_clock_param, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = tail call i64 @ktime_get() #11
  br label %51

49:                                               ; preds = %40
  %50 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  %53 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %54, align 8
  %56 = tail call i32 @usb_get_current_frame_number(ptr noundef %55) #11
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #11, !srcloc !15
  store i64 %52, ptr %43, align 1
  %57 = getelementptr inbounds %struct.uvc_meta_buf, ptr %43, i32 0, i32 1
  %58 = trunc i32 %56 to i16
  store i16 %58, ptr %57, align 1
  br i1 %25, label %61, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.uvc_streaming, ptr %0, i32 0, i32 29, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %60, ptr noundef align 1 dereferenceable(6) %27, i32 6, i1 false)
  br label %61

61:                                               ; preds = %59, %51
  %62 = getelementptr inbounds %struct.uvc_meta_buf, ptr %43, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %62, ptr align 1 %2, i32 %33, i1 false)
  %63 = add i32 %33, 10
  %64 = load i32, ptr %11, align 8
  %65 = add i32 %63, %64
  store i32 %65, ptr %11, align 8
  %66 = load i32, ptr @uvc_dbg_param, align 4
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %61
  %70 = load ptr, ptr %53, align 8
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.usb_device, ptr %71, i32 0, i32 15
  %73 = load i16, ptr %57, align 1
  %74 = zext i16 %73 to i32
  %75 = load i8, ptr %62, align 1
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds %struct.uvc_meta_buf, ptr %43, i32 0, i32 3
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  br i1 %23, label %83, label %80

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.uvc_meta_buf, ptr %43, i32 0, i32 4
  %82 = load i32, ptr %81, align 1
  br label %83

83:                                               ; preds = %80, %69
  %84 = phi i32 [ %82, %80 ], [ 0, %69 ]
  br i1 %25, label %90, label %85

85:                                               ; preds = %83
  %86 = load i32, ptr %27, align 4
  %87 = getelementptr i8, ptr %27, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 2047
  br label %90

90:                                               ; preds = %85, %83
  %91 = phi i32 [ %86, %85 ], [ 0, %83 ]
  %92 = phi i32 [ %89, %85 ], [ 0, %83 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %72, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.uvc_video_decode_meta, i64 noundef %52, i32 noundef %74, i32 noundef %76, i32 noundef %79, i32 noundef %84, i32 noundef %91, i32 noundef %92) #12
  br label %93

93:                                               ; preds = %90, %61, %36, %35, %16, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uvc_video_decode_data(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.uvc_urb, ptr %0, i32 0, i32 5
  %6 = icmp slt i32 %3, 1
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %5, align 4
  %9 = getelementptr %struct.uvc_urb, ptr %0, i32 0, i32 6, i32 %8
  %10 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = sub i32 %11, %13
  %15 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #11, !srcloc !16
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #11, !srcloc !17
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !18

19:                                               ; preds = %7
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !8

23:                                               ; preds = %19, %7
  %24 = phi i32 [ 2, %7 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %24) #11
  br label %25

25:                                               ; preds = %23, %19
  store ptr %1, ptr %9, align 4
  %26 = getelementptr %struct.uvc_urb, ptr %0, i32 0, i32 6, i32 %8, i32 2
  store ptr %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %12, align 8
  %30 = getelementptr i8, ptr %28, i32 %29
  %31 = getelementptr %struct.uvc_urb, ptr %0, i32 0, i32 6, i32 %8, i32 1
  store ptr %30, ptr %31, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %14, i32 %3)
  %33 = getelementptr %struct.uvc_urb, ptr %0, i32 0, i32 6, i32 %8, i32 3
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %12, align 8
  %35 = add i32 %34, %32
  store i32 %35, ptr %12, align 8
  %36 = icmp ult i32 %14, %3
  br i1 %36, label %37, label %51

37:                                               ; preds = %25
  %38 = load i32, ptr @uvc_dbg_param, align 4
  %39 = and i32 %38, 128
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.uvc_urb, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.uvc_streaming, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.1, ptr noundef %47, ptr noundef nonnull @.str.45) #12
  br label %48

48:                                               ; preds = %41, %37
  %49 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 3
  store i32 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.uvc_buffer, ptr %1, i32 0, i32 2
  store i32 3, ptr %50, align 8
  br label %51

51:                                               ; preds = %48, %25
  %52 = load i32, ptr %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %5, align 4
  br label %54

54:                                               ; preds = %51, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_current_frame_number(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uvc_queue_next_buffer(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvc_queue_buffer_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"auto-init"}
!10 = !{i64 2148716969, i64 2148717249, i64 2148717583, i64 2148717917}
!11 = !{i64 1231138, i64 1231165}
!12 = !{i64 1231833, i64 1231860, i64 1231893, i64 1231914, i64 1231941, i64 1231967}
!13 = !{i8 0, i8 2}
!14 = !{i64 701363, i64 701424}
!15 = !{i64 704380}
!16 = !{i64 672616, i64 2148174182, i64 2148174208, i64 2148174255, i64 2148174277, i64 2148174305, i64 2148174325}
!17 = !{i64 2148238902, i64 2148238934, i64 2148238963, i64 2148238997, i64 2148239028, i64 2148239051}
!18 = !{!"branch_weights", i32 1, i32 2000}
