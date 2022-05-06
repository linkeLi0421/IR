; ModuleID = '/llk/IR/drivers/media/platform/rcar_jpu.c_pt.bc'
source_filename = "../drivers/media/platform/rcar_jpu.c"
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
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpu_fmt = type { i32, i32, [2 x i8], i8, i8, i8, i8, i16 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.jpu = type { %struct.mutex, %struct.spinlock, %struct.v4l2_device, %struct.video_device, %struct.video_device, ptr, ptr, ptr, i32, ptr, ptr, i32 }
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
%struct.jpu_ctx = type { ptr, i8, i16, %struct.jpu_q_data, %struct.jpu_q_data, %struct.v4l2_fh, %struct.v4l2_ctrl_handler }
%struct.jpu_q_data = type { ptr, %struct.v4l2_pix_format_mplane, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.84, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.84 = type { i8 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.81, i32 }
%union.anon.81 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.jpu_buffer = type { %struct.v4l2_m2m_buffer, i16, i8 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
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
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.82 }
%union.anon.82 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }

@jpu_dt_ids = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,jpu-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,jpu-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,jpu-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,jpu-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-jpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias265 = internal constant [24 x i8] c"alias=platform:rcar_jpu\00", section ".modinfo", align 1
@__UNIQUE_ID_author266 = internal constant [60 x i8] c"author=Mikhail Ulianov <mikhail.ulyanov@cogentembedded.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description267 = internal constant [54 x i8] c"description=Renesas R-Car JPEG processing unit driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@jpu_driver = internal global %struct.platform_driver { ptr @jpu_probe, ptr @jpu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jpu_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jpu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [9 x i8] c"rcar_jpu\00", align 1
@jpu_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @jpu_suspend, ptr @jpu_resume, ptr @jpu_suspend, ptr @jpu_resume, ptr @jpu_suspend, ptr @jpu_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@jpu_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&jpu->mutex\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cannot find IRQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"cannot claim IRQ %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to register v4l2 device\0A\00", align 1
@jpu_m2m_ops = internal constant %struct.v4l2_m2m_ops { ptr @jpu_device_run, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", align 1
@jpeg_hdrs = internal unnamed_addr global [4 x [640 x i8]] [[640 x i8] c"\FF\D8\FF\DB\00C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\DB\00C\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C0\00\11\08\00\00\00\00\03\01\00\00\02\11\01\03\11\01\FF\C4\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\1F\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [640 x i8] c"\FF\D8\FF\DB\00C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\DB\00C\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C0\00\11\08\00\00\00\00\03\01\00\00\02\11\01\03\11\01\FF\C4\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\1F\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [640 x i8] c"\FF\D8\FF\DB\00C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\DB\00C\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C0\00\11\08\00\00\00\00\03\01\00\00\02\11\01\03\11\01\FF\C4\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\1F\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [640 x i8] c"\FF\D8\FF\DB\00C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\DB\00C\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C0\00\11\08\00\00\00\00\03\01\00\00\02\11\01\03\11\01\FF\C4\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\1F\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF"], align 1
@jpu_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @jpu_open, ptr @jpu_release }, align 4
@jpu_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @jpu_querycap, ptr @jpu_enum_fmt_cap, ptr null, ptr @jpu_enum_fmt_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jpu_g_fmt, ptr @jpu_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jpu_s_fmt, ptr @jpu_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @jpu_try_fmt, ptr @jpu_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @jpu_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"\013%s: Failed to register video device\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"\016%s: encoder device registered as /dev/video%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"\016%s: decoder device registered as /dev/video%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"no active context for m2m\0A\00", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"include/media/videobuf2-core.h\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"src and dst formats do not match.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.13 = private unnamed_addr constant [20 x i8] c"timed out in reset\0A\00", align 1
@qtbl_lum = internal unnamed_addr constant [4 x [16 x i32]] [[16 x i32] [i32 336599335, i32 841891396, i32 269621030, i32 641024324, i32 420945702, i32 893469764, i32 656811573, i32 1094992964, i32 841364801, i32 1145324612, i32 775242052, i32 1145324612, i32 1044464708, i32 1145324612, i32 1145324612, i32 1145324612], [16 x i32] [i32 269159184, i32 387653406, i32 185338895, i32 337057566, i32 185339152, i32 387588911, i32 269422615, i32 438644544, i32 387192602, i32 657670208, i32 454498853, i32 859848768, i32 521610031, i32 1077952576, i32 505294656, i32 1077952576], [16 x i32] [i32 201852940, i32 286595095, i32 134809867, i32 252908055, i32 134810124, i32 320084772, i32 202050581, i32 337388597, i32 286200596, i32 505885499, i32 353571868, i32 657668923, i32 403839780, i32 859519803, i32 387392565, i32 993737531], [16 x i32] [i32 134612488, i32 202248209, i32 101058056, i32 168627215, i32 101058312, i32 219025944, i32 134744078, i32 219355171, i32 201985293, i32 337256999, i32 235736595, i32 438445863, i32 269226776, i32 572991271, i32 286201891, i32 656877351]], align 4
@qtbl_chr = internal unnamed_addr constant [4 x [16 x i32]] [[16 x i32] [i32 353968166, i32 910443588, i32 421271590, i32 910443588, i32 538452011, i32 1111770180, i32 640035637, i32 1145324612, i32 910312516, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612, i32 1145324612], [16 x i32] [i32 286200085, i32 337258032, i32 252908049, i32 337257259, i32 286397462, i32 438185525, i32 353441308, i32 505886016, i32 336861726, i32 657473600, i32 437919271, i32 809451584, i32 639839797, i32 1077952576, i32 808138048, i32 1077952576], [16 x i32] [i32 218828048, i32 336862501, i32 185470478, i32 269752864, i32 219025169, i32 337060648, i32 269357333, i32 387852338, i32 336598039, i32 505754171, i32 336860958, i32 623917883, i32 488252200, i32 842742587, i32 622864434, i32 993737531], [16 x i32] [i32 151521547, i32 236000024, i32 134875403, i32 235737366, i32 151588110, i32 219092762, i32 185273870, i32 252975649, i32 235801871, i32 337125671, i32 286068500, i32 404760359, i32 319887130, i32 556214055, i32 404101665, i32 656877351]], align 4
@hactbl_chr = internal unnamed_addr constant [45 x i32] [i32 131331, i32 50463747, i32 84214788, i32 381, i32 16909056, i32 68224274, i32 556876038, i32 324100359, i32 577836082, i32 -2121162488, i32 591573441, i32 357749232, i32 607347314, i32 -2113336810, i32 387455258, i32 623257384, i32 690631733, i32 909588537, i32 977486917, i32 1179076681, i32 1246975061, i32 1448564825, i32 1516463205, i32 1718052969, i32 1785951349, i32 1987541113, i32 2055439493, i32 -2037938039, i32 -1970105452, i32 -1785292904, i32 -1717919069, i32 -1532647769, i32 -1465275726, i32 -1280002634, i32 -1212630598, i32 -1027357499, i32 -959985463, i32 -892152876, i32 -707340328, i32 -639966750, i32 -471538202, i32 -404166166, i32 -235736076, i32 -168364040, i32 -101056512], align 4
@zigzag = internal unnamed_addr constant [64 x i8] c"\03\02\0B\13\0A\01\00\09\12\1B#\1A\11\08\07\06\0F\10\19\22+3*!\18\17\0E\05\04\0D\16\1F )2;:1('\1E\15\0E\14\10&/0987.%\1C$+6?>5,4=<", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@jpu_formats = internal global [5 x %struct.jpu_fmt] [%struct.jpu_fmt { i32 1195724874, i32 7, [2 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 1, i16 9 }, %struct.jpu_fmt { i32 909200718, i32 8, [2 x i8] c"\08\08", i8 2, i8 2, i8 33, i8 2, i16 6 }, %struct.jpu_fmt { i32 842091854, i32 8, [2 x i8] c"\08\04", i8 2, i8 2, i8 34, i8 2, i16 6 }, %struct.jpu_fmt { i32 909203022, i32 8, [2 x i8] c"\10\00", i8 2, i8 2, i8 33, i8 1, i16 6 }, %struct.jpu_fmt { i32 842094158, i32 8, [2 x i8] c"\0C\00", i8 2, i8 2, i8 34, i8 1, i16 6 }], align 4
@jpu_qops = internal constant %struct.vb2_ops { ptr @jpu_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @jpu_buf_prepare, ptr @jpu_buf_finish, ptr null, ptr @jpu_start_streaming, ptr @jpu_stop_streaming, ptr @jpu_buf_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"%s field isn't supported\0A\00", align 1
@__func__.jpu_buf_prepare = private unnamed_addr constant [16 x i8] c"jpu_buf_prepare\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"%s: data will not fit into plane (%lu < %lu)\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"incompatible or corrupted JPEG data\0A\00", align 1
@jpu_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @jpu_s_ctrl }, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"rcar_jpu encoder\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"rcar_jpu decoder\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"\013%s: %s queue busy\0A\00", align 1
@__func__.jpu_s_fmt = private unnamed_addr constant [10 x i8] c"jpu_s_fmt\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias265, ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_license268], section "llvm.metadata"
@switch.table.jpu_s_fmt = private unnamed_addr constant [13 x i32] [i32 -400, i32 -400, i32 -200, i32 -400, i32 -200, i32 -400, i32 -400, i32 -200, i32 -400, i32 -200, i32 -400, i32 -200, i32 -400], align 4

@__mod_of__jpu_dt_ids_device_table = dso_local alias [6 x %struct.of_device_id], ptr @jpu_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @jpu_driver, ptr noundef nonnull @__this_module) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @jpu_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1856, i32 noundef 3520) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %218, label %5

5:                                                ; preds = %1
  tail call void @__mutex_init(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @jpu_probe.__key) #12
  %6 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 10
  store ptr %2, ptr %7, align 4
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #12
  %9 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 7
  store ptr %8, ptr %9, align 8
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = ptrtoint ptr %8 to i32
  br label %218

13:                                               ; preds = %5
  %14 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %15 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 8
  store i32 %14, ptr %15, align 4
  %16 = icmp slt i32 %14, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #13
  br label %218

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %20, %18 ]
  %26 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %14, ptr noundef nonnull @jpu_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %25, ptr noundef nonnull %3) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %29) #13
  br label %218

30:                                               ; preds = %24
  %31 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #12
  %32 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 9
  store ptr %31, ptr %32, align 8
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #13
  %35 = load ptr, ptr %32, align 8
  %36 = ptrtoint ptr %35 to i32
  br label %218

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 2
  %39 = tail call i32 @v4l2_device_register(ptr noundef %2, ptr noundef %38) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #13
  br label %218

42:                                               ; preds = %37
  %43 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @jpu_m2m_ops) #12
  %44 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 5
  store ptr %43, ptr %44, align 8
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 2, i32 4
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %47) #13
  %49 = load ptr, ptr %44, align 8
  %50 = ptrtoint ptr %49 to i32
  br label %216

