; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_histo.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_histo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vsp1_histogram = type { %struct.vsp1_entity, %struct.video_device, %struct.media_pad, ptr, i32, i32, i32, %struct.mutex, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i8 }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.71 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.68], %struct.media_entity_enum, i32 }
%struct.anon.68 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.67, i32 }
%union.anon.67 = type { i32 }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_frame_size_enum = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.100, i16, i16, i16, [10 x i16] }
%union.anon.100 = type { i16 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.79 }
%union.anon.79 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.81, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.81 = type { i8 }
%struct.vsp1_histogram_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@vsp1_histogram_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [13 x i8] c"&histo->lock\00", align 1
@vsp1_histogram_init.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"&histo->wait_queue\00", align 1
@histo_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @histo_pad_ops }, align 4
@histo_v4l2_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%s histo\00", align 1
@histo_v4l2_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @histo_v4l2_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @histo_v4l2_enum_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @histo_v4l2_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @histo_v4l2_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @histo_v4l2_get_format, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@histo_video_queue_qops = internal constant %struct.vb2_ops { ptr @histo_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @histo_buffer_prepare, ptr null, ptr null, ptr @histo_start_streaming, ptr @histo_stop_streaming, ptr @histo_buffer_queue, ptr null }, align 4
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to initialize vb2 queue\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to register video device\0A\00", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@histo_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr null, ptr @histo_enum_mbus_code, ptr @histo_enum_frame_size, ptr null, ptr @histo_get_format, ptr @histo_set_format, ptr @histo_get_selection, ptr @histo_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.7 = private unnamed_addr constant [5 x i8] c"vsp1\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_histogram_buffer_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_histogram, ptr %0, i32 0, i32 9
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.vsp1_histogram, ptr %0, i32 0, i32 10
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %5, i32 -640
  %9 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %13 = getelementptr inbounds %struct.vsp1_histogram, ptr %0, i32 0, i32 12
  store i8 1, ptr %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi ptr [ null, %1 ], [ %8, %7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  ret ptr %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_histogram_buffer_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vsp1_pipeline, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %1, i32 0, i32 4
  store i32 %7, ptr %8, align 8
  %9 = tail call i64 @ktime_get() #10
  %10 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 5
  store i64 %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = icmp ult i32 %16, %2
  %18 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1163, i32 noundef 9, ptr noundef null) #10
  br label %22

22:                                               ; preds = %21, %14
  br i1 %17, label %23, label %25

23:                                               ; preds = %22
  %24 = load i32, ptr %15, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ %24, %23 ], [ %2, %22 ]
  %27 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %3
  tail call void @vb2_buffer_done(ptr noundef %1, i32 noundef 5) #10
  %29 = getelementptr inbounds %struct.vsp1_histogram, ptr %0, i32 0, i32 9
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #10
  %31 = getelementptr inbounds %struct.vsp1_histogram, ptr %0, i32 0, i32 12
  store i8 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.vsp1_histogram, ptr %0, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %32, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_histogram_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_histogram, ptr %0, i32 0, i32 1, i32 17
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vsp1_histogram, ptr %0, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %7) #10
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_histogram_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 3
  store ptr %5, ptr %10, align 8
  %11 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 4
  store i32 %6, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 5
  store i32 %7, ptr %12, align 8
  %13 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 6
  store i32 %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 2, i32 4
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 1
  %16 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 1, i32 14
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @vsp1_histogram_init.__key) #10
  %18 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 9
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 10
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 10, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef nonnull @vsp1_histogram_init.__key.1) #10
  %22 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 1
  store ptr %4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 2
  store i32 %2, ptr %23, align 8
  %24 = tail call i32 @vsp1_entity_init(ptr noundef %0, ptr noundef %1, ptr noundef %3, i32 noundef 2, ptr noundef nonnull @histo_ops, i32 noundef 16390) #10
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %69, label %26

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 2
  %28 = tail call i32 @media_entity_pads_init(ptr noundef %15, i16 noundef zeroext 1, ptr noundef %27) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %69, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 22
  %32 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 1, i32 7
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 1, i32 3
  store ptr @histo_v4l2_fops, ptr %33, align 4
  %34 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 1, i32 12
  %35 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 13, i32 9
  %36 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %34, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %35)
  %37 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 1, i32 13
  store i32 0, ptr %37, align 8
  %38 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 1, i32 23
  store ptr @video_device_release_empty, ptr %38, align 8
  %39 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 1, i32 24
  store ptr @histo_v4l2_ioctl_ops, ptr %39, align 4
  %40 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 1, i32 4
  store i32 75497472, ptr %40, align 8
  %41 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 1, i32 5, i32 8
  store ptr %1, ptr %41, align 8
  %42 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 8
  store i32 13, ptr %42, align 4
  %43 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 8, i32 1
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 8, i32 5
  store ptr %17, ptr %44, align 4
  %45 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 8, i32 10
  store ptr %1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 8, i32 12
  store i32 656, ptr %46, align 4
  %47 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 8, i32 7
  store ptr @histo_video_queue_qops, ptr %47, align 4
  %48 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 8, i32 8
  store ptr @vb2_vmalloc_memops, ptr %48, align 4
  %49 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 8, i32 13
  store i32 16384, ptr %49, align 4
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 8, i32 2
  store ptr %50, ptr %51, align 4
  %52 = tail call i32 @vb2_queue_init(ptr noundef %42) #10
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %30
  %55 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 1, i32 10
  store ptr %42, ptr %55, align 8
  %56 = load ptr, ptr %33, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @__video_register_device(ptr noundef %15, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %57) #10
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54, %30
  %61 = phi ptr [ @.str.4, %30 ], [ @.str.5, %54 ]
  %62 = phi i32 [ %52, %30 ], [ %58, %54 ]
  %63 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull %61) #11
  %64 = getelementptr inbounds %struct.vsp1_histogram, ptr %1, i32 0, i32 1, i32 17
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  tail call void @video_unregister_device(ptr noundef %15) #10
  br label %69

