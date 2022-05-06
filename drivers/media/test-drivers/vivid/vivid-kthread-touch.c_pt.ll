; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-kthread-touch.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-kthread-touch.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.82, %struct.anon.83, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
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
%struct.anon.81 = type { ptr, ptr }
%struct.anon.82 = type { ptr, ptr }
%struct.anon.83 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.84 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.85 }
%struct.anon.85 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.76 }
%union.anon.76 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.86, i32, i32 }
%union.anon.86 = type { i32 }
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

@.str = private unnamed_addr constant [11 x i8] c"%s-tch-cap\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\013%s: kernel_thread() failed\0A\00", align 1
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"\017%s: returning from %s\0A\00", align 1
@__func__.vivid_start_generating_touch_cap = private unnamed_addr constant [33 x i8] c"vivid_start_generating_touch_cap\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\017%s: touch_cap buffer %d done\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"\017%s: Touch Capture Thread Start\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.5 = private unnamed_addr constant [32 x i8] c"\017%s: Touch Capture Thread End\0A\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_start_generating_touch_cap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 267
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 274
  store i8 1, ptr %6, align 8
  br label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %9 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @vivid_thread_touch_cap, ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef %8) #6
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  store ptr null, ptr %2, align 8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %8) #7
  br label %21

14:                                               ; preds = %7
  %15 = tail call i32 @wake_up_process(ptr noundef %9) #6
  store ptr %9, ptr %2, align 8
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 274
  store i8 1, ptr %16, align 8
  %17 = load i32, ptr @vivid_debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %8, ptr noundef nonnull @__func__.vivid_start_generating_touch_cap) #7
  br label %21

21:                                               ; preds = %19, %14, %11, %5
  %22 = phi i32 [ 0, %5 ], [ %12, %11 ], [ 0, %14 ], [ 0, %19 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_thread_touch_cap(ptr noundef %0) #0 {
  %2 = load i32, ptr @vivid_debug, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %5) #7
  br label %7

7:                                                ; preds = %4, %1
  %8 = tail call zeroext i1 @set_freezable() #6
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 270
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 273
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 271
  store i8 0, ptr %11, align 4
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 268
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 257
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 275
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 275, i32 1
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 255
  br label %19

19:                                               ; preds = %99, %7
  %20 = load volatile i32, ptr @system_freezing_cnt, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22, !prof !8

22:                                               ; preds = %19
  %23 = tail call ptr @llvm.thread.pointer() #6
  %24 = tail call zeroext i1 @freezing_slow_path(ptr noundef %23) #6
  br i1 %24, label %25, label %27, !prof !9

25:                                               ; preds = %22
  %26 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #6
  br label %27

27:                                               ; preds = %25, %22, %19
  %28 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %28, label %106, label %29

29:                                               ; preds = %27
  %30 = tail call i32 @mutex_trylock(ptr noundef %14) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void @schedule() #6
  br label %99

33:                                               ; preds = %29
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = load i8, ptr %11, align 4, !range !10
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, ptr %13, align 4
  br label %42

39:                                               ; preds = %33
  store i32 %34, ptr %13, align 4
  %40 = load i32, ptr %10, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %9, align 8
  store i8 0, ptr %15, align 8
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i32 [ %38, %37 ], [ %34, %39 ]
  %44 = load i32, ptr %17, align 4
  %45 = load i32, ptr %16, align 4
  %46 = sub i32 %34, %43
  %47 = zext i32 %46 to i64
  %48 = zext i32 %44 to i64
  %49 = mul nuw i64 %47, %48
  %50 = mul i32 %45, 100
  %51 = lshr exact i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = add nuw i64 %49, %52
  %54 = icmp ult i64 %53, 4294967296
  br i1 %54, label %55, label %59, !prof !8

55:                                               ; preds = %42
  %56 = trunc i64 %53 to i32
  %57 = udiv i32 %56, %50
  %58 = zext i32 %57 to i64
  br label %62

59:                                               ; preds = %42
  %60 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %50, i64 %53) #8, !srcloc !11
  %61 = extractvalue { i64, i64 } %60, 1
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i64 [ %58, %55 ], [ %61, %59 ]
  %64 = icmp ugt i32 %46, -268727296
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  store i32 %34, ptr %13, align 4
  %66 = trunc i64 %63 to i32
  store i32 %66, ptr %18, align 8
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i64 [ 0, %65 ], [ %63, %62 ]
  %69 = load i32, ptr %9, align 8
  %70 = trunc i64 %68 to i32
  %71 = add i32 %69, %70
  store i32 %71, ptr %10, align 4
  tail call fastcc void @vivid_thread_tch_cap_tick(ptr noundef %0)
  %72 = add i64 %68, 1
  %73 = zext i32 %45 to i64
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = load i32, ptr %13, align 4
  %76 = sub i32 %74, %75
  tail call void @mutex_unlock(ptr noundef %14) #6
  %77 = mul nuw nsw i64 %73, 100
  %78 = mul i64 %77, %72
  %79 = lshr i32 %44, 1
  %80 = zext i32 %79 to i64
  %81 = add i64 %78, %80
  %82 = icmp ult i64 %81, 4294967296
  br i1 %82, label %83, label %87, !prof !8

