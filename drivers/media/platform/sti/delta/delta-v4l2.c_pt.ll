; ModuleID = '/llk/IR/drivers/media/platform/sti/delta/delta-v4l2.c_pt.bc'
source_filename = "../drivers/media/platform/sti/delta/delta-v4l2.c"
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
%struct.delta_dec = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delta_ctx = type { i32, %struct.v4l2_fh, ptr, ptr, %struct.delta_ipc_ctx, i32, i32, i32, i32, %struct.delta_streaminfo, %struct.delta_frameinfo, i32, [21 x ptr], i32, i32, i32, i32, i32, i32, %struct.list_head, [100 x i8], %struct.work_struct, %struct.mutex, i8, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delta_ipc_ctx = type { i32, i32, %struct.completion, %struct.delta_buf, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delta_buf = type { i32, ptr, i32, ptr, i32 }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delta_frame = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.delta_frameinfo, i8, i32, ptr, i32, i32, i32, i64, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.77, i32 }
%union.anon.77 = type { i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.delta_dev = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i8, ptr, %struct.rpmsg_driver, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.delta_au = type { %struct.vb2_v4l2_buffer, %struct.list_head, i8, i32, ptr, i32, i32, i64 }
%struct.delta_dts = type { %struct.list_head, i64 }
%struct.v4l2_event = type { i32, %union.anon.103, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.103 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.104, i32, i32, i32, i32, i32 }
%union.anon.104 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.78 }
%union.anon.78 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.80, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.80 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_decoder_cmd = type { i32, i32, %union.anon.90 }
%union.anon.90 = type { %struct.anon.91, [56 x i8] }
%struct.anon.91 = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"%s no frame available\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s frame[%d] is not free\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s pm_runtime_resume_and_get failed (%d)\0A\00", align 1
@__func__.delta_get_sync = private unnamed_addr constant [15 x i8] c"delta_get_sync\00", align 1
@delta_match_types = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st-delta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license258 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author259 = internal constant [46 x i8] c"author=Hugues Fruchet <hugues.fruchet@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description260 = internal constant [63 x i8] c"description=STMicroelectronics DELTA video decoder V4L2 driver\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s dumping frames status...\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s frame[%d] %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%s %s %s %s %s %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bsy\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"m2m\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"rdy\00", align 1
@delta_driver = internal global %struct.platform_driver { ptr @delta_probe, ptr @delta_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @delta_match_types, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.13 = private unnamed_addr constant [9 x i8] c"st-delta\00", align 1
@delta_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_runtime_suspend, ptr @delta_runtime_resume, ptr null }, align 4
@delta_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"&delta->lock\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"delta-st231\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"delta-flash-promip\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"%s failed to initialize firmware ipc channel\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"[---:----]\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"%s failed to register V4L2 device\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"%s failed to allocate work queue\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"%s %s registered as /dev/video%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"%s %s decoder registered\0A\00", align 1
@mjpegdec = external dso_local constant %struct.delta_dec, align 4
@delta_m2m_ops = internal constant %struct.v4l2_m2m_ops { ptr @delta_device_run, ptr @delta_job_ready, ptr @delta_job_abort }, align 4
@.str.25 = private unnamed_addr constant [41 x i8] c"%s failed to initialize v4l2-m2m device\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"%s failed to allocate video device\0A\00", align 1
@delta_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @delta_open, ptr @delta_release }, align 4
@delta_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @delta_querycap, ptr @delta_enum_fmt_frame, ptr null, ptr @delta_enum_fmt_stream, ptr null, ptr null, ptr null, ptr null, ptr @delta_g_fmt_frame, ptr null, ptr @delta_g_fmt_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_s_fmt_frame, ptr null, ptr @delta_s_fmt_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_try_fmt_frame, ptr null, ptr @delta_try_fmt_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_decoder_cmd, ptr @delta_try_decoder_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @delta_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"21.1-3\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"%s failed to register video device\0A\00", align 1
@delta_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"&ctx->lock\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"%s failed to initialize m2m context (%d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"[%3d:----]\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"failed to enable st231 clk\0A\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"failed to enable delta promip clk\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.35 = private unnamed_addr constant [26 x i8] c"%s no decoder opened yet\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"%s no buffer to decode\0A\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"%s decoding failed (%d)\0A\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"%s  cannot get decoded frame (%d)\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"%s  NULL decoded frame\0A\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"%s no dts to pop ... output dts = 0\0A\00", align 1
@delta_vb2_au_ops = internal constant %struct.vb2_ops { ptr @delta_vb2_au_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @delta_vb2_au_prepare, ptr null, ptr null, ptr @delta_vb2_au_start_streaming, ptr @delta_vb2_au_stop_streaming, ptr @delta_vb2_au_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@delta_vb2_frame_ops = internal constant %struct.vb2_ops { ptr @delta_vb2_frame_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @delta_vb2_frame_prepare, ptr @delta_vb2_frame_finish, ptr null, ptr null, ptr @delta_vb2_frame_stop_streaming, ptr @delta_vb2_frame_queue, ptr null }, align 4
@.str.41 = private unnamed_addr constant [64 x i8] c"%s failed to start streaming, no stream header buffer enqueued\0A\00", align 1
@.str.42 = private unnamed_addr constant [59 x i8] c"%s failed to start streaming, header decoding failed (%d)\0A\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"%s no decoder found matching %4.4s => %4.4s\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"[%3d:%4.4s]\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"%s failed to open decoder instance (%d)\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"%s setup_frame() failed (%d)\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"%s frame index=%d exceeds output frame count (%d)\0A\00", align 1
@.str.48 = private unnamed_addr constant [58 x i8] c"%s number of frames exceeds output frame count (%d > %d)\0A\00", align 1
@.str.49 = private unnamed_addr constant [60 x i8] c"%s frame index discontinuity detected, expected %d, got %d\0A\00", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"failed to prepare/enable delta clk\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_license258], section "llvm.metadata"

@__mod_of__delta_match_types_device_table = dso_local alias [2 x %struct.of_device_id], ptr @delta_match_types

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @delta_get_frameinfo_default(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 9
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(72) %1, i8 0, i32 72, i1 false)
  %4 = getelementptr inbounds %struct.delta_frameinfo, ptr %1, i32 0, i32 1
  store i32 842094158, ptr %4, align 4
  %5 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 9, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.delta_frameinfo, ptr %1, i32 0, i32 2
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 9, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.delta_frameinfo, ptr %1, i32 0, i32 3
  store i32 %9, ptr %10, align 4
  %11 = load i32, ptr %5, align 4
  %12 = add i32 %11, 31
  %13 = and i32 %12, -32
  %14 = getelementptr inbounds %struct.delta_frameinfo, ptr %1, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  %15 = load i32, ptr %8, align 4
  %16 = add i32 %15, 31
  %17 = and i32 %16, -32
  %18 = getelementptr inbounds %struct.delta_frameinfo, ptr %1, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = mul i32 %13, 3
  %20 = mul i32 %19, %17
  %21 = lshr exact i32 %20, 1
  %22 = getelementptr inbounds %struct.delta_frameinfo, ptr %1, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %3, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  store i32 1, ptr %1, align 4
  %27 = getelementptr inbounds %struct.delta_frameinfo, ptr %1, i32 0, i32 7
  %28 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 9, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %27, ptr noundef align 4 dereferenceable(16) %28, i32 16, i1 false)
  %29 = load i32, ptr %3, align 4
  br label %30

30:                                               ; preds = %26, %2
  %31 = phi i32 [ 3, %26 ], [ 2, %2 ]
  %32 = phi i32 [ %29, %26 ], [ %23, %2 ]
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  store i32 %31, ptr %1, align 4
  %36 = getelementptr inbounds %struct.delta_frameinfo, ptr %1, i32 0, i32 8
  %37 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 9, i32 6
  %38 = load i64, ptr %37, align 4
  store i64 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 9, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.delta_frameinfo, ptr %1, i32 0, i32 9
  store i32 %41, ptr %42, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @delta_recycle_default(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.delta_frame, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -5
  store i32 %5, ptr %3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @delta_get_free_frame(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = alloca [100 x i8], align 1
  %4 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  store ptr null, ptr %1, align 4
  %6 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 1, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 7
  %9 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %8) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef %14) #17
  br label %65

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.delta_frame, ptr %9, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, -33
  store i32 %18, ptr %16, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %64, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 20
  %24 = getelementptr inbounds %struct.delta_frame, ptr %9, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef %23, i32 noundef %25) #17
  %26 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %3, i8 0, i32 100, i1 false) #16
  %27 = getelementptr inbounds %struct.delta_dev, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.3, ptr noundef %23) #17
  %29 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %32, %20
  %33 = phi i32 [ %60, %32 ], [ 0, %20 ]
  %34 = getelementptr %struct.delta_ctx, ptr %0, i32 0, i32 12, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr inbounds %struct.delta_frame, ptr %35, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.delta_frame, ptr %35, i32 0, i32 7
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @.str.7, ptr @.str.6
  %44 = and i32 %40, 2
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr @.str.7, ptr @.str.8
  %47 = and i32 %40, 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, ptr @.str.7, ptr @.str.9
  %50 = and i32 %40, 8
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, ptr @.str.7, ptr @.str.10
  %53 = and i32 %40, 32
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, ptr @.str.7, ptr @.str.11
  %56 = and i32 %40, 16
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, ptr @.str.7, ptr @.str.12
  %59 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 100, ptr noundef nonnull @.str.5, ptr noundef nonnull %43, ptr noundef nonnull %46, ptr noundef nonnull %49, ptr noundef nonnull %52, ptr noundef nonnull %55, ptr noundef nonnull %58) #16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.4, ptr noundef %23, i32 noundef %38, ptr noundef nonnull %3) #17
  %60 = add nuw i32 %33, 1
  %61 = load i32, ptr %29, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %32, label %63

