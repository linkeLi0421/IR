; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-meta-out.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-meta-out.c"
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.79, %union.anon.80, i32, ptr, i32, %struct.anon.81, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.79 = type { i64 }
%union.anon.80 = type { ptr }
%struct.anon.81 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vivid_meta_out_buf = type { i16, i16, i16, i16 }

@vivid_meta_out_qops = dso_local local_unnamed_addr constant %struct.vb2_ops { ptr @meta_out_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @meta_out_buf_prepare, ptr null, ptr null, ptr @meta_out_start_streaming, ptr @meta_out_stop_streaming, ptr @meta_out_buf_queue, ptr @meta_out_buf_request_complete }, align 4
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [58 x i8] c"\017%s:  %s brightness %u contrast %u saturation %u hue %d\0A\00", align 1
@__func__.vivid_meta_out_process = private unnamed_addr constant [23 x i8] c"vivid_meta_out_process\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\017%s: %s\0A\00", align 1
@__func__.meta_out_buf_prepare = private unnamed_addr constant [21 x i8] c"meta_out_buf_prepare\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", align 1
@__func__.meta_out_start_streaming = private unnamed_addr constant [25 x i8] c"meta_out_start_streaming\00", align 1
@__func__.meta_out_stop_streaming = private unnamed_addr constant [24 x i8] c"meta_out_stop_streaming\00", align 1
@__func__.meta_out_buf_queue = private unnamed_addr constant [19 x i8] c"meta_out_buf_queue\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @meta_out_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #0 {
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
  %18 = icmp ult i32 %17, 8
  br i1 %18, label %29, label %20

19:                                               ; preds = %13
  store i32 8, ptr %3, align 4
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
define internal i32 @meta_out_buf_prepare(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %8, ptr noundef nonnull @__func__.meta_out_buf_prepare) #4
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
  %22 = icmp ult i32 %21, 8
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
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %31, ptr noundef nonnull @__func__.meta_out_buf_prepare, i32 noundef %30, i32 noundef 8) #4
  br label %35

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 8, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %29, %26, %23, %14
  %36 = phi i32 [ -22, %14 ], [ 0, %33 ], [ -22, %29 ], [ -22, %23 ], [ -22, %26 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meta_out_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %8, ptr noundef nonnull @__func__.meta_out_start_streaming) #4
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 311
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 155
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i8 0, ptr %12, align 1
  br label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 312
  %18 = tail call i32 @vivid_start_generating_vid_out(ptr noundef %4, ptr noundef %17) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16, %15
  %21 = phi i32 [ -22, %15 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 291
  %23 = load ptr, ptr %22, align 4
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
  tail call void @vb2_buffer_done(ptr noundef %27, i32 noundef 3) #5
  %32 = icmp eq ptr %28, %22
  br i1 %32, label %33, label %25

33:                                               ; preds = %25, %20, %16
  %34 = phi i32 [ 0, %16 ], [ %21, %20 ], [ %21, %25 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meta_out_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @vivid_debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %7, ptr noundef nonnull @__func__.meta_out_stop_streaming) #4
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 312
  tail call void @vivid_stop_generating_vid_out(ptr noundef %3, ptr noundef %10) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meta_out_buf_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %8, ptr noundef nonnull @__func__.meta_out_buf_queue) #4
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 291
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 291, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %17 = load i16, ptr %11, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meta_out_buf_request_complete(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 7, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 35
  tail call void @v4l2_ctrl_request_complete(ptr noundef %6, ptr noundef %7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_enum_fmt_meta_out(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #5
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
  store i32 14, ptr %16, align 4
  %17 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 1146505558, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %12, %3
  %19 = phi i32 [ 0, %15 ], [ -22, %3 ], [ -22, %12 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_meta_out(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #5
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
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 74
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  store i32 1146505558, ptr %7, align 1
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 8, ptr %18, align 1
  br label %19

19:                                               ; preds = %17, %13, %3
  %20 = phi i32 [ 0, %17 ], [ -22, %13 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_meta_out_process(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @vb2_plane_vaddr(ptr noundef %1, i32 noundef 0) #5
  %4 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 78
  %5 = load ptr, ptr %4, align 8
  %6 = load i16, ptr %3, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @mutex_lock(ptr noundef %11) #5
  %12 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %5, i32 noundef %7) #5
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @mutex_unlock(ptr noundef %15) #5
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 79
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.vivid_meta_out_buf, ptr %3, i32 0, i32 1
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void @mutex_lock(ptr noundef %24) #5
  %25 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %17, i32 noundef %20) #5
  %26 = load ptr, ptr %21, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void @mutex_unlock(ptr noundef %28) #5
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 80
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.vivid_meta_out_buf, ptr %3, i32 0, i32 2
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %30, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void @mutex_lock(ptr noundef %37) #5
  %38 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %30, i32 noundef %33) #5
  %39 = load ptr, ptr %34, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  tail call void @mutex_unlock(ptr noundef %41) #5
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 81
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.vivid_meta_out_buf, ptr %3, i32 0, i32 3
  %45 = load i16, ptr %44, align 2
  %46 = sext i16 %45 to i32
  %47 = getelementptr inbounds %struct.v4l2_ctrl, ptr %43, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  tail call void @mutex_lock(ptr noundef %50) #5
  %51 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %43, i32 noundef %46) #5
  %52 = load ptr, ptr %47, align 8
  %53 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void @mutex_unlock(ptr noundef %54) #5
  %55 = load i32, ptr @vivid_debug, align 4
  %56 = icmp ugt i32 %55, 1
  br i1 %56, label %57, label %68

57:                                               ; preds = %2
  %58 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %59 = load i16, ptr %3, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, ptr %18, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, ptr %31, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16, ptr %44, align 2
  %66 = sext i16 %65 to i32
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %58, ptr noundef nonnull @__func__.vivid_meta_out_process, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66) #4
  br label %68

68:                                               ; preds = %57, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_start_generating_vid_out(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_stop_generating_vid_out(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }

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
!9 = !{i64 2149185798}
!10 = !{i64 2149181622}
!11 = !{i64 2149181697, i64 2149181724, i64 2149181771, i64 2149181793, i64 2149181821, i64 2149181841}
!12 = !{i64 2149208801}
