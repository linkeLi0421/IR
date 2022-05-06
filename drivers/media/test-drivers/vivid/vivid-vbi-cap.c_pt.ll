; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-vbi-cap.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-vbi-cap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
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
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }
%struct.v4l2_sliced_vbi_cap = type { i16, [2 x [24 x i16]], i32, [3 x i32] }

@vivid_vbi_cap_qops = dso_local local_unnamed_addr constant %struct.vb2_ops { ptr @vbi_cap_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vbi_cap_buf_prepare, ptr null, ptr null, ptr @vbi_cap_start_streaming, ptr @vbi_cap_stop_streaming, ptr @vbi_cap_buf_queue, ptr @vbi_cap_buf_request_complete }, align 4
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"\017%s: %s\0A\00", align 1
@__func__.vbi_cap_buf_prepare = private unnamed_addr constant [20 x i8] c"vbi_cap_buf_prepare\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", align 1
@__func__.vbi_cap_start_streaming = private unnamed_addr constant [24 x i8] c"vbi_cap_start_streaming\00", align 1
@__func__.vbi_cap_stop_streaming = private unnamed_addr constant [23 x i8] c"vbi_cap_stop_streaming\00", align 1
@__func__.vbi_cap_buf_queue = private unnamed_addr constant [18 x i8] c"vbi_cap_buf_queue\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_raw_vbi_cap_process(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.v4l2_vbi_format, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #8
  %4 = tail call ptr @vb2_plane_vaddr(ptr noundef %1, i32 noundef 0) #8
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 173
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 174, i32 %6
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 63744
  %10 = icmp eq i64 %9, 0
  store i32 27000000, ptr %3, align 4
  %11 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %3, i32 0, i32 1
  store i32 24, ptr %11, align 4
  %12 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %3, i32 0, i32 2
  store i32 1440, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %3, i32 0, i32 3
  store i32 1497715271, ptr %13, align 4
  %14 = select i1 %10, i32 6, i32 10
  %15 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %3, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = select i1 %10, i32 319, i32 273
  %17 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %3, i32 0, i32 4, i32 1
  store i32 %16, ptr %17, align 4
  %18 = select i1 %10, i32 18, i32 12
  %19 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %3, i32 0, i32 5
  %20 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %3, i32 0, i32 5, i32 1
  store i32 %18, ptr %20, align 4
  store i32 %18, ptr %19, align 4
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 138
  %22 = load i8, ptr %21, align 4, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %3, i32 0, i32 6
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %3, i32 0, i32 7
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.v4l2_vbi_format, ptr %3, i32 0, i32 7, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 262
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = lshr i32 %29, 1
  store i32 %35, ptr %30, align 8
  br label %36

36:                                               ; preds = %34, %2
  %37 = phi i32 [ %35, %34 ], [ %29, %2 ]
  tail call fastcc void @vivid_sliced_vbi_cap_fill(ptr noundef %0, i32 noundef %37)
  %38 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi i32 [ %43, %41 ], [ 0, %36 ]
  tail call void @llvm.memset.p0.i32(ptr align 1 %4, i8 16, i32 %45, i1 false)
  %46 = load i32, ptr %5, align 4
  %47 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 162, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -1
  %50 = icmp ult i32 %49, 3
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 178
  call void @vivid_vbi_gen_raw(ptr noundef %52, ptr noundef nonnull %3, ptr noundef %4) #8
  br label %53