63:                                               ; preds = %32, %20
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #16
  br label %65

64:                                               ; preds = %15
  store ptr %9, ptr %1, align 4
  br label %65

65:                                               ; preds = %64, %63, %11
  %66 = phi i32 [ -61, %63 ], [ 0, %64 ], [ -5, %11 ]
  ret i32 %66
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @delta_get_sync(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #16
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #16, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 -1, ptr elementtype(i32) %9) #16, !srcloc !10
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  br label %14

14:                                               ; preds = %13, %8
  %15 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.delta_get_sync, i32 noundef %6) #17
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %6, %14 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @delta_put_autosuspend(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 13) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @delta_driver, ptr noundef nonnull @__this_module) #16
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #7 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @delta_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_probe(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 372, i32 noundef 3520) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %143, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 2
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %8, align 8
  %9 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.14, ptr noundef nonnull @delta_probe.__key) #16
  %10 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.15) #16
  %11 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 6
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %13 = select i1 %12, ptr null, ptr %10
  store ptr %13, ptr %11, align 4
  %14 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.16) #16
  %15 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 7
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %17 = select i1 %16, ptr null, ptr %14
  store ptr %17, ptr %15, align 4
  %18 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.17) #16
  %19 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 8
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %21 = select i1 %20, ptr null, ptr %18
  store ptr %21, ptr %19, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 5) #16
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #16
  %22 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 2) #16
  tail call void @pm_runtime_enable(ptr noundef %2) #16
  %23 = tail call i32 @delta_ipc_init(ptr noundef nonnull %3) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %5
  %26 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #17
  br label %143

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, 9
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = add nuw nsw i32 %29, 1
  store i32 %32, ptr %28, align 4
  %33 = getelementptr %struct.delta_dev, ptr %3, i32 0, i32 9, i32 %29
  store ptr @mjpegdec, ptr %33, align 4
  %34 = load ptr, ptr %6, align 4
  %35 = load ptr, ptr @mjpegdec, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, ptr noundef %35) #17
  %36 = load i32, ptr %28, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %84, label %38

38:                                               ; preds = %31, %27
  %39 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 11
  %40 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 12
  %41 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 13
  %42 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 14
  br label %43

43:                                               ; preds = %80, %38
  %44 = phi i32 [ 0, %38 ], [ %81, %80 ]
  %45 = getelementptr %struct.delta_dev, ptr %3, i32 0, i32 9, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.delta_dec, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %40, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %59, label %54

51:                                               ; preds = %54
  %52 = add nuw i32 %55, 1
  %53 = icmp eq i32 %52, %49
  br i1 %53, label %59, label %54

54:                                               ; preds = %51, %43
  %55 = phi i32 [ %52, %51 ], [ 0, %43 ]
  %56 = getelementptr i32, ptr %39, i32 %55
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, %48
  br i1 %58, label %63, label %51

59:                                               ; preds = %51, %43
  %60 = add i32 %49, 1
  store i32 %60, ptr %40, align 4
  %61 = getelementptr i32, ptr %39, i32 %49
  store i32 %48, ptr %61, align 4
  %62 = load ptr, ptr %45, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi ptr [ %62, %59 ], [ %46, %54 ]
  %65 = getelementptr inbounds %struct.delta_dec, ptr %64, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %42, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %72

69:                                               ; preds = %72
  %70 = add nuw i32 %73, 1
  %71 = icmp eq i32 %70, %67
  br i1 %71, label %77, label %72

72:                                               ; preds = %69, %63
  %73 = phi i32 [ %70, %69 ], [ 0, %63 ]
  %74 = getelementptr i32, ptr %41, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, %66
  br i1 %76, label %80, label %69

77:                                               ; preds = %69, %63
  %78 = add i32 %67, 1
  store i32 %78, ptr %42, align 4
  %79 = getelementptr i32, ptr %41, i32 %67
  store i32 %66, ptr %79, align 4
  br label %80

80:                                               ; preds = %77, %72
  %81 = add nuw i32 %44, 1
  %82 = load i32, ptr %28, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %43, label %84

84:                                               ; preds = %80, %31
  %85 = tail call i32 @v4l2_device_register(ptr noundef %2, ptr noundef nonnull %3) #16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19) #17
  br label %143

89:                                               ; preds = %84
  %90 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.21, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str.13) #16
  %91 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 16
  store ptr %90, ptr %91, align 4
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19) #17
  br label %141

95:                                               ; preds = %89
  %96 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @delta_m2m_ops) #16
  %97 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 4
  store ptr %96, ptr %97, align 4
  %98 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %126, label %99

99:                                               ; preds = %95
  %100 = tail call ptr @video_device_alloc() #16
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.19) #17
  br label %123

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.video_device, ptr %100, i32 0, i32 3
  store ptr @delta_fops, ptr %105, align 4
  %106 = getelementptr inbounds %struct.video_device, ptr %100, i32 0, i32 24
  store ptr @delta_ioctl_ops, ptr %106, align 4
  %107 = getelementptr inbounds %struct.video_device, ptr %100, i32 0, i32 23
  store ptr @video_device_release, ptr %107, align 8
  %108 = getelementptr inbounds %struct.video_device, ptr %100, i32 0, i32 26
  store ptr %9, ptr %108, align 8
  %109 = getelementptr inbounds %struct.video_device, ptr %100, i32 0, i32 14
  store i32 2, ptr %109, align 4
  %110 = getelementptr inbounds %struct.video_device, ptr %100, i32 0, i32 4
  store i32 67141632, ptr %110, align 8
  %111 = getelementptr inbounds %struct.video_device, ptr %100, i32 0, i32 7
  store ptr %3, ptr %111, align 4
  %112 = getelementptr inbounds %struct.video_device, ptr %100, i32 0, i32 12
  %113 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %112, i32 noundef 32, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28) #16
  %114 = load ptr, ptr %105, align 4
  %115 = load ptr, ptr %114, align 4
  %116 = tail call i32 @__video_register_device(ptr noundef nonnull %100, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %115) #16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %104
  %119 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.19) #17
  tail call void @video_device_release(ptr noundef nonnull %100) #16
  br label %123

120:                                              ; preds = %104
  %121 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 1
  store ptr %100, ptr %121, align 4
  %122 = getelementptr inbounds %struct.video_device, ptr %100, i32 0, i32 5, i32 8
  store ptr %3, ptr %122, align 8
  br label %131

123:                                              ; preds = %118, %102
  %124 = phi i32 [ %116, %118 ], [ -12, %102 ]
  %125 = load ptr, ptr %97, align 4
  tail call void @v4l2_m2m_release(ptr noundef %125) #16
  br label %138

126:                                              ; preds = %95
  %127 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.19) #17
  %128 = load ptr, ptr %97, align 4
  %129 = ptrtoint ptr %128 to i32
  %130 = icmp eq ptr %128, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %126, %120
  %132 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.video_device, ptr %133, i32 0, i32 12
  %135 = getelementptr inbounds %struct.video_device, ptr %133, i32 0, i32 16
  %136 = load i16, ptr %135, align 4
  %137 = zext i16 %136 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.19, ptr noundef %134, i32 noundef %137) #17
  br label %143

138:                                              ; preds = %126, %123
  %139 = phi i32 [ %124, %123 ], [ %129, %126 ]
  %140 = load ptr, ptr %91, align 4
  tail call void @destroy_workqueue(ptr noundef %140) #16
  br label %141

141:                                              ; preds = %138, %93
  %142 = phi i32 [ %139, %138 ], [ -12, %93 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %3) #16
  br label %143