51:                                               ; preds = %163, %42
  %52 = phi i32 [ %164, %163 ], [ 0, %42 ]
  %53 = getelementptr [4 x [640 x i8]], ptr @jpeg_hdrs, i32 0, i32 %52
  %54 = getelementptr i8, ptr %53, i32 7
  %55 = getelementptr [4 x [16 x i32]], ptr @qtbl_lum, i32 0, i32 %52
  br label %56

56:                                               ; preds = %56, %51
  %57 = phi i32 [ 0, %51 ], [ %64, %56 ]
  %58 = getelementptr [64 x i8], ptr @zigzag, i32 0, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr i8, ptr %55, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr i8, ptr %54, i32 %57
  store i8 %62, ptr %63, align 1
  %64 = add nuw nsw i32 %57, 1
  %65 = icmp eq i32 %64, 64
  br i1 %65, label %66, label %56

66:                                               ; preds = %56
  %67 = getelementptr i8, ptr %53, i32 76
  %68 = getelementptr [4 x [16 x i32]], ptr @qtbl_chr, i32 0, i32 %52
  br label %69

69:                                               ; preds = %69, %66
  %70 = phi i32 [ 0, %66 ], [ %77, %69 ]
  %71 = getelementptr [64 x i8], ptr @zigzag, i32 0, i32 %70
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr i8, ptr %68, i32 %73
  %75 = load i8, ptr %74, align 1
  %76 = getelementptr i8, ptr %67, i32 %70
  store i8 %75, ptr %76, align 1
  %77 = add nuw nsw i32 %70, 1
  %78 = icmp eq i32 %77, 64
  br i1 %78, label %79, label %69

79:                                               ; preds = %69
  %80 = getelementptr i8, ptr %53, i32 164
  store i8 0, ptr %80, align 1
  %81 = getelementptr i8, ptr %53, i32 165
  store i8 1, ptr %81, align 1
  %82 = getelementptr i8, ptr %53, i32 166
  store i8 5, ptr %82, align 1
  %83 = getelementptr i8, ptr %53, i32 167
  %84 = getelementptr i8, ptr %53, i32 173
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(6) %83, i8 1, i64 6, i1 false) #12
  %85 = getelementptr i8, ptr %53, i32 181
  store i64 0, ptr %84, align 1
  store i8 1, ptr %85, align 1
  %86 = getelementptr i8, ptr %53, i32 182
  store i8 2, ptr %86, align 1
  %87 = getelementptr i8, ptr %53, i32 183
  store i8 3, ptr %87, align 1
  %88 = getelementptr i8, ptr %53, i32 184
  store i8 4, ptr %88, align 1
  %89 = getelementptr i8, ptr %53, i32 185
  store i8 5, ptr %89, align 1
  %90 = getelementptr i8, ptr %53, i32 186
  store i8 6, ptr %90, align 1
  %91 = getelementptr i8, ptr %53, i32 187
  store i8 7, ptr %91, align 1
  %92 = getelementptr i8, ptr %53, i32 188
  store i8 8, ptr %92, align 1
  %93 = getelementptr i8, ptr %53, i32 189
  store i8 9, ptr %93, align 1
  %94 = getelementptr i8, ptr %53, i32 190
  store i8 10, ptr %94, align 1
  %95 = getelementptr i8, ptr %53, i32 191
  store i8 11, ptr %95, align 1
  %96 = getelementptr i8, ptr %53, i32 197
  br label %97

97:                                               ; preds = %118, %79
  %98 = phi i32 [ %119, %118 ], [ 0, %79 ]
  %99 = or i32 %98, 3
  %100 = getelementptr i8, ptr @hactbl_chr, i32 %99
  %101 = load i8, ptr %100, align 1
  %102 = getelementptr i8, ptr %96, i32 %98
  store i8 %101, ptr %102, align 1
  %103 = or i32 %98, 1
  %104 = or i32 %98, 2
  %105 = getelementptr i8, ptr @hactbl_chr, i32 %104
  %106 = load i8, ptr %105, align 2
  %107 = getelementptr i8, ptr %96, i32 %103
  store i8 %106, ptr %107, align 1
  %108 = icmp ult i32 %104, 178
  br i1 %108, label %109, label %118

109:                                              ; preds = %97
  %110 = getelementptr i8, ptr @hactbl_chr, i32 %103
  %111 = load i8, ptr %110, align 1
  %112 = getelementptr i8, ptr %96, i32 %104
  store i8 %111, ptr %112, align 1
  %113 = icmp ult i32 %99, 178
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr i8, ptr @hactbl_chr, i32 %98
  %116 = load i8, ptr %115, align 4
  %117 = getelementptr i8, ptr %96, i32 %99
  store i8 %116, ptr %117, align 1
  br label %118

118:                                              ; preds = %114, %109, %97
  %119 = add nuw nsw i32 %98, 4
  %120 = icmp ult i32 %98, 174
  br i1 %120, label %97, label %121

121:                                              ; preds = %118
  %122 = getelementptr i8, ptr %53, i32 380
  store i8 0, ptr %122, align 1
  %123 = getelementptr i8, ptr %53, i32 381
  store i8 1, ptr %123, align 1
  %124 = getelementptr i8, ptr %53, i32 382
  store i8 5, ptr %124, align 1
  %125 = getelementptr i8, ptr %53, i32 383
  %126 = getelementptr i8, ptr %53, i32 389
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(6) %125, i8 1, i64 6, i1 false) #12
  %127 = getelementptr i8, ptr %53, i32 397
  store i64 0, ptr %126, align 1
  store i8 1, ptr %127, align 1
  %128 = getelementptr i8, ptr %53, i32 398
  store i8 2, ptr %128, align 1
  %129 = getelementptr i8, ptr %53, i32 399
  store i8 3, ptr %129, align 1
  %130 = getelementptr i8, ptr %53, i32 400
  store i8 4, ptr %130, align 1
  %131 = getelementptr i8, ptr %53, i32 401
  store i8 5, ptr %131, align 1
  %132 = getelementptr i8, ptr %53, i32 402
  store i8 6, ptr %132, align 1
  %133 = getelementptr i8, ptr %53, i32 403
  store i8 7, ptr %133, align 1
  %134 = getelementptr i8, ptr %53, i32 404
  store i8 8, ptr %134, align 1
  %135 = getelementptr i8, ptr %53, i32 405
  store i8 9, ptr %135, align 1
  %136 = getelementptr i8, ptr %53, i32 406
  store i8 10, ptr %136, align 1
  %137 = getelementptr i8, ptr %53, i32 407
  store i8 11, ptr %137, align 1
  %138 = getelementptr i8, ptr %53, i32 413
  br label %139

139:                                              ; preds = %160, %121
  %140 = phi i32 [ %161, %160 ], [ 0, %121 ]
  %141 = or i32 %140, 3
  %142 = getelementptr i8, ptr @hactbl_chr, i32 %141
  %143 = load i8, ptr %142, align 1
  %144 = getelementptr i8, ptr %138, i32 %140
  store i8 %143, ptr %144, align 1
  %145 = or i32 %140, 1
  %146 = or i32 %140, 2
  %147 = getelementptr i8, ptr @hactbl_chr, i32 %146
  %148 = load i8, ptr %147, align 2
  %149 = getelementptr i8, ptr %138, i32 %145
  store i8 %148, ptr %149, align 1
  %150 = icmp ult i32 %146, 178
  br i1 %150, label %151, label %160

151:                                              ; preds = %139
  %152 = getelementptr i8, ptr @hactbl_chr, i32 %145
  %153 = load i8, ptr %152, align 1
  %154 = getelementptr i8, ptr %138, i32 %146
  store i8 %153, ptr %154, align 1
  %155 = icmp ult i32 %141, 178
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = getelementptr i8, ptr @hactbl_chr, i32 %140
  %158 = load i8, ptr %157, align 4
  %159 = getelementptr i8, ptr %138, i32 %141
  store i8 %158, ptr %159, align 1
  br label %160

160:                                              ; preds = %156, %151, %139
  %161 = add nuw nsw i32 %140, 4
  %162 = icmp ult i32 %140, 174
  br i1 %162, label %139, label %163

163:                                              ; preds = %160
  %164 = add nuw nsw i32 %52, 1
  %165 = icmp eq i32 %164, 4
  br i1 %165, label %166, label %51

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3
  %168 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3, i32 12
  %169 = tail call i32 @strscpy(ptr noundef %168, ptr noundef nonnull @.str, i32 noundef 32) #12
  %170 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3, i32 3
  store ptr @jpu_fops, ptr %170, align 4
  %171 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3, i32 24
  store ptr @jpu_ioctl_ops, ptr %171, align 4
  %172 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3, i32 15
  store i32 -1, ptr %172, align 8
  %173 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3, i32 23
  store ptr @video_device_release_empty, ptr %173, align 8
  %174 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3, i32 26
  store ptr %3, ptr %174, align 8
  %175 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3, i32 7
  store ptr %38, ptr %175, align 4
  %176 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3, i32 14
  store i32 2, ptr %176, align 4
  %177 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3, i32 4
  store i32 67125248, ptr %177, align 8
  %178 = tail call i32 @__video_register_device(ptr noundef %167, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @__this_module) #12
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %166
  %181 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 2, i32 4
  %182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %181) #13
  br label %213

183:                                              ; preds = %166
  %184 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3, i32 5, i32 8
  store ptr %3, ptr %184, align 8
  %185 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4
  %186 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4, i32 12
  %187 = tail call i32 @strscpy(ptr noundef %186, ptr noundef nonnull @.str, i32 noundef 32) #12
  %188 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4, i32 3
  store ptr @jpu_fops, ptr %188, align 4
  %189 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4, i32 24
  store ptr @jpu_ioctl_ops, ptr %189, align 4
  %190 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4, i32 15
  store i32 -1, ptr %190, align 8
  %191 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4, i32 23
  store ptr @video_device_release_empty, ptr %191, align 8
  %192 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4, i32 26
  store ptr %3, ptr %192, align 8
  %193 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4, i32 7
  store ptr %38, ptr %193, align 4
  %194 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4, i32 14
  store i32 2, ptr %194, align 4
  %195 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4, i32 4
  store i32 67125248, ptr %195, align 8
  %196 = tail call i32 @__video_register_device(ptr noundef %185, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @__this_module) #12
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %183
  %199 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 2, i32 4
  %200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %199) #13
  tail call void @video_unregister_device(ptr noundef %167) #12
  br label %213

201:                                              ; preds = %183
  %202 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4, i32 5, i32 8
  store ptr %3, ptr %202, align 8
  %203 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %203, align 8
  %204 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 2, i32 4
  %205 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3, i32 16
  %206 = load i16, ptr %205, align 4
  %207 = zext i16 %206 to i32
  %208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %204, i32 noundef %207) #13
  %209 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4, i32 16
  %210 = load i16, ptr %209, align 4
  %211 = zext i16 %210 to i32
  %212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %204, i32 noundef %211) #13
  br label %218

213:                                              ; preds = %198, %180
  %214 = phi i32 [ %178, %180 ], [ %196, %198 ]
  %215 = load ptr, ptr %44, align 8
  tail call void @v4l2_m2m_release(ptr noundef %215) #12
  br label %216

216:                                              ; preds = %213, %46
  %217 = phi i32 [ %50, %46 ], [ %214, %213 ]
  tail call void @v4l2_device_unregister(ptr noundef %38) #12
  br label %218