83:                                               ; preds = %67
  %84 = trunc i64 %81 to i32
  %85 = udiv i32 %84, %44
  %86 = zext i32 %85 to i64
  br label %90

87:                                               ; preds = %67
  %88 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %44, i64 %81) #8, !srcloc !11
  %89 = extractvalue { i64, i64 } %88, 1
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i64 [ %86, %83 ], [ %89, %87 ]
  %92 = zext i32 %76 to i64
  %93 = tail call i64 @llvm.umax.i64(i64 %91, i64 %92)
  %94 = trunc i64 %93 to i32
  %95 = sub i32 %94, %76
  %96 = load volatile i32, ptr @jiffies, align 64
  %97 = sub i32 %96, %34
  %98 = icmp ult i32 %97, %95
  br i1 %98, label %100, label %99

99:                                               ; preds = %102, %100, %90, %32
  br label %19

100:                                              ; preds = %102, %90
  %101 = tail call zeroext i1 @kthread_should_stop() #6
  br i1 %101, label %99, label %102

102:                                              ; preds = %100
  tail call void @schedule() #6
  %103 = load volatile i32, ptr @jiffies, align 64
  %104 = sub i32 %103, %34
  %105 = icmp ult i32 %104, %95
  br i1 %105, label %100, label %99

106:                                              ; preds = %27
  %107 = load i32, ptr @vivid_debug, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %110) #7
  br label %112

112:                                              ; preds = %109, %106
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_stop_generating_touch_cap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 267
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 274
  store i8 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 249
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %33, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 37
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  br label %13

13:                                               ; preds = %28, %10
  %14 = phi ptr [ %8, %10 ], [ %29, %28 ]
  %15 = getelementptr i8, ptr %14, i32 -640
  %16 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %20 = getelementptr i8, ptr %14, i32 -596
  %21 = load ptr, ptr %20, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %21, ptr noundef %11) #6
  tail call void @vb2_buffer_done(ptr noundef %15, i32 noundef 6) #6
  %22 = load i32, ptr @vivid_debug, align 4
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = getelementptr i8, ptr %14, i32 -636
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %12, i32 noundef %26) #7
  br label %28

28:                                               ; preds = %24, %13
  %29 = load volatile ptr, ptr %7, align 4
  %30 = icmp eq ptr %29, %7
  br i1 %30, label %31, label %13

31:                                               ; preds = %28
  %32 = load ptr, ptr %2, align 8
  br label %33

33:                                               ; preds = %31, %5
  %34 = phi ptr [ %32, %31 ], [ %3, %5 ]
  %35 = tail call i32 @kthread_stop(ptr noundef %34) #6
  store ptr null, ptr %2, align 8
  br label %36

36:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vivid_thread_tch_cap_tick(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 249
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %4, i32 -640
  %8 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi ptr [ null, %1 ], [ %7, %6 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  %14 = load i16, ptr %2, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  %16 = icmp eq ptr %13, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 7, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 37
  %21 = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %19, ptr noundef %20) #6
  tail call void @vivid_fillbuff_tch(ptr noundef %0, ptr noundef nonnull %13) #6
  %22 = load ptr, ptr %18, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %22, ptr noundef %20) #6
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 156
  %24 = load i8, ptr %23, align 4, !range !10
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %13, i32 noundef %26) #6
  %27 = load i32, ptr @vivid_debug, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %31 = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %30, i32 noundef %32) #7
  br label %34

34:                                               ; preds = %29, %17
  %35 = tail call i64 @ktime_get() #6
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 160
  %37 = load i64, ptr %36, align 8
  %38 = add i64 %37, %35
  %39 = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 5
  store i64 %38, ptr %39, align 8
  br label %40

40:                                               ; preds = %34, %12
  %41 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 156
  store i8 0, ptr %41, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_fillbuff_tch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 2148588985, i64 2148589265, i64 2148589599, i64 2148589933}
!12 = !{i64 2149180875}
!13 = !{i64 2149176699}
!14 = !{i64 2149176774, i64 2149176801, i64 2149176848, i64 2149176870, i64 2149176898, i64 2149176918}
!15 = !{i64 2149203878}
