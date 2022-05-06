; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-kthread-cap.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-kthread-cap.c"
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vivid_fmt = type { i32, i32, i8, [3 x i8], i32, i8, i8, [3 x i32], [3 x i32] }

@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"\017%s: %s\0A\00", align 1
@__func__.vivid_start_generating_vid_cap = private unnamed_addr constant [31 x i8] c"vivid_start_generating_vid_cap\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s-vid-cap\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\013%s: kernel_thread() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\017%s: returning from %s\0A\00", align 1
@__func__.vivid_stop_generating_vid_cap = private unnamed_addr constant [30 x i8] c"vivid_stop_generating_vid_cap\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"\017%s: vid_cap buffer %d done\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\017%s: vbi_cap buffer %d done\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\017%s: meta_cap buffer %d done\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\017%s: Video Capture Thread Start\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [32 x i8] c"\017%s: Video Capture Thread End\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"drivers/media/test-drivers/vivid/vivid-kthread-cap.c\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"\017%s: Video Capture Thread Tick\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"\017%s: filled buffer %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"\017%s: vbi_cap %d done\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"\017%s: meta_cap %d done\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c" %02d:%02d:%02d:%03d %u%s\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" top\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c" bottom\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [18 x i8] c" %dx%d, input %d \00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c" brightness %3d, contrast %3d, saturation %3d, hue %d \00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c" autogain %d, gain %3d, alpha 0x%02x \00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c" volume %3d, mute %d \00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c" int32 %d, ro_int32 %d, int64 %lld, bitmask %08x \00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c" boolean %d, menu %s, string \22%s\22 \00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c" integer_menu %lld, value %d \00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c" button pressed!\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c" OSD \22%s\22\00", align 1
@.str.27 = private unnamed_addr constant [86 x i8] c"\017%s: loop_vid_copy: %dx%d@%dx%d loop_vid_out: %dx%d@%dx%d loop_vid_cap: %dx%d@%dx%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [97 x i8] c"\017%s: loop_fb_copy: %dx%d@%dx%d loop_vid_overlay: %dx%d@%dx%d loop_vid_overlay_cap: %dx%d@%dx%d\0A\00", align 1
@switch.table.vivid_thread_vid_cap_tick = private unnamed_addr constant [6 x i32] [i32 8, i32 8, i32 16, i32 16, i32 16, i32 8], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_start_generating_vid_cap(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @vivid_debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6, ptr noundef nonnull @__func__.vivid_start_generating_vid_cap) #10
  br label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 250
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 256
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 158
  %16 = load i8, ptr %15, align 2, !range !8
  %17 = shl nuw i8 %16, 7
  %18 = zext i8 %17 to i32
  %19 = add i32 %14, %18
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 260
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 258
  store i32 %19, ptr %23, align 4
  br label %31

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 263
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 261
  store i32 %19, ptr %28, align 8
  br label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 264
  store i32 %19, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %27, %22
  store i8 1, ptr %1, align 1
  br label %54

32:                                               ; preds = %8
  %33 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 57
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 54
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 158
  %36 = load i8, ptr %35, align 2, !range !8
  %37 = shl nuw i8 %36, 7
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 258
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 261
  store i32 %38, ptr %40, align 8
  %41 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 264
  store i32 %38, ptr %41, align 4
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %43 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @vivid_thread_vid_cap, ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.1, ptr noundef %42) #11
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = ptrtoint ptr %43 to i32
  store ptr null, ptr %9, align 4
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %42) #10
  br label %54

48:                                               ; preds = %32
  %49 = tail call i32 @wake_up_process(ptr noundef %43) #11
  store ptr %43, ptr %9, align 4
  store i8 1, ptr %1, align 1
  tail call fastcc void @vivid_grab_controls(ptr noundef %0, i1 noundef zeroext true)
  %50 = load i32, ptr @vivid_debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %42, ptr noundef nonnull @__func__.vivid_start_generating_vid_cap) #10
  br label %54

54:                                               ; preds = %52, %48, %45, %31
  %55 = phi i32 [ 0, %31 ], [ %46, %45 ], [ 0, %48 ], [ 0, %52 ]
  ret i32 %55
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_thread_vid_cap(ptr noundef %0) #0 {
  %2 = load i32, ptr @vivid_debug, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %5) #10
  br label %7

7:                                                ; preds = %4, %1
  %8 = tail call zeroext i1 @set_freezable() #11
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 255
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 256
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 257
  store i8 0, ptr %11, align 8
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 251
  store i32 %12, ptr %13, align 8
  %14 = tail call i64 @ktime_get() #11
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 252
  store i64 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 235
  %17 = load i32, ptr %16, align 8
  %18 = zext i32 %17 to i64
  %19 = mul nuw nsw i64 %18, 1000000000
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 235, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 664, i32 noundef 9, ptr noundef null) #11
  store i32 1, ptr %20, align 4
  br label %24

24:                                               ; preds = %23, %7
  %25 = phi i32 [ %21, %7 ], [ 1, %23 ]
  %26 = icmp ult i64 %19, 4294967296
  br i1 %26, label %27, label %31, !prof !10

27:                                               ; preds = %24
  %28 = trunc i64 %19 to i32
  %29 = udiv i32 %28, %25
  %30 = zext i32 %29 to i64
  br label %34

31:                                               ; preds = %24
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %25, i64 %19) #12, !srcloc !11
  %33 = extractvalue { i64, i64 } %32, 1
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i64 [ %30, %27 ], [ %33, %31 ]
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 7
  %39 = zext i1 %38 to i64
  %40 = lshr i64 %35, %39
  %41 = mul i64 %40, 9
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 254
  %43 = lshr i64 %41, 1
  %44 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %43, i64 3689348814741910323) #12, !srcloc !12
  %45 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %43, i64 %44) #12, !srcloc !13
  store i64 %45, ptr %42, align 8
  %46 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 253
  store i64 %40, ptr %46, align 8
  %47 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %48 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 258
  %49 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 259
  %50 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 261
  %51 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 262
  %52 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 264
  %53 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 265
  br label %54

54:                                               ; preds = %180, %34
  %55 = load volatile i32, ptr @system_freezing_cnt, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57, !prof !10

57:                                               ; preds = %54
  %58 = tail call ptr @llvm.thread.pointer() #11
  %59 = tail call zeroext i1 @freezing_slow_path(ptr noundef %58) #11
  br i1 %59, label %60, label %62, !prof !9

60:                                               ; preds = %57
  %61 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #11
  br label %62

62:                                               ; preds = %60, %57, %54
  %63 = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %63, label %187, label %64

64:                                               ; preds = %62
  %65 = tail call i32 @mutex_trylock(ptr noundef %47) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void @schedule() #11
  br label %180

68:                                               ; preds = %64
  %69 = load volatile i32, ptr @jiffies, align 64
  %70 = load i8, ptr %11, align 8, !range !8
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, ptr %20, align 4
  %74 = load i32, ptr %36, align 8
  br label %109

75:                                               ; preds = %68
  store i32 %69, ptr %13, align 8
  %76 = load i32, ptr %10, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %9, align 8
  store i32 0, ptr %10, align 4
  %78 = load i64, ptr %46, align 8
  %79 = zext i32 %77 to i64
  %80 = mul i64 %78, %79
  %81 = load i64, ptr %15, align 8
  %82 = add i64 %81, %80
  store i64 %82, ptr %15, align 8
  %83 = load i32, ptr %16, align 8
  %84 = zext i32 %83 to i64
  %85 = mul nuw nsw i64 %84, 1000000000
  %86 = load i32, ptr %20, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89, !prof !9

88:                                               ; preds = %75
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 664, i32 noundef 9, ptr noundef null) #11
  store i32 1, ptr %20, align 4
  br label %89

89:                                               ; preds = %88, %75
  %90 = phi i32 [ %86, %75 ], [ 1, %88 ]
  %91 = icmp ult i64 %85, 4294967296
  br i1 %91, label %92, label %96, !prof !10

92:                                               ; preds = %89
  %93 = trunc i64 %85 to i32
  %94 = udiv i32 %93, %90
  %95 = zext i32 %94 to i64
  br label %99

96:                                               ; preds = %89
  %97 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %90, i64 %85) #12, !srcloc !11
  %98 = extractvalue { i64, i64 } %97, 1
  br label %99

99:                                               ; preds = %96, %92
  %100 = phi i64 [ %95, %92 ], [ %98, %96 ]
  %101 = load i32, ptr %36, align 8
  %102 = icmp eq i32 %101, 7
  %103 = zext i1 %102 to i64
  %104 = lshr i64 %100, %103
  %105 = mul i64 %104, 9
  %106 = lshr i64 %105, 1
  %107 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %106, i64 3689348814741910323) #12, !srcloc !12
  %108 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %106, i64 %107) #12, !srcloc !13
  store i64 %108, ptr %42, align 8
  store i64 %104, ptr %46, align 8
  store i8 0, ptr %11, align 8
  br label %109

109:                                              ; preds = %99, %72
  %110 = phi i32 [ %74, %72 ], [ %101, %99 ]
  %111 = phi i32 [ %73, %72 ], [ %90, %99 ]
  %112 = load i32, ptr %16, align 8
  %113 = icmp eq i32 %110, 7
  %114 = zext i1 %113 to i32
  %115 = shl i32 %111, %114
  %116 = load i32, ptr %13, align 8
  %117 = sub i32 %69, %116
  %118 = zext i32 %117 to i64
  %119 = zext i32 %115 to i64
  %120 = mul nuw i64 %119, %118
  %121 = mul i32 %112, 100
  %122 = lshr exact i32 %121, 1
  %123 = zext i32 %122 to i64
  %124 = add nuw i64 %120, %123
  %125 = icmp ult i64 %124, 4294967296
  br i1 %125, label %126, label %130, !prof !10

126:                                              ; preds = %109
  %127 = trunc i64 %124 to i32
  %128 = udiv i32 %127, %121
  %129 = zext i32 %128 to i64
  br label %133

130:                                              ; preds = %109
  %131 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %121, i64 %124) #12, !srcloc !11
  %132 = extractvalue { i64, i64 } %131, 1
  br label %133

133:                                              ; preds = %130, %126
  %134 = phi i64 [ %129, %126 ], [ %132, %130 ]
  %135 = icmp ugt i32 %117, -268727296
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  %137 = load i32, ptr %9, align 8
  br label %140

138:                                              ; preds = %133
  store i32 %69, ptr %13, align 8
  %139 = trunc i64 %134 to i32
  store i32 %139, ptr %9, align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %139, %138 ], [ %137, %136 ]
  %142 = phi i64 [ 0, %138 ], [ %134, %136 ]
  %143 = load i32, ptr %10, align 4
  %144 = trunc i64 %142 to i32
  %145 = add i32 %141, %144
  %146 = sub i32 %145, %143
  store i32 %145, ptr %10, align 4
  %147 = load i32, ptr %48, align 4
  %148 = sub i32 %145, %147
  store i32 %148, ptr %49, align 8
  %149 = load i32, ptr %50, align 8
  %150 = sub i32 %145, %149
  store i32 %150, ptr %51, align 4
  %151 = load i32, ptr %52, align 4
  %152 = sub i32 %145, %151
  store i32 %152, ptr %53, align 8
  tail call fastcc void @vivid_thread_vid_cap_tick(ptr noundef %0, i32 noundef %146)
  %153 = add i64 %142, 1
  %154 = zext i32 %112 to i64
  %155 = load volatile i32, ptr @jiffies, align 64
  %156 = load i32, ptr %13, align 8
  %157 = sub i32 %155, %156
  tail call void @mutex_unlock(ptr noundef %47) #11
  %158 = mul nuw nsw i64 %154, 100
  %159 = mul i64 %158, %153
  %160 = lshr i32 %115, 1
  %161 = zext i32 %160 to i64
  %162 = add i64 %159, %161
  %163 = icmp ult i64 %162, 4294967296
  br i1 %163, label %164, label %168, !prof !10