69:                                               ; preds = %68, %60, %54, %26, %9
  %70 = phi i32 [ %24, %9 ], [ %28, %26 ], [ 0, %54 ], [ %62, %60 ], [ %62, %68 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @histo_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  store i32 1, ptr %7, align 4
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 1108
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %0, i32 1112
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @vsp1_subdev_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %10, i32 noundef %12) #10
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi i32 [ 0, %6 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @histo_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_frame_size_enum, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 @vsp1_subdev_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4, i32 noundef 4, i32 noundef 8192, i32 noundef 8192) #10
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @histo_get_format(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 1, ptr %9, align 4
  store i32 0, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 3
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 11, ptr %12, align 4
  br label %15

13:                                               ; preds = %3
  %14 = tail call i32 @vsp1_subdev_get_pad_format(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi i32 [ 0, %7 ], [ %14, %13 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @histo_set_format(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %12 [
    i32 0, label %14
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 1, ptr %8, align 4
  store i32 0, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 3
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 11, ptr %11, align 4
  br label %20

12:                                               ; preds = %3
  %13 = tail call i32 @vsp1_subdev_get_pad_format(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %20

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %0, i32 1108
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %0, i32 1112
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @vsp1_subdev_set_pad_format(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %16, i32 noundef %18, i32 noundef 4, i32 noundef 4, i32 noundef 8192, i32 noundef 8192) #10
  br label %20

20:                                               ; preds = %14, %12, %6
  %21 = phi i32 [ %19, %14 ], [ 0, %6 ], [ %13, %12 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @histo_get_selection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %9) #10
  %10 = load i32, ptr %2, align 4
  %11 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %10) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %39 [
    i32 258, label %16
    i32 257, label %16
    i32 2, label %26
    i32 1, label %26
    i32 256, label %35
    i32 0, label %35
  ]

16:                                               ; preds = %13, %13
  %17 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %4, ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0) #10
  %18 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.v4l2_rect, ptr %17, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.v4l2_rect, ptr %17, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  store i32 %24, ptr %25, align 4
  br label %39

26:                                               ; preds = %13, %13
  %27 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %11, i32 noundef 0) #10
  %28 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  store i32 0, ptr %29, align 4
  %30 = load i32, ptr %27, align 4
  %31 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %27, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  store i32 %33, ptr %34, align 4
  br label %39

35:                                               ; preds = %13, %13
  %36 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %37 = load i32, ptr %5, align 4
  %38 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %4, ptr noundef nonnull %11, i32 noundef %37, i32 noundef %15) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %36, ptr noundef align 4 dereferenceable(16) %38, i32 16, i1 false)
  br label %39

39:                                               ; preds = %35, %26, %16, %13, %8
  %40 = phi i32 [ 0, %35 ], [ 0, %26 ], [ 0, %16 ], [ -22, %8 ], [ -22, %13 ]
  tail call void @mutex_unlock(ptr noundef %9) #10
  br label %41

41:                                               ; preds = %39, %3
  %42 = phi i32 [ %40, %39 ], [ -22, %3 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @histo_set_selection(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -60
  %5 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %78

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 200
  tail call void @mutex_lock(ptr noundef %9) #10
  %10 = load i32, ptr %2, align 4
  %11 = tail call ptr @vsp1_entity_get_pad_config(ptr noundef %4, ptr noundef %1, i32 noundef %10) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %76, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %76 [
    i32 0, label %16
    i32 256, label %43
  ]

16:                                               ; preds = %13
  %17 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef nonnull %11, i32 noundef 0) #10
  %18 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %17, align 4
  %21 = add i32 %20, -1
  %22 = tail call i32 @llvm.umin.i32(i32 %19, i32 %21) #10
  store i32 %22, ptr %18, align 4
  %23 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %17, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  %28 = tail call i32 @llvm.umin.i32(i32 %24, i32 %27) #10
  store i32 %28, ptr %23, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.umax.i32(i32 %30, i32 4) #10
  %32 = load i32, ptr %17, align 4
  %33 = sub i32 %32, %22
  %34 = tail call i32 @llvm.umin.i32(i32 %31, i32 %33) #10
  store i32 %34, ptr %29, align 4
  %35 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 4) #10
  %38 = load i32, ptr %25, align 4
  %39 = sub i32 %38, %28
  %40 = tail call i32 @llvm.umin.i32(i32 %37, i32 %39) #10
  store i32 %40, ptr %35, align 4
  %41 = load i32, ptr %5, align 4
  %42 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %4, ptr noundef nonnull %11, i32 noundef %41, i32 noundef 0) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %42, ptr noundef align 4 dereferenceable(16) %18, i32 16, i1 false) #10
  br label %72