218:                                              ; preds = %216, %201, %41, %34, %28, %17, %11, %1
  %219 = phi i32 [ %12, %11 ], [ %14, %17 ], [ %26, %28 ], [ %36, %34 ], [ %39, %41 ], [ %217, %216 ], [ 0, %201 ], [ -12, %1 ]
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 4
  tail call void @video_unregister_device(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 3
  tail call void @video_unregister_device(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  tail call void @v4l2_m2m_release(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 2
  tail call void @v4l2_device_unregister(ptr noundef %8) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 60
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %7 = and i32 %6, 1120
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %116, label %9

9:                                                ; preds = %2
  %10 = and i32 %6, 31848
  %11 = xor i32 %10, -1
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr i8, ptr %12, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #12, !srcloc !11
  %14 = and i32 %6, 96
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 4) #12, !srcloc !11
  br label %19

19:                                               ; preds = %16, %9
  %20 = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %20) #12
  %21 = and i32 %6, 1024
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %6, 1088
  %24 = icmp eq i32 %23, 64
  br i1 %24, label %113, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 5
  %27 = load ptr, ptr %26, align 8
  %28 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %27) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.10) #13
  br label %113

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.jpu_ctx, ptr %28, i32 0, i32 5, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %35, i32 0, i32 8
  %37 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %36) #12
  %38 = load ptr, ptr %34, align 4
  %39 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %38, i32 0, i32 7
  %40 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %39) #12
  br i1 %22, label %96, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.jpu_ctx, ptr %28, i32 0, i32 1
  %43 = load i8, ptr %42, align 4, !range !12
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %77, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr i8, ptr %46, i32 44
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %49 = shl i32 %48, 16
  %50 = load ptr, ptr %3, align 8
  %51 = getelementptr i8, ptr %50, i32 48
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %53 = shl i32 %52, 8
  %54 = or i32 %53, %49
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr i8, ptr %55, i32 52
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %58 = or i32 %54, %57
  %59 = add i32 %58, 640
  %60 = getelementptr inbounds %struct.vb2_buffer, ptr %40, i32 0, i32 4
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %45
  %64 = getelementptr %struct.vb2_buffer, ptr %40, i32 0, i32 10, i32 0, i32 4
  %65 = load i32, ptr %64, align 8
  %66 = icmp ult i32 %65, %59
  %67 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %68 = xor i1 %67, true
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %71, !prof !13

70:                                               ; preds = %63
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %71

71:                                               ; preds = %70, %63
  br i1 %66, label %72, label %74

72:                                               ; preds = %71
  %73 = load i32, ptr %64, align 8
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i32 [ %73, %72 ], [ %59, %71 ]
  %76 = getelementptr %struct.vb2_buffer, ptr %40, i32 0, i32 10, i32 0, i32 3
  store i32 %75, ptr %76, align 4
  br label %77

77:                                               ; preds = %74, %45, %41
  %78 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %37, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %40, i32 0, i32 2
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.vb2_buffer, ptr %37, i32 0, i32 5
  %82 = load i64, ptr %81, align 8
  %83 = getelementptr inbounds %struct.vb2_buffer, ptr %40, i32 0, i32 5
  store i64 %82, ptr %83, align 8
  %84 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %37, i32 0, i32 1
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 256
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %40, i32 0, i32 3
  %90 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %37, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %89, ptr noundef align 8 dereferenceable(16) %90, i32 16, i1 false)
  %91 = load i32, ptr %84, align 8
  br label %92

92:                                               ; preds = %88, %77
  %93 = phi i32 [ %91, %88 ], [ %85, %77 ]
  %94 = and i32 %93, 459064
  %95 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %40, i32 0, i32 1
  store i32 %94, ptr %95, align 8
  br label %103

96:                                               ; preds = %33
  %97 = and i32 %6, 32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %3, align 8
  %101 = getelementptr i8, ptr %100, i32 64
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  br label %103

103:                                              ; preds = %99, %92
  %104 = phi i32 [ 6, %99 ], [ 5, %92 ]
  tail call void @vb2_buffer_done(ptr noundef %37, i32 noundef %104) #12
  tail call void @vb2_buffer_done(ptr noundef %40, i32 noundef %104) #12
  br label %105

105:                                              ; preds = %103, %96
  %106 = getelementptr inbounds %struct.jpu, ptr %1, i32 0, i32 6
  store ptr null, ptr %106, align 4
  %107 = load ptr, ptr %3, align 8
  %108 = getelementptr i8, ptr %107, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 4096) #12, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %109 = load i16, ptr %20, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %111 = load ptr, ptr %26, align 8
  %112 = load ptr, ptr %34, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %111, ptr noundef %112) #12
  br label %116

113:                                              ; preds = %30, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %114 = load i16, ptr %20, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  br label %116

116:                                              ; preds = %113, %105, %2
  %117 = phi i32 [ 1, %105 ], [ 1, %113 ], [ 0, %2 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @jpu_device_run(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = add i32 %3, 10
  %5 = getelementptr inbounds %struct.jpu, ptr %2, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %9 = and i32 %8, 4096
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %15, %1
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = sub i32 %4, %12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  tail call void @schedule() #12
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr i8, ptr %16, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %19 = and i32 %18, 4096
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %44, label %11

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.jpu, ptr %2, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.13) #13
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.jpu, ptr %24, i32 0, i32 1
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #12
  %27 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 5, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %28, i32 0, i32 8
  %30 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %29) #12
  %31 = load ptr, ptr %27, align 4
  %32 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %31, i32 0, i32 7
  %33 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %32) #12
  tail call void @vb2_buffer_done(ptr noundef %30, i32 noundef 6) #12
  tail call void @vb2_buffer_done(ptr noundef %33, i32 noundef 6) #12
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.jpu, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 4096) #12, !srcloc !11
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.jpu, ptr %38, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %26) #12
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.jpu, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %27, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %42, ptr noundef %43) #12
  br label %365

44:                                               ; preds = %15, %1
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.jpu, ptr %45, i32 0, i32 1
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #12
  %48 = getelementptr inbounds %struct.jpu, ptr %2, i32 0, i32 6
  store ptr %0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 5, i32 10
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %50, i32 0, i32 8
  %52 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %51) #12
  %53 = load ptr, ptr %49, align 4
  %54 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %53, i32 0, i32 7
  %55 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %54) #12
  %56 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 1
  %57 = load i8, ptr %56, align 4, !range !12
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %308, label %59

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 3
  %61 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 3, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 3, i32 1, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 3, i32 1, i32 5, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %60, align 4
  %68 = getelementptr inbounds %struct.jpu_fmt, ptr %67, i32 0, i32 5
  %69 = load i8, ptr %68, align 4
  %70 = getelementptr inbounds %struct.jpu_fmt, ptr %67, i32 0, i32 6
  %71 = load i8, ptr %70, align 1
  %72 = tail call ptr @vb2_plane_cookie(ptr noundef %55, i32 noundef 0) #12
  %73 = load i32, ptr %72, align 4
  %74 = tail call ptr @vb2_plane_cookie(ptr noundef %52, i32 noundef 0) #12
  %75 = load i32, ptr %74, align 4
  %76 = icmp ugt i8 %71, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = tail call ptr @vb2_plane_cookie(ptr noundef %52, i32 noundef 1) #12
  %79 = load i32, ptr %78, align 4
  br label %83