164:                                              ; preds = %140
  %165 = trunc i64 %162 to i32
  %166 = udiv i32 %165, %115
  %167 = zext i32 %166 to i64
  br label %171

168:                                              ; preds = %140
  %169 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %115, i64 %162) #12, !srcloc !11
  %170 = extractvalue { i64, i64 } %169, 1
  br label %171

171:                                              ; preds = %168, %164
  %172 = phi i64 [ %167, %164 ], [ %170, %168 ]
  %173 = zext i32 %157 to i64
  %174 = tail call i64 @llvm.umax.i64(i64 %172, i64 %173)
  %175 = trunc i64 %174 to i32
  %176 = sub i32 %175, %157
  %177 = load volatile i32, ptr @jiffies, align 64
  %178 = sub i32 %177, %69
  %179 = icmp ult i32 %178, %176
  br i1 %179, label %181, label %180

180:                                              ; preds = %183, %181, %171, %67
  br label %54

181:                                              ; preds = %183, %171
  %182 = tail call zeroext i1 @kthread_should_stop() #11
  br i1 %182, label %180, label %183

183:                                              ; preds = %181
  tail call void @schedule() #11
  %184 = load volatile i32, ptr @jiffies, align 64
  %185 = sub i32 %184, %69
  %186 = icmp ult i32 %185, %176
  br i1 %186, label %181, label %180

187:                                              ; preds = %62
  %188 = load i32, ptr @vivid_debug, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %191) #10
  br label %193

193:                                              ; preds = %190, %187
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vivid_grab_controls(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 102
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @mutex_lock(ptr noundef %10) #11
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %4, i1 noundef zeroext %1) #11
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef %13) #11
  br label %14

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 103
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @mutex_lock(ptr noundef %22) #11
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %16, i1 noundef zeroext %1) #11
  %23 = load ptr, ptr %19, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef %25) #11
  br label %26

26:                                               ; preds = %18, %14
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 104
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void @mutex_lock(ptr noundef %34) #11
  tail call void @__v4l2_ctrl_grab(ptr noundef nonnull %28, i1 noundef zeroext %1) #11
  %35 = load ptr, ptr %31, align 8
  %36 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void @mutex_unlock(ptr noundef %37) #11
  br label %38

38:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_stop_generating_vid_cap(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @vivid_debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6, ptr noundef nonnull @__func__.vivid_stop_generating_vid_cap) #10
  br label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 250
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %108, label %12

12:                                               ; preds = %8
  store i8 0, ptr %1, align 1
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 260
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 243
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %40, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 19
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
  tail call void @v4l2_ctrl_request_complete(ptr noundef %30, ptr noundef %20) #11
  tail call void @vb2_buffer_done(ptr noundef %24, i32 noundef 6) #11
  %31 = load i32, ptr @vivid_debug, align 4
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = getelementptr i8, ptr %23, i32 -636
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %21, i32 noundef %35) #10
  br label %37

37:                                               ; preds = %33, %22
  %38 = load volatile ptr, ptr %16, align 4
  %39 = icmp eq ptr %38, %16
  br i1 %39, label %40, label %22

40:                                               ; preds = %37, %15, %12
  %41 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 263
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 245
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %68, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 23
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
  tail call void @v4l2_ctrl_request_complete(ptr noundef %58, ptr noundef %48) #11
  tail call void @vb2_buffer_done(ptr noundef %52, i32 noundef 6) #11
  %59 = load i32, ptr @vivid_debug, align 4
  %60 = icmp ugt i32 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = getelementptr i8, ptr %51, i32 -636
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %49, i32 noundef %63) #10
  br label %65

65:                                               ; preds = %61, %50
  %66 = load volatile ptr, ptr %44, align 4
  %67 = icmp eq ptr %66, %44
  br i1 %67, label %68, label %50

68:                                               ; preds = %65, %43, %40
  %69 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 266
  %70 = icmp eq ptr %69, %1
  br i1 %70, label %71, label %96

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 247
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %96, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 33
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
  tail call void @v4l2_ctrl_request_complete(ptr noundef %86, ptr noundef %76) #11
  tail call void @vb2_buffer_done(ptr noundef %80, i32 noundef 6) #11
  %87 = load i32, ptr @vivid_debug, align 4
  %88 = icmp ugt i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = getelementptr i8, ptr %79, i32 -636
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %77, i32 noundef %91) #10
  br label %93

93:                                               ; preds = %89, %78
  %94 = load volatile ptr, ptr %72, align 4
  %95 = icmp eq ptr %94, %72
  br i1 %95, label %96, label %78

96:                                               ; preds = %93, %71, %68
  %97 = load i8, ptr %13, align 4, !range !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i8, ptr %41, align 8, !range !8
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load i8, ptr %69, align 4, !range !8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  tail call fastcc void @vivid_grab_controls(ptr noundef %0, i1 noundef zeroext false)
  %106 = load ptr, ptr %9, align 4
  %107 = tail call i32 @kthread_stop(ptr noundef %106) #11
  store ptr null, ptr %9, align 4
  br label %108

108:                                              ; preds = %105, %102, %99, %96, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vivid_thread_vid_cap_tick(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = alloca [3 x [2 x ptr]], align 4
  %4 = alloca [100 x i8], align 1
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %8) #10
  br label %10

10:                                               ; preds = %7, %2
  %11 = icmp sgt i32 %1, 1
  br i1 %11, label %12, label %34

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 1
  %16 = icmp eq i32 %14, 7
  %17 = or i1 %15, %16
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 55
  %19 = load i32, ptr %18, align 4
  %20 = select i1 %17, i32 1, i32 2
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 54
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 58
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 57
  %25 = load i32, ptr %21, align 4
  %26 = load i32, ptr %24, align 4
  %27 = mul i32 %20, %19
  %28 = add nsw i32 %1, -1
  %29 = mul i32 %27, %28
  %30 = mul i32 %20, %23
  %31 = mul i32 %30, %28
  %32 = add i32 %25, %29
  %33 = add i32 %26, %31
  store i32 %32, ptr %21, align 4
  store i32 %33, ptr %24, align 4
  br label %34

34:                                               ; preds = %12, %10
  %35 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 161
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @prandom_u32() #11
  %40 = zext i32 %39 to i64
  %41 = mul nuw nsw i64 %40, 100
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = load i32, ptr %35, align 8
  %45 = icmp ugt i32 %44, %43
  br i1 %45, label %930, label %46

46:                                               ; preds = %38, %34
  %47 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %47) #11
  %48 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 243
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = getelementptr i8, ptr %49, i32 -640
  %53 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %49, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %49, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = phi ptr [ null, %46 ], [ %52, %51 ]
  %59 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 245
  %60 = load volatile ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %59
  br i1 %61, label %77, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  %64 = load i32, ptr %63, align 8
  %65 = icmp eq i32 %64, 7
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 262
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66, %62
  %72 = getelementptr i8, ptr %60, i32 -640
  %73 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %60, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %74, ptr %76, align 4
  store volatile ptr %75, ptr %74, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %73, align 4
  br label %77

77:                                               ; preds = %71, %66, %57
  %78 = phi ptr [ null, %57 ], [ %72, %71 ], [ null, %66 ]
  %79 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 247
  %80 = load volatile ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %79
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = getelementptr i8, ptr %80, i32 -640
  %84 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %80, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  store ptr %85, ptr %87, align 4
  store volatile ptr %86, ptr %85, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %80, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %84, align 4
  br label %88

88:                                               ; preds = %82, %77
  %89 = phi ptr [ null, %77 ], [ %83, %82 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %90 = load i16, ptr %47, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %92 = icmp ne ptr %58, null
  %93 = icmp ne ptr %78, null
  %94 = or i1 %92, %93
  %95 = icmp ne ptr %89, null
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %930

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 253
  %99 = load i64, ptr %98, align 8
  %100 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 259
  %101 = load i32, ptr %100, align 8
  %102 = zext i32 %101 to i64
  %103 = mul i64 %99, %102
  %104 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 252
  %105 = load i64, ptr %104, align 8
  %106 = add i64 %103, %105
  %107 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 160
  %108 = load i64, ptr %107, align 8
  %109 = add i64 %106, %108
  br i1 %92, label %110, label %867

110:                                              ; preds = %97
  %111 = getelementptr inbounds %struct.vb2_buffer, ptr %58, i32 0, i32 7, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 19
  %114 = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %112, ptr noundef %113) #11
  %115 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231
  %116 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  %117 = load i32, ptr %116, align 8
  %118 = add i32 %117, -2
  %119 = icmp ult i32 %118, 6
  br i1 %119, label %120, label %123

120:                                              ; preds = %110
  %121 = getelementptr inbounds [6 x i32], ptr @switch.table.vivid_thread_vid_cap_tick, i32 0, i32 %118
  %122 = load i32, ptr %121, align 4
  br label %123

123:                                              ; preds = %120, %110
  %124 = phi i32 [ 16, %110 ], [ %122, %120 ]
  %125 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 173
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 53, i32 %126
  %128 = load i8, ptr %127, align 1
  %129 = add i8 %128, -1
  %130 = icmp ult i8 %129, 2
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 174, i32 %126
  %133 = load i64, ptr %132, align 8
  %134 = and i64 %133, 63744
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i32
  br label %137

137:                                              ; preds = %131, %123
  %138 = phi i32 [ 0, %123 ], [ %136, %131 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #11, !annotation !18
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %4, i8 0, i32 100, i1 false) #11, !annotation !18
  %139 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 139
  %140 = load i8, ptr %139, align 1, !range !8
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 77
  %144 = load i8, ptr %143, align 2, !range !8
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %142
  switch i8 %128, label %158 [
    i8 2, label %147
    i8 3, label %152
  ]

147:                                              ; preds = %146
  %148 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 162, i32 %126
  %149 = load i32, ptr %148, align 4
  %150 = add i32 %149, -1
  %151 = icmp ult i32 %150, 3
  br i1 %151, label %158, label %157

152:                                              ; preds = %146
  %153 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 166, i32 %126
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, -1
  %156 = icmp ult i32 %155, 3
  br i1 %156, label %158, label %157

157:                                              ; preds = %152, %147
  br label %158

158:                                              ; preds = %157, %152, %147, %146, %142, %137
  %159 = phi i1 [ true, %157 ], [ false, %142 ], [ false, %137 ], [ false, %152 ], [ false, %147 ], [ false, %146 ]
  %160 = load i32, ptr %100, align 8
  %161 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %58, i32 0, i32 4
  store i32 %160, ptr %161, align 8
  %162 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 94
  %163 = load ptr, ptr %162, align 4
  %164 = and i32 %160, 255
  %165 = getelementptr inbounds %struct.v4l2_ctrl, ptr %163, i32 0, i32 2
  %166 = load ptr, ptr %165, align 8
  %167 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %166, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  tail call void @mutex_lock(ptr noundef %168) #11
  %169 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %163, i32 noundef %164) #11
  %170 = load ptr, ptr %165, align 8
  %171 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %170, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  tail call void @mutex_unlock(ptr noundef %172) #11
  %173 = load i32, ptr %116, align 8
  %174 = icmp eq i32 %173, 7
  br i1 %174, label %175, label %182

175:                                              ; preds = %158
  %176 = load i32, ptr %100, align 8
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, %138
  %179 = select i1 %178, i32 2, i32 3
  %180 = load i32, ptr %161, align 8
  %181 = lshr i32 %180, 1
  store i32 %181, ptr %161, align 8
  br label %182

