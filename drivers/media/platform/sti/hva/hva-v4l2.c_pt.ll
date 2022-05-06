; ModuleID = '/llk/IR/drivers/media/platform/sti/hva/hva-v4l2.c_pt.bc'
source_filename = "../drivers/media/platform/sti/hva/hva-v4l2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.hva_enc = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hva_dev = type { %struct.v4l2_device, ptr, ptr, ptr, %struct.mutex, ptr, [16 x ptr], i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, %struct.mutex, %struct.completion, i32, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.hva_ctx = type { ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.hva_controls, i8, i8, [100 x i8], %struct.work_struct, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hva_streaminfo, %struct.hva_frameinfo, ptr, ptr, i8, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.hva_controls = type { %struct.v4l2_fract, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i8, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.hva_streaminfo = type { i32, i32, i32, [32 x i8], [32 x i8] }
%struct.hva_frameinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.81, i32 }
%union.anon.81 = type { i32 }
%struct.hva_stream = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, ptr, i8, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.76, %union.anon.77, i32, ptr, i32, %struct.anon.78, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.76 = type { i64 }
%union.anon.77 = type { ptr }
%struct.anon.78 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.hva_frame = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.hva_frameinfo, i32, ptr, i8 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.82 }
%union.anon.82 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.84, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.84 = type { i8 }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.85, i32, i32, %union.anon.87 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%union.anon.85 = type { i32 }
%union.anon.87 = type { i32 }
%struct.v4l2_streamparm = type { i32, %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }

@hva_match_types = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st-hva\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license257 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [46 x i8] c"author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description259 = internal constant [61 x i8] c"description=STMicroelectronics HVA video encoder V4L2 driver\00", section ".modinfo", align 1
@hva_driver = internal global %struct.platform_driver { ptr @hva_probe, ptr @hva_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hva_match_types, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hva_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [7 x i8] c"st-hva\00", align 1
@hva_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hva_hw_runtime_suspend, ptr @hva_hw_runtime_resume, ptr null }, align 4
@hva_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&hva->lock\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s %s failed to register V4L2 device\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"[---:----]\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s %s failed to allocate work queue\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%s %s registered as /dev/video%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%s %s encoder registered\0A\00", align 1
@nv12h264enc = external dso_local constant %struct.hva_enc, align 4
@nv21h264enc = external dso_local constant %struct.hva_enc, align 4
@hva_m2m_ops = internal constant %struct.v4l2_m2m_ops { ptr @hva_device_run, ptr @hva_job_ready, ptr @hva_job_abort }, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"%s failed to initialize v4l2-m2m device\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%s failed to allocate video device\0A\00", align 1
@hva_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @hva_open, ptr @hva_release }, align 4
@hva_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @hva_querycap, ptr @hva_enum_fmt_stream, ptr null, ptr @hva_enum_fmt_frame, ptr null, ptr null, ptr null, ptr null, ptr @hva_g_fmt_stream, ptr null, ptr @hva_g_fmt_frame, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hva_s_fmt_stream, ptr null, ptr @hva_s_fmt_frame, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hva_try_fmt_stream, ptr null, ptr @hva_try_fmt_frame, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @hva_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hva_g_parm, ptr @hva_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"%s%lx\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s failed to register video device\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%s [x:x] failed to setup controls\0A\00", align 1
@hva_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"&ctx->lock\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"%s failed to initialize m2m context (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"[%3d:----]\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"%s encoder instance created\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@hva_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @hva_s_ctrl }, align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"%s profile\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"level %s\00", align 1
@hva_qops = internal constant %struct.vb2_ops { ptr @hva_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @hva_buf_prepare, ptr null, ptr null, ptr @hva_start_streaming, ptr @hva_stop_streaming, ptr @hva_buf_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.20 = private unnamed_addr constant [30 x i8] c"%s maximum instances reached\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"%s no encoder found matching %4.4s => %4.4s\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"[%3d:%4.4s]\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"%s failed to open encoder instance (%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"%s encoder instance released\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"%s %s removed\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_license257], section "llvm.metadata"

@__mod_of__hva_match_types_device_table = dso_local alias [2 x %struct.of_device_id], ptr @hva_match_types

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hva_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @hva_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 416, i32 noundef 3520) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %139, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %6, ptr %7, align 4
  %8 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef 4294967295) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %139

10:                                               ; preds = %5
  %11 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef 4294967295) #11
  %12 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 2
  store ptr %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %14, align 8
  %15 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @hva_probe.__key) #11
  %16 = tail call i32 @hva_hw_probe(ptr noundef %0, ptr noundef nonnull %3) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %139

18:                                               ; preds = %10
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 20
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 9
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = add nuw nsw i32 %21, 1
  store i32 %24, ptr %20, align 4
  %25 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 19, i32 %21
  store ptr @nv12h264enc, ptr %25, align 4
  %26 = load ptr, ptr @nv12h264enc, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef %26) #12
  %27 = load i32, ptr %20, align 4
  %28 = icmp ugt i32 %27, 9
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = add nuw nsw i32 %27, 1
  store i32 %30, ptr %20, align 4
  %31 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 19, i32 %27
  store ptr @nv21h264enc, ptr %31, align 4
  %32 = load ptr, ptr @nv21h264enc, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef %32) #12
  %33 = load i32, ptr %20, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %81, label %35

35:                                               ; preds = %29, %23, %18
  %36 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 21
  %37 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 22
  %38 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 23
  %39 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 24
  br label %40

40:                                               ; preds = %77, %35
  %41 = phi i32 [ 0, %35 ], [ %78, %77 ]
  %42 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 19, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.hva_enc, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %37, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %51

48:                                               ; preds = %51
  %49 = add nuw i32 %52, 1
  %50 = icmp eq i32 %49, %46
  br i1 %50, label %56, label %51

