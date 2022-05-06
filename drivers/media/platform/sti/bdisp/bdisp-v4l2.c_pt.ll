; ModuleID = '/llk/IR/drivers/media/platform/sti/bdisp/bdisp-v4l2.c_pt.bc'
source_filename = "../drivers/media/platform/sti/bdisp/bdisp-v4l2.c"
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.bdisp_frame = type { i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_rect, [4 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.bdisp_fmt = type { i32, i8, i8, i8, i8, i8 }
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
%struct.bdisp_dev = type { %struct.v4l2_device, %struct.video_device, ptr, ptr, %struct.spinlock, %struct.mutex, i16, %struct.bdisp_m2m_device, i32, ptr, ptr, %struct.wait_queue_head, ptr, %struct.delayed_work, %struct.bdisp_dbg }
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
%struct.bdisp_m2m_device = type { ptr, ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bdisp_dbg = type { ptr, [4 x ptr], %struct.bdisp_request, i64, i64, i64, i64, i64 }
%struct.bdisp_request = type { %struct.bdisp_frame, %struct.bdisp_frame, i8, i32 }
%struct.bdisp_ctx = type { %struct.bdisp_frame, %struct.bdisp_frame, i32, i8, ptr, [4 x ptr], [4 x i32], %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.bdisp_ctrls, i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.bdisp_ctrls = type { ptr, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.81, i32 }
%union.anon.81 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.76, %union.anon.77, i32, ptr, i32, %struct.anon.78, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.76 = type { i64 }
%union.anon.77 = type { ptr }
%struct.anon.78 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.82 }
%union.anon.82 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.84, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.84 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }

@bdisp_match_types = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-bdisp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description258 = internal constant [50 x i8] c"description=2D blitter for STMicroelectronics SoC\00", section ".modinfo", align 1
@__UNIQUE_ID_author259 = internal constant [48 x i8] c"author=Fabien Dessenne <fabien.dessenne@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@bdisp_driver = internal global %struct.platform_driver { ptr @bdisp_probe, ptr @bdisp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bdisp_match_types, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [6 x i8] c"bdisp\00", align 1
@bdisp_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @bdisp_suspend, ptr @bdisp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_runtime_suspend, ptr @bdisp_runtime_resume, ptr null }, align 4
@bdisp_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"&bdisp->irq_queue\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bdisp_probe.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"&bdisp->lock\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"clock prepare failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to get IRQ resource\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"failed to install irq\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"failed to register\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"failed to set PM\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"no memory for filters\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"%s%d registered as /dev/video%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Device work timeout\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"drivers/media/platform/sti/bdisp/bdisp-v4l2.c\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Null hardware context\0A\00", align 1
@bdisp_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @bdisp_open, ptr @bdisp_release }, align 4
@bdisp_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @bdisp_querycap, ptr @bdisp_enum_fmt, ptr null, ptr @bdisp_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_g_fmt, ptr null, ptr @bdisp_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_s_fmt, ptr null, ptr @bdisp_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_try_fmt, ptr null, ptr @bdisp_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bdisp_g_selection, ptr @bdisp_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@bdisp_m2m_ops = internal constant %struct.v4l2_m2m_ops { ptr @bdisp_device_run, ptr null, ptr @bdisp_job_abort }, align 4
@.str.17 = private unnamed_addr constant [38 x i8] c"failed to initialize v4l2-m2m device\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"%s(): failed to register video device\0A\00", align 1
@__func__.bdisp_register_device = private unnamed_addr constant [22 x i8] c"bdisp_register_device\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"no memory for nodes\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Failed to create control\0A\00", align 1
@bdisp_dflt_fmt = internal unnamed_addr constant %struct.bdisp_frame { i32 1920, i32 1080, ptr @bdisp_formats, i32 1, i32 7680, i32 8294400, i32 3, %struct.v4l2_rect { i32 0, i32 0, i32 1920, i32 1080 }, [4 x i32] zeroinitializer }, align 4
@.str.21 = private unnamed_addr constant [34 x i8] c"Failed to initialize m2m context\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@bdisp_c_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @bdisp_s_ctrl }, align 4
@.str.22 = private unnamed_addr constant [20 x i8] c"unknown control %d\0A\00", align 1
@bdisp_formats = internal constant [6 x %struct.bdisp_fmt] [%struct.bdisp_fmt { i32 875713089, i8 1, i8 32, i8 32, i8 1, i8 1 }, %struct.bdisp_fmt { i32 875713112, i8 1, i8 32, i8 32, i8 1, i8 1 }, %struct.bdisp_fmt { i32 1346520914, i8 1, i8 16, i8 16, i8 1, i8 1 }, %struct.bdisp_fmt { i32 842094158, i8 2, i8 12, i8 8, i8 2, i8 2 }, %struct.bdisp_fmt { i32 859981650, i8 1, i8 24, i8 24, i8 1, i8 1 }, %struct.bdisp_fmt { i32 842093913, i8 3, i8 12, i8 8, i8 2, i8 2 }], align 4
@bdisp_qops = internal constant %struct.vb2_ops { ptr @bdisp_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @bdisp_buf_prepare, ptr null, ptr null, ptr @bdisp_start_streaming, ptr @bdisp_stop_streaming, ptr @bdisp_buf_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.23 = private unnamed_addr constant [20 x i8] c"Invalid frame (%p)\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Invalid format\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"Wrong buffer/video queue type (%d)\0A\00", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"failed to set runtime PM\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"%s IRQ timeout\0A\00", align 1
@__func__.bdisp_ctx_stop_req = private unnamed_addr constant [19 x i8] c"bdisp_ctx_stop_req\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"platform:%s%d\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Cannot set format\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"queue (%d) busy\0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Unknown format 0x%x\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"src not defined\0A\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"dst not defined\0A\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Invalid target\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"Invalid type\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Invalid type / target\0A\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"Invalid crop: %dx%d@(%d,%d) vs frame: %dx%d\0A\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"cannot get address\0A\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"could not get HW ready\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"could not send HW request\0A\00", align 1
@__func__.bdisp_m2m_suspend = private unnamed_addr constant [18 x i8] c"bdisp_m2m_suspend\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_license260], section "llvm.metadata"

@__mod_of__bdisp_match_types_device_table = dso_local alias [2 x %struct.of_device_id], ptr @bdisp_match_types

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bdisp_driver, ptr noundef nonnull @__this_module) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bdisp_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1264, i32 noundef 3520) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %102, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %6, ptr %7, align 4
  %8 = tail call i32 @dma_set_mask(ptr noundef %2, i64 noundef 4294967295) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %102

10:                                               ; preds = %5
  %11 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef 4294967295) #12
  %12 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 2
  store ptr %0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 3
  store ptr %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %14, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = tail call i32 @of_alias_get_id(ptr noundef nonnull %16, ptr noundef nonnull @.str) #12
  br label %23

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ %22, %20 ], [ %19, %18 ]
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 6
  store i16 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef nonnull @bdisp_probe.__key) #12
  %28 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 13
  store i32 -32, ptr %28, align 8
  %29 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 13, i32 0, i32 1
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 13, i32 0, i32 1, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 13, i32 0, i32 2
  store ptr @bdisp_irq_timeout, ptr %31, align 4
  %32 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %32, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #12
  %33 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str) #12
  %34 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 12
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 4
  store i32 0, ptr %35, align 8
  %36 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %36, ptr noundef nonnull @.str.4, ptr noundef nonnull @bdisp_probe.__key.3) #12
  %37 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #12
  %38 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 10
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = ptrtoint ptr %37 to i32
  br label %99

