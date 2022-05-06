; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-vbi-out.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-vbi-out.c"
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
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_format = type { i32, %union.anon.79 }
%union.anon.79 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.81, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.81 = type { i8 }

@vivid_vbi_out_qops = dso_local local_unnamed_addr constant %struct.vb2_ops { ptr @vbi_out_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vbi_out_buf_prepare, ptr null, ptr null, ptr @vbi_out_start_streaming, ptr @vbi_out_stop_streaming, ptr @vbi_out_buf_queue, ptr @vbi_out_buf_request_complete }, align 4
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"\017%s: %s\0A\00", align 1
@__func__.vbi_out_buf_prepare = private unnamed_addr constant [20 x i8] c"vbi_out_buf_prepare\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", align 1
@__func__.vbi_out_start_streaming = private unnamed_addr constant [24 x i8] c"vbi_out_start_streaming\00", align 1
@__func__.vbi_out_stop_streaming = private unnamed_addr constant [23 x i8] c"vbi_out_stop_streaming\00", align 1
@__func__.vbi_out_buf_queue = private unnamed_addr constant [18 x i8] c"vbi_out_buf_queue\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vbi_out_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 200
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 63744
  %14 = icmp eq i64 %13, 0
  %15 = select i1 %14, i32 51840, i32 34560
  br label %16

16:                                               ; preds = %10, %5
  %17 = phi i32 [ %15, %10 ], [ 2304, %5 ]
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 199
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 57, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 2
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  store i32 %17, ptr %3, align 4
  %24 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 21
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %1, align 4
  %27 = add i32 %26, %25
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = sub i32 2, %25
  store i32 %30, ptr %1, align 4
  br label %31

31:                                               ; preds = %29, %23
  store i32 1, ptr %2, align 4
  br label %32

