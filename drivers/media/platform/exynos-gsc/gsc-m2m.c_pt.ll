; ModuleID = '/llk/IR/drivers/media/platform/exynos-gsc/gsc-m2m.c_pt.bc'
source_filename = "../drivers/media/platform/exynos-gsc/gsc-m2m.c"
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
%struct.gsc_ctx = type { %struct.gsc_frame, %struct.gsc_frame, i32, i32, %struct.gsc_scaler, i32, i32, i32, i8, ptr, ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.gsc_ctrls, i8, i32 }
%struct.gsc_frame = type { i32, i32, %struct.v4l2_rect, [8 x i32], %struct.gsc_addr, ptr, i32, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.gsc_addr = type { i32, i32, i32 }
%struct.gsc_scaler = type { i32, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.gsc_ctrls = type { ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.gsc_dev = type { %struct.spinlock, %struct.mutex, ptr, ptr, i16, i32, [4 x ptr], ptr, %struct.wait_queue_head, %struct.gsc_m2m_device, i32, %struct.video_device, %struct.v4l2_device }
%struct.gsc_m2m_device = type { ptr, ptr, ptr, i32 }
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
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.gsc_fmt = type { i32, i32, i32, i32, i32, i16, i16, [8 x i8], i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.81 }
%union.anon.81 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.83, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.83 = type { i8 }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.gsc_variant = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@gsc_m2m_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @gsc_m2m_poll, ptr @video_ioctl2, ptr null, ptr @gsc_m2m_mmap, ptr @gsc_m2m_open, ptr @gsc_m2m_release }, align 4
@gsc_m2m_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @gsc_m2m_querycap, ptr @gsc_m2m_enum_fmt, ptr null, ptr @gsc_m2m_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_m2m_g_fmt_mplane, ptr @gsc_m2m_g_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_m2m_s_fmt_mplane, ptr @gsc_m2m_s_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_m2m_try_fmt_mplane, ptr @gsc_m2m_try_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr @gsc_m2m_reqbufs, ptr @gsc_m2m_querybuf, ptr @gsc_m2m_qbuf, ptr @gsc_m2m_expbuf, ptr @gsc_m2m_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_m2m_streamon, ptr @gsc_m2m_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_m2m_g_selection, ptr @gsc_m2m_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s.%d:m2m\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"exynos-gsc\00", align 1
@gsc_m2m_ops = internal constant %struct.v4l2_m2m_ops { ptr @gsc_m2m_device_run, ptr null, ptr @gsc_m2m_job_abort }, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to initialize v4l2-m2m device\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s(): failed to register video device\0A\00", align 1
@__func__.gsc_register_m2m_device = private unnamed_addr constant [24 x i8] c"gsc_register_m2m_device\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.4 = private unnamed_addr constant [35 x i8] c"\013Failed to initialize m2m context\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gsc_m2m_qops = internal constant %struct.vb2_ops { ptr @gsc_m2m_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @gsc_m2m_buf_prepare, ptr null, ptr null, ptr @gsc_m2m_start_streaming, ptr @gsc_m2m_stop_streaming, ptr @gsc_m2m_buf_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"\013Wrong buffer/video queue type (%d)\00", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"exynos-gsc gscaler\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"\013queue (%d) busy\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"\013Out of scaler range\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"drivers/media/platform/exynos-gsc/gsc-m2m.c\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"null hardware context\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"\013Wrong address\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"\013Scaler setup error\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_m2m_job_finish(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  %10 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %9) #8
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %11, i32 0, i32 7
  %13 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %12) #8
  %14 = icmp ne ptr %10, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %35

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.vb2_buffer, ptr %10, i32 0, i32 5
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 5
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %13, i32 0, i32 3
  %22 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %10, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %21, ptr noundef align 8 dereferenceable(16) %22, i32 16, i1 false)
  %23 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %13, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -458753
  store i32 %25, ptr %23, align 8
  %26 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %10, i32 0, i32 1
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 458752
  %29 = or i32 %28, %25
  store i32 %29, ptr %23, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %10, i32 noundef %1) #8
  tail call void @vb2_buffer_done(ptr noundef nonnull %13, i32 noundef %1) #8
  %30 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.gsc_dev, ptr %31, i32 0, i32 9, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %5, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %33, ptr noundef %34) #8
  br label %35

