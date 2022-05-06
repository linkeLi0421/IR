; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/fimc-m2m.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-m2m.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
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
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fimc_ctx = type { %struct.fimc_frame, %struct.fimc_frame, i32, i32, i32, i32, i32, i32, %struct.fimc_scaler, %struct.fimc_effect, i32, i8, i32, i32, ptr, %struct.v4l2_fh, %struct.fimc_ctrls }
%struct.fimc_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], %struct.fimc_addr, %struct.fimc_dma_offset, ptr, i8 }
%struct.fimc_addr = type { i32, i32, i32 }
%struct.fimc_dma_offset = type { i32, i32, i32, i32, i32, i32 }
%struct.fimc_scaler = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fimc_effect = type { i32, i8, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.fimc_ctrls = type { %struct.v4l2_ctrl_handler, %struct.anon.100, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.fimc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, [2 x ptr], ptr, %struct.wait_queue_head, ptr, %struct.fimc_m2m_device, %struct.fimc_vid_cap, i32 }
%struct.fimc_m2m_device = type { %struct.video_device, ptr, ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fimc_vid_cap = type { ptr, %struct.v4l2_subdev, %struct.exynos_video_entity, %struct.media_pad, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, %struct.fimc_source_info, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i8, i32, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.fimc_source_info = type { i32, i32, i16, i16 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.78, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.78 = type { i8 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.fimc_variant = type { i8, ptr, i16, i16, i16, i16 }
%struct.fimc_pix_limit = type { i16, i16, i16, i16, i16, i16 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.fimc_drvdata = type { [4 x ptr], i32, i32, i8, i8, i8, i8 }

@fimc_m2m_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @fimc_m2m_open, ptr @fimc_m2m_release }, align 4
@fimc_m2m_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @fimc_m2m_querycap, ptr @fimc_m2m_enum_fmt, ptr null, ptr @fimc_m2m_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_m2m_g_fmt_mplane, ptr @fimc_m2m_g_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_m2m_s_fmt_mplane, ptr @fimc_m2m_s_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_m2m_try_fmt_mplane, ptr @fimc_m2m_try_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_m2m_g_selection, ptr @fimc_m2m_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [12 x i8] c"fimc.%d.m2m\00", align 1
@m2m_ops = internal constant %struct.v4l2_m2m_ops { ptr @fimc_device_run, ptr null, ptr @fimc_job_abort }, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\013%s: failed to initialize v4l2-m2m device\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\016%s: Registered %s as /dev/%s\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@fimc_qops = internal constant %struct.vb2_ops { ptr @fimc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @fimc_buf_prepare, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @fimc_buf_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"\013%s: Wrong buffer/video queue type (%d)\0A\00", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"\013%s: queue (%d) busy\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"drivers/media/platform/exynos4-is/fimc-m2m.c\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Pixel format lookup failed\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"\013%s: Out of scaler range\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"\013%s: doesn't support negative values for top & left\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Null context\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_m2m_job_finish(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 15, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  %10 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %9) #8
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %11, i32 0, i32 7
  %13 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %12) #8
  %14 = icmp eq ptr %10, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = icmp eq ptr %13, null
  br i1 %16, label %26, label %19

17:                                               ; preds = %8
  tail call void @vb2_buffer_done(ptr noundef nonnull %10, i32 noundef %1) #8
  %18 = icmp eq ptr %13, null
  br i1 %18, label %26, label %20

19:                                               ; preds = %15
  tail call void @vb2_buffer_done(ptr noundef nonnull %13, i32 noundef %1) #8
  br label %26

20:                                               ; preds = %17
  tail call void @vb2_buffer_done(ptr noundef nonnull %13, i32 noundef %1) #8
  %21 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.fimc_dev, ptr %22, i32 0, i32 12, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %5, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %24, ptr noundef %25) #8
  br label %26

26:                                               ; preds = %20, %19, %17, %15, %4, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_register_m2m_device(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 11
  store ptr %1, ptr %4, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(856) %3, i8 0, i32 856, i1 false)
  %5 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 3
  store ptr @fimc_m2m_fops, ptr %5, align 4
  %6 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 24
  store ptr @fimc_m2m_ioctl_ops, ptr %6, align 4
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 7
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 15
  store i32 -1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 23
  store ptr @video_device_release_empty, ptr %9, align 8
  %10 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 26
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 14
  store i32 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 4
  store i32 67125248, ptr %13, align 8
  %14 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %14) #8
  %15 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 12
  %16 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %17)
  %19 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 5, i32 8
  store ptr %0, ptr %19, align 8
  %20 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @m2m_ops) #8
  %21 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 1
  store ptr %20, ptr %21, align 8
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %24) #9
  %26 = load ptr, ptr %21, align 8
  %27 = ptrtoint ptr %26 to i32
  br label %50

28:                                               ; preds = %2
  %29 = tail call i32 @media_entity_pads_init(ptr noundef %3, i16 noundef zeroext 0, ptr noundef null) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @__video_register_device(ptr noundef %3, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %33) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %38 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 5, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi ptr [ %43, %41 ], [ %39, %36 ]
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %37, ptr noundef %15, ptr noundef %45) #9
  br label %50

47:                                               ; preds = %31, %28
  %48 = phi i32 [ %29, %28 ], [ %34, %31 ]
  %49 = load ptr, ptr %21, align 8
  tail call void @v4l2_m2m_release(ptr noundef %49) #8
  br label %50