42:                                               ; preds = %23
  %43 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str) #12
  %44 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 9
  store ptr %43, ptr %44, align 8
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #13
  %47 = load ptr, ptr %44, align 8
  %48 = ptrtoint ptr %47 to i32
  br label %99

49:                                               ; preds = %42
  %50 = tail call i32 @clk_prepare(ptr noundef %43) #12
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #13
  store ptr inttoptr (i32 -22 to ptr), ptr %44, align 8
  br label %99

53:                                               ; preds = %49
  %54 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef 0) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #13
  br label %94

57:                                               ; preds = %53
  %58 = load i32, ptr %54, align 4
  %59 = load ptr, ptr %0, align 8
  %60 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %58, ptr noundef nonnull @bdisp_irq_handler, ptr noundef nonnull @bdisp_irq_thread, i32 noundef 8192, ptr noundef %59, ptr noundef nonnull %3) #12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #13
  br label %94

63:                                               ; preds = %57
  %64 = tail call i32 @v4l2_device_register(ptr noundef %2, ptr noundef nonnull %3) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #13
  br label %94

67:                                               ; preds = %63
  tail call void @bdisp_debugfs_create(ptr noundef nonnull %3) #12
  tail call void @pm_runtime_enable(ptr noundef %2) #12
  %68 = tail call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %2)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #13
  br label %92

71:                                               ; preds = %67
  %72 = load ptr, ptr %13, align 4
  %73 = tail call i32 @bdisp_hw_alloc_filters(ptr noundef %72) #12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.11) #13
  br label %89

77:                                               ; preds = %71
  %78 = tail call fastcc i32 @bdisp_register_device(ptr noundef nonnull %3)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #13
  %81 = load ptr, ptr %13, align 4
  tail call void @bdisp_hw_free_filters(ptr noundef %81) #12
  br label %89

82:                                               ; preds = %77
  %83 = load i16, ptr %26, align 8
  %84 = zext i16 %83 to i32
  %85 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 1, i32 16
  %86 = load i16, ptr %85, align 4
  %87 = zext i16 %86 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, i32 noundef %84, i32 noundef %87) #13
  %88 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #12
  br label %102

89:                                               ; preds = %80, %75
  %90 = phi i32 [ -12, %75 ], [ %78, %80 ]
  %91 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #12
  br label %92

92:                                               ; preds = %89, %70
  %93 = phi i32 [ %68, %70 ], [ %90, %89 ]
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #12
  tail call void @bdisp_debugfs_remove(ptr noundef nonnull %3) #12
  tail call void @v4l2_device_unregister(ptr noundef nonnull %3) #12
  br label %94

94:                                               ; preds = %92, %66, %62, %56
  %95 = phi i32 [ %60, %62 ], [ %64, %66 ], [ %93, %92 ], [ -22, %56 ]
  %96 = load ptr, ptr %44, align 8
  %97 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  tail call void @clk_unprepare(ptr noundef %96) #12
  br label %99

99:                                               ; preds = %98, %94, %52, %46, %40
  %100 = phi i32 [ %41, %40 ], [ %48, %46 ], [ %50, %52 ], [ %95, %94 ], [ %95, %98 ]
  %101 = load ptr, ptr %34, align 4
  tail call void @destroy_workqueue(ptr noundef %101) #12
  br label %102

102:                                              ; preds = %99, %82, %5, %1
  %103 = phi i32 [ %100, %99 ], [ 0, %82 ], [ -12, %1 ], [ %8, %5 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 7
  %7 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @v4l2_m2m_release(ptr noundef nonnull %8) #12
  br label %11

11:                                               ; preds = %10, %5
  %12 = load ptr, ptr %6, align 4
  tail call void @video_unregister_device(ptr noundef %12) #12
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void @bdisp_hw_free_filters(ptr noundef %15) #12
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %16, i1 noundef zeroext true) #12
  tail call void @bdisp_debugfs_remove(ptr noundef %3) #12
  tail call void @v4l2_device_unregister(ptr noundef %3) #12
  %17 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 9
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %18) #12
  br label %21

21:                                               ; preds = %20, %13
  %22 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 12
  %23 = load ptr, ptr %22, align 4
  tail call void @destroy_workqueue(ptr noundef %23) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bdisp_irq_timeout(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -1024
  %3 = getelementptr i8, ptr %0, i32 -40
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.bdisp_ctx, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bdisp_dev, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13) #13
  %10 = getelementptr i8, ptr %0, i32 -72
  tail call void @_raw_spin_lock(ptr noundef %10) #12
  %11 = getelementptr i8, ptr %0, i32 -28
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %11) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %12 = load i16, ptr %10, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  %14 = tail call i32 @bdisp_hw_reset(ptr noundef %2) #12
  tail call fastcc void @bdisp_job_finish(ptr noundef %5, i32 noundef 6)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @bdisp_hw_get_and_clear_irq(ptr noundef %1) #12
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 2, i32 0
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_irq_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %3) #12
  tail call void @bdisp_dbg_perf_end(ptr noundef %1) #12
  %4 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 13
  %5 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 8
  %7 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %6) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %6) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %6) #12
  %13 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %13, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %45

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 7, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %16) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bdisp_ctx, ptr %17, i32 0, i32 7, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %24 = load i16, ptr %3, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  tail call fastcc void @bdisp_job_finish(ptr noundef nonnull %17, i32 noundef 5)
  %26 = getelementptr inbounds %struct.bdisp_ctx, ptr %17, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.bdisp_dev, ptr %27, i32 0, i32 4
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #12
  %30 = getelementptr inbounds %struct.bdisp_ctx, ptr %17, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr %26, align 4
  %35 = getelementptr inbounds %struct.bdisp_dev, ptr %34, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %29) #12
  br i1 %33, label %48, label %36

36:                                               ; preds = %23
  %37 = load ptr, ptr %26, align 4
  %38 = getelementptr inbounds %struct.bdisp_dev, ptr %37, i32 0, i32 4
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #12
  %40 = load i32, ptr %30, align 4
  %41 = and i32 %40, -9
  store i32 %41, ptr %30, align 4
  %42 = load ptr, ptr %26, align 4
  %43 = getelementptr inbounds %struct.bdisp_dev, ptr %42, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %39) #12
  %44 = getelementptr inbounds %struct.bdisp_dev, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %44, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %48

45:                                               ; preds = %19, %14, %12, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  %46 = load i16, ptr %3, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !11
  br label %48

48:                                               ; preds = %45, %36, %23
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdisp_debugfs_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #12, !srcloc !13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 -1, ptr elementtype(i32) %5) #12, !srcloc !14
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  br label %10