182:                                              ; preds = %175, %158
  %183 = phi i32 [ %179, %175 ], [ %173, %158 ]
  %184 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %58, i32 0, i32 2
  store i32 %183, ptr %184, align 4
  %185 = load i32, ptr %116, align 8
  %186 = icmp eq i32 %185, 7
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 4
  store i32 %183, ptr %188, align 4
  %189 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 5
  store i8 %187, ptr %189, align 4
  %190 = getelementptr inbounds %struct.vb2_buffer, ptr %58, i32 0, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 233, i32 %191
  %193 = load i8, ptr %192, align 1, !range !8
  %194 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 48
  store i8 %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 144
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 145
  %198 = load i32, ptr %197, align 8
  %199 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 223
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 222
  %202 = load i32, ptr %201, align 8
  %203 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 284
  %204 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 284, i32 2
  %205 = load i32, ptr %204, align 8
  %206 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 284, i32 3
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 292
  %209 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 239
  %210 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 239, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 284, i32 1
  %213 = load i32, ptr %212, align 4
  %214 = tail call i32 @llvm.smax.i32(i32 %211, i32 %213) #11
  %215 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 292, i32 1
  store i32 %214, ptr %215, align 4
  %216 = load i32, ptr %209, align 4
  %217 = load i32, ptr %203, align 4
  %218 = tail call i32 @llvm.smax.i32(i32 %216, i32 %217) #11
  store i32 %218, ptr %208, align 4
  %219 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 239, i32 3
  %220 = load i32, ptr %219, align 4
  %221 = add i32 %220, %211
  %222 = add i32 %213, %207
  %223 = tail call i32 @llvm.umin.i32(i32 %221, i32 %222) #11
  %224 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 239, i32 2
  %225 = load i32, ptr %224, align 4
  %226 = add i32 %225, %216
  %227 = add i32 %217, %205
  %228 = tail call i32 @llvm.umin.i32(i32 %226, i32 %227) #11
  %229 = sub i32 %223, %214
  %230 = tail call i32 @llvm.smax.i32(i32 %229, i32 0) #11
  %231 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 292, i32 3
  store i32 %230, ptr %231, align 4
  %232 = sub i32 %228, %218
  %233 = tail call i32 @llvm.smax.i32(i32 %232, i32 0) #11
  %234 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 292, i32 2
  store i32 %233, ptr %234, align 4
  %235 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 293
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %235, ptr noundef align 4 dereferenceable(16) %208, i32 16, i1 false) #11
  %236 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 283
  %237 = icmp eq i32 %205, 0
  %238 = icmp eq i32 %207, 0
  %239 = select i1 %237, i1 true, i1 %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %182
  %241 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 293, i32 2
  store i64 0, ptr %241, align 4
  br label %266

242:                                              ; preds = %182
  %243 = load i32, ptr %235, align 4
  %244 = sub i32 %243, %217
  %245 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 283, i32 2
  %246 = load i32, ptr %245, align 4
  %247 = mul i32 %244, %246
  %248 = udiv i32 %247, %205
  %249 = and i32 %248, -2
  %250 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 293, i32 2
  %251 = load i32, ptr %250, align 4
  %252 = mul i32 %251, %246
  %253 = udiv i32 %252, %205
  %254 = and i32 %253, -2
  store i32 %254, ptr %250, align 4
  %255 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 293, i32 1
  %256 = load i32, ptr %255, align 4
  %257 = sub i32 %256, %213
  %258 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 283, i32 3
  %259 = load i32, ptr %258, align 4
  %260 = mul i32 %257, %259
  %261 = udiv i32 %260, %207
  %262 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 293, i32 3
  %263 = load i32, ptr %262, align 4
  %264 = mul i32 %263, %259
  %265 = udiv i32 %264, %207
  store i32 %265, ptr %262, align 4
  br label %266

266:                                              ; preds = %242, %240
  %267 = phi i32 [ 0, %240 ], [ %265, %242 ]
  %268 = phi i32 [ 0, %240 ], [ %254, %242 ]
  %269 = phi i32 [ 0, %240 ], [ %261, %242 ]
  %270 = phi i32 [ 0, %240 ], [ %249, %242 ]
  %271 = load i32, ptr %236, align 8
  %272 = add i32 %271, %270
  store i32 %272, ptr %235, align 4
  %273 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 283, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 293, i32 1
  %276 = add i32 %274, %269
  store i32 %276, ptr %275, align 4
  %277 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 294
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %277, ptr noundef align 4 dereferenceable(16) %208, i32 16, i1 false) #11
  %278 = icmp eq i32 %225, 0
  %279 = icmp eq i32 %220, 0
  %280 = select i1 %278, i1 true, i1 %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %266
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %277, i8 0, i64 16, i1 false) #11
  br label %306

282:                                              ; preds = %266
  %283 = load i32, ptr %277, align 4
  %284 = sub i32 %283, %216
  %285 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240, i32 2
  %286 = load i32, ptr %285, align 4
  %287 = mul i32 %284, %286
  %288 = udiv i32 %287, %225
  %289 = and i32 %288, -2
  store i32 %289, ptr %277, align 4
  %290 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 294, i32 2
  %291 = load i32, ptr %290, align 4
  %292 = mul i32 %291, %286
  %293 = udiv i32 %292, %225
  %294 = and i32 %293, -2
  store i32 %294, ptr %290, align 4
  %295 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 294, i32 1
  %296 = load i32, ptr %295, align 4
  %297 = sub i32 %296, %211
  %298 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240, i32 3
  %299 = load i32, ptr %298, align 4
  %300 = mul i32 %297, %299
  %301 = udiv i32 %300, %220
  store i32 %301, ptr %295, align 4
  %302 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 294, i32 3
  %303 = load i32, ptr %302, align 4
  %304 = mul i32 %303, %299
  %305 = udiv i32 %304, %220
  store i32 %305, ptr %302, align 4
  br label %306

306:                                              ; preds = %282, %281
  %307 = phi i32 [ 0, %281 ], [ %301, %282 ]
  %308 = phi i32 [ 0, %281 ], [ %289, %282 ]
  %309 = phi i32 [ 0, %281 ], [ %305, %282 ]
  %310 = phi i32 [ 0, %281 ], [ %294, %282 ]
  %311 = load i32, ptr @vivid_debug, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %325, label %313

313:                                              ; preds = %306
  %314 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %315 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %314, i32 noundef %233, i32 noundef %230, i32 noundef %218, i32 noundef %214, i32 noundef %268, i32 noundef %267, i32 noundef %272, i32 noundef %276, i32 noundef %310, i32 noundef %309, i32 noundef %308, i32 noundef %307) #10
  %316 = load i32, ptr %203, align 8
  %317 = load i32, ptr %199, align 4
  %318 = load i32, ptr %212, align 4
  %319 = load i32, ptr %201, align 8
  %320 = load i32, ptr %215, align 4
  %321 = load i32, ptr %208, align 4
  %322 = load i32, ptr %231, align 4
  %323 = load i32, ptr %234, align 4
  %324 = load i32, ptr %224, align 4
  br label %325

325:                                              ; preds = %313, %306
  %326 = phi i32 [ %324, %313 ], [ %225, %306 ]
  %327 = phi i32 [ %323, %313 ], [ %233, %306 ]
  %328 = phi i32 [ %322, %313 ], [ %230, %306 ]
  %329 = phi i32 [ %321, %313 ], [ %218, %306 ]
  %330 = phi i32 [ %320, %313 ], [ %214, %306 ]
  %331 = phi i32 [ %319, %313 ], [ %202, %306 ]
  %332 = phi i32 [ %318, %313 ], [ %213, %306 ]
  %333 = phi i32 [ %317, %313 ], [ %200, %306 ]
  %334 = phi i32 [ %316, %313 ], [ %217, %306 ]
  %335 = tail call i32 @llvm.smax.i32(i32 %202, i32 0) #11
  %336 = tail call i32 @llvm.smax.i32(i32 %200, i32 0) #11
  %337 = add i32 %207, %335
  %338 = tail call i32 @llvm.umin.i32(i32 %198, i32 %337) #11
  %339 = add i32 %205, %336
  %340 = tail call i32 @llvm.umin.i32(i32 %196, i32 %339) #11
  %341 = sub i32 %338, %335
  %342 = tail call i32 @llvm.smax.i32(i32 %341, i32 0) #11
  %343 = sub i32 %340, %336
  %344 = tail call i32 @llvm.smax.i32(i32 %343, i32 0) #11
  %345 = sub i32 %334, %333
  %346 = add i32 %345, %336
  %347 = sub i32 %332, %331
  %348 = add i32 %347, %335
  %349 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 296
  %350 = tail call i32 @llvm.smax.i32(i32 %348, i32 %330) #11
  %351 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 296, i32 1
  store i32 %350, ptr %351, align 4
  %352 = tail call i32 @llvm.smax.i32(i32 %346, i32 %329) #11
  store i32 %352, ptr %349, align 4
  %353 = add i32 %348, %342
  %354 = add i32 %330, %328
  %355 = tail call i32 @llvm.umin.i32(i32 %353, i32 %354) #11
  %356 = add i32 %346, %344
  %357 = add i32 %329, %327
  %358 = tail call i32 @llvm.umin.i32(i32 %356, i32 %357) #11
  %359 = sub i32 %355, %350
  %360 = tail call i32 @llvm.smax.i32(i32 %359, i32 0) #11
  %361 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 296, i32 3
  store i32 %360, ptr %361, align 4
  %362 = sub i32 %358, %352
  %363 = tail call i32 @llvm.smax.i32(i32 %362, i32 0) #11
  %364 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 296, i32 2
  store i32 %363, ptr %364, align 4
  %365 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 295
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %365, ptr noundef align 4 dereferenceable(16) %349, i32 16, i1 false) #11
  %366 = sub i32 %333, %334
  %367 = load i32, ptr %365, align 4
  %368 = add i32 %367, %366
  store i32 %368, ptr %365, align 4
  %369 = sub i32 %331, %332
  %370 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 295, i32 1
  %371 = load i32, ptr %370, align 4
  %372 = add i32 %371, %369
  store i32 %372, ptr %370, align 4
  %373 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 297
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %373, ptr noundef align 4 dereferenceable(16) %349, i32 16, i1 false) #11
  %374 = icmp eq i32 %326, 0
  br i1 %374, label %378, label %375

375:                                              ; preds = %325
  %376 = load i32, ptr %219, align 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %375, %325
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %373, i8 0, i64 16, i1 false) #11
  br label %405

379:                                              ; preds = %375
  %380 = load i32, ptr %373, align 4
  %381 = load i32, ptr %209, align 4
  %382 = sub i32 %380, %381
  %383 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240, i32 2
  %384 = load i32, ptr %383, align 4
  %385 = mul i32 %382, %384
  %386 = udiv i32 %385, %326
  %387 = and i32 %386, -2
  store i32 %387, ptr %373, align 4
  %388 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 297, i32 2
  %389 = load i32, ptr %388, align 4
  %390 = mul i32 %389, %384
  %391 = udiv i32 %390, %326
  %392 = and i32 %391, -2
  store i32 %392, ptr %388, align 4
  %393 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 297, i32 1
  %394 = load i32, ptr %393, align 4
  %395 = load i32, ptr %210, align 4
  %396 = sub i32 %394, %395
  %397 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240, i32 3
  %398 = load i32, ptr %397, align 4
  %399 = mul i32 %396, %398
  %400 = udiv i32 %399, %376
  store i32 %400, ptr %393, align 4
  %401 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 297, i32 3
  %402 = load i32, ptr %401, align 4
  %403 = mul i32 %402, %398
  %404 = udiv i32 %403, %376
  store i32 %404, ptr %401, align 4
  br label %405

405:                                              ; preds = %379, %378
  %406 = phi i32 [ 0, %378 ], [ %400, %379 ]
  %407 = phi i32 [ 0, %378 ], [ %387, %379 ]
  %408 = phi i32 [ 0, %378 ], [ %404, %379 ]
  %409 = phi i32 [ 0, %378 ], [ %392, %379 ]
  %410 = load i32, ptr @vivid_debug, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %419, label %412

412:                                              ; preds = %405
  %413 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %414 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 295, i32 2
  %415 = load i32, ptr %414, align 4
  %416 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 295, i32 3
  %417 = load i32, ptr %416, align 4
  %418 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %413, i32 noundef %415, i32 noundef %417, i32 noundef %368, i32 noundef %372, i32 noundef %363, i32 noundef %360, i32 noundef %352, i32 noundef %350, i32 noundef %409, i32 noundef %408, i32 noundef %407, i32 noundef %406) #10
  br label %419