35:                                               ; preds = %17, %8, %4, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gsc_register_m2m_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 11
  %7 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 11, i32 3
  store ptr @gsc_m2m_fops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 11, i32 24
  store ptr @gsc_m2m_ioctl_ops, ptr %8, align 4
  %9 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 11, i32 23
  store ptr @video_device_release_empty, ptr %9, align 8
  %10 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 11, i32 26
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 11, i32 14
  store i32 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 12
  %14 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 11, i32 7
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 11, i32 4
  store i32 67125248, ptr %15, align 8
  %16 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 11, i32 12
  %17 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = zext i16 %18 to i32
  %20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %19)
  %21 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 11, i32 5, i32 8
  store ptr %0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 9
  store ptr %6, ptr %22, align 8
  %23 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @gsc_m2m_ops) #8
  %24 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 9, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.2) #9
  %28 = load ptr, ptr %24, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %38

30:                                               ; preds = %3
  %31 = load ptr, ptr %7, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @__video_register_device(ptr noundef %6, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %32) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.gsc_register_m2m_device) #9
  %37 = load ptr, ptr %24, align 4
  tail call void @v4l2_m2m_release(ptr noundef %37) #8
  br label %38

38:                                               ; preds = %35, %30, %26, %1
  %39 = phi i32 [ %29, %26 ], [ %33, %35 ], [ -19, %1 ], [ 0, %30 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_unregister_m2m_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 9, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @v4l2_m2m_release(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.gsc_dev, ptr %0, i32 0, i32 11
  tail call void @video_unregister_device(ptr noundef %6) #8
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gsc_dev, ptr %6, i32 0, i32 1
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %4, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @v4l2_m2m_poll(ptr noundef %0, ptr noundef %12, ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %7) #8
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ 8, %2 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_mmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gsc_dev, ptr %6, i32 0, i32 1
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %4, i32 -4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @v4l2_m2m_mmap(ptr noundef %0, ptr noundef %12, ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %7) #8
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ -512, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_open(ptr noundef %0) #0 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 1
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 428) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gsc_ctx, ptr %10, i32 0, i32 11
  %14 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 9
  %15 = load ptr, ptr %14, align 8
  tail call void @v4l2_fh_init(ptr noundef %13, ptr noundef %15) #8
  %16 = tail call i32 @gsc_ctrls_create(ptr noundef nonnull %10) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.gsc_ctx, ptr %10, i32 0, i32 12
  %20 = getelementptr inbounds %struct.gsc_ctx, ptr %10, i32 0, i32 11, i32 2
  store ptr %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %13, ptr %21, align 8
  tail call void @v4l2_fh_add(ptr noundef %13) #8
  %22 = getelementptr inbounds %struct.gsc_ctx, ptr %10, i32 0, i32 9
  store ptr %4, ptr %22, align 4
  %23 = tail call ptr @get_format(i32 noundef 0) #8
  %24 = getelementptr inbounds %struct.gsc_frame, ptr %10, i32 0, i32 5
  store ptr %23, ptr %24, align 4
  %25 = tail call ptr @get_format(i32 noundef 0) #8
  %26 = getelementptr inbounds %struct.gsc_ctx, ptr %10, i32 0, i32 1, i32 5
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.gsc_ctx, ptr %10, i32 0, i32 6
  store i32 8, ptr %27, align 8
  %28 = getelementptr inbounds %struct.gsc_ctx, ptr %10, i32 0, i32 5
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gsc_ctx, ptr %10, i32 0, i32 2
  store i32 2, ptr %29, align 8
  %30 = getelementptr inbounds %struct.gsc_ctx, ptr %10, i32 0, i32 3
  store i32 2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 9, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %32, ptr noundef nonnull %10, ptr noundef nonnull @queue_init) #8
  %34 = getelementptr inbounds %struct.gsc_ctx, ptr %10, i32 0, i32 10
  store ptr %33, ptr %34, align 8
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %40

36:                                               ; preds = %18
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  %38 = load ptr, ptr %34, align 8
  %39 = ptrtoint ptr %38 to i32
  tail call void @gsc_ctrls_delete(ptr noundef nonnull %10) #8
  tail call void @v4l2_fh_del(ptr noundef %13) #8
  br label %47

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 9, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %46) #8
  br label %49

47:                                               ; preds = %36, %12
  %48 = phi i32 [ %16, %12 ], [ %39, %36 ]
  tail call void @v4l2_fh_exit(ptr noundef %13) #8
  tail call void @kfree(ptr noundef nonnull %10) #8
  br label %49

