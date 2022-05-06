; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-kthread-out.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-kthread-out.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.101, %struct.anon.102, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.103, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.103 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.82 }
%struct.anon.82 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.95 }
%union.anon.95 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.77, i32, i32 }
%union.anon.77 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"\017%s: %s\0A\00", align 1
@__func__.vivid_start_generating_vid_out = private unnamed_addr constant [31 x i8] c"vivid_start_generating_vid_out\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [11 x i8] c"%s-vid-out\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\013%s: kernel_thread() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\017%s: returning from %s\0A\00", align 1
@__func__.vivid_stop_generating_vid_out = private unnamed_addr constant [30 x i8] c"vivid_stop_generating_vid_out\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\017%s: vid_out buffer %d done\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\017%s: vbi_out buffer %d done\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\017%s: meta_out buffer %d done\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\017%s: Video Output Thread Start\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\017%s: Video Output Thread End\0A\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"\017%s: Video Output Thread Tick\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_start_generating_vid_out(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @vivid_debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6, ptr noundef nonnull @__func__.vivid_start_generating_vid_out) #5
  br label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 298
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 301
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 158
  %16 = load i8, ptr %15, align 2, !range !8
  %17 = shl nuw i8 %16, 7
  %18 = zext i8 %17 to i32
  %19 = add i32 %14, %18
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 305
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 303
  store i32 %19, ptr %23, align 8
  br label %31

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 308
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 306
  store i32 %19, ptr %28, align 4
  br label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 310
  store i32 %19, ptr %30, align 8
  br label %31

31:                                               ; preds = %29, %27, %22
  store i8 1, ptr %1, align 1
  br label %54

32:                                               ; preds = %8
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 299
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 158
  %36 = load i8, ptr %35, align 2, !range !8
  %37 = shl nuw i8 %36, 7
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 303
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 306
  store i32 %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 310
  store i32 %38, ptr %41, align 8
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %43 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @vivid_thread_vid_out, ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.1, ptr noundef %42) #6
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = ptrtoint ptr %43 to i32
  store ptr null, ptr %9, align 4
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %42) #5
  br label %54

48:                                               ; preds = %32
  %49 = tail call i32 @wake_up_process(ptr noundef %43) #6
  store ptr %43, ptr %9, align 4
  store i8 1, ptr %1, align 1
  tail call fastcc void @vivid_grab_controls(ptr noundef %0, i1 noundef zeroext true)
  %50 = load i32, ptr @vivid_debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %42, ptr noundef nonnull @__func__.vivid_start_generating_vid_out) #5
  br label %54

54:                                               ; preds = %52, %48, %45, %31
  %55 = phi i32 [ 0, %31 ], [ %46, %45 ], [ 0, %48 ], [ 0, %52 ]
  ret i32 %55
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_thread_vid_out(ptr noundef %0) #0 {
  %2 = load i32, ptr @vivid_debug, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %5) #5
  br label %7

7:                                                ; preds = %4, %1
  %8 = tail call zeroext i1 @set_freezable() #6
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 300
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 158
  %11 = load i8, ptr %10, align 2, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 301
  store i32 -128, ptr %14, align 8
  br label %15

15:                                               ; preds = %13, %7
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 299
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 306
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 303
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 310
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 302
  store i8 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 301
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 279
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 279, i32 1
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 280
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 304
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 307
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 311
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 161
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 38
  %33 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 287
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 287, i32 1
  %35 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 289
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 291
  %37 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 21
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 160
  %39 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 156
  %40 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 25
  %41 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 309
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 35
  br label %43

43:                                               ; preds = %275, %15
  %44 = load volatile i32, ptr @system_freezing_cnt, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46, !prof !9

46:                                               ; preds = %43
  %47 = tail call ptr @llvm.thread.pointer() #6
  %48 = tail call zeroext i1 @freezing_slow_path(ptr noundef %47) #6
  br i1 %48, label %49, label %51, !prof !10

49:                                               ; preds = %46
  %50 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #6
  br label %51

51:                                               ; preds = %49, %46, %43
  %52 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %52, label %282, label %53

53:                                               ; preds = %51
  %54 = tail call i32 @mutex_trylock(ptr noundef %22) #6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @schedule() #6
  br label %275

57:                                               ; preds = %53
  %58 = load volatile i32, ptr @jiffies, align 64
  %59 = load i8, ptr %21, align 4, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, ptr %17, align 8
  br label %66

