; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_video.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_video.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.101, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.78, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.78 = type { i8 }
%struct.anon.101 = type { %struct.spinlock, %struct.anon.102, i32, i32, i8 }
%struct.anon.102 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.vsp1_partition = type { %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window }
%struct.vsp1_partition_window = type { i32, i32 }
%struct.vsp1_video = type { %struct.list_head, ptr, ptr, %struct.video_device, i32, %struct.media_pad, %struct.mutex, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
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
%struct.vsp1_format_info = type { i32, i32, i32, i32, i32, [3 x i32], i8, i8, i32, i32, i8 }
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
%struct.v4l2_format = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.vsp1_brx = type { %struct.vsp1_entity, i32, %struct.v4l2_ctrl_handler, [5 x %struct.anon.100], i32 }
%struct.anon.100 = type { ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.vsp1_vb2_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.vsp1_rwpf_memory }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_uds = type { %struct.vsp1_entity, i8 }

@.str = private unnamed_addr constant [26 x i8] c"pipeline %u stop timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@vsp1_video_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"&video->lock\00", align 1
@vsp1_video_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @vsp1_video_open, ptr @vsp1_video_release }, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@vsp1_video_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @vsp1_video_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsp1_video_get_format, ptr @vsp1_video_get_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsp1_video_set_format, ptr @vsp1_video_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsp1_video_try_format, ptr @vsp1_video_try_format, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vsp1_video_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@vsp1_video_queue_qops = internal constant %struct.vb2_ops { ptr @vsp1_video_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vsp1_video_buffer_prepare, ptr null, ptr null, ptr @vsp1_video_start_streaming, ptr @vsp1_video_stop_streaming, ptr @vsp1_video_buffer_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to initialize vb2 queue\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to register video device\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Failed to obtain a dl list. Frame will be incomplete\0A\00", align 1
@__vsp1_video_try_format.xrgb_formats = internal unnamed_addr constant [4 x [2 x i32]] [[2 x i32] [i32 875836498, i32 842093144], [2 x i32] [i32 1329743698, i32 892424792], [2 x i32] [i32 877807426, i32 875713112], [2 x i32] [i32 876758866, i32 875714626]], align 4
@__this_module = external dso_local global %struct.module, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"vsp1\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@vsp1_video_pipeline_frame_end.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"drivers/media/platform/vsp1/vsp1_video.c\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"include/media/media-entity.h\00", align 1
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"pipeline stop timeout\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_video_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vsp1_device_info, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %74, label %10

8:                                                ; preds = %29
  %9 = icmp eq i32 %33, 0
  br i1 %9, label %74, label %35

10:                                               ; preds = %29, %1
  %11 = phi ptr [ %30, %29 ], [ %4, %1 ]
  %12 = phi i32 [ %31, %29 ], [ 0, %1 ]
  %13 = getelementptr %struct.vsp1_device, ptr %0, i32 0, i32 19, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.vsp1_entity, ptr %14, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.vsp1_pipeline, ptr %18, i32 0, i32 1
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #11
  %23 = getelementptr inbounds %struct.vsp1_pipeline, ptr %18, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 2, ptr %23, align 4
  br label %27

27:                                               ; preds = %26, %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #11
  %28 = load ptr, ptr %3, align 4
  br label %29

29:                                               ; preds = %27, %16, %10
  %30 = phi ptr [ %11, %16 ], [ %11, %10 ], [ %28, %27 ]
  %31 = add nuw i32 %12, 1
  %32 = getelementptr inbounds %struct.vsp1_device_info, ptr %30, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %10, label %8

35:                                               ; preds = %68, %8
  %36 = phi i32 [ %69, %68 ], [ 0, %8 ]
  %37 = getelementptr %struct.vsp1_device, ptr %0, i32 0, i32 19, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %68, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.vsp1_entity, ptr %38, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %68, label %44

44:                                               ; preds = %40
  %45 = call zeroext i1 @vsp1_pipeline_stopped(ptr noundef nonnull %42) #11
  br i1 %45, label %68, label %46

46:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #11
  %47 = getelementptr inbounds %struct.vsp1_pipeline, ptr %42, i32 0, i32 3
  %48 = call i32 @prepare_to_wait_event(ptr noundef %47, ptr noundef nonnull %2, i32 noundef 2) #11
  %49 = call zeroext i1 @vsp1_pipeline_stopped(ptr noundef nonnull %42) #11
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  call void @finish_wait(ptr noundef %47, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  br label %68

51:                                               ; preds = %51, %46
  %52 = phi i32 [ %59, %51 ], [ 50, %46 ]
  %53 = call i32 @schedule_timeout(i32 noundef %52) #11
  %54 = call i32 @prepare_to_wait_event(ptr noundef %47, ptr noundef nonnull %2, i32 noundef 2) #11
  %55 = call zeroext i1 @vsp1_pipeline_stopped(ptr noundef nonnull %42) #11
  %56 = xor i1 %55, true
  %57 = icmp ne i32 %53, 0
  %58 = select i1 %56, i1 true, i1 %57
  %59 = select i1 %58, i32 %53, i32 1
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %55, i1 true, i1 %60
  br i1 %61, label %62, label %51

62:                                               ; preds = %51
  call void @finish_wait(ptr noundef %47, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #11
  %63 = icmp eq i32 %59, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr inbounds %struct.vsp1_entity, ptr %38, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str, i32 noundef %67) #12
  br label %68

68:                                               ; preds = %64, %62, %50, %44, %40, %35
  %69 = add nuw i32 %36, 1
  %70 = load ptr, ptr %3, align 4
  %71 = getelementptr inbounds %struct.vsp1_device_info, ptr %70, i32 0, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %35, label %74

74:                                               ; preds = %68, %8, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vsp1_pipeline_stopped(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_video_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vsp1_device_info, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %25, %1
  %8 = phi ptr [ %26, %25 ], [ %3, %1 ]
  %9 = phi i32 [ %27, %25 ], [ 0, %1 ]
  %10 = getelementptr %struct.vsp1_device, ptr %0, i32 0, i32 19, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.vsp1_entity, ptr %11, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.vsp1_pipeline, ptr %15, i32 0, i32 21
  store i8 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.vsp1_pipeline, ptr %15, i32 0, i32 1
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #11
  %21 = tail call zeroext i1 @vsp1_pipeline_ready(ptr noundef nonnull %15) #11
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call fastcc void @vsp1_video_pipeline_run(ptr noundef nonnull %15)
  br label %23

23:                                               ; preds = %22, %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #11
  %24 = load ptr, ptr %2, align 4
  br label %25

25:                                               ; preds = %23, %13, %7
  %26 = phi ptr [ %8, %13 ], [ %8, %7 ], [ %24, %23 ]
  %27 = add nuw i32 %9, 1
  %28 = getelementptr inbounds %struct.vsp1_device_info, ptr %26, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %7, label %31

31:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vsp1_pipeline_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vsp1_video_pipeline_run(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vsp1_rwpf, ptr %3, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @vsp1_dl_list_get(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 21
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @vsp1_dl_list_add_body(ptr noundef %7, ptr noundef %13) #11
  br label %15

15:                                               ; preds = %11, %1
  %16 = tail call ptr @vsp1_dl_list_get_body0(ptr noundef %7) #11
  %17 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %25, label %20

20:                                               ; preds = %20, %15
  %21 = phi ptr [ %23, %20 ], [ %18, %15 ]
  %22 = getelementptr i8, ptr %21, i32 -32
  tail call void @vsp1_entity_configure_frame(ptr noundef %22, ptr noundef %0, ptr noundef %7, ptr noundef %16) #11
  %23 = load ptr, ptr %21, align 4
  %24 = icmp eq ptr %23, %17
  br i1 %24, label %25, label %20

25:                                               ; preds = %20, %15
  %26 = tail call ptr @vsp1_dl_list_get_body0(ptr noundef %7) #11
  %27 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 25
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 24
  store ptr %28, ptr %29, align 4
  %30 = load ptr, ptr %17, align 4
  %31 = icmp eq ptr %30, %17
  br i1 %31, label %37, label %32

32:                                               ; preds = %32, %25
  %33 = phi ptr [ %35, %32 ], [ %30, %25 ]
  %34 = getelementptr i8, ptr %33, i32 -32
  tail call void @vsp1_entity_configure_partition(ptr noundef %34, ptr noundef %0, ptr noundef %7, ptr noundef %26) #11
  %35 = load ptr, ptr %33, align 4
  %36 = icmp eq ptr %35, %17
  br i1 %36, label %37, label %32

37:                                               ; preds = %32, %25
  %38 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 23
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, 1
  br i1 %40, label %41, label %66

41:                                               ; preds = %61, %37
  %42 = phi i32 [ %63, %61 ], [ 1, %37 ]
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr inbounds %struct.vsp1_rwpf, ptr %43, i32 0, i32 14
  %45 = load ptr, ptr %44, align 4
  %46 = tail call ptr @vsp1_dl_list_get(ptr noundef %45) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %41
  %49 = tail call ptr @vsp1_dl_list_get_body0(ptr noundef nonnull %46) #11
  %50 = load ptr, ptr %27, align 4
  %51 = getelementptr %struct.vsp1_partition, ptr %50, i32 %42
  store ptr %51, ptr %29, align 4
  %52 = load ptr, ptr %17, align 4
  %53 = icmp eq ptr %52, %17
  br i1 %53, label %61, label %54

54:                                               ; preds = %54, %48
  %55 = phi ptr [ %57, %54 ], [ %52, %48 ]
  %56 = getelementptr i8, ptr %55, i32 -32
  tail call void @vsp1_entity_configure_partition(ptr noundef %56, ptr noundef %0, ptr noundef nonnull %46, ptr noundef %49) #11
  %57 = load ptr, ptr %55, align 4
  %58 = icmp eq ptr %57, %17
  br i1 %58, label %61, label %54

59:                                               ; preds = %41
  %60 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.7) #12
  br label %66

61:                                               ; preds = %54, %48
  %62 = tail call i32 @vsp1_dl_list_add_chain(ptr noundef %7, ptr noundef nonnull %46) #11
  %63 = add nuw i32 %42, 1
  %64 = load i32, ptr %38, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %41, label %66

66:                                               ; preds = %61, %59, %37
  tail call void @vsp1_dl_list_commit(ptr noundef %7, i32 noundef 0) #11
  store i8 1, ptr %8, align 4
  tail call void @vsp1_pipeline_run(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_video_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1288, i32 noundef 3520) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %83, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vsp1_rwpf, ptr %1, i32 0, i32 2
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 1
  store ptr %0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 2
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13, %6
  %15 = phi i32 [ 9, %13 ], [ 10, %6 ]
  %16 = phi i32 [ 1, %13 ], [ 2, %6 ]
  %17 = phi i32 [ 0, %13 ], [ 1, %6 ]
  %18 = phi i32 [ 67112960, %13 ], [ 67117056, %6 ]
  %19 = phi ptr [ @.str.2, %13 ], [ @.str.1, %6 ]
  %20 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 4
  store i32 %15, ptr %20, align 8
  %21 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 5, i32 4
  store i32 %16, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3, i32 14
  store i32 %17, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3, i32 4
  store i32 %18, ptr %23, align 8
  %24 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @vsp1_video_create.__key) #11
  %25 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 9
  store i32 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 10
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 10, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3
  %29 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 5
  %30 = tail call i32 @media_entity_pads_init(ptr noundef %28, i16 noundef zeroext 1, ptr noundef %29) #11
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %14
  %33 = inttoptr i32 %30 to ptr
  br label %83

34:                                               ; preds = %14
  %35 = getelementptr inbounds %struct.vsp1_rwpf, ptr %1, i32 0, i32 5
  %36 = getelementptr inbounds %struct.vsp1_rwpf, ptr %1, i32 0, i32 5, i32 2
  store i32 1448695129, ptr %36, align 4
  store i32 1024, ptr %35, align 4
  %37 = getelementptr inbounds %struct.vsp1_rwpf, ptr %1, i32 0, i32 5, i32 1
  store i32 768, ptr %37, align 4
  %38 = getelementptr inbounds %struct.vsp1_rwpf, ptr %1, i32 0, i32 6
  tail call fastcc void @__vsp1_video_try_format(ptr noundef nonnull %4, ptr noundef %35, ptr noundef %38)
  %39 = load ptr, ptr %8, align 8
  %40 = getelementptr inbounds %struct.vsp1_device, ptr %39, i32 0, i32 22
  %41 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3, i32 7
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3, i32 3
  store ptr @vsp1_video_fops, ptr %42, align 4
  %43 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3, i32 12
  %44 = getelementptr inbounds %struct.vsp1_entity, ptr %1, i32 0, i32 13, i32 9
  %45 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %43, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %44, ptr noundef nonnull %19)
  %46 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3, i32 13
  store i32 0, ptr %46, align 8
  %47 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3, i32 23
  store ptr @video_device_release_empty, ptr %47, align 8
  %48 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3, i32 24
  store ptr @vsp1_video_ioctl_ops, ptr %48, align 4
  %49 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3, i32 5, i32 8
  store ptr %4, ptr %49, align 8
  %50 = load i32, ptr %20, align 8
  %51 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 8
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 8, i32 1
  store i32 19, ptr %52, align 4
  %53 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 8, i32 5
  store ptr %24, ptr %53, align 4
  %54 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 8, i32 10
  store ptr %4, ptr %54, align 4
  %55 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 8, i32 12
  store i32 664, ptr %55, align 4
  %56 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 8, i32 7
  store ptr @vsp1_video_queue_qops, ptr %56, align 4
  %57 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 8, i32 8
  store ptr @vb2_dma_contig_memops, ptr %57, align 4
  %58 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 8, i32 13
  store i32 16384, ptr %58, align 4
  %59 = load ptr, ptr %8, align 8
  %60 = getelementptr inbounds %struct.vsp1_device, ptr %59, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 8, i32 2
  store ptr %61, ptr %62, align 4
  %63 = tail call i32 @vb2_queue_init(ptr noundef %51) #11
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %34
  %66 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3, i32 10
  store ptr %51, ptr %66, align 8
  %67 = load ptr, ptr %42, align 4
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 @__video_register_device(ptr noundef %28, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %68) #11
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %65, %34
  %72 = phi ptr [ @.str.5, %34 ], [ @.str.6, %65 ]
  %73 = phi i32 [ %63, %34 ], [ %69, %65 ]
  %74 = load ptr, ptr %8, align 8
  %75 = load ptr, ptr %74, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull %72) #12
  %76 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3, i32 17
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  tail call void @video_unregister_device(ptr noundef %28) #11
  br label %81

81:                                               ; preds = %80, %71
  %82 = inttoptr i32 %73 to ptr
  br label %83

83:                                               ; preds = %81, %65, %32, %2
  %84 = phi ptr [ %33, %32 ], [ %82, %81 ], [ %4, %65 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__vsp1_video_try_format(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 1
  %5 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 1
  %7 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 1
  switch i32 %8, label %16 [
    i32 875836498, label %12
    i32 1329743698, label %9
    i32 877807426, label %10
    i32 876758866, label %11
  ]

9:                                                ; preds = %3
  br label %12

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %10, %9, %3
  %13 = phi i32 [ 0, %3 ], [ 1, %9 ], [ 2, %10 ], [ 3, %11 ]
  %14 = getelementptr [4 x [2 x i32]], ptr @__vsp1_video_try_format.xrgb_formats, i32 0, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %7, align 1
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ %15, %12 ], [ %8, %3 ]
  %18 = getelementptr inbounds %struct.vsp1_video, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = tail call ptr @vsp1_get_format_info(ptr noundef %19, i32 noundef %17) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load ptr, ptr %18, align 8
  %24 = tail call ptr @vsp1_get_format_info(ptr noundef %23, i32 noundef 1448695129) #11
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi ptr [ %24, %22 ], [ %20, %16 ]
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %7, align 1
  %28 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 4
  store i32 8, ptr %28, align 1
  %29 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 3
  store i32 1, ptr %29, align 1
  %30 = load i32, ptr %26, align 4
  switch i32 %30, label %33 [
    i32 861295432, label %31
    i32 878072648, label %31
  ]

31:                                               ; preds = %25, %25
  %32 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 8
  store i8 -127, ptr %32, align 1
  br label %33

33:                                               ; preds = %31, %25
  %34 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %34, i8 0, i32 7, i1 false)
  %35 = getelementptr inbounds %struct.vsp1_format_info, ptr %26, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 0, %36
  %38 = and i32 %4, %37
  %39 = getelementptr inbounds %struct.vsp1_format_info, ptr %26, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 0, %40
  %42 = and i32 %6, %41
  %43 = tail call i32 @llvm.umax.i32(i32 %38, i32 %36)
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 8190)
  store i32 %44, ptr %1, align 1
  %45 = load i32, ptr %39, align 4
  %46 = tail call i32 @llvm.umax.i32(i32 %42, i32 %45)
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 8190)
  store i32 %47, ptr %5, align 1
  %48 = getelementptr inbounds %struct.vsp1_format_info, ptr %26, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 2)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %90, label %52