419:                                              ; preds = %412, %405
  %420 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 35
  %421 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 34
  %422 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 43
  %423 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 2
  %424 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 33
  %425 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 234
  br label %426

426:                                              ; preds = %489, %419
  %427 = phi i32 [ 0, %419 ], [ %490, %489 ]
  %428 = load i8, ptr %420, align 4, !range !8
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %430, label %432

430:                                              ; preds = %426
  %431 = load i32, ptr %421, align 4
  br label %432

432:                                              ; preds = %430, %426
  %433 = phi i32 [ %431, %430 ], [ 1, %426 ]
  %434 = icmp ult i32 %427, %433
  br i1 %434, label %435, label %491

435:                                              ; preds = %432
  %436 = load i32, ptr %423, align 4
  %437 = icmp eq i32 %427, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %435
  %439 = load i32, ptr %424, align 4
  %440 = icmp ugt i32 %439, 1
  br i1 %440, label %441, label %443

441:                                              ; preds = %438, %435
  %442 = call ptr @vb2_plane_vaddr(ptr noundef nonnull %58, i32 noundef %427) #11
  br label %458

443:                                              ; preds = %438
  %444 = call ptr @vb2_plane_vaddr(ptr noundef nonnull %58, i32 noundef 0) #11
  br label %445

445:                                              ; preds = %445, %443
  %446 = phi ptr [ %455, %445 ], [ %444, %443 ]
  %447 = phi i32 [ %456, %445 ], [ 0, %443 ]
  %448 = getelementptr i32, ptr %422, i32 %447
  %449 = load i32, ptr %448, align 4
  %450 = mul i32 %449, %436
  %451 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 36, i32 %447
  %452 = load i8, ptr %451, align 1
  %453 = zext i8 %452 to i32
  %454 = udiv i32 %450, %453
  %455 = getelementptr i8, ptr %446, i32 %454
  %456 = add nuw i32 %447, 1
  %457 = icmp eq i32 %456, %427
  br i1 %457, label %458, label %445

458:                                              ; preds = %445, %441
  %459 = phi ptr [ %442, %441 ], [ %455, %445 ]
  %460 = load i32, ptr %424, align 4
  %461 = icmp ult i32 %427, %460
  br i1 %461, label %462, label %473

462:                                              ; preds = %458
  %463 = load ptr, ptr %425, align 4
  %464 = getelementptr %struct.vivid_fmt, ptr %463, i32 0, i32 7, i32 %427
  %465 = load i32, ptr %464, align 4
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %473, label %467

467:                                              ; preds = %462
  %468 = trunc i32 %465 to i8
  call void @llvm.memset.p0.i32(ptr align 1 %459, i8 %468, i32 %465, i1 false) #11
  %469 = load ptr, ptr %425, align 4
  %470 = getelementptr %struct.vivid_fmt, ptr %469, i32 0, i32 7, i32 %427
  %471 = load i32, ptr %470, align 4
  %472 = getelementptr i8, ptr %459, i32 %471
  br label %473

473:                                              ; preds = %467, %462, %458
  %474 = phi ptr [ %472, %467 ], [ %459, %462 ], [ %459, %458 ]
  call void @tpg_calc_text_basep(ptr noundef %115, ptr noundef nonnull %3, i32 noundef %427, ptr noundef %474) #11
  br i1 %159, label %475, label %478

475:                                              ; preds = %473
  %476 = call fastcc i32 @vivid_copy_buffer(ptr noundef %0, i32 noundef %427, ptr noundef %474, ptr noundef nonnull %58) #11
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %489, label %478

478:                                              ; preds = %475, %473
  %479 = load i32, ptr %125, align 4
  %480 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 53, i32 %479
  %481 = load i8, ptr %480, align 1
  %482 = add i8 %481, -1
  %483 = icmp ult i8 %482, 2
  br i1 %483, label %484, label %487

484:                                              ; preds = %478
  %485 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 174, i32 %479
  %486 = load i64, ptr %485, align 8
  br label %487

487:                                              ; preds = %484, %478
  %488 = phi i64 [ %486, %484 ], [ 0, %478 ]
  call void @tpg_fill_plane_buffer(ptr noundef %115, i64 noundef %488, i32 noundef %427, ptr noundef %474) #11
  br label %489

489:                                              ; preds = %487, %475
  %490 = add i32 %427, 1
  br label %426

491:                                              ; preds = %432
  %492 = load i32, ptr %190, align 4
  %493 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 233, i32 %492
  store i8 0, ptr %493, align 1
  %494 = load i32, ptr %116, align 8
  %495 = icmp eq i32 %494, 7
  br i1 %495, label %496, label %500

496:                                              ; preds = %491
  %497 = load i32, ptr %100, align 8
  %498 = and i32 %497, 1
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %507

500:                                              ; preds = %496, %491
  %501 = load volatile i32, ptr @jiffies, align 64
  %502 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 251
  %503 = load i32, ptr %502, align 8
  %504 = sub i32 %501, %503
  %505 = call i32 @jiffies_to_msecs(i32 noundef %504) #11
  %506 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 232
  store i32 %505, ptr %506, align 8
  br label %507

507:                                              ; preds = %500, %496
  %508 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 132
  %509 = load i32, ptr %508, align 8
  %510 = icmp ult i32 %509, 2
  br i1 %510, label %511, label %670

511:                                              ; preds = %507
  %512 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 232
  %513 = load i32, ptr %512, align 8
  %514 = udiv i32 %513, 3600000
  %515 = trunc i32 %514 to i16
  %516 = urem i16 %515, 24
  %517 = zext i16 %516 to i32
  %518 = udiv i32 %513, 60000
  %519 = urem i32 %518, 60
  %520 = freeze i32 %513
  %521 = udiv i32 %520, 1000
  %522 = urem i32 %521, 60
  %523 = mul i32 %521, 1000
  %524 = sub i32 %520, %523
  %525 = load i32, ptr %161, align 8
  %526 = load i32, ptr %116, align 8
  %527 = icmp eq i32 %526, 7
  br i1 %527, label %528, label %532

528:                                              ; preds = %511
  %529 = load i32, ptr %184, align 4
  %530 = icmp eq i32 %529, 2
  %531 = select i1 %530, ptr @.str.15, ptr @.str.16
  br label %532

532:                                              ; preds = %528, %511
  %533 = phi ptr [ %531, %528 ], [ @.str.17, %511 ]
  %534 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 100, ptr noundef nonnull @.str.14, i32 noundef %517, i32 noundef %519, i32 noundef %522, i32 noundef %524, i32 noundef %525, ptr noundef nonnull %533) #11
  call void @tpg_gen_text(ptr noundef %115, ptr noundef nonnull %3, i32 noundef %124, i32 noundef 16, ptr noundef nonnull %4) #11
  %535 = load i32, ptr %508, align 8
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %670

537:                                              ; preds = %532
  %538 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237, i32 2
  %539 = load i32, ptr %538, align 4
  %540 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 237, i32 3
  %541 = load i32, ptr %540, align 4
  %542 = load i32, ptr %125, align 4
  %543 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 100, ptr noundef nonnull @.str.18, i32 noundef %539, i32 noundef %541, i32 noundef %542) #11
  %544 = shl nuw nsw i32 %124, 1
  call void @tpg_gen_text(ptr noundef %115, ptr noundef nonnull %3, i32 noundef %544, i32 noundef 16, ptr noundef nonnull %4) #11
  %545 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 82
  %546 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 82, i32 1
  %547 = load ptr, ptr %546, align 4
  %548 = call i32 @v4l2_ctrl_g_ctrl(ptr noundef %547) #11
  %549 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 12, i32 1
  %550 = load ptr, ptr %549, align 4
  call void @mutex_lock(ptr noundef %550) #11
  %551 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 78
  %552 = load ptr, ptr %551, align 8
  %553 = getelementptr inbounds %struct.v4l2_ctrl, ptr %552, i32 0, i32 23
  %554 = load i32, ptr %553, align 8
  %555 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 79
  %556 = load ptr, ptr %555, align 4
  %557 = getelementptr inbounds %struct.v4l2_ctrl, ptr %556, i32 0, i32 23
  %558 = load i32, ptr %557, align 8
  %559 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 80
  %560 = load ptr, ptr %559, align 8
  %561 = getelementptr inbounds %struct.v4l2_ctrl, ptr %560, i32 0, i32 23
  %562 = load i32, ptr %561, align 8
  %563 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 81
  %564 = load ptr, ptr %563, align 4
  %565 = getelementptr inbounds %struct.v4l2_ctrl, ptr %564, i32 0, i32 23
  %566 = load i32, ptr %565, align 8
  %567 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 100, ptr noundef nonnull @.str.19, i32 noundef %554, i32 noundef %558, i32 noundef %562, i32 noundef %566) #11
  %568 = mul nuw nsw i32 %124, 3
  call void @tpg_gen_text(ptr noundef %115, ptr noundef nonnull %3, i32 noundef %568, i32 noundef 16, ptr noundef nonnull %4) #11
  %569 = load ptr, ptr %545, align 8
  %570 = getelementptr inbounds %struct.v4l2_ctrl, ptr %569, i32 0, i32 23
  %571 = load i32, ptr %570, align 8
  %572 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 85
  %573 = load ptr, ptr %572, align 8
  %574 = getelementptr inbounds %struct.v4l2_ctrl, ptr %573, i32 0, i32 23
  %575 = load i32, ptr %574, align 8
  %576 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 100, ptr noundef nonnull @.str.20, i32 noundef %571, i32 noundef %548, i32 noundef %575) #11
  %577 = load ptr, ptr %549, align 4
  call void @mutex_unlock(ptr noundef %577) #11
  %578 = shl nuw nsw i32 %124, 2
  call void @tpg_gen_text(ptr noundef %115, ptr noundef nonnull %3, i32 noundef %578, i32 noundef 16, ptr noundef nonnull %4) #11
  %579 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 13, i32 1
  %580 = load ptr, ptr %579, align 4
  call void @mutex_lock(ptr noundef %580) #11
  %581 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 83
  %582 = load ptr, ptr %581, align 8
  %583 = getelementptr inbounds %struct.v4l2_ctrl, ptr %582, i32 0, i32 23
  %584 = load i32, ptr %583, align 8
  %585 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 84
  %586 = load ptr, ptr %585, align 4
  %587 = getelementptr inbounds %struct.v4l2_ctrl, ptr %586, i32 0, i32 23
  %588 = load i32, ptr %587, align 8
  %589 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 100, ptr noundef nonnull @.str.21, i32 noundef %584, i32 noundef %588) #11
  %590 = load ptr, ptr %579, align 4
  call void @mutex_unlock(ptr noundef %590) #11
  %591 = mul nuw nsw i32 %124, 5
  call void @tpg_gen_text(ptr noundef %115, ptr noundef nonnull %3, i32 noundef %591, i32 noundef 16, ptr noundef nonnull %4) #11
  %592 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 11, i32 1
  %593 = load ptr, ptr %592, align 4
  call void @mutex_lock(ptr noundef %593) #11
  %594 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 88
  %595 = load ptr, ptr %594, align 4
  %596 = getelementptr inbounds %struct.v4l2_ctrl, ptr %595, i32 0, i32 23
  %597 = load i32, ptr %596, align 8
  %598 = load ptr, ptr %162, align 4
  %599 = getelementptr inbounds %struct.v4l2_ctrl, ptr %598, i32 0, i32 23
  %600 = load i32, ptr %599, align 8
  %601 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 89
  %602 = load ptr, ptr %601, align 8
  %603 = getelementptr inbounds %struct.v4l2_ctrl, ptr %602, i32 0, i32 26
  %604 = load ptr, ptr %603, align 4
  %605 = load i64, ptr %604, align 8
  %606 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 92
  %607 = load ptr, ptr %606, align 4
  %608 = getelementptr inbounds %struct.v4l2_ctrl, ptr %607, i32 0, i32 23
  %609 = load i32, ptr %608, align 8
  %610 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 100, ptr noundef nonnull @.str.22, i32 noundef %597, i32 noundef %600, i64 noundef %605, i32 noundef %609) #11
  %611 = mul nuw nsw i32 %124, 6
  call void @tpg_gen_text(ptr noundef %115, ptr noundef nonnull %3, i32 noundef %611, i32 noundef 16, ptr noundef nonnull %4) #11
  %612 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 87
  %613 = load ptr, ptr %612, align 8
  %614 = getelementptr inbounds %struct.v4l2_ctrl, ptr %613, i32 0, i32 23
  %615 = load i32, ptr %614, align 8
  %616 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 90
  %617 = load ptr, ptr %616, align 4
  %618 = getelementptr inbounds %struct.v4l2_ctrl, ptr %617, i32 0, i32 19
  %619 = load ptr, ptr %618, align 8
  %620 = getelementptr inbounds %struct.v4l2_ctrl, ptr %617, i32 0, i32 23
  %621 = load i32, ptr %620, align 8
  %622 = getelementptr ptr, ptr %619, i32 %621
  %623 = load ptr, ptr %622, align 4
  %624 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 91
  %625 = load ptr, ptr %624, align 8
  %626 = getelementptr inbounds %struct.v4l2_ctrl, ptr %625, i32 0, i32 26
  %627 = load ptr, ptr %626, align 4
  %628 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 100, ptr noundef nonnull @.str.23, i32 noundef %615, ptr noundef %623, ptr noundef %627) #11
  %629 = mul nuw nsw i32 %124, 7
  call void @tpg_gen_text(ptr noundef %115, ptr noundef nonnull %3, i32 noundef %629, i32 noundef 16, ptr noundef nonnull %4) #11
  %630 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 93
  %631 = load ptr, ptr %630, align 8
  %632 = getelementptr inbounds %struct.v4l2_ctrl, ptr %631, i32 0, i32 19
  %633 = load ptr, ptr %632, align 8
  %634 = getelementptr inbounds %struct.v4l2_ctrl, ptr %631, i32 0, i32 23
  %635 = load i32, ptr %634, align 8
  %636 = getelementptr i64, ptr %633, i32 %635
  %637 = load i64, ptr %636, align 8
  %638 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 100, ptr noundef nonnull @.str.24, i64 noundef %637, i32 noundef %635) #11
  %639 = load ptr, ptr %592, align 4
  call void @mutex_unlock(ptr noundef %639) #11
  %640 = shl nuw nsw i32 %124, 3
  call void @tpg_gen_text(ptr noundef %115, ptr noundef nonnull %3, i32 noundef %640, i32 noundef 16, ptr noundef nonnull %4) #11
  %641 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 133
  %642 = load i32, ptr %641, align 4
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %647, label %644

