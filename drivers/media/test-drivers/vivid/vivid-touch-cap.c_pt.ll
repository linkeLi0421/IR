; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-touch-cap.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-touch-cap.c"
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
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.90, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.91, %struct.anon.92, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
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
%struct.anon.90 = type { ptr, ptr }
%struct.anon.91 = type { ptr, ptr }
%struct.anon.92 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.93 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.94 }
%struct.anon.94 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.85 }
%union.anon.85 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.80, i32, i32 }
%union.anon.80 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.72, i32 }
%union.anon.72 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.79 }
%union.anon.79 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.81, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.81 = type { i8 }
%struct.v4l2_streamparm = type { i32, %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }

@vivid_touch_cap_qops = dso_local local_unnamed_addr constant %struct.vb2_ops { ptr @touch_cap_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @touch_cap_buf_prepare, ptr null, ptr null, ptr @touch_cap_start_streaming, ptr @touch_cap_stop_streaming, ptr @touch_cap_buf_queue, ptr @touch_cap_buf_request_complete }, align 4
@.str = private unnamed_addr constant [12 x i8] c"Vivid Touch\00", align 1
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", align 1
@__func__.touch_cap_buf_prepare = private unnamed_addr constant [22 x i8] c"touch_cap_buf_prepare\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @touch_cap_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 276, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr %3, align 4
  %14 = icmp ult i32 %13, %9
  br i1 %14, label %25, label %16

15:                                               ; preds = %5
  store i32 %9, ptr %3, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 21
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %1, align 4
  %20 = add i32 %19, %18
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = sub i32 2, %18
  store i32 %23, ptr %1, align 4
  br label %24

24:                                               ; preds = %22, %16
  store i32 1, ptr %2, align 4
  br label %25