49:                                               ; preds = %47, %45, %40, %8
  %50 = phi i32 [ 0, %45 ], [ 0, %40 ], [ %48, %47 ], [ -12, %8 ]
  tail call void @mutex_unlock(ptr noundef %5) #8
  br label %51

51:                                               ; preds = %49, %1
  %52 = phi i32 [ -512, %1 ], [ %50, %49 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -212
  %5 = getelementptr i8, ptr %3, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gsc_dev, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #8
  %8 = getelementptr i8, ptr %3, i32 -4
  %9 = load ptr, ptr %8, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %9) #8
  tail call void @gsc_ctrls_delete(ptr noundef %4) #8
  tail call void @v4l2_fh_del(ptr noundef %3) #8
  tail call void @v4l2_fh_exit(ptr noundef %3) #8
  %10 = getelementptr inbounds %struct.gsc_dev, ptr %6, i32 0, i32 9, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.gsc_dev, ptr %6, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %15) #8
  br label %16

16:                                               ; preds = %14, %1
  tail call void @kfree(ptr noundef %4) #8
  tail call void @mutex_unlock(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_mmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_ctrls_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_format(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds i8, ptr %1, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(340) %4, i8 0, i32 332, i1 false)
  store i32 10, ptr %1, align 4
  %5 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 1
  store i32 19, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 7
  store ptr @gsc_m2m_qops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 12
  store i32 648, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 13
  store i32 16384, ptr %10, align 4
  %11 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gsc_dev, ptr %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 5
  store ptr %13, ptr %14, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr inbounds %struct.gsc_dev, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = tail call i32 @vb2_queue_init(ptr noundef %1) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %3
  %23 = getelementptr inbounds i8, ptr %2, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(340) %23, i8 0, i32 332, i1 false)
  store i32 9, ptr %2, align 4
  %24 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 1
  store i32 19, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 7
  store ptr @gsc_m2m_qops, ptr %26, align 4
  %27 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %27, align 4
  %28 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 12
  store i32 648, ptr %28, align 4
  %29 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 13
  store i32 16384, ptr %29, align 4
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr inbounds %struct.gsc_dev, ptr %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 5
  store ptr %31, ptr %32, align 4
  %33 = load ptr, ptr %11, align 4
  %34 = getelementptr inbounds %struct.gsc_dev, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = tail call i32 @vb2_queue_init(ptr noundef %2) #8
  br label %39

39:                                               ; preds = %22, %3
  %40 = phi i32 [ %38, %22 ], [ %20, %3 ]
  ret i32 %40
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_ctrls_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  switch i32 %8, label %11 [
    i32 10, label %13
    i32 9, label %9
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gsc_ctx, ptr %7, i32 0, i32 1
  br label %13

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %8) #9
  br label %16

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %10, %9 ], [ %7, %5 ]
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %11
  %17 = phi ptr [ inttoptr (i32 -22 to ptr), %11 ], [ %14, %13 ]
  %18 = ptrtoint ptr %17 to i32
  br label %42

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.gsc_frame, ptr %14, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gsc_fmt, ptr %21, i32 0, i32 5
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  store i32 %26, ptr %2, align 4
  %27 = load ptr, ptr %20, align 4
  %28 = getelementptr inbounds %struct.gsc_fmt, ptr %27, i32 0, i32 5
  %29 = load i16, ptr %28, align 4
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %31, %23
  %32 = phi i32 [ %36, %31 ], [ 0, %23 ]
  %33 = getelementptr %struct.gsc_frame, ptr %14, i32 0, i32 3, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i32, ptr %3, i32 %32
  store i32 %34, ptr %35, align 4
  %36 = add nuw nsw i32 %32, 1
  %37 = load ptr, ptr %20, align 4
  %38 = getelementptr inbounds %struct.gsc_fmt, ptr %37, i32 0, i32 5
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = icmp ult i32 %36, %40
  br i1 %41, label %31, label %42

