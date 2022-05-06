; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-radio-rx.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-radio-rx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
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
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.88, %struct.anon.89, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
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
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.v4l2_hw_freq_seek = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }

@vivid_radio_bands = external dso_local local_unnamed_addr constant [3 x %struct.v4l2_frequency_band], align 4
@.str = private unnamed_addr constant [18 x i8] c"AM/FM/SW Receiver\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_rx_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = alloca %struct.v4l2_rds_data, align 1
  %6 = tail call ptr @video_devdata(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 334
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 340
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %177

13:                                               ; preds = %4
  %14 = icmp ult i32 %2, 3
  br i1 %14, label %177, label %15

15:                                               ; preds = %13
  %16 = urem i32 %2, 3
  %17 = sub nuw i32 %2, %16
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 39
  %19 = tail call i32 @mutex_lock_interruptible(ptr noundef %18) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %177

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 344
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, %23
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  tail call void @mutex_unlock(ptr noundef %18) #7
  br label %177

30:                                               ; preds = %21
  tail call void @vivid_radio_rds_init(ptr noundef %8) #7
  %31 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %32 = load ptr, ptr %31, align 8
  store ptr %32, ptr %22, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 351
  %35 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 343
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 342
  %37 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 341
  %38 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 350
  %39 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 346
  %40 = getelementptr inbounds %struct.vivid_dev, ptr %8, i32 0, i32 337
  %41 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  br label %42

42:                                               ; preds = %102, %33
  %43 = tail call i64 @ktime_get() #7
  %44 = load i64, ptr %34, align 8
  %45 = sub i64 %43, %44
  %46 = tail call i64 @llvm.abs.i64(i64 %45, i1 false) #7
  %47 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3528129202283441362, i64 %46) #8, !srcloc !9
  %48 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3528129202283441362, i64 %46, i64 %47) #8, !srcloc !10
  %49 = icmp slt i64 %45, 0
  %50 = lshr i64 %48, 22
  %51 = sub nsw i64 0, %50
  %52 = select i1 %49, i64 %51, i64 %50
  %53 = trunc i64 %52 to i32
  %54 = urem i32 %53, 228
  %55 = and i32 %54, 1
  %56 = load i32, ptr %35, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %42
  %59 = load i32, ptr %36, align 4
  %60 = icmp eq i32 %59, %55
  br i1 %60, label %63, label %61

61:                                               ; preds = %58, %42
  store i32 %55, ptr %36, align 4
  tail call void @vivid_radio_rds_init(ptr noundef %8) #7
  %62 = load i32, ptr %35, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i32 [ %62, %61 ], [ %56, %58 ]
  %65 = add i32 %64, 228
  %66 = icmp ugt i32 %65, %53
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = add i32 %53, -227
  store i32 %68, ptr %35, align 8
  br label %71

69:                                               ; preds = %63
  %70 = icmp eq i32 %64, %53
  br i1 %70, label %86, label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %64, %69 ]
  %73 = load i8, ptr %37, align 2, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %71
  %76 = load i8, ptr %38, align 4, !range !8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %39, align 4
  %80 = and i32 %79, 16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78, %75
  %83 = load i32, ptr %40, align 8
  %84 = tail call i32 @llvm.abs.i32(i32 %83, i1 false)
  %85 = icmp sgt i32 %84, 200
  br i1 %85, label %86, label %105

86:                                               ; preds = %82, %78, %71, %69
  tail call void @mutex_unlock(ptr noundef %18) #7
  %87 = load i32, ptr %41, align 4
  %88 = and i32 %87, 2048
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %177

90:                                               ; preds = %86
  %91 = tail call i32 @msleep_interruptible(i32 noundef 20) #7
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %90
  %94 = tail call ptr @llvm.thread.pointer() #7
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, 256
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %177, !prof !11

98:                                               ; preds = %93
  %99 = load volatile i32, ptr %94, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %177

102:                                              ; preds = %98, %90
  %103 = tail call i32 @mutex_lock_interruptible(ptr noundef %18) #7
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %42, label %177

105:                                              ; preds = %82
  %106 = trunc i64 %52 to i32
  %107 = sdiv i32 %84, 4
  %108 = icmp eq i32 %16, %2
  br i1 %108, label %175, label %109

109:                                              ; preds = %105
  %110 = icmp ult i32 %84, 4
  %111 = getelementptr inbounds %struct.v4l2_rds_data, ptr %5, i32 0, i32 2
  %112 = getelementptr inbounds %struct.v4l2_rds_data, ptr %5, i32 0, i32 1
  br label %113