80:                                               ; preds = %59
  %81 = mul i32 %64, %62
  %82 = add i32 %75, %81
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i32 [ %79, %77 ], [ %82, %80 ]
  %85 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 2
  %86 = load i16, ptr %85, align 2
  %87 = getelementptr inbounds %struct.jpu_buffer, ptr %55, i32 0, i32 1
  store i16 %86, ptr %87, align 8
  %88 = icmp eq i8 %69, 34
  %89 = select i1 %88, i32 162, i32 161
  %90 = select i1 %88, i32 49, i32 48
  %91 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #12, !srcloc !11
  %92 = load ptr, ptr %5, align 8
  %93 = getelementptr i8, ptr %92, i32 112
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %90) #12, !srcloc !11
  %94 = load ptr, ptr %5, align 8
  %95 = getelementptr i8, ptr %94, i32 160
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 6) #12, !srcloc !11
  %96 = load ptr, ptr %5, align 8
  %97 = getelementptr i8, ptr %96, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 1024) #12, !srcloc !11
  %98 = load ptr, ptr %5, align 8
  %99 = getelementptr i8, ptr %98, i32 116
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %75) #12, !srcloc !11
  %100 = load ptr, ptr %5, align 8
  %101 = getelementptr i8, ptr %100, i32 120
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %84) #12, !srcloc !11
  %102 = load ptr, ptr %5, align 8
  %103 = getelementptr i8, ptr %102, i32 132
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %66) #12, !srcloc !11
  %104 = lshr i32 %62, 8
  %105 = and i32 %104, 255
  %106 = load ptr, ptr %5, align 8
  %107 = getelementptr i8, ptr %106, i32 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #12, !srcloc !11
  %108 = and i32 %62, 255
  %109 = load ptr, ptr %5, align 8
  %110 = getelementptr i8, ptr %109, i32 40
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #12, !srcloc !11
  %111 = lshr i32 %64, 8
  %112 = and i32 %111, 255
  %113 = load ptr, ptr %5, align 8
  %114 = getelementptr i8, ptr %113, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #12, !srcloc !11
  %115 = and i32 %64, 255
  %116 = load ptr, ptr %5, align 8
  %117 = getelementptr i8, ptr %116, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #12, !srcloc !11
  %118 = load ptr, ptr %5, align 8
  %119 = getelementptr i8, ptr %118, i32 140
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %62) #12, !srcloc !11
  %120 = load ptr, ptr %5, align 8
  %121 = getelementptr i8, ptr %120, i32 136
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %64) #12, !srcloc !11
  %122 = add i32 %73, 640
  %123 = load ptr, ptr %5, align 8
  %124 = getelementptr i8, ptr %123, i32 144
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %122) #12, !srcloc !11
  %125 = load ptr, ptr %5, align 8
  %126 = getelementptr i8, ptr %125, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 20) #12, !srcloc !11
  %127 = load ptr, ptr %5, align 8
  %128 = getelementptr i8, ptr %127, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 60) #12, !srcloc !11
  %129 = load i16, ptr %85, align 2
  %130 = zext i16 %129 to i32
  %131 = getelementptr [4 x [16 x i32]], ptr @qtbl_lum, i32 0, i32 %130
  %132 = load i32, ptr %131, align 4
  %133 = load ptr, ptr %5, align 8
  %134 = getelementptr i8, ptr %133, i32 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #12, !srcloc !11
  %135 = getelementptr i32, ptr %131, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = load ptr, ptr %5, align 8
  %138 = getelementptr i8, ptr %137, i32 65540
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #12, !srcloc !11
  %139 = getelementptr i32, ptr %131, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = load ptr, ptr %5, align 8
  %142 = getelementptr i8, ptr %141, i32 65544
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %140) #12, !srcloc !11
  %143 = getelementptr i32, ptr %131, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = load ptr, ptr %5, align 8
  %146 = getelementptr i8, ptr %145, i32 65548
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #12, !srcloc !11
  %147 = getelementptr i32, ptr %131, i32 4
  %148 = load i32, ptr %147, align 4
  %149 = load ptr, ptr %5, align 8
  %150 = getelementptr i8, ptr %149, i32 65552
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %148) #12, !srcloc !11
  %151 = getelementptr i32, ptr %131, i32 5
  %152 = load i32, ptr %151, align 4
  %153 = load ptr, ptr %5, align 8
  %154 = getelementptr i8, ptr %153, i32 65556
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %152) #12, !srcloc !11
  %155 = getelementptr i32, ptr %131, i32 6
  %156 = load i32, ptr %155, align 4
  %157 = load ptr, ptr %5, align 8
  %158 = getelementptr i8, ptr %157, i32 65560
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %156) #12, !srcloc !11
  %159 = getelementptr i32, ptr %131, i32 7
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %5, align 8
  %162 = getelementptr i8, ptr %161, i32 65564
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #12, !srcloc !11
  %163 = getelementptr i32, ptr %131, i32 8
  %164 = load i32, ptr %163, align 4
  %165 = load ptr, ptr %5, align 8
  %166 = getelementptr i8, ptr %165, i32 65568
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %164) #12, !srcloc !11
  %167 = getelementptr i32, ptr %131, i32 9
  %168 = load i32, ptr %167, align 4
  %169 = load ptr, ptr %5, align 8
  %170 = getelementptr i8, ptr %169, i32 65572
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #12, !srcloc !11
  %171 = getelementptr i32, ptr %131, i32 10
  %172 = load i32, ptr %171, align 4
  %173 = load ptr, ptr %5, align 8
  %174 = getelementptr i8, ptr %173, i32 65576
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %172) #12, !srcloc !11
  %175 = getelementptr i32, ptr %131, i32 11
  %176 = load i32, ptr %175, align 4
  %177 = load ptr, ptr %5, align 8
  %178 = getelementptr i8, ptr %177, i32 65580
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %176) #12, !srcloc !11
  %179 = getelementptr i32, ptr %131, i32 12
  %180 = load i32, ptr %179, align 4
  %181 = load ptr, ptr %5, align 8
  %182 = getelementptr i8, ptr %181, i32 65584
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 %180) #12, !srcloc !11
  %183 = getelementptr i32, ptr %131, i32 13
  %184 = load i32, ptr %183, align 4
  %185 = load ptr, ptr %5, align 8
  %186 = getelementptr i8, ptr %185, i32 65588
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %184) #12, !srcloc !11
  %187 = getelementptr i32, ptr %131, i32 14
  %188 = load i32, ptr %187, align 4
  %189 = load ptr, ptr %5, align 8
  %190 = getelementptr i8, ptr %189, i32 65592
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 %188) #12, !srcloc !11
  %191 = getelementptr i32, ptr %131, i32 15
  %192 = load i32, ptr %191, align 4
  %193 = load ptr, ptr %5, align 8
  %194 = getelementptr i8, ptr %193, i32 65596
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %192) #12, !srcloc !11
  %195 = getelementptr [4 x [16 x i32]], ptr @qtbl_chr, i32 0, i32 %130
  %196 = load i32, ptr %195, align 4
  %197 = load ptr, ptr %5, align 8
  %198 = getelementptr i8, ptr %197, i32 65600
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %196) #12, !srcloc !11
  %199 = getelementptr i32, ptr %195, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = load ptr, ptr %5, align 8
  %202 = getelementptr i8, ptr %201, i32 65604
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %200) #12, !srcloc !11
  %203 = getelementptr i32, ptr %195, i32 2
  %204 = load i32, ptr %203, align 4
  %205 = load ptr, ptr %5, align 8
  %206 = getelementptr i8, ptr %205, i32 65608
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %204) #12, !srcloc !11
  %207 = getelementptr i32, ptr %195, i32 3
  %208 = load i32, ptr %207, align 4
  %209 = load ptr, ptr %5, align 8
  %210 = getelementptr i8, ptr %209, i32 65612
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %208) #12, !srcloc !11
  %211 = getelementptr i32, ptr %195, i32 4
  %212 = load i32, ptr %211, align 4
  %213 = load ptr, ptr %5, align 8
  %214 = getelementptr i8, ptr %213, i32 65616
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %212) #12, !srcloc !11
  %215 = getelementptr i32, ptr %195, i32 5
  %216 = load i32, ptr %215, align 4
  %217 = load ptr, ptr %5, align 8
  %218 = getelementptr i8, ptr %217, i32 65620
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %216) #12, !srcloc !11
  %219 = getelementptr i32, ptr %195, i32 6
  %220 = load i32, ptr %219, align 4
  %221 = load ptr, ptr %5, align 8
  %222 = getelementptr i8, ptr %221, i32 65624
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %222, i32 %220) #12, !srcloc !11
  %223 = getelementptr i32, ptr %195, i32 7
  %224 = load i32, ptr %223, align 4
  %225 = load ptr, ptr %5, align 8
  %226 = getelementptr i8, ptr %225, i32 65628
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %226, i32 %224) #12, !srcloc !11
  %227 = getelementptr i32, ptr %195, i32 8
  %228 = load i32, ptr %227, align 4
  %229 = load ptr, ptr %5, align 8
  %230 = getelementptr i8, ptr %229, i32 65632
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %228) #12, !srcloc !11
  %231 = getelementptr i32, ptr %195, i32 9
  %232 = load i32, ptr %231, align 4
  %233 = load ptr, ptr %5, align 8
  %234 = getelementptr i8, ptr %233, i32 65636
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 %232) #12, !srcloc !11
  %235 = getelementptr i32, ptr %195, i32 10
  %236 = load i32, ptr %235, align 4
  %237 = load ptr, ptr %5, align 8
  %238 = getelementptr i8, ptr %237, i32 65640
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %236) #12, !srcloc !11
  %239 = getelementptr i32, ptr %195, i32 11
  %240 = load i32, ptr %239, align 4
  %241 = load ptr, ptr %5, align 8
  %242 = getelementptr i8, ptr %241, i32 65644
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 %240) #12, !srcloc !11
  %243 = getelementptr i32, ptr %195, i32 12
  %244 = load i32, ptr %243, align 4
  %245 = load ptr, ptr %5, align 8
  %246 = getelementptr i8, ptr %245, i32 65648
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %244) #12, !srcloc !11
  %247 = getelementptr i32, ptr %195, i32 13
  %248 = load i32, ptr %247, align 4
  %249 = load ptr, ptr %5, align 8
  %250 = getelementptr i8, ptr %249, i32 65652
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 %248) #12, !srcloc !11
  %251 = getelementptr i32, ptr %195, i32 14
  %252 = load i32, ptr %251, align 4
  %253 = load ptr, ptr %5, align 8
  %254 = getelementptr i8, ptr %253, i32 65656
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 %252) #12, !srcloc !11
  %255 = getelementptr i32, ptr %195, i32 15
  %256 = load i32, ptr %255, align 4
  %257 = load ptr, ptr %5, align 8
  %258 = getelementptr i8, ptr %257, i32 65660
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 %256) #12, !srcloc !11
  %259 = load ptr, ptr %5, align 8
  %260 = getelementptr i8, ptr %259, i32 65792
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %260, i32 66817) #12, !srcloc !11
  %261 = load ptr, ptr %5, align 8
  %262 = getelementptr i8, ptr %261, i32 65796
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %262, i32 16843009) #12, !srcloc !11
  %263 = load ptr, ptr %5, align 8
  %264 = getelementptr i8, ptr %263, i32 65800
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 16777216) #12, !srcloc !11
  %265 = load ptr, ptr %5, align 8
  %266 = getelementptr i8, ptr %265, i32 65804
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %266, i32 0) #12, !srcloc !11
  %267 = load ptr, ptr %5, align 8
  %268 = getelementptr i8, ptr %267, i32 65808
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 66051) #12, !srcloc !11
  %269 = load ptr, ptr %5, align 8
  %270 = getelementptr i8, ptr %269, i32 65812
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %270, i32 67438087) #12, !srcloc !11
  %271 = load ptr, ptr %5, align 8
  %272 = getelementptr i8, ptr %271, i32 65816
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %272, i32 134810123) #12, !srcloc !11
  br label %273

273:                                              ; preds = %273, %83
  %274 = phi i32 [ %281, %273 ], [ 0, %83 ]
  %275 = getelementptr i32, ptr @hactbl_chr, i32 %274
  %276 = load i32, ptr %275, align 4
  %277 = shl i32 %274, 2
  %278 = add nuw nsw i32 %277, 65824
  %279 = load ptr, ptr %5, align 8
  %280 = getelementptr i8, ptr %279, i32 %278
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %280, i32 %276) #12, !srcloc !11
  %281 = add nuw nsw i32 %274, 1
  %282 = icmp eq i32 %281, 45
  br i1 %282, label %283, label %273

283:                                              ; preds = %273
  %284 = load ptr, ptr %5, align 8
  %285 = getelementptr i8, ptr %284, i32 66048
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %285, i32 66817) #12, !srcloc !11
  %286 = load ptr, ptr %5, align 8
  %287 = getelementptr i8, ptr %286, i32 66052
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %287, i32 16843009) #12, !srcloc !11
  %288 = load ptr, ptr %5, align 8
  %289 = getelementptr i8, ptr %288, i32 66056
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %289, i32 16777216) #12, !srcloc !11
  %290 = load ptr, ptr %5, align 8
  %291 = getelementptr i8, ptr %290, i32 66060
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %291, i32 0) #12, !srcloc !11
  %292 = load ptr, ptr %5, align 8
  %293 = getelementptr i8, ptr %292, i32 66064
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %293, i32 66051) #12, !srcloc !11
  %294 = load ptr, ptr %5, align 8
  %295 = getelementptr i8, ptr %294, i32 66068
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 67438087) #12, !srcloc !11
  %296 = load ptr, ptr %5, align 8
  %297 = getelementptr i8, ptr %296, i32 66072
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 134810123) #12, !srcloc !11
  br label %298

298:                                              ; preds = %298, %283
  %299 = phi i32 [ %306, %298 ], [ 0, %283 ]
  %300 = getelementptr i32, ptr @hactbl_chr, i32 %299
  %301 = load i32, ptr %300, align 4
  %302 = shl i32 %299, 2
  %303 = add nuw nsw i32 %302, 66080
  %304 = load ptr, ptr %5, align 8
  %305 = getelementptr i8, ptr %304, i32 %303
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %305, i32 %301) #12, !srcloc !11
  %306 = add nuw nsw i32 %299, 1
  %307 = icmp eq i32 %306, 45
  br i1 %307, label %360, label %298

308:                                              ; preds = %44
  %309 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 4
  %310 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 4, i32 1
  %311 = load i32, ptr %310, align 4
  %312 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 4, i32 1, i32 1
  %313 = load i32, ptr %312, align 4
  %314 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 4, i32 1, i32 5, i32 0, i32 1
  %315 = load i32, ptr %314, align 4
  %316 = load ptr, ptr %309, align 4
  %317 = getelementptr inbounds %struct.jpu_fmt, ptr %316, i32 0, i32 5
  %318 = load i8, ptr %317, align 4
  %319 = getelementptr inbounds %struct.jpu_buffer, ptr %52, i32 0, i32 2
  %320 = load i8, ptr %319, align 2
  %321 = icmp eq i8 %320, %318
  br i1 %321, label %328, label %322