50:                                               ; preds = %47, %44, %23
  %51 = phi i32 [ %27, %23 ], [ %48, %47 ], [ 0, %44 ]
  ret i32 %51
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_unregister_m2m_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12
  %5 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @v4l2_m2m_release(ptr noundef nonnull %6) #8
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 12, i32 0, i32 17
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @video_unregister_device(ptr noundef %4) #8
  br label %15

15:                                               ; preds = %14, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_m2m_open(ptr noundef %0) #0 {
  %2 = alloca %struct.v4l2_pix_format_mplane, align 4
  %3 = tail call ptr @video_devdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 1
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %117

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 14
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %115

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 596) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %115, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 15
  %20 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 12
  tail call void @v4l2_fh_init(ptr noundef %19, ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 14
  store ptr %5, ptr %21, align 4
  %22 = tail call ptr @fimc_get_format(i32 noundef 0) #8
  %23 = getelementptr inbounds %struct.fimc_frame, ptr %16, i32 0, i32 12
  store ptr %22, ptr %23, align 4
  %24 = tail call ptr @fimc_get_format(i32 noundef 0) #8
  %25 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 1, i32 12
  store ptr %24, ptr %25, align 8
  %26 = tail call i32 @fimc_ctrls_create(ptr noundef nonnull %16) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %113

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 16
  %30 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 15, i32 2
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %19, ptr %31, align 8
  tail call void @v4l2_fh_add(ptr noundef %19) #8
  %32 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 13
  store i32 65536, ptr %32, align 8
  %33 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 12
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 6
  store i32 2, ptr %34, align 8
  %35 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 7
  store i32 2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 8
  %37 = load i8, ptr %36, align 8
  %38 = or i8 %37, 8
  store i8 %38, ptr %36, align 8
  %39 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 12, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %40, ptr noundef nonnull %16, ptr noundef nonnull @queue_init) #8
  %42 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 15, i32 10
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = ptrtoint ptr %41 to i32
  br label %111

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 12, i32 3
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  tail call void @_set_bit(i32 noundef 1, ptr noundef %10) #8
  br label %52

52:                                               ; preds = %51, %46
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %2) #8
  %53 = getelementptr inbounds i8, ptr %2, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %53, i8 0, i32 180, i1 false) #8
  store i32 800, ptr %2, align 4
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 1
  store i32 600, ptr %54, align 4
  %55 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 2
  store i32 876758866, ptr %55, align 4
  %56 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5
  store i32 1920000, ptr %56, align 4
  %57 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 0, i32 1
  store i32 3200, ptr %57, align 4
  %58 = call ptr @fimc_find_format(ptr noundef %55, ptr noundef null, i32 noundef 6, i32 noundef 0) #8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %109, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.fimc_fmt, ptr %58, i32 0, i32 3
  %62 = load i16, ptr %61, align 4
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %64, %60
  %65 = phi i32 [ %72, %64 ], [ 0, %60 ]
  %66 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 %65
  %67 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 %65, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr %struct.fimc_frame, ptr %16, i32 0, i32 9, i32 %65
  store i32 %68, ptr %69, align 4
  %70 = load i32, ptr %66, align 4
  %71 = getelementptr %struct.fimc_frame, ptr %16, i32 0, i32 8, i32 %65
  store i32 %70, ptr %71, align 4
  %72 = add nuw nsw i32 %65, 1
  %73 = load i16, ptr %61, align 4
  %74 = zext i16 %73 to i32
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %64, label %76

76:                                               ; preds = %64, %60
  %77 = load i32, ptr %2, align 4
  store i32 %77, ptr %16, align 8
  %78 = load i32, ptr %54, align 4
  %79 = getelementptr inbounds %struct.fimc_frame, ptr %16, i32 0, i32 1
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.fimc_frame, ptr %16, i32 0, i32 2
  store i32 %77, ptr %80, align 8
  %81 = getelementptr inbounds %struct.fimc_frame, ptr %16, i32 0, i32 3
  store i32 %78, ptr %81, align 4
  %82 = getelementptr inbounds %struct.fimc_frame, ptr %16, i32 0, i32 6
  store i32 %77, ptr %82, align 8
  %83 = getelementptr inbounds %struct.fimc_frame, ptr %16, i32 0, i32 7
  store i32 %78, ptr %83, align 4
  %84 = getelementptr inbounds %struct.fimc_frame, ptr %16, i32 0, i32 4
  store i32 0, ptr %84, align 8
  %85 = getelementptr inbounds %struct.fimc_frame, ptr %16, i32 0, i32 5
  store i32 0, ptr %85, align 4
  store ptr %58, ptr %23, align 4
  %86 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 1
  %87 = load i16, ptr %61, align 4
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %89, %76
  %90 = phi i32 [ %97, %89 ], [ 0, %76 ]
  %91 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 %90
  %92 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 %90, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr %struct.fimc_ctx, ptr %16, i32 0, i32 1, i32 9, i32 %90
  store i32 %93, ptr %94, align 4
  %95 = load i32, ptr %91, align 4
  %96 = getelementptr %struct.fimc_ctx, ptr %16, i32 0, i32 1, i32 8, i32 %90
  store i32 %95, ptr %96, align 4
  %97 = add nuw nsw i32 %90, 1
  %98 = load i16, ptr %61, align 4
  %99 = zext i16 %98 to i32
  %100 = icmp ult i32 %97, %99
  br i1 %100, label %89, label %101