32:                                               ; preds = %31, %16
  %33 = phi i32 [ 0, %31 ], [ -22, %16 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vbi_out_buf_prepare(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 7
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 200
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 63744
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i32 51840, i32 34560
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i32 [ %12, %7 ], [ 2304, %1 ]
  %15 = load i32, ptr @vivid_debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %18, ptr noundef nonnull @__func__.vbi_out_buf_prepare) #4
  br label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 154
  %22 = load i8, ptr %21, align 2, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i8 0, ptr %21, align 2
  br label %45

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %31 = load i32, ptr %30, align 8
  %32 = icmp ult i32 %31, %14
  br i1 %32, label %36, label %43

33:                                               ; preds = %25
  %34 = load i32, ptr @vivid_debug, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %39

36:                                               ; preds = %29
  %37 = load i32, ptr @vivid_debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ 0, %33 ], [ %31, %36 ]
  %41 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %41, ptr noundef nonnull @__func__.vbi_out_buf_prepare, i32 noundef %40, i32 noundef %14) #4
  br label %45

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 %14, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %39, %36, %33, %24
  %46 = phi i32 [ -22, %24 ], [ 0, %43 ], [ -22, %39 ], [ -22, %33 ], [ -22, %36 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vbi_out_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8, ptr noundef nonnull @__func__.vbi_out_start_streaming) #4
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 307
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 155
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i8 0, ptr %12, align 1
  br label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 308
  %18 = tail call i32 @vivid_start_generating_vid_out(ptr noundef %4, ptr noundef %17) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16, %15
  %21 = phi i32 [ -22, %15 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 289
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
  tail call void @vb2_buffer_done(ptr noundef %27, i32 noundef 3) #5
  %32 = icmp eq ptr %28, %22
  br i1 %32, label %33, label %25

33:                                               ; preds = %25, %20, %16
  %34 = phi i32 [ 0, %16 ], [ %21, %20 ], [ %21, %25 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vbi_out_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @vivid_debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %7, ptr noundef nonnull @__func__.vbi_out_stop_streaming) #4
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 308
  tail call void @vivid_stop_generating_vid_out(ptr noundef %3, ptr noundef %10) #5
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 211
  store i8 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 213
  store i8 0, ptr %12, align 1
  %13 = getelementptr %struct.vivid_dev, ptr %3, i32 0, i32 213, i32 1
  store i8 0, ptr %13, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vbi_out_buf_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8, ptr noundef nonnull @__func__.vbi_out_buf_queue) #4
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 289
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 289, i32 1
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
define internal void @vbi_out_buf_request_complete(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 7, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 25
  tail call void @v4l2_ctrl_request_complete(ptr noundef %6, ptr noundef %7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vbi_out(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 200
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 63744
  %11 = icmp eq i64 %10, 0
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 2
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 67
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  store i32 25000000, ptr %7, align 4
  %22 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 24, ptr %22, align 4
  %23 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 1440, ptr %23, align 4
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1497715271, ptr %24, align 4
  %25 = select i1 %11, i32 6, i32 10
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = select i1 %11, i32 319, i32 273
  %28 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %27, ptr %28, align 4
  %29 = select i1 %11, i32 18, i32 12
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %31 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 %29, ptr %31, align 4
  store i32 %29, ptr %30, align 4
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 138
  %33 = load i8, ptr %32, align 4, !range !8
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 0, ptr %37, align 4
  %38 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 0, ptr %38, align 4
  br label %39

39:                                               ; preds = %21, %17, %3
  %40 = phi i32 [ 0, %21 ], [ -22, %17 ], [ -22, %3 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vbi_out(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #5
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 5, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %9, i32 0, i32 200
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 63744
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %9, i32 0, i32 199
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.vivid_dev, ptr %9, i32 0, i32 57, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %20, label %49

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %9, i32 0, i32 67
  %22 = load i8, ptr %21, align 4, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %20
  store i32 25000000, ptr %10, align 4
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 1440, ptr %26, align 4
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1497715271, ptr %27, align 4
  %28 = select i1 %14, i32 6, i32 10
  %29 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  %30 = select i1 %14, i32 319, i32 273
  %31 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %30, ptr %31, align 4
  %32 = select i1 %14, i32 18, i32 12
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %34 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 %32, ptr %34, align 4
  store i32 %32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.vivid_dev, ptr %9, i32 0, i32 138
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 0, ptr %40, align 4
  %41 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 288, i32 21
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %24
  %46 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 309
  store i8 0, ptr %46, align 1
  %47 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 24, i32 10
  %48 = load ptr, ptr %47, align 8
  store i32 5, ptr %48, align 4
  br label %49

49:                                               ; preds = %45, %24, %20, %3
  %50 = phi i32 [ 0, %45 ], [ -16, %24 ], [ -22, %20 ], [ -22, %3 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_sliced_vbi_out(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 68
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 207
  %19 = load i32, ptr %18, align 8
  tail call void @vivid_fill_service_lines(ptr noundef %7, i32 noundef %19) #5
  br label %20

20:                                               ; preds = %17, %13, %3
  %21 = phi i32 [ 0, %17 ], [ -22, %13 ], [ -22, %3 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_fill_service_lines(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_sliced_vbi_out(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 200
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 63744
  %11 = icmp eq i64 %10, 0
  %12 = load i16, ptr %7, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 68
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = select i1 %11, i32 16385, i32 4096
  %25 = and i32 %24, %13
  tail call void @vivid_fill_service_lines(ptr noundef %7, i32 noundef %25) #5
  br label %26

26:                                               ; preds = %23, %19, %3
  %27 = phi i32 [ 0, %23 ], [ -22, %19 ], [ -22, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_sliced_vbi_out(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = tail call ptr @video_devdata(ptr noundef %0) #5
  %9 = getelementptr inbounds %struct.video_device, ptr %8, i32 0, i32 5, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %10, i32 0, i32 200
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 63744
  %14 = icmp eq i64 %13, 0
  %15 = load i16, ptr %7, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %10, i32 0, i32 199
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.vivid_dev, ptr %10, i32 0, i32 57, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 2
  br i1 %21, label %22, label %39

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %10, i32 0, i32 68
  %24 = load i8, ptr %23, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = select i1 %14, i32 16385, i32 4096
  %28 = and i32 %27, %16
  tail call void @vivid_fill_service_lines(ptr noundef %7, i32 noundef %28) #5
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 288, i32 21
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i16, ptr %7, align 4
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 207
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 309
  store i8 1, ptr %36, align 1
  %37 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 24, i32 10
  %38 = load ptr, ptr %37, align 8
  store i32 7, ptr %38, align 4
  br label %39

39:                                               ; preds = %32, %26, %22, %3
  %40 = phi i32 [ 0, %32 ], [ -16, %26 ], [ -22, %22 ], [ -22, %3 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_sliced_vbi_out_process(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @vb2_plane_vaddr(ptr noundef %1, i32 noundef 0) #5
  %4 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 6
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ %10, %7 ], [ 0, %2 ]
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 213
  store i8 0, ptr %13, align 1
  %14 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 213, i32 1
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 211
  store i8 0, ptr %15, align 8
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %72, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 200
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 212
  %20 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 212, i32 1
  br label %21

21:                                               ; preds = %69, %17
  %22 = phi i32 [ %12, %17 ], [ %24, %69 ]
  %23 = phi ptr [ %3, %17 ], [ %70, %69 ]
  %24 = add nsw i32 %22, -1
  %25 = load i32, ptr %23, align 4
  switch i32 %25, label %69 [
    i32 4096, label %26
    i32 16384, label %52
  ]

26:                                               ; preds = %21
  %27 = load i64, ptr %18, align 8
  %28 = and i64 %27, 63744
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %69, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %23, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 21
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %23, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 213, i32 %38
  store i8 1, ptr %39, align 1
  %40 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %23, i32 0, i32 4
  %41 = load i8, ptr %40, align 4
  %42 = load i32, ptr %35, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 214, i32 %44
  store i8 %41, ptr %45, align 1
  %46 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %23, i32 0, i32 4, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = load i32, ptr %35, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 214, i32 %50, i32 1
  store i8 %47, ptr %51, align 1
  br label %69

52:                                               ; preds = %21
  %53 = load i64, ptr %18, align 8
  %54 = and i64 %53, 16713471
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %23, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %23, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 23
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  store i8 1, ptr %15, align 8
  %65 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %23, i32 0, i32 4
  %66 = load i8, ptr %65, align 4
  store i8 %66, ptr %19, align 1
  %67 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %23, i32 0, i32 4, i32 1
  %68 = load i8, ptr %67, align 1
  store i8 %68, ptr %20, align 1
  br label %69

69:                                               ; preds = %64, %60, %56, %52, %34, %30, %26, %21
  %70 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %23, i32 1
  %71 = icmp eq i32 %24, 0
  br i1 %71, label %72, label %21

72:                                               ; preds = %69, %11
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
!9 = !{i64 2149188281}
!10 = !{i64 2149184105}
!11 = !{i64 2149184180, i64 2149184207, i64 2149184254, i64 2149184276, i64 2149184304, i64 2149184324}
!12 = !{i64 2149211284}