43:                                               ; preds = %13
  %44 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  store i32 0, ptr %45, align 4
  %46 = load i32, ptr %5, align 4
  %47 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %4, ptr noundef nonnull %11, i32 noundef %46, i32 noundef 0) #10
  %48 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.v4l2_rect, ptr %47, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %51, 2
  %53 = tail call i32 @llvm.umax.i32(i32 %49, i32 %52) #10
  %54 = tail call i32 @llvm.umin.i32(i32 %53, i32 %51) #10
  store i32 %54, ptr %48, align 4
  %55 = load i32, ptr %50, align 4
  %56 = shl i32 %55, 1
  %57 = udiv i32 %56, %54
  %58 = udiv i32 %57, 3
  %59 = lshr i32 %55, %58
  store i32 %59, ptr %48, align 4
  %60 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.v4l2_rect, ptr %47, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %63, 2
  %65 = tail call i32 @llvm.umax.i32(i32 %61, i32 %64) #10
  %66 = tail call i32 @llvm.umin.i32(i32 %65, i32 %63) #10
  store i32 %66, ptr %60, align 4
  %67 = load i32, ptr %62, align 4
  %68 = shl i32 %67, 1
  %69 = udiv i32 %68, %66
  %70 = udiv i32 %69, 3
  %71 = lshr i32 %67, %70
  store i32 %71, ptr %60, align 4
  br label %72

72:                                               ; preds = %43, %16
  %73 = phi ptr [ %18, %16 ], [ %44, %43 ]
  %74 = load i32, ptr %5, align 4
  %75 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %4, ptr noundef nonnull %11, i32 noundef %74, i32 noundef 256) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %75, ptr noundef align 4 dereferenceable(16) %73, i32 16, i1 false) #10
  br label %76

76:                                               ; preds = %72, %13, %8
  %77 = phi i32 [ -22, %8 ], [ -22, %13 ], [ 0, %72 ]
  tail call void @mutex_unlock(ptr noundef %9) #10
  br label %78