42:                                               ; preds = %31, %23, %19, %16
  %43 = phi i32 [ %18, %16 ], [ -22, %19 ], [ 0, %23 ], [ 0, %31 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_buf_prepare(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %8 [
    i32 10, label %10
    i32 9, label %6
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gsc_ctx, ptr %4, i32 0, i32 1
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %5) #9
  br label %13

10:                                               ; preds = %6, %1
  %11 = phi ptr [ %7, %6 ], [ %4, %1 ]
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %8
  %14 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %11, %10 ]
  %15 = ptrtoint ptr %14 to i32
  br label %55

16:                                               ; preds = %10
  %17 = icmp eq i32 %5, 10
  br i1 %17, label %55, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.gsc_frame, ptr %11, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.gsc_fmt, ptr %20, i32 0, i32 5
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  br label %26

26:                                               ; preds = %48, %24
  %27 = phi ptr [ %20, %24 ], [ %49, %48 ]
  %28 = phi i32 [ 0, %24 ], [ %50, %48 ]
  %29 = getelementptr %struct.gsc_frame, ptr %11, i32 0, i32 3, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %25, align 8
  %32 = icmp ugt i32 %31, %28
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %28, i32 4
  %35 = load i32, ptr %34, align 8
  %36 = icmp ult i32 %35, %30
  %37 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !8

40:                                               ; preds = %33
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %41

41:                                               ; preds = %40, %33
  br i1 %36, label %42, label %44

42:                                               ; preds = %41
  %43 = load i32, ptr %34, align 8
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i32 [ %43, %42 ], [ %30, %41 ]
  %46 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %28, i32 3
  store i32 %45, ptr %46, align 4
  %47 = load ptr, ptr %19, align 4
  br label %48

48:                                               ; preds = %44, %26
  %49 = phi ptr [ %27, %26 ], [ %47, %44 ]
  %50 = add nuw nsw i32 %28, 1
  %51 = getelementptr inbounds %struct.gsc_fmt, ptr %49, i32 0, i32 5
  %52 = load i16, ptr %51, align 4
  %53 = zext i16 %52 to i32
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %26, label %55

55:                                               ; preds = %48, %18, %16, %13
  %56 = phi i32 [ %15, %13 ], [ 0, %16 ], [ 0, %18 ], [ 0, %48 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gsc_ctx, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gsc_dev, ptr %6, i32 0, i32 2
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
define internal void @gsc_m2m_stop_streaming(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @__gsc_m2m_job_abort(ptr noundef %3)
  %4 = getelementptr inbounds %struct.gsc_ctx, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 8, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %14, %1
  %10 = phi ptr [ %5, %1 ], [ %18, %14 ]
  %11 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 7, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %30, label %22

14:                                               ; preds = %14, %1
  %15 = phi ptr [ %18, %14 ], [ %5, %1 ]
  %16 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %15, i32 0, i32 8
  %17 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %16) #8
  tail call void @vb2_buffer_done(ptr noundef %17, i32 noundef 6) #8
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 8, i32 3
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %9, label %14

22:                                               ; preds = %22, %9
  %23 = phi ptr [ %26, %22 ], [ %10, %9 ]
  %24 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %23, i32 0, i32 7
  %25 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %24) #8
  tail call void @vb2_buffer_done(ptr noundef %25, i32 noundef 6) #8
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %26, i32 0, i32 7, i32 3
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %22

30:                                               ; preds = %22, %9
  %31 = getelementptr inbounds %struct.gsc_ctx, ptr %3, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.gsc_dev, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %36 = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gsc_m2m_buf_queue(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gsc_ctx, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @v4l2_m2m_buf_queue(ptr noundef nonnull %6, ptr noundef %0) #8
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__gsc_m2m_job_abort(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 9, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 10
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp ne i32 %10, 0
  %12 = icmp eq ptr %7, %0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %47

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #8
  %17 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 64
  store i32 %19, ptr %17, align 4
  %20 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %16) #8
  %21 = load ptr, ptr %3, align 4
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #8
  %23 = load i32, ptr %17, align 4
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %22) #8
  br i1 %25, label %47, label %27

27:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #8, !annotation !13
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #8
  %28 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 8
  br label %29

29:                                               ; preds = %44, %27
  %30 = phi i32 [ 10, %27 ], [ %45, %44 ]
  %31 = call i32 @prepare_to_wait_event(ptr noundef %28, ptr noundef nonnull %2, i32 noundef 2) #8
  %32 = load ptr, ptr %3, align 4
  %33 = call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #8
  %34 = load i32, ptr %17, align 4
  %35 = and i32 %34, 64
  %36 = icmp ne i32 %35, 0
  %37 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %33) #8
  %38 = xor i1 %36, true
  %39 = icmp ne i32 %30, 0
  %40 = select i1 %36, i1 true, i1 %39
  %41 = select i1 %40, i32 %30, i32 1
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %38, i1 true, i1 %42
  br i1 %43, label %46, label %44