644:                                              ; preds = %537
  %645 = add i32 %642, -1
  store i32 %645, ptr %641, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %4, ptr noundef nonnull align 1 dereferenceable(17) @.str.25, i32 17, i1 false) #11
  %646 = mul nuw nsw i32 %124, 9
  call void @tpg_gen_text(ptr noundef %115, ptr noundef nonnull %3, i32 noundef %646, i32 noundef 16, ptr noundef nonnull %4) #11
  br label %647

647:                                              ; preds = %644, %537
  %648 = phi i32 [ 10, %644 ], [ 9, %537 ]
  %649 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 361
  %650 = load i8, ptr %649, align 1
  %651 = icmp eq i8 %650, 0
  br i1 %651, label %670, label %652

652:                                              ; preds = %647
  %653 = load i32, ptr %125, align 4
  %654 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 53, i32 %653
  %655 = load i8, ptr %654, align 1
  %656 = icmp eq i8 %655, 3
  br i1 %656, label %657, label %660

657:                                              ; preds = %652
  %658 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 100, ptr noundef nonnull @.str.26, ptr noundef %649) #11
  %659 = mul nuw nsw i32 %648, %124
  call void @tpg_gen_text(ptr noundef %115, ptr noundef nonnull %3, i32 noundef %659, i32 noundef 16, ptr noundef nonnull %4) #11
  br label %660

660:                                              ; preds = %657, %652
  %661 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 362
  %662 = load i32, ptr %661, align 4
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %670, label %664

664:                                              ; preds = %660
  %665 = add i32 %662, 500
  %666 = load volatile i32, ptr @jiffies, align 64
  %667 = sub i32 %665, %666
  %668 = icmp slt i32 %667, 0
  br i1 %668, label %669, label %670

669:                                              ; preds = %664
  store i8 0, ptr %649, align 1
  store i32 0, ptr %661, align 4
  br label %670

670:                                              ; preds = %669, %664, %660, %647, %532, %507
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  %671 = load i32, ptr @vivid_debug, align 4
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %677, label %673

673:                                              ; preds = %670
  %674 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %675 = load i32, ptr %190, align 4
  %676 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %674, i32 noundef %675) #10
  br label %677

677:                                              ; preds = %673, %670
  %678 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 190
  %679 = load ptr, ptr %678, align 8
  %680 = icmp eq ptr %679, null
  br i1 %680, label %846, label %681

681:                                              ; preds = %677
  %682 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 189, i32 2
  %683 = load ptr, ptr %682, align 4
  %684 = icmp eq ptr %683, null
  br i1 %684, label %846, label %685

685:                                              ; preds = %681
  %686 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 189, i32 3, i32 2
  %687 = load i32, ptr %686, align 4
  %688 = load ptr, ptr %425, align 4
  %689 = load i32, ptr %688, align 4
  %690 = icmp eq i32 %687, %689
  br i1 %690, label %691, label %846

691:                                              ; preds = %685
  %692 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 42
  %693 = load i32, ptr %692, align 4
  %694 = lshr i32 %693, 1
  %695 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 191
  %696 = load ptr, ptr %695, align 4
  %697 = call ptr @vb2_plane_vaddr(ptr noundef nonnull %58, i32 noundef 0) #11
  %698 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240
  %699 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240, i32 2
  %700 = load i32, ptr %699, align 4
  %701 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240, i32 3
  %702 = load i32, ptr %701, align 4
  %703 = load i32, ptr %422, align 4
  %704 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 195
  %705 = load ptr, ptr %704, align 4
  %706 = icmp eq ptr %705, null
  br i1 %706, label %707, label %711

707:                                              ; preds = %691
  %708 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 198
  %709 = load i32, ptr %708, align 8
  %710 = icmp eq i32 %709, 0
  br label %711

711:                                              ; preds = %707, %691
  %712 = phi i1 [ false, %691 ], [ %710, %707 ]
  %713 = icmp ult i32 %693, 2
  br i1 %713, label %714, label %715, !prof !9

714:                                              ; preds = %711
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 611, i32 noundef 9, ptr noundef null) #11
  br label %846

715:                                              ; preds = %711
  %716 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 194
  %717 = load i32, ptr %716, align 8
  %718 = and i32 %717, -2
  %719 = icmp eq i32 %718, 2
  br i1 %719, label %720, label %723

720:                                              ; preds = %715
  %721 = load i32, ptr %184, align 4
  %722 = icmp eq i32 %717, %721
  br i1 %722, label %723, label %846

723:                                              ; preds = %720, %715
  %724 = load i32, ptr %698, align 4
  %725 = mul i32 %724, %694
  %726 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240, i32 1
  %727 = load i32, ptr %726, align 4
  %728 = mul i32 %727, %703
  %729 = add i32 %728, %725
  %730 = getelementptr i8, ptr %697, i32 %729
  %731 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 193
  %732 = load i32, ptr %731, align 4
  %733 = icmp slt i32 %732, 0
  br i1 %733, label %734, label %737

734:                                              ; preds = %723
  %735 = sub i32 0, %732
  %736 = add i32 %732, %700
  br label %742

737:                                              ; preds = %723
  %738 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 189, i32 3
  %739 = load i32, ptr %738, align 4
  %740 = sub i32 %739, %732
  %741 = call i32 @llvm.umin.i32(i32 %740, i32 %700) #11
  br label %742

742:                                              ; preds = %737, %734
  %743 = phi i32 [ 0, %734 ], [ %732, %737 ]
  %744 = phi i32 [ %736, %734 ], [ %741, %737 ]
  %745 = phi i32 [ %735, %734 ], [ 0, %737 ]
  %746 = icmp slt i32 %744, 1
  br i1 %746, label %846, label %747

747:                                              ; preds = %742
  %748 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 192
  %749 = load i32, ptr %748, align 8
  %750 = icmp sgt i32 %749, -1
  br i1 %750, label %751, label %756

751:                                              ; preds = %747
  %752 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 189, i32 3, i32 4
  %753 = load i32, ptr %752, align 4
  %754 = mul i32 %753, %749
  %755 = getelementptr i8, ptr %696, i32 %754
  br label %756

756:                                              ; preds = %751, %747
  %757 = phi ptr [ %755, %751 ], [ %696, %747 ]
  %758 = add i32 %749, %702
  %759 = icmp slt i32 %749, %758
  br i1 %759, label %760, label %846

760:                                              ; preds = %756
  %761 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 189, i32 3, i32 1
  %762 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 198
  %763 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 189, i32 3, i32 4
  %764 = mul i32 %743, %694
  %765 = mul i32 %745, %694
  %766 = mul i32 %744, %694
  br label %767

767:                                              ; preds = %839, %760
  %768 = phi i32 [ %749, %760 ], [ %840, %839 ]
  %769 = phi i32 [ %749, %760 ], [ %842, %839 ]
  %770 = phi ptr [ %730, %760 ], [ %843, %839 ]
  %771 = phi ptr [ %757, %760 ], [ %841, %839 ]
  %772 = icmp slt i32 %769, 0
  br i1 %772, label %839, label %773

773:                                              ; preds = %767
  %774 = load i32, ptr %761, align 4
  %775 = icmp ugt i32 %769, %774
  br i1 %775, label %839, label %776

776:                                              ; preds = %773
  br i1 %712, label %777, label %780

777:                                              ; preds = %776
  %778 = getelementptr i8, ptr %771, i32 %764
  %779 = getelementptr i8, ptr %770, i32 %765
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %778, ptr align 1 %779, i32 %766, i1 false) #11
  br label %835

780:                                              ; preds = %832, %776
  %781 = phi i32 [ %833, %832 ], [ 0, %776 ]
  %782 = add i32 %781, %745
  %783 = add nuw i32 %781, %743
  %784 = load ptr, ptr %704, align 4
  %785 = icmp eq ptr %784, null
  br i1 %785, label %802, label %786

786:                                              ; preds = %780
  %787 = load i32, ptr %748, align 8
  %788 = sub i32 %769, %787
  %789 = load i32, ptr %699, align 4
  %790 = add i32 %789, 7
  %791 = lshr i32 %790, 3
  %792 = mul i32 %791, %788
  %793 = sdiv i32 %782, 8
  %794 = add i32 %792, %793
  %795 = getelementptr i8, ptr %784, i32 %794
  %796 = load i8, ptr %795, align 1
  %797 = zext i8 %796 to i32
  %798 = and i32 %782, 7
  %799 = shl nuw nsw i32 1, %798
  %800 = and i32 %799, %797
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %832, label %802

802:                                              ; preds = %786, %780
  %803 = load i32, ptr %762, align 8
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %827, label %805

805:                                              ; preds = %824, %802
  %806 = phi i32 [ %825, %824 ], [ 0, %802 ]
  %807 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 196, i32 %806
  %808 = getelementptr inbounds %struct.v4l2_rect, ptr %807, i32 0, i32 1
  %809 = load i32, ptr %808, align 4
  %810 = icmp sgt i32 %809, %769
  br i1 %810, label %824, label %811

811:                                              ; preds = %805
  %812 = getelementptr inbounds %struct.v4l2_rect, ptr %807, i32 0, i32 3
  %813 = load i32, ptr %812, align 4
  %814 = add i32 %813, %809
  %815 = icmp ugt i32 %814, %769
  br i1 %815, label %816, label %824