143:                                              ; preds = %141, %131, %87, %25, %1
  %144 = phi i32 [ 0, %131 ], [ %23, %25 ], [ %85, %87 ], [ %142, %141 ], [ -12, %1 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_remove(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @delta_ipc_exit(ptr noundef %3) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @v4l2_m2m_release(ptr noundef nonnull %7) #16
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @video_unregister_device(ptr noundef %12) #16
  br label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  tail call void @destroy_workqueue(ptr noundef %15) #16
  %16 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #16
  %19 = load ptr, ptr %16, align 4
  tail call void @__pm_runtime_disable(ptr noundef %19, i1 noundef zeroext true) #16
  tail call void @v4l2_device_unregister(ptr noundef %3) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_ipc_init(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delta_device_run(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 21
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %6) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @delta_job_ready(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 1, i32 10
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
  %12 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 23
  %13 = load i8, ptr %12, align 4, !range !12
  %14 = xor i8 %13, 1
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %11, %7, %1
  %17 = phi i32 [ 0, %1 ], [ 0, %7 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @delta_job_abort(ptr nocapture noundef writeonly %0) #11 {
  %2 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 23
  store i8 1, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_open(ptr noundef %0) #5 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.delta_dev, ptr %4, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 652) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %87, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 2
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 1
  %12 = tail call ptr @video_devdata(ptr noundef %0) #16
  tail call void @v4l2_fh_init(ptr noundef %11, ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %11, ptr %13, align 8
  tail call void @v4l2_fh_add(ptr noundef %11) #16
  %14 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 21
  store i32 -32, ptr %14, align 8
  %15 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 21, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 21, i32 1, i32 1
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 21, i32 2
  store ptr @delta_run_work, ptr %17, align 4
  %18 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str.30, ptr noundef nonnull @delta_open.__key) #16
  %19 = getelementptr inbounds %struct.delta_dev, ptr %4, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %20, ptr noundef nonnull %7, ptr noundef nonnull @queue_init) #16
  %22 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 1, i32 10
  store ptr %21, ptr %22, align 8
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %28

24:                                               ; preds = %9
  %25 = ptrtoint ptr %21 to i32
  %26 = getelementptr inbounds %struct.delta_dev, ptr %4, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.19, i32 noundef %25) #17
  tail call void @v4l2_fh_del(ptr noundef %11) #16
  tail call void @v4l2_fh_exit(ptr noundef %11) #16
  tail call void @kfree(ptr noundef nonnull %7) #16
  br label %87

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 5
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 19
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 19, i32 1
  store ptr %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.delta_dev, ptr %4, i32 0, i32 15
  %33 = load i8, ptr %32, align 4
  %34 = add i8 %33, 1
  store i8 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 20
  %36 = zext i8 %34 to i32
  %37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %35, i32 noundef 100, ptr noundef nonnull @.str.32, i32 noundef %36)
  %38 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10
  %39 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 9
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(72) %38, i8 0, i32 52, i1 false) #16
  %40 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10, i32 1
  store i32 842094158, ptr %40, align 8
  %41 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10, i32 2
  store i32 32, ptr %41, align 4
  %42 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10, i32 3
  store i32 32, ptr %42, align 8
  %43 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10, i32 4
  store i32 32, ptr %43, align 4
  %44 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10, i32 5
  store i32 32, ptr %44, align 8
  %45 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10, i32 6
  store i32 1536, ptr %45, align 4
  %46 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10, i32 9
  store i32 1, ptr %46, align 8
  %47 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10, i32 10
  store i32 3, ptr %47, align 4
  %48 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10, i32 11
  store i32 0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10, i32 12
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10, i32 13
  store i32 0, ptr %50, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(160) %39, i8 0, i32 144, i1 false) #16
  %51 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 9, i32 1
  store i32 1196444237, ptr %51, align 8
  %52 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 9, i32 2
  store i32 32, ptr %52, align 4
  %53 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 9, i32 3
  store i32 32, ptr %53, align 8
  %54 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 9, i32 7
  store i32 1, ptr %54, align 8
  %55 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 9, i32 11
  store i32 3, ptr %55, align 4
  %56 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 9, i32 12
  store i32 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 9, i32 13
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 9, i32 14
  store i32 0, ptr %58, align 8
  %59 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 8
  store i32 1024, ptr %59, align 8
  %60 = getelementptr inbounds %struct.delta_dev, ptr %4, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %28
  %64 = tail call i32 @clk_prepare(ptr noundef nonnull %61) #16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = tail call i32 @clk_enable(ptr noundef nonnull %61) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  tail call void @clk_unprepare(ptr noundef nonnull %61) #16
  br label %70

70:                                               ; preds = %69, %63
  %71 = getelementptr inbounds %struct.delta_dev, ptr %4, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.33) #17
  br label %73

73:                                               ; preds = %70, %66, %28
  %74 = getelementptr inbounds %struct.delta_dev, ptr %4, i32 0, i32 8
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  %78 = tail call i32 @clk_prepare(ptr noundef nonnull %75) #16
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = tail call i32 @clk_enable(ptr noundef nonnull %75) #16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  tail call void @clk_unprepare(ptr noundef nonnull %75) #16
  br label %84

84:                                               ; preds = %83, %77
  %85 = getelementptr inbounds %struct.delta_dev, ptr %4, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.34) #17
  br label %87

87:                                               ; preds = %84, %80, %73, %24, %1
  %88 = phi i32 [ 0, %80 ], [ 0, %84 ], [ 0, %73 ], [ %25, %24 ], [ -12, %1 ]
  tail call void @mutex_unlock(ptr noundef %5) #16
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_release(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -4
  %5 = getelementptr i8, ptr %3, i32 80
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %3, i32 84
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %9) #16
  %10 = icmp eq ptr %8, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.delta_dec, ptr %8, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef %4) #16
  br label %17

17:                                               ; preds = %15, %11, %1
  tail call void @delta_trace_summary(ptr noundef %4) #16
  %18 = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %19) #16
  tail call void @v4l2_fh_del(ptr noundef %3) #16
  tail call void @v4l2_fh_exit(ptr noundef %3) #16
  %20 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void @clk_disable(ptr noundef nonnull %21) #16
  tail call void @clk_unprepare(ptr noundef nonnull %21) #16
  br label %24

24:                                               ; preds = %23, %17
  %25 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @clk_disable(ptr noundef nonnull %26) #16
  tail call void @clk_unprepare(ptr noundef nonnull %26) #16
  br label %29

29:                                               ; preds = %28, %24
  tail call void @kfree(ptr noundef %4) #16
  tail call void @mutex_unlock(ptr noundef %9) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delta_run_work(ptr noundef %0) #5 {
  %2 = alloca ptr, align 4
  %3 = getelementptr i8, ptr %0, i32 -608
  %4 = getelementptr i8, ptr %0, i32 -524
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -520
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store ptr null, ptr %2, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.35, ptr noundef %12) #17
  br label %201

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %14) #16
  %15 = getelementptr i8, ptr %0, i32 -528
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 8
  %18 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %17) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 -100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.36, ptr noundef %23) #17
  tail call void @mutex_unlock(ptr noundef %14) #16
  br label %201

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.vb2_buffer, ptr %18, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.vb2_buffer, ptr %18, i32 0, i32 10, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %30, %28 ], [ 0, %24 ]
  %33 = getelementptr inbounds %struct.delta_au, ptr %18, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.vb2_buffer, ptr %18, i32 0, i32 5
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds %struct.delta_au, ptr %18, i32 0, i32 7
  store i64 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.delta_dec, ptr %7, i32 0, i32 5
  %38 = load i8, ptr %37, align 4, !range !12
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %31
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.delta_dev, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @__pm_runtime_resume(ptr noundef %43, i32 noundef 4) #16
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #16, !srcloc !9
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 0, i32 -1, ptr elementtype(i32) %47) #16, !srcloc !10
  %49 = extractvalue { i32, i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  br label %52

52:                                               ; preds = %51, %46
  %53 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.delta_get_sync, i32 noundef %44) #17
  br label %171

54:                                               ; preds = %40, %31
  %55 = getelementptr inbounds %struct.delta_dec, ptr %7, i32 0, i32 12
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = tail call i32 %56(ptr noundef %3, ptr noundef nonnull %18) #16
  %60 = icmp eq i32 %59, -61
  switch i32 %59, label %61 [
    i32 -61, label %72
    i32 0, label %72
  ]

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %0, i32 -100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.37, ptr noundef %64, i32 noundef %59) #17
  %65 = load i8, ptr %37, align 4, !range !12
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %171

67:                                               ; preds = %61
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr inbounds %struct.delta_dev, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 @__pm_runtime_suspend(ptr noundef %70, i32 noundef 13) #16
  br label %171