44:                                               ; preds = %29
  %45 = call i32 @schedule_timeout(i32 noundef %41) #8
  br label %29

46:                                               ; preds = %29
  call void @finish_wait(ptr noundef %28, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  switch i32 %41, label %47 [
    i32 -110, label %52
    i32 0, label %52
  ]

47:                                               ; preds = %46, %14, %1
  %48 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47, %46, %46
  %53 = load ptr, ptr %3, align 4
  %54 = call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #8
  %55 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, -193
  store i32 %57, ptr %55, align 4
  %58 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %54) #8
  call void @gsc_m2m_job_finish(ptr noundef %0, i32 noundef 6)
  br label %59

59:                                               ; preds = %52, %47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_querycap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 16) #8
  %7 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %8 = tail call i32 @strscpy(ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef 32) #8
  %9 = getelementptr inbounds %struct.gsc_dev, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi ptr [ %16, %14 ], [ %12, %3 ]
  %19 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef %18)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_enum_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @gsc_enum_fmt(ptr noundef %2) #8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_g_fmt_mplane(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -212
  %5 = tail call i32 @gsc_g_fmt_mplane(ptr noundef %4, ptr noundef %2) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_s_fmt_mplane(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -212
  %5 = tail call i32 @gsc_try_fmt_mplane(ptr noundef %4, ptr noundef %2) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %2, align 4
  %11 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %9, i32 noundef %10) #8
  %12 = getelementptr inbounds %struct.vb2_queue, ptr %11, i32 0, i32 28
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  %16 = load i32, ptr %2, align 4
  br i1 %15, label %19, label %17

17:                                               ; preds = %7
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %16) #9
  br label %64

19:                                               ; preds = %7
  switch i32 %16, label %20 [
    i32 2, label %22
    i32 10, label %22
    i32 3, label %22
    i32 8, label %22
    i32 5, label %22
    i32 7, label %22
    i32 12, label %22
    i32 14, label %22
  ]

20:                                               ; preds = %19
  %21 = getelementptr i8, ptr %1, i32 -132
  br label %22

22:                                               ; preds = %20, %19, %19, %19, %19, %19, %19, %19, %19
  %23 = phi ptr [ %21, %20 ], [ %4, %19 ], [ %4, %19 ], [ %4, %19 ], [ %4, %19 ], [ %4, %19 ], [ %4, %19 ], [ %4, %19 ], [ %4, %19 ]
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %26 = tail call ptr @find_fmt(ptr noundef %25, ptr noundef null, i32 noundef 0) #8
  %27 = getelementptr inbounds %struct.gsc_frame, ptr %23, i32 0, i32 5
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  %29 = load i32, ptr %28, align 1
  %30 = getelementptr inbounds %struct.gsc_frame, ptr %23, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  %31 = icmp eq ptr %26, null
  br i1 %31, label %64, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.gsc_fmt, ptr %26, i32 0, i32 5
  %34 = load i16, ptr %33, align 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %36, %32
  %37 = phi i32 [ %41, %36 ], [ 0, %32 ]
  %38 = getelementptr %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 %37
  %39 = load i32, ptr %38, align 1
  %40 = getelementptr %struct.gsc_frame, ptr %23, i32 0, i32 3, i32 %37
  store i32 %39, ptr %40, align 4
  %41 = add nuw nsw i32 %37, 1
  %42 = load ptr, ptr %27, align 4
  %43 = getelementptr inbounds %struct.gsc_fmt, ptr %42, i32 0, i32 5
  %44 = load i16, ptr %43, align 4
  %45 = zext i16 %44 to i32
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %36, label %47

47:                                               ; preds = %36, %32
  %48 = load i32, ptr %24, align 1
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %50 = load i32, ptr %49, align 1
  tail call void @gsc_set_frame_size(ptr noundef %23, i32 noundef %48, i32 noundef %50) #8
  %51 = load i32, ptr %2, align 4
  %52 = icmp eq i32 %51, 9
  %53 = getelementptr i8, ptr %1, i32 -8
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #8
  %56 = getelementptr i8, ptr %1, i32 -20
  %57 = load i32, ptr %56, align 4
  br i1 %52, label %58, label %61