101:                                              ; preds = %89, %76
  store i32 %77, ptr %86, align 4
  %102 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 1, i32 1
  store i32 %78, ptr %102, align 8
  %103 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 1, i32 2
  store i32 %77, ptr %103, align 4
  %104 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 1, i32 3
  store i32 %78, ptr %104, align 8
  %105 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 1, i32 6
  store i32 %77, ptr %105, align 4
  %106 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 1, i32 7
  store i32 %78, ptr %106, align 8
  %107 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 1, i32 4
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.fimc_ctx, ptr %16, i32 0, i32 1, i32 5
  store i32 0, ptr %108, align 8
  store ptr %58, ptr %25, align 8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %2) #8
  br label %115

109:                                              ; preds = %52
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %2) #8
  %110 = load ptr, ptr %42, align 4
  call void @v4l2_m2m_ctx_release(ptr noundef %110) #8
  br label %111

111:                                              ; preds = %109, %44
  %112 = phi i32 [ %45, %44 ], [ -22, %109 ]
  call void @fimc_ctrls_delete(ptr noundef nonnull %16) #8
  call void @v4l2_fh_del(ptr noundef %19) #8
  br label %113

113:                                              ; preds = %111, %18
  %114 = phi i32 [ %26, %18 ], [ %112, %111 ]
  call void @v4l2_fh_exit(ptr noundef %19) #8
  call void @kfree(ptr noundef nonnull %16) #8
  br label %115

115:                                              ; preds = %113, %101, %14, %9
  %116 = phi i32 [ 0, %101 ], [ -16, %9 ], [ %114, %113 ], [ -12, %14 ]
  call void @mutex_unlock(ptr noundef %6) #8
  br label %117

117:                                              ; preds = %115, %1
  %118 = phi i32 [ -512, %1 ], [ %116, %115 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_m2m_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -376
  %5 = getelementptr i8, ptr %3, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %9) #8
  tail call void @fimc_ctrls_delete(ptr noundef %4) #8
  tail call void @v4l2_fh_del(ptr noundef %3) #8
  tail call void @v4l2_fh_exit(ptr noundef %3) #8
  %10 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 12, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 8
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %15) #8
  br label %16