322:                                              ; preds = %308
  %323 = load ptr, ptr %0, align 4
  %324 = getelementptr inbounds %struct.jpu, ptr %323, i32 0, i32 10
  %325 = load ptr, ptr %324, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %325, ptr noundef nonnull @.str.12) #13
  %326 = load ptr, ptr %0, align 4
  %327 = getelementptr inbounds %struct.jpu, ptr %326, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %327, i32 noundef %47) #12
  tail call fastcc void @jpu_cleanup(ptr noundef %0, i1 noundef zeroext false)
  br label %365

328:                                              ; preds = %308
  %329 = tail call ptr @vb2_plane_cookie(ptr noundef %52, i32 noundef 0) #12
  %330 = load i32, ptr %329, align 4
  %331 = tail call ptr @vb2_plane_cookie(ptr noundef %55, i32 noundef 0) #12
  %332 = load i32, ptr %331, align 4
  %333 = load ptr, ptr %309, align 4
  %334 = getelementptr inbounds %struct.jpu_fmt, ptr %333, i32 0, i32 6
  %335 = load i8, ptr %334, align 1
  %336 = icmp ugt i8 %335, 1
  br i1 %336, label %337, label %340

337:                                              ; preds = %328
  %338 = tail call ptr @vb2_plane_cookie(ptr noundef %55, i32 noundef 1) #12
  %339 = load i32, ptr %338, align 4
  br label %343

340:                                              ; preds = %328
  %341 = mul i32 %313, %311
  %342 = add i32 %332, %341
  br label %343

343:                                              ; preds = %340, %337
  %344 = phi i32 [ %339, %337 ], [ %342, %340 ]
  %345 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %345, i32 136) #12, !srcloc !11
  %346 = load ptr, ptr %5, align 8
  %347 = getelementptr i8, ptr %346, i32 112
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %347, i32 48) #12, !srcloc !11
  %348 = load ptr, ptr %5, align 8
  %349 = getelementptr i8, ptr %348, i32 160
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %349, i32 6) #12, !srcloc !11
  %350 = load ptr, ptr %5, align 8
  %351 = getelementptr i8, ptr %350, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %351, i32 1248) #12, !srcloc !11
  %352 = load ptr, ptr %5, align 8
  %353 = getelementptr i8, ptr %352, i32 164
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %353, i32 %330) #12, !srcloc !11
  %354 = load ptr, ptr %5, align 8
  %355 = getelementptr i8, ptr %354, i32 188
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %355, i32 %332) #12, !srcloc !11
  %356 = load ptr, ptr %5, align 8
  %357 = getelementptr i8, ptr %356, i32 192
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %357, i32 %344) #12, !srcloc !11
  %358 = load ptr, ptr %5, align 8
  %359 = getelementptr i8, ptr %358, i32 176
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %359, i32 %315) #12, !srcloc !11
  br label %360

360:                                              ; preds = %343, %298
  %361 = load ptr, ptr %5, align 8
  %362 = getelementptr i8, ptr %361, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %362, i32 1) #12, !srcloc !11
  %363 = load ptr, ptr %0, align 4
  %364 = getelementptr inbounds %struct.jpu, ptr %363, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %364, i32 noundef %47) #12
  br label %365

365:                                              ; preds = %360, %322, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @jpu_cleanup(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 5, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 8
  %9 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %8) #12
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %10, i32 0, i32 7
  %12 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %11) #12
  tail call void @vb2_buffer_done(ptr noundef %9, i32 noundef 6) #12
  tail call void @vb2_buffer_done(ptr noundef %12, i32 noundef 6) #12
  br i1 %1, label %13, label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.jpu, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 4096) #12, !srcloc !11
  br label %18

18:                                               ; preds = %13, %2
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.jpu, ptr %19, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %5) #12
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.jpu, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %6, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %23, ptr noundef %24) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_open(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @video_devdata(ptr noundef %0) #12
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 600) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %81, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.jpu_ctx, ptr %7, i32 0, i32 5
  tail call void @v4l2_fh_init(ptr noundef %10, ptr noundef %5) #12
  %11 = getelementptr inbounds %struct.jpu_ctx, ptr %7, i32 0, i32 6
  %12 = getelementptr inbounds %struct.jpu_ctx, ptr %7, i32 0, i32 5, i32 2
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %10, ptr %13, align 8
  tail call void @v4l2_fh_add(ptr noundef %10) #12
  store ptr %4, ptr %7, align 8
  %14 = getelementptr inbounds %struct.jpu, ptr %4, i32 0, i32 3
  %15 = icmp eq ptr %5, %14
  %16 = getelementptr inbounds %struct.jpu_ctx, ptr %7, i32 0, i32 1
  %17 = zext i1 %15 to i8
  store i8 %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.jpu_ctx, ptr %7, i32 0, i32 3
  %19 = getelementptr inbounds %struct.jpu_ctx, ptr %7, i32 0, i32 3, i32 1
  tail call fastcc void @__jpu_try_fmt(ptr noundef nonnull %7, ptr noundef %18, ptr noundef %19, i32 noundef 10)
  %20 = getelementptr inbounds %struct.jpu_ctx, ptr %7, i32 0, i32 4
  %21 = getelementptr inbounds %struct.jpu_ctx, ptr %7, i32 0, i32 4, i32 1
  tail call fastcc void @__jpu_try_fmt(ptr noundef nonnull %7, ptr noundef %20, ptr noundef %21, i32 noundef 9)
  %22 = getelementptr inbounds %struct.jpu, ptr %4, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %23, ptr noundef nonnull %7, ptr noundef nonnull @jpu_queue_init) #12
  %25 = getelementptr inbounds %struct.jpu_ctx, ptr %7, i32 0, i32 5, i32 10
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %9
  %28 = ptrtoint ptr %24 to i32
  br label %79

29:                                               ; preds = %9
  %30 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %11, i32 noundef 1, ptr noundef null, ptr noundef null) #12
  %31 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %11, ptr noundef nonnull @jpu_ctrl_ops, i32 noundef 10291459, i64 noundef 0, i64 noundef 3, i64 noundef 1, i64 noundef 0) #12
  %32 = getelementptr inbounds %struct.jpu_ctx, ptr %7, i32 0, i32 6, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load i8, ptr %16, align 4, !range !12
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.v4l2_ctrl, ptr %31, i32 0, i32 20
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 132
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %11) #12
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  tail call void @v4l2_ctrl_handler_free(ptr noundef %11) #12
  br label %79

46:                                               ; preds = %29
  tail call void @v4l2_ctrl_handler_free(ptr noundef %11) #12
  %47 = icmp slt i32 %33, 0
  br i1 %47, label %79, label %48

48:                                               ; preds = %46, %42
  %49 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.jpu, ptr %4, i32 0, i32 11
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.jpu, ptr %4, i32 0, i32 9
  %57 = load ptr, ptr %56, align 8
  %58 = tail call i32 @clk_prepare(ptr noundef %57) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = tail call i32 @clk_enable(ptr noundef %57) #12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  tail call void @clk_unprepare(ptr noundef %57) #12
  br label %64

64:                                               ; preds = %63, %55
  %65 = phi i32 [ %58, %55 ], [ %61, %63 ]
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %64, %60
  %68 = tail call fastcc i32 @jpu_reset(ptr noundef %4)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, ptr %52, align 8
  br label %72

72:                                               ; preds = %70, %51
  %73 = phi i32 [ %71, %70 ], [ %53, %51 ]
  %74 = add i32 %73, 1
  store i32 %74, ptr %52, align 8
  tail call void @mutex_unlock(ptr noundef %4) #12
  br label %81

75:                                               ; preds = %67
  %76 = load ptr, ptr %56, align 8
  tail call void @clk_disable(ptr noundef %76) #12
  tail call void @clk_unprepare(ptr noundef %76) #12
  br label %77

77:                                               ; preds = %75, %64
  %78 = phi i32 [ %65, %64 ], [ %68, %75 ]
  tail call void @mutex_unlock(ptr noundef %4) #12
  br label %79

79:                                               ; preds = %77, %48, %46, %45, %27
  %80 = phi i32 [ %28, %27 ], [ %33, %46 ], [ %78, %77 ], [ -512, %48 ], [ %43, %45 ]
  tail call void @v4l2_fh_del(ptr noundef %10) #12
  tail call void @v4l2_fh_exit(ptr noundef %10) #12
  tail call void @kfree(ptr noundef nonnull %7) #12
  br label %81

81:                                               ; preds = %79, %72, %1
  %82 = phi i32 [ %80, %79 ], [ 0, %72 ], [ -12, %1 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_release(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -408
  %8 = getelementptr i8, ptr %6, i32 76
  %9 = load ptr, ptr %8, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %9) #12
  %10 = getelementptr i8, ptr %6, i32 80
  tail call void @v4l2_ctrl_handler_free(ptr noundef %10) #12
  tail call void @v4l2_fh_del(ptr noundef %6) #12
  tail call void @v4l2_fh_exit(ptr noundef %6) #12
  tail call void @kfree(ptr noundef %7) #12
  tail call void @mutex_lock(ptr noundef %4) #12
  %11 = getelementptr inbounds %struct.jpu, ptr %4, i32 0, i32 11
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.jpu, ptr %4, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  tail call void @clk_disable(ptr noundef %17) #12
  tail call void @clk_unprepare(ptr noundef %17) #12
  br label %18

18:                                               ; preds = %15, %1
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__jpu_try_fmt(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
  switch i32 %3, label %6 [
    i32 12, label %5
    i32 10, label %5
    i32 8, label %5
    i32 7, label %5
    i32 5, label %5
    i32 3, label %5
    i32 2, label %5
    i32 14, label %5
  ]

5:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i32 [ 2, %5 ], [ 1, %4 ]
  %8 = phi i1 [ true, %5 ], [ false, %4 ]
  %9 = phi i32 [ 8, %5 ], [ 4, %4 ]
  %10 = getelementptr inbounds %struct.jpu_ctx, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 2
  %12 = load i8, ptr %10, align 4, !range !12
  %13 = load i32, ptr %11, align 1
  %14 = icmp eq i8 %12, 0
  %15 = select i1 %14, i32 %9, i32 %7
  %16 = load i32, ptr @jpu_formats, align 4
  %17 = icmp eq i32 %16, %13
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 0, i32 7), align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %15, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %94

23:                                               ; preds = %18, %6
  %24 = load i32, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1), align 4
  %25 = icmp eq i32 %24, %13
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1, i32 7), align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %15, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %94

31:                                               ; preds = %26, %23
  %32 = load i32, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2), align 4
  %33 = icmp eq i32 %32, %13
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2, i32 7), align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %15, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %94

39:                                               ; preds = %34, %31
  %40 = load i32, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3), align 4
  %41 = icmp eq i32 %40, %13
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3, i32 7), align 2
  %44 = zext i16 %43 to i32
  %45 = and i32 %15, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %94