10:                                               ; preds = %9, %4, %1
  %11 = phi i32 [ 0, %1 ], [ %2, %4 ], [ %2, %9 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdisp_hw_alloc_filters(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bdisp_register_device(ptr noundef %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 1, i32 3
  store ptr @bdisp_fops, ptr %5, align 4
  %6 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 1, i32 24
  store ptr @bdisp_ioctl_ops, ptr %6, align 4
  %7 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 1, i32 23
  store ptr @video_device_release_empty, ptr %7, align 8
  %8 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 1, i32 26
  store ptr %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 1, i32 14
  store i32 2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 1, i32 7
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 1, i32 4
  store i32 67141632, ptr %12, align 8
  %13 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 1, i32 12
  %14 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 6
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str, i32 noundef %16)
  %18 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 1, i32 5, i32 8
  store ptr %0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 7
  store ptr %4, ptr %19, align 4
  %20 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @bdisp_m2m_ops) #12
  %21 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 7, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.17) #13
  %26 = load ptr, ptr %21, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %37

28:                                               ; preds = %3
  %29 = load ptr, ptr %5, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @__video_register_device(ptr noundef %4, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %30) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bdisp_dev, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.bdisp_register_device) #13
  %36 = load ptr, ptr %21, align 4
  tail call void @v4l2_m2m_release(ptr noundef %36) #12
  br label %37

37:                                               ; preds = %33, %28, %23, %1
  %38 = phi i32 [ %27, %23 ], [ %31, %33 ], [ -19, %1 ], [ 0, %28 ]
  ret i32 %38
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdisp_hw_free_filters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdisp_debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdisp_hw_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bdisp_job_finish(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 7, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !16

8:                                                ; preds = %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 185, i32 noundef 9, ptr noundef nonnull @.str.15) #12
  br label %36

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  %11 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %10) #12
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %12, i32 0, i32 7
  %14 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %13) #12
  %15 = icmp ne ptr %11, null
  %16 = icmp ne ptr %14, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %36

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.vb2_buffer, ptr %11, i32 0, i32 5
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.vb2_buffer, ptr %14, i32 0, i32 5
  store i64 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %14, i32 0, i32 3
  %23 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %11, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %22, ptr noundef align 8 dereferenceable(16) %23, i32 16, i1 false)
  %24 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %14, i32 0, i32 1
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, -458753
  store i32 %26, ptr %24, align 8
  %27 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %11, i32 0, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 458752
  %30 = or i32 %29, %26
  store i32 %30, ptr %24, align 8
  tail call void @vb2_buffer_done(ptr noundef nonnull %11, i32 noundef %1) #12
  tail call void @vb2_buffer_done(ptr noundef nonnull %14, i32 noundef %1) #12
  %31 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.bdisp_dev, ptr %32, i32 0, i32 7, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %5, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %34, ptr noundef %35) #12
  br label %36

36:                                               ; preds = %18, %9, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdisp_hw_get_and_clear_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdisp_dbg_perf_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_open(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 5
  %6 = tail call i32 @mutex_lock_interruptible(ptr noundef %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %70

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 368) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %68, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bdisp_ctx, ptr %10, i32 0, i32 4
  store ptr %4, ptr %13, align 8
  %14 = tail call i32 @bdisp_hw_alloc_nodes(ptr noundef nonnull %10) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.19) #13
  br label %66

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.bdisp_ctx, ptr %10, i32 0, i32 7
  %21 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  tail call void @v4l2_fh_init(ptr noundef %20, ptr noundef %22) #12
  %23 = getelementptr inbounds %struct.bdisp_ctx, ptr %10, i32 0, i32 10
  %24 = load i8, ptr %23, align 4, !range !17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.bdisp_ctx, ptr %10, i32 0, i32 8
  %28 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %27, i32 noundef 10, ptr noundef null, ptr noundef null) #12
  %29 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %27, ptr noundef nonnull @bdisp_c_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %30 = getelementptr inbounds %struct.bdisp_ctx, ptr %10, i32 0, i32 9
  store ptr %29, ptr %30, align 4
  %31 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %27, ptr noundef nonnull @bdisp_c_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %32 = getelementptr inbounds %struct.bdisp_ctx, ptr %10, i32 0, i32 9, i32 1
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.bdisp_ctx, ptr %10, i32 0, i32 8, i32 9
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i8 1, ptr %23, align 4
  br label %40

37:                                               ; preds = %26
  tail call void @v4l2_ctrl_handler_free(ptr noundef %27) #12
  %38 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.20) #13
  br label %64

40:                                               ; preds = %36, %19
  %41 = getelementptr inbounds %struct.bdisp_ctx, ptr %10, i32 0, i32 8
  %42 = getelementptr inbounds %struct.bdisp_ctx, ptr %10, i32 0, i32 7, i32 2
  store ptr %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %20, ptr %43, align 8
  tail call void @v4l2_fh_add(ptr noundef %20) #12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(60) %10, ptr noundef nonnull align 4 dereferenceable(60) @bdisp_dflt_fmt, i32 60, i1 false)
  %44 = getelementptr inbounds %struct.bdisp_ctx, ptr %10, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %44, ptr noundef nonnull align 4 dereferenceable(60) @bdisp_dflt_fmt, i32 60, i1 false)
  %45 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 7, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %46, ptr noundef nonnull %10, ptr noundef nonnull @queue_init) #12
  %48 = getelementptr inbounds %struct.bdisp_ctx, ptr %10, i32 0, i32 7, i32 10
  store ptr %47, ptr %48, align 8
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.21) #13
  %53 = load ptr, ptr %48, align 8
  %54 = ptrtoint ptr %53 to i32
  %55 = load i8, ptr %23, align 4, !range !17
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  tail call void @v4l2_ctrl_handler_free(ptr noundef %41) #12
  store i8 0, ptr %23, align 4
  br label %58

58:                                               ; preds = %57, %50
  tail call void @v4l2_fh_del(ptr noundef %20) #12
  br label %64

59:                                               ; preds = %40
  %60 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 7, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %63) #12
  br label %68

64:                                               ; preds = %58, %37
  %65 = phi i32 [ %34, %37 ], [ %54, %58 ]
  tail call void @v4l2_fh_exit(ptr noundef %20) #12
  tail call void @bdisp_hw_free_nodes(ptr noundef nonnull %10) #12
  br label %66

66:                                               ; preds = %64, %16
  %67 = phi i32 [ -12, %16 ], [ %65, %64 ]
  tail call void @kfree(ptr noundef nonnull %10) #12
  br label %68

68:                                               ; preds = %66, %59, %8
  %69 = phi i32 [ 0, %59 ], [ %67, %66 ], [ -12, %8 ]
  tail call void @mutex_unlock(ptr noundef %5) #12
  br label %70

70:                                               ; preds = %68, %1
  %71 = phi i32 [ -512, %1 ], [ %69, %68 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_release(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bdisp_dev, ptr %5, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %8) #12
  %9 = getelementptr i8, ptr %3, i32 200
  %10 = load i8, ptr %9, align 4, !range !17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %3, i32 80
  tail call void @v4l2_ctrl_handler_free(ptr noundef %13) #12
  store i8 0, ptr %9, align 4
  br label %14

14:                                               ; preds = %12, %1
  tail call void @v4l2_fh_del(ptr noundef %3) #12
  tail call void @v4l2_fh_exit(ptr noundef %3) #12
  %15 = getelementptr inbounds %struct.bdisp_dev, ptr %5, i32 0, i32 7, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr %15, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bdisp_dev, ptr %5, i32 0, i32 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %20) #12
  br label %21