53:                                               ; preds = %51, %44
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vivid_sliced_vbi_cap_fill(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 178
  %4 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 173
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 174, i32 %5
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 63744
  %9 = icmp ne i64 %8, 0
  tail call void @vivid_vbi_gen_sliced(ptr noundef %3, i1 noundef zeroext %9, i32 noundef %1) #8
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 139
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %9, label %38, label %13

13:                                               ; preds = %2
  br i1 %12, label %27, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 211
  %16 = load i8, ptr %15, align 8, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 212
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 178, i32 0, i32 12, i32 4
  store i8 %20, ptr %21, align 4
  %22 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 212, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 178, i32 0, i32 12, i32 4, i32 1
  store i8 %23, ptr %24, align 1
  br label %64

25:                                               ; preds = %14
  %26 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 178, i32 0, i32 12
  store i32 0, ptr %26, align 4
  br label %64

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 231, i32 29
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %36 [
    i32 2, label %30
    i32 3, label %32
    i32 4, label %34
  ]

30:                                               ; preds = %27
  %31 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 178, i32 0, i32 12, i32 4
  store i8 1, ptr %31, align 4
  br label %64

32:                                               ; preds = %27
  %33 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 178, i32 0, i32 12, i32 4
  store i8 11, ptr %33, align 4
  br label %64

34:                                               ; preds = %27
  %35 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 178, i32 0, i32 12, i32 4
  store i8 7, ptr %35, align 4
  br label %64

36:                                               ; preds = %27
  %37 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 178, i32 0, i32 12, i32 4
  store i8 8, ptr %37, align 4
  br label %64

38:                                               ; preds = %2
  br i1 %12, label %64, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 213
  %41 = load i8, ptr %40, align 1, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 214
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 178, i32 0, i32 0, i32 4
  store i8 %45, ptr %46, align 4
  %47 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 214, i32 0, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 178, i32 0, i32 0, i32 4, i32 1
  store i8 %48, ptr %49, align 1
  br label %51

50:                                               ; preds = %39
  store i32 0, ptr %3, align 4
  br label %51

51:                                               ; preds = %50, %43
  %52 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 213, i32 1
  %53 = load i8, ptr %52, align 1, !range !8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 214, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 178, i32 0, i32 1, i32 4
  store i8 %57, ptr %58, align 4
  %59 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 214, i32 1, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 178, i32 0, i32 1, i32 4, i32 1
  store i8 %60, ptr %61, align 1
  br label %64

62:                                               ; preds = %51
  %63 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 178, i32 0, i32 1
  store i32 0, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %55, %38, %36, %34, %32, %30, %25, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_vbi_gen_raw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_sliced_vbi_cap_process(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @vb2_plane_vaddr(ptr noundef %1, i32 noundef 0) #8
  %4 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 262
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  store i32 %5, ptr %6, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 236
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = lshr i32 %5, 1
  store i32 %11, ptr %6, align 8
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ %5, %2 ]
  tail call fastcc void @vivid_sliced_vbi_cap_fill(ptr noundef %0, i32 noundef %13)
  %14 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i32 [ %19, %17 ], [ 0, %12 ]
  tail call void @llvm.memset.p0.i32(ptr align 4 %3, i8 0, i32 %21, i1 false)
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 173
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.vivid_dev, ptr %0, i32 0, i32 162, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 178
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i32 [ 0, %28 ], [ %34, %30 ]
  %32 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %3, i32 %31
  %33 = getelementptr [25 x %struct.v4l2_sliced_vbi_data], ptr %29, i32 0, i32 %31
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %32, ptr noundef align 4 dereferenceable(64) %33, i32 64, i1 false)
  %34 = add nuw nsw i32 %31, 1
  %35 = icmp eq i32 %34, 25
  br i1 %35, label %36, label %30

36:                                               ; preds = %30, %20
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vbi_cap_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) #5 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 6
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 173
  %11 = load i32, ptr %10, align 4
  br i1 %9, label %18, label %12

12:                                               ; preds = %5
  %13 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 174, i32 %11
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 63744
  %16 = icmp eq i64 %15, 0
  %17 = select i1 %16, i32 51840, i32 34560
  br label %18

18:                                               ; preds = %12, %5
  %19 = phi i32 [ %17, %12 ], [ 2304, %5 ]
  %20 = getelementptr %struct.vivid_dev, ptr %7, i32 0, i32 53, i32 %11
  %21 = load i8, ptr %20, align 1
  %22 = add i8 %21, -1
  %23 = icmp ult i8 %22, 2
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  store i32 %19, ptr %3, align 4
  %25 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 21
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %1, align 4
  %28 = add i32 %27, %26
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = sub i32 2, %26
  store i32 %31, ptr %1, align 4
  br label %32

32:                                               ; preds = %30, %24
  store i32 1, ptr %2, align 4
  br label %33

