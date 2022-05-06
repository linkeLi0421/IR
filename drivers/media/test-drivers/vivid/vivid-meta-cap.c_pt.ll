; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-meta-cap.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-meta-cap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.88, %struct.anon.89, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.87 = type { ptr, ptr }
%struct.anon.88 = type { ptr, ptr }
%struct.anon.89 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.90, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.90 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.91 }
%struct.anon.91 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.82 }
%union.anon.82 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.92, i32, i32 }
%union.anon.92 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.72, i32 }
%union.anon.72 = type { i32 }
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.vivid_uvc_meta_buf = type <{ i64, i16, i8, i8, [10 x i8] }>

@vivid_meta_cap_qops = dso_local local_unnamed_addr constant %struct.vb2_ops { ptr @meta_cap_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @meta_cap_buf_prepare, ptr null, ptr null, ptr @meta_cap_start_streaming, ptr @meta_cap_stop_streaming, ptr @meta_cap_buf_queue, ptr @meta_cap_buf_request_complete }, align 4
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [46 x i8] c"\017%s: %s ns:%llu sof:%4d len:%u flags: 0x%02x\00", align 1
@__func__.vivid_meta_cap_fillbuff = private unnamed_addr constant [24 x i8] c"vivid_meta_cap_fillbuff\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\017%s:  pts: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\017%s:  stc: %u, sof counter: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\017%s: \0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"\017%s: %s\0A\00", align 1
@__func__.meta_cap_buf_prepare = private unnamed_addr constant [21 x i8] c"meta_cap_buf_prepare\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", align 1
@__func__.meta_cap_start_streaming = private unnamed_addr constant [25 x i8] c"meta_cap_start_streaming\00", align 1
@__func__.meta_cap_stop_streaming = private unnamed_addr constant [24 x i8] c"meta_cap_stop_streaming\00", align 1
@__func__.meta_cap_buf_queue = private unnamed_addr constant [19 x i8] c"meta_cap_buf_queue\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @meta_cap_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 173
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 53, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %5
  %14 = load i32, ptr %2, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4
  %18 = icmp ult i32 %17, 22
  br i1 %18, label %29, label %20

19:                                               ; preds = %13
  store i32 22, ptr %3, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 21
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %1, align 4
  %24 = add i32 %23, %22
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = sub i32 2, %22
  store i32 %27, ptr %1, align 4
  br label %28

28:                                               ; preds = %26, %20
  store i32 1, ptr %2, align 4
  br label %29