72:                                               ; preds = %58, %58, %54
  %73 = phi i1 [ %60, %58 ], [ %60, %58 ], [ false, %54 ]
  %74 = load i8, ptr %37, align 4, !range !12
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr inbounds %struct.delta_dev, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 @__pm_runtime_suspend(ptr noundef %79, i32 noundef 13) #16
  br label %81

81:                                               ; preds = %76, %72
  br i1 %73, label %93, label %82

82:                                               ; preds = %81
  %83 = load i64, ptr %36, align 8
  %84 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %85 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %84, i32 noundef 3520, i32 noundef 16) #18
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  store volatile ptr %85, ptr %85, align 8
  %88 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %89 = getelementptr inbounds %struct.delta_dts, ptr %85, i32 0, i32 1
  store i64 %83, ptr %89, align 8
  %90 = getelementptr i8, ptr %0, i32 -108
  %91 = getelementptr i8, ptr %0, i32 -104
  %92 = load ptr, ptr %91, align 4
  store ptr %85, ptr %91, align 4
  store ptr %90, ptr %85, align 8
  store ptr %92, ptr %88, align 4
  store volatile ptr %85, ptr %92, align 4
  br label %93

93:                                               ; preds = %87, %82, %81
  %94 = getelementptr inbounds %struct.delta_dec, ptr %7, i32 0, i32 13
  %95 = getelementptr i8, ptr %0, i32 -108
  %96 = getelementptr i8, ptr %0, i32 -100
  %97 = getelementptr i8, ptr %0, i32 -464
  %98 = getelementptr i8, ptr %0, i32 -128
  br label %99

99:                                               ; preds = %139, %93
  %100 = load ptr, ptr %94, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = call i32 %100(ptr noundef %3, ptr noundef nonnull %2) #16
  switch i32 %103, label %104 [
    i32 -61, label %143
    i32 0, label %107
  ]

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.38, ptr noundef %96, i32 noundef %103) #17
  br label %143

107:                                              ; preds = %102, %99
  %108 = load ptr, ptr %2, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.39, ptr noundef %96) #17
  br label %143

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.delta_frame, ptr %108, i32 0, i32 9
  %115 = load ptr, ptr %4, align 4
  %116 = load volatile ptr, ptr %95, align 4
  %117 = icmp eq ptr %116, %95
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.delta_dev, ptr %115, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.40, ptr noundef %96) #17
  store i64 0, ptr %114, align 8
  br label %128

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = load ptr, ptr %116, align 4
  %125 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  store ptr %123, ptr %125, align 4
  store volatile ptr %124, ptr %123, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %116, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %122, align 4
  %126 = getelementptr inbounds %struct.delta_dts, ptr %116, i32 0, i32 1
  %127 = load i64, ptr %126, align 8
  store i64 %127, ptr %114, align 8
  call void @kfree(ptr noundef %116) #16
  br label %128

128:                                              ; preds = %121, %118
  %129 = load ptr, ptr %2, align 4
  %130 = getelementptr inbounds %struct.delta_frame, ptr %129, i32 0, i32 7
  %131 = load i32, ptr %130, align 8
  %132 = or i32 %131, 8
  store i32 %132, ptr %130, align 8
  %133 = load i32, ptr %97, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %97, align 4
  %135 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %129, i32 0, i32 4
  store i32 %133, ptr %135, align 8
  call void @vb2_buffer_done(ptr noundef %129, i32 noundef 5) #16
  %136 = getelementptr inbounds %struct.delta_frame, ptr %129, i32 0, i32 2, i32 6
  %137 = load i32, ptr %136, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %140, %128
  br label %99

140:                                              ; preds = %128
  %141 = load i32, ptr %98, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %98, align 4
  br label %139

143:                                              ; preds = %110, %104, %102
  %144 = getelementptr i8, ptr %0, i32 -220
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %158, %143
  %148 = phi i32 [ %159, %158 ], [ %145, %143 ]
  %149 = phi i32 [ %160, %158 ], [ 0, %143 ]
  %150 = getelementptr %struct.delta_ctx, ptr %3, i32 0, i32 12, i32 %149
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.delta_frame, ptr %151, i32 0, i32 7
  %153 = load i32, ptr %152, align 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load ptr, ptr %15, align 4
  call void @v4l2_m2m_buf_queue(ptr noundef %156, ptr noundef %151) #16
  store i32 32, ptr %152, align 8
  %157 = load i32, ptr %144, align 4
  br label %158

158:                                              ; preds = %155, %147
  %159 = phi i32 [ %148, %147 ], [ %157, %155 ]
  %160 = add nuw i32 %149, 1
  %161 = icmp ult i32 %160, %159
  br i1 %161, label %147, label %162

162:                                              ; preds = %158, %143
  %163 = getelementptr i8, ptr %0, i32 -460
  %164 = load i32, ptr %163, align 4
  %165 = add i32 %164, 1
  store i32 %165, ptr %163, align 4
  %166 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %18, i32 0, i32 4
  store i32 %164, ptr %166, align 8
  %167 = select i1 %73, i32 6, i32 5
  call void @vb2_buffer_done(ptr noundef nonnull %18, i32 noundef %167) #16
  call void @mutex_unlock(ptr noundef %14) #16
  %168 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 4
  %169 = load ptr, ptr %168, align 4
  %170 = load ptr, ptr %15, align 4
  call void @v4l2_m2m_job_finish(ptr noundef %169, ptr noundef %170) #16
  br label %201

171:                                              ; preds = %67, %61, %52
  %172 = phi i32 [ %59, %61 ], [ %59, %67 ], [ 1, %52 ]
  %173 = getelementptr i8, ptr %0, i32 -220
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %191, label %176

176:                                              ; preds = %187, %171
  %177 = phi i32 [ %188, %187 ], [ %174, %171 ]
  %178 = phi i32 [ %189, %187 ], [ 0, %171 ]
  %179 = getelementptr %struct.delta_ctx, ptr %3, i32 0, i32 12, i32 %178
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.delta_frame, ptr %180, i32 0, i32 7
  %182 = load i32, ptr %181, align 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load ptr, ptr %15, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %185, ptr noundef %180) #16
  store i32 32, ptr %181, align 8
  %186 = load i32, ptr %173, align 4
  br label %187

187:                                              ; preds = %184, %176
  %188 = phi i32 [ %177, %176 ], [ %186, %184 ]
  %189 = add nuw i32 %178, 1
  %190 = icmp ult i32 %189, %188
  br i1 %190, label %176, label %191

191:                                              ; preds = %187, %171
  %192 = getelementptr i8, ptr %0, i32 -460
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %193, 1
  store i32 %194, ptr %192, align 4
  %195 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %18, i32 0, i32 4
  store i32 %193, ptr %195, align 8
  %196 = icmp eq i32 %172, 0
  %197 = select i1 %196, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %18, i32 noundef %197) #16
  tail call void @mutex_unlock(ptr noundef %14) #16
  %198 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 4
  %199 = load ptr, ptr %198, align 4
  %200 = load ptr, ptr %15, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %199, ptr noundef %200) #16
  br label %201

201:                                              ; preds = %191, %162, %20, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.delta_ctx, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  store i32 2, ptr %1, align 4
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 1
  store i32 17, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 12
  store i32 680, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 7
  store ptr @delta_vb2_au_ops, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 13
  store i32 16384, ptr %11, align 4
  %12 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 5
  %13 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 5
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.delta_dev, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = tail call i32 @vb2_queue_init(ptr noundef %1) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  store i32 1, ptr %2, align 4
  %20 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 1
  store i32 17, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  store ptr %0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 12
  store i32 860, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 7
  store ptr @delta_vb2_frame_ops, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 13
  store i32 16384, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 5
  store ptr %12, ptr %26, align 4
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = tail call i32 @vb2_queue_init(ptr noundef %2) #16
  br label %30

30:                                               ; preds = %19, %3
  %31 = phi i32 [ %29, %19 ], [ %17, %3 ]
  ret i32 %31
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @delta_vb2_au_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #13 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr %3, align 4
  %14 = icmp ult i32 %13, %9
  %15 = select i1 %14, i32 -22, i32 0
  br label %24

16:                                               ; preds = %5
  store i32 1, ptr %2, align 4
  %17 = load i32, ptr %1, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = icmp ugt i32 %17, 10
  br i1 %20, label %21, label %23

21:                                               ; preds = %19, %16
  %22 = phi i32 [ 1, %16 ], [ 10, %19 ]
  store i32 %22, ptr %1, align 4
  br label %23

23:                                               ; preds = %21, %19
  store i32 %9, ptr %3, align 4
  br label %24