816:                                              ; preds = %811
  %817 = load i32, ptr %807, align 4
  %818 = icmp sgt i32 %817, %783
  br i1 %818, label %824, label %819

819:                                              ; preds = %816
  %820 = getelementptr inbounds %struct.v4l2_rect, ptr %807, i32 0, i32 2
  %821 = load i32, ptr %820, align 4
  %822 = add i32 %821, %817
  %823 = icmp ugt i32 %822, %783
  br i1 %823, label %832, label %824

824:                                              ; preds = %819, %816, %811, %805
  %825 = add nuw i32 %806, 1
  %826 = icmp eq i32 %825, %803
  br i1 %826, label %827, label %805

827:                                              ; preds = %824, %802
  %828 = mul i32 %783, %694
  %829 = getelementptr i8, ptr %771, i32 %828
  %830 = mul i32 %782, %694
  %831 = getelementptr i8, ptr %770, i32 %830
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %829, ptr align 1 %831, i32 %694, i1 false) #11
  br label %832

832:                                              ; preds = %827, %819, %786
  %833 = add nuw nsw i32 %781, 1
  %834 = icmp eq i32 %833, %744
  br i1 %834, label %835, label %780

835:                                              ; preds = %832, %777
  %836 = load i32, ptr %763, align 4
  %837 = getelementptr i8, ptr %771, i32 %836
  %838 = load i32, ptr %748, align 8
  br label %839

839:                                              ; preds = %835, %773, %767
  %840 = phi i32 [ %768, %773 ], [ %768, %767 ], [ %838, %835 ]
  %841 = phi ptr [ %771, %773 ], [ %771, %767 ], [ %837, %835 ]
  %842 = add nsw i32 %769, 1
  %843 = getelementptr i8, ptr %770, i32 %703
  %844 = add i32 %840, %702
  %845 = icmp slt i32 %842, %844
  br i1 %845, label %767, label %846

846:                                              ; preds = %839, %756, %742, %720, %714, %685, %681, %677
  %847 = load ptr, ptr %111, align 4
  call void @v4l2_ctrl_request_complete(ptr noundef %847, ptr noundef %113) #11
  %848 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 156
  %849 = load i8, ptr %848, align 4, !range !8
  %850 = icmp eq i8 %849, 0
  %851 = select i1 %850, i32 5, i32 6
  call void @vb2_buffer_done(ptr noundef nonnull %58, i32 noundef %851) #11
  %852 = load i32, ptr @vivid_debug, align 4
  %853 = icmp ugt i32 %852, 1
  br i1 %853, label %854, label %858

854:                                              ; preds = %846
  %855 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %856 = load i32, ptr %190, align 4
  %857 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %855, i32 noundef %856) #10
  br label %858

858:                                              ; preds = %854, %846
  %859 = getelementptr inbounds %struct.vb2_buffer, ptr %58, i32 0, i32 5
  store i64 %109, ptr %859, align 8
  %860 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 322
  %861 = load i8, ptr %860, align 4, !range !8
  %862 = icmp eq i8 %861, 0
  br i1 %862, label %863, label %867

863:                                              ; preds = %858
  %864 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 254
  %865 = load i64, ptr %864, align 8
  %866 = add i64 %865, %109
  store i64 %866, ptr %859, align 8
  br label %867

867:                                              ; preds = %863, %858, %97
  br i1 %93, label %868, label %905

868:                                              ; preds = %867
  %869 = getelementptr inbounds %struct.vb2_buffer, ptr %78, i32 0, i32 7, i32 2
  %870 = load ptr, ptr %869, align 4
  %871 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 23
  %872 = call i32 @v4l2_ctrl_request_setup(ptr noundef %870, ptr noundef %871) #11
  %873 = getelementptr inbounds %struct.vb2_buffer, ptr %78, i32 0, i32 2
  %874 = load i32, ptr %873, align 8
  %875 = icmp eq i32 %874, 6
  br i1 %875, label %876, label %877

876:                                              ; preds = %868
  call void @vivid_sliced_vbi_cap_process(ptr noundef %0, ptr noundef nonnull %78) #11
  br label %878

877:                                              ; preds = %868
  call void @vivid_raw_vbi_cap_process(ptr noundef %0, ptr noundef nonnull %78) #11
  br label %878

878:                                              ; preds = %877, %876
  %879 = load ptr, ptr %869, align 4
  call void @v4l2_ctrl_request_complete(ptr noundef %879, ptr noundef %871) #11
  %880 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 156
  %881 = load i8, ptr %880, align 4, !range !8
  %882 = icmp eq i8 %881, 0
  %883 = select i1 %882, i32 5, i32 6
  call void @vb2_buffer_done(ptr noundef nonnull %78, i32 noundef %883) #11
  %884 = load i32, ptr @vivid_debug, align 4
  %885 = icmp ugt i32 %884, 1
  br i1 %885, label %886, label %891

886:                                              ; preds = %878
  %887 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %888 = getelementptr inbounds %struct.vb2_buffer, ptr %78, i32 0, i32 1
  %889 = load i32, ptr %888, align 4
  %890 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %887, i32 noundef %889) #10
  br label %891

891:                                              ; preds = %886, %878
  %892 = load i64, ptr %98, align 8
  %893 = mul i64 %892, 5
  %894 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %893, i32 0) #12, !srcloc !19
  %895 = extractvalue { i64, i32 } %894, 0
  %896 = extractvalue { i64, i32 } %894, 1
  %897 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %893, i64 %895, i32 %896) #12, !srcloc !20
  %898 = extractvalue { i64, i32 } %897, 0
  %899 = lshr i64 %898, 6
  %900 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 254
  %901 = load i64, ptr %900, align 8
  %902 = add i64 %901, %109
  %903 = add i64 %902, %899
  %904 = getelementptr inbounds %struct.vb2_buffer, ptr %78, i32 0, i32 5
  store i64 %903, ptr %904, align 8
  br label %905

905:                                              ; preds = %891, %867
  br i1 %95, label %906, label %928

906:                                              ; preds = %905
  %907 = getelementptr inbounds %struct.vb2_buffer, ptr %89, i32 0, i32 7, i32 2
  %908 = load ptr, ptr %907, align 4
  %909 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 33
  %910 = call i32 @v4l2_ctrl_request_setup(ptr noundef %908, ptr noundef %909) #11
  call void @vivid_meta_cap_fillbuff(ptr noundef %0, ptr noundef nonnull %89, i64 noundef %109) #11
  %911 = load ptr, ptr %907, align 4
  call void @v4l2_ctrl_request_complete(ptr noundef %911, ptr noundef %909) #11
  %912 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 156
  %913 = load i8, ptr %912, align 4, !range !8
  %914 = icmp eq i8 %913, 0
  %915 = select i1 %914, i32 5, i32 6
  call void @vb2_buffer_done(ptr noundef nonnull %89, i32 noundef %915) #11
  %916 = load i32, ptr @vivid_debug, align 4
  %917 = icmp ugt i32 %916, 1
  br i1 %917, label %918, label %923

918:                                              ; preds = %906
  %919 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %920 = getelementptr inbounds %struct.vb2_buffer, ptr %89, i32 0, i32 1
  %921 = load i32, ptr %920, align 4
  %922 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %919, i32 noundef %921) #10
  br label %923

923:                                              ; preds = %918, %906
  %924 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 254
  %925 = load i64, ptr %924, align 8
  %926 = add i64 %925, %109
  %927 = getelementptr inbounds %struct.vb2_buffer, ptr %89, i32 0, i32 5
  store i64 %926, ptr %927, align 8
  br label %928

928:                                              ; preds = %923, %905
  %929 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 156
  store i8 0, ptr %929, align 4
  br label %930