63:                                               ; preds = %57
  store i32 %58, ptr %17, align 8
  %64 = load i32, ptr %23, align 8
  %65 = add i32 %64, 1
  store i32 %65, ptr %9, align 4
  store i8 0, ptr %21, align 4
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i32 [ %62, %61 ], [ %58, %63 ]
  %68 = load i32, ptr %24, align 4
  %69 = load i32, ptr %25, align 4
  %70 = load i32, ptr %26, align 4
  %71 = icmp eq i32 %70, 7
  %72 = zext i1 %71 to i32
  %73 = shl i32 %69, %72
  %74 = sub i32 %58, %67
  %75 = zext i32 %74 to i64
  %76 = zext i32 %73 to i64
  %77 = mul nuw i64 %76, %75
  %78 = mul i32 %68, 100
  %79 = lshr exact i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = add nuw i64 %77, %80
  %82 = icmp ult i64 %81, 4294967296
  br i1 %82, label %83, label %87, !prof !9

83:                                               ; preds = %66
  %84 = trunc i64 %81 to i32
  %85 = udiv i32 %84, %78
  %86 = zext i32 %85 to i64
  br label %90

87:                                               ; preds = %66
  %88 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %78, i64 %81) #7, !srcloc !11
  %89 = extractvalue { i64, i64 } %88, 1
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i64 [ %86, %83 ], [ %89, %87 ]
  %92 = icmp ugt i32 %74, -268727296
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %9, align 4
  br label %97

95:                                               ; preds = %90
  store i32 %58, ptr %17, align 8
  %96 = trunc i64 %91 to i32
  store i32 %96, ptr %9, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %96, %95 ], [ %94, %93 ]
  %99 = phi i64 [ 0, %95 ], [ %91, %93 ]
  %100 = trunc i64 %99 to i32
  %101 = add i32 %98, %100
  store i32 %101, ptr %23, align 8
  %102 = load i32, ptr %19, align 8
  %103 = sub i32 %101, %102
  store i32 %103, ptr %27, align 4
  %104 = load i32, ptr %18, align 4
  %105 = sub i32 %101, %104
  store i32 %105, ptr %28, align 8
  %106 = load i32, ptr %20, align 8
  %107 = sub i32 %101, %106
  store i32 %107, ptr %29, align 4
  %108 = load i32, ptr @vivid_debug, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %97
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %30) #5
  br label %112

112:                                              ; preds = %110, %97
  %113 = load i32, ptr %31, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = tail call i32 @prandom_u32() #6
  %117 = zext i32 %116 to i64
  %118 = mul nuw nsw i64 %117, 100
  %119 = lshr i64 %118, 32
  %120 = trunc i64 %119 to i32
  %121 = load i32, ptr %31, align 8
  %122 = icmp ugt i32 %121, %120
  br i1 %122, label %247, label %123

123:                                              ; preds = %115, %112
  tail call void @_raw_spin_lock(ptr noundef %32) #6
  %124 = load volatile ptr, ptr %33, align 4
  %125 = icmp eq ptr %124, %33
  br i1 %125, label %138, label %126

126:                                              ; preds = %123
  %127 = load volatile ptr, ptr %33, align 4
  %128 = icmp eq ptr %127, %33
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %34, align 4
  %131 = icmp eq ptr %127, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %129, %126
  %133 = getelementptr i8, ptr %127, i32 -640
  %134 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = load ptr, ptr %127, align 4
  %137 = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  store ptr %135, ptr %137, align 4
  store volatile ptr %136, ptr %135, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %127, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %134, align 4
  br label %138

138:                                              ; preds = %132, %129, %123
  %139 = phi ptr [ null, %123 ], [ null, %129 ], [ %133, %132 ]
  %140 = load volatile ptr, ptr %35, align 4
  %141 = icmp eq ptr %140, %35
  br i1 %141, label %155, label %142

142:                                              ; preds = %138
  %143 = load i32, ptr %26, align 4
  %144 = icmp eq i32 %143, 7
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, ptr %28, align 8
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %145, %142
  %150 = getelementptr i8, ptr %140, i32 -640
  %151 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = load ptr, ptr %140, align 4
  %154 = getelementptr inbounds %struct.list_head, ptr %153, i32 0, i32 1
  store ptr %152, ptr %154, align 4
  store volatile ptr %153, ptr %152, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %140, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %151, align 4
  br label %155

155:                                              ; preds = %149, %145, %138
  %156 = phi ptr [ null, %138 ], [ %150, %149 ], [ null, %145 ]
  %157 = load volatile ptr, ptr %36, align 4
  %158 = icmp eq ptr %157, %36
  br i1 %158, label %165, label %159