78:                                               ; preds = %76, %3
  %79 = phi i32 [ %77, %76 ], [ -22, %3 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_frame_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_set_pad_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_selection(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @histo_v4l2_querycap(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_fh, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -280
  %9 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 4
  store i32 -2071973888, ptr %9, align 4
  %10 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef 16) #10
  %11 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %12 = getelementptr i8, ptr %7, i32 736
  %13 = tail call i32 @strscpy(ptr noundef %11, ptr noundef %12, i32 noundef 32) #10
  %14 = load ptr, ptr %8, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load ptr, ptr %15, align 4
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi ptr [ %20, %19 ], [ %17, %3 ]
  %23 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef %22)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @histo_v4l2_enum_format(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #6 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_fh, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %7, i32 924
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %7, i32 900
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %10, %3
  %21 = phi i32 [ 0, %16 ], [ -22, %10 ], [ -22, %3 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @histo_v4l2_get_format(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #6 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_fh, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr i8, ptr %7, i32 924
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  store i64 0, ptr %13, align 1
  %14 = getelementptr i8, ptr %7, i32 900
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 1
  %16 = getelementptr i8, ptr %7, i32 896
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %17, ptr %18, align 1
  br label %19

19:                                               ; preds = %12, %3
  %20 = phi i32 [ 0, %12 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @histo_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #6 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  switch i32 %8, label %18 [
    i32 0, label %15
    i32 1, label %9
  ]

9:                                                ; preds = %5
  %10 = load i32, ptr %3, align 4
  %11 = getelementptr inbounds %struct.vsp1_histogram, ptr %7, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = icmp ult i32 %10, %12
  %14 = select i1 %13, i32 -22, i32 0
  br label %18

15:                                               ; preds = %5
  store i32 1, ptr %2, align 4
  %16 = getelementptr inbounds %struct.vsp1_histogram, ptr %7, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  store i32 %17, ptr %3, align 4
  br label %18

18:                                               ; preds = %15, %9, %5
  %19 = phi i32 [ 0, %15 ], [ -22, %5 ], [ %14, %9 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @histo_buffer_prepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.vb2_queue, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.vsp1_histogram, ptr %8, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = tail call ptr @vb2_plane_vaddr(ptr noundef %0, i32 noundef 0) #10
  %16 = getelementptr inbounds %struct.vsp1_histogram_buffer, ptr %0, i32 0, i32 2
  store ptr %15, ptr %16, align 8
  br label %17

17:                                               ; preds = %14, %5, %1
  %18 = phi i32 [ 0, %14 ], [ -22, %1 ], [ -22, %5 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @histo_start_streaming(ptr nocapture noundef readnone %0, i32 noundef %1) #8 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @histo_stop_streaming(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vsp1_histogram, ptr %4, i32 0, i32 9
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.vsp1_histogram, ptr %4, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %10, %1
  %11 = phi ptr [ %13, %10 ], [ %8, %1 ]
  %12 = getelementptr i8, ptr %11, i32 -640
  tail call void @vb2_buffer_done(ptr noundef %12, i32 noundef 6) #10
  %13 = load ptr, ptr %11, align 4
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %10

15:                                               ; preds = %10, %1
  store volatile ptr %7, ptr %7, align 4
  %16 = getelementptr inbounds %struct.vsp1_histogram, ptr %4, i32 0, i32 10, i32 1
  store ptr %7, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vsp1_histogram, ptr %4, i32 0, i32 12
  %18 = load i8, ptr %17, align 8, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #10
  %21 = getelementptr inbounds %struct.vsp1_histogram, ptr %4, i32 0, i32 11
  %22 = call i32 @prepare_to_wait_event(ptr noundef %21, ptr noundef nonnull %2, i32 noundef 2) #10
  %23 = load i8, ptr %17, align 8, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %25, %20
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !11
  %26 = load i16, ptr %5, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  call void @schedule() #10
  call void @_raw_spin_lock_irq(ptr noundef %5) #10
  %28 = call i32 @prepare_to_wait_event(ptr noundef %21, ptr noundef nonnull %2, i32 noundef 2) #10
  %29 = load i8, ptr %17, align 8, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %25

31:                                               ; preds = %25, %20
  call void @finish_wait(ptr noundef %21, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  br label %32

32:                                               ; preds = %31, %15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @histo_buffer_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vsp1_histogram, ptr %4, i32 0, i32 9
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.vsp1_histogram_buffer, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.vsp1_histogram, ptr %4, i32 0, i32 10
  %9 = getelementptr inbounds %struct.vsp1_histogram, ptr %4, i32 0, i32 10, i32 1
  %10 = load ptr, ptr %9, align 4
  store ptr %7, ptr %9, align 4
  store ptr %8, ptr %7, align 4
  %11 = getelementptr inbounds %struct.vsp1_histogram_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %7, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
!11 = !{i64 2149223667}
!12 = !{i64 2149219491}
!13 = !{i64 2149219566, i64 2149219593, i64 2149219640, i64 2149219662, i64 2149219690, i64 2149219710}
!14 = !{i64 616102}
!15 = !{i64 2149247811}