21:                                               ; preds = %19, %14
  %22 = getelementptr i8, ptr %3, i32 -164
  tail call void @bdisp_hw_free_nodes(ptr noundef %22) #12
  tail call void @kfree(ptr noundef %22) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdisp_hw_alloc_nodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds i8, ptr %1, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(340) %4, i8 0, i32 332, i1 false)
  store i32 2, ptr %1, align 4
  %5 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 1
  store i32 17, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 7
  store ptr @bdisp_qops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 12
  store i32 648, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 13
  store i32 16384, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.bdisp_dev, ptr %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 5
  store ptr %13, ptr %14, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = tail call i32 @vb2_queue_init(ptr noundef %1) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = getelementptr inbounds i8, ptr %2, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(340) %21, i8 0, i32 332, i1 false)
  store i32 1, ptr %2, align 4
  %22 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 1
  store i32 17, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 7
  store ptr @bdisp_qops, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 12
  store i32 648, ptr %26, align 4
  %27 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 13
  store i32 16384, ptr %27, align 4
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr inbounds %struct.bdisp_dev, ptr %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 5
  store ptr %29, ptr %30, align 4
  %31 = load ptr, ptr %11, align 4
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = tail call i32 @vb2_queue_init(ptr noundef %2) #12
  br label %35

35:                                               ; preds = %20, %3
  %36 = phi i32 [ %34, %20 ], [ %18, %3 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdisp_hw_free_nodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -116
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bdisp_dev, ptr %5, i32 0, i32 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  switch i32 %14, label %34 [
    i32 9963796, label %15
    i32 9963797, label %24
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %3, i32 -120
  %19 = trunc i32 %17 to i8
  %20 = load i8, ptr %18, align 4
  %21 = and i8 %19, 1
  %22 = and i8 %20, -2
  %23 = or i8 %22, %21
  store i8 %23, ptr %18, align 4
  br label %38

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %3, i32 -120
  %28 = trunc i32 %26 to i8
  %29 = load i8, ptr %27, align 4
  %30 = shl i8 %28, 1
  %31 = and i8 %30, 2
  %32 = and i8 %29, -3
  %33 = or i8 %31, %32
  store i8 %33, ptr %27, align 4
  br label %38

34:                                               ; preds = %12
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.bdisp_dev, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.22, i32 noundef %14) #13
  br label %42

38:                                               ; preds = %24, %15
  %39 = getelementptr i8, ptr %3, i32 -124
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 1
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %38, %34, %1
  %43 = phi i32 [ -22, %34 ], [ 0, %38 ], [ 0, %1 ]
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.bdisp_dev, ptr %44, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %45, i32 noundef %7) #12
  ret i32 %43
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #2 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  switch i32 %8, label %11 [
    i32 2, label %16
    i32 1, label %9
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bdisp_ctx, ptr %7, i32 0, i32 1
  br label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bdisp_ctx, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bdisp_dev, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.25, i32 noundef %8) #13
  br label %19

16:                                               ; preds = %9, %5
  %17 = phi ptr [ %10, %9 ], [ %7, %5 ]
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %26

19:                                               ; preds = %16, %11
  %20 = phi ptr [ inttoptr (i32 -22 to ptr), %11 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.bdisp_ctx, ptr %7, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bdisp_dev, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.23, ptr noundef %20) #13
  %25 = ptrtoint ptr %20 to i32
  br label %47

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.bdisp_frame, ptr %17, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bdisp_ctx, ptr %7, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.bdisp_dev, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.24) #13
  br label %47

35:                                               ; preds = %26
  %36 = load i32, ptr %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %3, align 4
  %40 = getelementptr inbounds %struct.bdisp_frame, ptr %17, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %39, %41
  %43 = select i1 %42, i32 -22, i32 0
  br label %47

44:                                               ; preds = %35
  store i32 1, ptr %2, align 4
  %45 = getelementptr inbounds %struct.bdisp_frame, ptr %17, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %3, align 4
  br label %47

47:                                               ; preds = %44, %38, %30, %19
  %48 = phi i32 [ %25, %19 ], [ %43, %38 ], [ 0, %44 ], [ -22, %30 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_buf_prepare(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %6 [
    i32 2, label %14
    i32 1, label %11
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bdisp_ctx, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.25, i32 noundef %5) #13
  br label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bdisp_ctx, ptr %4, i32 0, i32 1
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %16, label %23

14:                                               ; preds = %1
  %15 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %45

16:                                               ; preds = %14, %11, %6
  %17 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %12, %11 ], [ %4, %14 ]
  %18 = getelementptr inbounds %struct.bdisp_ctx, ptr %4, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.bdisp_dev, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.23, ptr noundef %17) #13
  %22 = ptrtoint ptr %17 to i32
  br label %45

23:                                               ; preds = %11
  %24 = icmp eq i32 %5, 1
  br i1 %24, label %25, label %45

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.bdisp_ctx, ptr %4, i32 0, i32 1, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %33 = load i32, ptr %32, align 8
  %34 = icmp ult i32 %33, %27
  %35 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %36 = xor i1 %35, true
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %39, !prof !16

38:                                               ; preds = %31
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %39

39:                                               ; preds = %38, %31
  br i1 %34, label %40, label %42

40:                                               ; preds = %39
  %41 = load i32, ptr %32, align 8
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ %41, %40 ], [ %27, %39 ]
  %44 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %42, %25, %23, %16, %14
  %46 = phi i32 [ %22, %16 ], [ 0, %23 ], [ 0, %25 ], [ 0, %42 ], [ 0, %14 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bdisp_ctx, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bdisp_dev, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #12, !srcloc !13
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #12, !srcloc !14
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  br label %17

17:                                               ; preds = %16, %11
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.bdisp_dev, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.27) #13
  %21 = load i32, ptr %0, align 4
  %22 = icmp eq i32 %21, 2
  %23 = getelementptr inbounds %struct.bdisp_ctx, ptr %4, i32 0, i32 7, i32 10
  %24 = load ptr, ptr %23, align 4
  br i1 %22, label %29, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %24, i32 0, i32 7
  %27 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %26) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %45, label %39

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %24, i32 0, i32 8
  %31 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %30) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %33, %29
  %34 = phi ptr [ %37, %33 ], [ %31, %29 ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %34, i32 noundef 3) #12
  %35 = load ptr, ptr %23, align 4
  %36 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %35, i32 0, i32 8
  %37 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %36) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %33

39:                                               ; preds = %39, %25
  %40 = phi ptr [ %43, %39 ], [ %27, %25 ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %40, i32 noundef 3) #12
  %41 = load ptr, ptr %23, align 4
  %42 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %41, i32 0, i32 7
  %43 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %42) #12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %39