47:                                               ; preds = %42, %39
  %48 = load i32, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4), align 4
  %49 = icmp eq i32 %48, %13
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4, i32 7), align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %15, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %94

55:                                               ; preds = %50, %47
  %56 = select i1 %8, i32 909200718, i32 1195724874
  %57 = select i1 %8, i32 1195724874, i32 909200718
  %58 = select i1 %14, i32 %57, i32 %56
  %59 = icmp eq i32 %16, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 0, i32 7), align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %15, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %60, %55
  %66 = icmp eq i32 %24, %58
  br i1 %66, label %67, label %72

67:                                               ; preds = %65
  %68 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1, i32 7), align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %15, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %67, %65
  %73 = icmp eq i32 %32, %58
  br i1 %73, label %74, label %79

74:                                               ; preds = %72
  %75 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2, i32 7), align 2
  %76 = zext i16 %75 to i32
  %77 = and i32 %15, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74, %72
  %80 = icmp eq i32 %40, %58
  br i1 %80, label %81, label %86

81:                                               ; preds = %79
  %82 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3, i32 7), align 2
  %83 = zext i16 %82 to i32
  %84 = and i32 %15, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81, %79
  %87 = icmp eq i32 %48, %58
  br i1 %87, label %88, label %93

88:                                               ; preds = %86
  %89 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4, i32 7), align 2
  %90 = zext i16 %89 to i32
  %91 = and i32 %15, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %86
  br label %94

94:                                               ; preds = %93, %88, %81, %74, %67, %60, %50, %42, %34, %26, %18
  %95 = phi ptr [ @jpu_formats, %60 ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1), %67 ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2), %74 ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3), %81 ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4), %88 ], [ null, %93 ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4), %50 ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3), %42 ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2), %34 ], [ getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1), %26 ], [ @jpu_formats, %18 ]
  %96 = load i32, ptr %95, align 4
  store i32 %96, ptr %11, align 1
  %97 = getelementptr inbounds %struct.jpu_fmt, ptr %95, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 4
  store i32 %98, ptr %99, align 1
  %100 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 3
  store i32 1, ptr %100, align 1
  %101 = getelementptr inbounds %struct.jpu_fmt, ptr %95, i32 0, i32 6
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 6
  store i8 %102, ptr %103, align 1
  %104 = getelementptr inbounds %struct.jpu_fmt, ptr %95, i32 0, i32 3
  %105 = load i8, ptr %104, align 2
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 1
  %108 = getelementptr inbounds %struct.jpu_fmt, ptr %95, i32 0, i32 4
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i32, ptr %2, align 4
  %112 = load i32, ptr %107, align 4
  %113 = shl nuw i32 1, %110
  tail call void @v4l_bound_align_image(ptr noundef %2, i32 noundef 16, i32 noundef 4096, i32 noundef %106, ptr noundef %107, i32 noundef 16, i32 noundef 4096, i32 noundef %110, i32 noundef 3) #12
  %114 = load i32, ptr %2, align 4
  %115 = icmp ult i32 %114, %111
  br i1 %115, label %116, label %121

116:                                              ; preds = %94
  %117 = shl nuw i32 1, %106
  %118 = add i32 %114, %117
  %119 = icmp ult i32 %118, 4096
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 %118, ptr %2, align 4
  br label %121

121:                                              ; preds = %120, %116, %94
  %122 = phi i32 [ %118, %120 ], [ %114, %116 ], [ %114, %94 ]
  %123 = load i32, ptr %107, align 4
  %124 = icmp ult i32 %123, %112
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = add i32 %123, %113
  %127 = icmp ult i32 %126, 4096
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 %126, ptr %107, align 4
  br label %129

129:                                              ; preds = %128, %125, %121
  %130 = phi i32 [ %123, %121 ], [ %123, %125 ], [ %126, %128 ]
  %131 = load i32, ptr %95, align 4
  %132 = icmp eq i32 %131, 1195724874
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i8, ptr %103, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i8 %134, 0
  br i1 %136, label %158, label %150

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5
  %139 = load i32, ptr %138, align 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = load i8, ptr %10, align 4, !range !12
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %141, %137
  %145 = shl i32 %122, 1
  %146 = mul i32 %145, %130
  %147 = add i32 %146, 640
  store i32 %147, ptr %138, align 1
  br label %148

148:                                              ; preds = %144, %141
  %149 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 0, i32 1
  store i32 0, ptr %149, align 1
  br label %180

150:                                              ; preds = %150, %133
  %151 = phi i32 [ %156, %150 ], [ 0, %133 ]
  %152 = phi i32 [ %155, %150 ], [ 0, %133 ]
  %153 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 %151, i32 1
  %154 = load i32, ptr %153, align 1
  %155 = tail call i32 @llvm.umax.i32(i32 %152, i32 %154)
  %156 = add nuw nsw i32 %151, 1
  %157 = icmp eq i32 %156, %135
  br i1 %157, label %158, label %150

158:                                              ; preds = %150, %133
  %159 = phi i32 [ 0, %133 ], [ %155, %150 ]
  %160 = tail call i32 @llvm.umax.i32(i32 %159, i32 %122)
  %161 = tail call i32 @llvm.umin.i32(i32 %160, i32 4096)
  %162 = add nsw i32 %161, -1
  %163 = or i32 %162, 7
  %164 = add nsw i32 %163, 1
  br i1 %136, label %180, label %165

165:                                              ; preds = %158
  %166 = mul i32 %164, %130
  br label %167

167:                                              ; preds = %167, %165
  %168 = phi i32 [ 0, %165 ], [ %176, %167 ]
  %169 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 %168
  %170 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 %168, i32 1
  store i32 %164, ptr %170, align 1
  %171 = getelementptr %struct.jpu_fmt, ptr %95, i32 0, i32 2, i32 %168
  %172 = load i8, ptr %171, align 1
  %173 = zext i8 %172 to i32
  %174 = mul i32 %166, %173
  %175 = lshr exact i32 %174, 3
  store i32 %175, ptr %169, align 1
  %176 = add nuw nsw i32 %168, 1
  %177 = load i8, ptr %103, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp ult i32 %176, %178
  br i1 %179, label %167, label %180

180:                                              ; preds = %167, %158, %148
  %181 = icmp eq ptr %1, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %180
  store ptr %95, ptr %1, align 4
  br label %183

183:                                              ; preds = %182, %180
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_queue_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds i8, ptr %1, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(340) %4, i8 0, i32 332, i1 false)
  store i32 10, ptr %1, align 4
  %5 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 1
  store i32 17, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 12
  store i32 656, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 7
  store ptr @jpu_qops, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 13
  store i32 16384, ptr %10, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 5
  store ptr %11, ptr %12, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.jpu, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = tail call i32 @vb2_queue_init(ptr noundef %1) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = getelementptr inbounds i8, ptr %2, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(340) %20, i8 0, i32 332, i1 false)
  store i32 9, ptr %2, align 4
  %21 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 1
  store i32 17, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  store ptr %0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 12
  store i32 656, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 7
  store ptr @jpu_qops, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 13
  store i32 16384, ptr %26, align 4
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 5
  store ptr %27, ptr %28, align 4
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.jpu, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = tail call i32 @vb2_queue_init(ptr noundef %2) #12
  br label %34

34:                                               ; preds = %19, %3
  %35 = phi i32 [ %33, %19 ], [ %17, %3 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @jpu_reset(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.jpu, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !10
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 4096) #12, !srcloc !11
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, 10
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr i8, ptr %7, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %10 = and i32 %9, 4096
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %19, %1
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = sub i32 %6, %13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.jpu, ptr %0, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.13) #13
  br label %25

19:                                               ; preds = %12
  tail call void @schedule() #12
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr i8, ptr %20, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !9
  %23 = and i32 %22, 4096
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %12

25:                                               ; preds = %19, %16, %1
  %26 = phi i32 [ -110, %16 ], [ 0, %1 ], [ 0, %19 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #8 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  switch i32 %8, label %11 [
    i32 14, label %9
    i32 12, label %9
    i32 10, label %9
    i32 8, label %9
    i32 7, label %9
    i32 5, label %9
    i32 3, label %9
    i32 2, label %9
  ]

9:                                                ; preds = %5, %5, %5, %5, %5, %5, %5, %5
  %10 = getelementptr inbounds %struct.jpu_ctx, ptr %7, i32 0, i32 3
  br label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.jpu_ctx, ptr %7, i32 0, i32 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.jpu_q_data, ptr %14, i32 0, i32 1, i32 6
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  br i1 %16, label %32, label %20

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, %19
  br i1 %21, label %25, label %42

22:                                               ; preds = %25
  %23 = add nuw i32 %26, 1
  %24 = icmp eq i32 %23, %15
  br i1 %24, label %42, label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %23, %22 ], [ 0, %20 ]
  %27 = getelementptr %struct.jpu_q_data, ptr %14, i32 0, i32 1, i32 5, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i32, ptr %3, i32 %26
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, %28
  br i1 %31, label %42, label %22

32:                                               ; preds = %13
  store i32 %19, ptr %2, align 4
  %33 = icmp eq i8 %18, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %34, %32
  %35 = phi i32 [ %39, %34 ], [ 0, %32 ]
  %36 = getelementptr %struct.jpu_q_data, ptr %14, i32 0, i32 1, i32 5, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i32, ptr %3, i32 %35
  store i32 %37, ptr %38, align 4
  %39 = add nuw i32 %35, 1
  %40 = load i32, ptr %2, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %34, label %42

42:                                               ; preds = %34, %32, %25, %22, %20
  %43 = phi i32 [ -22, %20 ], [ 0, %32 ], [ 0, %34 ], [ -22, %25 ], [ 0, %22 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_buf_prepare(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %8 [
    i32 14, label %6
    i32 12, label %6
    i32 10, label %6
    i32 8, label %6
    i32 7, label %6
    i32 5, label %6
    i32 3, label %6
    i32 2, label %6
  ]

6:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %7 = getelementptr inbounds %struct.jpu_ctx, ptr %4, i32 0, i32 3
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.jpu_ctx, ptr %4, i32 0, i32 4
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  switch i32 %5, label %20 [
    i32 2, label %12
    i32 10, label %12
    i32 3, label %12
    i32 8, label %12
    i32 5, label %12
    i32 7, label %12
    i32 12, label %12
    i32 14, label %12
  ]

12:                                               ; preds = %10, %10, %10, %10, %10, %10, %10, %10
  %13 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %16 [
    i32 0, label %15
    i32 1, label %20
  ]

15:                                               ; preds = %12
  store i32 1, ptr %13, align 4
  br label %20

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.jpu, ptr %17, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.jpu_buf_prepare) #13
  br label %72

20:                                               ; preds = %15, %12, %10
  %21 = getelementptr inbounds %struct.jpu_q_data, ptr %11, i32 0, i32 1, i32 6
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %72, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %26 = getelementptr inbounds %struct.jpu_ctx, ptr %4, i32 0, i32 1
  br label %27

27:                                               ; preds = %67, %24
  %28 = phi i8 [ %22, %24 ], [ %68, %67 ]
  %29 = phi i32 [ 0, %24 ], [ %69, %67 ]
  %30 = getelementptr %struct.jpu_q_data, ptr %11, i32 0, i32 1, i32 5, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %25, align 8
  %33 = icmp ugt i32 %32, %29
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %29, i32 4
  %36 = load i32, ptr %35, align 8
  %37 = icmp ult i32 %36, %31
  br i1 %37, label %40, label %45

38:                                               ; preds = %27
  %39 = icmp eq i32 %31, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %36, %34 ], [ 0, %38 ]
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr inbounds %struct.jpu, ptr %42, i32 0, i32 10
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.jpu_buf_prepare, i32 noundef %41, i32 noundef %31) #13
  br label %72