16:                                               ; preds = %14, %1
  tail call void @kfree(ptr noundef %4) #8
  tail call void @mutex_unlock(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_get_format(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_ctrls_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 10, ptr %1, align 4
  %4 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 1
  store i32 19, ptr %4, align 4
  %5 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 7
  store ptr @fimc_qops, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 12
  store i32 648, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 13
  store i32 16384, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fimc_dev, ptr %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 5
  store ptr %12, ptr %13, align 4
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr inbounds %struct.fimc_dev, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = tail call i32 @vb2_queue_init(ptr noundef %1) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %3
  store i32 9, ptr %2, align 4
  %22 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 1
  store i32 19, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 7
  store ptr @fimc_qops, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 12
  store i32 648, ptr %26, align 4
  %27 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 13
  store i32 16384, ptr %27, align 4
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr inbounds %struct.fimc_dev, ptr %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 5
  store ptr %29, ptr %30, align 4
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr inbounds %struct.fimc_dev, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 2
  store ptr %34, ptr %35, align 4
  %36 = tail call i32 @vb2_queue_init(ptr noundef %2) #8
  br label %37

37:                                               ; preds = %21, %3
  %38 = phi i32 [ %36, %21 ], [ %19, %3 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_ctrls_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = and i32 %8, -9
  switch i32 %9, label %21 [
    i32 2, label %10
    i32 1, label %19
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.fimc_ctx, ptr %7, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #8
  %14 = getelementptr inbounds %struct.fimc_ctx, ptr %7, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %13) #8
  br i1 %17, label %31, label %28

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.fimc_ctx, ptr %7, i32 0, i32 1
  br label %28

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.fimc_ctx, ptr %7, i32 0, i32 14
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.fimc_dev, ptr %23, i32 0, i32 11
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.v4l2_device, ptr %25, i32 0, i32 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %26, i32 noundef %8) #9
  br label %31

28:                                               ; preds = %19, %10
  %29 = phi ptr [ %20, %19 ], [ %7, %10 ]
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %21, %10
  %32 = phi ptr [ %29, %28 ], [ inttoptr (i32 -22 to ptr), %21 ], [ inttoptr (i32 -22 to ptr), %10 ]
  %33 = ptrtoint ptr %32 to i32
  br label %57

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.fimc_frame, ptr %29, i32 0, i32 12
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.fimc_fmt, ptr %36, i32 0, i32 3
  %40 = load i16, ptr %39, align 4
  %41 = zext i16 %40 to i32
  store i32 %41, ptr %2, align 4
  %42 = load ptr, ptr %35, align 4
  %43 = getelementptr inbounds %struct.fimc_fmt, ptr %42, i32 0, i32 3
  %44 = load i16, ptr %43, align 4
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %46, %38
  %47 = phi i32 [ %51, %46 ], [ 0, %38 ]
  %48 = getelementptr %struct.fimc_frame, ptr %29, i32 0, i32 8, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i32, ptr %3, i32 %47
  store i32 %49, ptr %50, align 4
  %51 = add nuw nsw i32 %47, 1
  %52 = load ptr, ptr %35, align 4
  %53 = getelementptr inbounds %struct.fimc_fmt, ptr %52, i32 0, i32 3
  %54 = load i16, ptr %53, align 4
  %55 = zext i16 %54 to i32
  %56 = icmp ult i32 %51, %55
  br i1 %56, label %46, label %57

57:                                               ; preds = %46, %38, %34, %31
  %58 = phi i32 [ %33, %31 ], [ -22, %34 ], [ 0, %38 ], [ 0, %46 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_buf_prepare(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, -9
  switch i32 %6, label %18 [
    i32 2, label %7
    i32 1, label %16
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fimc_ctx, ptr %4, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %11 = getelementptr inbounds %struct.fimc_ctx, ptr %4, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65536
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %10) #8
  br i1 %14, label %36, label %25

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.fimc_ctx, ptr %4, i32 0, i32 1
  br label %25

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.fimc_ctx, ptr %4, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fimc_dev, ptr %20, i32 0, i32 11
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.v4l2_device, ptr %22, i32 0, i32 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %23, i32 noundef %5) #9
  br label %36

25:                                               ; preds = %16, %7
  %26 = phi ptr [ %17, %16 ], [ %4, %7 ]
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.fimc_frame, ptr %26, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fimc_fmt, ptr %30, i32 0, i32 3
  %32 = load i16, ptr %31, align 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  br label %39

36:                                               ; preds = %25, %18, %7
  %37 = phi ptr [ %26, %25 ], [ inttoptr (i32 -22 to ptr), %18 ], [ inttoptr (i32 -22 to ptr), %7 ]
  %38 = ptrtoint ptr %37 to i32
  br label %68

39:                                               ; preds = %61, %34
  %40 = phi ptr [ %30, %34 ], [ %62, %61 ]
  %41 = phi i32 [ 0, %34 ], [ %63, %61 ]
  %42 = getelementptr %struct.fimc_frame, ptr %26, i32 0, i32 8, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %35, align 8
  %45 = icmp ugt i32 %44, %41
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %41, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = icmp ult i32 %48, %43
  %50 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %51 = xor i1 %50, true
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %54, !prof !8

53:                                               ; preds = %46
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %54

54:                                               ; preds = %53, %46
  br i1 %49, label %55, label %57

55:                                               ; preds = %54
  %56 = load i32, ptr %47, align 8
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ %56, %55 ], [ %43, %54 ]
  %59 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %41, i32 3
  store i32 %58, ptr %59, align 4
  %60 = load ptr, ptr %29, align 4
  br label %61

61:                                               ; preds = %57, %39
  %62 = phi ptr [ %40, %39 ], [ %60, %57 ]
  %63 = add nuw nsw i32 %41, 1
  %64 = getelementptr inbounds %struct.fimc_fmt, ptr %62, i32 0, i32 3
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %39, label %68

68:                                               ; preds = %61, %36, %28
  %69 = phi i32 [ %38, %36 ], [ 0, %28 ], [ 0, %61 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_ctx, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #8, !srcloc !10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 0, i32 -1, ptr elementtype(i32) %13) #8, !srcloc !11
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  br label %18

18:                                               ; preds = %17, %12, %2
  %19 = phi i32 [ 0, %2 ], [ %10, %12 ], [ %10, %17 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @fimc_m2m_shutdown(ptr noundef %3)
  tail call void @fimc_m2m_job_finish(ptr noundef %3, i32 noundef 6)
  %4 = getelementptr inbounds %struct.fimc_ctx, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = tail call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimc_buf_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_ctx, ptr %4, i32 0, i32 15, i32 10
  %6 = load ptr, ptr %5, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %6, ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fimc_m2m_shutdown(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_dev, ptr %4, i32 0, i32 14
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %11 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 262144
  store i32 %13, ptr %11, align 4
  %14 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %10) #8
  %15 = load ptr, ptr %3, align 4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #8
  %17 = load i32, ptr %11, align 4
  %18 = and i32 %17, 262144
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %16) #8
  br i1 %19, label %41, label %21

21:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #8
  %22 = getelementptr inbounds %struct.fimc_dev, ptr %4, i32 0, i32 10
  br label %23

23:                                               ; preds = %38, %21
  %24 = phi i32 [ 10, %21 ], [ %39, %38 ]
  %25 = call i32 @prepare_to_wait_event(ptr noundef %22, ptr noundef nonnull %2, i32 noundef 2) #8
  %26 = load ptr, ptr %3, align 4
  %27 = call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #8
  %28 = load i32, ptr %11, align 4
  %29 = and i32 %28, 262144
  %30 = icmp ne i32 %29, 0
  %31 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %27) #8
  %32 = xor i1 %30, true
  %33 = icmp ne i32 %24, 0
  %34 = select i1 %30, i1 true, i1 %33
  %35 = select i1 %34, i32 %24, i32 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %32, i1 true, i1 %36
  br i1 %37, label %40, label %38

38:                                               ; preds = %23
  %39 = call i32 @schedule_timeout(i32 noundef %35) #8
  br label %23

40:                                               ; preds = %23
  call void @finish_wait(ptr noundef %22, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  br label %41

41:                                               ; preds = %40, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_find_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_m2m_querycap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void @__fimc_vidioc_querycap(ptr noundef %9, ptr noundef %2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_m2m_enum_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 10
  %7 = select i1 %6, i32 2, i32 4
  %8 = load i32, ptr %2, align 4
  %9 = tail call ptr @fimc_find_format(ptr noundef null, ptr noundef null, i32 noundef %7, i32 noundef %8) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.fimc_fmt, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ 0, %11 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_m2m_g_fmt_mplane(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, -9
  switch i32 %5, label %18 [
    i32 2, label %6
    i32 1, label %16
  ]

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 -376
  %8 = getelementptr i8, ptr %1, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %11 = getelementptr i8, ptr %1, i32 -8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65536
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %10) #8
  br i1 %14, label %28, label %25

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %1, i32 -236
  br label %25

18:                                               ; preds = %3
  %19 = getelementptr i8, ptr %1, i32 -4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fimc_dev, ptr %20, i32 0, i32 11
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.v4l2_device, ptr %22, i32 0, i32 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %23, i32 noundef %4) #9
  br label %28

25:                                               ; preds = %16, %6
  %26 = phi ptr [ %17, %16 ], [ %7, %6 ]
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %18, %6
  %29 = phi ptr [ %26, %25 ], [ inttoptr (i32 -22 to ptr), %18 ], [ inttoptr (i32 -22 to ptr), %6 ]
  %30 = ptrtoint ptr %29 to i32
  br label %32

31:                                               ; preds = %25
  tail call void @__fimc_get_format(ptr noundef %26, ptr noundef %2) #8
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %30, %28 ], [ 0, %31 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_m2m_s_fmt_mplane(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -376
  %5 = getelementptr i8, ptr %1, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @fimc_try_fmt_mplane(ptr noundef %4, ptr noundef %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %63

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %2, align 4
  %13 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %11, i32 noundef %12) #8
  %14 = getelementptr inbounds %struct.vb2_queue, ptr %13, i32 0, i32 21
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 12, i32 0, i32 12
  %19 = load i32, ptr %2, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %18, i32 noundef %19) #9
  br label %63

21:                                               ; preds = %9
  %22 = load i32, ptr %2, align 4
  %23 = icmp eq i32 %22, 10
  %24 = getelementptr i8, ptr %1, i32 -236
  %25 = select i1 %23, ptr %4, ptr %24
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %27 = select i1 %23, i32 2, i32 4
  %28 = tail call ptr @fimc_find_format(ptr noundef %26, ptr noundef null, i32 noundef %27, i32 noundef 0) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %32 = getelementptr inbounds %struct.fimc_fmt, ptr %28, i32 0, i32 3
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %35, %30
  %36 = phi i32 [ %43, %35 ], [ 0, %30 ]
  %37 = getelementptr %struct.v4l2_pix_format_mplane, ptr %31, i32 0, i32 5, i32 %36
  %38 = getelementptr %struct.v4l2_pix_format_mplane, ptr %31, i32 0, i32 5, i32 %36, i32 1
  %39 = load i32, ptr %38, align 1
  %40 = getelementptr %struct.fimc_frame, ptr %25, i32 0, i32 9, i32 %36
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %37, align 1
  %42 = getelementptr %struct.fimc_frame, ptr %25, i32 0, i32 8, i32 %36
  store i32 %41, ptr %42, align 4
  %43 = add nuw nsw i32 %36, 1
  %44 = load i16, ptr %32, align 4
  %45 = zext i16 %44 to i32
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %35, label %47

47:                                               ; preds = %35, %30
  %48 = load i32, ptr %31, align 1
  store i32 %48, ptr %25, align 4
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %50 = load i32, ptr %49, align 1
  %51 = getelementptr inbounds %struct.fimc_frame, ptr %25, i32 0, i32 1
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %31, align 1
  %53 = getelementptr inbounds %struct.fimc_frame, ptr %25, i32 0, i32 2
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %49, align 1
  %55 = getelementptr inbounds %struct.fimc_frame, ptr %25, i32 0, i32 3
  store i32 %54, ptr %55, align 4
  %56 = load i32, ptr %31, align 1
  %57 = getelementptr inbounds %struct.fimc_frame, ptr %25, i32 0, i32 6
  store i32 %56, ptr %57, align 4
  %58 = load i32, ptr %49, align 1
  %59 = getelementptr inbounds %struct.fimc_frame, ptr %25, i32 0, i32 7
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.fimc_frame, ptr %25, i32 0, i32 4
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.fimc_frame, ptr %25, i32 0, i32 5
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.fimc_frame, ptr %25, i32 0, i32 12
  store ptr %28, ptr %62, align 4
  tail call void @fimc_alpha_ctrl_update(ptr noundef %4) #8
  br label %63

63:                                               ; preds = %47, %21, %17, %3
  %64 = phi i32 [ -16, %17 ], [ 0, %47 ], [ %7, %3 ], [ -22, %21 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_m2m_try_fmt_mplane(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -376
  %5 = tail call fastcc i32 @fimc_try_fmt_mplane(ptr noundef %4, ptr noundef %2)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_m2m_g_selection(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, -9
  switch i32 %5, label %18 [
    i32 2, label %6
    i32 1, label %16
  ]

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 -376
  %8 = getelementptr i8, ptr %1, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #8
  %11 = getelementptr i8, ptr %1, i32 -8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65536
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %10) #8
  br i1 %14, label %28, label %25

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %1, i32 -236
  br label %25

18:                                               ; preds = %3
  %19 = getelementptr i8, ptr %1, i32 -4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fimc_dev, ptr %20, i32 0, i32 11
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.v4l2_device, ptr %22, i32 0, i32 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %23, i32 noundef %4) #9
  br label %28

25:                                               ; preds = %16, %6
  %26 = phi ptr [ %17, %16 ], [ %7, %6 ]
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %18, %6
  %29 = phi ptr [ %26, %25 ], [ inttoptr (i32 -22 to ptr), %18 ], [ inttoptr (i32 -22 to ptr), %6 ]
  %30 = ptrtoint ptr %29 to i32
  br label %63

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %63 [
    i32 0, label %34
    i32 1, label %34
    i32 2, label %34
    i32 256, label %37
    i32 257, label %37
    i32 258, label %37
  ]

34:                                               ; preds = %31, %31, %31
  %35 = load i32, ptr %2, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %40, label %63

37:                                               ; preds = %31, %31, %31
  %38 = load i32, ptr %2, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %63

40:                                               ; preds = %37, %34
  switch i32 %33, label %63 [
    i32 0, label %41
    i32 256, label %41
    i32 1, label %54
    i32 2, label %54
    i32 257, label %54
    i32 258, label %54
  ]

41:                                               ; preds = %40, %40
  %42 = getelementptr inbounds %struct.fimc_frame, ptr %26, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.fimc_frame, ptr %26, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fimc_frame, ptr %26, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fimc_frame, ptr %26, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %52, ptr %53, align 4
  br label %63

54:                                               ; preds = %40, %40, %40, %40
  %55 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.fimc_frame, ptr %26, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.fimc_frame, ptr %26, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %54, %41, %40, %37, %34, %31, %28
  %64 = phi i32 [ %30, %28 ], [ -22, %34 ], [ -22, %37 ], [ -22, %31 ], [ -22, %40 ], [ 0, %54 ], [ 0, %41 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_m2m_s_selection(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -376
  %5 = getelementptr i8, ptr %1, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %8 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, ptr %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 12, i32 0, i32 12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %15) #9
  br label %159

17:                                               ; preds = %11
  %18 = load i32, ptr %2, align 4
  switch i32 %18, label %159 [
    i32 1, label %19
    i32 2, label %23
  ]

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 256
  br i1 %22, label %31, label %159

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %159

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fimc_variant, ptr %29, i32 0, i32 2
  br label %36

31:                                               ; preds = %19
  %32 = getelementptr i8, ptr %1, i32 -236
  %33 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fimc_variant, ptr %34, i32 0, i32 3
  br label %36

36:                                               ; preds = %31, %27
  %37 = phi ptr [ %29, %27 ], [ %34, %31 ]
  %38 = phi ptr [ %4, %27 ], [ %32, %31 ]
  %39 = phi ptr [ %30, %27 ], [ %35, %31 ]
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 5
  %43 = getelementptr inbounds %struct.fimc_variant, ptr %37, i32 0, i32 5
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.fimc_frame, ptr %38, i32 0, i32 12
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.fimc_fmt, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 4
  %52 = and i32 %51, 1
  %53 = xor i32 %52, 1
  br label %61

54:                                               ; preds = %36
  %55 = tail call i16 @llvm.cttz.i16(i16 %44, i1 true) #8, !range !14
  %56 = zext i16 %55 to i32
  %57 = icmp eq i16 %44, 0
  %58 = select i1 %57, i32 -1, i32 %56
  %59 = getelementptr inbounds %struct.fimc_frame, ptr %38, i32 0, i32 12
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %54, %46
  %62 = phi ptr [ %48, %46 ], [ %60, %54 ]
  %63 = phi i32 [ %53, %46 ], [ %58, %54 ]
  %64 = getelementptr inbounds %struct.fimc_fmt, ptr %62, i32 0, i32 3
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = icmp eq i16 %65, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %68, %61
  %69 = phi i32 [ %75, %68 ], [ 0, %61 ]
  %70 = phi i32 [ %74, %68 ], [ 0, %61 ]
  %71 = getelementptr %struct.fimc_fmt, ptr %62, i32 0, i32 6, i32 %69
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = add i32 %70, %73
  %75 = add nuw nsw i32 %69, 1
  %76 = icmp eq i32 %75, %66
  br i1 %76, label %77, label %68

77:                                               ; preds = %68
  %78 = add i32 %74, 7
  %79 = and i32 %78, -8
  br label %80

80:                                               ; preds = %77, %61
  %81 = phi i32 [ 0, %61 ], [ %79, %77 ]
  %82 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %83 = getelementptr inbounds %struct.fimc_frame, ptr %38, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = tail call i32 @llvm.cttz.i32(i32 %41, i1 true) #8, !range !15
  %86 = icmp eq i16 %40, 0
  %87 = select i1 %86, i32 -1, i32 %85
  %88 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %89 = getelementptr inbounds %struct.fimc_frame, ptr %38, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = udiv i32 64, %81
  tail call void @v4l_bound_align_image(ptr noundef %82, i32 noundef %41, i32 noundef %84, i32 noundef %87, ptr noundef %88, i32 noundef %41, i32 noundef %90, i32 noundef %63, i32 noundef %91) #8
  %92 = load i32, ptr %7, align 4
  %93 = load i32, ptr %82, align 4
  %94 = add i32 %93, %92
  %95 = load i32, ptr %83, align 4
  %96 = icmp ugt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %80
  %98 = sub i32 %95, %93
  store i32 %98, ptr %7, align 4
  br label %99

99:                                               ; preds = %97, %80
  %100 = phi i32 [ %98, %97 ], [ %92, %80 ]
  %101 = load i32, ptr %8, align 4
  %102 = load i32, ptr %88, align 4
  %103 = add i32 %102, %101
  %104 = load i32, ptr %89, align 4
  %105 = icmp ugt i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = sub i32 %104, %102
  store i32 %107, ptr %8, align 4
  br label %108

108:                                              ; preds = %106, %99
  %109 = phi i32 [ %107, %106 ], [ %101, %99 ]
  %110 = sub nsw i32 0, %41
  %111 = and i32 %100, %110
  store i32 %111, ptr %7, align 4
  %112 = load ptr, ptr %42, align 4
  %113 = getelementptr inbounds %struct.fimc_variant, ptr %112, i32 0, i32 4
  %114 = load i16, ptr %113, align 4
  %115 = zext i16 %114 to i32
  %116 = sub nsw i32 0, %115
  %117 = and i32 %109, %116
  store i32 %117, ptr %8, align 4
  %118 = load i32, ptr %2, align 4
  %119 = icmp eq i32 %118, 2
  %120 = getelementptr i8, ptr %1, i32 -236
  %121 = select i1 %119, ptr %4, ptr %120
  br i1 %119, label %122, label %130

122:                                              ; preds = %108
  %123 = getelementptr i8, ptr %1, i32 -212
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr i8, ptr %1, i32 -208
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr i8, ptr %1, i32 -20
  %128 = load i32, ptr %127, align 4
  %129 = tail call i32 @fimc_check_scaler_ratio(ptr noundef %4, i32 noundef %93, i32 noundef %102, i32 noundef %124, i32 noundef %126, i32 noundef %128) #8
  br label %138

130:                                              ; preds = %108
  %131 = getelementptr i8, ptr %1, i32 -352
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr i8, ptr %1, i32 -348
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr i8, ptr %1, i32 -20
  %136 = load i32, ptr %135, align 4
  %137 = tail call i32 @fimc_check_scaler_ratio(ptr noundef %4, i32 noundef %132, i32 noundef %134, i32 noundef %93, i32 noundef %102, i32 noundef %136) #8
  br label %138

138:                                              ; preds = %130, %122
  %139 = phi i32 [ %129, %122 ], [ %137, %130 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 12, i32 0, i32 12
  %143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %142) #9
  br label %159

144:                                              ; preds = %138
  %145 = load i32, ptr %7, align 4
  %146 = getelementptr inbounds %struct.fimc_frame, ptr %121, i32 0, i32 4
  store i32 %145, ptr %146, align 4
  %147 = load i32, ptr %8, align 4
  %148 = getelementptr inbounds %struct.fimc_frame, ptr %121, i32 0, i32 5
  store i32 %147, ptr %148, align 4
  %149 = load i32, ptr %82, align 4
  %150 = getelementptr inbounds %struct.fimc_frame, ptr %121, i32 0, i32 6
  store i32 %149, ptr %150, align 4
  %151 = load i32, ptr %88, align 4
  %152 = getelementptr inbounds %struct.fimc_frame, ptr %121, i32 0, i32 7
  store i32 %151, ptr %152, align 4
  %153 = load ptr, ptr %5, align 4
  %154 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %153) #8
  %155 = getelementptr i8, ptr %1, i32 -8
  %156 = load i32, ptr %155, align 4
  %157 = or i32 %156, 1
  store i32 %157, ptr %155, align 4
  %158 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %158, i32 noundef %154) #8
  br label %159

159:                                              ; preds = %144, %141, %23, %19, %17, %14
  %160 = phi i32 [ -22, %141 ], [ 0, %144 ], [ -22, %14 ], [ -22, %19 ], [ -22, %23 ], [ -22, %17 ]
  ret i32 %160
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fimc_vidioc_querycap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fimc_get_format(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_try_fmt_mplane(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_dev, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %1, align 4
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %67

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  %13 = icmp eq i32 %8, 10
  %14 = select i1 %13, i32 2, i32 4
  %15 = tail call ptr @fimc_find_format(ptr noundef %12, ptr noundef null, i32 noundef %14, i32 noundef 0) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 277, i32 noundef 9, ptr noundef nonnull @.str.7) #8
  br label %67

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 3
  %20 = load i32, ptr %19, align 1
  switch i32 %20, label %67 [
    i32 0, label %21
    i32 1, label %22
  ]

21:                                               ; preds = %18
  store i32 1, ptr %19, align 1
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, ptr %1, align 4
  %24 = icmp eq i32 %23, 10
  %25 = getelementptr inbounds %struct.fimc_variant, ptr %6, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fimc_pix_limit, ptr %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.fimc_variant, ptr %6, i32 0, i32 3
  %29 = getelementptr inbounds %struct.fimc_pix_limit, ptr %26, i32 0, i32 1
  %30 = getelementptr inbounds %struct.fimc_variant, ptr %6, i32 0, i32 2
  %31 = select i1 %24, ptr %30, ptr %28
  %32 = select i1 %24, ptr %29, ptr %27
  %33 = load i16, ptr %31, align 2
  %34 = tail call i16 @llvm.cttz.i16(i16 %33, i1 true), !range !14
  %35 = zext i16 %34 to i32
  %36 = icmp eq i16 %33, 0
  %37 = select i1 %36, i32 -1, i32 %35
  %38 = load i16, ptr %32, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.fimc_fmt, ptr %15, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 842091860
  br i1 %42, label %58, label %43

43:                                               ; preds = %22
  %44 = getelementptr inbounds %struct.fimc_variant, ptr %6, i32 0, i32 5
  %45 = load i16, ptr %44, align 2
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.fimc_fmt, ptr %15, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 4
  %51 = and i32 %50, 1
  %52 = xor i32 %51, 1
  br label %58

53:                                               ; preds = %43
  %54 = tail call i16 @llvm.cttz.i16(i16 %45, i1 true), !range !14
  %55 = zext i16 %54 to i32
  %56 = icmp eq i16 %45, 0
  %57 = select i1 %56, i32 -1, i32 %55
  br label %58

58:                                               ; preds = %53, %47, %22
  %59 = phi i32 [ %37, %47 ], [ %37, %53 ], [ 6, %22 ]
  %60 = phi i32 [ %52, %47 ], [ %57, %53 ], [ 5, %22 ]
  %61 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  %62 = getelementptr inbounds %struct.fimc_pix_limit, ptr %26, i32 0, i32 1
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  tail call void @v4l_bound_align_image(ptr noundef %7, i32 noundef 16, i32 noundef %39, i32 noundef %59, ptr noundef %61, i32 noundef 8, i32 noundef %64, i32 noundef %60, i32 noundef 0) #8
  %65 = load i32, ptr %7, align 1
  %66 = load i32, ptr %61, align 1
  tail call void @fimc_adjust_mplane_format(ptr noundef nonnull %15, i32 noundef %65, i32 noundef %66, ptr noundef %7) #8
  br label %67

67:                                               ; preds = %58, %18, %17, %2
  %68 = phi i32 [ -22, %17 ], [ 0, %58 ], [ -22, %2 ], [ -22, %18 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_alpha_ctrl_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_adjust_mplane_format(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_check_scaler_ratio(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimc_device_run(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.10) #8
  br label %66

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  tail call void @fimc_prepare_dma_offset(ptr noundef nonnull %0, ptr noundef nonnull %0) #8
  tail call void @fimc_prepare_dma_offset(ptr noundef nonnull %0, ptr noundef %9) #8
  br label %15

15:                                               ; preds = %14, %4
  %16 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 15, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %17, i32 0, i32 8
  %19 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %18) #8
  %20 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 10
  %21 = tail call i32 @fimc_prepare_addr(ptr noundef nonnull %0, ptr noundef %19, ptr noundef nonnull %0, ptr noundef %20) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %15
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %24, i32 0, i32 7
  %26 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %25) #8
  %27 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 10
  %28 = tail call i32 @fimc_prepare_addr(ptr noundef nonnull %0, ptr noundef %26, ptr noundef %9, ptr noundef %27) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.vb2_buffer, ptr %19, i32 0, i32 5
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds %struct.vb2_buffer, ptr %26, i32 0, i32 5
  store i64 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %26, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, -458753
  store i32 %36, ptr %34, align 8
  %37 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %19, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 458752
  %40 = or i32 %39, %36
  store i32 %40, ptr %34, align 8
  %41 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 12, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %47, label %44

44:                                               ; preds = %30
  %45 = load i32, ptr %10, align 4
  %46 = or i32 %45, 1
  store i32 %46, ptr %10, align 4
  store ptr %0, ptr %41, align 4
  br label %47

47:                                               ; preds = %44, %30
  %48 = load i32, ptr %10, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  tail call void @fimc_set_yuv_order(ptr noundef nonnull %0) #8
  tail call void @fimc_hw_set_input_path(ptr noundef nonnull %0) #8
  tail call void @fimc_hw_set_in_dma(ptr noundef nonnull %0) #8
  %52 = tail call i32 @fimc_set_scaler_info(ptr noundef nonnull %0) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  tail call void @fimc_hw_set_prescaler(ptr noundef nonnull %0) #8
  tail call void @fimc_hw_set_mainscaler(ptr noundef nonnull %0) #8
  tail call void @fimc_hw_set_target_format(ptr noundef nonnull %0) #8
  tail call void @fimc_hw_set_rotation(ptr noundef nonnull %0) #8
  tail call void @fimc_hw_set_effect(ptr noundef nonnull %0) #8
  tail call void @fimc_hw_set_out_dma(ptr noundef nonnull %0) #8
  %55 = getelementptr inbounds %struct.fimc_dev, ptr %6, i32 0, i32 6
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.fimc_drvdata, ptr %56, i32 0, i32 5
  %58 = load i8, ptr %57, align 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  tail call void @fimc_hw_set_rgb_alpha(ptr noundef nonnull %0) #8
  br label %61

61:                                               ; preds = %60, %54
  tail call void @fimc_hw_set_output_path(ptr noundef nonnull %0) #8
  br label %62

62:                                               ; preds = %61, %47
  tail call void @fimc_hw_set_input_addr(ptr noundef %6, ptr noundef %20) #8
  tail call void @fimc_hw_set_output_addr(ptr noundef %6, ptr noundef %27, i32 noundef -1) #8
  tail call void @fimc_activate_capture(ptr noundef nonnull %0) #8
  %63 = load i32, ptr %10, align 4
  %64 = and i32 %63, 196608
  store i32 %64, ptr %10, align 4
  tail call void @fimc_hw_activate_input_dma(ptr noundef %6, i1 noundef zeroext true) #8
  br label %65

65:                                               ; preds = %62, %51, %23, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  br label %66

66:                                               ; preds = %65, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimc_job_abort(ptr nocapture noundef %0) #0 {
  tail call fastcc void @fimc_m2m_shutdown(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_prepare_dma_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_prepare_addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_set_yuv_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_input_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_in_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_set_scaler_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_prescaler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_mainscaler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_target_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_rotation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_effect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_out_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_rgb_alpha(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_output_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_input_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_set_output_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_activate_capture(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_activate_input_dma(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 2148060074}
!10 = !{i64 559181, i64 2148049152, i64 2148049178, i64 2148049225, i64 2148049247, i64 2148049275, i64 2148049295}
!11 = !{i64 545750, i64 545775, i64 545797, i64 545813, i64 545825, i64 545845, i64 545869, i64 545885, i64 545897}
!12 = !{i64 2148060200}
!13 = !{!"auto-init"}
!14 = !{i16 0, i16 17}
!15 = !{i32 0, i32 33}
