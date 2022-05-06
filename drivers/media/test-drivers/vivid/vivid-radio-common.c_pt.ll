; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-radio-common.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-radio-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.82, %struct.anon.83, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@vivid_radio_bands = dso_local local_unnamed_addr constant [3 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 1, i32 0, i32 1041, i32 1024000, i32 1728000, i32 4, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 1, i32 1025, i32 8320, i32 27360, i32 8, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 1, i32 2, i32 1025, i32 36800, i32 417600, i32 8, [9 x i32] zeroinitializer }], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_radio_rds_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334
  %3 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 342
  %4 = load i32, ptr %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 350
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %99, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 347
  %11 = load i8, ptr %10, align 8, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %188, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 114
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @mutex_lock(ptr noundef %19) #5
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 23
  %22 = load i32, ptr %21, align 8
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 2
  store i16 %23, ptr %24, align 2
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 115
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %26, i32 0, i32 23
  %28 = load i32, ptr %27, align 8
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 3
  store i8 %29, ptr %30, align 2
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 116
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 23
  %34 = load i32, ptr %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 4
  %37 = zext i1 %35 to i8
  store i8 %37, ptr %36, align 1
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 117
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %39, i32 0, i32 23
  %41 = load i32, ptr %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 5
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 2
  %45 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 118
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 23
  %48 = load i32, ptr %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 6
  %51 = zext i1 %49 to i8
  store i8 %51, ptr %50, align 1
  %52 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 119
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %53, i32 0, i32 23
  %55 = load i32, ptr %54, align 8
  %56 = icmp ne i32 %55, 0
  %57 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 7
  %58 = zext i1 %56 to i8
  store i8 %58, ptr %57, align 2
  %59 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 120
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.v4l2_ctrl, ptr %60, i32 0, i32 23
  %62 = load i32, ptr %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 8
  %65 = zext i1 %63 to i8
  store i8 %65, ptr %64, align 1
  %66 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 121
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.v4l2_ctrl, ptr %67, i32 0, i32 23
  %69 = load i32, ptr %68, align 8
  %70 = icmp ne i32 %69, 0
  %71 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 9
  %72 = zext i1 %70 to i8
  store i8 %72, ptr %71, align 2
  %73 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 122
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.v4l2_ctrl, ptr %74, i32 0, i32 23
  %76 = load i32, ptr %75, align 8
  %77 = icmp ne i32 %76, 0
  %78 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 10
  %79 = zext i1 %77 to i8
  store i8 %79, ptr %78, align 1
  %80 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 11
  %81 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 123
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.v4l2_ctrl, ptr %82, i32 0, i32 26
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 @strscpy(ptr noundef %80, ptr noundef %84, i32 noundef 9) #5
  %86 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 12
  %87 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 124
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.v4l2_ctrl, ptr %88, i32 0, i32 26
  %90 = load ptr, ptr %89, align 4
  %91 = select i1 %5, i32 64, i32 0
  %92 = getelementptr i8, ptr %90, i32 %91
  %93 = tail call i32 @strscpy(ptr noundef %86, ptr noundef %92, i32 noundef 65) #5
  %94 = load ptr, ptr %14, align 4
  %95 = getelementptr inbounds %struct.v4l2_ctrl, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  tail call void @mutex_unlock(ptr noundef %98) #5
  br label %102

99:                                               ; preds = %1
  %100 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 335
  %101 = load i32, ptr %100, align 8
  tail call void @vivid_rds_gen_fill(ptr noundef %2, i32 noundef %101, i1 noundef zeroext %5) #5
  br label %102

