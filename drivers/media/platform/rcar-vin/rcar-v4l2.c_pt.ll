; ModuleID = '/llk/IR/drivers/media/platform/rcar-vin/rcar-v4l2.c_pt.bc'
source_filename = "../drivers/media/platform/rcar-vin/rcar-v4l2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rvin_video_format = type { i32, i8 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rvin_dev = type { ptr, ptr, ptr, %struct.video_device, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_async_notifier, %struct.rvin_parallel_entity, ptr, i32, %struct.media_pad, %struct.mutex, %struct.vb2_queue, ptr, i32, %struct.spinlock, [3 x %struct.anon.101], %struct.list_head, i32, i32, i8, i32, i32, %struct.v4l2_pix_format, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i64, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rvin_parallel_entity = type { ptr, ptr, i32, %struct.v4l2_fwnode_bus_parallel, i32, i32 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.101 = type { ptr, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.82, i32, i32 }
%union.anon.82 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rvin_info = type { i32, i8, i8, i8, i32, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rvin_group = type { %struct.kref, %struct.media_device, %struct.mutex, i32, %struct.v4l2_async_notifier, [32 x ptr], ptr, [4 x %struct.anon.100] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.anon.100 = type { ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.74, i16, i16, i16, [10 x i16] }
%union.anon.74 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.81 }
%union.anon.81 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.83, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.83 = type { i8 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_enum_dv_timings = type { i32, i32, [2 x i32], %struct.v4l2_dv_timings }
%struct.v4l2_dv_timings = type { i32, %union.anon.73 }
%union.anon.73 = type { [32 x i32] }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.75 }
%union.anon.75 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }

@rvin_formats = internal constant [14 x %struct.rvin_video_format] [%struct.rvin_video_format { i32 842094158, i8 1 }, %struct.rvin_video_format { i32 909203022, i8 1 }, %struct.rvin_video_format { i32 1448695129, i8 2 }, %struct.rvin_video_format { i32 1498831189, i8 2 }, %struct.rvin_video_format { i32 1346520914, i8 2 }, %struct.rvin_video_format { i32 892424792, i8 2 }, %struct.rvin_video_format { i32 875713112, i8 4 }, %struct.rvin_video_format { i32 892424769, i8 2 }, %struct.rvin_video_format { i32 875713089, i8 4 }, %struct.rvin_video_format { i32 825770306, i8 1 }, %struct.rvin_video_format { i32 1196573255, i8 1 }, %struct.rvin_video_format { i32 1195528775, i8 1 }, %struct.rvin_video_format { i32 1111967570, i8 1 }, %struct.rvin_video_format { i32 1497715271, i8 1 }], align 4
@.str = private unnamed_addr constant [19 x i8] c"\016%s: Removing %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"VIN%u output\00", align 1
@rvin_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @rvin_open, ptr @rvin_release }, align 4
@rvin_mc_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @rvin_querycap, ptr @rvin_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_mc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_mc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@rvin_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @rvin_querycap, ptr @rvin_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @rvin_g_std, ptr @rvin_s_std, ptr @rvin_querystd, ptr @rvin_enum_input, ptr @rvin_g_input, ptr @rvin_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_g_pixelaspect, ptr @rvin_g_selection, ptr @rvin_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rvin_g_parm, ptr @rvin_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr @rvin_s_dv_timings, ptr @rvin_g_dv_timings, ptr @rvin_query_dv_timings, ptr @rvin_enum_dv_timings, ptr @rvin_dv_timings_cap, ptr @rvin_g_edid, ptr @rvin_s_edid, ptr @rvin_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\016%s: Device registered as %s\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"rcar_vin\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"R_Car_VIN\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"drivers/media/platform/rcar-vin/rcar-v4l2.c\00", align 1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @rvin_format_from_pixel(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %1, label %34 [
    i32 875713112, label %3
    i32 842094158, label %8
    i32 909203022, label %31
    i32 1448695129, label %20
    i32 1498831189, label %21
    i32 1346520914, label %22
    i32 892424792, label %23
    i32 892424769, label %24
    i32 875713089, label %25
    i32 825770306, label %26
    i32 1196573255, label %27
    i32 1195528775, label %28
    i32 1111967570, label %29
    i32 1497715271, label %30
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %34, label %31

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.rvin_info, ptr %10, i32 0, i32 3
  %12 = load i8, ptr %11, align 2, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 8
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, 13107
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %31

20:                                               ; preds = %2
  br label %31

21:                                               ; preds = %2
  br label %31

22:                                               ; preds = %2
  br label %31

23:                                               ; preds = %2
  br label %31

24:                                               ; preds = %2
  br label %31

25:                                               ; preds = %2
  br label %31

26:                                               ; preds = %2
  br label %31

27:                                               ; preds = %2
  br label %31

28:                                               ; preds = %2
  br label %31

29:                                               ; preds = %2
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %14, %3, %2
  %32 = phi i32 [ 0, %14 ], [ 6, %3 ], [ 1, %2 ], [ 2, %20 ], [ 3, %21 ], [ 4, %22 ], [ 5, %23 ], [ 7, %24 ], [ 8, %25 ], [ 9, %26 ], [ 10, %27 ], [ 11, %28 ], [ 12, %29 ], [ 13, %30 ]
  %33 = getelementptr %struct.rvin_video_format, ptr @rvin_formats, i32 %32
  br label %34

34:                                               ; preds = %31, %14, %8, %3, %2
  %35 = phi ptr [ %33, %31 ], [ null, %3 ], [ null, %14 ], [ null, %8 ], [ null, %2 ]
  ret ptr %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rvin_v4l2_unregister(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 17
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 4, i32 4
  %9 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 5, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 5
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %10, %7 ]
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8, ptr noundef %16) #11
  tail call void @video_unregister_device(ptr noundef %2) #12
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rvin_v4l2_register(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 4, i32 5
  store ptr @rvin_notify, ptr %4, align 8
  %5 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 7
  store ptr %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 12
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 10
  store ptr %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 12
  %9 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %8, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %10)
  %12 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 23
  store ptr @video_device_release_empty, ptr %12, align 8
  %13 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 11
  %14 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 26
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 3
  store ptr @rvin_fops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 4
  store i32 83886081, ptr %16, align 8
  %17 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23
  %18 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 2
  store i32 1448695129, ptr %18, align 8
  store i32 800, ptr %17, align 8
  %19 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 1
  store i32 600, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 3
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 6
  store i32 8, ptr %21, align 8
  %22 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.rvin_info, ptr %23, i32 0, i32 1
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %1
  store i32 620756993, ptr %16, align 8
  %28 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 24
  store ptr @rvin_mc_ioctl_ops, ptr %28, align 4
  br label %32

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 24
  store ptr @rvin_ioctl_ops, ptr %30, align 4
  %31 = tail call fastcc i32 @rvin_reset_format(ptr noundef %0)
  br label %32

32:                                               ; preds = %29, %27
  tail call fastcc void @rvin_format_align(ptr noundef %0, ptr noundef %17)
  %33 = load ptr, ptr %15, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @__video_register_device(ptr noundef %2, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %34) #12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.2) #11
  br label %51

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 5, i32 8
  store ptr %0, ptr %40, align 8
  %41 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 4, i32 4
  %42 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 5, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 3, i32 5
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi ptr [ %47, %45 ], [ %43, %39 ]
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %41, ptr noundef %49) #11
  br label %51