51:                                               ; preds = %48, %40
  %52 = phi i32 [ %49, %48 ], [ 0, %40 ]
  %53 = getelementptr i32, ptr %36, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %45
  br i1 %55, label %60, label %48

56:                                               ; preds = %48, %40
  %57 = add i32 %46, 1
  store i32 %57, ptr %37, align 4
  %58 = getelementptr i32, ptr %36, i32 %46
  store i32 %45, ptr %58, align 4
  %59 = load ptr, ptr %42, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi ptr [ %59, %56 ], [ %43, %51 ]
  %62 = getelementptr inbounds %struct.hva_enc, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = load i32, ptr %39, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %74, label %69

66:                                               ; preds = %69
  %67 = add nuw i32 %70, 1
  %68 = icmp eq i32 %67, %64
  br i1 %68, label %74, label %69

69:                                               ; preds = %66, %60
  %70 = phi i32 [ %67, %66 ], [ 0, %60 ]
  %71 = getelementptr i32, ptr %38, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, %63
  br i1 %73, label %77, label %66

74:                                               ; preds = %66, %60
  %75 = add i32 %64, 1
  store i32 %75, ptr %39, align 4
  %76 = getelementptr i32, ptr %38, i32 %64
  store i32 %63, ptr %76, align 4
  br label %77

77:                                               ; preds = %74, %69
  %78 = add nuw i32 %41, 1
  %79 = load i32, ptr %20, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %40, label %81

81:                                               ; preds = %77, %29
  %82 = tail call i32 @v4l2_device_register(ptr noundef %2, ptr noundef nonnull %3) #11
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str) #12
  br label %137

85:                                               ; preds = %81
  %86 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str) #11
  %87 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 15
  store ptr %86, ptr %87, align 4
  %88 = icmp eq ptr %86, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str) #12
  br label %135

90:                                               ; preds = %85
  %91 = load ptr, ptr %12, align 4
  %92 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @hva_m2m_ops) #11
  %93 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 5
  store ptr %92, ptr %93, align 4
  %94 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %122, label %95

95:                                               ; preds = %90
  %96 = tail call ptr @video_device_alloc() #11
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3) #12
  br label %119

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.video_device, ptr %96, i32 0, i32 3
  store ptr @hva_fops, ptr %100, align 4
  %101 = getelementptr inbounds %struct.video_device, ptr %96, i32 0, i32 24
  store ptr @hva_ioctl_ops, ptr %101, align 4
  %102 = getelementptr inbounds %struct.video_device, ptr %96, i32 0, i32 23
  store ptr @video_device_release, ptr %102, align 8
  %103 = getelementptr inbounds %struct.video_device, ptr %96, i32 0, i32 26
  store ptr %15, ptr %103, align 8
  %104 = getelementptr inbounds %struct.video_device, ptr %96, i32 0, i32 14
  store i32 2, ptr %104, align 4
  %105 = getelementptr inbounds %struct.video_device, ptr %96, i32 0, i32 4
  store i32 67141632, ptr %105, align 8
  %106 = getelementptr inbounds %struct.video_device, ptr %96, i32 0, i32 7
  store ptr %3, ptr %106, align 4
  %107 = getelementptr inbounds %struct.video_device, ptr %96, i32 0, i32 12
  %108 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 18
  %109 = load i32, ptr %108, align 4
  %110 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %107, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, i32 noundef %109) #11
  %111 = load ptr, ptr %100, align 4
  %112 = load ptr, ptr %111, align 4
  %113 = tail call i32 @__video_register_device(ptr noundef nonnull %96, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %112) #11
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %99
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3) #12
  tail call void @video_device_release(ptr noundef nonnull %96) #11
  br label %119

116:                                              ; preds = %99
  %117 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 1
  store ptr %96, ptr %117, align 4
  %118 = getelementptr inbounds %struct.video_device, ptr %96, i32 0, i32 5, i32 8
  store ptr %3, ptr %118, align 8
  br label %126

119:                                              ; preds = %115, %98
  %120 = phi i32 [ %113, %115 ], [ -12, %98 ]
  %121 = load ptr, ptr %93, align 4
  tail call void @v4l2_m2m_release(ptr noundef %121) #11
  br label %132

122:                                              ; preds = %90
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3) #12
  %123 = load ptr, ptr %93, align 4
  %124 = ptrtoint ptr %123 to i32
  %125 = icmp eq ptr %123, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %122, %116
  %127 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.video_device, ptr %128, i32 0, i32 16
  %130 = load i16, ptr %129, align 4
  %131 = zext i16 %130 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, i32 noundef %131) #12
  br label %139

132:                                              ; preds = %122, %119
  %133 = phi i32 [ %120, %119 ], [ %124, %122 ]
  %134 = load ptr, ptr %87, align 4
  tail call void @destroy_workqueue(ptr noundef %134) #11
  br label %135

135:                                              ; preds = %132, %89
  %136 = phi i32 [ %133, %132 ], [ -12, %89 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %3) #11
  br label %137

137:                                              ; preds = %135, %84
  %138 = phi i32 [ %82, %84 ], [ %136, %135 ]
  tail call void @hva_hw_remove(ptr noundef nonnull %3) #11
  br label %139