159:                                              ; preds = %155
  %160 = getelementptr i8, ptr %157, i32 -640
  %161 = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = load ptr, ptr %157, align 4
  %164 = getelementptr inbounds %struct.list_head, ptr %163, i32 0, i32 1
  store ptr %162, ptr %164, align 4
  store volatile ptr %163, ptr %162, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %157, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %161, align 4
  br label %165

165:                                              ; preds = %159, %155
  %166 = phi ptr [ null, %155 ], [ %160, %159 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %167 = load i16, ptr %32, align 4
  %168 = add i16 %167, 1
  store i16 %168, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  %169 = icmp ne ptr %139, null
  %170 = icmp ne ptr %156, null
  %171 = or i1 %169, %170
  %172 = icmp ne ptr %166, null
  %173 = or i1 %171, %172
  br i1 %173, label %174, label %247

174:                                              ; preds = %165
  br i1 %169, label %175, label %200

175:                                              ; preds = %174
  %176 = getelementptr inbounds %struct.vb2_buffer, ptr %139, i32 0, i32 7, i32 2
  %177 = load ptr, ptr %176, align 4
  %178 = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %177, ptr noundef %37) #6
  %179 = load ptr, ptr %176, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %179, ptr noundef %37) #6
  %180 = load i32, ptr %27, align 4
  %181 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %139, i32 0, i32 4
  store i32 %180, ptr %181, align 8
  %182 = load i32, ptr %26, align 4
  %183 = icmp eq i32 %182, 7
  br i1 %183, label %184, label %186

184:                                              ; preds = %175
  %185 = lshr i32 %180, 1
  store i32 %185, ptr %181, align 8
  br label %186

186:                                              ; preds = %184, %175
  %187 = tail call i64 @ktime_get() #6
  %188 = load i64, ptr %38, align 8
  %189 = add i64 %188, %187
  %190 = getelementptr inbounds %struct.vb2_buffer, ptr %139, i32 0, i32 5
  store i64 %189, ptr %190, align 8
  %191 = load i8, ptr %39, align 4, !range !8
  %192 = icmp eq i8 %191, 0
  %193 = select i1 %192, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %139, i32 noundef %193) #6
  %194 = load i32, ptr @vivid_debug, align 4
  %195 = icmp ugt i32 %194, 1
  br i1 %195, label %196, label %200

196:                                              ; preds = %186
  %197 = getelementptr inbounds %struct.vb2_buffer, ptr %139, i32 0, i32 1
  %198 = load i32, ptr %197, align 4
  %199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %30, i32 noundef %198) #5
  br label %200

200:                                              ; preds = %196, %186, %174
  br i1 %170, label %201, label %225

201:                                              ; preds = %200
  %202 = getelementptr inbounds %struct.vb2_buffer, ptr %156, i32 0, i32 7, i32 2
  %203 = load ptr, ptr %202, align 4
  %204 = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %203, ptr noundef %40) #6
  %205 = load ptr, ptr %202, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %205, ptr noundef %40) #6
  %206 = load i8, ptr %41, align 1, !range !8
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %201
  tail call void @vivid_sliced_vbi_out_process(ptr noundef %0, ptr noundef nonnull %156) #6
  br label %209

209:                                              ; preds = %208, %201
  %210 = load i32, ptr %28, align 8
  %211 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %156, i32 0, i32 4
  store i32 %210, ptr %211, align 8
  %212 = tail call i64 @ktime_get() #6
  %213 = load i64, ptr %38, align 8
  %214 = add i64 %213, %212
  %215 = getelementptr inbounds %struct.vb2_buffer, ptr %156, i32 0, i32 5
  store i64 %214, ptr %215, align 8
  %216 = load i8, ptr %39, align 4, !range !8
  %217 = icmp eq i8 %216, 0
  %218 = select i1 %217, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %156, i32 noundef %218) #6
  %219 = load i32, ptr @vivid_debug, align 4
  %220 = icmp ugt i32 %219, 1
  br i1 %220, label %221, label %225

221:                                              ; preds = %209
  %222 = getelementptr inbounds %struct.vb2_buffer, ptr %156, i32 0, i32 1
  %223 = load i32, ptr %222, align 4
  %224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %30, i32 noundef %223) #5
  br label %225

225:                                              ; preds = %221, %209, %200
  br i1 %172, label %226, label %246