29:                                               ; preds = %28, %16, %5
  %30 = phi i32 [ 0, %28 ], [ -22, %5 ], [ -22, %16 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meta_cap_buf_prepare(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8, ptr noundef nonnull @__func__.meta_cap_buf_prepare) #5
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 154
  %12 = load i8, ptr %11, align 2, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i8 0, ptr %11, align 2
  br label %35

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = icmp ult i32 %21, 22
  br i1 %22, label %26, label %33

23:                                               ; preds = %15
  %24 = load i32, ptr @vivid_debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %29

26:                                               ; preds = %19
  %27 = load i32, ptr @vivid_debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ 0, %23 ], [ %21, %26 ]
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %31, ptr noundef nonnull @__func__.meta_cap_buf_prepare, i32 noundef %30, i32 noundef 22) #5
  br label %35

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 22, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %29, %26, %23, %14
  %36 = phi i32 [ -22, %14 ], [ 0, %33 ], [ -22, %29 ], [ -22, %23 ], [ -22, %26 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meta_cap_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8, ptr noundef nonnull @__func__.meta_cap_start_streaming) #5
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 265
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 155
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i8 0, ptr %12, align 1
  br label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 266
  %18 = tail call i32 @vivid_start_generating_vid_cap(ptr noundef %4, ptr noundef %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16, %15
  %21 = phi i32 [ -22, %15 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 247
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %33, label %25

25:                                               ; preds = %25, %20
  %26 = phi ptr [ %28, %25 ], [ %23, %20 ]
  %27 = getelementptr i8, ptr %26, i32 -640
  %28 = load ptr, ptr %26, align 8
  %29 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %28, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  tail call void @vb2_buffer_done(ptr noundef %27, i32 noundef 3) #6
  %32 = icmp eq ptr %28, %22
  br i1 %32, label %33, label %25

33:                                               ; preds = %25, %20, %16
  %34 = phi i32 [ 0, %16 ], [ %21, %20 ], [ %21, %25 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meta_cap_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @vivid_debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %7, ptr noundef nonnull @__func__.meta_cap_stop_streaming) #5
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 266
  tail call void @vivid_stop_generating_vid_cap(ptr noundef %3, ptr noundef %10) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meta_cap_buf_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8, ptr noundef nonnull @__func__.meta_cap_buf_queue) #5
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 247
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 247, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %17 = load i16, ptr %11, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meta_cap_buf_request_complete(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 7, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 33
  tail call void @v4l2_ctrl_request_complete(ptr noundef %6, ptr noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_fmt_meta_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, ptr %2, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 1
  store i32 13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 1212372565, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %12, %3
  %19 = phi i32 [ 0, %15 ], [ -22, %3 ], [ -22, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_meta_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 73
  %15 = load i8, ptr %14, align 2, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  store i32 1212372565, ptr %7, align 1
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 22, ptr %18, align 1
  br label %19

19:                                               ; preds = %17, %13, %3
  %20 = phi i32 [ 0, %17 ], [ -22, %13 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_meta_cap_fillbuff(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @vb2_plane_vaddr(ptr noundef %1, i32 noundef 0) #6
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 265
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  store i32 %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = lshr i32 %6, 1
  store i32 %12, ptr %7, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %19, %17 ], [ 0, %13 ]
  tail call void @llvm.memset.p0.i32(ptr align 1 %4, i8 1, i32 %21, i1 false)
  %22 = tail call i64 @ktime_get() #6
  store i64 %22, ptr %4, align 1
  %23 = load i32, ptr %7, align 8
  %24 = trunc i32 %23 to i16
  %25 = mul i16 %24, 30
  %26 = getelementptr inbounds %struct.vivid_uvc_meta_buf, ptr %4, i32 0, i32 1
  store i16 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.vivid_uvc_meta_buf, ptr %4, i32 0, i32 2
  store i8 12, ptr %27, align 1
  %28 = getelementptr inbounds %struct.vivid_uvc_meta_buf, ptr %4, i32 0, i32 3
  store i8 -126, ptr %28, align 1
  %29 = load i32, ptr %7, align 8
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i8 -125, i8 -126
  store i8 %32, ptr %28, align 1
  %33 = load i32, ptr @vivid_debug, align 4
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %37 = zext i16 %25 to i32
  %38 = zext i8 %32 to i32
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %36, ptr noundef nonnull @__func__.vivid_meta_cap_fillbuff, i64 noundef %22, i32 noundef %37, i32 noundef 12, i32 noundef %38) #5
  br label %40

40:                                               ; preds = %35, %20
  %41 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 363
  %42 = load i8, ptr %41, align 8, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %40
  %45 = load i8, ptr %28, align 1
  %46 = or i8 %45, 4
  store i8 %46, ptr %28, align 1
  %47 = lshr i64 %2, 1
  %48 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %47, i64 3689348814741910323) #7, !srcloc !13
  %49 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %47, i64 %48) #7, !srcloc !14
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds %struct.vivid_uvc_meta_buf, ptr %4, i32 0, i32 4
  store i8 %50, ptr %51, align 1
  %52 = load i32, ptr @vivid_debug, align 4
  %53 = icmp ugt i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %56 = load i32, ptr %51, align 1
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %55, i32 noundef %56) #5
  br label %58

58:                                               ; preds = %54, %44, %40
  %59 = phi i32 [ 4, %54 ], [ 4, %44 ], [ 0, %40 ]
  %60 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 364
  %61 = load i8, ptr %60, align 1, !range !8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %91, label %63

63:                                               ; preds = %58
  %64 = load i8, ptr %28, align 1
  %65 = or i8 %64, 8
  store i8 %65, ptr %28, align 1
  %66 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 254
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %67, %2
  %69 = lshr i64 %68, 1
  %70 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %69, i64 3689348814741910323) #7, !srcloc !13
  %71 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %69, i64 %70) #7, !srcloc !14
  %72 = trunc i64 %71 to i8
  %73 = getelementptr %struct.vivid_uvc_meta_buf, ptr %4, i32 0, i32 4, i32 %59
  store i8 %72, ptr %73, align 1
  %74 = load i32, ptr %7, align 8
  %75 = mul i32 %74, 30
  %76 = urem i32 %75, 1000
  %77 = trunc i32 %76 to i8
  %78 = add nuw nsw i32 %59, 4
  %79 = getelementptr %struct.vivid_uvc_meta_buf, ptr %4, i32 0, i32 4, i32 %78
  store i8 %77, ptr %79, align 1
  %80 = load i32, ptr @vivid_debug, align 4
  %81 = icmp ugt i32 %80, 1
  br i1 %81, label %82, label %97

82:                                               ; preds = %63
  %83 = getelementptr inbounds %struct.vivid_uvc_meta_buf, ptr %4, i32 0, i32 4
  %84 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %85 = getelementptr i8, ptr %83, i32 %59
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr i8, ptr %85, i32 4
  %88 = load i16, ptr %87, align 2
  %89 = zext i16 %88 to i32
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %84, i32 noundef %86, i32 noundef %89) #5
  br label %91

91:                                               ; preds = %82, %58
  %92 = load i32, ptr @vivid_debug, align 4
  %93 = icmp ugt i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %95) #5
  br label %97

97:                                               ; preds = %94, %91, %63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_start_generating_vid_cap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_stop_generating_vid_cap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

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
!9 = !{i64 2149186510}
!10 = !{i64 2149182334}
!11 = !{i64 2149182409, i64 2149182436, i64 2149182483, i64 2149182505, i64 2149182533, i64 2149182553}
!12 = !{i64 2149209513}
!13 = !{i64 844860, i64 844887}
!14 = !{i64 845200, i64 845227, i64 845261, i64 845282}