139:                                              ; preds = %137, %126, %10, %5, %1
  %140 = phi i32 [ 0, %126 ], [ %16, %10 ], [ %138, %137 ], [ -12, %1 ], [ %8, %5 ]
  ret i32 %140
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %3, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @v4l2_m2m_release(ptr noundef nonnull %9) #11
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @video_unregister_device(ptr noundef %14) #11
  br label %15

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  tail call void @destroy_workqueue(ptr noundef %17) #11
  tail call void @hva_hw_remove(ptr noundef %3) #11
  tail call void @v4l2_device_unregister(ptr noundef %3) #11
  %18 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3, ptr noundef %18) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hva_hw_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hva_hw_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hva_device_run(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hva_dev, ptr %2, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 7
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %5) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @hva_job_ready(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 1, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8, i32 3
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7, i32 3
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 5
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = xor i8 %13, 1
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %11, %7, %1
  %17 = phi i32 [ 0, %1 ], [ 0, %7 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @hva_job_abort(ptr nocapture noundef writeonly %0) #6 {
  %2 = getelementptr inbounds %struct.hva_ctx, ptr %0, i32 0, i32 5
  store i8 1, ptr %2, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_open(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 564) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %81, label %10

10:                                               ; preds = %1
  store ptr %4, ptr %8, align 8
  %11 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 7
  store i32 -32, ptr %11, align 8
  %12 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 7, i32 1
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 7, i32 1, i32 1
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 7, i32 2
  store ptr @hva_run_work, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 1
  %16 = tail call ptr @video_devdata(ptr noundef %0) #11
  tail call void @v4l2_fh_init(ptr noundef %15, ptr noundef %16) #11
  %17 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %15, ptr %17, align 8
  tail call void @v4l2_fh_add(ptr noundef %15) #11
  %18 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 2
  %19 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %18, i32 noundef 15, ptr noundef null, ptr noundef null) #11
  %20 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029518, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 1) #11
  %21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029515, i64 noundef 1, i64 noundef 60, i64 noundef 1, i64 noundef 16) #11
  %22 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029519, i64 noundef 1000, i64 noundef 60000000, i64 noundef 1000, i64 noundef 20000000) #11
  %23 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029513, i8 noundef zeroext 0, i64 noundef -2, i8 noundef zeroext 0) #11
  %24 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029675, i8 noundef zeroext 15, i64 noundef -32790, i8 noundef zeroext 4) #11
  %25 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029671, i8 noundef zeroext 13, i64 noundef 0, i8 noundef zeroext 11) #11
  %26 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029669, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #11
  %27 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029668, i64 noundef 1, i64 noundef 10000, i64 noundef 1, i64 noundef 3000) #11
  %28 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029667, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %29 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029665, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 5) #11
  %30 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029666, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 51) #11
  %31 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029678, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #11
  %32 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029679, i8 noundef zeroext 1, i64 noundef -3, i8 noundef zeroext 1) #11
  %33 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029680, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #11
  %34 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %18, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029682, i8 noundef zeroext 4, i64 noundef -17, i8 noundef zeroext 4) #11
  %35 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 2, i32 9
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %18) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3) #12
  %39 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 23
  %40 = load i32, ptr %39, align 8
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 8
  br label %79

42:                                               ; preds = %10
  %43 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %18) #11
  %44 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 3
  store i32 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 3, i32 0, i32 1
  store i32 30, ptr %45, align 8
  %46 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 1, i32 2
  store ptr %18, ptr %46, align 8
  %47 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %47, ptr noundef nonnull @.str.13, ptr noundef nonnull @hva_open.__key) #11
  %48 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %49, ptr noundef nonnull %8, ptr noundef nonnull @hva_queue_init) #11
  %51 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 1, i32 10
  store ptr %50, ptr %51, align 8
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = ptrtoint ptr %50 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, i32 noundef %54) #12
  %55 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 23
  %56 = load i32, ptr %55, align 8
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %18) #11
  br label %79

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %59) #11
  %60 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 8
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 6
  %64 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %63, i32 noundef 100, ptr noundef nonnull @.str.15, i32 noundef %62)
  tail call void @mutex_unlock(ptr noundef %59) #11
  %65 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 18
  %66 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 17
  store i32 842094158, ptr %65, align 8
  %67 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 18, i32 1
  store i32 32, ptr %67, align 4
  %68 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 18, i32 2
  store i32 32, ptr %68, align 8
  %69 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 18, i32 3
  store i32 32, ptr %69, align 4
  %70 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 18, i32 4
  store i32 32, ptr %70, align 8
  %71 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 18, i32 5
  store i32 1536, ptr %71, align 4
  store i32 875967048, ptr %66, align 4
  %72 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 17, i32 1
  store i32 32, ptr %72, align 8
  %73 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 17, i32 2
  store i32 32, ptr %73, align 4
  %74 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 13
  store i32 3, ptr %74, align 4
  %75 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 14
  store i32 0, ptr %75, align 8
  %76 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 15
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 16
  store i32 0, ptr %77, align 8
  %78 = getelementptr inbounds %struct.hva_ctx, ptr %8, i32 0, i32 12
  store i32 768, ptr %78, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef %63) #12
  br label %81

79:                                               ; preds = %53, %38
  %80 = phi i32 [ %36, %38 ], [ %54, %53 ]
  tail call void @v4l2_fh_del(ptr noundef %15) #11
  tail call void @v4l2_fh_exit(ptr noundef %15) #11
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %81

81:                                               ; preds = %79, %58, %1
  %82 = phi i32 [ 0, %58 ], [ %80, %79 ], [ -12, %1 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_release(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hva_dev, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %3, i32 532
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.hva_enc, ptr %9, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %4) #11
  store ptr null, ptr %8, align 4
  %15 = getelementptr i8, ptr %3, i32 260
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = getelementptr %struct.hva_dev, ptr %5, i32 0, i32 6, i32 %17
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.hva_dev, ptr %5, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  store i32 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %11, %1
  %23 = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %24) #11
  %25 = getelementptr i8, ptr %3, i32 80
  tail call void @v4l2_ctrl_handler_free(ptr noundef %25) #11
  tail call void @v4l2_fh_del(ptr noundef %3) #11
  tail call void @v4l2_fh_exit(ptr noundef %3) #11
  %26 = getelementptr i8, ptr %3, i32 262
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef %26) #12
  tail call void @kfree(ptr noundef %4) #11
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hva_run_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -368
  %3 = getelementptr i8, ptr %0, i32 168
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr i8, ptr %0, i32 -288
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 8
  %9 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %8) #11
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 7
  %12 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %11) #11
  %13 = getelementptr i8, ptr %0, i32 40
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %9, i32 0, i32 4
  store i32 %14, ptr %16, align 8
  %17 = getelementptr inbounds %struct.hva_enc, ptr %4, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %2, ptr noundef %9, ptr noundef %12) #11
  %20 = getelementptr inbounds %struct.hva_stream, ptr %12, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.vb2_buffer, ptr %12, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.vb2_buffer, ptr %12, i32 0, i32 10, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = icmp ult i32 %27, %21
  %29 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %25
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %33