45:                                               ; preds = %39, %33, %29, %25, %2
  %46 = phi i32 [ 0, %2 ], [ %9, %29 ], [ %9, %25 ], [ %9, %33 ], [ %9, %39 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bdisp_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @__bdisp_job_abort(ptr noundef %3)
  %4 = getelementptr inbounds %struct.bdisp_ctx, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bdisp_dev, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bdisp_buf_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  tail call void @vb2_buffer_done(ptr noundef %0, i32 noundef 5) #12
  br label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bdisp_ctx, ptr %4, i32 0, i32 7, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @v4l2_m2m_buf_queue(ptr noundef nonnull %15, ptr noundef %0) #12
  br label %18

18:                                               ; preds = %17, %13, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__bdisp_job_abort(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 13
  %6 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 7, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %8) #12
  %10 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 8
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp ne i32 %12, 0
  %14 = icmp eq ptr %9, %0
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %59

16:                                               ; preds = %1
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.bdisp_dev, ptr %17, i32 0, i32 4
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #12
  %20 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 8
  store i32 %22, ptr %20, align 4
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.bdisp_dev, ptr %23, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %19) #12
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.bdisp_dev, ptr %25, i32 0, i32 4
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #12
  %28 = load i32, ptr %20, align 4
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.bdisp_dev, ptr %31, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %27) #12
  br i1 %30, label %59, label %33

33:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #12, !annotation !18
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #12
  %34 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 11
  br label %35

35:                                               ; preds = %52, %33
  %36 = phi i32 [ 10, %33 ], [ %53, %52 ]
  %37 = call i32 @prepare_to_wait_event(ptr noundef %34, ptr noundef nonnull %2, i32 noundef 2) #12
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.bdisp_dev, ptr %38, i32 0, i32 4
  %40 = call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #12
  %41 = load i32, ptr %20, align 4
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds %struct.bdisp_dev, ptr %44, i32 0, i32 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %45, i32 noundef %40) #12
  %46 = xor i1 %43, true
  %47 = icmp ne i32 %36, 0
  %48 = select i1 %43, i1 true, i1 %47
  %49 = select i1 %48, i32 %36, i32 1
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %46, i1 true, i1 %50
  br i1 %51, label %54, label %52

52:                                               ; preds = %35
  %53 = call i32 @schedule_timeout(i32 noundef %49) #12
  br label %35

54:                                               ; preds = %35
  call void @finish_wait(ptr noundef %34, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  br i1 %50, label %55, label %59

55:                                               ; preds = %54
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds %struct.bdisp_dev, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.bdisp_ctx_stop_req) #13
  br label %64

59:                                               ; preds = %54, %16, %1
  %60 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %59, %55
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr inbounds %struct.bdisp_dev, ptr %65, i32 0, i32 4
  %67 = call i32 @_raw_spin_lock_irqsave(ptr noundef %66) #12
  %68 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, -25
  store i32 %70, ptr %68, align 4
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr inbounds %struct.bdisp_dev, ptr %71, i32 0, i32 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %72, i32 noundef %67) #12
  call fastcc void @bdisp_job_finish(ptr noundef %0, i32 noundef 6)
  br label %73

73:                                               ; preds = %64, %59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_querycap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %1, i32 -36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bdisp_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @strscpy(ptr noundef %2, ptr noundef %8, i32 noundef 16) #12
  %10 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @strscpy(ptr noundef %10, ptr noundef %12, i32 noundef 32) #12
  %14 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %15 = getelementptr inbounds %struct.bdisp_dev, ptr %5, i32 0, i32 6
  %16 = load i16, ptr %15, align 8
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str, i32 noundef %17)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @bdisp_enum_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #10 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ugt i32 %4, 5
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr [6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 842093913
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %8, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %10, %3
  %17 = phi i32 [ 0, %14 ], [ -22, %3 ], [ -22, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_g_fmt(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr i8, ptr %1, i32 -164
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %8 [
    i32 2, label %13
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 -104
  br label %13

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %1, i32 -36
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bdisp_dev, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.25, i32 noundef %5) #13
  br label %16

13:                                               ; preds = %6, %3
  %14 = phi ptr [ %7, %6 ], [ %4, %3 ]
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %23

16:                                               ; preds = %13, %8
  %17 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %14, %13 ]
  %18 = getelementptr i8, ptr %1, i32 -36
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.bdisp_dev, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.23, ptr noundef %17) #13
  %22 = ptrtoint ptr %17 to i32
  br label %49

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %14, align 4
  store i32 %25, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bdisp_frame, ptr %14, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.bdisp_frame, ptr %14, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.bdisp_frame, ptr %14, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.bdisp_frame, ptr %14, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.bdisp_frame, ptr %14, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %40, ptr %41, align 4
  %42 = icmp eq i32 %5, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.bdisp_frame, ptr %14, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %23
  %47 = phi i32 [ %45, %43 ], [ 3, %23 ]
  %48 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %46, %16
  %50 = phi i32 [ %22, %16 ], [ 0, %46 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_s_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr noundef %2) #2 {
  %4 = tail call i32 @bdisp_try_fmt(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 -36
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bdisp_dev, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.30) #13
  br label %85

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %2, align 4
  %15 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %13, i32 noundef %14) #12
  %16 = getelementptr inbounds %struct.vb2_queue, ptr %15, i32 0, i32 28
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %1, i32 -36
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bdisp_dev, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.31, i32 noundef %25) #13
  br label %85

26:                                               ; preds = %11
  %27 = load i32, ptr %2, align 4
  %28 = icmp eq i32 %27, 2
  %29 = select i1 %28, i32 -164, i32 -104
  %30 = getelementptr i8, ptr %1, i32 %29
  %31 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  switch i32 %32, label %38 [
    i32 875713089, label %45
    i32 875713112, label %33
    i32 1346520914, label %34
    i32 842094158, label %35
    i32 859981650, label %36
    i32 842093913, label %37
  ]

33:                                               ; preds = %26
  br label %45

34:                                               ; preds = %26
  br label %45

35:                                               ; preds = %26
  br label %45

36:                                               ; preds = %26
  br label %45

37:                                               ; preds = %26
  br label %45

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.bdisp_frame, ptr %30, i32 0, i32 2
  store ptr null, ptr %39, align 4
  %40 = getelementptr i8, ptr %1, i32 -36
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.bdisp_dev, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.32, i32 noundef %44) #13
  br label %85

45:                                               ; preds = %37, %36, %35, %34, %33, %26
  %46 = phi ptr [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 5), %37 ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 4), %36 ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 3), %35 ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 2), %34 ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 1), %33 ], [ @bdisp_formats, %26 ]
  %47 = getelementptr inbounds %struct.bdisp_frame, ptr %30, i32 0, i32 2
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %30, align 4
  %50 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.bdisp_frame, ptr %30, i32 0, i32 1
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.bdisp_frame, ptr %30, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.bdisp_frame, ptr %30, i32 0, i32 5
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.bdisp_frame, ptr %30, i32 0, i32 3
  store i32 %60, ptr %61, align 4
  %62 = load i32, ptr %2, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %68

64:                                               ; preds = %45
  %65 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.bdisp_frame, ptr %30, i32 0, i32 6
  store i32 %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %64, %45
  %69 = getelementptr inbounds %struct.bdisp_frame, ptr %30, i32 0, i32 7
  %70 = getelementptr inbounds %struct.bdisp_frame, ptr %30, i32 0, i32 7, i32 2
  store i32 %49, ptr %70, align 4
  %71 = getelementptr inbounds %struct.bdisp_frame, ptr %30, i32 0, i32 7, i32 3
  store i32 %51, ptr %71, align 4
  store i32 0, ptr %69, align 4
  %72 = getelementptr inbounds %struct.bdisp_frame, ptr %30, i32 0, i32 7, i32 1
  store i32 0, ptr %72, align 4
  %73 = load i32, ptr %2, align 4
  %74 = icmp eq i32 %73, 1
  %75 = select i1 %74, i32 5, i32 3
  %76 = getelementptr i8, ptr %1, i32 -36
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.bdisp_dev, ptr %77, i32 0, i32 4
  %79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %78) #12
  %80 = getelementptr i8, ptr %1, i32 -44
  %81 = load i32, ptr %80, align 4
  %82 = or i32 %81, %75
  store i32 %82, ptr %80, align 4
  %83 = load ptr, ptr %76, align 4
  %84 = getelementptr inbounds %struct.bdisp_dev, ptr %83, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %84, i32 noundef %79) #12
  br label %85