24:                                               ; preds = %23, %12
  %25 = phi i32 [ %15, %12 ], [ 0, %23 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_vb2_au_prepare(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.delta_au, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 8, !range !12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call ptr @vb2_plane_vaddr(ptr noundef %0, i32 noundef 0) #16
  %7 = getelementptr inbounds %struct.delta_au, ptr %0, i32 0, i32 4
  store ptr %6, ptr %7, align 8
  %8 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #16
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.delta_au, ptr %0, i32 0, i32 5
  store i32 %9, ptr %10, align 4
  store i8 1, ptr %2, align 8
  br label %11

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, ptr %12, align 4
  br label %16

16:                                               ; preds = %15, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_vb2_au_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 3
  %10 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 9
  %11 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 10
  %12 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %153

15:                                               ; preds = %2
  %16 = load ptr, ptr %9, align 4
  %17 = icmp eq i32 %13, 0
  br i1 %17, label %18, label %64

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 9, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 10, i32 1
  %22 = load i32, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %20, ptr %3, align 4
  store i32 %22, ptr %4, align 4
  %23 = getelementptr inbounds %struct.delta_dev, ptr %8, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %37, %18
  %27 = phi i32 [ %38, %37 ], [ 0, %18 ]
  %28 = getelementptr %struct.delta_dev, ptr %8, i32 0, i32 9, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.delta_dec, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %22
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.delta_dec, ptr %29, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %20
  br i1 %36, label %40, label %37

37:                                               ; preds = %33, %26
  %38 = add nuw i32 %27, 1
  %39 = icmp eq i32 %38, %24
  br i1 %39, label %42, label %26

40:                                               ; preds = %33
  %41 = icmp eq ptr %29, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %40, %37, %18
  %43 = getelementptr inbounds %struct.delta_dev, ptr %8, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.43, ptr noundef %45, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  br label %61

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 20
  %48 = getelementptr inbounds %struct.delta_dev, ptr %8, i32 0, i32 15
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i32
  %51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %47, i32 noundef 100, ptr noundef nonnull @.str.44, i32 noundef %50, ptr noundef nonnull %3) #16
  %52 = getelementptr inbounds %struct.delta_dec, ptr %29, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %46
  %56 = call i32 %53(ptr noundef %6) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.delta_dev, ptr %8, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.45, ptr noundef %47, i32 noundef %56) #17
  br label %61

61:                                               ; preds = %58, %42
  %62 = phi i32 [ %56, %58 ], [ -22, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %140

63:                                               ; preds = %55, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  store ptr %29, ptr %9, align 4
  store i32 1, ptr %12, align 4
  br label %64

64:                                               ; preds = %63, %15
  %65 = phi ptr [ %29, %63 ], [ %16, %15 ]
  %66 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 1, i32 10
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %67, i32 0, i32 8
  %69 = call ptr @v4l2_m2m_buf_remove(ptr noundef %68) #16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.delta_dev, ptr %8, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.41, ptr noundef %74) #17
  br label %140

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.vb2_buffer, ptr %69, i32 0, i32 4
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.vb2_buffer, ptr %69, i32 0, i32 10, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi i32 [ %81, %79 ], [ 0, %75 ]
  %84 = getelementptr inbounds %struct.delta_au, ptr %69, i32 0, i32 3
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.vb2_buffer, ptr %69, i32 0, i32 5
  %86 = load i64, ptr %85, align 8
  %87 = getelementptr inbounds %struct.delta_au, ptr %69, i32 0, i32 7
  store i64 %86, ptr %87, align 8
  %88 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %89 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3520, i32 noundef 16) #18
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %82
  store volatile ptr %89, ptr %89, align 8
  %92 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %93 = getelementptr inbounds %struct.delta_dts, ptr %89, i32 0, i32 1
  store i64 %86, ptr %93, align 8
  %94 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 19
  %95 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 19, i32 1
  %96 = load ptr, ptr %95, align 4
  store ptr %89, ptr %95, align 4
  store ptr %94, ptr %89, align 8
  store ptr %96, ptr %92, align 4
  store volatile ptr %89, ptr %96, align 4
  br label %97

97:                                               ; preds = %91, %82
  %98 = icmp eq ptr %65, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = load i32, ptr %6, align 4
  %101 = or i32 %100, 1
  br label %131

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.delta_dec, ptr %65, i32 0, i32 12
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = call i32 %104(ptr noundef %6, ptr noundef nonnull %69) #16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.delta_dev, ptr %8, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.42, ptr noundef %112, i32 noundef %107) #17
  br label %138

113:                                              ; preds = %106, %102
  %114 = getelementptr inbounds %struct.delta_dec, ptr %65, i32 0, i32 9
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = call i32 %115(ptr noundef %6, ptr noundef %10) #16
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %117, %113
  %121 = load i32, ptr %6, align 4
  %122 = or i32 %121, 1
  store i32 %122, ptr %6, align 4
  %123 = getelementptr inbounds %struct.delta_dec, ptr %65, i32 0, i32 10
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %120
  %127 = call i32 %124(ptr noundef %6, ptr noundef %11) #16
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i32, ptr %6, align 4
  br label %131

131:                                              ; preds = %129, %120, %99
  %132 = phi i32 [ %130, %129 ], [ %101, %99 ], [ %122, %120 ]
  %133 = or i32 %132, 2
  store i32 %133, ptr %6, align 4
  store i32 2, ptr %12, align 4
  %134 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 7
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, 1
  store i32 %136, ptr %134, align 4
  %137 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %69, i32 0, i32 4
  store i32 %135, ptr %137, align 8
  call void @vb2_buffer_done(ptr noundef nonnull %69, i32 noundef 5) #16
  br label %153

138:                                              ; preds = %126, %117, %109
  %139 = phi i32 [ %127, %126 ], [ %118, %117 ], [ %107, %109 ]
  call void @vb2_buffer_done(ptr noundef nonnull %69, i32 noundef 3) #16
  br label %140

140:                                              ; preds = %138, %71, %61
  %141 = phi i32 [ %139, %138 ], [ %62, %61 ], [ -22, %71 ]
  %142 = getelementptr inbounds %struct.delta_ctx, ptr %6, i32 0, i32 1, i32 10
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %143, i32 0, i32 8
  %145 = call ptr @v4l2_m2m_buf_remove(ptr noundef %144) #16
  %146 = icmp eq ptr %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %147, %140
  %148 = phi ptr [ %151, %147 ], [ %145, %140 ]
  call void @vb2_buffer_done(ptr noundef nonnull %148, i32 noundef 3) #16
  %149 = load ptr, ptr %142, align 4
  %150 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %149, i32 0, i32 8
  %151 = call ptr @v4l2_m2m_buf_remove(ptr noundef %150) #16
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %147

153:                                              ; preds = %147, %140, %131, %2
  %154 = phi i32 [ 0, %131 ], [ 0, %2 ], [ %141, %140 ], [ %141, %147 ]
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delta_vb2_au_stop_streaming(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 8
  tail call void @kfree(ptr noundef %8) #16
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %1
  store volatile ptr %4, ptr %4, align 4
  %12 = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 19, i32 1
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 1, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %14, i32 0, i32 8
  %16 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %15) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %18, %11
  %19 = phi ptr [ %22, %18 ], [ %16, %11 ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %19, i32 noundef 6) #16
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %20, i32 0, i32 8
  %22 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %21) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18

24:                                               ; preds = %18, %11
  %25 = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 7
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 23
  store i8 0, ptr %26, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delta_vb2_au_queue(ptr noundef %0) #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.delta_ctx, ptr %4, i32 0, i32 1, i32 10
  %6 = load ptr, ptr %5, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %6, ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @delta_vb2_frame_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #13 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 10, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %1, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  store i32 1, ptr %1, align 4
  br label %13

13:                                               ; preds = %12, %5
  %14 = phi i32 [ 1, %12 ], [ %10, %5 ]
  %15 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 9, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 2
  %18 = add i32 %17, %14
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 21)
  store i32 %19, ptr %1, align 4
  %20 = load i32, ptr %2, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = load i32, ptr %3, align 4
  %24 = icmp ult i32 %23, %9
  %25 = select i1 %24, i32 -22, i32 0
  br label %28

26:                                               ; preds = %13
  store i32 1, ptr %2, align 4
  store i32 %9, ptr %3, align 4
  %27 = getelementptr inbounds %struct.delta_ctx, ptr %7, i32 0, i32 11
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %25, %22 ], [ 0, %26 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_vb2_frame_prepare(ptr noundef %0) #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.delta_ctx, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 3
  %8 = load i8, ptr %7, align 8, !range !12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 4
  store i32 %12, ptr %13, align 4
  %14 = tail call ptr @vb2_plane_vaddr(ptr noundef %0, i32 noundef 0) #16
  %15 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 5
  store ptr %14, ptr %15, align 8
  %16 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #16
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 6
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.delta_ctx, ptr %4, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(72) %19, ptr noundef align 4 dereferenceable(72) %20, i32 72, i1 false)
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.delta_ctx, ptr %4, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %13, align 4
  %25 = icmp ugt i32 %24, 20
  br i1 %25, label %26, label %30