51:                                               ; preds = %48, %37
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rvin_notify(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -864
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rvin_info, ptr %7, i32 0, i32 1
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = icmp eq i32 %1, 1082684930
  br i1 %12, label %13, label %38

13:                                               ; preds = %11
  %14 = getelementptr i8, ptr %5, i32 -856
  tail call void @v4l2_event_queue(ptr noundef %14, ptr noundef %2) #12
  br label %38

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %5, i32 276
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq i32 %1, 1082684930
  br label %19

19:                                               ; preds = %35, %15
  %20 = phi i32 [ 0, %15 ], [ %36, %35 ]
  %21 = getelementptr %struct.rvin_group, ptr %17, i32 0, i32 5, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.rvin_dev, ptr %22, i32 0, i32 10
  %26 = tail call ptr @media_entity_remote_pad(ptr noundef %25) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.media_pad, ptr %26, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %0
  %32 = and i1 %18, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rvin_dev, ptr %22, i32 0, i32 3
  tail call void @v4l2_event_queue(ptr noundef %34, ptr noundef %2) #12
  br label %35

35:                                               ; preds = %33, %28, %24, %19
  %36 = add nuw nsw i32 %20, 1
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %38, label %19

38:                                               ; preds = %35, %13, %11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rvin_reset_format(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.v4l2_subdev_format, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #12
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  store i32 1, ptr %2, align 4
  %4 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 4
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %72, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %72, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %14, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %72, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %21, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi ptr [ %18, %27 ], [ %25, %23 ]
  %30 = call i32 %29(ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %2) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 3
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 6
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 5
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 9
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 6
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 10
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 7
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 23, i32 11
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 26
  %58 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 26, i32 1
  store i32 0, ptr %58, align 4
  store i32 0, ptr %57, align 8
  %59 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 26, i32 2
  store i32 %35, ptr %59, align 8
  %60 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 26, i32 3
  store i32 %37, ptr %60, align 4
  %61 = icmp eq i32 %40, 7
  br i1 %61, label %62, label %64

62:                                               ; preds = %32
  store i32 4, ptr %41, align 4
  %63 = shl i32 %37, 1
  store i32 %63, ptr %38, align 4
  br label %64

64:                                               ; preds = %62, %32
  call fastcc void @rvin_format_align(ptr noundef %0, ptr noundef %33)
  %65 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %65, ptr noundef align 8 dereferenceable(16) %57, i32 16, i1 false)
  %66 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 25
  %67 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 25, i32 1
  store i32 0, ptr %67, align 4
  store i32 0, ptr %66, align 8
  %68 = load i32, ptr %33, align 8
  %69 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 25, i32 2
  store i32 %68, ptr %69, align 8
  %70 = load i32, ptr %38, align 4
  %71 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 25, i32 3
  store i32 %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %64, %28, %16, %10, %1
  %73 = phi i32 [ 0, %64 ], [ %30, %28 ], [ -515, %10 ], [ -515, %16 ], [ -19, %1 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #12
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rvin_format_align(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @rvin_format_from_pixel(ptr noundef %0, i32 noundef %4)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 1448695129, ptr %3, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i32 [ 1448695129, %7 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 9
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  store i32 1, ptr %10, align 4
  br label %15

15:                                               ; preds = %14, %8
  switch i32 %9, label %17 [
    i32 842094158, label %18
    i32 909203022, label %18
    i32 1448695129, label %16
    i32 1498831189, label %16
  ]

16:                                               ; preds = %15, %15
  br label %18

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %16, %15, %15
  %19 = phi i32 [ 0, %17 ], [ 1, %16 ], [ 5, %15 ], [ 5, %15 ]
  %20 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.rvin_info, ptr %21, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 1
  %25 = getelementptr inbounds %struct.rvin_info, ptr %21, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  tail call void @v4l_bound_align_image(ptr noundef %1, i32 noundef 5, i32 noundef %23, i32 noundef %19, ptr noundef %24, i32 noundef 2, i32 noundef %26, i32 noundef 0, i32 noundef 0) #12
  %27 = load i32, ptr %3, align 4
  %28 = tail call ptr @rvin_format_from_pixel(ptr noundef %0, i32 noundef %27) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32, !prof !9

30:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 128, i32 noundef 9, ptr noundef null) #12
  %31 = load i32, ptr %3, align 4
  br label %50

32:                                               ; preds = %18
  %33 = add i32 %27, -842094158
  %34 = and i32 %33, -67108865
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 32, i32 16
  %37 = load i32, ptr %10, align 4
  %38 = add i32 %37, -5
  %39 = icmp ult i32 %38, 2
  %40 = select i1 %39, i32 128, i32 %36
  %41 = load i32, ptr %1, align 4
  %42 = add i32 %41, -1
  %43 = add i32 %42, %40
  %44 = sub nsw i32 0, %40
  %45 = and i32 %43, %44
  %46 = getelementptr inbounds %struct.rvin_video_format, ptr %28, i32 0, i32 1
  %47 = load i8, ptr %46, align 4
  %48 = zext i8 %47 to i32
  %49 = mul i32 %45, %48
  br label %50

50:                                               ; preds = %32, %30
  %51 = phi i32 [ %31, %30 ], [ %27, %32 ]
  %52 = phi i32 [ -22, %30 ], [ %49, %32 ]
  %53 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 4
  store i32 %52, ptr %53, align 4
  switch i32 %51, label %63 [
    i32 842094158, label %54
    i32 909203022, label %59
  ]

54:                                               ; preds = %50
  %55 = load i32, ptr %24, align 4
  %56 = mul i32 %52, 3
  %57 = mul i32 %56, %55
  %58 = lshr i32 %57, 1
  br label %66

59:                                               ; preds = %50
  %60 = load i32, ptr %24, align 4
  %61 = shl i32 %52, 1
  %62 = mul i32 %61, %60
  br label %66

63:                                               ; preds = %50
  %64 = load i32, ptr %24, align 4
  %65 = mul i32 %64, %52
  br label %66

66:                                               ; preds = %63, %59, %54
  %67 = phi i32 [ %65, %63 ], [ %62, %59 ], [ %58, %54 ]
  %68 = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 5
  store i32 %67, ptr %68, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_open(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #12, !srcloc !11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #12, !srcloc !12
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %90, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  br label %90

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 11
  %16 = tail call i32 @mutex_lock_interruptible(ptr noundef %15) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %86

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %4, ptr %19, align 8
  %20 = tail call i32 @v4l2_fh_open(ptr noundef %0) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %84

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.rvin_info, ptr %24, i32 0, i32 1
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %22
  %29 = load ptr, ptr %19, align 8
  %30 = tail call i32 @v4l2_fh_is_singular(ptr noundef %29) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 7, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.v4l2_subdev, ptr %34, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %39, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %46, i32 0, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %45
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi ptr [ %43, %52 ], [ %50, %48 ]
  %55 = tail call i32 %54(ptr noundef nonnull %34, i32 noundef 1) #12
  %56 = freeze i32 %55
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  switch i32 %56, label %81 [
    i32 -19, label %63
    i32 -515, label %63
  ]

59:                                               ; preds = %22
  %60 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 3
  %61 = tail call i32 @v4l2_pipeline_pm_get(ptr noundef %60) #12
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %59, %58, %58, %53, %41, %36, %32, %28
  %64 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 5
  %65 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %64) #12
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void @mutex_unlock(ptr noundef %15) #12
  br label %90

68:                                               ; preds = %63
  %69 = load ptr, ptr %23, align 8
  %70 = getelementptr inbounds %struct.rvin_info, ptr %69, i32 0, i32 1
  %71 = load i8, ptr %70, align 4, !range !8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 3
  tail call void @v4l2_pipeline_pm_put(ptr noundef %74) #12
  br label %81

75:                                               ; preds = %68
  %76 = load ptr, ptr %19, align 8
  %77 = tail call i32 @v4l2_fh_is_singular(ptr noundef %76) #12
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = tail call fastcc i32 @rvin_power_parallel(ptr noundef %4, i1 noundef zeroext false)
  br label %81

81:                                               ; preds = %79, %75, %73, %59, %58
  %82 = phi i32 [ %61, %59 ], [ %65, %73 ], [ %65, %79 ], [ %65, %75 ], [ %56, %58 ]
  %83 = tail call i32 @v4l2_fh_release(ptr noundef %0) #12
  br label %84

84:                                               ; preds = %81, %18
  %85 = phi i32 [ %20, %18 ], [ %82, %81 ]
  tail call void @mutex_unlock(ptr noundef %15) #12
  br label %86

86:                                               ; preds = %84, %14
  %87 = phi i32 [ %16, %14 ], [ %85, %84 ]
  %88 = load ptr, ptr %4, align 8
  %89 = tail call i32 @__pm_runtime_idle(ptr noundef %88, i32 noundef 5) #12
  br label %90

90:                                               ; preds = %86, %67, %13, %8
  %91 = phi i32 [ %87, %86 ], [ 0, %67 ], [ %6, %8 ], [ %6, %13 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_release(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 11
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @v4l2_fh_is_singular(ptr noundef %7) #12
  %9 = tail call i32 @_vb2_fop_release(ptr noundef %0, ptr noundef null) #12
  %10 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.rvin_info, ptr %11, i32 0, i32 1
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 3
  tail call void @v4l2_pipeline_pm_put(ptr noundef %16) #12
  br label %43

17:                                               ; preds = %1
  %18 = icmp eq i32 %8, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.rvin_dev, ptr %4, i32 0, i32 7, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.v4l2_subdev, ptr %21, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %26, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %33, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi ptr [ %30, %39 ], [ %37, %35 ]
  %42 = tail call i32 %41(ptr noundef nonnull %21, i32 noundef 0) #12
  br label %43

43:                                               ; preds = %40, %28, %23, %19, %17, %15
  tail call void @mutex_unlock(ptr noundef %5) #12
  %44 = load ptr, ptr %4, align 8
  %45 = tail call i32 @__pm_runtime_idle(ptr noundef %44, i32 noundef 5) #12
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_pipeline_pm_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rvin_power_parallel(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = zext i1 %1 to i32
  %6 = icmp eq ptr %4, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %10, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %17, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %16
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi ptr [ %14, %23 ], [ %21, %19 ]
  %26 = tail call i32 %25(ptr noundef nonnull %4, i32 noundef %5) #12
  %27 = freeze i32 %26
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  switch i32 %27, label %31 [
    i32 -19, label %30
    i32 -515, label %30
  ]

30:                                               ; preds = %29, %29, %24, %12, %7, %2
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i32 [ 0, %30 ], [ %27, %29 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_pipeline_pm_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_querycap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 16) #12
  %8 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %9 = tail call i32 @strscpy(ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef 32) #12
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load ptr, ptr %10, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi ptr [ %15, %14 ], [ %12, %3 ]
  %18 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %17)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_enum_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %39 [
    i32 0, label %9
    i32 8209, label %9
    i32 8207, label %9
    i32 8198, label %9
    i32 8216, label %9
    i32 4106, label %9
    i32 12289, label %10
    i32 12307, label %13
    i32 12290, label %16
    i32 12308, label %19
  ]

9:                                                ; preds = %3, %3, %3, %3, %3, %3
  br label %25

10:                                               ; preds = %3
  %11 = load i32, ptr %2, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %36, label %39

13:                                               ; preds = %3
  %14 = load i32, ptr %2, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %39

16:                                               ; preds = %3
  %17 = load i32, ptr %2, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %39

19:                                               ; preds = %3
  %20 = load i32, ptr %2, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %39

22:                                               ; preds = %25
  %23 = add nuw nsw i32 %27, 1
  %24 = icmp eq i32 %23, 14
  br i1 %24, label %39, label %25

25:                                               ; preds = %22, %9
  %26 = phi i32 [ %33, %22 ], [ -1, %9 ]
  %27 = phi i32 [ %23, %22 ], [ 0, %9 ]
  %28 = getelementptr [14 x %struct.rvin_video_format], ptr @rvin_formats, i32 0, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = tail call ptr @rvin_format_from_pixel(ptr noundef %6, i32 noundef %29)
  %31 = icmp ne ptr %30, null
  %32 = zext i1 %31 to i32
  %33 = add i32 %26, %32
  %34 = load i32, ptr %2, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %22

36:                                               ; preds = %25, %19, %16, %13, %10
  %37 = phi i32 [ 825770306, %10 ], [ 1196573255, %13 ], [ 1195528775, %16 ], [ 1111967570, %19 ], [ %29, %25 ]
  %38 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %36, %22, %19, %16, %13, %10, %3
  %40 = phi i32 [ -22, %10 ], [ -22, %13 ], [ -22, %16 ], [ -22, %19 ], [ -22, %3 ], [ 0, %36 ], [ -22, %22 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_g_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %7, ptr noundef align 8 dereferenceable(48) %8, i32 48, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_mc_s_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 12, i32 21
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 1, ptr %15, align 4
  tail call fastcc void @rvin_format_align(ptr noundef %6, ptr noundef %11) #12
  %16 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %16, ptr noundef align 4 dereferenceable(48) %11, i32 48, i1 false)
  %17 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 24
  %18 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 24, i32 1
  store i32 0, ptr %18, align 4
  store i32 0, ptr %17, align 8
  %19 = load i32, ptr %16, align 8
  %20 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 24, i32 2
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 23, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 24, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 25
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %24, ptr noundef align 8 dereferenceable(16) %17, i32 16, i1 false)
  br label %25

25:                                               ; preds = %10, %3
  %26 = phi i32 [ 0, %10 ], [ -16, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_mc_try_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 1, ptr %11, align 4
  tail call fastcc void @rvin_format_align(ptr noundef %6, ptr noundef %7) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_subscribe_event(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @v4l2_event_subscribe(ptr noundef %0, ptr noundef %1, i32 noundef 4, ptr noundef null) #12
  br label %9

7:                                                ; preds = %2
  %8 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %0, ptr noundef %1) #12
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_s_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca %struct.v4l2_rect, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !14
  %8 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 12, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %98

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %13 = call fastcc i32 @rvin_try_format(ptr noundef %7, i32 noundef 1, ptr noundef %12, ptr noundef nonnull %4)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %98

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 23
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(48) %16, ptr noundef align 4 dereferenceable(48) %12, i32 48, i1 false)
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 23, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 24
  %21 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 24, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 %24, ptr %21, align 4
  br label %27

27:                                               ; preds = %26, %15
  %28 = phi i32 [ %24, %26 ], [ %22, %15 ]
  %29 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 24, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 %32, ptr %29, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi i32 [ %30, %27 ], [ %32, %34 ]
  %37 = load i32, ptr %20, align 4
  %38 = load i32, ptr %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 %38, ptr %20, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi i32 [ %38, %40 ], [ %37, %35 ]
  %43 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 24, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 %46, ptr %43, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = phi i32 [ %46, %48 ], [ %44, %41 ]
  %51 = add i32 %42, %28
  %52 = add i32 %38, %24
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = sub i32 %52, %28
  store i32 %55, ptr %20, align 4
  br label %56

56:                                               ; preds = %54, %49
  %57 = add i32 %50, %36
  %58 = add i32 %46, %32
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = sub i32 %58, %36
  store i32 %61, ptr %43, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 25
  %64 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 25, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = icmp ugt i32 %65, %17
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 %17, ptr %64, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = phi i32 [ %17, %67 ], [ %65, %62 ]
  %70 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 25, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %71, %19
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 %19, ptr %70, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = phi i32 [ %71, %68 ], [ %19, %73 ]
  %76 = load i32, ptr %63, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 0, ptr %63, align 4
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi i32 [ 0, %78 ], [ %76, %74 ]
  %81 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 25, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, ptr %81, align 4
  br label %85

85:                                               ; preds = %84, %79
  %86 = phi i32 [ 0, %84 ], [ %82, %79 ]
  %87 = add i32 %80, %69
  %88 = icmp ugt i32 %87, %17
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = sub i32 %17, %69
  store i32 %90, ptr %63, align 4
  br label %91

91:                                               ; preds = %89, %85
  %92 = add i32 %86, %75
  %93 = icmp ugt i32 %92, %19
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = sub i32 %19, %75
  store i32 %95, ptr %81, align 4
  br label %96

96:                                               ; preds = %94, %91
  %97 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 26
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %97, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  br label %98

98:                                               ; preds = %96, %11, %3
  %99 = phi i32 [ 0, %96 ], [ -16, %3 ], [ %13, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_try_fmt_vid_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = tail call fastcc i32 @rvin_try_format(ptr noundef %6, i32 noundef 0, ptr noundef %7, ptr noundef null)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_g_std(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %12, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %3
  %19 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 27
  %20 = load i64, ptr %19, align 8
  store i64 %20, ptr %2, align 8
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i32 [ 0, %18 ], [ -515, %14 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_s_std(ptr noundef %0, ptr nocapture noundef readnone %1, i64 noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %21, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi ptr [ %18, %27 ], [ %25, %23 ]
  %30 = tail call i32 %29(ptr noundef nonnull %8, i64 noundef %2) #12
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 27
  store i64 %2, ptr %33, align 8
  %34 = tail call fastcc i32 @rvin_reset_format(ptr noundef %6)
  br label %35

35:                                               ; preds = %32, %28, %16, %10, %3
  %36 = phi i32 [ %34, %32 ], [ %30, %28 ], [ -515, %10 ], [ -515, %16 ], [ -19, %3 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_querystd(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %21, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi ptr [ %18, %27 ], [ %25, %23 ]
  %30 = tail call i32 %29(ptr noundef nonnull %8, ptr noundef %2) #12
  br label %31

31:                                               ; preds = %28, %16, %10, %3
  %32 = phi i32 [ -19, %3 ], [ -515, %16 ], [ -515, %10 ], [ %30, %28 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_enum_input(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %2, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %60

11:                                               ; preds = %3
  %12 = icmp eq ptr %8, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %24, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi ptr [ %21, %30 ], [ %28, %26 ]
  %33 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 6
  %34 = tail call i32 %32(ptr noundef nonnull %8, ptr noundef %33) #12
  %35 = freeze i32 %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  switch i32 %35, label %60 [
    i32 -19, label %38
    i32 -515, label %38
  ]

38:                                               ; preds = %37, %37, %31, %19, %13, %11
  %39 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 2
  store i32 2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %41, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %43, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 7
  store i32 2, ptr %50, align 4
  br label %55

51:                                               ; preds = %45, %38
  %52 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 7
  store i32 4, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 3, i32 22
  %54 = load i64, ptr %53, align 8
  br label %55

55:                                               ; preds = %51, %49
  %56 = phi i64 [ %54, %51 ], [ 0, %49 ]
  %57 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 5
  store i64 %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.v4l2_input, ptr %2, i32 0, i32 1
  %59 = tail call i32 @strscpy(ptr noundef %58, ptr noundef nonnull @.str.7, i32 noundef 32) #12
  br label %60

60:                                               ; preds = %55, %37, %3
  %61 = phi i32 [ 0, %55 ], [ -22, %3 ], [ %35, %37 ]
  ret i32 %61
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rvin_g_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rvin_s_input(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #8 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 0, i32 -22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_g_pixelaspect(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = tail call ptr @video_devdata(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq i32 %2, 1
  br i1 %10, label %11, label %34

11:                                               ; preds = %4
  %12 = icmp eq ptr %9, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %24, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %23
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi ptr [ %21, %30 ], [ %28, %26 ]
  %33 = tail call i32 %32(ptr noundef nonnull %9, ptr noundef %3) #12
  br label %34

34:                                               ; preds = %31, %19, %13, %11, %4
  %35 = phi i32 [ -22, %4 ], [ -19, %11 ], [ -515, %19 ], [ -515, %13 ], [ %33, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_g_selection(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %36

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %36 [
    i32 2, label %12
    i32 1, label %12
    i32 0, label %21
    i32 258, label %24
    i32 257, label %24
    i32 256, label %33
  ]

12:                                               ; preds = %9, %9
  %13 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %14 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 0, ptr %14, align 4
  store i32 0, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 26, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 26, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %19, ptr %20, align 4
  br label %36

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %23 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %22, ptr noundef align 8 dereferenceable(16) %23, i32 16, i1 false)
  br label %36

24:                                               ; preds = %9, %9
  %25 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %26 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 0, ptr %26, align 4
  store i32 0, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 23
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 23, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %31, ptr %32, align 4
  br label %36

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %35 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 25
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %34, ptr noundef align 8 dereferenceable(16) %35, i32 16, i1 false)
  br label %36

36:                                               ; preds = %33, %24, %21, %12, %9, %3
  %37 = phi i32 [ -22, %3 ], [ -22, %9 ], [ 0, %33 ], [ 0, %24 ], [ 0, %21 ], [ 0, %12 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_s_selection(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = alloca %struct.v4l2_rect, align 4
  %5 = tail call ptr @video_devdata(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %8 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %8, i32 16, i1 false)
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %124

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, 6
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 6, ptr %12, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ 6, %15 ], [ %13, %11 ]
  %18 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 2, ptr %18, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i32 [ %19, %16 ], [ 2, %21 ]
  %24 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %124 [
    i32 0, label %26
    i32 256, label %73
  ]

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 26, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 26, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %17, %28
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 %28, ptr %12, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i32 [ %28, %32 ], [ %17, %26 ]
  %35 = icmp ugt i32 %23, %30
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 %30, ptr %18, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %23, %33 ], [ %30, %36 ]
  %39 = load i32, ptr %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, ptr %4, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ 0, %41 ], [ %39, %37 ]
  %44 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, ptr %44, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i32 [ 0, %47 ], [ %45, %42 ]
  %50 = add i32 %43, %34
  %51 = icmp ugt i32 %50, %28
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = sub i32 %28, %34
  store i32 %53, ptr %4, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = add i32 %49, %38
  %56 = icmp ugt i32 %55, %30
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = sub i32 %30, %38
  store i32 %58, ptr %44, align 4
  br label %59

59:                                               ; preds = %57, %54
  call void @v4l_bound_align_image(ptr noundef %12, i32 noundef 6, i32 noundef %28, i32 noundef 0, ptr noundef %18, i32 noundef 2, i32 noundef %30, i32 noundef 0, i32 noundef 0) #12
  %60 = load i32, ptr %44, align 4
  %61 = call i32 @llvm.smax.i32(i32 %60, i32 0)
  %62 = load i32, ptr %29, align 4
  %63 = load i32, ptr %18, align 4
  %64 = sub i32 %62, %63
  %65 = call i32 @llvm.smin.i32(i32 %61, i32 %64)
  store i32 %65, ptr %44, align 4
  %66 = load i32, ptr %4, align 4
  %67 = call i32 @llvm.smax.i32(i32 %66, i32 0)
  %68 = load i32, ptr %27, align 8
  %69 = load i32, ptr %12, align 4
  %70 = sub i32 %68, %69
  %71 = call i32 @llvm.smin.i32(i32 %67, i32 %70)
  store i32 %71, ptr %4, align 4
  %72 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 24
  br label %122

73:                                               ; preds = %22
  %74 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 23
  %75 = load i32, ptr %74, align 8
  %76 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 23, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp ugt i32 %17, %75
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 %75, ptr %12, align 4
  br label %80

80:                                               ; preds = %79, %73
  %81 = phi i32 [ %75, %79 ], [ %17, %73 ]
  %82 = icmp ugt i32 %23, %77
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 %77, ptr %18, align 4
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i32 [ %23, %80 ], [ %77, %83 ]
  %86 = load i32, ptr %4, align 4
  %87 = call i32 @llvm.smax.i32(i32 %86, i32 0)
  %88 = getelementptr inbounds %struct.v4l2_rect, ptr %4, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = call i32 @llvm.smax.i32(i32 %89, i32 0)
  %91 = add i32 %87, %81
  %92 = icmp ugt i32 %91, %75
  %93 = sub i32 %75, %81
  %94 = select i1 %92, i32 %93, i32 %87
  %95 = add i32 %90, %85
  %96 = icmp ugt i32 %95, %77
  %97 = sub i32 %77, %85
  %98 = select i1 %96, i32 %97, i32 %90
  %99 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 23, i32 4
  %100 = load i32, ptr %99, align 8
  br label %101

101:                                              ; preds = %101, %84
  %102 = phi i32 [ %106, %101 ], [ %98, %84 ]
  %103 = mul i32 %100, %102
  %104 = and i32 %103, 127
  %105 = icmp eq i32 %104, 0
  %106 = add i32 %102, -1
  br i1 %105, label %107, label %101

107:                                              ; preds = %101
  store i32 %102, ptr %88, align 4
  %108 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 23, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = tail call ptr @rvin_format_from_pixel(ptr noundef %7, i32 noundef %109)
  %111 = getelementptr inbounds %struct.rvin_video_format, ptr %110, i32 0, i32 1
  %112 = load i8, ptr %111, align 4
  %113 = zext i8 %112 to i32
  br label %114

114:                                              ; preds = %114, %107
  %115 = phi i32 [ %119, %114 ], [ %94, %107 ]
  %116 = mul i32 %115, %113
  %117 = and i32 %116, 127
  %118 = icmp eq i32 %117, 0
  %119 = add i32 %115, -1
  br i1 %118, label %120, label %114

120:                                              ; preds = %114
  store i32 %115, ptr %4, align 4
  %121 = getelementptr inbounds %struct.rvin_dev, ptr %7, i32 0, i32 25
  br label %122

122:                                              ; preds = %120, %59
  %123 = phi ptr [ %121, %120 ], [ %72, %59 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %123, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  call void @rvin_crop_scale_comp(ptr noundef %7) #12
  br label %124

124:                                              ; preds = %122, %22, %3
  %125 = phi i32 [ 0, %122 ], [ -22, %3 ], [ -22, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_g_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 3
  %10 = tail call i32 @v4l2_g_parm_cap(ptr noundef %9, ptr noundef %8, ptr noundef %2) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_s_parm(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 3
  %10 = tail call i32 @v4l2_s_parm_cap(ptr noundef %9, ptr noundef %8, ptr noundef %2) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_s_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %21, i32 0, i32 14
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi ptr [ %18, %27 ], [ %25, %23 ]
  %30 = tail call i32 %29(ptr noundef nonnull %8, ptr noundef %2) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = tail call fastcc i32 @rvin_reset_format(ptr noundef %6)
  br label %34

34:                                               ; preds = %32, %28, %16, %10, %3
  %35 = phi i32 [ %33, %32 ], [ %30, %28 ], [ -515, %10 ], [ -515, %16 ], [ -19, %3 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_g_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %21, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi ptr [ %18, %27 ], [ %25, %23 ]
  %30 = tail call i32 %29(ptr noundef nonnull %8, ptr noundef %2) #12
  br label %31

31:                                               ; preds = %28, %16, %10, %3
  %32 = phi i32 [ -19, %3 ], [ -515, %16 ], [ -515, %10 ], [ %30, %28 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_query_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %14, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %21, i32 0, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi ptr [ %18, %27 ], [ %25, %23 ]
  %30 = tail call i32 %29(ptr noundef nonnull %8, ptr noundef %2) #12
  br label %31

31:                                               ; preds = %28, %16, %10, %3
  %32 = phi i32 [ -19, %3 ], [ -515, %16 ], [ -515, %10 ], [ %30, %28 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_enum_dv_timings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_enum_dv_timings, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 5
  %14 = load i32, ptr %13, align 8
  store i32 %14, ptr %9, align 4
  %15 = icmp eq ptr %8, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %20, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %27, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %26
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi ptr [ %24, %33 ], [ %31, %29 ]
  %36 = tail call i32 %35(ptr noundef nonnull %8, ptr noundef %2) #12
  br label %37

37:                                               ; preds = %34, %22, %16, %12
  %38 = phi i32 [ -19, %12 ], [ -515, %22 ], [ -515, %16 ], [ %36, %34 ]
  store i32 0, ptr %9, align 4
  br label %39

39:                                               ; preds = %37, %3
  %40 = phi i32 [ %38, %37 ], [ -22, %3 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_dv_timings_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_dv_timings_cap, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 5
  %14 = load i32, ptr %13, align 8
  store i32 %14, ptr %9, align 4
  %15 = icmp eq ptr %8, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %20, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %27, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %26
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi ptr [ %24, %33 ], [ %31, %29 ]
  %36 = tail call i32 %35(ptr noundef nonnull %8, ptr noundef %2) #12
  br label %37

37:                                               ; preds = %34, %22, %16, %12
  %38 = phi i32 [ -19, %12 ], [ -515, %22 ], [ -515, %16 ], [ %36, %34 ]
  store i32 0, ptr %9, align 4
  br label %39

39:                                               ; preds = %37, %3
  %40 = phi i32 [ %38, %37 ], [ -22, %3 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_g_edid(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 5
  %13 = load i32, ptr %12, align 8
  store i32 %13, ptr %2, align 4
  %14 = icmp eq ptr %8, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %19, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi ptr [ %23, %32 ], [ %30, %28 ]
  %35 = tail call i32 %34(ptr noundef nonnull %8, ptr noundef %2) #12
  br label %36

36:                                               ; preds = %33, %21, %15, %11
  %37 = phi i32 [ -19, %11 ], [ -515, %21 ], [ -515, %15 ], [ %35, %33 ]
  store i32 0, ptr %2, align 4
  br label %38

38:                                               ; preds = %36, %3
  %39 = phi i32 [ %37, %36 ], [ -22, %3 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rvin_s_edid(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rvin_dev, ptr %6, i32 0, i32 7, i32 5
  %13 = load i32, ptr %12, align 8
  store i32 %13, ptr %2, align 4
  %14 = icmp eq ptr %8, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.v4l2_subdev, ptr %8, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %19, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi ptr [ %23, %32 ], [ %30, %28 ]
  %35 = tail call i32 %34(ptr noundef nonnull %8, ptr noundef %2) #12
  br label %36

36:                                               ; preds = %33, %21, %15, %11
  %37 = phi i32 [ -19, %11 ], [ -515, %21 ], [ -515, %15 ], [ %35, %33 ]
  store i32 0, ptr %2, align 4
  br label %38

38:                                               ; preds = %36, %3
  %39 = phi i32 [ %37, %36 ], [ -22, %3 ]
  ret i32 %39
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rvin_try_format(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #2 {
  %5 = alloca %struct.v4l2_subdev_format, align 4
  %6 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #12
  %8 = getelementptr inbounds i8, ptr %5, i32 32
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  store i32 %1, ptr %5, align 4
  %9 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 7, i32 4
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %9, align 4
  %12 = tail call ptr @v4l2_subdev_alloc_state(ptr noundef %7) #12
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = ptrtoint ptr %12 to i32
  br label %108

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.v4l2_pix_format, ptr %2, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @rvin_format_from_pixel(ptr noundef %0, i32 noundef %18)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1448695129, ptr %17, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2
  %24 = getelementptr inbounds %struct.rvin_dev, ptr %0, i32 0, i32 22
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %2, align 4
  store i32 %26, ptr %23, align 4
  %27 = getelementptr inbounds %struct.v4l2_pix_format, ptr %2, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.v4l2_pix_format, ptr %2, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.v4l2_pix_format, ptr %2, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 4
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.v4l2_pix_format, ptr %2, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 5
  store i16 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.v4l2_pix_format, ptr %2, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 6
  store i16 %42, ptr %43, align 2
  %44 = getelementptr inbounds %struct.v4l2_pix_format, ptr %2, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 7
  store i16 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 2
  store i32 %25, ptr %48, align 4
  %49 = icmp eq ptr %7, null
  br i1 %49, label %71, label %50

50:                                               ; preds = %22
  %51 = getelementptr inbounds %struct.v4l2_subdev, ptr %7, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %52, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %84, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %54, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %84, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %61, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %60
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi ptr [ %58, %67 ], [ %65, %63 ]
  %70 = call i32 %69(ptr noundef nonnull %7, ptr noundef %12, ptr noundef nonnull %5) #12
  br label %71

71:                                               ; preds = %68, %22
  %72 = phi i32 [ -19, %22 ], [ %70, %68 ]
  %73 = icmp slt i32 %72, 0
  %74 = icmp ne i32 %72, -515
  %75 = and i1 %73, %74
  br i1 %75, label %106, label %76

76:                                               ; preds = %71
  %77 = load i32, ptr %23, align 4
  %78 = load i32, ptr %29, align 4
  %79 = load i32, ptr %32, align 4
  %80 = load i32, ptr %35, align 4
  %81 = load i16, ptr %39, align 4
  %82 = load i16, ptr %43, align 2
  %83 = load i16, ptr %47, align 4
  br label %84

84:                                               ; preds = %76, %56, %50
  %85 = phi i16 [ %83, %76 ], [ %46, %50 ], [ %46, %56 ]
  %86 = phi i16 [ %82, %76 ], [ %42, %50 ], [ %42, %56 ]
  %87 = phi i16 [ %81, %76 ], [ %38, %50 ], [ %38, %56 ]
  %88 = phi i32 [ %80, %76 ], [ %34, %50 ], [ %34, %56 ]
  %89 = phi i32 [ %79, %76 ], [ %31, %50 ], [ %31, %56 ]
  %90 = phi i32 [ %78, %76 ], [ %28, %50 ], [ %28, %56 ]
  %91 = phi i32 [ %77, %76 ], [ %26, %50 ], [ %26, %56 ]
  store i32 %91, ptr %2, align 4
  store i32 %90, ptr %27, align 4
  store i32 %89, ptr %30, align 4
  store i32 %88, ptr %33, align 4
  %92 = zext i16 %87 to i32
  store i32 %92, ptr %36, align 4
  %93 = zext i16 %86 to i32
  store i32 %93, ptr %40, align 4
  %94 = zext i16 %85 to i32
  store i32 %94, ptr %44, align 4
  %95 = icmp eq ptr %3, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.v4l2_rect, ptr %3, i32 0, i32 1
  store i32 0, ptr %97, align 4
  store i32 0, ptr %3, align 4
  %98 = load i32, ptr %2, align 4
  %99 = getelementptr inbounds %struct.v4l2_rect, ptr %3, i32 0, i32 2
  store i32 %98, ptr %99, align 4
  %100 = load i32, ptr %27, align 4
  %101 = getelementptr inbounds %struct.v4l2_rect, ptr %3, i32 0, i32 3
  store i32 %100, ptr %101, align 4
  br label %102

102:                                              ; preds = %96, %84
  %103 = icmp eq i32 %31, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %102
  store i32 %31, ptr %30, align 4
  br label %105

105:                                              ; preds = %104, %102
  store i32 %26, ptr %2, align 4
  store i32 %28, ptr %27, align 4
  call fastcc void @rvin_format_align(ptr noundef %0, ptr noundef %2)
  br label %106

106:                                              ; preds = %105, %71
  %107 = phi i32 [ %72, %71 ], [ 0, %105 ]
  call void @v4l2_subdev_free_state(ptr noundef %12) #12
  br label %108

108:                                              ; preds = %106, %14
  %109 = phi i32 [ %15, %14 ], [ %107, %106 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #12
  ret i32 %109
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_subdev_alloc_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_free_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rvin_crop_scale_comp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_g_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_parm_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }

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
!10 = !{i64 2148180896}
!11 = !{i64 616561, i64 2148118127, i64 2148118153, i64 2148118200, i64 2148118222, i64 2148118250, i64 2148118270}
!12 = !{i64 603130, i64 603155, i64 603177, i64 603193, i64 603205, i64 603225, i64 603249, i64 603265, i64 603277}
!13 = !{i64 2148181022}
!14 = !{!"auto-init"}