930:                                              ; preds = %928, %88, %38
  %931 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  %932 = load i32, ptr %931, align 8
  %933 = icmp eq i32 %932, 1
  %934 = icmp eq i32 %932, 7
  %935 = or i1 %933, %934
  %936 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 55
  %937 = load i32, ptr %936, align 4
  %938 = select i1 %935, i32 1, i32 2
  %939 = mul i32 %938, %937
  %940 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 54
  %941 = load i32, ptr %940, align 4
  %942 = add i32 %939, %941
  store i32 %942, ptr %940, align 4
  %943 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 58
  %944 = load i32, ptr %943, align 4
  %945 = mul i32 %944, %938
  %946 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 57
  %947 = load i32, ptr %946, align 4
  %948 = add i32 %947, %945
  store i32 %948, ptr %946, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_sliced_vbi_cap_process(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_raw_vbi_cap_process(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_meta_cap_fillbuff(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_calc_text_basep(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vivid_copy_buffer(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.vb2_buffer, ptr %3, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 233, i32 %6
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 278
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.vivid_fmt, ptr %11, i32 0, i32 3, i32 %1
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 42, i32 %1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 37, i32 %1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = udiv i32 %19, %22
  %24 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 38, i32 %1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %23
  %27 = mul i32 %26, %16
  %28 = lshr i32 %27, 1
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 43, i32 %1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 208
  %34 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 208, i32 %1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 146
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 47
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, %30
  %41 = udiv i32 %40, 100
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 224
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %4
  %46 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 227
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 228
  %51 = load i32, ptr %50, align 8
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %49, %45, %4
  %54 = phi i1 [ true, %45 ], [ true, %4 ], [ %52, %49 ]
  %55 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 294
  %56 = load i32, ptr %55, align 4
  %57 = udiv i32 %56, %22
  %58 = and i32 %57, %25
  %59 = mul i32 %58, %16
  %60 = lshr i32 %59, 1
  %61 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 293
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 293, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 294, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = freeze i32 %63
  %67 = freeze i32 %65
  %68 = udiv i32 %66, %67
  %69 = mul i32 %68, %67
  %70 = sub i32 %66, %69
  %71 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 287
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %594, label %74

74:                                               ; preds = %53
  %75 = getelementptr i8, ptr %72, i32 -640
  %76 = icmp eq ptr %75, null
  br i1 %76, label %594, label %77

77:                                               ; preds = %74
  %78 = getelementptr i8, ptr %72, i32 -292
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %3, i32 0, i32 2
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 282, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %1, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 33
  %86 = load i32, ptr %85, align 4
  %87 = icmp ugt i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %84, %77
  %89 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %75, i32 noundef %1) #11
  br label %105

90:                                               ; preds = %84
  %91 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %75, i32 noundef 0) #11
  br label %92

92:                                               ; preds = %92, %90
  %93 = phi ptr [ %102, %92 ], [ %91, %90 ]
  %94 = phi i32 [ %103, %92 ], [ 0, %90 ]
  %95 = getelementptr i32, ptr %33, i32 %94
  %96 = load i32, ptr %95, align 4
  %97 = mul i32 %96, %82
  %98 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 36, i32 %94
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = udiv i32 %97, %100
  %102 = getelementptr i8, ptr %93, i32 %101
  %103 = add nuw i32 %94, 1
  %104 = icmp eq i32 %103, %1
  br i1 %104, label %105, label %92

105:                                              ; preds = %92, %88
  %106 = phi ptr [ %89, %88 ], [ %102, %92 ]
  %107 = load ptr, ptr %10, align 8
  %108 = getelementptr inbounds %struct.vivid_fmt, ptr %107, i32 0, i32 6
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp ugt i32 %110, %1
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = getelementptr %struct.vb2_buffer, ptr %75, i32 0, i32 10, i32 %1, i32 7
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr i8, ptr %106, i32 %114
  br label %116

116:                                              ; preds = %112, %105
  %117 = phi ptr [ %115, %112 ], [ %106, %105 ]
  %118 = load i32, ptr %61, align 4
  %119 = load i8, ptr %20, align 1
  %120 = zext i8 %119 to i32
  %121 = udiv i32 %118, %120
  %122 = load i32, ptr %24, align 4
  %123 = and i32 %122, %121
  %124 = load i32, ptr %15, align 4
  %125 = mul i32 %123, %124
  %126 = lshr i32 %125, 1
  %127 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 293, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = udiv i32 %128, %14
  %130 = mul i32 %129, %35
  %131 = add i32 %130, %126
  %132 = getelementptr i8, ptr %117, i32 %131
  %133 = load i32, ptr %17, align 4
  %134 = udiv i32 %133, %120
  %135 = and i32 %134, %122
  %136 = mul i32 %135, %124
  %137 = lshr i32 %136, 1
  %138 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 240, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = udiv i32 %139, %14
  %141 = mul i32 %140, %32
  %142 = add i32 %137, %141
  %143 = getelementptr i8, ptr %2, i32 %142
  %144 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 292
  %145 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 292, i32 2
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %116
  %149 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 292, i32 3
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %148, %116
  %153 = icmp ult i32 %41, %14
  br i1 %153, label %594, label %154

154:                                              ; preds = %152
  %155 = udiv i32 %41, %14
  %156 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 67, i32 %1
  %157 = call i32 @llvm.umax.i32(i32 %155, i32 1)
  br label %158

158:                                              ; preds = %158, %154
  %159 = phi ptr [ %143, %154 ], [ %163, %158 ]
  %160 = phi i32 [ 0, %154 ], [ %162, %158 ]
  %161 = load ptr, ptr %156, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %159, ptr align 1 %161, i32 %28, i1 false)
  %162 = add nuw nsw i32 %160, 1
  %163 = getelementptr i8, ptr %159, i32 %32
  %164 = icmp eq i32 %162, %157
  br i1 %164, label %594, label %158

165:                                              ; preds = %148
  %166 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 221
  %167 = load i8, ptr %166, align 4, !range !8
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %196, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 296, i32 2
  %171 = load i32, ptr %170, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %196, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 296, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %196, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 142
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 295
  %181 = load i32, ptr %180, align 4
  %182 = mul i32 %181, %16
  %183 = lshr i32 %182, 1
  %184 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 295, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = mul i32 %185, %37
  %187 = add i32 %183, %186
  %188 = getelementptr i8, ptr %179, i32 %187
  %189 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 297, i32 3
  %190 = load i32, ptr %189, align 4
  %191 = freeze i32 %175
  %192 = freeze i32 %190
  %193 = udiv i32 %191, %192
  %194 = mul i32 %193, %192
  %195 = sub i32 %191, %194
  br label %196

196:                                              ; preds = %177, %173, %169, %165
  %197 = phi ptr [ %188, %177 ], [ null, %173 ], [ null, %169 ], [ null, %165 ]
  %198 = phi i32 [ %193, %177 ], [ 0, %173 ], [ 0, %169 ], [ 0, %165 ]
  %199 = phi i32 [ %195, %177 ], [ 0, %173 ], [ 0, %169 ], [ 0, %165 ]
  %200 = load i32, ptr %55, align 4
  %201 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 294, i32 2
  %202 = load i32, ptr %201, align 4
  %203 = add i32 %202, %200
  %204 = udiv i32 %203, %120
  %205 = and i32 %204, %122
  %206 = mul i32 %205, %124
  %207 = lshr i32 %206, 1
  %208 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 293, i32 2
  %209 = load i32, ptr %208, align 4
  %210 = icmp ne i32 %209, %202
  %211 = load i32, ptr %62, align 4
  %212 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 218
  store i32 %211, ptr %212, align 4
  %213 = icmp ult i32 %40, 100
  br i1 %213, label %580, label %214

214:                                              ; preds = %196
  %215 = icmp eq ptr %197, null
  %216 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 297, i32 1
  %217 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 297, i32 3
  %218 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 294, i32 1
  %219 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 67, i32 %1
  %220 = icmp ugt i32 %28, %207
  %221 = sub nsw i32 %28, %207
  %222 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 216
  %223 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 296
  %224 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 217
  %225 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 296, i32 2
  %226 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 296, i32 1
  %227 = lshr i32 %16, 1
  %228 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 223
  %229 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 222
  %230 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 284
  %231 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 284, i32 2
  %232 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 284, i32 1
  %233 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 227
  %234 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 228
  %235 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 229
  %236 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 234
  %237 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 230
  br label %238

238:                                              ; preds = %572, %214
  %239 = phi ptr [ %143, %214 ], [ %578, %572 ]
  %240 = phi i32 [ 0, %214 ], [ %576, %572 ]
  %241 = phi i32 [ 0, %214 ], [ %575, %572 ]
  %242 = phi i32 [ 0, %214 ], [ %574, %572 ]
  %243 = phi i32 [ 0, %214 ], [ %573, %572 ]
  %244 = phi i32 [ 0, %214 ], [ %577, %572 ]
  br i1 %215, label %252, label %245

245:                                              ; preds = %238
  %246 = load i32, ptr %216, align 4
  %247 = icmp ult i32 %244, %246
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = load i32, ptr %217, align 4
  %250 = add i32 %249, %246
  %251 = icmp ult i32 %244, %250
  br label %252

252:                                              ; preds = %248, %245, %238
  %253 = phi i1 [ false, %245 ], [ false, %238 ], [ %251, %248 ]
  %254 = load i32, ptr %218, align 4
  %255 = icmp ult i32 %244, %254
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = load i32, ptr %64, align 4
  %258 = add i32 %257, %254
  %259 = icmp ult i32 %244, %258
  br i1 %259, label %262, label %260

260:                                              ; preds = %256, %252
  %261 = load ptr, ptr %219, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %239, ptr align 1 %261, i32 %28, i1 false)
  br label %572

262:                                              ; preds = %256
  %263 = load i32, ptr %55, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %267, label %265

265:                                              ; preds = %262
  %266 = load ptr, ptr %219, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %239, ptr align 1 %266, i32 %60, i1 false)
  br label %267

267:                                              ; preds = %265, %262
  br i1 %220, label %268, label %271

268:                                              ; preds = %267
  %269 = getelementptr i8, ptr %239, i32 %207
  %270 = load ptr, ptr %219, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %269, ptr align 1 %270, i32 %221, i1 false)
  br label %271

271:                                              ; preds = %268, %267
  %272 = select i1 %210, i1 true, i1 %253
  br i1 %272, label %286, label %273

273:                                              ; preds = %271
  %274 = getelementptr i8, ptr %239, i32 %60
  %275 = mul i32 %243, %35
  %276 = getelementptr i8, ptr %132, i32 %275
  %277 = load i32, ptr %201, align 4
  %278 = load i8, ptr %20, align 1
  %279 = zext i8 %278 to i32
  %280 = udiv i32 %277, %279
  %281 = load i32, ptr %24, align 4
  %282 = and i32 %281, %280
  %283 = load i32, ptr %15, align 4
  %284 = mul i32 %282, %283
  %285 = lshr i32 %284, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %274, ptr align 1 %276, i32 %285, i1 false)
  br label %550

286:                                              ; preds = %271
  %287 = load i32, ptr %212, align 4
  %288 = icmp eq i32 %287, %243
  br i1 %288, label %289, label %301

289:                                              ; preds = %286
  %290 = getelementptr i8, ptr %239, i32 %60
  %291 = load ptr, ptr %222, align 4
  %292 = load i32, ptr %201, align 4
  %293 = load i8, ptr %20, align 1
  %294 = zext i8 %293 to i32
  %295 = udiv i32 %292, %294
  %296 = load i32, ptr %24, align 4
  %297 = and i32 %296, %295
  %298 = load i32, ptr %15, align 4
  %299 = mul i32 %297, %298
  %300 = lshr i32 %299, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %290, ptr align 1 %291, i32 %300, i1 false)
  br label %550

301:                                              ; preds = %286
  br i1 %253, label %346, label %302

302:                                              ; preds = %301
  %303 = mul i32 %243, %35
  %304 = getelementptr i8, ptr %132, i32 %303
  %305 = load i32, ptr %208, align 4
  %306 = load i8, ptr %20, align 1
  %307 = zext i8 %306 to i32
  %308 = udiv i32 %305, %307
  %309 = load i32, ptr %24, align 4
  %310 = and i32 %309, %308
  %311 = load i32, ptr %15, align 4
  %312 = mul i32 %310, %311
  %313 = lshr i32 %312, 2
  %314 = load i32, ptr %201, align 4
  %315 = udiv i32 %314, %307
  %316 = and i32 %315, %309
  %317 = mul i32 %316, %311
  %318 = lshr i32 %317, 2
  %319 = freeze i32 %313
  %320 = freeze i32 %318
  %321 = udiv i32 %319, %320
  %322 = mul i32 %321, %320
  %323 = sub i32 %319, %322
  %324 = icmp ult i32 %317, 4
  br i1 %324, label %538, label %325

325:                                              ; preds = %302
  %326 = load ptr, ptr %222, align 4
  %327 = tail call i32 @llvm.umax.i32(i32 %318, i32 1) #11
  br label %328

328:                                              ; preds = %328, %325
  %329 = phi i32 [ %343, %328 ], [ 0, %325 ]
  %330 = phi i32 [ %342, %328 ], [ 0, %325 ]
  %331 = phi i32 [ %340, %328 ], [ 0, %325 ]
  %332 = phi ptr [ %344, %328 ], [ %326, %325 ]
  %333 = mul i32 %331, %311
  %334 = getelementptr i8, ptr %304, i32 %333
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %332, ptr align 1 %334, i32 %311, i1 false) #11
  %335 = add i32 %331, %321
  %336 = add i32 %330, %323
  %337 = icmp ult i32 %336, %318
  %338 = xor i1 %337, true
  %339 = zext i1 %338 to i32
  %340 = add i32 %335, %339
  %341 = select i1 %337, i32 0, i32 %318
  %342 = sub i32 %336, %341
  %343 = add nuw nsw i32 %329, 1
  %344 = getelementptr i8, ptr %332, i32 %311
  %345 = icmp eq i32 %343, %327
  br i1 %345, label %538, label %328

346:                                              ; preds = %301
  %347 = load i32, ptr %223, align 4
  %348 = load i32, ptr %144, align 4
  %349 = sub i32 %347, %348
  %350 = mul i32 %349, %16
  %351 = lshr i32 %350, 1
  %352 = mul i32 %241, %37
  %353 = getelementptr i8, ptr %197, i32 %352
  %354 = mul i32 %243, %35
  %355 = getelementptr i8, ptr %132, i32 %354
  %356 = load i32, ptr %208, align 4
  %357 = load i32, ptr %145, align 4
  %358 = load i32, ptr %15, align 4
  %359 = lshr i32 %356, 1
  %360 = lshr i32 %357, 1
  %361 = freeze i32 %359
  %362 = freeze i32 %360
  %363 = udiv i32 %361, %362
  %364 = mul i32 %363, %362
  %365 = sub i32 %361, %364
  %366 = icmp ult i32 %357, 2
  br i1 %366, label %388, label %367

367:                                              ; preds = %346
  %368 = load ptr, ptr %224, align 8
  %369 = tail call i32 @llvm.umax.i32(i32 %360, i32 1) #11
  br label %370

370:                                              ; preds = %370, %367
  %371 = phi i32 [ %385, %370 ], [ 0, %367 ]
  %372 = phi i32 [ %384, %370 ], [ 0, %367 ]
  %373 = phi i32 [ %382, %370 ], [ 0, %367 ]
  %374 = phi ptr [ %386, %370 ], [ %368, %367 ]
  %375 = mul i32 %373, %358
  %376 = getelementptr i8, ptr %355, i32 %375
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %374, ptr align 1 %376, i32 %358, i1 false) #11
  %377 = add i32 %373, %363
  %378 = add i32 %372, %365
  %379 = icmp ult i32 %378, %360
  %380 = xor i1 %379, true
  %381 = zext i1 %380 to i32
  %382 = add i32 %377, %381
  %383 = select i1 %379, i32 0, i32 %360
  %384 = sub i32 %378, %383
  %385 = add nuw nsw i32 %371, 1
  %386 = getelementptr i8, ptr %374, i32 %358
  %387 = icmp eq i32 %385, %369
  br i1 %387, label %388, label %370