113:                                              ; preds = %170, %109
  %114 = phi i32 [ %72, %109 ], [ %173, %170 ]
  %115 = phi i32 [ 0, %109 ], [ %171, %170 ]
  %116 = icmp ult i32 %114, %106
  br i1 %116, label %117, label %175

117:                                              ; preds = %113
  %118 = urem i32 %114, 228
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #7
  %119 = getelementptr %struct.v4l2_rds_data, ptr %9, i32 %118
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef align 1 dereferenceable(3) %119, i32 3, i1 false)
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i8, ptr %38, align 4, !range !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  call void @vivid_radio_rds_init(ptr noundef %8) #7
  br label %125

125:                                              ; preds = %124, %121, %117
  br i1 %110, label %155, label %126

126:                                              ; preds = %125
  %127 = call i32 @prandom_u32() #7
  %128 = zext i32 %127 to i64
  %129 = mul nuw nsw i64 %128, 100
  %130 = lshr i64 %129, 32
  %131 = trunc i64 %130 to i32
  %132 = icmp ugt i32 %107, %131
  br i1 %132, label %133, label %155

133:                                              ; preds = %126
  %134 = call i32 @prandom_u32() #7
  %135 = lshr i32 %134, 30
  switch i32 %135, label %154 [
    i32 0, label %136
    i32 1, label %139
    i32 2, label %142
    i32 3, label %151
  ]

136:                                              ; preds = %133
  %137 = load i8, ptr %111, align 1
  %138 = or i8 %137, 64
  store i8 %138, ptr %111, align 1
  br label %155

139:                                              ; preds = %133
  %140 = load i8, ptr %111, align 1
  %141 = or i8 %140, 7
  store i8 %141, ptr %111, align 1
  br label %155

142:                                              ; preds = %133
  %143 = load i8, ptr %111, align 1
  %144 = or i8 %143, -128
  store i8 %144, ptr %111, align 1
  %145 = call i32 @prandom_u32() #7
  %146 = lshr i32 %145, 24
  %147 = trunc i32 %146 to i8
  store i8 %147, ptr %5, align 1
  %148 = call i32 @prandom_u32() #7
  %149 = lshr i32 %148, 24
  %150 = trunc i32 %149 to i8
  store i8 %150, ptr %112, align 1
  br label %155

151:                                              ; preds = %133
  %152 = icmp eq i32 %115, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %151
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #7
  br label %170

154:                                              ; preds = %133
  unreachable

155:                                              ; preds = %151, %142, %139, %136, %126, %125
  %156 = getelementptr i8, ptr %1, i32 %115
  %157 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %156, i32 3, i32 -1090519040) #8, !srcloc !12
  %158 = extractvalue { i32, i32 } %157, 0
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %155
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #7
  br label %175

161:                                              ; preds = %155
  %162 = tail call ptr @llvm.thread.pointer() #7
  %163 = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 3
  %164 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %163) #9, !srcloc !13
  %165 = and i32 %164, -13
  %166 = or i32 %165, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %166) #7, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %167 = call i32 @arm_copy_to_user(ptr noundef %156, ptr noundef nonnull %5, i32 noundef 3) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %164) #7, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %168 = icmp eq i32 %167, 0
  %169 = add i32 %115, 3
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #7
  br i1 %168, label %170, label %175

170:                                              ; preds = %161, %153
  %171 = phi i32 [ %115, %153 ], [ %169, %161 ]
  %172 = load i32, ptr %35, align 8
  %173 = add i32 %172, 1
  store i32 %173, ptr %35, align 8
  %174 = icmp ult i32 %171, %17
  br i1 %174, label %113, label %175

175:                                              ; preds = %170, %161, %160, %113, %105
  %176 = phi i32 [ -14, %160 ], [ 0, %105 ], [ %115, %113 ], [ %171, %170 ], [ -14, %161 ]
  call void @mutex_unlock(ptr noundef %18) #7
  br label %177