33:                                               ; preds = %32, %18
  %34 = phi i32 [ 0, %32 ], [ -22, %18 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vbi_cap_buf_prepare(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 6
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 173
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.vivid_dev, ptr %4, i32 0, i32 174, i32 %9
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 63744
  %13 = icmp eq i64 %12, 0
  %14 = select i1 %13, i32 51840, i32 34560
  br label %15

15:                                               ; preds = %7, %1
  %16 = phi i32 [ %14, %7 ], [ 2304, %1 ]
  %17 = load i32, ptr @vivid_debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %20, ptr noundef nonnull @__func__.vbi_cap_buf_prepare) #9
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 154
  %24 = load i8, ptr %23, align 2, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i8 0, ptr %23, align 2
  br label %47

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = icmp ult i32 %33, %16
  br i1 %34, label %38, label %45

35:                                               ; preds = %27
  %36 = load i32, ptr @vivid_debug, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %41

38:                                               ; preds = %31
  %39 = load i32, ptr @vivid_debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ 0, %35 ], [ %33, %38 ]
  %43 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %43, ptr noundef nonnull @__func__.vbi_cap_buf_prepare, i32 noundef %42, i32 noundef %16) #9
  br label %47

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 %16, ptr %46, align 4
  br label %47

47:                                               ; preds = %45, %41, %38, %35, %26
  %48 = phi i32 [ -22, %26 ], [ 0, %45 ], [ -22, %41 ], [ -22, %35 ], [ -22, %38 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vbi_cap_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8, ptr noundef nonnull @__func__.vbi_cap_start_streaming) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 262
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 155
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i8 0, ptr %12, align 1
  br label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 263
  %18 = tail call i32 @vivid_start_generating_vid_cap(ptr noundef %4, ptr noundef %17) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16, %15
  %21 = phi i32 [ -22, %15 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 245
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
  tail call void @vb2_buffer_done(ptr noundef %27, i32 noundef 3) #8
  %32 = icmp eq ptr %28, %22
  br i1 %32, label %33, label %25

33:                                               ; preds = %25, %20, %16
  %34 = phi i32 [ 0, %16 ], [ %21, %20 ], [ %21, %25 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vbi_cap_stop_streaming(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @vivid_debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %7, ptr noundef nonnull @__func__.vbi_cap_stop_streaming) #9
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 263
  tail call void @vivid_stop_generating_vid_cap(ptr noundef %3, ptr noundef %10) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vbi_cap_buf_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8, ptr noundef nonnull @__func__.vbi_cap_buf_queue) #9
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 245
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 245, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  %17 = load i16, ptr %11, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vbi_cap_buf_request_complete(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 7, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 23
  tail call void @v4l2_ctrl_request_complete(ptr noundef %6, ptr noundef %7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_vbi_cap(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = add i8 %11, -1
  %13 = icmp ult i8 %12, 2
  br i1 %13, label %14, label %40

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 64
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 174, i32 %9
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 63744
  %22 = icmp eq i64 %21, 0
  store i32 27000000, ptr %7, align 4
  %23 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 24, ptr %23, align 4
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 1440, ptr %24, align 4
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1497715271, ptr %25, align 4
  %26 = select i1 %22, i32 6, i32 10
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  %28 = select i1 %22, i32 319, i32 273
  %29 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %28, ptr %29, align 4
  %30 = select i1 %22, i32 18, i32 12
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %32 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 %30, ptr %32, align 4
  store i32 %30, ptr %31, align 4
  %33 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 138
  %34 = load i8, ptr %33, align 4, !range !8
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 0, ptr %38, align 4
  %39 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %18, %14, %3
  %41 = phi i32 [ 0, %18 ], [ -22, %14 ], [ -22, %3 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_vbi_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 5, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %9, i32 0, i32 173
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.vivid_dev, ptr %9, i32 0, i32 53, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = add i8 %14, -1
  %16 = icmp ult i8 %15, 2
  br i1 %16, label %17, label %50

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %9, i32 0, i32 64
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.vivid_dev, ptr %9, i32 0, i32 174, i32 %12
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 63744
  %25 = icmp eq i64 %24, 0
  store i32 27000000, ptr %10, align 4
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 24, ptr %26, align 4
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 1440, ptr %27, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1497715271, ptr %28, align 4
  %29 = select i1 %25, i32 6, i32 10
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %29, ptr %30, align 4
  %31 = select i1 %25, i32 319, i32 273
  %32 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %31, ptr %32, align 4
  %33 = select i1 %25, i32 18, i32 12
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %35 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i32 %33, ptr %35, align 4
  store i32 %33, ptr %34, align 4
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %9, i32 0, i32 138
  %37 = load i8, ptr %36, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 0, ptr %41, align 4
  %42 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 0, ptr %42, align 4
  %43 = load i32, ptr %2, align 4
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %49, label %45

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 244, i32 21
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %21
  br label %50

50:                                               ; preds = %49, %45, %17, %3
  %51 = phi i32 [ 0, %49 ], [ -16, %45 ], [ -22, %17 ], [ -22, %3 ]
  ret i32 %51
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_fill_service_lines(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 2
  store i32 2304, ptr %3, align 4
  %4 = trunc i32 %1 to i16
  store i16 %4, ptr %0, align 4
  %5 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(96) %5, i8 0, i32 96, i1 false)
  %6 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 3
  store i64 0, ptr %6, align 4
  %7 = and i32 %1, 65535
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %2
  %10 = and i32 %1, 4096
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 21
  store i16 4096, ptr %13, align 2
  %14 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 21
  store i16 4096, ptr %14, align 2
  br label %15

15:                                               ; preds = %12, %9
  %16 = and i16 %4, 16384
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %15
  %19 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 7
  store i16 1, ptr %19, align 2
  %20 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 7
  store i16 1, ptr %20, align 2
  %21 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 8
  store i16 1, ptr %21, align 2
  %22 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 8
  store i16 1, ptr %22, align 2
  %23 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 9
  store i16 1, ptr %23, align 2
  %24 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 9
  store i16 1, ptr %24, align 2
  %25 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 10
  store i16 1, ptr %25, align 2
  %26 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 10
  store i16 1, ptr %26, align 2
  %27 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 11
  store i16 1, ptr %27, align 2
  %28 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 11
  store i16 1, ptr %28, align 2
  %29 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 12
  store i16 1, ptr %29, align 2
  %30 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 12
  store i16 1, ptr %30, align 2
  %31 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 13
  store i16 1, ptr %31, align 2
  %32 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 13
  store i16 1, ptr %32, align 2
  %33 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 14
  store i16 1, ptr %33, align 2
  %34 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 14
  store i16 1, ptr %34, align 2
  %35 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 15
  store i16 1, ptr %35, align 2
  %36 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 15
  store i16 1, ptr %36, align 2
  %37 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 16
  store i16 1, ptr %37, align 2
  %38 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 16
  store i16 1, ptr %38, align 2
  %39 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 17
  store i16 1, ptr %39, align 2
  %40 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 17
  store i16 1, ptr %40, align 2
  %41 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 1, i32 18
  store i16 1, ptr %41, align 2
  %42 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 18
  store i16 1, ptr %42, align 2
  %43 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %0, i32 0, i32 1, i32 0, i32 23
  store i16 16384, ptr %43, align 2
  br label %44

44:                                               ; preds = %18, %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_sliced_vbi_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = add i8 %11, -1
  %13 = icmp ult i8 %12, 2
  br i1 %13, label %14, label %62

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 65
  %16 = load i8, ptr %15, align 2, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %62, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 177
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 4
  store i32 2304, ptr %21, align 4
  %22 = trunc i32 %20 to i16
  store i16 %22, ptr %7, align 4
  %23 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(96) %23, i8 0, i32 96, i1 false) #8
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  store i64 0, ptr %24, align 4
  %25 = and i32 %20, 65535
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %62, label %27

27:                                               ; preds = %18
  %28 = and i32 %20, 4096
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i16 4096, ptr %31, align 2
  %32 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 3, i32 2, i32 2
  store i16 4096, ptr %32, align 2
  br label %33

33:                                               ; preds = %30, %27
  %34 = and i16 %22, 16384
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %33
  %37 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 1
  store i16 1, ptr %37, align 2
  %38 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i16 1, ptr %38, align 2
  %39 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1, i32 1, i32 8
  store i16 1, ptr %39, align 2
  %40 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1, i32 0, i32 8
  store i16 1, ptr %40, align 2
  %41 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2
  store i16 1, ptr %41, align 2
  %42 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i16 1, ptr %42, align 2
  %43 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 1
  store i16 1, ptr %43, align 2
  %44 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1, i32 0, i32 10
  store i16 1, ptr %44, align 2
  %45 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 2
  store i16 1, ptr %45, align 2
  %46 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i16 1, ptr %46, align 2
  %47 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 3
  store i16 1, ptr %47, align 2
  %48 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1, i32 0, i32 12
  store i16 1, ptr %48, align 2
  %49 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 4
  store i16 1, ptr %49, align 2
  %50 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i16 1, ptr %50, align 2
  %51 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 5
  store i16 1, ptr %51, align 2
  %52 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 1
  store i16 1, ptr %52, align 2
  %53 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 3
  store i16 1, ptr %53, align 2
  %54 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  store i16 1, ptr %54, align 2
  %55 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1, i32 1, i32 16
  store i16 1, ptr %55, align 2
  %56 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 3
  store i16 1, ptr %56, align 2
  %57 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 3, i32 1
  store i16 1, ptr %57, align 2
  %58 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i16 1, ptr %58, align 2
  %59 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1, i32 1, i32 18
  store i16 1, ptr %59, align 2
  %60 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 5
  store i16 1, ptr %60, align 2
  %61 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  store i16 16384, ptr %61, align 2
  br label %62

62:                                               ; preds = %36, %33, %18, %14, %3
  %63 = phi i32 [ -22, %14 ], [ -22, %3 ], [ 0, %18 ], [ 0, %33 ], [ 0, %36 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_sliced_vbi_cap(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 174, i32 %9
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 63744
  %13 = icmp eq i64 %12, 0
  %14 = load i16, ptr %7, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %9
  %17 = load i8, ptr %16, align 1
  %18 = add i8 %17, -1
  %19 = icmp ult i8 %18, 2
  br i1 %19, label %20, label %67

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 65
  %22 = load i8, ptr %21, align 2, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %20
  %25 = select i1 %13, i32 16385, i32 4096
  %26 = and i32 %25, %15
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 4
  store i32 2304, ptr %27, align 4
  %28 = trunc i32 %26 to i16
  store i16 %28, ptr %7, align 4
  %29 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(96) %29, i8 0, i32 96, i1 false) #8
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 4, i32 1
  store i64 0, ptr %30, align 4
  %31 = icmp eq i32 %26, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %24
  %33 = and i32 %26, 4096
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i16 4096, ptr %36, align 2
  %37 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 3, i32 2, i32 2
  store i16 4096, ptr %37, align 2
  br label %38

38:                                               ; preds = %35, %32
  %39 = and i16 %28, 16384
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %67, label %41

41:                                               ; preds = %38
  %42 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 1
  store i16 1, ptr %42, align 2
  %43 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i16 1, ptr %43, align 2
  %44 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1, i32 1, i32 8
  store i16 1, ptr %44, align 2
  %45 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1, i32 0, i32 8
  store i16 1, ptr %45, align 2
  %46 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2
  store i16 1, ptr %46, align 2
  %47 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i16 1, ptr %47, align 2
  %48 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 1
  store i16 1, ptr %48, align 2
  %49 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1, i32 0, i32 10
  store i16 1, ptr %49, align 2
  %50 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 2
  store i16 1, ptr %50, align 2
  %51 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i16 1, ptr %51, align 2
  %52 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 3
  store i16 1, ptr %52, align 2
  %53 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1, i32 0, i32 12
  store i16 1, ptr %53, align 2
  %54 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 4
  store i16 1, ptr %54, align 2
  %55 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  store i16 1, ptr %55, align 2
  %56 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 2, i32 2, i32 5
  store i16 1, ptr %56, align 2
  %57 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 1
  store i16 1, ptr %57, align 2
  %58 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 3
  store i16 1, ptr %58, align 2
  %59 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  store i16 1, ptr %59, align 2
  %60 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1, i32 1, i32 16
  store i16 1, ptr %60, align 2
  %61 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 3
  store i16 1, ptr %61, align 2
  %62 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 3, i32 1
  store i16 1, ptr %62, align 2
  %63 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i16 1, ptr %63, align 2
  %64 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %7, i32 0, i32 1, i32 1, i32 18
  store i16 1, ptr %64, align 2
  %65 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 5
  store i16 1, ptr %65, align 2
  %66 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 2
  store i16 16384, ptr %66, align 2
  br label %67

67:                                               ; preds = %41, %38, %24, %20, %3
  %68 = phi i32 [ -22, %20 ], [ -22, %3 ], [ 0, %24 ], [ 0, %38 ], [ 0, %41 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_sliced_vbi_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = tail call i32 @vidioc_try_fmt_sliced_vbi_cap(ptr noundef %0, ptr undef, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load i32, ptr %2, align 4
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 244, i32 21
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %10
  %18 = load i16, ptr %7, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 177
  store i32 %19, ptr %20, align 8
  br label %21

21:                                               ; preds = %17, %13, %3
  %22 = phi i32 [ 0, %17 ], [ %8, %3 ], [ -16, %13 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_sliced_vbi_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @video_devdata(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 173
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 174, i32 %13
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 53, i32 %13
  %17 = load i8, ptr %16, align 1
  %18 = add i8 %17, -1
  %19 = icmp ult i8 %18, 2
  br i1 %19, label %20, label %78

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 65
  %22 = load i8, ptr %21, align 2, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %78, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 6
  br i1 %27, label %44, label %78

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 200
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 199
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.vivid_dev, ptr %6, i32 0, i32 57, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 2
  br i1 %35, label %36, label %78

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 68
  %38 = load i8, ptr %37, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %78, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 7
  br i1 %43, label %44, label %78

44:                                               ; preds = %40, %24
  %45 = phi i64 [ %15, %24 ], [ %30, %40 ]
  %46 = and i64 %45, 63744
  %47 = icmp eq i64 %46, 0
  %48 = select i1 %47, i16 16385, i16 4096
  store i16 %48, ptr %2, align 4
  br i1 %47, label %49, label %75

49:                                               ; preds = %44
  %50 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 7
  store i16 1, ptr %50, align 2
  %51 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 7
  store i16 1, ptr %51, align 2
  %52 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 8
  store i16 1, ptr %52, align 2
  %53 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 8
  store i16 1, ptr %53, align 2
  %54 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 9
  store i16 1, ptr %54, align 2
  %55 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 9
  store i16 1, ptr %55, align 2
  %56 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 10
  store i16 1, ptr %56, align 2
  %57 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 10
  store i16 1, ptr %57, align 2
  %58 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 11
  store i16 1, ptr %58, align 2
  %59 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 11
  store i16 1, ptr %59, align 2
  %60 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 12
  store i16 1, ptr %60, align 2
  %61 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 12
  store i16 1, ptr %61, align 2
  %62 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 13
  store i16 1, ptr %62, align 2
  %63 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 13
  store i16 1, ptr %63, align 2
  %64 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 14
  store i16 1, ptr %64, align 2
  %65 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 14
  store i16 1, ptr %65, align 2
  %66 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 15
  store i16 1, ptr %66, align 2
  %67 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 15
  store i16 1, ptr %67, align 2
  %68 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 16
  store i16 1, ptr %68, align 2
  %69 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 16
  store i16 1, ptr %69, align 2
  %70 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 17
  store i16 1, ptr %70, align 2
  %71 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 17
  store i16 1, ptr %71, align 2
  %72 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 18
  store i16 1, ptr %72, align 2
  %73 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 18
  store i16 1, ptr %73, align 2
  %74 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 23
  store i16 16384, ptr %74, align 2
  br label %78

75:                                               ; preds = %44
  %76 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 0, i32 21
  store i16 4096, ptr %76, align 2
  %77 = getelementptr %struct.v4l2_sliced_vbi_cap, ptr %2, i32 0, i32 1, i32 1, i32 21
  store i16 4096, ptr %77, align 2
  br label %78

78:                                               ; preds = %75, %49, %40, %36, %28, %24, %20, %11
  %79 = phi i32 [ -22, %24 ], [ -22, %20 ], [ -22, %11 ], [ -22, %40 ], [ -22, %36 ], [ -22, %28 ], [ 0, %49 ], [ 0, %75 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_vbi_gen_sliced(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vivid_start_generating_vid_cap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vivid_stop_generating_vid_cap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 2149191490}
!10 = !{i64 2149187314}
!11 = !{i64 2149187389, i64 2149187416, i64 2149187463, i64 2149187485, i64 2149187513, i64 2149187533}
!12 = !{i64 2149214493}