226:                                              ; preds = %225
  %227 = getelementptr inbounds %struct.vb2_buffer, ptr %166, i32 0, i32 7, i32 2
  %228 = load ptr, ptr %227, align 4
  %229 = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %228, ptr noundef %42) #6
  %230 = load ptr, ptr %227, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %230, ptr noundef %42) #6
  tail call void @vivid_meta_out_process(ptr noundef %0, ptr noundef nonnull %166) #6
  %231 = load i32, ptr %29, align 4
  %232 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %166, i32 0, i32 4
  store i32 %231, ptr %232, align 8
  %233 = tail call i64 @ktime_get() #6
  %234 = load i64, ptr %38, align 8
  %235 = add i64 %234, %233
  %236 = getelementptr inbounds %struct.vb2_buffer, ptr %166, i32 0, i32 5
  store i64 %235, ptr %236, align 8
  %237 = load i8, ptr %39, align 4, !range !8
  %238 = icmp eq i8 %237, 0
  %239 = select i1 %238, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %166, i32 noundef %239) #6
  %240 = load i32, ptr @vivid_debug, align 4
  %241 = icmp ugt i32 %240, 1
  br i1 %241, label %242, label %246

242:                                              ; preds = %226
  %243 = getelementptr inbounds %struct.vb2_buffer, ptr %166, i32 0, i32 1
  %244 = load i32, ptr %243, align 4
  %245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %30, i32 noundef %244) #5
  br label %246

246:                                              ; preds = %242, %226, %225
  store i8 0, ptr %39, align 4
  br label %247

247:                                              ; preds = %246, %165, %115
  tail call void @mutex_unlock(ptr noundef %22) #6
  %248 = zext i32 %68 to i64
  %249 = mul i64 %99, %248
  %250 = load volatile i32, ptr @jiffies, align 64
  %251 = load i32, ptr %17, align 8
  %252 = sub i32 %250, %251
  %253 = add i64 %249, %248
  %254 = mul i64 %253, 100
  %255 = lshr i32 %73, 1
  %256 = zext i32 %255 to i64
  %257 = add i64 %254, %256
  %258 = icmp ult i64 %257, 4294967296
  br i1 %258, label %259, label %263, !prof !9

259:                                              ; preds = %247
  %260 = trunc i64 %257 to i32
  %261 = udiv i32 %260, %73
  %262 = zext i32 %261 to i64
  br label %266

263:                                              ; preds = %247
  %264 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %73, i64 %257) #7, !srcloc !11
  %265 = extractvalue { i64, i64 } %264, 1
  br label %266

266:                                              ; preds = %263, %259
  %267 = phi i64 [ %262, %259 ], [ %265, %263 ]
  %268 = zext i32 %252 to i64
  %269 = tail call i64 @llvm.umax.i64(i64 %267, i64 %268)
  %270 = trunc i64 %269 to i32
  %271 = sub i32 %270, %252
  %272 = load volatile i32, ptr @jiffies, align 64
  %273 = sub i32 %272, %58
  %274 = icmp ult i32 %273, %271
  br i1 %274, label %276, label %275

275:                                              ; preds = %278, %276, %266, %56
  br label %43

276:                                              ; preds = %278, %266
  %277 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %277, label %275, label %278

278:                                              ; preds = %276
  tail call void @schedule() #6
  %279 = load volatile i32, ptr @jiffies, align 64
  %280 = sub i32 %279, %58
  %281 = icmp ult i32 %280, %271
  br i1 %281, label %276, label %275

282:                                              ; preds = %51
  %283 = load i32, ptr @vivid_debug, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %282
  %286 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %30) #5
  br label %287

287:                                              ; preds = %285, %282
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vivid_grab_controls(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 105
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @mutex_lock(ptr noundef %10) #6
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %4, i1 noundef zeroext %1) #6
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef %13) #6
  br label %14

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 106
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @mutex_lock(ptr noundef %22) #6
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %16, i1 noundef zeroext %1) #6
  %23 = load ptr, ptr %19, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef %25) #6
  br label %26

26:                                               ; preds = %18, %14
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 107
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void @mutex_lock(ptr noundef %34) #6
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %28, i1 noundef zeroext %1) #6
  %35 = load ptr, ptr %31, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void @mutex_unlock(ptr noundef %37) #6
  br label %38

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 108
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %40, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void @mutex_lock(ptr noundef %46) #6
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %40, i1 noundef zeroext %1) #6
  %47 = load ptr, ptr %43, align 8
  %48 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void @mutex_unlock(ptr noundef %49) #6
  br label %50