177:                                              ; preds = %175, %102, %98, %93, %86, %29, %15, %13, %4
  %178 = phi i32 [ -16, %29 ], [ %176, %175 ], [ -22, %4 ], [ 0, %13 ], [ -512, %15 ], [ -4, %93 ], [ -512, %102 ], [ -4, %98 ], [ -11, %86 ]
  ret i32 %178
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_radio_rds_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_rx_poll(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @v4l2_ctrl_poll(ptr noundef %0, ptr noundef %1) #7
  %4 = or i32 %3, 65
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_radio_rx_enum_freq_bands(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #4 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 2
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %2, ptr noundef align 4 dereferenceable(64) %11, i32 64, i1 false)
  br label %12

12:                                               ; preds = %10, %6, %3
  %13 = phi i32 [ 0, %10 ], [ -22, %3 ], [ -22, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_rx_s_hw_freq_seek(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %130

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %2, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 338
  %14 = load i32, ptr %13, align 4
  br i1 %12, label %17, label %15

15:                                               ; preds = %9
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %130, label %19

17:                                               ; preds = %9
  %18 = icmp eq i32 %14, 1
  br i1 %18, label %130, label %19

19:                                               ; preds = %17, %15
  %20 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %2, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %2, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = xor i1 %22, %25
  br i1 %26, label %130, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 2048
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %130

32:                                               ; preds = %27
  br i1 %22, label %39, label %33

33:                                               ; preds = %32
  %34 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 0, i32 4), align 4
  %35 = icmp ult i32 %21, %34
  %36 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 0, i32 5), align 4
  %37 = icmp ugt i32 %24, %36
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %47, label %59

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 335
  %41 = load i32, ptr %40, align 8
  %42 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 0, i32 4), align 4
  %43 = icmp ult i32 %41, %42
  %44 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 0, i32 5), align 4
  %45 = icmp ugt i32 %41, %44
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %72, label %84

47:                                               ; preds = %33
  %48 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 1, i32 4), align 4
  %49 = icmp ult i32 %21, %48
  %50 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 1, i32 5), align 4
  %51 = icmp ugt i32 %24, %50
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 2, i32 4), align 4
  %55 = icmp ult i32 %21, %54
  %56 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 2, i32 5), align 4
  %57 = icmp ugt i32 %24, %56
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %130, label %59

59:                                               ; preds = %53, %47, %33
  %60 = phi i32 [ 0, %33 ], [ 1, %47 ], [ 2, %53 ]
  %61 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 339
  %62 = load i8, ptr %61, align 8, !range !8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %59
  %65 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %60, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %21, %66
  br i1 %67, label %68, label %130

68:                                               ; preds = %64
  %69 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %60, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %24, %70
  br i1 %71, label %90, label %130