33:                                               ; preds = %32, %25
  br i1 %28, label %34, label %36

34:                                               ; preds = %33
  %35 = load i32, ptr %26, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ %35, %34 ], [ %21, %33 ]
  %38 = getelementptr inbounds %struct.vb2_buffer, ptr %12, i32 0, i32 10, i32 0, i32 3
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %36, %1
  %40 = icmp eq i32 %19, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.vb2_buffer, ptr %9, i32 0, i32 5
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.vb2_buffer, ptr %12, i32 0, i32 5
  store i64 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %12, i32 0, i32 2
  store i32 1, ptr %45, align 4
  %46 = getelementptr i8, ptr %0, i32 44
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1
  %49 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %12, i32 0, i32 4
  store i32 %48, ptr %49, align 8
  %50 = getelementptr i8, ptr %0, i32 180
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %41, %39
  %54 = phi i32 [ 5, %41 ], [ 6, %39 ]
  tail call void @vb2_buffer_done(ptr noundef %9, i32 noundef %54) #11
  tail call void @vb2_buffer_done(ptr noundef %12, i32 noundef %54) #11
  tail call void @mutex_unlock(ptr noundef %5) #11
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr inbounds %struct.hva_dev, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %6, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %57, ptr noundef %58) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_queue_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  store i32 2, ptr %1, align 4
  %4 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 12
  store i32 688, ptr %4, align 4
  %5 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 15
  store i32 1, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.hva_dev, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 2
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 1
  store i32 17, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 7
  store ptr @hva_qops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 13
  store i32 16384, ptr %14, align 4
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.hva_dev, ptr %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 5
  store ptr %16, ptr %17, align 4
  %18 = tail call i32 @vb2_queue_init(ptr noundef %1) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %3
  store i32 1, ptr %2, align 4
  %21 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 12
  store i32 672, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 15
  store i32 1, ptr %22, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.hva_dev, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 1
  store i32 17, ptr %27, align 4
  %28 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  store ptr %0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 7
  store ptr @hva_qops, ptr %29, align 4
  %30 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %30, align 4
  %31 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 13
  store i32 16384, ptr %31, align 4
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.hva_dev, ptr %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 5
  store ptr %33, ptr %34, align 4
  %35 = tail call i32 @vb2_queue_init(ptr noundef %2) #11
  br label %36

36:                                               ; preds = %20, %3
  %37 = phi i32 [ %35, %20 ], [ %18, %3 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %86 [
    i32 10029518, label %6
    i32 10029515, label %10
    i32 10029519, label %14
    i32 10029513, label %18
    i32 10029675, label %22
    i32 10029671, label %33
    i32 10029669, label %44
    i32 10029668, label %48
    i32 10029667, label %52
    i32 10029665, label %58
    i32 10029666, label %62
    i32 10029678, label %66
    i32 10029679, label %72
    i32 10029680, label %76
    i32 10029682, label %82
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %3, i32 120
  store i32 %8, ptr %9, align 4
  br label %86

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %3, i32 124
  store i32 %12, ptr %13, align 4
  br label %86

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %3, i32 128
  store i32 %16, ptr %17, align 4
  br label %86

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %3, i32 132
  store i32 %20, ptr %21, align 4
  br label %86

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %3, i32 136
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %3, i32 364
  %27 = load i32, ptr %4, align 8
  %28 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef %27) #11
  %29 = load i32, ptr %23, align 4
  %30 = getelementptr ptr, ptr %28, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %26, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef %31)
  br label %86

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %3, i32 140
  store i32 %35, ptr %36, align 4
  %37 = getelementptr i8, ptr %3, i32 396
  %38 = load i32, ptr %4, align 8
  %39 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef %38) #11
  %40 = load i32, ptr %34, align 4
  %41 = getelementptr ptr, ptr %39, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %37, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %42)
  br label %86

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %3, i32 144
  store i32 %46, ptr %47, align 4
  br label %86

48:                                               ; preds = %1
  %49 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %3, i32 148
  store i32 %50, ptr %51, align 4
  br label %86

52:                                               ; preds = %1
  %53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %54 = load i32, ptr %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = getelementptr i8, ptr %3, i32 152
  %57 = zext i1 %55 to i8
  store i8 %57, ptr %56, align 4
  br label %86

58:                                               ; preds = %1
  %59 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %3, i32 156
  store i32 %60, ptr %61, align 4
  br label %86

62:                                               ; preds = %1
  %63 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr i8, ptr %3, i32 160
  store i32 %64, ptr %65, align 4
  br label %86

66:                                               ; preds = %1
  %67 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %68 = load i32, ptr %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = getelementptr i8, ptr %3, i32 164
  %71 = zext i1 %69 to i8
  store i8 %71, ptr %70, align 4
  br label %86

72:                                               ; preds = %1
  %73 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %3, i32 168
  store i32 %74, ptr %75, align 4
  br label %86

76:                                               ; preds = %1
  %77 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %78 = load i32, ptr %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = getelementptr i8, ptr %3, i32 172
  %81 = zext i1 %79 to i8
  store i8 %81, ptr %80, align 4
  br label %86

82:                                               ; preds = %1
  %83 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr i8, ptr %3, i32 176
  store i32 %84, ptr %85, align 4
  br label %86