85:                                               ; preds = %68, %38, %20, %6
  %86 = phi i32 [ %4, %6 ], [ -16, %20 ], [ 0, %68 ], [ -22, %38 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_try_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %5 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %59 [
    i32 875713089, label %12
    i32 875713112, label %7
    i32 1346520914, label %8
    i32 842094158, label %9
    i32 859981650, label %10
    i32 842093913, label %11
  ]

7:                                                ; preds = %3
  br label %12

8:                                                ; preds = %3
  br label %12

9:                                                ; preds = %3
  br label %12

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %10, %9, %8, %7, %3
  %13 = phi ptr [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 5), %11 ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 4), %10 ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 3), %9 ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 2), %8 ], [ getelementptr inbounds ([6 x %struct.bdisp_fmt], ptr @bdisp_formats, i32 0, i32 1), %7 ], [ @bdisp_formats, %3 ]
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 842093913
  %16 = load i32, ptr %2, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %15, label %18, label %19

18:                                               ; preds = %12
  br i1 %17, label %59, label %20

19:                                               ; preds = %12
  br i1 %17, label %24, label %20

20:                                               ; preds = %19, %18
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %19
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %28 = getelementptr inbounds %struct.bdisp_fmt, ptr %13, i32 0, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = tail call i8 @llvm.cttz.i8(i8 %29, i1 true), !range !19
  %31 = zext i8 %30 to i32
  %32 = icmp eq i8 %29, 0
  %33 = select i1 %32, i32 -1, i32 %31
  %34 = getelementptr inbounds %struct.bdisp_fmt, ptr %13, i32 0, i32 5
  %35 = load i8, ptr %34, align 4
  %36 = tail call i8 @llvm.cttz.i8(i8 %35, i1 true), !range !19
  %37 = zext i8 %36 to i32
  %38 = icmp eq i8 %35, 0
  %39 = select i1 %38, i32 -1, i32 %37
  tail call void @v4l_bound_align_image(ptr noundef %4, i32 noundef 1, i32 noundef 8191, i32 noundef %33, ptr noundef %27, i32 noundef 1, i32 noundef 8191, i32 noundef %39, i32 noundef 0) #12
  %40 = load i32, ptr %4, align 4
  %41 = getelementptr inbounds %struct.bdisp_fmt, ptr %13, i32 0, i32 3
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = mul i32 %40, %43
  %45 = lshr i32 %44, 3
  %46 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  %47 = load i32, ptr %27, align 4
  %48 = mul i32 %47, %40
  %49 = getelementptr inbounds %struct.bdisp_fmt, ptr %13, i32 0, i32 2
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = mul i32 %48, %51
  %53 = lshr i32 %52, 3
  %54 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  %55 = load i32, ptr %2, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %26
  %58 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 3, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %26, %18, %3
  %60 = phi i32 [ -22, %18 ], [ 0, %57 ], [ 0, %26 ], [ -22, %3 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_streamon(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  switch i32 %2, label %34 [
    i32 2, label %4
    i32 1, label %19
  ]

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %1, i32 -36
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bdisp_dev, ptr %6, i32 0, i32 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %9 = getelementptr i8, ptr %1, i32 -44
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.bdisp_dev, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %8) #12
  br i1 %12, label %15, label %34

15:                                               ; preds = %4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.bdisp_dev, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.33) #13
  br label %38

19:                                               ; preds = %3
  %20 = getelementptr i8, ptr %1, i32 -36
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.bdisp_dev, ptr %21, i32 0, i32 4
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #12
  %24 = getelementptr i8, ptr %1, i32 -44
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr inbounds %struct.bdisp_dev, ptr %28, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %23) #12
  br i1 %27, label %30, label %34

30:                                               ; preds = %19
  %31 = load ptr, ptr %20, align 4
  %32 = getelementptr inbounds %struct.bdisp_dev, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.34) #13
  br label %38

34:                                               ; preds = %19, %4, %3
  %35 = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @v4l2_m2m_streamon(ptr noundef %0, ptr noundef %36, i32 noundef %2) #12
  br label %38

38:                                               ; preds = %34, %30, %15
  %39 = phi i32 [ %37, %34 ], [ -22, %30 ], [ -22, %15 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_g_selection(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr i8, ptr %1, i32 -164
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %8 [
    i32 2, label %13
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %1, i32 -104
  br label %13

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %1, i32 -36
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bdisp_dev, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.25, i32 noundef %5) #13
  br label %16

13:                                               ; preds = %6, %3
  %14 = phi ptr [ %7, %6 ], [ %4, %3 ]
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %23

16:                                               ; preds = %13, %8
  %17 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %14, %13 ]
  %18 = getelementptr i8, ptr %1, i32 -36
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.bdisp_dev, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.23, ptr noundef %17) #13
  %22 = ptrtoint ptr %17 to i32
  br label %67

23:                                               ; preds = %13
  switch i32 %5, label %62 [
    i32 2, label %24
    i32 1, label %43
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %38 [
    i32 0, label %27
    i32 1, label %30
    i32 2, label %30
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %29 = getelementptr inbounds %struct.bdisp_frame, ptr %14, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %28, ptr noundef align 4 dereferenceable(16) %29, i32 16, i1 false)
  br label %67

30:                                               ; preds = %24, %24
  %31 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 0, ptr %32, align 4
  %33 = load i32, ptr %14, align 4
  %34 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.bdisp_frame, ptr %14, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %36, ptr %37, align 4
  br label %67

38:                                               ; preds = %24
  %39 = getelementptr i8, ptr %1, i32 -36
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.bdisp_dev, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.35) #13
  br label %67

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %57 [
    i32 256, label %46
    i32 259, label %46
    i32 257, label %49
    i32 258, label %49
  ]

46:                                               ; preds = %43, %43
  %47 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %48 = getelementptr inbounds %struct.bdisp_frame, ptr %14, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %47, ptr noundef align 4 dereferenceable(16) %48, i32 16, i1 false)
  br label %67

49:                                               ; preds = %43, %43
  %50 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 0, ptr %51, align 4
  %52 = load i32, ptr %14, align 4
  %53 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.bdisp_frame, ptr %14, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %55, ptr %56, align 4
  br label %67

57:                                               ; preds = %43
  %58 = getelementptr i8, ptr %1, i32 -36
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.bdisp_dev, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.35) #13
  br label %67

62:                                               ; preds = %23
  %63 = getelementptr i8, ptr %1, i32 -36
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.bdisp_dev, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.36) #13
  br label %67