52:                                               ; preds = %33
  %53 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 0
  %54 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 0, i32 1
  %55 = load i32, ptr %54, align 1
  %56 = getelementptr %struct.vsp1_format_info, ptr %26, i32 0, i32 5, i32 0
  %57 = load i32, ptr %56, align 4
  %58 = mul i32 %57, %44
  %59 = lshr i32 %58, 3
  %60 = tail call i32 @llvm.umax.i32(i32 %55, i32 %59)
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 65408)
  %62 = add nsw i32 %61, -1
  %63 = or i32 %62, 127
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %54, align 1
  %65 = mul nsw i32 %64, %47
  store i32 %65, ptr %53, align 1
  %66 = load i32, ptr %48, align 4
  %67 = tail call i32 @llvm.umin.i32(i32 %66, i32 2)
  %68 = icmp ugt i32 %67, 1
  br i1 %68, label %69, label %90

69:                                               ; preds = %52
  %70 = load i32, ptr %35, align 4
  %71 = load i32, ptr %39, align 4
  %72 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 1
  %73 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 1, i32 1
  %74 = load i32, ptr %73, align 1
  %75 = load i32, ptr %1, align 1
  %76 = udiv i32 %75, %70
  %77 = getelementptr %struct.vsp1_format_info, ptr %26, i32 0, i32 5, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = mul i32 %78, %76
  %80 = lshr i32 %79, 3
  %81 = tail call i32 @llvm.umax.i32(i32 %74, i32 %80)
  %82 = tail call i32 @llvm.umin.i32(i32 %81, i32 65408)
  %83 = add nsw i32 %82, -1
  %84 = or i32 %83, 127
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %73, align 1
  %86 = load i32, ptr %5, align 1
  %87 = mul i32 %85, %86
  %88 = udiv i32 %87, %71
  store i32 %88, ptr %72, align 1
  %89 = load i32, ptr %48, align 4
  br label %90