86:                                               ; preds = %82, %76, %72, %66, %62, %58, %52, %48, %44, %33, %22, %18, %14, %10, %6, %1
  %87 = phi i32 [ -22, %1 ], [ 0, %82 ], [ 0, %76 ], [ 0, %72 ], [ 0, %66 ], [ 0, %62 ], [ 0, %58 ], [ 0, %52 ], [ 0, %48 ], [ 0, %44 ], [ 0, %33 ], [ 0, %22 ], [ 0, %18 ], [ 0, %14 ], [ 0, %10 ], [ 0, %6 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_menu(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hva_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #9 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 2
  %10 = getelementptr inbounds %struct.hva_ctx, ptr %7, i32 0, i32 18, i32 5
  %11 = getelementptr inbounds %struct.hva_ctx, ptr %7, i32 0, i32 12
  %12 = select i1 %9, ptr %10, ptr %11
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %2, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, ptr %3, align 4
  %18 = icmp ult i32 %17, %13
  %19 = select i1 %18, i32 -22, i32 0
  br label %21

20:                                               ; preds = %5
  store i32 1, ptr %2, align 4
  store i32 %13, ptr %3, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 0, %20 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_buf_prepare(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %44 [
    i32 0, label %10
    i32 1, label %11
  ]

10:                                               ; preds = %7
  store i32 1, ptr %8, align 4
  br label %11

11:                                               ; preds = %10, %7
  %12 = getelementptr inbounds %struct.hva_frame, ptr %0, i32 0, i32 5
  %13 = load i8, ptr %12, align 8, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = tail call ptr @vb2_plane_vaddr(ptr noundef %0, i32 noundef 0) #11
  %17 = getelementptr inbounds %struct.hva_frame, ptr %0, i32 0, i32 4
  store ptr %16, ptr %17, align 4
  %18 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #11
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.hva_frame, ptr %0, i32 0, i32 3
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.hva_frame, ptr %0, i32 0, i32 2
  %22 = getelementptr inbounds %struct.hva_ctx, ptr %4, i32 0, i32 18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %21, ptr noundef align 4 dereferenceable(24) %22, i32 24, i1 false)
  br label %42

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.hva_stream, ptr %0, i32 0, i32 4
  %25 = load i8, ptr %24, align 8, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = tail call ptr @vb2_plane_vaddr(ptr noundef %0, i32 noundef 0) #11
  %29 = getelementptr inbounds %struct.hva_stream, ptr %0, i32 0, i32 3
  store ptr %28, ptr %29, align 4
  %30 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #11
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.hva_stream, ptr %0, i32 0, i32 2
  store i32 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %38 = load i32, ptr %37, align 8
  br label %39

39:                                               ; preds = %36, %27
  %40 = phi i32 [ %38, %36 ], [ 0, %27 ]
  %41 = getelementptr inbounds %struct.hva_stream, ptr %0, i32 0, i32 5
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %39, %15
  %43 = phi ptr [ %12, %15 ], [ %24, %39 ]
  store i8 1, ptr %43, align 8
  br label %44

44:                                               ; preds = %42, %23, %11, %7
  %45 = phi i32 [ 0, %11 ], [ 0, %23 ], [ -22, %7 ], [ 0, %42 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hva_dev, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %0, align 4
  switch i32 %10, label %18 [
    i32 2, label %11
    i32 10, label %11
    i32 3, label %11
    i32 8, label %11
    i32 5, label %11
    i32 7, label %11
    i32 12, label %11
    i32 14, label %11
  ]

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %12 = getelementptr inbounds %struct.hva_ctx, ptr %6, i32 0, i32 1, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %13, i32 0, i32 7, i32 0, i32 28
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %179, label %25

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.hva_ctx, ptr %6, i32 0, i32 1, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %20, i32 0, i32 8, i32 0, i32 28
  %22 = load i16, ptr %21, align 4
  %23 = and i16 %22, 2
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %179, label %25

25:                                               ; preds = %18, %11
  %26 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 0
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %25
  %30 = phi i8 [ 0, %25 ], [ 1, %39 ], [ 2, %43 ], [ 3, %47 ], [ 4, %51 ], [ 5, %55 ], [ 6, %59 ], [ 7, %63 ], [ 8, %67 ], [ 9, %71 ], [ 10, %75 ], [ 11, %79 ], [ 12, %83 ], [ 13, %87 ], [ 14, %91 ], [ 15, %95 ]
  %31 = phi ptr [ %26, %25 ], [ %40, %39 ], [ %44, %43 ], [ %48, %47 ], [ %52, %51 ], [ %56, %55 ], [ %60, %59 ], [ %64, %63 ], [ %68, %67 ], [ %72, %71 ], [ %76, %75 ], [ %80, %79 ], [ %84, %83 ], [ %88, %87 ], [ %92, %91 ], [ %96, %95 ]
  store ptr %6, ptr %31, align 4
  %32 = getelementptr inbounds %struct.hva_ctx, ptr %6, i32 0, i32 4
  store i8 %30, ptr %32, align 4
  %33 = getelementptr inbounds %struct.hva_dev, ptr %7, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.hva_ctx, ptr %6, i32 0, i32 19
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %101, label %179

39:                                               ; preds = %25
  %40 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %29, label %43

43:                                               ; preds = %39
  %44 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %29, label %47

47:                                               ; preds = %43
  %48 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %29, label %51

51:                                               ; preds = %47
  %52 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %29, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %29, label %59

59:                                               ; preds = %55
  %60 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %29, label %63

63:                                               ; preds = %59
  %64 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 7
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %29, label %67

67:                                               ; preds = %63
  %68 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 8
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %29, label %71

71:                                               ; preds = %67
  %72 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %29, label %75

75:                                               ; preds = %71
  %76 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 10
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %29, label %79

79:                                               ; preds = %75
  %80 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 11
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %29, label %83

83:                                               ; preds = %79
  %84 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 12
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %29, label %87

87:                                               ; preds = %83
  %88 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 13
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %29, label %91

91:                                               ; preds = %87
  %92 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 14
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %29, label %95

95:                                               ; preds = %91
  %96 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 15
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %29, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.hva_ctx, ptr %6, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef %100) #12
  br label %149

101:                                              ; preds = %29
  %102 = getelementptr inbounds %struct.hva_ctx, ptr %6, i32 0, i32 17
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.hva_ctx, ptr %6, i32 0, i32 18
  %105 = load i32, ptr %104, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %103, ptr %3, align 4
  store i32 %105, ptr %4, align 4
  %106 = load ptr, ptr %6, align 4
  %107 = getelementptr inbounds %struct.hva_dev, ptr %106, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.hva_dev, ptr %106, i32 0, i32 20
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %123, %101
  %113 = phi i32 [ %124, %123 ], [ 0, %101 ]
  %114 = getelementptr %struct.hva_dev, ptr %106, i32 0, i32 19, i32 %113
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.hva_enc, ptr %115, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, %105
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.hva_enc, ptr %115, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, %103
  br i1 %122, label %126, label %123

123:                                              ; preds = %119, %112
  %124 = add nuw i32 %113, 1
  %125 = icmp eq i32 %124, %110
  br i1 %125, label %128, label %112

126:                                              ; preds = %119
  %127 = icmp eq ptr %115, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %126, %123, %101
  %129 = getelementptr inbounds %struct.hva_ctx, ptr %6, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.21, ptr noundef %129, ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %142

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.hva_ctx, ptr %6, i32 0, i32 6
  %132 = getelementptr inbounds %struct.hva_dev, ptr %106, i32 0, i32 8
  %133 = load i32, ptr %132, align 4
  %134 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %131, i32 noundef 100, ptr noundef nonnull @.str.22, i32 noundef %133, ptr noundef nonnull %3) #11
  %135 = getelementptr inbounds %struct.hva_enc, ptr %115, i32 0, i32 5
  %136 = load ptr, ptr %135, align 4
  %137 = call i32 %136(ptr noundef %6) #11
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  store ptr %115, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %179

140:                                              ; preds = %130
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.23, ptr noundef %131, i32 noundef %137) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %141 = icmp slt i32 %137, 0
  br i1 %141, label %142, label %179