26:                                               ; preds = %10
  %27 = getelementptr inbounds %struct.delta_dev, ptr %21, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.delta_ctx, ptr %4, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.47, ptr noundef %29, i32 noundef %24, i32 noundef 21) #17
  br label %58

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.delta_ctx, ptr %4, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %32, 20
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.delta_dev, ptr %21, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.delta_ctx, ptr %4, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.48, ptr noundef %37, i32 noundef %32, i32 noundef 21) #17
  br label %58

38:                                               ; preds = %30
  %39 = icmp eq i32 %24, %32
  br i1 %39, label %44, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.delta_dev, ptr %21, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.delta_ctx, ptr %4, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.49, ptr noundef %43, i32 noundef %32, i32 noundef %24) #17
  br label %44

44:                                               ; preds = %40, %38
  %45 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 7
  store i32 0, ptr %45, align 8
  %46 = load i32, ptr %31, align 4
  %47 = getelementptr %struct.delta_ctx, ptr %4, i32 0, i32 12, i32 %46
  store ptr %0, ptr %47, align 4
  %48 = load i32, ptr %31, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %31, align 4
  %50 = icmp eq ptr %23, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.delta_dec, ptr %23, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = tail call i32 %53(ptr noundef %4, ptr noundef %0) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55, %34, %26
  %59 = phi i32 [ %56, %55 ], [ -22, %26 ], [ -22, %34 ]
  %60 = getelementptr inbounds %struct.delta_dev, ptr %6, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.delta_ctx, ptr %4, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.46, ptr noundef %62, i32 noundef %59) #17
  br label %68

63:                                               ; preds = %55, %51, %44
  store i8 1, ptr %7, align 8
  br label %64

64:                                               ; preds = %63, %1
  %65 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 1
  %66 = load i32, ptr %65, align 8
  %67 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 8
  store i32 %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %64, %58
  %69 = phi i32 [ 0, %64 ], [ %59, %58 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delta_vb2_frame_finish(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 2, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = icmp ult i32 %9, %3
  %11 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !13

14:                                               ; preds = %7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 1163, i32 noundef 9, ptr noundef null) #16
  br label %15

15:                                               ; preds = %14, %7
  br i1 %10, label %16, label %18

16:                                               ; preds = %15
  %17 = load i32, ptr %8, align 8
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ %17, %16 ], [ %3, %15 ]
  %20 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 9
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 5
  store i64 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 10
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 1
  store i32 %29, ptr %30, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delta_vb2_frame_stop_streaming(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %11, %9 ], [ %7, %1 ]
  %11 = load ptr, ptr %10, align 8
  tail call void @kfree(ptr noundef %10) #16
  %12 = icmp eq ptr %11, %6
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %1
  store volatile ptr %6, ptr %6, align 4
  %14 = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 19, i32 1
  store ptr %6, ptr %14, align 4
  %15 = icmp eq ptr %5, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.delta_dec, ptr %5, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 %18(ptr noundef %3) #16
  br label %22

22:                                               ; preds = %20, %16, %13
  %23 = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %35, %22
  %27 = phi i32 [ %36, %35 ], [ 0, %22 ]
  %28 = getelementptr %struct.delta_ctx, ptr %3, i32 0, i32 12, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.delta_frame, ptr %29, i32 0, i32 7
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  tail call void @vb2_buffer_done(ptr noundef %29, i32 noundef 6) #16
  br label %35

35:                                               ; preds = %34, %26
  store i32 8, ptr %30, align 8
  %36 = add nuw i32 %27, 1
  %37 = load i32, ptr %23, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %26, label %39

39:                                               ; preds = %35, %22
  %40 = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 6
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.delta_ctx, ptr %3, i32 0, i32 23
  store i8 0, ptr %41, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delta_vb2_frame_queue(ptr noundef %0) #5 {
  %2 = alloca %struct.v4l2_event, align 8
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.delta_ctx, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %2, i8 0, i32 136, i1 false) #16
  store i32 2, ptr %2, align 8
  %10 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 2, i32 6
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 1048576
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 8
  %16 = or i32 %15, 8
  store i32 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.delta_ctx, ptr %5, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 4
  store i32 %18, ptr %20, align 8
  tail call void @vb2_buffer_done(ptr noundef %0, i32 noundef 5) #16
  %21 = load i32, ptr %10, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.delta_ctx, ptr %5, i32 0, i32 14
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %23, %9
  %28 = getelementptr inbounds %struct.delta_ctx, ptr %5, i32 0, i32 1
  call void @v4l2_event_queue_fh(ptr noundef %28, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %2) #16
  store i32 4, ptr %6, align 4
  br label %50

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.delta_ctx, ptr %5, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.delta_dec, ptr %31, i32 0, i32 14
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 %35(ptr noundef %5, ptr noundef %0) #16
  br label %39

39:                                               ; preds = %37, %33, %29
  %40 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 7
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, -9
  store i32 %42, ptr %40, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.delta_ctx, ptr %5, i32 0, i32 1, i32 10
  %46 = load ptr, ptr %45, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %46, ptr noundef %0) #16
  store i32 32, ptr %40, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 8
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.delta_frame, ptr %0, i32 0, i32 9
  store i64 0, ptr %49, align 8
  br label %50

50:                                               ; preds = %47, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @delta_trace_summary(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_querycap(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 80
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 16) #16
  %9 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.delta_dev, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.video_device, ptr %11, i32 0, i32 12
  %13 = tail call i32 @strscpy(ptr noundef %9, ptr noundef %12, i32 noundef 32) #16
  %14 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %15 = getelementptr inbounds %struct.delta_dev, ptr %7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.51, ptr noundef %17)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @delta_enum_fmt_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #13 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 80
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.delta_dev, ptr %7, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %16, !prof !14