90:                                               ; preds = %69, %52, %33
  %91 = phi i32 [ %49, %33 ], [ %66, %52 ], [ %89, %69 ]
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 1
  %95 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 1, i32 1
  %96 = load i32, ptr %95, align 1
  %97 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 2
  %98 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 2, i32 1
  store i32 %96, ptr %98, align 1
  %99 = load i32, ptr %94, align 1
  store i32 %99, ptr %97, align 1
  %100 = load i32, ptr %48, align 4
  br label %101

101:                                              ; preds = %93, %90
  %102 = phi i32 [ %100, %93 ], [ %91, %90 ]
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 6
  store i8 %103, ptr %104, align 1
  %105 = icmp eq ptr %2, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  store ptr %26, ptr %2, align 4
  br label %107

107:                                              ; preds = %106, %101
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_video_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vsp1_video, ptr %0, i32 0, i32 3, i32 17
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vsp1_video, ptr %0, i32 0, i32 3
  tail call void @video_unregister_device(ptr noundef %7) #11
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_list_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_dl_list_add_body(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_list_get_body0(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_configure_frame(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_dl_list_add_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_list_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_run(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_configure_partition(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_get_format_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_video_open(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 80) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 3
  tail call void @v4l2_fh_init(ptr noundef nonnull %6, ptr noundef %9) #11
  tail call void @v4l2_fh_add(ptr noundef nonnull %6) #11
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %6, ptr %10, align 8
  %11 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @vsp1_device_get(ptr noundef %12) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  tail call void @v4l2_fh_del(ptr noundef nonnull %6) #11
  tail call void @v4l2_fh_exit(ptr noundef nonnull %6) #11
  tail call void @kfree(ptr noundef nonnull %6) #11
  br label %16

16:                                               ; preds = %15, %8, %1
  %17 = phi i32 [ -12, %1 ], [ %13, %15 ], [ %13, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_video_release(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 8, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 8
  tail call void @vb2_queue_release(ptr noundef %12) #11
  store ptr null, ptr %8, align 4
  br label %13

13:                                               ; preds = %11, %1
  tail call void @mutex_unlock(ptr noundef %7) #11
  %14 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  tail call void @vsp1_device_put(ptr noundef %15) #11
  %16 = tail call i32 @v4l2_fh_release(ptr noundef %0) #11
  store ptr null, ptr %5, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_device_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_video_querycap(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_fh, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 4
  store i32 -2080362496, ptr %8, align 4
  %9 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 16) #11
  %10 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %11 = getelementptr i8, ptr %7, i32 736
  %12 = tail call i32 @strscpy(ptr noundef %10, ptr noundef %11, i32 noundef 32) #11
  %13 = getelementptr i8, ptr %7, i32 -8
  %14 = load ptr, ptr %13, align 8
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
  %24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef %22)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_video_get_format(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_fh, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr i8, ptr %7, i32 916
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %7, i32 892
  tail call void @mutex_lock(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %15 = getelementptr i8, ptr %7, i32 -4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vsp1_rwpf, ptr %16, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(192) %14, ptr noundef align 4 dereferenceable(192) %17, i32 192, i1 false)
  tail call void @mutex_unlock(ptr noundef %13) #11
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i32 [ 0, %12 ], [ -22, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_video_set_format(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_fh, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !8
  %9 = load i32, ptr %2, align 4
  %10 = getelementptr i8, ptr %8, i32 916
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %8, i32 -16
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  call fastcc void @__vsp1_video_try_format(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %4)
  %16 = getelementptr i8, ptr %8, i32 892
  call void @mutex_lock(ptr noundef %16) #11
  %17 = getelementptr i8, ptr %8, i32 1168
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %8, i32 -4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.vsp1_rwpf, ptr %22, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(192) %23, ptr noundef align 4 dereferenceable(192) %15, i32 192, i1 false)
  %24 = load ptr, ptr %4, align 4
  %25 = load ptr, ptr %21, align 4
  %26 = getelementptr inbounds %struct.vsp1_rwpf, ptr %25, i32 0, i32 6
  store ptr %24, ptr %26, align 4
  br label %27

27:                                               ; preds = %20, %13
  %28 = phi i32 [ 0, %20 ], [ -16, %13 ]
  call void @mutex_unlock(ptr noundef %16) #11
  br label %29

29:                                               ; preds = %27, %3
  %30 = phi i32 [ %28, %27 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_video_try_format(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_fh, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr i8, ptr %7, i32 916
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %7, i32 -16
  %14 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  tail call fastcc void @__vsp1_video_try_format(ptr noundef %13, ptr noundef %14, ptr noundef null)
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i32 [ 0, %12 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_video_streamon(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = alloca %struct.v4l2_subdev_format, align 4
  %5 = alloca %struct.media_entity_enum, align 8
  %6 = alloca %struct.media_graph, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_fh, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -8
  %12 = getelementptr i8, ptr %10, i32 916
  %13 = getelementptr i8, ptr %10, i32 940
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = icmp eq ptr %14, %8
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %310

18:                                               ; preds = %3
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr inbounds %struct.vsp1_device, ptr %19, i32 0, i32 23, i32 16
  tail call void @mutex_lock(ptr noundef %20) #11
  %21 = getelementptr i8, ptr %10, i32 -4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.vsp1_entity, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %205

26:                                               ; preds = %18
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 284) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %219, label %30

30:                                               ; preds = %26
  tail call void @vsp1_pipeline_init(ptr noundef nonnull %28) #11
  %31 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 4
  store ptr @vsp1_video_pipeline_frame_end, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %6, i8 0, i32 140, i1 false) #11, !annotation !8
  %32 = load ptr, ptr %10, align 4
  %33 = call i32 @media_graph_walk_init(ptr noundef nonnull %6, ptr noundef %32) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %200

35:                                               ; preds = %30
  call void @media_graph_walk_start(ptr noundef nonnull %6, ptr noundef %10) #11
  %36 = call ptr @media_graph_walk_next(ptr noundef nonnull %6) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %80, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 19
  %40 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 19, i32 1
  %41 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 15
  %42 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 14
  %43 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 13
  %44 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 16
  %45 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 12
  %46 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 10
  br label %47

47:                                               ; preds = %77, %38
  %48 = phi ptr [ %36, %38 ], [ %78, %77 ]
  %49 = getelementptr inbounds %struct.media_entity, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %48, i32 -60
  %54 = getelementptr i8, ptr %48, i32 -28
  %55 = load ptr, ptr %40, align 4
  store ptr %54, ptr %40, align 4
  store ptr %39, ptr %54, align 4
  %56 = getelementptr i8, ptr %48, i32 -24
  store ptr %55, ptr %56, align 4
  store volatile ptr %54, ptr %55, align 4
  %57 = getelementptr i8, ptr %48, i32 -40
  store ptr %28, ptr %57, align 4
  %58 = getelementptr i8, ptr %48, i32 -52
  %59 = load i32, ptr %58, align 4
  switch i32 %59, label %77 [
    i32 9, label %60
    i32 13, label %69
    i32 7, label %73
    i32 1, label %74
    i32 0, label %74
    i32 3, label %75
    i32 4, label %76
  ]

60:                                               ; preds = %52
  %61 = getelementptr i8, ptr %48, i32 -48
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr %struct.vsp1_pipeline, ptr %28, i32 0, i32 11, i32 %62
  store ptr %53, ptr %63, align 4
  %64 = load i32, ptr %46, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %46, align 4
  %66 = getelementptr i8, ptr %48, i32 332
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.vsp1_video, ptr %67, i32 0, i32 7
  store i32 %65, ptr %68, align 8
  br label %77

69:                                               ; preds = %52
  store ptr %53, ptr %45, align 4
  %70 = getelementptr i8, ptr %48, i32 332
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.vsp1_video, ptr %71, i32 0, i32 7
  store i32 0, ptr %72, align 8
  br label %77

73:                                               ; preds = %52
  store ptr %53, ptr %44, align 4
  br label %77

74:                                               ; preds = %52, %52
  store ptr %53, ptr %43, align 8
  br label %77

75:                                               ; preds = %52
  store ptr %53, ptr %42, align 4
  br label %77

76:                                               ; preds = %52
  store ptr %53, ptr %41, align 8
  br label %77

77:                                               ; preds = %76, %75, %74, %73, %69, %60, %52, %47
  %78 = call ptr @media_graph_walk_next(ptr noundef nonnull %6) #11
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %47

80:                                               ; preds = %77, %35
  call void @media_graph_walk_cleanup(ptr noundef nonnull %6) #11
  %81 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 10
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %197, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 12
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %197, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %11, align 8
  %90 = getelementptr inbounds %struct.vsp1_device, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.vsp1_device_info, ptr %91, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %199, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.media_entity_enum, ptr %5, i32 0, i32 1
  %97 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 17
  %98 = getelementptr inbounds %struct.vsp1_pipeline, ptr %28, i32 0, i32 18
  br label %99

99:                                               ; preds = %189, %95
  %100 = phi ptr [ %89, %95 ], [ %190, %189 ]
  %101 = phi i32 [ 0, %95 ], [ %191, %189 ]
  %102 = getelementptr %struct.vsp1_pipeline, ptr %28, i32 0, i32 11, i32 %101
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %189, label %105

105:                                              ; preds = %99
  %106 = load ptr, ptr %85, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 0, ptr %5, align 8, !annotation !8
  %107 = load ptr, ptr %103, align 4
  %108 = getelementptr inbounds %struct.vsp1_device, ptr %107, i32 0, i32 23, i32 10
  %109 = load i32, ptr %108, align 8
  %110 = add i32 %109, 1
  %111 = call i32 @__media_entity_enum_init(ptr noundef nonnull %5, i32 noundef %110) #11
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %197

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.vsp1_entity, ptr %103, i32 0, i32 8
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr %struct.media_pad, ptr %116, i32 1
  %118 = call ptr @vsp1_entity_remote_pad(ptr noundef %117) #11
  %119 = icmp eq ptr %118, null
  br i1 %119, label %186, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.vsp1_rwpf, ptr %103, i32 0, i32 7
  br label %122

122:                                              ; preds = %176, %120
  %123 = phi ptr [ %118, %120 ], [ %182, %176 ]
  %124 = phi ptr [ null, %120 ], [ %149, %176 ]
  %125 = getelementptr inbounds %struct.media_pad, ptr %123, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %186, label %128

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.media_entity, ptr %126, i32 0, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %186

132:                                              ; preds = %128
  %133 = getelementptr i8, ptr %126, i32 -60
  %134 = getelementptr i8, ptr %126, i32 -52
  %135 = load i32, ptr %134, align 4
  %136 = icmp ult i32 %135, 2
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = icmp eq ptr %124, null
  br i1 %138, label %139, label %186

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.media_pad, ptr %123, i32 0, i32 2
  %141 = load i16, ptr %140, align 4
  %142 = zext i16 %141 to i32
  %143 = getelementptr %struct.vsp1_brx, ptr %133, i32 0, i32 3, i32 %142
  store ptr %103, ptr %143, align 4
  %144 = load i16, ptr %140, align 4
  %145 = zext i16 %144 to i32
  store i32 %145, ptr %121, align 4
  %146 = load i32, ptr %134, align 4
  br label %147

147:                                              ; preds = %139, %132
  %148 = phi i32 [ %135, %132 ], [ %146, %139 ]
  %149 = phi ptr [ %124, %132 ], [ %133, %139 ]
  %150 = icmp eq i32 %148, 13
  br i1 %150, label %184, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.media_entity, ptr %126, i32 0, i32 8
  %153 = load i32, ptr %152, align 4
  %154 = load i32, ptr %96, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %157, label %156, !prof !10

156:                                              ; preds = %151
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 519, i32 noundef 9, ptr noundef null) #11
  br label %186

157:                                              ; preds = %151
  %158 = load ptr, ptr %5, align 8
  %159 = and i32 %153, 31
  %160 = shl nuw i32 1, %159
  %161 = lshr i32 %153, 5
  %162 = getelementptr i32, ptr %158, i32 %161
  %163 = load i32, ptr %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, ptr %162, align 4
  %165 = and i32 %163, %160
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %157
  %168 = load i32, ptr %134, align 4
  %169 = icmp eq i32 %168, 11
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load ptr, ptr %97, align 8
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %186

173:                                              ; preds = %170
  store ptr %133, ptr %97, align 8
  %174 = icmp eq ptr %149, null
  %175 = select i1 %174, ptr %103, ptr %149
  store ptr %175, ptr %98, align 4
  br label %176

176:                                              ; preds = %173, %167
  %177 = getelementptr i8, ptr %126, i32 -20
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr i8, ptr %126, i32 -16
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr %struct.media_pad, ptr %178, i32 %180
  %182 = call ptr @vsp1_entity_remote_pad(ptr noundef %181) #11
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %122

184:                                              ; preds = %147
  %185 = icmp eq ptr %133, %106
  br i1 %185, label %187, label %186

186:                                              ; preds = %184, %176, %170, %157, %156, %137, %128, %122, %114
  call void @media_entity_enum_cleanup(ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %197

187:                                              ; preds = %184
  call void @media_entity_enum_cleanup(ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %188 = load ptr, ptr %11, align 8
  br label %189

189:                                              ; preds = %187, %99
  %190 = phi ptr [ %188, %187 ], [ %100, %99 ]
  %191 = add nuw i32 %101, 1
  %192 = getelementptr inbounds %struct.vsp1_device, ptr %190, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.vsp1_device_info, ptr %193, i32 0, i32 5
  %195 = load i32, ptr %194, align 4
  %196 = icmp ult i32 %191, %195
  br i1 %196, label %99, label %199

197:                                              ; preds = %186, %113, %84, %80
  %198 = phi i32 [ -32, %186 ], [ %111, %113 ], [ -32, %80 ], [ -32, %84 ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %6) #11
  br label %202

199:                                              ; preds = %189, %88
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %6) #11
  br label %216

200:                                              ; preds = %30
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %6) #11
  %201 = icmp slt i32 %33, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %200, %197
  %203 = phi i32 [ %198, %197 ], [ %33, %200 ]
  call void @vsp1_pipeline_reset(ptr noundef nonnull %28) #11
  call void @kfree(ptr noundef nonnull %28) #11
  %204 = inttoptr i32 %203 to ptr
  br label %216

205:                                              ; preds = %18
  %206 = getelementptr inbounds %struct.vsp1_pipeline, ptr %24, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %206) #11, !srcloc !11
  %207 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %206, ptr %206, i32 1, ptr elementtype(i32) %206) #11, !srcloc !12
  %208 = extractvalue { i32, i32, i32 } %207, 0
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %214, label %210, !prof !13

210:                                              ; preds = %205
  %211 = add i32 %208, 1
  %212 = or i32 %211, %208
  %213 = icmp sgt i32 %212, -1
  br i1 %213, label %216, label %214, !prof !10

214:                                              ; preds = %210, %205
  %215 = phi i32 [ 2, %205 ], [ 1, %210 ]
  tail call void @refcount_warn_saturate(ptr noundef %206, i32 noundef %215) #11
  br label %216

216:                                              ; preds = %214, %210, %202, %200, %199
  %217 = phi ptr [ %204, %202 ], [ %28, %200 ], [ %28, %199 ], [ %24, %210 ], [ %24, %214 ]
  %218 = icmp ugt ptr %217, inttoptr (i32 -4096 to ptr)
  br i1 %218, label %219, label %222

219:                                              ; preds = %216, %26
  %220 = phi ptr [ %217, %216 ], [ inttoptr (i32 -12 to ptr), %26 ]
  call void @mutex_unlock(ptr noundef %20) #11
  %221 = ptrtoint ptr %220 to i32
  br label %310

222:                                              ; preds = %216
  %223 = call i32 @__media_pipeline_start(ptr noundef %10, ptr noundef %217) #11
  %224 = icmp slt i32 %223, 0
  call void @mutex_unlock(ptr noundef %20) #11
  br i1 %224, label %295, label %225

225:                                              ; preds = %222
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #11
  %226 = getelementptr inbounds i8, ptr %4, i32 4
  %227 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %227, i8 0, i32 80, i1 false) #11, !annotation !8
  %228 = getelementptr i8, ptr %10, i32 860
  %229 = call ptr @media_entity_remote_pad(ptr noundef %228) #11
  %230 = icmp eq ptr %229, null
  br i1 %230, label %288, label %231

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.media_pad, ptr %229, i32 0, i32 1
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %288, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.media_entity, ptr %233, i32 0, i32 2
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, 2
  br i1 %238, label %239, label %288

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.media_pad, ptr %229, i32 0, i32 2
  %241 = load i16, ptr %240, align 4
  %242 = zext i16 %241 to i32
  store i32 %242, ptr %226, align 4
  store i32 1, ptr %4, align 4
  %243 = getelementptr inbounds %struct.v4l2_subdev, ptr %233, i32 0, i32 6
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %244, i32 0, i32 7
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %266, label %248

248:                                              ; preds = %239
  %249 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %246, i32 0, i32 4
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %266, label %252

252:                                              ; preds = %248
  %253 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %259, label %255

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %253, i32 0, i32 4
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %260

259:                                              ; preds = %255, %252
  br label %260

260:                                              ; preds = %259, %255
  %261 = phi ptr [ %250, %259 ], [ %257, %255 ]
  %262 = call i32 %261(ptr noundef nonnull %233, ptr noundef null, ptr noundef nonnull %4) #11
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %260
  %265 = icmp eq i32 %262, -515
  br i1 %265, label %266, label %288

266:                                              ; preds = %264, %248, %239
  br label %288

267:                                              ; preds = %260
  %268 = load ptr, ptr %21, align 4
  %269 = getelementptr inbounds %struct.vsp1_rwpf, ptr %268, i32 0, i32 6
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.vsp1_format_info, ptr %270, i32 0, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2
  %274 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 2
  %275 = load i32, ptr %274, align 4
  %276 = icmp eq i32 %272, %275
  br i1 %276, label %277, label %288

277:                                              ; preds = %267
  %278 = getelementptr inbounds %struct.vsp1_rwpf, ptr %268, i32 0, i32 5, i32 1
  %279 = load i32, ptr %278, align 4
  %280 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 1
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %279, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.vsp1_rwpf, ptr %268, i32 0, i32 5
  %285 = load i32, ptr %284, align 4
  %286 = load i32, ptr %273, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %290, label %288

288:                                              ; preds = %283, %277, %267, %266, %264, %235, %231, %225
  %289 = phi i32 [ -22, %231 ], [ -22, %225 ], [ -22, %235 ], [ %262, %264 ], [ -22, %266 ], [ -22, %283 ], [ -22, %267 ], [ -22, %277 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #11
  br label %293

290:                                              ; preds = %283
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #11
  %291 = call i32 @vb2_streamon(ptr noundef %12, i32 noundef %2) #11
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %310

293:                                              ; preds = %290, %288
  %294 = phi i32 [ %291, %290 ], [ %289, %288 ]
  call void @media_pipeline_stop(ptr noundef %10) #11
  br label %295

295:                                              ; preds = %293, %222
  %296 = phi i32 [ %294, %293 ], [ %223, %222 ]
  %297 = getelementptr inbounds %struct.vsp1_pipeline, ptr %217, i32 0, i32 12
  %298 = load ptr, ptr %297, align 4
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr inbounds %struct.vsp1_device, ptr %299, i32 0, i32 23, i32 16
  call void @mutex_lock(ptr noundef %300) #11
  %301 = getelementptr inbounds %struct.vsp1_pipeline, ptr %217, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %301) #11, !srcloc !11
  %302 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %301, ptr %301, i32 1, ptr elementtype(i32) %301) #11, !srcloc !15
  %303 = extractvalue { i32, i32, i32 } %302, 0
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %308, label %305

305:                                              ; preds = %295
  %306 = icmp sgt i32 %303, 0
  br i1 %306, label %309, label %307, !prof !10

307:                                              ; preds = %305
  call void @refcount_warn_saturate(ptr noundef %301, i32 noundef 3) #11
  br label %309

308:                                              ; preds = %295
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  call void @vsp1_pipeline_reset(ptr noundef %217) #11
  call void @kfree(ptr noundef %217) #11
  br label %309

309:                                              ; preds = %308, %307, %305
  call void @mutex_unlock(ptr noundef %300) #11
  br label %310

310:                                              ; preds = %309, %290, %219, %3
  %311 = phi i32 [ %221, %219 ], [ %296, %309 ], [ 0, %290 ], [ -16, %3 ]
  ret i32 %311
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_streamon(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vsp1_video_pipeline_frame_end(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = and i32 %1, 1
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @vsp1_video_pipeline_frame_end.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !13

11:                                               ; preds = %2
  store i1 true, ptr @vsp1_video_pipeline_frame_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 439, i32 noundef 9, ptr noundef null) #11
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 1
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #11
  %15 = getelementptr inbounds %struct.vsp1_device, ptr %5, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vsp1_device_info, ptr %16, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %28, %12
  %21 = phi ptr [ %29, %28 ], [ %16, %12 ]
  %22 = phi i32 [ %30, %28 ], [ 0, %12 ]
  %23 = getelementptr %struct.vsp1_pipeline, ptr %0, i32 0, i32 11, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  tail call fastcc void @vsp1_video_frame_end(ptr noundef %0, ptr noundef nonnull %24)
  %27 = load ptr, ptr %15, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %21, %20 ], [ %27, %26 ]
  %30 = add nuw i32 %22, 1
  %31 = getelementptr inbounds %struct.vsp1_device_info, ptr %29, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %20, label %34

34:                                               ; preds = %28, %12
  %35 = load ptr, ptr %3, align 4
  tail call fastcc void @vsp1_video_frame_end(ptr noundef %0, ptr noundef %35)
  %36 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  store i32 0, ptr %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %40, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %44

41:                                               ; preds = %34
  %42 = tail call zeroext i1 @vsp1_pipeline_ready(ptr noundef %0) #11
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  tail call fastcc void @vsp1_video_pipeline_run(ptr noundef %0)
  br label %44

44:                                               ; preds = %43, %41, %39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vsp1_video_frame_end(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vsp1_rwpf, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vsp1_entity, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 9
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 10
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #11
  br label %52

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %12, i32 -640
  %17 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  %21 = load volatile ptr, ptr %11, align 4
  %22 = icmp eq ptr %21, %11
  %23 = getelementptr i8, ptr %21, i32 -640
  %24 = select i1 %22, ptr null, ptr %23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #11
  %25 = getelementptr inbounds %struct.vsp1_pipeline, ptr %8, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %12, i32 -272
  store i32 %26, ptr %27, align 8
  %28 = tail call i64 @ktime_get() #11
  %29 = getelementptr i8, ptr %12, i32 -616
  store i64 %28, ptr %29, align 8
  %30 = getelementptr i8, ptr %12, i32 -624
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %33, %15
  %34 = phi i32 [ %38, %33 ], [ 0, %15 ]
  %35 = getelementptr %struct.vb2_buffer, ptr %16, i32 0, i32 10, i32 %34, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr %struct.vb2_buffer, ptr %16, i32 0, i32 10, i32 %34, i32 3
  store i32 %36, ptr %37, align 4
  %38 = add nuw i32 %34, 1
  %39 = icmp eq i32 %38, %31
  br i1 %39, label %40, label %33

40:                                               ; preds = %33, %15
  tail call void @vb2_buffer_done(ptr noundef %16, i32 noundef 5) #11
  %41 = icmp eq ptr %24, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr inbounds %struct.vsp1_rwpf, ptr %43, i32 0, i32 12
  %45 = getelementptr inbounds %struct.vsp1_vb2_buffer, ptr %24, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %44, ptr noundef align 8 dereferenceable(12) %45, i32 12, i1 false)
  %46 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 7
  %47 = load i32, ptr %46, align 8
  %48 = shl nuw i32 1, %47
  %49 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %42, %40, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_graph_walk_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_graph_walk_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_entity_enum_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_entity_enum_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_video_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #9 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vsp1_video, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.vsp1_rwpf, ptr %9, i32 0, i32 5, i32 6
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  br i1 %11, label %27, label %15

15:                                               ; preds = %5
  %16 = icmp eq i32 %10, %14
  br i1 %16, label %20, label %39

17:                                               ; preds = %20
  %18 = add nuw i32 %21, 1
  %19 = icmp eq i32 %18, %10
  br i1 %19, label %39, label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %18, %17 ], [ 0, %15 ]
  %22 = getelementptr i32, ptr %3, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.vsp1_rwpf, ptr %9, i32 0, i32 5, i32 5, i32 %21
  %25 = load i32, ptr %24, align 1
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %39, label %17

27:                                               ; preds = %5
  store i32 %14, ptr %2, align 4
  %28 = load i8, ptr %12, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %30, %27
  %31 = phi i32 [ %35, %30 ], [ 0, %27 ]
  %32 = getelementptr %struct.vsp1_rwpf, ptr %9, i32 0, i32 5, i32 5, i32 %31
  %33 = load i32, ptr %32, align 1
  %34 = getelementptr i32, ptr %3, i32 %31
  store i32 %33, ptr %34, align 4
  %35 = add nuw nsw i32 %31, 1
  %36 = load i8, ptr %12, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %30, label %39

39:                                               ; preds = %30, %27, %20, %17, %15
  %40 = phi i32 [ -22, %15 ], [ 0, %27 ], [ 0, %30 ], [ -22, %20 ], [ 0, %17 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_video_buffer_prepare(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.vsp1_rwpf, ptr %6, i32 0, i32 5, i32 6
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %43, label %13

13:                                               ; preds = %1
  %14 = icmp eq i32 %8, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.vsp1_vb2_buffer, ptr %0, i32 0, i32 2
  br label %25

17:                                               ; preds = %40
  %18 = icmp ult i32 %26, 2
  br i1 %18, label %19, label %43

19:                                               ; preds = %17, %13
  %20 = phi i32 [ %41, %17 ], [ 0, %13 ]
  %21 = shl nuw nsw i32 %20, 2
  %22 = add nuw nsw i32 %21, 648
  %23 = getelementptr i8, ptr %0, i32 %22
  %24 = sub nuw nsw i32 12, %21
  call void @llvm.memset.p0.i32(ptr align 4 %23, i8 0, i32 %24, i1 false)
  br label %43

25:                                               ; preds = %40, %15
  %26 = phi i32 [ 0, %15 ], [ %41, %40 ]
  %27 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef %26) #11
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr [3 x i32], ptr %16, i32 0, i32 %26
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %7, align 8
  %31 = icmp ugt i32 %30, %26
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %26, i32 4
  %34 = load i32, ptr %33, align 8
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i32 [ %34, %32 ], [ 0, %25 ]
  %37 = getelementptr %struct.vsp1_rwpf, ptr %6, i32 0, i32 5, i32 5, i32 %26
  %38 = load i32, ptr %37, align 1
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = add nuw i32 %26, 1
  %42 = icmp ult i32 %41, %30
  br i1 %42, label %25, label %17

43:                                               ; preds = %35, %19, %17, %1
  %44 = phi i32 [ -22, %1 ], [ 0, %17 ], [ 0, %19 ], [ -22, %35 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_video_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.vsp1_partition_window, align 8
  %4 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vsp1_video, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vsp1_entity, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %172

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vsp1_entity, ptr %18, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %18, ptr noundef %21, i32 noundef 0) #11
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.vsp1_device, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.vsp1_device_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %53

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 19
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %53, label %33

33:                                               ; preds = %47, %29
  %34 = phi ptr [ %49, %47 ], [ %31, %29 ]
  %35 = phi i32 [ %48, %47 ], [ %23, %29 ]
  %36 = getelementptr i8, ptr %34, i32 -28
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.vsp1_entity_operations, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = getelementptr i8, ptr %34, i32 -32
  %43 = tail call i32 %39(ptr noundef %42, ptr noundef %9) #11
  %44 = icmp eq i32 %43, 0
  %45 = tail call i32 @llvm.umin.i32(i32 %35, i32 %43) #11
  %46 = select i1 %44, i32 %35, i32 %45
  br label %47

47:                                               ; preds = %41, %33
  %48 = phi i32 [ %46, %41 ], [ %35, %33 ]
  %49 = load ptr, ptr %34, align 4
  %50 = icmp eq ptr %49, %30
  br i1 %50, label %51, label %33

51:                                               ; preds = %47
  %52 = load i32, ptr %22, align 4
  br label %53

53:                                               ; preds = %51, %29, %16
  %54 = phi i32 [ %23, %16 ], [ %23, %29 ], [ %52, %51 ]
  %55 = phi i32 [ %23, %16 ], [ %23, %29 ], [ %48, %51 ]
  %56 = add i32 %54, -1
  %57 = add i32 %56, %55
  %58 = udiv i32 %57, %55
  %59 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 23
  store i32 %58, ptr %59, align 4
  %60 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %58, i32 40) #11
  %61 = extractvalue { i32, i1 } %60, 1
  br i1 %61, label %62, label %64, !prof !13

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 25
  store ptr null, ptr %63, align 4
  br label %154

64:                                               ; preds = %53
  %65 = extractvalue { i32, i1 } %60, 0
  %66 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %65, i32 noundef 3520) #14
  %67 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 25
  store ptr %66, ptr %67, align 4
  %68 = icmp eq ptr %66, null
  br i1 %68, label %154, label %69

69:                                               ; preds = %64
  %70 = load i32, ptr %59, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %113, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.vsp1_partition_window, ptr %3, i32 0, i32 1
  %74 = lshr i32 %55, 1
  br label %75

75:                                               ; preds = %111, %72
  %76 = phi ptr [ %66, %72 ], [ %112, %111 ]
  %77 = phi i32 [ 0, %72 ], [ %108, %111 ]
  %78 = getelementptr %struct.vsp1_partition, ptr %76, i32 %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8, !annotation !8
  %79 = load ptr, ptr %17, align 4
  %80 = getelementptr inbounds %struct.vsp1_entity, ptr %79, i32 0, i32 14
  %81 = load ptr, ptr %80, align 4
  %82 = call ptr @vsp1_entity_get_pad_format(ptr noundef %79, ptr noundef %81, i32 noundef 0) #11
  %83 = load i32, ptr %59, align 4
  %84 = icmp ult i32 %83, 2
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  store i32 0, ptr %3, align 8
  %86 = load i32, ptr %82, align 4
  store i32 %86, ptr %73, align 4
  br label %107

87:                                               ; preds = %75
  %88 = mul i32 %77, %55
  store i32 %88, ptr %3, align 8
  store i32 %55, ptr %73, align 4
  %89 = load i32, ptr %82, align 4
  %90 = urem i32 %89, %55
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %87
  %93 = add i32 %83, -1
  %94 = icmp ult i32 %90, %74
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = add i32 %83, -2
  %97 = icmp eq i32 %96, %77
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 %74, ptr %73, align 4
  br label %107

99:                                               ; preds = %95
  %100 = icmp eq i32 %93, %77
  br i1 %100, label %101, label %107

101:                                              ; preds = %99
  %102 = add i32 %90, %74
  store i32 %102, ptr %73, align 4
  %103 = sub i32 %88, %74
  store i32 %103, ptr %3, align 8
  br label %107

104:                                              ; preds = %92
  %105 = icmp eq i32 %93, %77
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  store i32 %90, ptr %73, align 4
  br label %107

107:                                              ; preds = %106, %104, %101, %99, %98, %87, %85
  call void @vsp1_pipeline_propagate_partition(ptr noundef %9, ptr noundef %78, i32 noundef %77, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  %108 = add nuw i32 %77, 1
  %109 = load i32, ptr %59, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load ptr, ptr %67, align 4
  br label %75

113:                                              ; preds = %107, %69
  %114 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 17
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %131, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 18
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.vsp1_entity, ptr %119, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = icmp ult i32 %121, 2
  br i1 %122, label %128, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.vsp1_rwpf, ptr %119, i32 0, i32 6
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.vsp1_format_info, ptr %125, i32 0, i32 10
  %127 = load i8, ptr %126, align 4, !range !9
  br label %128

128:                                              ; preds = %123, %117
  %129 = phi i8 [ %127, %123 ], [ 0, %117 ]
  %130 = getelementptr inbounds %struct.vsp1_uds, ptr %115, i32 0, i32 1
  store i8 %129, ptr %130, align 4
  br label %131

131:                                              ; preds = %128, %113
  %132 = load ptr, ptr %17, align 4
  %133 = getelementptr inbounds %struct.vsp1_rwpf, ptr %132, i32 0, i32 14
  %134 = load ptr, ptr %133, align 4
  %135 = call ptr @vsp1_dlm_dl_body_get(ptr noundef %134) #11
  %136 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 20
  store ptr %135, ptr %136, align 4
  %137 = icmp eq ptr %135, null
  br i1 %137, label %154, label %138

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 19
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, %139
  br i1 %141, label %174, label %142

142:                                              ; preds = %138
  %143 = getelementptr i8, ptr %140, i32 -32
  call void @vsp1_entity_route_setup(ptr noundef %143, ptr noundef %9, ptr noundef nonnull %135) #11
  %144 = load ptr, ptr %136, align 4
  call void @vsp1_entity_configure_stream(ptr noundef %143, ptr noundef %9, ptr noundef null, ptr noundef %144) #11
  %145 = load ptr, ptr %140, align 4
  %146 = icmp eq ptr %145, %139
  br i1 %146, label %174, label %147

147:                                              ; preds = %147, %142
  %148 = phi ptr [ %152, %147 ], [ %145, %142 ]
  %149 = load ptr, ptr %136, align 4
  %150 = getelementptr i8, ptr %148, i32 -32
  call void @vsp1_entity_route_setup(ptr noundef %150, ptr noundef %9, ptr noundef %149) #11
  %151 = load ptr, ptr %136, align 4
  call void @vsp1_entity_configure_stream(ptr noundef %150, ptr noundef %9, ptr noundef null, ptr noundef %151) #11
  %152 = load ptr, ptr %148, align 4
  %153 = icmp eq ptr %152, %139
  br i1 %153, label %174, label %147

154:                                              ; preds = %131, %64, %62
  %155 = getelementptr inbounds %struct.vsp1_video, ptr %5, i32 0, i32 9
  %156 = call i32 @_raw_spin_lock_irqsave(ptr noundef %155) #11
  %157 = getelementptr inbounds %struct.vsp1_video, ptr %5, i32 0, i32 10
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, %157
  br i1 %159, label %165, label %160

160:                                              ; preds = %160, %154
  %161 = phi ptr [ %163, %160 ], [ %158, %154 ]
  %162 = getelementptr i8, ptr %161, i32 -640
  call void @vb2_buffer_done(ptr noundef %162, i32 noundef 6) #11
  %163 = load ptr, ptr %161, align 4
  %164 = icmp eq ptr %163, %157
  br i1 %164, label %165, label %160

165:                                              ; preds = %160, %154
  store volatile ptr %157, ptr %157, align 4
  %166 = getelementptr inbounds %struct.vsp1_video, ptr %5, i32 0, i32 10, i32 1
  store ptr %157, ptr %166, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %155, i32 noundef %156) #11
  %167 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 20
  %168 = load ptr, ptr %167, align 4
  call void @vsp1_dl_body_put(ptr noundef %168) #11
  store ptr null, ptr %167, align 4
  %169 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 21
  store i8 0, ptr %169, align 4
  %170 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 25
  %171 = load ptr, ptr %170, align 4
  call void @kfree(ptr noundef %171) #11
  store ptr null, ptr %170, align 4
  call void @mutex_unlock(ptr noundef %10) #11
  br label %182

172:                                              ; preds = %2
  %173 = add i32 %12, 1
  store i32 %173, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %10) #11
  br label %182

174:                                              ; preds = %147, %142, %138
  %175 = load i32, ptr %11, align 4
  %176 = add i32 %175, 1
  store i32 %176, ptr %11, align 4
  call void @mutex_unlock(ptr noundef %10) #11
  %177 = getelementptr inbounds %struct.vsp1_pipeline, ptr %9, i32 0, i32 1
  %178 = call i32 @_raw_spin_lock_irqsave(ptr noundef %177) #11
  %179 = call zeroext i1 @vsp1_pipeline_ready(ptr noundef %9) #11
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  call fastcc void @vsp1_video_pipeline_run(ptr noundef %9)
  br label %181

181:                                              ; preds = %180, %174
  call void @_raw_spin_unlock_irqrestore(ptr noundef %177, i32 noundef %178) #11
  br label %182

182:                                              ; preds = %181, %172, %165
  %183 = phi i32 [ -12, %165 ], [ 0, %181 ], [ 0, %172 ]
  ret i32 %183
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vsp1_video_stop_streaming(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 9
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #11
  %10 = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 7
  %11 = load i32, ptr %10, align 8
  %12 = shl nuw i32 1, %11
  %13 = xor i32 %12, -1
  %14 = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %13
  store i32 %16, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #11
  %17 = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %17) #11
  %18 = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = tail call i32 @vsp1_pipeline_stop(ptr noundef %7) #11
  %26 = icmp eq i32 %25, -110
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %29, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.13) #12
  br label %31

31:                                               ; preds = %27, %24
  %32 = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 20
  %33 = load ptr, ptr %32, align 4
  tail call void @vsp1_dl_body_put(ptr noundef %33) #11
  store ptr null, ptr %32, align 4
  %34 = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 21
  store i8 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 25
  %36 = load ptr, ptr %35, align 4
  tail call void @kfree(ptr noundef %36) #11
  store ptr null, ptr %35, align 4
  br label %37

37:                                               ; preds = %31, %1
  tail call void @mutex_unlock(ptr noundef %17) #11
  %38 = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 3
  tail call void @media_pipeline_stop(ptr noundef %38) #11
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #11
  %40 = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 10
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %48, label %43

43:                                               ; preds = %43, %37
  %44 = phi ptr [ %46, %43 ], [ %41, %37 ]
  %45 = getelementptr i8, ptr %44, i32 -640
  tail call void @vb2_buffer_done(ptr noundef %45, i32 noundef 6) #11
  %46 = load ptr, ptr %44, align 4
  %47 = icmp eq ptr %46, %40
  br i1 %47, label %48, label %43

48:                                               ; preds = %43, %37
  store volatile ptr %40, ptr %40, align 4
  %49 = getelementptr inbounds %struct.vsp1_video, ptr %3, i32 0, i32 10, i32 1
  store ptr %40, ptr %49, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %39) #11
  %50 = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.vsp1_device, ptr %52, i32 0, i32 23, i32 16
  tail call void @mutex_lock(ptr noundef %53) #11
  %54 = getelementptr inbounds %struct.vsp1_pipeline, ptr %7, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #11, !srcloc !11
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #11, !srcloc !15
  %56 = extractvalue { i32, i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = icmp sgt i32 %56, 0
  br i1 %59, label %62, label %60, !prof !10

60:                                               ; preds = %58
  tail call void @refcount_warn_saturate(ptr noundef %54, i32 noundef 3) #11
  br label %62

61:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  tail call void @vsp1_pipeline_reset(ptr noundef %7) #11
  tail call void @kfree(ptr noundef %7) #11
  br label %62

62:                                               ; preds = %61, %60, %58
  tail call void @mutex_unlock(ptr noundef %53) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vsp1_video_buffer_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vsp1_entity, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 9
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 10
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  %14 = getelementptr inbounds %struct.vsp1_vb2_buffer, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 10, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr %14, ptr %15, align 4
  store ptr %11, ptr %14, align 4
  %17 = getelementptr inbounds %struct.vsp1_vb2_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %14, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #11
  br i1 %13, label %18, label %38

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.vsp1_pipeline, ptr %8, i32 0, i32 1
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #11
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.vsp1_rwpf, ptr %21, i32 0, i32 12
  %23 = getelementptr inbounds %struct.vsp1_vb2_buffer, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %22, ptr noundef align 8 dereferenceable(12) %23, i32 12, i1 false)
  %24 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 7
  %25 = load i32, ptr %24, align 8
  %26 = shl nuw i32 1, %25
  %27 = getelementptr inbounds %struct.vsp1_pipeline, ptr %8, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.vsp1_video, ptr %4, i32 0, i32 8, i32 28
  %31 = load i16, ptr %30, align 4
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %18
  %35 = tail call zeroext i1 @vsp1_pipeline_ready(ptr noundef %8) #11
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call fastcc void @vsp1_video_pipeline_run(ptr noundef %8)
  br label %37

37:                                               ; preds = %36, %34, %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #11
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dlm_dl_body_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_route_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_configure_stream(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_propagate_partition(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 574797, i64 2148064768, i64 2148064794, i64 2148064841, i64 2148064863, i64 2148064891, i64 2148064911}
!12 = !{i64 2148077641, i64 2148077673, i64 2148077702, i64 2148077736, i64 2148077767, i64 2148077790}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2148177863}
!15 = !{i64 2148079998, i64 2148080030, i64 2148080059, i64 2148080093, i64 2148080124, i64 2148080147}
!16 = !{i64 2149026926}