142:                                              ; preds = %140, %128
  %143 = phi i32 [ -22, %128 ], [ %137, %140 ]
  %144 = load i8, ptr %32, align 4
  %145 = zext i8 %144 to i32
  %146 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 6, i32 %145
  store ptr null, ptr %146, align 4
  %147 = load i32, ptr %33, align 4
  %148 = add i32 %147, -1
  store i32 %148, ptr %33, align 4
  br label %149

149:                                              ; preds = %142, %99
  %150 = phi i32 [ %143, %142 ], [ -12, %99 ]
  %151 = load i32, ptr %0, align 4
  %152 = icmp eq i32 %151, 2
  %153 = getelementptr inbounds %struct.hva_ctx, ptr %6, i32 0, i32 1, i32 10
  %154 = load ptr, ptr %153, align 4
  br i1 %152, label %159, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %154, i32 0, i32 7
  %157 = call ptr @v4l2_m2m_buf_remove(ptr noundef %156) #11
  %158 = icmp eq ptr %157, null
  br i1 %158, label %175, label %169

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %154, i32 0, i32 8
  %161 = call ptr @v4l2_m2m_buf_remove(ptr noundef %160) #11
  %162 = icmp eq ptr %161, null
  br i1 %162, label %175, label %163

163:                                              ; preds = %163, %159
  %164 = phi ptr [ %167, %163 ], [ %161, %159 ]
  call void @vb2_buffer_done(ptr noundef nonnull %164, i32 noundef 3) #11
  %165 = load ptr, ptr %153, align 4
  %166 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %165, i32 0, i32 8
  %167 = call ptr @v4l2_m2m_buf_remove(ptr noundef %166) #11
  %168 = icmp eq ptr %167, null
  br i1 %168, label %175, label %163

169:                                              ; preds = %169, %155
  %170 = phi ptr [ %173, %169 ], [ %157, %155 ]
  call void @vb2_buffer_done(ptr noundef nonnull %170, i32 noundef 3) #11
  %171 = load ptr, ptr %153, align 4
  %172 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %171, i32 0, i32 7
  %173 = call ptr @v4l2_m2m_buf_remove(ptr noundef %172) #11
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %169

175:                                              ; preds = %169, %163, %159, %155
  %176 = getelementptr inbounds %struct.hva_ctx, ptr %6, i32 0, i32 23
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, 1
  store i32 %178, ptr %176, align 4
  br label %179

179:                                              ; preds = %175, %140, %139, %29, %18, %11
  %180 = phi i32 [ %150, %175 ], [ 0, %11 ], [ 0, %18 ], [ 0, %140 ], [ 0, %29 ], [ 0, %139 ]
  ret i32 %180
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hva_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 10
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 1, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %12, i32 0, i32 8
  %14 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %13) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %16, %9
  %17 = phi ptr [ %20, %16 ], [ %14, %9 ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %17, i32 noundef 6) #11
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 8
  %20 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %19) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %16

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 11
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 1, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %25, i32 0, i32 7
  %27 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %26) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %29, %22
  %30 = phi ptr [ %33, %29 ], [ %27, %22 ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %30, i32 noundef 6) #11
  %31 = load ptr, ptr %24, align 4
  %32 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %31, i32 0, i32 7
  %33 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %32) #11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %29

35:                                               ; preds = %29, %22, %16, %9
  %36 = load i32, ptr %0, align 4
  switch i32 %36, label %37 [
    i32 2, label %40
    i32 10, label %40
    i32 3, label %40
    i32 8, label %40
    i32 5, label %40
    i32 7, label %40
    i32 12, label %40
    i32 14, label %40
  ]

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 1, i32 10
  %39 = load ptr, ptr %38, align 4
  br label %48

40:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35
  %41 = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 1, i32 10
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %42, i32 0, i32 7, i32 0, i32 28
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %40
  switch i32 %36, label %48 [
    i32 2, label %54
    i32 10, label %54
    i32 3, label %54
    i32 8, label %54
    i32 5, label %54
    i32 7, label %54
    i32 12, label %54
    i32 14, label %54
  ]

48:                                               ; preds = %47, %37
  %49 = phi ptr [ %39, %37 ], [ %42, %47 ]
  %50 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %49, i32 0, i32 8, i32 0, i32 28
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %51, 1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %48, %47, %47, %47, %47, %47, %47, %47, %47
  %55 = icmp eq ptr %6, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.hva_enc, ptr %6, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 %58(ptr noundef %3) #11
  store ptr null, ptr %5, align 4
  %60 = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 4
  %61 = load i8, ptr %60, align 4
  %62 = zext i8 %61 to i32
  %63 = getelementptr %struct.hva_dev, ptr %4, i32 0, i32 6, i32 %62
  store ptr null, ptr %63, align 4
  %64 = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, -1
  store i32 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %56, %54
  %68 = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 5
  store i8 0, ptr %68, align 1
  br label %69

69:                                               ; preds = %67, %48, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hva_buf_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hva_ctx, ptr %4, i32 0, i32 1, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @v4l2_m2m_buf_queue(ptr noundef nonnull %6, ptr noundef %0) #11
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_querycap(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 16) #11
  %9 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.hva_dev, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.video_device, ptr %11, i32 0, i32 12
  %13 = tail call i32 @strscpy(ptr noundef %9, ptr noundef %12, i32 noundef 32) #11
  %14 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %15 = getelementptr inbounds %struct.hva_dev, ptr %7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.25, ptr noundef %17)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hva_enum_fmt_stream(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #9 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.hva_dev, ptr %7, i32 0, i32 24
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %16, !prof !10

12:                                               ; preds = %3
  %13 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 23, i32 %8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ 0, %12 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hva_enum_fmt_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #9 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.hva_dev, ptr %7, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %16, !prof !10

12:                                               ; preds = %3
  %13 = getelementptr %struct.hva_dev, ptr %7, i32 0, i32 21, i32 %8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ 0, %12 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hva_g_fmt_stream(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 432
  %7 = getelementptr i8, ptr %5, i32 436
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %5, i32 440
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %13, align 4
  %14 = getelementptr i8, ptr %5, i32 416
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr i8, ptr %5, i32 420
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr i8, ptr %5, i32 424
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %5, i32 428
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %6, align 4
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %28, align 4
  %29 = getelementptr i8, ptr %5, i32 412
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %30, ptr %31, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hva_g_fmt_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 508
  %7 = getelementptr i8, ptr %5, i32 512
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %5, i32 516
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %13, align 4
  %14 = getelementptr i8, ptr %5, i32 416
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr i8, ptr %5, i32 420
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr i8, ptr %5, i32 424
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %5, i32 428
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr %6, align 4
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr i8, ptr %5, i32 520
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %6, align 4
  switch i32 %30, label %31 [
    i32 842094158, label %32
    i32 825382478, label %32
  ]

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31, %3, %3
  %33 = phi i32 [ 0, %31 ], [ %29, %3 ], [ %29, %3 ]
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  %35 = getelementptr i8, ptr %5, i32 528
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %36, ptr %37, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_s_fmt_stream(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @hva_try_fmt_stream(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v4l2_fh, ptr %5, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %2, align 4
  %12 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %10, i32 noundef %11) #11
  %13 = getelementptr inbounds %struct.vb2_queue, ptr %12, i32 0, i32 28
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %5, i32 412
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %18, align 4
  %23 = getelementptr i8, ptr %5, i32 432
  %24 = getelementptr i8, ptr %5, i32 436
  store i32 %22, ptr %24, align 4
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %5, i32 440
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %23, align 4
  %30 = getelementptr i8, ptr %5, i32 400
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %17, %8, %3
  %34 = phi i32 [ 0, %17 ], [ %6, %3 ], [ -16, %8 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_s_fmt_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %7 = tail call i32 @hva_try_fmt_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_fh, ptr %5, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %2, align 4
  %13 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %11, i32 noundef %12) #11
  %14 = getelementptr inbounds %struct.vb2_queue, ptr %13, i32 0, i32 28
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %5, i32 416
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %5, i32 420
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %5, i32 424
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %5, i32 428
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %6, align 4
  %32 = add i32 %31, 15
  %33 = and i32 %32, -16
  %34 = getelementptr i8, ptr %5, i32 508
  %35 = getelementptr i8, ptr %5, i32 520
  store i32 %33, ptr %35, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 15
  %39 = and i32 %38, -16
  %40 = getelementptr i8, ptr %5, i32 524
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %5, i32 528
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %34, align 4
  %46 = load i32, ptr %6, align 4
  %47 = getelementptr i8, ptr %5, i32 512
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %36, align 4
  %49 = getelementptr i8, ptr %5, i32 516
  store i32 %48, ptr %49, align 4
  %50 = getelementptr i8, ptr %5, i32 400
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, 2
  store i32 %52, ptr %50, align 4
  br label %53

53:                                               ; preds = %18, %9, %3
  %54 = phi i32 [ 0, %18 ], [ %7, %3 ], [ -16, %9 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_try_fmt_stream(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %5, i32 508
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.hva_dev, ptr %12, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %75, label %16

16:                                               ; preds = %27, %3
  %17 = phi i32 [ %28, %27 ], [ 0, %3 ]
  %18 = getelementptr %struct.hva_dev, ptr %12, i32 0, i32 19, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.hva_enc, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %11
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hva_enc, ptr %19, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %9
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %16
  %28 = add nuw i32 %17, 1
  %29 = icmp eq i32 %28, %14
  br i1 %29, label %75, label %16

30:                                               ; preds = %23
  %31 = icmp eq ptr %19, null
  br i1 %31, label %75, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %34 = getelementptr i8, ptr %5, i32 400
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %5, i32 512
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %7, align 4
  %41 = getelementptr i8, ptr %5, i32 516
  %42 = load i32, ptr %41, align 4
  store i32 %42, ptr %33, align 4
  br label %50

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.hva_enc, ptr %19, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.hva_enc, ptr %19, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  tail call void @v4l_bound_align_image(ptr noundef %7, i32 noundef 32, i32 noundef %45, i32 noundef 0, ptr noundef %33, i32 noundef 32, i32 noundef %47, i32 noundef 0, i32 noundef 0) #11
  %48 = load i32, ptr %7, align 4
  %49 = load i32, ptr %33, align 4
  br label %50

50:                                               ; preds = %43, %38
  %51 = phi i32 [ %49, %43 ], [ %42, %38 ]
  %52 = phi i32 [ %48, %43 ], [ %40, %38 ]
  %53 = mul i32 %52, 3
  %54 = mul i32 %53, %51
  %55 = lshr i32 %54, 2
  %56 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %57, %55
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 %55, ptr %56, align 4
  br label %60

60:                                               ; preds = %59, %50
  %61 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %61, align 4
  %62 = getelementptr i8, ptr %5, i32 416
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %63, ptr %64, align 4
  %65 = getelementptr i8, ptr %5, i32 420
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 %66, ptr %67, align 4
  %68 = getelementptr i8, ptr %5, i32 424
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 %69, ptr %70, align 4
  %71 = getelementptr i8, ptr %5, i32 428
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %74, align 4
  br label %75

75:                                               ; preds = %60, %30, %27, %3
  %76 = phi i32 [ 0, %60 ], [ -22, %30 ], [ -22, %3 ], [ -22, %27 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_try_fmt_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %5, i32 432
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.hva_dev, ptr %11, i32 0, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %64, label %15

15:                                               ; preds = %26, %3
  %16 = phi i32 [ %27, %26 ], [ 0, %3 ]
  %17 = getelementptr %struct.hva_dev, ptr %11, i32 0, i32 19, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.hva_enc, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %8
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.hva_enc, ptr %18, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %10
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %15
  %27 = add nuw i32 %16, 1
  %28 = icmp eq i32 %27, %13
  br i1 %28, label %64, label %15

29:                                               ; preds = %22
  %30 = icmp eq ptr %18, null
  br i1 %30, label %64, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %34 = icmp eq i32 %8, 842094158
  %35 = icmp eq i32 %8, 825382478
  %36 = or i1 %34, %35
  %37 = zext i1 %36 to i32
  tail call void @v4l_bound_align_image(ptr noundef %32, i32 noundef 32, i32 noundef 1920, i32 noundef %37, ptr noundef %33, i32 noundef 32, i32 noundef 1920, i32 noundef %37, i32 noundef 0) #11
  %38 = load i32, ptr %32, align 4
  %39 = add i32 %38, 15
  %40 = and i32 %39, -16
  %41 = load i32, ptr %33, align 4
  %42 = add i32 %41, 15
  %43 = and i32 %42, -16
  %44 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %31
  store i32 3, ptr %44, align 4
  %48 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %47, %31
  switch i32 %8, label %52 [
    i32 842094158, label %53
    i32 825382478, label %53
  ]

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %51, %51
  %54 = phi i32 [ 0, %52 ], [ %40, %51 ], [ %40, %51 ]
  %55 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  switch i32 %8, label %60 [
    i32 842094158, label %56
    i32 825382478, label %56
  ]

56:                                               ; preds = %53, %53
  %57 = mul i32 %40, 3
  %58 = mul i32 %57, %43
  %59 = lshr exact i32 %58, 1
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i32 [ %59, %56 ], [ 0, %53 ]
  %62 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %63, align 4
  br label %64

64:                                               ; preds = %60, %29, %26, %3
  %65 = phi i32 [ 0, %60 ], [ -22, %29 ], [ -22, %3 ], [ -22, %26 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hva_qbuf(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_fh, ptr %5, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %11, i32 noundef 1) #11
  %13 = load i32, ptr %2, align 8
  %14 = getelementptr inbounds %struct.vb2_queue, ptr %12, i32 0, i32 21
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = getelementptr %struct.vb2_queue, ptr %12, i32 0, i32 20, i32 %13
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_buffer, ptr %2, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.hva_stream, ptr %19, i32 0, i32 6
  store i32 %21, ptr %22, align 8
  br label %23

23:                                               ; preds = %17, %3
  %24 = getelementptr inbounds %struct.v4l2_fh, ptr %5, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @v4l2_m2m_qbuf(ptr noundef %0, ptr noundef %25, ptr noundef %2) #11
  br label %27

27:                                               ; preds = %23, %9
  %28 = phi i32 [ %26, %23 ], [ -22, %9 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hva_g_parm(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #9 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 192
  %10 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  store i32 4096, ptr %10, align 4
  %11 = load i32, ptr %9, align 4
  %12 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %8, i32 196
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2, i32 1
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %6, %3
  %17 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hva_s_parm(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #9 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 192
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %9
  store i32 4096, ptr %10, align 4
  %19 = load i32, ptr %6, align 4
  store i32 %19, ptr %11, align 4
  %20 = getelementptr i8, ptr %5, i32 196
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2, i32 1
  store i32 %21, ptr %22, align 4
  br label %26

23:                                               ; preds = %14
  store i32 4096, ptr %10, align 4
  store i32 %12, ptr %6, align 4
  %24 = load i32, ptr %15, align 4
  %25 = getelementptr i8, ptr %5, i32 196
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %23, %18, %3
  %27 = phi i32 [ 0, %23 ], [ 0, %18 ], [ -22, %3 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hva_hw_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hva_hw_runtime_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