58:                                               ; preds = %47
  %59 = or i32 %57, 5
  store i32 %59, ptr %56, align 4
  %60 = load ptr, ptr %53, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %55) #8
  br label %64

61:                                               ; preds = %47
  %62 = or i32 %57, 3
  store i32 %62, ptr %56, align 4
  %63 = load ptr, ptr %53, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %63, i32 noundef %55) #8
  br label %64

64:                                               ; preds = %61, %58, %22, %17, %3
  %65 = phi i32 [ -16, %17 ], [ %5, %3 ], [ -22, %22 ], [ 0, %61 ], [ 0, %58 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_try_fmt_mplane(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -212
  %5 = tail call i32 @gsc_try_fmt_mplane(ptr noundef %4, ptr noundef %2) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_reqbufs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_requestbuffers, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 10
  %9 = getelementptr inbounds %struct.gsc_dev, ptr %5, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.gsc_variant, ptr %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.gsc_variant, ptr %10, i32 0, i32 4
  %13 = select i1 %8, ptr %11, ptr %12
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = load i32, ptr %2, align 4
  %17 = icmp ugt i32 %16, %15
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = getelementptr i8, ptr %1, i32 -4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @v4l2_m2m_reqbufs(ptr noundef %0, ptr noundef %20, ptr noundef %2) #8
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i32 [ %21, %18 ], [ -22, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_querybuf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @v4l2_m2m_querybuf(ptr noundef %0, ptr noundef %5, ptr noundef %2) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_qbuf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @v4l2_m2m_qbuf(ptr noundef %0, ptr noundef %5, ptr noundef %2) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_expbuf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @v4l2_m2m_expbuf(ptr noundef %0, ptr noundef %5, ptr noundef %2) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_dqbuf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @v4l2_m2m_dqbuf(ptr noundef %0, ptr noundef %5, ptr noundef %2) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_streamon(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  switch i32 %2, label %13 [
    i32 14, label %4
    i32 12, label %4
    i32 10, label %4
    i32 8, label %4
    i32 7, label %4
    i32 5, label %4
    i32 3, label %4
    i32 2, label %4
  ]

4:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %5 = getelementptr i8, ptr %1, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr i8, ptr %1, i32 -20
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %7) #8
  br i1 %11, label %26, label %22

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %1, i32 -8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #8
  %17 = getelementptr i8, ptr %1, i32 -20
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  %21 = load ptr, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %16) #8
  br i1 %20, label %26, label %22

22:                                               ; preds = %13, %4
  %23 = getelementptr i8, ptr %1, i32 -4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @v4l2_m2m_streamon(ptr noundef %0, ptr noundef %24, i32 noundef %2) #8
  br label %26

26:                                               ; preds = %22, %13, %4
  %27 = phi i32 [ %25, %22 ], [ -22, %4 ], [ -22, %13 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_streamoff(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %1, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @v4l2_m2m_streamoff(ptr noundef %0, ptr noundef %5, i32 noundef %2) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_g_selection(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = add i32 %4, -1
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %4) #9
  br label %9

9:                                                ; preds = %7, %3
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_m2m_s_selection(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.v4l2_selection, align 4
  %5 = getelementptr i8, ptr %1, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gsc_dev, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef align 4 dereferenceable(64) %2, i32 64, i1 false)
  %9 = load i32, ptr %2, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %143

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %1, i32 -212
  %14 = call i32 @gsc_try_selection(ptr noundef %13, ptr noundef nonnull %4) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %143

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3
  %23 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %24 = load i32, ptr %22, align 4
  %25 = load i32, ptr %23, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %143, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %143, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %24
  %37 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, %25
  %40 = icmp ugt i32 %36, %39
  br i1 %40, label %143, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %29
  %45 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %31
  %48 = icmp ugt i32 %44, %47
  br i1 %48, label %143, label %49

49:                                               ; preds = %41, %16
  %50 = and i32 %18, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %80, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %54 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3
  %55 = load i32, ptr %53, align 4
  %56 = load i32, ptr %54, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %143, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %143, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, %55
  %68 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %56
  %71 = icmp ugt i32 %67, %70
  br i1 %71, label %143, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, %60
  %76 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, %62
  %79 = icmp ugt i32 %75, %78
  br i1 %79, label %143, label %80

80:                                               ; preds = %72, %49
  %81 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %82 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %81, ptr noundef align 4 dereferenceable(16) %82, i32 16, i1 false)
  %83 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  switch i32 %84, label %143 [
    i32 258, label %86
    i32 257, label %86
    i32 256, label %86
    i32 2, label %85
    i32 0, label %85
    i32 1, label %85
  ]

85:                                               ; preds = %80, %80, %80
  br label %86

86:                                               ; preds = %85, %80, %80, %80
  %87 = phi i32 [ -132, %85 ], [ -212, %80 ], [ -212, %80 ], [ -212, %80 ]
  %88 = load ptr, ptr %5, align 4
  %89 = call i32 @_raw_spin_lock_irqsave(ptr noundef %88) #8
  %90 = getelementptr i8, ptr %1, i32 -20
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 6
  %93 = icmp eq i32 %92, 6
  %94 = load ptr, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %94, i32 noundef %89) #8
  br i1 %93, label %95, label %135

95:                                               ; preds = %86
  %96 = load i32, ptr %2, align 4
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr i8, ptr %1, i32 -116
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr i8, ptr %1, i32 -112
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i8, ptr %1, i32 192
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.v4l2_ctrl, ptr %108, i32 0, i32 22
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr i8, ptr %1, i32 -48
  %112 = load i32, ptr %111, align 4
  %113 = call i32 @gsc_check_scaler_ratio(ptr noundef %8, i32 noundef %100, i32 noundef %102, i32 noundef %104, i32 noundef %106, i32 noundef %110, i32 noundef %112) #8
  br label %130

114:                                              ; preds = %95
  %115 = getelementptr i8, ptr %1, i32 -196
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr i8, ptr %1, i32 -192
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.v4l2_selection, ptr %4, i32 0, i32 3, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr i8, ptr %1, i32 192
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.v4l2_ctrl, ptr %124, i32 0, i32 22
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr i8, ptr %1, i32 -48
  %128 = load i32, ptr %127, align 4
  %129 = call i32 @gsc_check_scaler_ratio(ptr noundef %8, i32 noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef %122, i32 noundef %126, i32 noundef %128) #8
  br label %130

130:                                              ; preds = %114, %98
  %131 = phi i32 [ %113, %98 ], [ %129, %114 ]
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %143

135:                                              ; preds = %130, %86
  %136 = getelementptr i8, ptr %1, i32 %87
  %137 = getelementptr inbounds %struct.gsc_frame, ptr %136, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %137, ptr noundef align 4 dereferenceable(16) %82, i32 16, i1 false)
  %138 = load ptr, ptr %5, align 4
  %139 = call i32 @_raw_spin_lock_irqsave(ptr noundef %138) #8
  %140 = load i32, ptr %90, align 4
  %141 = or i32 %140, 1
  store i32 %141, ptr %90, align 4
  %142 = load ptr, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %142, i32 noundef %139) #8
  br label %143