102:                                              ; preds = %99, %13
  %103 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 340
  %104 = load i8, ptr %103, align 1, !range !8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %187, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 125
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 3
  %110 = load i8, ptr %109, align 2
  %111 = zext i8 %110 to i32
  %112 = getelementptr inbounds %struct.v4l2_ctrl, ptr %108, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  tail call void @mutex_lock(ptr noundef %115) #5
  %116 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %108, i32 noundef %111) #5
  %117 = load ptr, ptr %112, align 8
  %118 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %117, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  tail call void @mutex_unlock(ptr noundef %119) #5
  %120 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 126
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 8
  %123 = load i8, ptr %122, align 1, !range !8
  %124 = zext i8 %123 to i32
  %125 = getelementptr inbounds %struct.v4l2_ctrl, ptr %121, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %126, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  tail call void @mutex_lock(ptr noundef %128) #5
  %129 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %121, i32 noundef %124) #5
  %130 = load ptr, ptr %125, align 8
  %131 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  tail call void @mutex_unlock(ptr noundef %132) #5
  %133 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 127
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 9
  %136 = load i8, ptr %135, align 2, !range !8
  %137 = zext i8 %136 to i32
  %138 = getelementptr inbounds %struct.v4l2_ctrl, ptr %134, i32 0, i32 2
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  tail call void @mutex_lock(ptr noundef %141) #5
  %142 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %134, i32 noundef %137) #5
  %143 = load ptr, ptr %138, align 8
  %144 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  tail call void @mutex_unlock(ptr noundef %145) #5
  %146 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 128
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 10
  %149 = load i8, ptr %148, align 1, !range !8
  %150 = zext i8 %149 to i32
  %151 = getelementptr inbounds %struct.v4l2_ctrl, ptr %147, i32 0, i32 2
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %152, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  tail call void @mutex_lock(ptr noundef %154) #5
  %155 = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %147, i32 noundef %150) #5
  %156 = load ptr, ptr %151, align 8
  %157 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %156, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  tail call void @mutex_unlock(ptr noundef %158) #5
  %159 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 129
  %160 = load ptr, ptr %159, align 8
  %161 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 11
  %162 = getelementptr inbounds %struct.v4l2_ctrl, ptr %160, i32 0, i32 2
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %163, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  tail call void @mutex_lock(ptr noundef %165) #5
  %166 = tail call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef %160, ptr noundef %161) #5
  %167 = load ptr, ptr %162, align 8
  %168 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %167, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  tail call void @mutex_unlock(ptr noundef %169) #5
  %170 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 130
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 334, i32 12
  %173 = getelementptr inbounds %struct.v4l2_ctrl, ptr %171, i32 0, i32 2
  %174 = load ptr, ptr %173, align 8
  %175 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %174, i32 0, i32 1
  %176 = load ptr, ptr %175, align 4
  tail call void @mutex_lock(ptr noundef %176) #5
  %177 = tail call i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef %171, ptr noundef %172) #5
  %178 = load ptr, ptr %173, align 8
  %179 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %178, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  tail call void @mutex_unlock(ptr noundef %180) #5
  %181 = load i8, ptr %6, align 4, !range !8
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %106
  %184 = load i32, ptr %3, align 4
  %185 = icmp eq i32 %184, 0
  %186 = zext i1 %185 to i32
  store i32 %186, ptr %3, align 4
  br label %187

187:                                              ; preds = %183, %106, %102
  tail call void @vivid_rds_generate(ptr noundef %2) #5
  br label %188

188:                                              ; preds = %187, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_rds_gen_fill(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_rds_generate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_radio_g_frequency(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_s_frequency(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 720799
  %13 = icmp ult i32 %11, 32081
  %14 = select i1 %13, i32 1, i32 2
  %15 = select i1 %12, i32 0, i32 %14
  %16 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %15, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %11, i32 %17)
  %19 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %15, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 %20)
  store i32 %21, ptr %1, align 4
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 335
  %23 = load i32, ptr %22, align 8
  %24 = icmp ult i32 %23, 27361
  %25 = select i1 %24, i32 80, i32 800
  %26 = select i1 %24, i32 1600, i32 16000
  %27 = add i32 %25, %23
  %28 = urem i32 %27, %26
  %29 = sub nsw i32 %28, %25
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 70
  %31 = load i8, ptr %30, align 1, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 345
  %35 = load i32, ptr %34, align 8
  %36 = sub i32 %23, %35
  br label %37

37:                                               ; preds = %33, %9
  %38 = phi i32 [ %36, %33 ], [ 16000, %9 ]
  %39 = tail call i32 @llvm.abs.i32(i32 %38, i1 false) #5
  %40 = tail call i32 @llvm.abs.i32(i32 %29, i1 true) #5
  %41 = icmp sgt i32 %39, %40
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 350
  br i1 %41, label %55, label %43

43:                                               ; preds = %37
  %44 = load i8, ptr %42, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 347
  %48 = load i8, ptr %47, align 8, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 334
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(684) %51, i8 0, i32 684, i1 false) #5
  br label %52

52:                                               ; preds = %50, %46, %43
  %53 = icmp ugt i32 %23, 1023999
  %54 = zext i1 %53 to i8
  br label %55

55:                                               ; preds = %52, %37
  %56 = phi i8 [ %54, %52 ], [ 0, %37 ]
  %57 = phi i32 [ %38, %52 ], [ %29, %37 ]
  store i8 %56, ptr %42, align 4
  %58 = mul i32 %57, 10
  %59 = select i1 %24, i32 %58, i32 %57
  %60 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 337
  store i32 %59, ptr %60, align 8
  tail call void @vivid_radio_rds_init(ptr noundef %6)
  br label %61

61:                                               ; preds = %55, %3
  %62 = phi i32 [ 0, %55 ], [ -22, %3 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