45:                                               ; preds = %38, %34
  %46 = load i8, ptr %26, align 4, !range !12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load ptr, ptr %0, align 8
  %50 = load i32, ptr %49, align 4
  switch i32 %50, label %51 [
    i32 2, label %67
    i32 10, label %67
    i32 3, label %67
    i32 8, label %67
    i32 5, label %67
    i32 7, label %67
    i32 12, label %67
    i32 14, label %67
  ]

51:                                               ; preds = %48
  br i1 %33, label %52, label %67

52:                                               ; preds = %51
  %53 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %29, i32 4
  %54 = load i32, ptr %53, align 8
  %55 = icmp ult i32 %54, %31
  %56 = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  %57 = xor i1 %56, true
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %60, !prof !13

59:                                               ; preds = %52
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %60

60:                                               ; preds = %59, %52
  br i1 %55, label %61, label %63

61:                                               ; preds = %60
  %62 = load i32, ptr %53, align 8
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i32 [ %62, %61 ], [ %31, %60 ]
  %65 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %29, i32 3
  store i32 %64, ptr %65, align 4
  %66 = load i8, ptr %21, align 4
  br label %67

67:                                               ; preds = %63, %51, %48, %48, %48, %48, %48, %48, %48, %48, %45
  %68 = phi i8 [ %66, %63 ], [ %28, %51 ], [ %28, %48 ], [ %28, %48 ], [ %28, %48 ], [ %28, %48 ], [ %28, %48 ], [ %28, %48 ], [ %28, %48 ], [ %28, %48 ], [ %28, %45 ]
  %69 = add nuw nsw i32 %29, 1
  %70 = zext i8 %68 to i32
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %27, label %72

72:                                               ; preds = %67, %40, %20, %16
  %73 = phi i32 [ -22, %16 ], [ -22, %40 ], [ 0, %20 ], [ 0, %67 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @jpu_buf_finish(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.jpu_ctx, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %2, align 4
  %7 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  switch i32 %6, label %11 [
    i32 14, label %13
    i32 12, label %13
    i32 10, label %13
    i32 8, label %13
    i32 7, label %13
    i32 5, label %13
    i32 3, label %13
    i32 2, label %13
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.jpu_ctx, ptr %4, i32 0, i32 4
  br label %13

13:                                               ; preds = %11, %10, %10, %10, %10, %10, %10, %10, %10
  %14 = phi ptr [ %12, %11 ], [ %5, %10 ], [ %5, %10 ], [ %5, %10 ], [ %5, %10 ], [ %5, %10 ], [ %5, %10 ], [ %5, %10 ], [ %5, %10 ]
  %15 = getelementptr inbounds %struct.jpu_q_data, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 4
  store i32 %16, ptr %18, align 8
  br label %19

19:                                               ; preds = %13, %1
  %20 = getelementptr inbounds %struct.jpu_ctx, ptr %4, i32 0, i32 1
  %21 = load i8, ptr %20, align 4, !range !12
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %7, align 8
  %25 = freeze i32 %24
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  switch i32 %6, label %28 [
    i32 14, label %48
    i32 12, label %48
    i32 10, label %48
    i32 8, label %48
    i32 7, label %48
    i32 5, label %48
    i32 3, label %48
    i32 2, label %48
  ]

28:                                               ; preds = %27
  %29 = tail call ptr @vb2_plane_vaddr(ptr noundef %0, i32 noundef 0) #12
  %30 = getelementptr inbounds %struct.jpu_buffer, ptr %0, i32 0, i32 1
  %31 = load i16, ptr %30, align 8
  %32 = zext i16 %31 to i32
  %33 = getelementptr [4 x [640 x i8]], ptr @jpeg_hdrs, i32 0, i32 %32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(640) %29, ptr noundef align 1 dereferenceable(640) %33, i32 640, i1 false)
  %34 = getelementptr inbounds %struct.jpu_ctx, ptr %4, i32 0, i32 3, i32 1
  %35 = getelementptr inbounds %struct.jpu_ctx, ptr %4, i32 0, i32 3, i32 1, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = trunc i32 %36 to i16
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %39 = getelementptr i8, ptr %29, i32 145
  store i16 %38, ptr %39, align 2
  %40 = load i32, ptr %34, align 4
  %41 = trunc i32 %40 to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = getelementptr i8, ptr %29, i32 147
  store i16 %42, ptr %43, align 2
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr inbounds %struct.jpu_fmt, ptr %44, i32 0, i32 5
  %46 = load i8, ptr %45, align 4
  %47 = getelementptr i8, ptr %29, i32 151
  store i8 %46, ptr %47, align 1
  br label %48

48:                                               ; preds = %28, %27, %27, %27, %27, %27, %27, %27, %27, %23, %19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @jpu_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  switch i32 %5, label %8 [
    i32 14, label %6
    i32 12, label %6
    i32 10, label %6
    i32 8, label %6
    i32 7, label %6
    i32 5, label %6
    i32 3, label %6
    i32 2, label %6
  ]

6:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %7 = getelementptr inbounds %struct.jpu_ctx, ptr %4, i32 0, i32 3
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.jpu_ctx, ptr %4, i32 0, i32 4
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.jpu_q_data, ptr %11, i32 0, i32 2
  store i32 0, ptr %12, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @jpu_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.jpu_ctx, ptr %3, i32 0, i32 5, i32 10
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, ptr %0, align 4
  switch i32 %6, label %10 [
    i32 2, label %7
    i32 10, label %7
    i32 3, label %7
    i32 8, label %7
    i32 5, label %7
    i32 7, label %7
    i32 12, label %7
    i32 14, label %7
  ]

7:                                                ; preds = %5, %5, %5, %5, %5, %5, %5, %5
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 8
  br label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %11, i32 0, i32 7
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %12, %10 ], [ %9, %7 ]
  %15 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %14) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  ret void

18:                                               ; preds = %13
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.jpu, ptr %19, i32 0, i32 1
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #12
  tail call void @vb2_buffer_done(ptr noundef nonnull %15, i32 noundef 6) #12
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.jpu, ptr %22, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %21) #12
  br label %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @jpu_buf_queue(ptr noundef %0) #2 {
  %2 = alloca %struct.jpu_q_data, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.jpu_ctx, ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 4, !range !12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %113

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4
  switch i32 %10, label %113 [
    i32 2, label %11
    i32 10, label %11
    i32 3, label %11
    i32 8, label %11
    i32 5, label %11
    i32 7, label %11
    i32 12, label %11
    i32 14, label %11
  ]

11:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(200) %2, i8 0, i32 200, i1 false), !annotation !18
  %12 = tail call ptr @vb2_plane_vaddr(ptr noundef %0, i32 noundef 0) #12
  %13 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %118, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %12, i32 %18
  %20 = icmp ult i32 %18, 25
  br i1 %20, label %118, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %19, i32 -1
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, -39
  %25 = icmp ugt ptr %19, %12
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %118

27:                                               ; preds = %21
  %28 = ptrtoint ptr %19 to i32
  br label %29

29:                                               ; preds = %90, %27
  %30 = phi i1 [ false, %27 ], [ %92, %90 ]
  %31 = phi ptr [ %12, %27 ], [ %91, %90 ]
  br label %32

32:                                               ; preds = %36, %29
  %33 = phi ptr [ %31, %29 ], [ %34, %36 ]
  %34 = getelementptr i8, ptr %33, i32 1
  %35 = load i8, ptr %33, align 1
  switch i8 %35, label %38 [
    i8 -1, label %36
    i8 0, label %36
  ]

36:                                               ; preds = %32, %32
  %37 = icmp ult ptr %34, %19
  br i1 %37, label %32, label %118

38:                                               ; preds = %32
  %39 = xor i1 %30, true
  %40 = icmp eq i8 %35, -40
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %90, label %42

42:                                               ; preds = %38
  %43 = xor i1 %30, %40
  br i1 %43, label %44, label %118

44:                                               ; preds = %42
  switch i8 %35, label %118 [
    i8 -64, label %45
    i8 -60, label %76
    i8 -37, label %76
    i8 -2, label %76
    i8 -35, label %76
    i8 -32, label %76
    i8 -31, label %76
    i8 -30, label %76
    i8 -29, label %76
    i8 -28, label %76
    i8 -27, label %76
    i8 -26, label %76
    i8 -25, label %76
    i8 -24, label %76
    i8 -23, label %76
    i8 -22, label %76
    i8 -21, label %76
    i8 -20, label %76
    i8 -19, label %76
    i8 -18, label %76
    i8 -17, label %76
  ]

45:                                               ; preds = %44
  %46 = ptrtoint ptr %34 to i32
  %47 = sub i32 %28, %46
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 3) #12
  %49 = getelementptr i8, ptr %34, i32 %48
  %50 = ptrtoint ptr %49 to i32
  %51 = sub i32 %28, %50
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %118, label %53

53:                                               ; preds = %45
  %54 = load i16, ptr %49, align 1
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #12
  %56 = zext i16 %55 to i32
  %57 = getelementptr i8, ptr %49, i32 2
  %58 = ptrtoint ptr %57 to i32
  %59 = sub i32 %28, %58
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %118, label %61

61:                                               ; preds = %53
  %62 = load i16, ptr %57, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #12
  %64 = zext i16 %63 to i32
  %65 = getelementptr i8, ptr %57, i32 2
  %66 = icmp ult ptr %65, %19
  br i1 %66, label %67, label %118

67:                                               ; preds = %61
  %68 = load i8, ptr %65, align 1
  %69 = icmp eq i8 %68, 3
  br i1 %69, label %70, label %118

70:                                               ; preds = %67
  %71 = getelementptr i8, ptr %65, i32 1
  %72 = icmp ne ptr %19, %71
  %73 = zext i1 %72 to i32
  %74 = getelementptr i8, ptr %71, i32 %73
  %75 = icmp ult ptr %74, %19
  br i1 %75, label %94, label %118

76:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %77 = ptrtoint ptr %34 to i32
  %78 = sub i32 %28, %77
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %118, label %80

80:                                               ; preds = %76
  %81 = load i16, ptr %34, align 1
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #12
  %83 = zext i16 %82 to i32
  %84 = getelementptr i8, ptr %33, i32 3
  %85 = add nsw i32 %83, -2
  %86 = ptrtoint ptr %84 to i32
  %87 = sub i32 %28, %86
  %88 = tail call i32 @llvm.umin.i32(i32 %87, i32 %85) #12
  %89 = getelementptr i8, ptr %84, i32 %88
  br label %90