12:                                               ; preds = %3
  %13 = getelementptr %struct.delta_dev, ptr %7, i32 0, i32 11, i32 %8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ 0, %12 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @delta_enum_fmt_stream(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #13 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 80
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.delta_dev, ptr %7, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %16, !prof !14

12:                                               ; preds = %3
  %13 = getelementptr %struct.delta_dev, ptr %7, i32 0, i32 13, i32 %8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ 0, %12 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @delta_g_fmt_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #13 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr i8, ptr %5, i32 316
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %5, i32 328
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %7, align 4
  %13 = getelementptr i8, ptr %5, i32 332
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %5, i32 364
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %11, align 4
  %20 = load i32, ptr %8, align 4
  %21 = icmp eq i32 %20, 842094158
  %22 = select i1 %21, i32 %19, i32 0
  %23 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %5, i32 336
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %25, ptr %26, align 4
  %27 = load i32, ptr %6, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = getelementptr i8, ptr %5, i32 368
  %32 = load i32, ptr %31, align 4
  br label %46

33:                                               ; preds = %3
  %34 = getelementptr i8, ptr %5, i32 296
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr i8, ptr %5, i32 368
  store i32 %35, ptr %36, align 4
  %37 = getelementptr i8, ptr %5, i32 300
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %5, i32 372
  store i32 %38, ptr %39, align 4
  %40 = getelementptr i8, ptr %5, i32 304
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %5, i32 376
  store i32 %41, ptr %42, align 4
  %43 = getelementptr i8, ptr %5, i32 308
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %5, i32 380
  store i32 %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %33, %30
  %47 = phi i32 [ %32, %30 ], [ %35, %33 ]
  %48 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %47, ptr %48, align 4
  %49 = getelementptr i8, ptr %5, i32 372
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 %50, ptr %51, align 4
  %52 = getelementptr i8, ptr %5, i32 376
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 %53, ptr %54, align 4
  %55 = getelementptr i8, ptr %5, i32 380
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 %56, ptr %57, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @delta_g_fmt_stream(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #13 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %7 = getelementptr i8, ptr %5, i32 156
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %5, i32 160
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %6, align 4
  %12 = getelementptr i8, ptr %5, i32 164
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %5, i32 196
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %18, align 4
  %19 = getelementptr i8, ptr %5, i32 148
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %5, i32 296
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %5, i32 300
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr i8, ptr %5, i32 304
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 %29, ptr %30, align 4
  %31 = getelementptr i8, ptr %5, i32 308
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 %32, ptr %33, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_s_fmt_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #5 {
  %4 = alloca %struct.delta_frameinfo, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = getelementptr i8, ptr %6, i32 84
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #16
  %11 = getelementptr inbounds %struct.v4l2_fh, ptr %6, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %2, align 4
  %14 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %12, i32 noundef %13) #16
  %15 = getelementptr inbounds %struct.vb2_queue, ptr %14, i32 0, i32 28
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %85

19:                                               ; preds = %3
  %20 = getelementptr i8, ptr %6, i32 136
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i32 @delta_try_fmt_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %85

25:                                               ; preds = %19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 52, i1 false)
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.delta_frameinfo, ptr %4, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr %10, align 4
  %30 = getelementptr inbounds %struct.delta_frameinfo, ptr %4, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.delta_frameinfo, ptr %4, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.delta_frameinfo, ptr %4, i32 0, i32 4
  store i32 %29, ptr %34, align 4
  %35 = getelementptr inbounds %struct.delta_frameinfo, ptr %4, i32 0, i32 5
  store i32 %32, ptr %35, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.delta_frameinfo, ptr %4, i32 0, i32 6
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.delta_frameinfo, ptr %4, i32 0, i32 9
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.delta_frameinfo, ptr %4, i32 0, i32 10
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.delta_frameinfo, ptr %4, i32 0, i32 11
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.delta_frameinfo, ptr %4, i32 0, i32 12
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.delta_frameinfo, ptr %4, i32 0, i32 13
  store i32 %52, ptr %53, align 4
  %54 = icmp eq ptr %9, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %25
  %56 = getelementptr inbounds %struct.delta_dec, ptr %9, i32 0, i32 11
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = call i32 %57(ptr noundef %7, ptr noundef nonnull %4) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %59, %55
  %63 = getelementptr inbounds %struct.delta_dec, ptr %9, i32 0, i32 10
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = call i32 %64(ptr noundef %7, ptr noundef nonnull %4) #16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66, %62, %25
  %70 = load i32, ptr %7, align 4
  %71 = or i32 %70, 2
  store i32 %71, ptr %7, align 4
  %72 = getelementptr i8, ptr %6, i32 312
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(72) %72, ptr noundef nonnull align 4 dereferenceable(72) %4, i32 72, i1 false)
  %73 = load i32, ptr %28, align 4
  store i32 %73, ptr %26, align 4
  %74 = load i32, ptr %34, align 4
  store i32 %74, ptr %10, align 4
  %75 = load i32, ptr %35, align 4
  store i32 %75, ptr %31, align 4
  %76 = icmp eq i32 %73, 842094158
  %77 = select i1 %76, i32 %74, i32 0
  %78 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %77, ptr %78, align 4
  %79 = load i32, ptr %38, align 4
  store i32 %79, ptr %36, align 4
  %80 = load i32, ptr %41, align 4
  store i32 %80, ptr %39, align 4
  %81 = load i32, ptr %44, align 4
  store i32 %81, ptr %42, align 4
  %82 = load i32, ptr %47, align 4
  store i32 %82, ptr %45, align 4
  %83 = load i32, ptr %50, align 4
  store i32 %83, ptr %48, align 4
  %84 = load i32, ptr %53, align 4
  store i32 %84, ptr %51, align 4
  br label %85