50:                                               ; preds = %42, %38
  %51 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 109
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.v4l2_ctrl, ptr %52, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void @mutex_lock(ptr noundef %58) #6
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %52, i1 noundef zeroext %1) #6
  %59 = load ptr, ptr %55, align 8
  %60 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  tail call void @mutex_unlock(ptr noundef %61) #6
  br label %62

62:                                               ; preds = %54, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_stop_generating_vid_out(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @vivid_debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6, ptr noundef nonnull @__func__.vivid_stop_generating_vid_out) #5
  br label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 298
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %108, label %12

12:                                               ; preds = %8
  store i8 0, ptr %1, align 1
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 305
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 287
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %40, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 21
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  br label %22

22:                                               ; preds = %37, %19
  %23 = phi ptr [ %17, %19 ], [ %38, %37 ]
  %24 = getelementptr i8, ptr %23, i32 -640
  %25 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  %29 = getelementptr i8, ptr %23, i32 -596
  %30 = load ptr, ptr %29, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %30, ptr noundef %20) #6
  tail call void @vb2_buffer_done(ptr noundef %24, i32 noundef 6) #6
  %31 = load i32, ptr @vivid_debug, align 4
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = getelementptr i8, ptr %23, i32 -636
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %21, i32 noundef %35) #5
  br label %37

37:                                               ; preds = %33, %22
  %38 = load volatile ptr, ptr %16, align 4
  %39 = icmp eq ptr %38, %16
  br i1 %39, label %40, label %22

40:                                               ; preds = %37, %15, %12
  %41 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 308
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 289
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %68, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 25
  %49 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  br label %50

50:                                               ; preds = %65, %47
  %51 = phi ptr [ %45, %47 ], [ %66, %65 ]
  %52 = getelementptr i8, ptr %51, i32 -640
  %53 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %51, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  %57 = getelementptr i8, ptr %51, i32 -596
  %58 = load ptr, ptr %57, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %58, ptr noundef %48) #6
  tail call void @vb2_buffer_done(ptr noundef %52, i32 noundef 6) #6
  %59 = load i32, ptr @vivid_debug, align 4
  %60 = icmp ugt i32 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = getelementptr i8, ptr %51, i32 -636
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %49, i32 noundef %63) #5
  br label %65

65:                                               ; preds = %61, %50
  %66 = load volatile ptr, ptr %44, align 4
  %67 = icmp eq ptr %66, %44
  br i1 %67, label %68, label %50

68:                                               ; preds = %65, %43, %40
  %69 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 312
  %70 = icmp eq ptr %69, %1
  br i1 %70, label %71, label %96

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 291
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %96, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 35
  %77 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  br label %78

78:                                               ; preds = %93, %75
  %79 = phi ptr [ %73, %75 ], [ %94, %93 ]
  %80 = getelementptr i8, ptr %79, i32 -640
  %81 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %79, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %82, ptr %84, align 4
  store volatile ptr %83, ptr %82, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %79, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %81, align 4
  %85 = getelementptr i8, ptr %79, i32 -596
  %86 = load ptr, ptr %85, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %86, ptr noundef %76) #6
  tail call void @vb2_buffer_done(ptr noundef %80, i32 noundef 6) #6
  %87 = load i32, ptr @vivid_debug, align 4
  %88 = icmp ugt i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = getelementptr i8, ptr %79, i32 -636
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %77, i32 noundef %91) #5
  br label %93

93:                                               ; preds = %89, %78
  %94 = load volatile ptr, ptr %72, align 4
  %95 = icmp eq ptr %94, %72
  br i1 %95, label %96, label %78

96:                                               ; preds = %93, %71, %68
  %97 = load i8, ptr %13, align 8, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i8, ptr %41, align 4, !range !8
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i8, ptr %69, align 8, !range !8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  tail call fastcc void @vivid_grab_controls(ptr noundef %0, i1 noundef zeroext false)
  %106 = load ptr, ptr %9, align 4
  %107 = tail call i32 @kthread_stop(ptr noundef %106) #6
  store ptr null, ptr %9, align 4
  br label %108

108:                                              ; preds = %105, %102, %99, %96, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_sliced_vbi_out_process(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_meta_out_process(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__v4l2_ctrl_grab(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2147898952, i64 2147899232, i64 2147899566, i64 2147899900}
!12 = !{i64 2148934691}
!13 = !{i64 2148930515}
!14 = !{i64 2148930590, i64 2148930617, i64 2148930664, i64 2148930686, i64 2148930714, i64 2148930734}
!15 = !{i64 2148957694}