67:                                               ; preds = %62, %57, %49, %46, %38, %30, %27, %16
  %68 = phi i32 [ %22, %16 ], [ -22, %62 ], [ -22, %57 ], [ -22, %38 ], [ 0, %46 ], [ 0, %49 ], [ 0, %27 ], [ 0, %30 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_s_selection(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #2 {
  %4 = load i32, ptr %2, align 4
  switch i32 %4, label %14 [
    i32 2, label %9
    i32 1, label %5
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 256
  br i1 %8, label %19, label %14

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %1, i32 -164
  %11 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9, %5, %3
  %15 = getelementptr i8, ptr %1, i32 -36
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bdisp_dev, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.37) #13
  br label %138

19:                                               ; preds = %5
  %20 = getelementptr i8, ptr %1, i32 -104
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi ptr [ %20, %19 ], [ %10, %9 ]
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %1, i32 -36
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.bdisp_dev, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.23, ptr noundef nonnull %22) #13
  %29 = ptrtoint ptr %22 to i32
  br label %138

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %32 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %33 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %31, align 4
  %38 = getelementptr inbounds %struct.bdisp_frame, ptr %22, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.bdisp_fmt, ptr %39, i32 0, i32 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %42, -1
  %44 = add i32 %43, %37
  %45 = sub nsw i32 0, %42
  %46 = and i32 %44, %45
  %47 = load i32, ptr %32, align 4
  %48 = getelementptr inbounds %struct.bdisp_fmt, ptr %39, i32 0, i32 5
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i32
  %51 = add i32 %47, -1
  %52 = add i32 %51, %50
  %53 = sub nsw i32 0, %50
  %54 = and i32 %52, %53
  %55 = icmp slt i32 %46, 0
  %56 = load i32, ptr %22, align 4
  br i1 %55, label %65, label %57

57:                                               ; preds = %30
  %58 = icmp uge i32 %46, %56
  %59 = icmp slt i32 %54, 0
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.bdisp_frame, ptr %22, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp ult i32 %54, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %61, %57, %30
  %66 = getelementptr i8, ptr %1, i32 -36
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.bdisp_dev, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.bdisp_frame, ptr %22, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.38, i32 noundef %34, i32 noundef %36, i32 noundef %46, i32 noundef %54, i32 noundef %56, i32 noundef %71) #13
  br label %138

72:                                               ; preds = %61
  %73 = add i32 %34, %43
  %74 = and i32 %73, %45
  %75 = add i32 %36, %43
  %76 = and i32 %75, %45
  %77 = add i32 %74, %46
  %78 = icmp ugt i32 %77, %56
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = add i32 %76, %54
  %81 = icmp ugt i32 %80, %63
  br i1 %81, label %82, label %87

82:                                               ; preds = %79, %72
  %83 = getelementptr i8, ptr %1, i32 -36
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.bdisp_dev, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.38, i32 noundef %74, i32 noundef %76, i32 noundef %46, i32 noundef %54, i32 noundef %56, i32 noundef %63) #13
  br label %138

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %87
  %93 = icmp slt i32 %46, %37
  %94 = icmp slt i32 %54, %47
  %95 = select i1 %93, i1 true, i1 %94
  %96 = add i32 %34, %37
  %97 = icmp ugt i32 %77, %96
  %98 = select i1 %95, i1 true, i1 %97
  %99 = add i32 %36, %47
  %100 = icmp ugt i32 %80, %99
  %101 = select i1 %98, i1 true, i1 %100
  br i1 %101, label %138, label %102

102:                                              ; preds = %92, %87
  %103 = and i32 %89, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %102
  %106 = icmp slt i32 %37, %46
  %107 = icmp slt i32 %47, %54
  %108 = select i1 %106, i1 true, i1 %107
  %109 = add i32 %34, %37
  %110 = icmp ugt i32 %109, %77
  %111 = select i1 %108, i1 true, i1 %110
  %112 = add i32 %36, %47
  %113 = icmp ugt i32 %112, %80
  %114 = select i1 %111, i1 true, i1 %113
  br i1 %114, label %138, label %115

115:                                              ; preds = %105, %102
  %116 = icmp eq i32 %46, %37
  %117 = icmp eq i32 %54, %47
  %118 = select i1 %116, i1 %117, i1 false
  %119 = icmp eq i32 %74, %34
  %120 = select i1 %118, i1 %119, i1 false
  %121 = icmp eq i32 %76, %36
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %124, label %123

123:                                              ; preds = %115
  store i32 %46, ptr %31, align 4
  store i32 %54, ptr %32, align 4
  store i32 %74, ptr %33, align 4
  store i32 %76, ptr %35, align 4
  br label %124

124:                                              ; preds = %123, %115
  %125 = getelementptr inbounds %struct.bdisp_frame, ptr %22, i32 0, i32 7
  store i32 %46, ptr %125, align 4
  %126 = getelementptr inbounds %struct.bdisp_frame, ptr %22, i32 0, i32 7, i32 1
  store i32 %54, ptr %126, align 4
  %127 = getelementptr inbounds %struct.bdisp_frame, ptr %22, i32 0, i32 7, i32 2
  store i32 %74, ptr %127, align 4
  %128 = getelementptr inbounds %struct.bdisp_frame, ptr %22, i32 0, i32 7, i32 3
  store i32 %76, ptr %128, align 4
  %129 = getelementptr i8, ptr %1, i32 -36
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.bdisp_dev, ptr %130, i32 0, i32 4
  %132 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %131) #12
  %133 = getelementptr i8, ptr %1, i32 -44
  %134 = load i32, ptr %133, align 4
  %135 = or i32 %134, 1
  store i32 %135, ptr %133, align 4
  %136 = load ptr, ptr %129, align 4
  %137 = getelementptr inbounds %struct.bdisp_dev, ptr %136, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %137, i32 noundef %132) #12
  br label %138

138:                                              ; preds = %124, %105, %92, %82, %65, %24, %14
  %139 = phi i32 [ %29, %24 ], [ -22, %65 ], [ -22, %82 ], [ 0, %124 ], [ -22, %14 ], [ -34, %92 ], [ -34, %105 ]
  ret i32 %139
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
declare dso_local i32 @v4l2_m2m_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bdisp_device_run(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !16

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 312, i32 noundef 9, ptr noundef nonnull @.str.15) #12
  br label %107

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bdisp_dev, ptr %6, i32 0, i32 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %9 = getelementptr inbounds %struct.bdisp_dev, ptr %6, i32 0, i32 7, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 1
  store i32 %15, ptr %13, align 4
  store ptr %0, ptr %9, align 4
  br label %16