25:                                               ; preds = %24, %12
  %26 = phi i32 [ 0, %24 ], [ -22, %12 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @touch_cap_buf_prepare(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 276, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 154
  %8 = load i8, ptr %7, align 2, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i8 0, ptr %7, align 2
  br label %33

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = icmp eq i32 %6, 0
  br i1 %16, label %33, label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = icmp ult i32 %19, %6
  br i1 %20, label %24, label %31

21:                                               ; preds = %15
  %22 = load i32, ptr @vivid_debug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %27

24:                                               ; preds = %17
  %25 = load i32, ptr @vivid_debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ 0, %21 ], [ %19, %24 ]
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %29, ptr noundef nonnull @__func__.touch_cap_buf_prepare, i32 noundef %28, i32 noundef %6) #9
  br label %33

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 %6, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %27, %24, %21, %15, %10
  %34 = phi i32 [ -22, %10 ], [ -22, %27 ], [ -22, %21 ], [ 0, %15 ], [ 0, %31 ], [ -22, %24 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @touch_cap_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 273
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 155
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i8 0, ptr %6, align 1
  br label %13

10:                                               ; preds = %2
  %11 = tail call i32 @vivid_start_generating_touch_cap(ptr noundef %4) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %10, %9
  %14 = phi i32 [ -22, %9 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 249
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %13
  %19 = phi ptr [ %21, %18 ], [ %16, %13 ]
  %20 = getelementptr i8, ptr %19, i32 -640
  %21 = load ptr, ptr %19, align 8
  %22 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %21, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @vb2_buffer_done(ptr noundef %20, i32 noundef 3) #10
  %25 = icmp eq ptr %21, %15
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %13, %10
  %27 = phi i32 [ 0, %10 ], [ %14, %13 ], [ %14, %18 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @touch_cap_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  tail call void @vivid_stop_generating_touch_cap(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @touch_cap_buf_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 2
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 249
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 249, i32 1
  %10 = load ptr, ptr %9, align 4
  store ptr %7, ptr %9, align 4
  store ptr %8, ptr %7, align 4
  %11 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %7, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %12 = load i16, ptr %6, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @touch_cap_buf_request_complete(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 7, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 37
  tail call void @v4l2_ctrl_request_complete(ptr noundef %6, ptr noundef %7) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_enum_fmt_tch(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 909198420, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_g_fmt_tch(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 276
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %11, ptr noundef align 4 dereferenceable(48) %12, i32 48, i1 false)
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i32 [ 0, %10 ], [ -25, %3 ]
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_g_fmt_tch_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.v4l2_format, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %4) #10
  %8 = getelementptr inbounds i8, ptr %4, i32 52
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(204) %8, i8 0, i32 152, i1 false), !annotation !13
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 50
  %10 = load i8, ptr %9, align 8, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  store i32 1, ptr %4, align 4
  %13 = getelementptr inbounds %struct.v4l2_format, ptr %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 276
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %13, ptr noundef align 4 dereferenceable(48) %14, i32 48, i1 false)
  call void @fmt_sp2mp(ptr noundef nonnull %4, ptr noundef %2) #10
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i32 [ 0, %12 ], [ -25, %3 ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %4) #10
  ret i32 %16
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fmt_sp2mp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_g_parm_tch(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 50
  %9 = load i8, ptr %8, align 8, !range !8
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 1, i32 9
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  store i32 4096, ptr %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 275
  %17 = load i64, ptr %16, align 4
  store i64 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %13 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_enum_input_tch(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %2, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 2
  store i32 3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %9 = tail call i32 @strscpy(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef 32) #10
  %10 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 7
  store i32 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @vivid_g_input_tch(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #7 {
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_set_touch(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 276
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 276, i32 2
  store i32 909198420, ptr %6, align 4
  store i32 21, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 276, i32 1
  store i32 12, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 276, i32 3
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 276, i32 6
  store i32 11, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 276, i32 4
  store i32 42, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 276, i32 5
  store i32 504, ptr %11, align 4
  br label %12

12:                                               ; preds = %4, %2
  %13 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_s_input_tch(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #10
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 276
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 276, i32 2
  store i32 909198420, ptr %10, align 4
  store i32 21, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 276, i32 1
  store i32 12, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 276, i32 3
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 276, i32 6
  store i32 11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 276, i32 4
  store i32 42, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 276, i32 5
  store i32 504, ptr %15, align 4
  br label %16

16:                                               ; preds = %6, %3
  %17 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_fillbuff_tch(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 276
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 276, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %6, %4
  %8 = tail call ptr @vb2_plane_vaddr(ptr noundef %1, i32 noundef 0) #10
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 273
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  store i32 %10, ptr %11, align 8
  %12 = lshr i32 %10, 4
  %13 = and i32 %12, 7
  %14 = and i32 %10, 15
  %15 = icmp sgt i32 %7, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %16, %2
  %17 = phi i32 [ %29, %16 ], [ 0, %2 ]
  %18 = tail call i32 @get_random_u32() #10
  %19 = freeze i32 %18
  %20 = udiv i32 %19, 10
  %21 = mul i32 %20, 10
  %22 = sub i32 %19, %21
  %23 = icmp eq i32 %22, 0
  %24 = urem i32 %20, 7
  %25 = trunc i32 %24 to i16
  %26 = add nsw i16 %25, -3
  %27 = select i1 %23, i16 %26, i16 0
  %28 = getelementptr i16, ptr %8, i32 %17
  store i16 %27, ptr %28, align 2
  %29 = add nuw nsw i32 %17, 1
  %30 = icmp eq i32 %29, %7
  br i1 %30, label %31, label %16

31:                                               ; preds = %16, %2
  %32 = icmp ugt i32 %14, 11
  br i1 %32, label %184, label %33

33:                                               ; preds = %31
  %34 = icmp eq i32 %14, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 277
  %37 = load i32, ptr %36, align 4
  br label %41

38:                                               ; preds = %33
  %39 = tail call i32 @get_random_u32() #10
  %40 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 277
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %37, %35 ], [ %39, %38 ]
  switch i32 %13, label %181 [
    i32 0, label %48
    i32 1, label %52
    i32 2, label %55
    i32 3, label %62
    i32 4, label %70
    i32 5, label %89
    i32 6, label %43
    i32 7, label %133
  ]

43:                                               ; preds = %41
  %44 = load i32, ptr %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %184, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr %5, align 4
  br label %107

48:                                               ; preds = %41
  %49 = icmp eq i32 %14, 2
  br i1 %49, label %50, label %184

50:                                               ; preds = %48
  %51 = urem i32 %42, %7
  br label %182

52:                                               ; preds = %41
  switch i32 %14, label %184 [
    i32 4, label %53
    i32 2, label %53
  ]

53:                                               ; preds = %52, %52
  %54 = urem i32 %42, %7
  br label %182

55:                                               ; preds = %41
  %56 = icmp eq i32 %14, 4
  %57 = and i32 %10, 11
  %58 = icmp eq i32 %57, 2
  %59 = or i1 %58, %56
  br i1 %59, label %60, label %184

60:                                               ; preds = %55
  %61 = urem i32 %42, %7
  br label %182

62:                                               ; preds = %41
  %63 = load i32, ptr %5, align 4
  %64 = urem i32 %42, %63
  %65 = load i32, ptr %3, align 4
  %66 = mul i32 %65, %64
  %67 = udiv i32 %65, 12
  %68 = mul nuw i32 %67, %14
  %69 = add i32 %68, %66
  br label %182

70:                                               ; preds = %41
  %71 = load i32, ptr %3, align 4
  %72 = lshr i32 %71, 1
  %73 = load i32, ptr %5, align 4
  %74 = lshr i32 %73, 1
  %75 = sub nuw nsw i32 11, %14
  %76 = mul i32 %72, %75
  %77 = udiv i32 %76, 12
  %78 = mul i32 %74, %75
  %79 = udiv i32 %78, 12
  %80 = sub nsw i32 %72, %77
  %81 = sub nsw i32 %74, %79
  %82 = mul i32 %81, %71
  %83 = add i32 %80, %82
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %3, ptr noundef %8, i32 noundef %83)
  %84 = add nuw i32 %77, %72
  %85 = load i32, ptr %3, align 4
  %86 = add nuw i32 %79, %74
  %87 = mul i32 %86, %85
  %88 = add i32 %84, %87
  br label %182

89:                                               ; preds = %41
  %90 = load i32, ptr %3, align 4
  %91 = lshr i32 %90, 1
  %92 = load i32, ptr %5, align 4
  %93 = lshr i32 %92, 1
  %94 = mul i32 %91, %14
  %95 = udiv i32 %94, 12
  %96 = mul i32 %93, %14
  %97 = udiv i32 %96, 12
  %98 = sub nsw i32 %91, %95
  %99 = sub nsw i32 %93, %97
  %100 = mul i32 %99, %90
  %101 = add i32 %98, %100
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %3, ptr noundef %8, i32 noundef %101)
  %102 = add nuw i32 %95, %91
  %103 = load i32, ptr %3, align 4
  %104 = add nuw i32 %97, %93
  %105 = mul i32 %104, %103
  %106 = add i32 %102, %105
  br label %182

107:                                              ; preds = %128, %46
  %108 = phi i32 [ %129, %128 ], [ %44, %46 ]
  %109 = phi i32 [ %130, %128 ], [ %47, %46 ]
  %110 = phi i32 [ %131, %128 ], [ 0, %46 ]
  %111 = lshr i32 %109, 1
  %112 = icmp ult i32 %111, %109
  br i1 %112, label %113, label %128

113:                                              ; preds = %113, %107
  %114 = phi i32 [ %123, %113 ], [ %111, %107 ]
  %115 = tail call i32 @get_random_u32() #10
  %116 = urem i32 %115, 40
  %117 = trunc i32 %116 to i16
  %118 = add nuw nsw i16 %117, 180
  %119 = load i32, ptr %3, align 4
  %120 = mul i32 %119, %114
  %121 = add i32 %120, %110
  %122 = getelementptr i16, ptr %8, i32 %121
  store i16 %118, ptr %122, align 2
  %123 = add nuw i32 %114, 1
  %124 = load i32, ptr %5, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %113, label %126

126:                                              ; preds = %113
  %127 = load i32, ptr %3, align 4
  br label %128

128:                                              ; preds = %126, %107
  %129 = phi i32 [ %127, %126 ], [ %108, %107 ]
  %130 = phi i32 [ %124, %126 ], [ %109, %107 ]
  %131 = add nuw i32 %110, 1
  %132 = icmp ult i32 %131, %129
  br i1 %132, label %107, label %184

133:                                              ; preds = %133, %41
  %134 = phi i32 [ %179, %133 ], [ 0, %41 ]
  %135 = load i32, ptr %5, align 4
  %136 = mul i32 %135, %134
  %137 = lshr i32 %136, 2
  %138 = lshr i32 %135, 3
  %139 = add nuw nsw i32 %137, %138
  %140 = load i32, ptr %3, align 4
  %141 = lshr i32 %140, 3
  %142 = mul i32 %139, %140
  %143 = add i32 %141, %142
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %3, ptr noundef %8, i32 noundef %143)
  %144 = load i32, ptr %5, align 4
  %145 = mul i32 %144, %134
  %146 = lshr i32 %145, 2
  %147 = lshr i32 %144, 3
  %148 = add nuw nsw i32 %146, %147
  %149 = load i32, ptr %3, align 4
  %150 = lshr i32 %149, 2
  %151 = lshr i32 %149, 3
  %152 = add nuw nsw i32 %150, %151
  %153 = mul i32 %148, %149
  %154 = add i32 %152, %153
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %3, ptr noundef %8, i32 noundef %154)
  %155 = load i32, ptr %5, align 4
  %156 = mul i32 %155, %134
  %157 = lshr i32 %156, 2
  %158 = lshr i32 %155, 3
  %159 = add nuw nsw i32 %157, %158
  %160 = load i32, ptr %3, align 4
  %161 = lshr i32 %160, 1
  %162 = and i32 %161, 1073741823
  %163 = lshr i32 %160, 3
  %164 = add nuw nsw i32 %162, %163
  %165 = mul i32 %159, %160
  %166 = add i32 %164, %165
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %3, ptr noundef %8, i32 noundef %166)
  %167 = load i32, ptr %5, align 4
  %168 = mul i32 %167, %134
  %169 = lshr i32 %168, 2
  %170 = lshr i32 %167, 3
  %171 = add nuw nsw i32 %169, %170
  %172 = load i32, ptr %3, align 4
  %173 = mul i32 %172, 3
  %174 = lshr i32 %173, 2
  %175 = lshr i32 %172, 3
  %176 = add nuw nsw i32 %174, %175
  %177 = mul i32 %171, %172
  %178 = add i32 %176, %177
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %3, ptr noundef %8, i32 noundef %178)
  %179 = add nuw nsw i32 %134, 1
  %180 = icmp eq i32 %179, 4
  br i1 %180, label %184, label %133

181:                                              ; preds = %41
  unreachable

182:                                              ; preds = %89, %70, %62, %60, %53, %50
  %183 = phi i32 [ %69, %62 ], [ %88, %70 ], [ %106, %89 ], [ %51, %50 ], [ %54, %53 ], [ %61, %60 ]
  tail call fastcc void @vivid_tch_buf_set(ptr noundef %3, ptr noundef %8, i32 noundef %183)
  br label %184

184:                                              ; preds = %182, %133, %128, %55, %52, %48, %43, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vivid_tch_buf_set(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load i32, ptr %0, align 4
  %5 = freeze i32 %4
  %6 = udiv i32 %2, %5
  %7 = mul i32 %6, %5
  %8 = sub i32 %2, %7
  %9 = tail call i32 @get_random_u32() #10
  %10 = urem i32 %9, 40
  %11 = trunc i32 %10 to i16
  %12 = add nuw nsw i16 %11, 180
  %13 = getelementptr i16, ptr %1, i32 %2
  store i16 %12, ptr %13, align 2
  %14 = icmp ne i32 %8, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = tail call i32 @get_random_u32() #10
  %17 = urem i32 %16, 40
  %18 = trunc i32 %17 to i16
  %19 = add nuw nsw i16 %18, 90
  %20 = add i32 %2, -1
  %21 = getelementptr i16, ptr %1, i32 %20
  store i16 %19, ptr %21, align 2
  br label %22

22:                                               ; preds = %15, %3
  %23 = load i32, ptr %0, align 4
  %24 = add i32 %23, -1
  %25 = icmp ult i32 %8, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = tail call i32 @get_random_u32() #10
  %28 = urem i32 %27, 40
  %29 = trunc i32 %28 to i16
  %30 = add nuw nsw i16 %29, 90
  %31 = add i32 %2, 1
  %32 = getelementptr i16, ptr %1, i32 %31
  store i16 %30, ptr %32, align 2
  br label %33

33:                                               ; preds = %26, %22
  %34 = icmp ule i32 %4, %2
  br i1 %34, label %35, label %43

35:                                               ; preds = %33
  %36 = tail call i32 @get_random_u32() #10
  %37 = urem i32 %36, 40
  %38 = trunc i32 %37 to i16
  %39 = add nuw nsw i16 %38, 90
  %40 = load i32, ptr %0, align 4
  %41 = sub i32 %2, %40
  %42 = getelementptr i16, ptr %1, i32 %41
  store i16 %39, ptr %42, align 2
  br label %43

43:                                               ; preds = %35, %33
  %44 = getelementptr inbounds %struct.v4l2_pix_format, ptr %0, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, -1
  %47 = icmp ult i32 %6, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = tail call i32 @get_random_u32() #10
  %50 = urem i32 %49, 40
  %51 = trunc i32 %50 to i16
  %52 = add nuw nsw i16 %51, 90
  %53 = load i32, ptr %0, align 4
  %54 = add i32 %53, %2
  %55 = getelementptr i16, ptr %1, i32 %54
  store i16 %52, ptr %55, align 2
  br label %56

56:                                               ; preds = %48, %43
  %57 = and i1 %34, %14
  br i1 %57, label %58, label %67

58:                                               ; preds = %56
  %59 = tail call i32 @get_random_u32() #10
  %60 = urem i32 %59, 40
  %61 = trunc i32 %60 to i16
  %62 = add nuw nsw i16 %61, 45
  %63 = load i32, ptr %0, align 4
  %64 = xor i32 %63, -1
  %65 = add i32 %64, %2
  %66 = getelementptr i16, ptr %1, i32 %65
  store i16 %62, ptr %66, align 2
  br label %67

67:                                               ; preds = %58, %56
  %68 = load i32, ptr %0, align 4
  %69 = add i32 %68, -1
  %70 = icmp ult i32 %8, %69
  %71 = and i1 %34, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = tail call i32 @get_random_u32() #10
  %74 = urem i32 %73, 40
  %75 = trunc i32 %74 to i16
  %76 = add nuw nsw i16 %75, 45
  %77 = add i32 %2, 1
  %78 = load i32, ptr %0, align 4
  %79 = sub i32 %77, %78
  %80 = getelementptr i16, ptr %1, i32 %79
  store i16 %76, ptr %80, align 2
  br label %81

81:                                               ; preds = %72, %67
  br i1 %14, label %82, label %95

82:                                               ; preds = %81
  %83 = load i32, ptr %44, align 4
  %84 = add i32 %83, -1
  %85 = icmp ult i32 %6, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = tail call i32 @get_random_u32() #10
  %88 = urem i32 %87, 40
  %89 = trunc i32 %88 to i16
  %90 = add nuw nsw i16 %89, 45
  %91 = add i32 %2, -1
  %92 = load i32, ptr %0, align 4
  %93 = add i32 %91, %92
  %94 = getelementptr i16, ptr %1, i32 %93
  store i16 %90, ptr %94, align 2
  br label %95

95:                                               ; preds = %86, %82, %81
  %96 = load i32, ptr %0, align 4
  %97 = add i32 %96, -1
  %98 = icmp ult i32 %8, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = load i32, ptr %44, align 4
  %101 = add i32 %100, -1
  %102 = icmp ult i32 %6, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = tail call i32 @get_random_u32() #10
  %105 = urem i32 %104, 40
  %106 = trunc i32 %105 to i16
  %107 = add nuw nsw i16 %106, 45
  %108 = add i32 %2, 1
  %109 = load i32, ptr %0, align 4
  %110 = add i32 %108, %109
  %111 = getelementptr i16, ptr %1, i32 %110
  store i16 %107, ptr %111, align 2
  br label %112

112:                                              ; preds = %103, %99, %95
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_start_generating_touch_cap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_stop_generating_touch_cap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }

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
!9 = !{i64 2148944355}
!10 = !{i64 2148940179}
!11 = !{i64 2148940254, i64 2148940281, i64 2148940328, i64 2148940350, i64 2148940378, i64 2148940398}
!12 = !{i64 2148967358}
!13 = !{!"auto-init"}