388:                                              ; preds = %370, %346
  br i1 %54, label %389, label %498

389:                                              ; preds = %388
  %390 = load i32, ptr %226, align 4
  %391 = add i32 %390, %241
  %392 = load i32, ptr %223, align 4
  %393 = load i32, ptr %225, align 4
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %504, label %395

395:                                              ; preds = %389
  %396 = load ptr, ptr %224, align 8
  %397 = getelementptr i8, ptr %396, i32 %351
  br label %398

398:                                              ; preds = %493, %395
  %399 = phi i32 [ 0, %395 ], [ %494, %493 ]
  %400 = phi ptr [ %397, %395 ], [ %495, %493 ]
  %401 = phi ptr [ %353, %395 ], [ %496, %493 ]
  %402 = add i32 %399, %392
  %403 = load i32, ptr %228, align 4
  %404 = load i32, ptr %229, align 8
  %405 = add i32 %403, %402
  %406 = add i32 %404, %391
  %407 = load i16, ptr %400, align 2
  %408 = load i16, ptr %401, align 2
  store i16 %408, ptr %400, align 2
  %409 = load ptr, ptr %42, align 8
  %410 = icmp eq ptr %409, null
  br i1 %410, label %429, label %411

411:                                              ; preds = %398
  %412 = load i32, ptr %231, align 8
  %413 = add i32 %412, 7
  %414 = lshr i32 %413, 3
  %415 = load i32, ptr %230, align 8
  %416 = sub i32 %402, %415
  %417 = load i32, ptr %232, align 4
  %418 = sub i32 %391, %417
  %419 = mul i32 %418, %414
  %420 = sdiv i32 %416, 8
  %421 = add i32 %419, %420
  %422 = getelementptr i8, ptr %409, i32 %421
  %423 = load i8, ptr %422, align 1
  %424 = zext i8 %423 to i32
  %425 = and i32 %416, 7
  %426 = shl nuw nsw i32 1, %425
  %427 = and i32 %426, %424
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %493, label %429

429:                                              ; preds = %411, %398
  %430 = load i32, ptr %233, align 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %454, label %432

432:                                              ; preds = %451, %429
  %433 = phi i32 [ %452, %451 ], [ 0, %429 ]
  %434 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 225, i32 %433
  %435 = getelementptr inbounds %struct.v4l2_rect, ptr %434, i32 0, i32 1
  %436 = load i32, ptr %435, align 4
  %437 = icmp slt i32 %406, %436
  br i1 %437, label %451, label %438

438:                                              ; preds = %432
  %439 = getelementptr inbounds %struct.v4l2_rect, ptr %434, i32 0, i32 3
  %440 = load i32, ptr %439, align 4
  %441 = add i32 %440, %436
  %442 = icmp ult i32 %406, %441
  br i1 %442, label %443, label %451

443:                                              ; preds = %438
  %444 = load i32, ptr %434, align 4
  %445 = icmp slt i32 %405, %444
  br i1 %445, label %451, label %446

446:                                              ; preds = %443
  %447 = getelementptr inbounds %struct.v4l2_rect, ptr %434, i32 0, i32 2
  %448 = load i32, ptr %447, align 4
  %449 = add i32 %448, %444
  %450 = icmp ult i32 %405, %449
  br i1 %450, label %493, label %451

451:                                              ; preds = %446, %443, %438, %432
  %452 = add nuw i32 %433, 1
  %453 = icmp eq i32 %452, %430
  br i1 %453, label %454, label %432

454:                                              ; preds = %451, %429
  %455 = load i32, ptr %234, align 8
  %456 = and i32 %455, 4
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %463, label %458

458:                                              ; preds = %454
  %459 = load i16, ptr %401, align 2
  %460 = zext i16 %459 to i32
  %461 = load i32, ptr %235, align 4
  %462 = icmp eq i32 %461, %460
  br i1 %462, label %463, label %493

463:                                              ; preds = %458, %454
  %464 = and i32 %455, 64
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %470, label %466

466:                                              ; preds = %463
  %467 = zext i16 %407 to i32
  %468 = load i32, ptr %235, align 4
  %469 = icmp eq i32 %468, %467
  br i1 %469, label %493, label %470

470:                                              ; preds = %466, %463
  %471 = load ptr, ptr %236, align 4
  %472 = getelementptr inbounds %struct.vivid_fmt, ptr %471, i32 0, i32 4
  %473 = load i32, ptr %472, align 4
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %492, label %475

475:                                              ; preds = %470
  %476 = and i32 %455, 16
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %481, label %478

478:                                              ; preds = %475
  %479 = load i8, ptr %237, align 8
  %480 = icmp eq i8 %479, 0
  br i1 %480, label %481, label %493

481:                                              ; preds = %478, %475
  %482 = and i32 %455, 8
  %483 = icmp eq i32 %482, 0
  %484 = zext i16 %408 to i32
  %485 = and i32 %473, %484
  %486 = icmp eq i32 %485, 0
  %487 = select i1 %483, i1 true, i1 %486
  br i1 %487, label %488, label %493

488:                                              ; preds = %481
  %489 = and i32 %455, 32
  %490 = icmp ne i32 %489, 0
  %491 = select i1 %490, i1 %486, i1 false
  br i1 %491, label %493, label %492

492:                                              ; preds = %488, %470
  store i16 %407, ptr %400, align 2
  br label %493

493:                                              ; preds = %492, %488, %481, %478, %466, %458, %446, %411
  %494 = add nuw i32 %399, 1
  %495 = getelementptr i8, ptr %400, i32 %227
  %496 = getelementptr i8, ptr %401, i32 %227
  %497 = icmp eq i32 %494, %393
  br i1 %497, label %504, label %398

498:                                              ; preds = %388
  %499 = load ptr, ptr %224, align 8
  %500 = getelementptr i8, ptr %499, i32 %351
  %501 = load i32, ptr %225, align 4
  %502 = mul i32 %501, %16
  %503 = lshr i32 %502, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %500, ptr align 1 %353, i32 %503, i1 false)
  br label %504

504:                                              ; preds = %498, %493, %389
  %505 = load ptr, ptr %224, align 8
  %506 = load i32, ptr %145, align 4
  %507 = load i32, ptr %201, align 4
  %508 = load i32, ptr %15, align 4
  %509 = lshr i32 %506, 1
  %510 = lshr i32 %507, 1
  %511 = freeze i32 %509
  %512 = freeze i32 %510
  %513 = udiv i32 %511, %512
  %514 = mul i32 %513, %512
  %515 = sub i32 %511, %514
  %516 = icmp ult i32 %507, 2
  br i1 %516, label %538, label %517

517:                                              ; preds = %504
  %518 = load ptr, ptr %222, align 4
  %519 = tail call i32 @llvm.umax.i32(i32 %510, i32 1) #11
  br label %520

520:                                              ; preds = %520, %517
  %521 = phi i32 [ %535, %520 ], [ 0, %517 ]
  %522 = phi i32 [ %534, %520 ], [ 0, %517 ]
  %523 = phi i32 [ %532, %520 ], [ 0, %517 ]
  %524 = phi ptr [ %536, %520 ], [ %518, %517 ]
  %525 = mul i32 %523, %508
  %526 = getelementptr i8, ptr %505, i32 %525
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %524, ptr align 1 %526, i32 %508, i1 false) #11
  %527 = add i32 %523, %513
  %528 = add i32 %522, %515
  %529 = icmp ult i32 %528, %510
  %530 = xor i1 %529, true
  %531 = zext i1 %530 to i32
  %532 = add i32 %527, %531
  %533 = select i1 %529, i32 0, i32 %510
  %534 = sub i32 %528, %533
  %535 = add nuw nsw i32 %521, 1
  %536 = getelementptr i8, ptr %524, i32 %508
  %537 = icmp eq i32 %535, %519
  br i1 %537, label %538, label %520

538:                                              ; preds = %520, %504, %328, %302
  store i32 %243, ptr %212, align 4
  %539 = getelementptr i8, ptr %239, i32 %60
  %540 = load ptr, ptr %222, align 4
  %541 = load i32, ptr %201, align 4
  %542 = load i8, ptr %20, align 1
  %543 = zext i8 %542 to i32
  %544 = udiv i32 %541, %543
  %545 = load i32, ptr %24, align 4
  %546 = and i32 %545, %544
  %547 = load i32, ptr %15, align 4
  %548 = mul i32 %546, %547
  %549 = lshr i32 %548, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %539, ptr align 1 %540, i32 %549, i1 false)
  br label %550

550:                                              ; preds = %538, %289, %273
  br i1 %253, label %551, label %559

551:                                              ; preds = %550
  %552 = add i32 %241, %198
  %553 = add i32 %240, %199
  %554 = load i32, ptr %217, align 4
  %555 = icmp ult i32 %553, %554
  br i1 %555, label %559, label %556

556:                                              ; preds = %551
  %557 = sub i32 %553, %554
  %558 = add i32 %552, 1
  br label %559

559:                                              ; preds = %556, %551, %550
  %560 = phi i32 [ %558, %556 ], [ %552, %551 ], [ %241, %550 ]
  %561 = phi i32 [ %557, %556 ], [ %553, %551 ], [ %240, %550 ]
  %562 = add i32 %243, %68
  %563 = add i32 %242, %70
  %564 = load i32, ptr %64, align 4
  %565 = udiv i32 %564, %14
  %566 = icmp ult i32 %563, %565
  %567 = xor i1 %566, true
  %568 = zext i1 %567 to i32
  %569 = add i32 %562, %568
  %570 = select i1 %566, i32 0, i32 %565
  %571 = sub i32 %563, %570
  br label %572

572:                                              ; preds = %559, %260
  %573 = phi i32 [ %243, %260 ], [ %569, %559 ]
  %574 = phi i32 [ %242, %260 ], [ %571, %559 ]
  %575 = phi i32 [ %241, %260 ], [ %560, %559 ]
  %576 = phi i32 [ %240, %260 ], [ %561, %559 ]
  %577 = add i32 %244, %14
  %578 = getelementptr i8, ptr %239, i32 %32
  %579 = icmp ult i32 %577, %41
  br i1 %579, label %238, label %580

580:                                              ; preds = %572, %196
  %581 = phi i32 [ 0, %196 ], [ %577, %572 ]
  %582 = phi ptr [ %143, %196 ], [ %578, %572 ]
  %583 = icmp ult i32 %581, %30
  %584 = select i1 %9, i1 %583, i1 false
  br i1 %584, label %585, label %594

585:                                              ; preds = %580
  %586 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 66, i32 %1
  br label %587

587:                                              ; preds = %587, %585
  %588 = phi ptr [ %582, %585 ], [ %592, %587 ]
  %589 = phi i32 [ %581, %585 ], [ %591, %587 ]
  %590 = load ptr, ptr %586, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %588, ptr align 1 %590, i32 %28, i1 false)
  %591 = add i32 %589, %14
  %592 = getelementptr i8, ptr %588, i32 %32
  %593 = icmp ult i32 %591, %30
  br i1 %593, label %587, label %594

594:                                              ; preds = %587, %580, %158, %152, %74, %53
  %595 = phi i32 [ -61, %74 ], [ 0, %580 ], [ -61, %53 ], [ 0, %152 ], [ 0, %158 ], [ 0, %587 ]
  ret i32 %595
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_fill_plane_buffer(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpg_gen_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__v4l2_ctrl_grab(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147920794, i64 2147921074, i64 2147921408, i64 2147921742}
!12 = !{i64 435133, i64 435160}
!13 = !{i64 435473, i64 435500, i64 435534, i64 435555}
!14 = !{i64 2148956533}
!15 = !{i64 2148952357}
!16 = !{i64 2148952432, i64 2148952459, i64 2148952506, i64 2148952528, i64 2148952556, i64 2148952576}
!17 = !{i64 2148979536}
!18 = !{!"auto-init"}
!19 = !{i64 435250, i64 435277, i64 435299, i64 435327}
!20 = !{i64 435658, i64 435685, i64 435718, i64 435739, i64 435766, i64 435792}