72:                                               ; preds = %39
  %73 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 1, i32 4), align 4
  %74 = icmp ult i32 %41, %73
  %75 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 1, i32 5), align 4
  %76 = icmp ugt i32 %41, %75
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 2, i32 4), align 4
  %80 = icmp ult i32 %41, %79
  %81 = load i32, ptr getelementptr inbounds ([3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 2, i32 5), align 4
  %82 = icmp ugt i32 %41, %81
  %83 = select i1 %80, i1 true, i1 %82
  br i1 %83, label %130, label %84

84:                                               ; preds = %78, %72, %39
  %85 = phi i32 [ 0, %39 ], [ 1, %72 ], [ 2, %78 ]
  %86 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %85, i32 4
  %87 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @vivid_radio_bands, i32 0, i32 %85, i32 5
  %88 = load i32, ptr %86, align 4
  %89 = load i32, ptr %87, align 4
  br label %90

90:                                               ; preds = %84, %68, %59
  %91 = phi i32 [ %89, %84 ], [ %24, %68 ], [ %24, %59 ]
  %92 = phi i32 [ %88, %84 ], [ %21, %68 ], [ %21, %59 ]
  %93 = phi i32 [ %85, %84 ], [ %60, %68 ], [ %60, %59 ]
  %94 = icmp eq i32 %93, 1
  %95 = select i1 %94, i32 -1600, i32 -16000
  %96 = select i1 %94, i32 1600, i32 16000
  %97 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 335
  %98 = load i32, ptr %97, align 8
  %99 = tail call i32 @llvm.umax.i32(i32 %98, i32 %92)
  %100 = tail call i32 @llvm.umin.i32(i32 %99, i32 %91)
  %101 = getelementptr inbounds %struct.v4l2_hw_freq_seek, ptr %2, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %90
  %105 = urem i32 %100, %96
  %106 = add i32 %100, %96
  %107 = sub i32 %106, %105
  %108 = icmp ugt i32 %107, %91
  br i1 %108, label %109, label %129

109:                                              ; preds = %104
  br i1 %12, label %130, label %110

110:                                              ; preds = %109
  %111 = urem i32 %92, %96
  %112 = add i32 %92, %96
  %113 = sub i32 %112, %111
  %114 = icmp ult i32 %113, %98
  br i1 %114, label %129, label %130

115:                                              ; preds = %90
  %116 = add nsw i32 %96, -1
  %117 = add i32 %116, %100
  %118 = urem i32 %117, %96
  %119 = add i32 %117, %95
  %120 = sub i32 %119, %118
  %121 = icmp ult i32 %120, %92
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  br i1 %12, label %130, label %123

123:                                              ; preds = %122
  %124 = add i32 %116, %91
  %125 = urem i32 %124, %96
  %126 = add i32 %124, %95
  %127 = sub i32 %126, %125
  %128 = icmp ugt i32 %127, %98
  br i1 %128, label %129, label %130

129:                                              ; preds = %123, %115, %110, %104
  br label %130

130:                                              ; preds = %129, %123, %122, %110, %109, %78, %68, %64, %53, %27, %19, %17, %15, %3
  %131 = phi i32 [ 0, %129 ], [ -22, %3 ], [ -22, %15 ], [ -22, %17 ], [ -22, %19 ], [ -11, %27 ], [ -22, %68 ], [ -22, %64 ], [ -61, %109 ], [ -61, %110 ], [ -61, %122 ], [ -61, %123 ], [ -22, %53 ], [ -22, %78 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_rx_g_tuner(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %92

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 1
  %11 = tail call i32 @strscpy(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef 32) #7
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 340
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 1425, i32 1681
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 339
  %17 = load i8, ptr %16, align 8, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 0, i32 2048
  %20 = or i32 %19, %15
  %21 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 338
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %25, label %29

25:                                               ; preds = %9
  %26 = shl i32 %23, 2
  %27 = add i32 %26, 4
  %28 = or i32 %20, %27
  store i32 %28, ptr %21, align 4
  br label %29

29:                                               ; preds = %25, %9
  %30 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 4
  store i32 8320, ptr %30, align 4
  %31 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 5
  store i32 1728000, ptr %31, align 4
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 337
  %33 = load i32, ptr %32, align 8
  %34 = tail call i32 @llvm.abs.i32(i32 %33, i1 false)
  %35 = icmp sgt i32 %34, 800
  %36 = mul i32 %34, 65535
  %37 = udiv i32 %36, 800
  %38 = sub nsw i32 65535, %37
  %39 = select i1 %35, i32 0, i32 %38
  %40 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 8
  store i32 %39, ptr %40, align 4
  %41 = icmp sgt i32 %33, 800
  %42 = select i1 %41, i32 0, i32 %33
  %43 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 9
  store i32 %42, ptr %43, align 4
  br i1 %35, label %60, label %44

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 335
  %46 = load i32, ptr %45, align 8
  %47 = icmp ult i32 %46, 1024000
  %48 = icmp slt i32 %39, 32768
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 350
  %52 = load i8, ptr %51, align 4, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 346
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %54, %44, %29
  %61 = phi i32 [ 2, %59 ], [ 0, %29 ], [ 1, %44 ], [ 1, %54 ]
  %62 = phi i32 [ 18, %59 ], [ 16, %29 ], [ 17, %44 ], [ 17, %54 ]
  %63 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 6
  store i32 %61, ptr %63, align 4
  %64 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 341
  %65 = load i8, ptr %64, align 2, !range !8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 350
  %69 = load i8, ptr %68, align 4, !range !8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 346
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71, %67
  %77 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 335
  %78 = load i32, ptr %77, align 8
  %79 = icmp ugt i32 %78, 1023999
  %80 = icmp sgt i32 %39, 49151
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 6
  store i32 %62, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %76, %71, %60
  %85 = load i8, ptr %12, align 1, !range !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void @vivid_radio_rds_init(ptr noundef %6) #7
  br label %88

88:                                               ; preds = %87, %84
  %89 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 336
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 7
  store i32 %90, ptr %91, align 4
  br label %92

92:                                               ; preds = %88, %3
  %93 = phi i32 [ 0, %88 ], [ -22, %3 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_radio_rx_s_tuner(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #7
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %9, i32 0, i32 336
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

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
!9 = !{i64 847513, i64 847540}
!10 = !{i64 848023, i64 848050, i64 848084, i64 848105}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2150211249, i64 2150211274}
!13 = !{i64 2706783}
!14 = !{i64 2706980}
!15 = !{i64 2150192259}