143:                                              ; preds = %135, %133, %80, %72, %64, %58, %52, %41, %33, %27, %21, %12, %3
  %144 = phi i32 [ -22, %133 ], [ 0, %135 ], [ -22, %3 ], [ %14, %12 ], [ -34, %41 ], [ -34, %72 ], [ -22, %80 ], [ -34, %27 ], [ -34, %21 ], [ -34, %33 ], [ -34, %58 ], [ -34, %52 ], [ -34, %64 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  ret i32 %144
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_enum_fmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_g_fmt_mplane(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_fmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_set_frame_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_try_fmt_mplane(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_reqbufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_querybuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_expbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_dqbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_streamoff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_try_selection(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_check_scaler_ratio(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gsc_m2m_device_run(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !8

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 152, i32 noundef 9, ptr noundef nonnull @.str.12) #8
  br label %67

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.gsc_dev, ptr %6, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.gsc_dev, ptr %6, i32 0, i32 9, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 1
  store i32 %15, ptr %13, align 4
  store ptr %0, ptr %9, align 8
  br label %16

16:                                               ; preds = %12, %4
  %17 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = and i32 %18, -193
  %23 = or i32 %22, 128
  store i32 %23, ptr %17, align 4
  %24 = getelementptr inbounds %struct.gsc_dev, ptr %6, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %24, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %64

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %27, i32 0, i32 8
  %29 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %28) #8
  %30 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 4
  %31 = tail call i32 @gsc_prepare_addr(ptr noundef nonnull %0, ptr noundef %29, ptr noundef nonnull %0, ptr noundef %30) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %26, align 4
  %36 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %35, i32 0, i32 7
  %37 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %36) #8
  %38 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 4
  %39 = tail call i32 @gsc_prepare_addr(ptr noundef nonnull %0, ptr noundef %37, ptr noundef %34, ptr noundef %38) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %33, %25
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %64

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.vb2_buffer, ptr %29, i32 0, i32 5
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds %struct.vb2_buffer, ptr %37, i32 0, i32 5
  store i64 %45, ptr %46, align 8
  tail call void @gsc_set_prefbuf(ptr noundef %6, ptr noundef nonnull %0) #8
  tail call void @gsc_hw_set_input_addr(ptr noundef %6, ptr noundef %30, i32 noundef 0) #8
  tail call void @gsc_hw_set_output_addr(ptr noundef %6, ptr noundef %38, i32 noundef 0) #8
  %47 = load i32, ptr %17, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  tail call void @gsc_hw_set_input_buf_masking(ptr noundef %6, i32 noundef 0, i1 noundef zeroext false) #8
  tail call void @gsc_hw_set_output_buf_masking(ptr noundef %6, i32 noundef 0, i1 noundef zeroext false) #8
  tail call void @gsc_hw_set_frm_done_irq_mask(ptr noundef %6, i1 noundef zeroext false) #8
  tail call void @gsc_hw_set_gsc_irq_enable(ptr noundef %6, i1 noundef zeroext true) #8
  %51 = tail call i32 @gsc_set_scaler_info(ptr noundef nonnull %0) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #9
  br label %64

55:                                               ; preds = %50
  tail call void @gsc_hw_set_input_path(ptr noundef nonnull %0) #8
  tail call void @gsc_hw_set_in_size(ptr noundef nonnull %0) #8
  tail call void @gsc_hw_set_in_image_format(ptr noundef nonnull %0) #8
  tail call void @gsc_hw_set_output_path(ptr noundef nonnull %0) #8
  tail call void @gsc_hw_set_out_size(ptr noundef nonnull %0) #8
  tail call void @gsc_hw_set_out_image_format(ptr noundef nonnull %0) #8
  tail call void @gsc_hw_set_prescaler(ptr noundef nonnull %0) #8
  tail call void @gsc_hw_set_mainscaler(ptr noundef nonnull %0) #8
  tail call void @gsc_hw_set_rotation(ptr noundef nonnull %0) #8
  tail call void @gsc_hw_set_global_alpha(ptr noundef nonnull %0) #8
  br label %56

56:                                               ; preds = %55, %43
  tail call void @gsc_hw_set_sfr_update(ptr noundef nonnull %0) #8
  %57 = load i32, ptr %17, align 4
  %58 = and i32 %57, -2
  store i32 %58, ptr %17, align 4
  %59 = getelementptr inbounds %struct.gsc_dev, ptr %6, i32 0, i32 7
  %60 = load ptr, ptr %59, align 8
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %60) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %62 = or i32 %61, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %63 = load ptr, ptr %59, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %62) #8, !srcloc !17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  br label %67

64:                                               ; preds = %53, %41, %21
  %65 = load i32, ptr %17, align 4
  %66 = and i32 %65, -2
  store i32 %66, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  br label %67

67:                                               ; preds = %64, %56, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gsc_m2m_job_abort(ptr noundef %0) #0 {
  tail call fastcc void @__gsc_m2m_job_abort(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_set_prefbuf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_input_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_output_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_input_buf_masking(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_output_buf_masking(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_frm_done_irq_mask(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_gsc_irq_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_set_scaler_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_input_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_in_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_in_image_format(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_output_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_out_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_out_image_format(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_prescaler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_mainscaler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_rotation(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_global_alpha(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_sfr_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_prepare_addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i64 2148060165}
!10 = !{i64 559272, i64 2148049243, i64 2148049269, i64 2148049316, i64 2148049338, i64 2148049366, i64 2148049386}
!11 = !{i64 545841, i64 545866, i64 545888, i64 545904, i64 545916, i64 545936, i64 545960, i64 545976, i64 545988}
!12 = !{i64 2148060291}
!13 = !{!"auto-init"}
!14 = !{i64 3476071}
!15 = !{i64 2155048359}
!16 = !{i64 2155048566}
!17 = !{i64 3475653}