85:                                               ; preds = %69, %66, %59, %23, %3
  %86 = phi i32 [ 0, %69 ], [ -16, %3 ], [ %24, %23 ], [ %60, %59 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #16
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_s_fmt_stream(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %5, i32 316
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %5, i32 80
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.delta_dev, ptr %13, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %88, label %17

17:                                               ; preds = %28, %3
  %18 = phi i32 [ %29, %28 ], [ 0, %3 ]
  %19 = getelementptr %struct.delta_dev, ptr %13, i32 0, i32 9, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.delta_dec, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %11
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.delta_dec, ptr %20, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %9
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %17
  %29 = add nuw i32 %18, 1
  %30 = icmp eq i32 %29, %15
  br i1 %30, label %88, label %17

31:                                               ; preds = %24
  %32 = icmp eq ptr %20, null
  br i1 %32, label %88, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %35 = getelementptr inbounds %struct.delta_dec, ptr %20, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 4096, i32 %36
  %39 = getelementptr inbounds %struct.delta_dec, ptr %20, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 2400, i32 %40
  tail call void @v4l_bound_align_image(ptr noundef %7, i32 noundef 32, i32 noundef %38, i32 noundef 0, ptr noundef %34, i32 noundef 32, i32 noundef %42, i32 noundef 0, i32 noundef 0) #16
  %43 = load i32, ptr %7, align 4
  %44 = load i32, ptr %34, align 4
  %45 = mul i32 %44, %43
  %46 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %47, %45
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  store i32 %45, ptr %46, align 4
  br label %50

50:                                               ; preds = %49, %33
  %51 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, ptr %52, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = getelementptr inbounds %struct.v4l2_fh, ptr %5, i32 0, i32 10
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %2, align 4
  %60 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %58, i32 noundef %59) #16
  %61 = getelementptr inbounds %struct.vb2_queue, ptr %60, i32 0, i32 28
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %62, 1
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %56
  %66 = load i32, ptr %46, align 4
  %67 = getelementptr i8, ptr %5, i32 148
  store i32 %66, ptr %67, align 4
  %68 = load i32, ptr %7, align 4
  %69 = getelementptr i8, ptr %5, i32 160
  store i32 %68, ptr %69, align 4
  %70 = load i32, ptr %34, align 4
  %71 = getelementptr i8, ptr %5, i32 164
  store i32 %70, ptr %71, align 4
  %72 = load i32, ptr %8, align 4
  %73 = getelementptr i8, ptr %5, i32 156
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %5, i32 296
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i8, ptr %5, i32 300
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i8, ptr %5, i32 304
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr i8, ptr %5, i32 308
  store i32 %84, ptr %85, align 4
  %86 = load i32, ptr %6, align 4
  %87 = or i32 %86, 1
  store i32 %87, ptr %6, align 4
  br label %88

88:                                               ; preds = %65, %56, %31, %28, %3
  %89 = phi i32 [ 0, %65 ], [ -16, %56 ], [ -22, %31 ], [ -22, %3 ], [ -22, %28 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_try_fmt_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %5, i32 156
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %5, i32 80
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.delta_dev, ptr %12, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %63, label %16

16:                                               ; preds = %27, %3
  %17 = phi i32 [ %28, %27 ], [ 0, %3 ]
  %18 = getelementptr %struct.delta_dev, ptr %12, i32 0, i32 9, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.delta_dec, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %8
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.delta_dec, ptr %19, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %10
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %16
  %28 = add nuw i32 %17, 1
  %29 = icmp eq i32 %28, %14
  br i1 %29, label %63, label %16

30:                                               ; preds = %23
  %31 = icmp eq ptr %19, null
  br i1 %31, label %63, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %34 = icmp eq i32 %8, 842094158
  %35 = icmp eq i32 %8, 825382478
  %36 = or i1 %34, %35
  %37 = zext i1 %36 to i32
  tail call void @v4l_bound_align_image(ptr noundef %6, i32 noundef 32, i32 noundef 4096, i32 noundef %37, ptr noundef %33, i32 noundef 32, i32 noundef 2400, i32 noundef %37, i32 noundef 0) #16
  %38 = load i32, ptr %6, align 4
  %39 = add i32 %38, 31
  %40 = and i32 %39, -32
  %41 = load i32, ptr %33, align 4
  %42 = add i32 %41, 31
  %43 = and i32 %42, -32
  %44 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  store i32 3, ptr %44, align 4
  %48 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 1
  store i32 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %47, %32
  store i32 %40, ptr %6, align 4
  store i32 %43, ptr %33, align 4
  %52 = select i1 %34, i32 %40, i32 0
  %53 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %52, ptr %53, align 4
  %54 = mul i32 %40, 3
  %55 = mul i32 %54, %43
  %56 = lshr exact i32 %55, 1
  %57 = select i1 %34, i32 %56, i32 0
  %58 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 1, ptr %59, align 4
  br label %63

63:                                               ; preds = %62, %51, %30, %27, %3
  %64 = phi i32 [ -22, %30 ], [ 0, %62 ], [ 0, %51 ], [ -22, %3 ], [ -22, %27 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_try_fmt_stream(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %5, i32 316
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %5, i32 80
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.delta_dev, ptr %12, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %27, %3
  %17 = phi i32 [ %28, %27 ], [ 0, %3 ]
  %18 = getelementptr %struct.delta_dev, ptr %12, i32 0, i32 9, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.delta_dec, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.delta_dec, ptr %19, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %8
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %16
  %28 = add nuw i32 %17, 1
  %29 = icmp eq i32 %28, %14
  br i1 %29, label %55, label %16

30:                                               ; preds = %23
  %31 = icmp eq ptr %19, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %34 = getelementptr inbounds %struct.delta_dec, ptr %19, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 4096, i32 %35
  %38 = getelementptr inbounds %struct.delta_dec, ptr %19, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 2400, i32 %39
  tail call void @v4l_bound_align_image(ptr noundef %6, i32 noundef 32, i32 noundef %37, i32 noundef 0, ptr noundef %33, i32 noundef 32, i32 noundef %41, i32 noundef 0, i32 noundef 0) #16
  %42 = load i32, ptr %6, align 4
  %43 = load i32, ptr %33, align 4
  %44 = mul i32 %43, %42
  %45 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %46, %44
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  store i32 %44, ptr %45, align 4
  br label %49

49:                                               ; preds = %48, %32
  %50 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, ptr %51, align 4
  br label %55

55:                                               ; preds = %54, %49, %30, %27, %3
  %56 = phi i32 [ -22, %30 ], [ 0, %54 ], [ 0, %49 ], [ -22, %3 ], [ -22, %27 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @delta_g_selection(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #13 {
  %4 = getelementptr i8, ptr %1, i32 312
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %47

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 -4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = load i32, ptr %4, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %1, i32 340
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %1, i32 344
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %16, %12, %7
  %22 = phi i32 [ 348, %16 ], [ 320, %12 ], [ 320, %7 ]
  %23 = phi i32 [ 352, %16 ], [ 324, %12 ], [ 324, %7 ]
  %24 = phi i32 [ %18, %16 ], [ 0, %12 ], [ 0, %7 ]
  %25 = phi i32 [ %20, %16 ], [ 0, %12 ], [ 0, %7 ]
  %26 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %47 [
    i32 256, label %28
    i32 257, label %28
    i32 259, label %36
    i32 258, label %36
  ]

28:                                               ; preds = %21, %21
  %29 = getelementptr i8, ptr %1, i32 %23
  %30 = getelementptr i8, ptr %1, i32 %22
  %31 = load i32, ptr %29, align 4
  %32 = load i32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  store i32 %24, ptr %33, align 4
  %34 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 %25, ptr %34, align 4
  %35 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %32, ptr %35, align 4
  br label %44

36:                                               ; preds = %21, %21
  %37 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 0, ptr %38, align 4
  %39 = getelementptr i8, ptr %1, i32 328
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %40, ptr %41, align 4
  %42 = getelementptr i8, ptr %1, i32 332
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %36, %28
  %45 = phi i32 [ %31, %28 ], [ %43, %36 ]
  %46 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %21, %3
  %48 = phi i32 [ -22, %3 ], [ -22, %21 ], [ 0, %44 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_decoder_cmd(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = alloca %struct.v4l2_event, align 8
  %5 = alloca ptr, align 4
  %6 = load i32, ptr %2, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %107

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %107

13:                                               ; preds = %8
  %14 = and i32 %10, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %2, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %107

20:                                               ; preds = %16, %13
  %21 = getelementptr i8, ptr %1, i32 -4
  %22 = getelementptr i8, ptr %1, i32 84
  %23 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %24 = getelementptr i8, ptr %1, i32 136
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %106

27:                                               ; preds = %20
  %28 = icmp eq ptr %23, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.delta_dec, ptr %23, i32 0, i32 16
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 %31(ptr noundef %21) #16
  br label %35

35:                                               ; preds = %33, %29, %27
  %36 = getelementptr inbounds %struct.delta_dec, ptr %23, i32 0, i32 13
  %37 = getelementptr i8, ptr %1, i32 80
  %38 = getelementptr i8, ptr %1, i32 496
  %39 = getelementptr i8, ptr %1, i32 504
  %40 = getelementptr i8, ptr %1, i32 140
  %41 = getelementptr i8, ptr %1, i32 476
  br label %42

42:                                               ; preds = %82, %35
  store ptr null, ptr %5, align 4
  br i1 %28, label %82, label %44

43:                                               ; preds = %44
  store ptr null, ptr %5, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load ptr, ptr %36, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %43, label %47

47:                                               ; preds = %44
  %48 = call i32 %45(ptr noundef %21, ptr noundef nonnull %5) #16
  %49 = icmp eq i32 %48, -61
  br i1 %49, label %83, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %5, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %82, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.delta_frame, ptr %51, i32 0, i32 9
  %55 = load ptr, ptr %37, align 4
  %56 = load volatile ptr, ptr %38, align 4
  %57 = icmp eq ptr %56, %38
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.delta_dev, ptr %55, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %60, ptr noundef nonnull @.str.40, ptr noundef %39) #17
  store i64 0, ptr %54, align 8
  br label %68

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %56, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %63, ptr %65, align 4
  store volatile ptr %64, ptr %63, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %56, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %62, align 4
  %66 = getelementptr inbounds %struct.delta_dts, ptr %56, i32 0, i32 1
  %67 = load i64, ptr %66, align 8
  store i64 %67, ptr %54, align 8
  call void @kfree(ptr noundef %56) #16
  br label %68

68:                                               ; preds = %61, %58
  %69 = load ptr, ptr %5, align 4
  %70 = getelementptr inbounds %struct.delta_frame, ptr %69, i32 0, i32 7
  %71 = load i32, ptr %70, align 8
  %72 = or i32 %71, 8
  store i32 %72, ptr %70, align 8
  %73 = load i32, ptr %40, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %40, align 4
  %75 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %69, i32 0, i32 4
  store i32 %73, ptr %75, align 8
  call void @vb2_buffer_done(ptr noundef %69, i32 noundef 5) #16
  %76 = getelementptr inbounds %struct.delta_frame, ptr %69, i32 0, i32 2, i32 6
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = load i32, ptr %41, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %41, align 4
  br label %82

82:                                               ; preds = %79, %68, %50, %42
  br label %42

83:                                               ; preds = %47
  %84 = call i32 @delta_get_free_frame(ptr noundef %21, ptr noundef nonnull %5) #16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i32 136, i1 false) #16
  store i32 2, ptr %4, align 8
  %88 = getelementptr inbounds %struct.delta_frame, ptr %87, i32 0, i32 2, i32 6
  store i32 0, ptr %88, align 8
  %89 = getelementptr inbounds %struct.delta_frame, ptr %87, i32 0, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = or i32 %90, 1048576
  store i32 %91, ptr %89, align 4
  %92 = getelementptr inbounds %struct.delta_frame, ptr %87, i32 0, i32 7
  %93 = load i32, ptr %92, align 8
  %94 = or i32 %93, 8
  store i32 %94, ptr %92, align 8
  %95 = load i32, ptr %40, align 4
  %96 = add i32 %95, 1
  store i32 %96, ptr %40, align 4
  %97 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %87, i32 0, i32 4
  store i32 %95, ptr %97, align 8
  call void @vb2_buffer_done(ptr noundef %87, i32 noundef 5) #16
  %98 = load i32, ptr %88, align 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %86
  %101 = load i32, ptr %41, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr %41, align 4
  br label %103

103:                                              ; preds = %100, %86
  call void @v4l2_event_queue_fh(ptr noundef %1, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #16
  br label %104

104:                                              ; preds = %103, %83
  %105 = phi i32 [ 4, %103 ], [ 3, %83 ]
  store i32 %105, ptr %24, align 4
  br label %106

106:                                              ; preds = %104, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %107

107:                                              ; preds = %106, %16, %8, %3
  %108 = phi i32 [ 0, %106 ], [ -22, %3 ], [ -22, %8 ], [ -22, %16 ]
  ret i32 %108
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @delta_try_decoder_cmd(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #14 {
  %4 = load i32, ptr %2, align 8
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = and i32 %8, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.v4l2_decoder_cmd, ptr %2, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %11
  br label %19

19:                                               ; preds = %18, %14, %6, %3
  %20 = phi i32 [ 0, %18 ], [ -22, %3 ], [ -22, %6 ], [ -22, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_subscribe_event(ptr noundef %0, ptr noundef %1) #5 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @v4l2_event_subscribe(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef null) #16
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @delta_ipc_exit(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_runtime_suspend(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef nonnull %5) #16
  tail call void @clk_unprepare(ptr noundef nonnull %5) #16
  br label %8

8:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @delta_runtime_resume(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.delta_dev, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @clk_prepare(ptr noundef nonnull %5) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef nonnull %5) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef nonnull %5) #16
  br label %14

14:                                               ; preds = %13, %7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.52) #17
  br label %15

15:                                               ; preds = %14, %10, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

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
!8 = !{i64 2147990148}
!9 = !{i64 488458, i64 2147978429, i64 2147978455, i64 2147978502, i64 2147978524, i64 2147978552, i64 2147978572}
!10 = !{i64 475027, i64 475052, i64 475074, i64 475090, i64 475102, i64 475122, i64 475146, i64 475162, i64 475174}
!11 = !{i64 2147990274}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