16:                                               ; preds = %12, %4
  %17 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = and i32 %18, -25
  %23 = or i32 %22, 16
  store i32 %23, ptr %17, align 4
  %24 = getelementptr inbounds %struct.bdisp_dev, ptr %6, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %24, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %25 = load i32, ptr %17, align 4
  %26 = and i32 %25, -2
  store i32 %26, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #12
  br label %107

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 7, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %29, i32 0, i32 8
  %31 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %30) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %101, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 8
  %35 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %31, i32 noundef 0) #12
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.bdisp_fmt, ptr %38, i32 0, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = icmp ugt i8 %40, 1
  br i1 %41, label %42, label %56

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.bdisp_frame, ptr %0, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %46, %44
  %48 = add i32 %47, %36
  %49 = getelementptr %struct.bdisp_frame, ptr %0, i32 0, i32 8, i32 1
  store i32 %48, ptr %49, align 4
  %50 = load i8, ptr %39, align 4
  %51 = icmp ugt i8 %50, 2
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = lshr i32 %47, 2
  %54 = add i32 %53, %48
  %55 = getelementptr %struct.bdisp_frame, ptr %0, i32 0, i32 8, i32 2
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %52, %42, %33
  %57 = load ptr, ptr %28, align 4
  %58 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %57, i32 0, i32 7
  %59 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %58) #12
  %60 = icmp eq ptr %59, null
  br i1 %60, label %101, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 8
  %63 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %59, i32 noundef 0) #12
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.bdisp_fmt, ptr %66, i32 0, i32 1
  %68 = load i8, ptr %67, align 4
  %69 = icmp ugt i8 %68, 1
  br i1 %69, label %70, label %84

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = mul i32 %74, %72
  %76 = add i32 %75, %64
  %77 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 8, i32 1
  store i32 %76, ptr %77, align 4
  %78 = load i8, ptr %67, align 4
  %79 = icmp ugt i8 %78, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = lshr i32 %75, 2
  %82 = add i32 %81, %76
  %83 = getelementptr %struct.bdisp_ctx, ptr %0, i32 0, i32 1, i32 8, i32 2
  store i32 %82, ptr %83, align 4
  br label %84

84:                                               ; preds = %80, %70, %61
  %85 = getelementptr inbounds %struct.vb2_buffer, ptr %31, i32 0, i32 5
  %86 = load i64, ptr %85, align 8
  %87 = getelementptr inbounds %struct.vb2_buffer, ptr %59, i32 0, i32 5
  store i64 %86, ptr %87, align 8
  tail call void @bdisp_dbg_perf_begin(ptr noundef %6) #12
  %88 = tail call i32 @bdisp_hw_reset(ptr noundef %6) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = tail call i32 @bdisp_hw_update(ptr noundef nonnull %0) #12
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.bdisp_dev, ptr %6, i32 0, i32 12
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.bdisp_dev, ptr %6, i32 0, i32 13
  %97 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %95, ptr noundef %96, i32 noundef 10) #12
  %98 = getelementptr inbounds %struct.bdisp_dev, ptr %6, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %98) #12
  %99 = load i32, ptr %17, align 4
  %100 = and i32 %99, -2
  store i32 %100, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #12
  br label %107

101:                                              ; preds = %90, %84, %56, %27
  %102 = phi ptr [ @.str.39, %27 ], [ @.str.39, %56 ], [ @.str.40, %84 ], [ @.str.41, %90 ]
  %103 = getelementptr inbounds %struct.bdisp_dev, ptr %6, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull %102) #13
  %105 = load i32, ptr %17, align 4
  %106 = and i32 %105, -2
  store i32 %106, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #12
  tail call fastcc void @bdisp_job_finish(ptr noundef nonnull %0, i32 noundef 6)
  br label %107

107:                                              ; preds = %101, %93, %21, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bdisp_job_abort(ptr noundef %0) #2 {
  tail call fastcc void @__bdisp_job_abort(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdisp_dbg_perf_begin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdisp_hw_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5, %1
  %11 = tail call i32 @bdisp_runtime_suspend(ptr noundef %0)
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi i32 [ %11, %10 ], [ 0, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 8
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %16 = load i16, ptr %15, align 8
  %17 = and i16 %16, 7
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %14, %10
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.bdisp_dev, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @clk_enable(ptr noundef %22) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.bdisp_dev, ptr %20, i32 0, i32 4
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #12
  %28 = getelementptr inbounds %struct.bdisp_dev, ptr %20, i32 0, i32 7, i32 2
  %29 = load ptr, ptr %28, align 4
  store ptr null, ptr %28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #12
  %30 = getelementptr inbounds %struct.bdisp_dev, ptr %20, i32 0, i32 8
  %31 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %30) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  tail call fastcc void @bdisp_job_finish(ptr noundef %29, i32 noundef 6) #12
  br label %34

34:                                               ; preds = %33, %25, %19, %14, %1
  %35 = phi i32 [ 0, %1 ], [ 0, %14 ], [ %23, %19 ], [ 0, %25 ], [ 0, %33 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 8
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  br label %41

12:                                               ; preds = %1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %7) #12
  tail call void @_set_bit(i32 noundef 3, ptr noundef %7) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  %13 = load volatile i32, ptr %7, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %7) #12
  br label %41

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #12, !annotation !18
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #12
  %18 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 11
  %19 = call i32 @prepare_to_wait_event(ptr noundef %18, ptr noundef nonnull %2, i32 noundef 2) #12
  %20 = load volatile i32, ptr %7, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %23, %17
  %24 = phi i32 [ %33, %23 ], [ 10, %17 ]
  %25 = call i32 @schedule_timeout(i32 noundef %24) #12
  %26 = call i32 @prepare_to_wait_event(ptr noundef %18, ptr noundef nonnull %2, i32 noundef 2) #12
  %27 = load volatile i32, ptr %7, align 4
  %28 = and i32 %27, 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = icmp ne i32 %25, 0
  %32 = select i1 %30, i1 true, i1 %31
  %33 = select i1 %32, i32 %25, i32 1
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %29, i1 true, i1 %34
  br i1 %35, label %36, label %23

36:                                               ; preds = %23
  call void @finish_wait(ptr noundef %18, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  call void @_clear_bit(i32 noundef 3, ptr noundef %7) #12
  br i1 %34, label %38, label %41

37:                                               ; preds = %17
  call void @finish_wait(ptr noundef %18, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  call void @_clear_bit(i32 noundef 3, ptr noundef %7) #12
  br label %41

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.bdisp_m2m_suspend) #13
  br label %44

41:                                               ; preds = %37, %36, %16, %11
  %42 = getelementptr inbounds %struct.bdisp_dev, ptr %4, i32 0, i32 9
  %43 = load ptr, ptr %42, align 8
  call void @clk_disable(ptr noundef %43) #12
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i32 [ 0, %41 ], [ -11, %38 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bdisp_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @clk_enable(ptr noundef %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 4
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %11 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 7, i32 2
  %12 = load ptr, ptr %11, align 4
  store ptr null, ptr %11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #12
  %13 = getelementptr inbounds %struct.bdisp_dev, ptr %3, i32 0, i32 8
  %14 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %13) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  tail call fastcc void @bdisp_job_finish(ptr noundef %12, i32 noundef 6) #12
  br label %17

17:                                               ; preds = %16, %8, %1
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{i64 2149264669}
!9 = !{i64 2149260493}
!10 = !{i64 2149260568, i64 2149260595, i64 2149260642, i64 2149260664, i64 2149260692, i64 2149260712}
!11 = !{i64 2149287672}
!12 = !{i64 2147972340}
!13 = !{i64 470650, i64 2147960621, i64 2147960647, i64 2147960694, i64 2147960716, i64 2147960744, i64 2147960764}
!14 = !{i64 457219, i64 457244, i64 457266, i64 457282, i64 457294, i64 457314, i64 457338, i64 457354, i64 457366}
!15 = !{i64 2147972466}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i8 0, i8 2}
!18 = !{!"auto-init"}
!19 = !{i8 0, i8 9}