90:                                               ; preds = %80, %38
  %91 = phi ptr [ %34, %38 ], [ %89, %80 ]
  %92 = phi i1 [ true, %38 ], [ %30, %80 ]
  %93 = icmp ult ptr %91, %19
  br i1 %93, label %29, label %118

94:                                               ; preds = %70
  %95 = load i8, ptr %74, align 1
  %96 = add i8 %95, -35
  %97 = icmp ult i8 %96, -2
  br i1 %97, label %118, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.jpu_ctx, ptr %5, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(200) %2, ptr noundef align 4 dereferenceable(200) %99, i32 200, i1 false)
  %100 = getelementptr inbounds %struct.jpu_q_data, ptr %2, i32 0, i32 1
  store i32 %64, ptr %100, align 4
  %101 = getelementptr inbounds %struct.jpu_q_data, ptr %2, i32 0, i32 1, i32 1
  store i32 %56, ptr %101, align 4
  call fastcc void @__jpu_try_fmt(ptr noundef %5, ptr noundef nonnull %2, ptr noundef %100, i32 noundef 10)
  %102 = load i32, ptr %100, align 4
  %103 = getelementptr inbounds %struct.jpu_ctx, ptr %5, i32 0, i32 3, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = load i32, ptr %101, align 4
  %108 = getelementptr inbounds %struct.jpu_ctx, ptr %5, i32 0, i32 3, i32 1, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.jpu_buffer, ptr %0, i32 0, i32 2
  store i8 %95, ptr %112, align 2
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #12
  br label %113

113:                                              ; preds = %111, %9, %1
  %114 = getelementptr inbounds %struct.jpu_ctx, ptr %5, i32 0, i32 5, i32 10
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  call void @v4l2_m2m_buf_queue(ptr noundef nonnull %115, ptr noundef %0) #12
  br label %122

118:                                              ; preds = %106, %98, %94, %90, %76, %70, %67, %61, %53, %45, %44, %42, %36, %21, %16, %11
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #12
  %119 = load ptr, ptr %5, align 4
  %120 = getelementptr inbounds %struct.jpu, ptr %119, i32 0, i32 10
  %121 = load ptr, ptr %120, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.16) #13
  call void @vb2_buffer_done(ptr noundef %0, i32 noundef 6) #12
  br label %122

122:                                              ; preds = %118, %117, %113
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -488
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.jpu, ptr %5, i32 0, i32 1
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 10291459
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i16
  %15 = getelementptr i8, ptr %3, i32 -482
  store i16 %14, ptr %15, align 2
  br label %16

16:                                               ; preds = %11, %1
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.jpu, ptr %17, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %7) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_querycap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %1, i32 -408
  %5 = getelementptr i8, ptr %1, i32 -404
  %6 = load i8, ptr %5, align 4, !range !12
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %9 = select i1 %7, ptr @.str.18, ptr @.str.17
  %10 = tail call i32 @strscpy(ptr noundef %8, ptr noundef nonnull %9, i32 noundef 32) #12
  %11 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 16) #12
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.jpu, ptr %12, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load ptr, ptr %14, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = phi ptr [ %19, %18 ], [ %16, %3 ]
  %22 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.19, ptr noundef %21)
  %24 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %24, i8 0, i32 12, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @jpu_enum_fmt_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #9 {
  %4 = getelementptr i8, ptr %1, i32 -404
  %5 = load i8, ptr %4, align 4, !range !12
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 4, i32 1
  %8 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 0, i32 7), align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, ptr %2, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %12, %3
  %16 = phi i32 [ 0, %3 ], [ 1, %12 ]
  %17 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1, i32 7), align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %7, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %2, align 4
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %57, label %24

24:                                               ; preds = %21
  %25 = add nuw nsw i32 %16, 1
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi i32 [ %25, %24 ], [ %16, %15 ]
  %28 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2, i32 7), align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %7, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %57, label %35

35:                                               ; preds = %32
  %36 = add nuw nsw i32 %27, 1
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi i32 [ %36, %35 ], [ %27, %26 ]
  %39 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3, i32 7), align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %7, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %2, align 4
  %45 = icmp eq i32 %38, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = add nuw nsw i32 %38, 1
  br label %48

48:                                               ; preds = %46, %37
  %49 = phi i32 [ %47, %46 ], [ %38, %37 ]
  %50 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4, i32 7), align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %7, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load i32, ptr %2, align 4
  %56 = icmp eq i32 %49, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %54, %43, %32, %21, %12
  %58 = phi i32 [ 0, %12 ], [ 1, %21 ], [ 2, %32 ], [ 3, %43 ], [ 4, %54 ]
  %59 = getelementptr [5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %57, %54, %48
  %63 = phi i32 [ 0, %57 ], [ -22, %54 ], [ -22, %48 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @jpu_enum_fmt_out(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #9 {
  %4 = getelementptr i8, ptr %1, i32 -404
  %5 = load i8, ptr %4, align 4, !range !12
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 8, i32 2
  %8 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 0, i32 7), align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, ptr %2, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %12, %3
  %16 = phi i32 [ 0, %3 ], [ 1, %12 ]
  %17 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 1, i32 7), align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %7, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %2, align 4
  %23 = icmp eq i32 %16, %22
  br i1 %23, label %57, label %24

24:                                               ; preds = %21
  %25 = add nuw nsw i32 %16, 1
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi i32 [ %25, %24 ], [ %16, %15 ]
  %28 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 2, i32 7), align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %7, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %2, align 4
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %57, label %35

35:                                               ; preds = %32
  %36 = add nuw nsw i32 %27, 1
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi i32 [ %36, %35 ], [ %27, %26 ]
  %39 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 3, i32 7), align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %7, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %2, align 4
  %45 = icmp eq i32 %38, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = add nuw nsw i32 %38, 1
  br label %48

48:                                               ; preds = %46, %37
  %49 = phi i32 [ %47, %46 ], [ %38, %37 ]
  %50 = load i16, ptr getelementptr inbounds ([5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 4, i32 7), align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %7, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load i32, ptr %2, align 4
  %56 = icmp eq i32 %49, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %54, %43, %32, %21, %12
  %58 = phi i32 [ 0, %12 ], [ 1, %21 ], [ 2, %32 ], [ 3, %43 ], [ 4, %54 ]
  %59 = getelementptr [5 x %struct.jpu_fmt], ptr @jpu_formats, i32 0, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %57, %54, %48
  %63 = phi i32 [ 0, %57 ], [ -22, %54 ], [ -22, %48 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_g_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr i8, ptr %1, i32 76
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %5, i32 noundef %6) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 4
  %11 = add i32 %10, -2
  %12 = icmp ult i32 %11, 13
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds [13 x i32], ptr @switch.table.jpu_s_fmt, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i32 [ %15, %13 ], [ -200, %9 ]
  %18 = getelementptr i8, ptr %1, i32 %17
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %20 = getelementptr inbounds %struct.jpu_q_data, ptr %18, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(192) %19, ptr noundef align 4 dereferenceable(192) %20, i32 192, i1 false)
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i32 [ 0, %16 ], [ -22, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_s_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr noundef %2) #2 {
  %4 = alloca ptr, align 4
  %5 = getelementptr i8, ptr %1, i32 -408
  %6 = getelementptr i8, ptr %1, i32 76
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4, !annotation !18
  %8 = load i32, ptr %2, align 4
  %9 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %7, i32 noundef %8) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.vb2_queue, ptr %9, i32 0, i32 21
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.jpu, ptr %16, i32 0, i32 2, i32 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %17, ptr noundef nonnull @__func__.jpu_s_fmt) #13
  br label %33

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %21 = load i32, ptr %2, align 4
  call fastcc void @__jpu_try_fmt(ptr noundef %5, ptr noundef nonnull %4, ptr noundef %20, i32 noundef %21)
  %22 = load i32, ptr %2, align 4
  %23 = add i32 %22, -2
  %24 = icmp ult i32 %23, 13
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = getelementptr inbounds [13 x i32], ptr @switch.table.jpu_s_fmt, i32 0, i32 %23
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %27, %25 ], [ -200, %19 ]
  %30 = getelementptr i8, ptr %1, i32 %29
  %31 = getelementptr inbounds %struct.jpu_q_data, ptr %30, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(192) %31, ptr noundef align 4 dereferenceable(192) %20, i32 192, i1 false)
  %32 = load ptr, ptr %4, align 4
  store ptr %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %28, %15, %3
  %34 = phi i32 [ -16, %15 ], [ 0, %28 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_try_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %1, i32 76
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %5, i32 noundef %6) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %1, i32 -408
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %2, align 4
  tail call fastcc void @__jpu_try_fmt(ptr noundef %10, ptr noundef null, ptr noundef %11, i32 noundef %12)
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ 0, %9 ], [ -22, %3 ]
  ret i32 %14
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
define internal i32 @jpu_streamon(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca %struct.jpu_q_data, align 4
  %5 = getelementptr i8, ptr %1, i32 -408
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #12
  %6 = getelementptr i8, ptr %1, i32 -400
  %7 = getelementptr i8, ptr %1, i32 -200
  %8 = getelementptr i8, ptr %1, i32 -404
  %9 = load i8, ptr %8, align 4, !range !12
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, ptr %7, ptr %6
  %12 = select i1 %10, ptr %6, ptr %7
  %13 = select i1 %10, i32 9, i32 10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(200) %4, ptr noundef align 4 dereferenceable(200) %11, i32 200, i1 false)
  %14 = getelementptr inbounds %struct.jpu_q_data, ptr %12, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.jpu_q_data, ptr %4, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.jpu_q_data, ptr %12, i32 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.jpu_q_data, ptr %4, i32 0, i32 1, i32 1
  store i32 %18, ptr %19, align 4
  call fastcc void @__jpu_try_fmt(ptr noundef %5, ptr noundef null, ptr noundef %16, i32 noundef %13)
  %20 = load i32, ptr %16, align 4
  %21 = getelementptr inbounds %struct.jpu_q_data, ptr %11, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, ptr %19, align 4
  %26 = getelementptr inbounds %struct.jpu_q_data, ptr %11, i32 0, i32 1, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24, %3
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr inbounds %struct.jpu, ptr %30, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.12) #13
  br label %37

33:                                               ; preds = %24
  %34 = getelementptr i8, ptr %1, i32 76
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 @v4l2_m2m_streamon(ptr noundef %0, ptr noundef %35, i32 noundef %2) #12
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ -22, %29 ], [ %36, %33 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #12
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 11
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  tail call void @clk_disable(ptr noundef %9) #12
  tail call void @clk_unprepare(ptr noundef %9) #12
  br label %10

10:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @jpu_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 11
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpu, ptr %3, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = tail call i32 @clk_enable(ptr noundef %9) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #12
  br label %16

16:                                               ; preds = %15, %12, %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 3142100}
!9 = !{i64 2150681553}
!10 = !{i64 2150682775}
!11 = !{i64 3141682}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2148939141}
!15 = !{i64 2148934965}
!16 = !{i64 2148935040, i64 2148935067, i64 2148935114, i64 2148935136, i64 2148935164, i64 2148935184}
!17 = !{i64 2148962144}
!18 = !{!"auto-init"}
