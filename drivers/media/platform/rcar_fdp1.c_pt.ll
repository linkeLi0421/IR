; ModuleID = '/llk/IR/drivers/media/platform/rcar_fdp1.c_pt.bc'
source_filename = "../drivers/media/platform/rcar_fdp1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.fdp1_fmt = type { i32, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fdp1_dev = type { %struct.v4l2_device, %struct.video_device, %struct.mutex, %struct.spinlock, %struct.spinlock, ptr, i32, ptr, [8 x %struct.fdp1_job], %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.fdp1_job = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.fdp1_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_ctrl_handler, i32, i8, i32, i32, i32, i32, [2 x i32], ptr, i8, %struct.fdp1_q_data, %struct.fdp1_q_data, %struct.list_head, i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.fdp1_q_data = type { ptr, %struct.v4l2_pix_format_mplane, i32, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.84, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.84 = type { i8 }
%struct.fdp1_field_buffer = type { ptr, [3 x i32], i32, i8, %struct.list_head }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.fdp1_buffer = type { %struct.v4l2_m2m_buffer, [2 x %struct.fdp1_field_buffer], i32 }
%struct.v4l2_m2m_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.81, i32 }
%union.anon.81 = type { i32 }
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

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype258 = internal constant [20 x i8] c"parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug259 = internal constant [31 x i8] c"parm=debug:activate debug info\00", section ".modinfo", align 1
@fdp1_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,fdp1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description283 = internal constant [56 x i8] c"description=Renesas R-Car Fine Display Processor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author284 = internal constant [43 x i8] c"author=Kieran Bingham <kieran@bingham.xyz>\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias286 = internal constant [25 x i8] c"alias=platform:rcar_fdp1\00", section ".modinfo", align 1
@fdp1_pdrv = internal global %struct.platform_driver { ptr @fdp1_probe, ptr @fdp1_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fdp1_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdp1_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"rcar_fdp1\00", align 1
@fdp1_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdp1_pm_runtime_suspend, ptr @fdp1_pm_runtime_resume, ptr null }, align 4
@fdp1_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"&fdp1->dev_mutex\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot claim IRQ %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"renesas,fcp\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\013%s: Failed to register video device\0A\00", align 1
@m2m_ops = internal constant %struct.v4l2_m2m_ops { ptr @fdp1_m2m_device_run, ptr @fdp1_m2m_job_ready, ptr @fdp1_m2m_job_abort }, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", align 1
@fdp1_videodev = internal constant %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @fdp1_fops, i32 67125248, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"rcar_fdp1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @fdp1_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"\016%s: Device registered as /dev/video%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"\017%s: %s: FDP1 Version R-Car H3 ES1\0A\00", align 1
@__func__.fdp1_probe = private unnamed_addr constant [11 x i8] c"fdp1_probe\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\017%s: %s: FDP1 Version R-Car M3-W\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"\017%s: %s: FDP1 Version R-Car H3\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\017%s: %s: FDP1 Version R-Car M3-N\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"\017%s: %s: FDP1 Version R-Car E3\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"FDP1 Unidentifiable (0x%08x)\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"\017%s: %s: IRQ: 0x%x %s%s%s\0A\00", align 1
@__func__.fdp1_irq_handler = private unnamed_addr constant [17 x i8] c"fdp1_irq_handler\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"[Error]\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"[!E]\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"[VSync]\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"[!V]\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"[FrameEnd]\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"[!F]\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"\017%s: %s: CycleStatus = %d (%dms)\0A\00", align 1
@.str.21 = private unnamed_addr constant [63 x i8] c"\017%s: %s: Control Status = 0x%08x : VINT_CNT = %d %s:%s:%s:%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"RegSet\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Vsync Error\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"FrameEnd\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Busy\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"\017%s: %s: ***********************************\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"\017%s: %s: Write 0x%08x to 0x%04x\0A\00", align 1
@__func__.fdp1_write = private unnamed_addr constant [11 x i8] c"fdp1_write\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"\017%s: %s: +\0A\00", align 1
@__func__.device_frame_end = private unnamed_addr constant [17 x i8] c"device_frame_end\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"\013%s: Instance released before the end of transaction\0A\00", align 1
@.str.31 = private unnamed_addr constant [60 x i8] c"\017%s: %s: curr_ctx->num_processed %d curr_ctx->translen %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"\017%s: %s: Finishing transaction\0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"\017%s: %s: Progressive Mode\0A\00", align 1
@__func__.fdp1_configure_deint_mode = private unnamed_addr constant [26 x i8] c"fdp1_configure_deint_mode\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"\017%s: %s: Adapt2D3D Mode\0A\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"\017%s: %s: Fixed 3D Mode\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"\017%s: %s: Fixed 2D Mode\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"\017%s: %s: Previous Field Mode\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"\017%s: %s: Next Field Mode\0A\00", align 1
@__func__.fdp1_m2m_device_run = private unnamed_addr constant [20 x i8] c"fdp1_m2m_device_run\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"\017%s: %s: Queued Buffer [%d] last_field:%d\0A\00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"\017%s: %s: No jobs were processed. M2M action complete\0A\00", align 1
@__func__.fdp1_prepare_job = private unnamed_addr constant [17 x i8] c"fdp1_prepare_job\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"\017%s: %s: No free jobs currently available\0A\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"\017%s: %s: No input buffers currently available\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"\017%s: %s: + Buffer en-route...\0A\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"\017%s: %s: Job Queued translen = %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"\017%s: %s: + Src: %d : Dst: %d\0A\00", align 1
@__func__.fdp1_m2m_job_ready = private unnamed_addr constant [19 x i8] c"fdp1_m2m_job_ready\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"\017%s: %s: Not enough buffers available\0A\00", align 1
@__func__.fdp1_m2m_job_abort = private unnamed_addr constant [19 x i8] c"fdp1_m2m_job_abort\00", align 1
@fdp1_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @fdp1_open, ptr @fdp1_release }, align 4
@fdp1_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @fdp1_vidioc_querycap, ptr @fdp1_enum_fmt_vid_cap, ptr null, ptr @fdp1_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdp1_g_fmt, ptr @fdp1_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdp1_s_fmt, ptr @fdp1_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fdp1_try_fmt, ptr @fdp1_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, align 4
@fdp1_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr @fdp1_g_ctrl, ptr null, ptr @fdp1_s_ctrl }, align 4
@fdp1_ctrl_deint_menu = internal constant [7 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr null], align 4
@.str.47 = private unnamed_addr constant [45 x i8] c"\017%s: %s: Created instance: %p, m2m_ctx: %p\0A\00", align 1
@__func__.fdp1_open = private unnamed_addr constant [10 x i8] c"fdp1_open\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.48 = private unnamed_addr constant [12 x i8] c"Progressive\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"Adaptive 2D/3D\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"Fixed 2D\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"Fixed 3D\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Previous field\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"Next field\00", align 1
@fdp1_formats = internal constant [26 x %struct.fdp1_fmt] [%struct.fdp1_fmt { i32 826427218, [3 x i8] c"\08\00\00", i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 15, i8 1 }, %struct.fdp1_fmt { i32 842093144, [3 x i8] c"\10\00\00", i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 14, i8 1 }, %struct.fdp1_fmt { i32 892424792, [3 x i8] c"\10\00\00", i8 1, i8 1, i8 1, i8 4, i8 0, i8 0, i8 14, i8 1 }, %struct.fdp1_fmt { i32 1346520914, [3 x i8] c"\10\00\00", i8 1, i8 1, i8 1, i8 6, i8 0, i8 0, i8 14, i8 1 }, %struct.fdp1_fmt { i32 875713089, [3 x i8] c" \00\00", i8 1, i8 1, i8 1, i8 19, i8 0, i8 0, i8 12, i8 1 }, %struct.fdp1_fmt { i32 875713112, [3 x i8] c" \00\00", i8 1, i8 1, i8 1, i8 19, i8 0, i8 0, i8 12, i8 1 }, %struct.fdp1_fmt { i32 875708738, [3 x i8] c" \00\00", i8 1, i8 1, i8 1, i8 19, i8 0, i8 0, i8 15, i8 1 }, %struct.fdp1_fmt { i32 875714626, [3 x i8] c" \00\00", i8 1, i8 1, i8 1, i8 19, i8 0, i8 0, i8 15, i8 1 }, %struct.fdp1_fmt { i32 859981650, [3 x i8] c"\18\00\00", i8 1, i8 1, i8 1, i8 21, i8 0, i8 0, i8 15, i8 1 }, %struct.fdp1_fmt { i32 861030210, [3 x i8] c"\18\00\00", i8 1, i8 1, i8 1, i8 24, i8 0, i8 0, i8 15, i8 1 }, %struct.fdp1_fmt { i32 842093121, [3 x i8] c"\10\00\00", i8 1, i8 1, i8 1, i8 25, i8 0, i8 0, i8 14, i8 1 }, %struct.fdp1_fmt { i32 892424769, [3 x i8] c"\10\00\00", i8 1, i8 1, i8 1, i8 27, i8 0, i8 0, i8 14, i8 1 }, %struct.fdp1_fmt { i32 909200718, [3 x i8] c"\08\10\00", i8 2, i8 2, i8 1, i8 65, i8 0, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 825642318, [3 x i8] c"\08\10\00", i8 2, i8 2, i8 1, i8 65, i8 0, i8 1, i8 15, i8 3 }, %struct.fdp1_fmt { i32 842091854, [3 x i8] c"\08\10\00", i8 2, i8 2, i8 2, i8 66, i8 0, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 825380174, [3 x i8] c"\08\10\00", i8 2, i8 2, i8 2, i8 66, i8 0, i8 1, i8 15, i8 3 }, %struct.fdp1_fmt { i32 1498831189, [3 x i8] c"\10\00\00", i8 1, i8 2, i8 1, i8 71, i8 0, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 1498765654, [3 x i8] c"\10\00\00", i8 1, i8 2, i8 1, i8 71, i8 0, i8 1, i8 15, i8 3 }, %struct.fdp1_fmt { i32 1448695129, [3 x i8] c"\10\00\00", i8 1, i8 2, i8 1, i8 71, i8 1, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 1431918169, [3 x i8] c"\10\00\00", i8 1, i8 2, i8 1, i8 71, i8 1, i8 1, i8 15, i8 3 }, %struct.fdp1_fmt { i32 875711833, [3 x i8] c"\08\08\08", i8 3, i8 1, i8 1, i8 74, i8 0, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 842288473, [3 x i8] c"\08\08\08", i8 3, i8 1, i8 1, i8 74, i8 0, i8 1, i8 15, i8 3 }, %struct.fdp1_fmt { i32 909200729, [3 x i8] c"\08\08\08", i8 3, i8 2, i8 1, i8 75, i8 0, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 825642329, [3 x i8] c"\08\08\08", i8 3, i8 2, i8 1, i8 75, i8 0, i8 1, i8 15, i8 3 }, %struct.fdp1_fmt { i32 842091865, [3 x i8] c"\08\08\08", i8 3, i8 2, i8 2, i8 76, i8 0, i8 0, i8 15, i8 3 }, %struct.fdp1_fmt { i32 825380185, [3 x i8] c"\08\08\08", i8 3, i8 2, i8 2, i8 76, i8 0, i8 1, i8 15, i8 3 }], align 4
@fdp1_qops = internal constant %struct.vb2_ops { ptr @fdp1_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @fdp1_buf_prepare, ptr null, ptr null, ptr @fdp1_start_streaming, ptr @fdp1_stop_streaming, ptr @fdp1_buf_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.54 = private unnamed_addr constant [55 x i8] c"\017%s: %s: buffer field %u invalid for format field %u\0A\00", align 1
@__func__.fdp1_buf_prepare = private unnamed_addr constant [17 x i8] c"fdp1_buf_prepare\00", align 1
@.str.55 = private unnamed_addr constant [60 x i8] c"\017%s: %s: data will not fit into plane [%u/%u] (%lu < %lu)\0A\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"\017%s: %s: Failed to alloc smsk\0A\00", align 1
@__func__.fdp1_start_streaming = private unnamed_addr constant [21 x i8] c"fdp1_start_streaming\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"drivers/media/platform/rcar_fdp1.c\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"Buffer queue not empty\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"Queued Job List not empty\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"HW Job list not empty\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"\017%s: %s: Releasing instance %p\0A\00", align 1
@__func__.fdp1_release = private unnamed_addr constant [13 x i8] c"fdp1_release\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.64 = private unnamed_addr constant [21 x i8] c"\013%s: %s queue busy\0A\00", align 1
@__func__.fdp1_s_fmt = private unnamed_addr constant [11 x i8] c"fdp1_s_fmt\00", align 1
@.str.65 = private unnamed_addr constant [56 x i8] c"\017%s: %s: Set %s format: %4.4s (0x%08x) %ux%u field %u\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.68 = private unnamed_addr constant [56 x i8] c"\017%s: %s: Try %s format: %4.4s (0x%08x) %ux%u field %u\0A\00", align 1
@__func__.fdp1_try_fmt = private unnamed_addr constant [13 x i8] c"fdp1_try_fmt\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"\017%s: %s: Read 0x%08x from 0x%04x\0A\00", align 1
@__func__.fdp1_read = private unnamed_addr constant [10 x i8] c"fdp1_read\00", align 1
@fdp1_diff_adj = internal constant [24 x i8] c"\00$C^v\8C\9E\AF\BD\C9\D4\DD\E4\EA\EF\F3\F6\F9\FB\FC\FD\FE\FE\FF", align 1
@fdp1_sad_adj = internal constant [24 x i8] c"\00$C^v\8C\9E\AF\BD\C9\D4\DD\E4\EA\EF\F3\F6\F9\FB\FC\FD\FE\FE\FF", align 1
@fdp1_bld_gain = internal constant [1 x i8] c"\80", align 1
@fdp1_dif_gain = internal constant [1 x i8] c"\80", align 1
@fdp1_mdet = internal unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias286, ptr @__UNIQUE_ID_author284, ptr @__UNIQUE_ID_debug259, ptr @__UNIQUE_ID_debugtype258, ptr @__UNIQUE_ID_description283, ptr @__UNIQUE_ID_license285, ptr @__param_debug], section "llvm.metadata"
@switch.table.fdp1_m2m_device_run = private unnamed_addr constant [5 x i32] [i32 2, i32 1, i32 2, i32 1, i32 2], align 4
@switch.table.fdp1_g_ctrl = private unnamed_addr constant [6 x i32] [i32 2, i32 2, i32 2, i32 1, i32 2, i32 2], align 4
@switch.table.fdp1_try_fmt_output = private unnamed_addr constant [9 x i32] [i32 1, i32 1, i32 1, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4

@__mod_of__fdp1_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @fdp1_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fdp1_pdrv, ptr noundef nonnull @__this_module) #17
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fdp1_pdrv) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1216, i32 noundef 3520) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %153, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 9
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 10
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 10, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 11
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 11, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 0, i32 4
  %13 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 9, i32 1
  store ptr %12, ptr %13, align 4
  store ptr %7, ptr %12, align 4
  store volatile ptr %12, ptr %7, align 4
  %14 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 1, i32 4
  %15 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 0, i32 4, i32 1
  store ptr %14, ptr %15, align 4
  store ptr %12, ptr %14, align 4
  store volatile ptr %14, ptr %7, align 4
  %16 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 2, i32 4
  %17 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 1, i32 4, i32 1
  store ptr %16, ptr %17, align 4
  store ptr %14, ptr %16, align 4
  store volatile ptr %16, ptr %7, align 4
  %18 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 3, i32 4
  %19 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 2, i32 4, i32 1
  store ptr %18, ptr %19, align 4
  store ptr %16, ptr %18, align 4
  store volatile ptr %18, ptr %7, align 4
  %20 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 4, i32 4
  %21 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 3, i32 4, i32 1
  store ptr %20, ptr %21, align 4
  store ptr %18, ptr %20, align 4
  store volatile ptr %20, ptr %7, align 4
  %22 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 5, i32 4
  %23 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 4, i32 4, i32 1
  store ptr %22, ptr %23, align 4
  store ptr %20, ptr %22, align 4
  store volatile ptr %22, ptr %7, align 4
  %24 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 6, i32 4
  %25 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 5, i32 4, i32 1
  store ptr %24, ptr %25, align 4
  store ptr %22, ptr %24, align 4
  store volatile ptr %24, ptr %7, align 4
  %26 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 7, i32 4
  %27 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 6, i32 4, i32 1
  store ptr %26, ptr %27, align 4
  store ptr %24, ptr %26, align 4
  %28 = getelementptr %struct.fdp1_dev, ptr %4, i32 0, i32 8, i32 7, i32 4, i32 1
  store ptr %7, ptr %28, align 4
  store volatile ptr %26, ptr %7, align 4
  %29 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef nonnull @fdp1_probe.__key) #17
  %30 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 3
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 4
  store i32 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 7
  store ptr %3, ptr %32, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %33, align 8
  %34 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #17
  %35 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 5
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %6
  %38 = ptrtoint ptr %34 to i32
  br label %153

39:                                               ; preds = %6
  %40 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #17
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %153, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 6
  store i32 %40, ptr %43, align 8
  %44 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load ptr, ptr %3, align 4
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi ptr [ %48, %47 ], [ %45, %42 ]
  %51 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %40, ptr noundef nonnull @fdp1_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %50, ptr noundef nonnull %4) #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %54) #18
  br label %153

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %57 = load ptr, ptr %56, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #17, !annotation !8
  %58 = call i32 @__of_parse_phandle_with_args(ptr noundef %57, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #17
  %59 = icmp ne i32 %58, 0
  %60 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #17
  %61 = icmp eq ptr %60, null
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 13
  store ptr inttoptr (i32 -2 to ptr), ptr %64, align 4
  call void @of_node_put(ptr noundef nonnull %60) #17
  %65 = load ptr, ptr %64, align 4
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = ptrtoint ptr %65 to i32
  br label %153

69:                                               ; preds = %63, %55
  %70 = call ptr @clk_get(ptr noundef %3, ptr noundef null) #17
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = ptrtoint ptr %70 to i32
  br label %153

74:                                               ; preds = %69
  %75 = call i32 @clk_get_rate(ptr noundef %70) #17
  %76 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 12
  store i32 %75, ptr %76, align 8
  call void @clk_put(ptr noundef %70) #17
  %77 = call i32 @v4l2_device_register(ptr noundef %3, ptr noundef nonnull %4) #17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %80) #18
  br label %153

82:                                               ; preds = %74
  %83 = call ptr @v4l2_m2m_init(ptr noundef nonnull @m2m_ops) #17
  %84 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 14
  store ptr %83, ptr %84, align 8
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %87) #18
  %89 = load ptr, ptr %84, align 8
  %90 = ptrtoint ptr %89 to i32
  br label %151

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(856) %92, ptr noundef nonnull align 8 dereferenceable(856) @fdp1_videodev, i32 856, i1 false)
  %93 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 1, i32 26
  store ptr %29, ptr %93, align 8
  %94 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 1, i32 7
  store ptr %4, ptr %94, align 4
  %95 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 1, i32 5, i32 8
  store ptr %4, ptr %95, align 8
  %96 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 1, i32 12
  %97 = call i32 @strscpy(ptr noundef %96, ptr noundef getelementptr inbounds (%struct.video_device, ptr @fdp1_videodev, i32 0, i32 12), i32 noundef 32) #17
  %98 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 1, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %99, align 4
  %101 = call i32 @__video_register_device(ptr noundef %92, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %100) #17
  %102 = icmp eq i32 %101, 0
  %103 = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  br i1 %102, label %106, label %104

104:                                              ; preds = %91
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %103) #18
  br label %148

106:                                              ; preds = %91
  %107 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 1, i32 16
  %108 = load i16, ptr %107, align 4
  %109 = zext i16 %108 to i32
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %103, i32 noundef %109) #18
  call void @pm_runtime_enable(ptr noundef %3) #17
  %111 = load ptr, ptr %32, align 4
  %112 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %111)
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %146, label %114

114:                                              ; preds = %106
  %115 = call fastcc i32 @fdp1_read(ptr noundef nonnull %4, i32 noundef 2048)
  switch i32 %115, label %141 [
    i32 33620225, label %116
    i32 33620482, label %121
    i32 33620483, label %126
    i32 33620484, label %131
    i32 33620485, label %136
  ]

116:                                              ; preds = %114
  %117 = load i32, ptr @debug, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %143, label %119

119:                                              ; preds = %116
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %103, ptr noundef nonnull @__func__.fdp1_probe) #18
  br label %143

121:                                              ; preds = %114
  %122 = load i32, ptr @debug, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %143, label %124

124:                                              ; preds = %121
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %103, ptr noundef nonnull @__func__.fdp1_probe) #18
  br label %143

126:                                              ; preds = %114
  %127 = load i32, ptr @debug, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %126
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %103, ptr noundef nonnull @__func__.fdp1_probe) #18
  br label %143

131:                                              ; preds = %114
  %132 = load i32, ptr @debug, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %103, ptr noundef nonnull @__func__.fdp1_probe) #18
  br label %143

136:                                              ; preds = %114
  %137 = load i32, ptr @debug, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %136
  %140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %103, ptr noundef nonnull @__func__.fdp1_probe) #18
  br label %143

141:                                              ; preds = %114
  %142 = load ptr, ptr %32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.12, i32 noundef %115) #18
  br label %143

143:                                              ; preds = %141, %139, %136, %134, %131, %129, %126, %124, %121, %119, %116
  %144 = load ptr, ptr %32, align 4
  %145 = call i32 @__pm_runtime_idle(ptr noundef %144, i32 noundef 5) #17
  br label %153

146:                                              ; preds = %106
  %147 = load ptr, ptr %32, align 4
  call void @__pm_runtime_disable(ptr noundef %147, i1 noundef zeroext true) #17
  br label %148

148:                                              ; preds = %146, %104
  %149 = phi i32 [ %101, %104 ], [ %112, %146 ]
  %150 = load ptr, ptr %84, align 8
  call void @v4l2_m2m_release(ptr noundef %150) #17
  br label %151

151:                                              ; preds = %148, %86
  %152 = phi i32 [ %90, %86 ], [ %149, %148 ]
  call void @v4l2_device_unregister(ptr noundef nonnull %4) #17
  br label %153

153:                                              ; preds = %151, %143, %79, %72, %67, %53, %39, %37, %1
  %154 = phi i32 [ %38, %37 ], [ %51, %53 ], [ %68, %67 ], [ %73, %72 ], [ %77, %79 ], [ %152, %151 ], [ 0, %143 ], [ -12, %1 ], [ %40, %39 ]
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fdp1_dev, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 8
  tail call void @v4l2_m2m_release(ptr noundef %5) #17
  %6 = getelementptr inbounds %struct.fdp1_dev, ptr %3, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %6) #17
  tail call void @v4l2_device_unregister(ptr noundef %3) #17
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #17
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 60
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %7 = load i32, ptr @debug, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %10, ptr noundef nonnull @__func__.fdp1_read, i32 noundef %6, i32 noundef 60) #18
  br label %12

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr i8, ptr %13, i32 40
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %16 = load i32, ptr @debug, align 4
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %19, ptr noundef nonnull @__func__.fdp1_read, i32 noundef %15, i32 noundef 40) #18
  br label %21

21:                                               ; preds = %18, %12
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 36
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %25 = load i32, ptr @debug, align 4
  %26 = icmp ugt i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = and i32 %6, 65553
  %29 = xor i32 %28, 65553
  br label %39

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %31, ptr noundef nonnull @__func__.fdp1_read, i32 noundef %24, i32 noundef 36) #18
  %33 = load i32, ptr @debug, align 4
  %34 = and i32 %6, 65553
  %35 = xor i32 %34, 65553
  %36 = icmp ugt i32 %33, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %31, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %35, i32 noundef 60) #18
  br label %39

39:                                               ; preds = %37, %30, %27
  %40 = phi i32 [ %29, %27 ], [ %35, %30 ], [ %35, %37 ]
  %41 = phi i32 [ %28, %27 ], [ %34, %30 ], [ %34, %37 ]
  %42 = lshr i32 %24, 16
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr i8, ptr %43, i32 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %40) #17, !srcloc !12
  %45 = load i32, ptr @debug, align 4
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %87

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %49 = and i32 %6, 65536
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, ptr @.str.15, ptr @.str.14
  %52 = and i32 %6, 16
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, ptr @.str.17, ptr @.str.16
  %55 = and i32 %6, 1
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, ptr @.str.19, ptr @.str.18
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %48, ptr noundef nonnull @__func__.fdp1_irq_handler, i32 noundef %6, ptr noundef nonnull %51, ptr noundef nonnull %54, ptr noundef nonnull %57) #18
  %59 = load i32, ptr @debug, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.fdp1_dev, ptr %1, i32 0, i32 12
  %63 = load i32, ptr %62, align 8
  %64 = udiv i32 %63, 1000
  %65 = udiv i32 %15, %64
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %48, ptr noundef nonnull @__func__.fdp1_irq_handler, i32 noundef %15, i32 noundef %65) #18
  %67 = load i32, ptr @debug, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %61
  %70 = and i32 %24, 1024
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, ptr @.str.23, ptr @.str.22
  %73 = and i32 %24, 512
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, ptr @.str.23, ptr @.str.24
  %76 = and i32 %24, 256
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, ptr @.str.23, ptr @.str.25
  %79 = and i32 %24, 1
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, ptr @.str.23, ptr @.str.26
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %48, ptr noundef nonnull @__func__.fdp1_irq_handler, i32 noundef %24, i32 noundef %42, ptr noundef nonnull %72, ptr noundef nonnull %75, ptr noundef nonnull %78, ptr noundef nonnull %81) #18
  %83 = load i32, ptr @debug, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %69
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %48, ptr noundef nonnull @__func__.fdp1_irq_handler) #18
  br label %87

87:                                               ; preds = %85, %69, %61, %47, %39
  %88 = icmp eq i32 %41, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %87
  %90 = and i32 %6, 65536
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = and i32 %6, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92, %89
  %96 = phi i32 [ 6, %89 ], [ 5, %92 ]
  tail call fastcc void @device_frame_end(ptr noundef %1, i32 noundef %96)
  br label %97

97:                                               ; preds = %95, %92, %87
  %98 = phi i32 [ 0, %87 ], [ 1, %92 ], [ 1, %95 ]
  ret i32 %98
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #17
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #17, !srcloc !14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 -1, ptr elementtype(i32) %5) #17, !srcloc !15
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  br label %10

10:                                               ; preds = %9, %4, %1
  %11 = phi i32 [ 0, %1 ], [ %2, %4 ], [ %2, %9 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fdp1_read(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.fdp1_dev, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #17, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #17, !srcloc !10
  %7 = load i32, ptr @debug, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %10, ptr noundef nonnull @__func__.fdp1_read, i32 noundef %6, i32 noundef %1) #18
  br label %12

12:                                               ; preds = %9, %2
  ret i32 %6
}

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @device_frame_end(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.fdp1_dev, ptr %0, i32 0, i32 11
  %4 = getelementptr inbounds %struct.fdp1_dev, ptr %0, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #17
  %6 = load volatile ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, %3
  %8 = getelementptr i8, ptr %6, i32 -16
  %9 = select i1 %7, ptr null, ptr %8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.fdp1_job, ptr %9, i32 0, i32 4
  %13 = getelementptr inbounds %struct.fdp1_job, ptr %9, i32 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  br label %17

17:                                               ; preds = %11, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #17
  %18 = load i32, ptr @debug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %21, ptr noundef nonnull @__func__.device_frame_end) #18
  br label %23

23:                                               ; preds = %20, %17
  %24 = getelementptr inbounds %struct.fdp1_dev, ptr %0, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %25) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %29) #18
  br label %98

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.fdp1_ctx, ptr %26, i32 0, i32 4
  %33 = load i8, ptr %32, align 4
  %34 = add i8 %33, 1
  store i8 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.fdp1_ctx, ptr %26, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %44 [
    i32 1, label %37
    i32 3, label %37
    i32 4, label %37
  ]

37:                                               ; preds = %31, %31, %31
  %38 = load ptr, ptr %9, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %38, i32 0, i32 3
  %42 = load i8, ptr %41, align 4, !range !17
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %55, label %52

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.fdp1_job, ptr %9, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %46, i32 0, i32 3
  %50 = load i8, ptr %49, align 4, !range !17
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48, %40
  %53 = phi ptr [ %38, %40 ], [ %46, %48 ]
  %54 = load ptr, ptr %53, align 4
  tail call void @vb2_buffer_done(ptr noundef %54, i32 noundef 5) #17
  br label %55

55:                                               ; preds = %52, %48, %44, %40, %37
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #17
  %57 = getelementptr inbounds %struct.fdp1_job, ptr %9, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %58, align 4
  tail call void @vb2_buffer_done(ptr noundef %59, i32 noundef %1) #17
  store ptr null, ptr %57, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %56) #17
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false) #17
  %60 = getelementptr inbounds %struct.fdp1_dev, ptr %0, i32 0, i32 9
  %61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #17
  %62 = getelementptr inbounds %struct.fdp1_job, ptr %9, i32 0, i32 4
  %63 = getelementptr inbounds %struct.fdp1_dev, ptr %0, i32 0, i32 9, i32 1
  %64 = load ptr, ptr %63, align 4
  store ptr %62, ptr %63, align 4
  store ptr %60, ptr %62, align 4
  %65 = getelementptr inbounds %struct.fdp1_job, ptr %9, i32 0, i32 4, i32 1
  store ptr %64, ptr %65, align 4
  store volatile ptr %62, ptr %64, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %61) #17
  %66 = load i32, ptr @debug, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %55
  %69 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 4
  %70 = load i8, ptr %32, align 4
  %71 = zext i8 %70 to i32
  %72 = getelementptr inbounds %struct.fdp1_ctx, ptr %26, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %69, ptr noundef nonnull @__func__.device_frame_end, i32 noundef %71, i32 noundef %73) #18
  br label %75

75:                                               ; preds = %68, %55
  %76 = load i8, ptr %32, align 4
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds %struct.fdp1_ctx, ptr %26, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, %77
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.fdp1_ctx, ptr %26, i32 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %81, %75
  %86 = load i32, ptr @debug, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.fdp1_ctx, ptr %26, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.v4l2_device, ptr %90, i32 0, i32 4
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %91, ptr noundef nonnull @__func__.device_frame_end) #18
  br label %93

93:                                               ; preds = %88, %85
  store i8 0, ptr %32, align 4
  %94 = load ptr, ptr %24, align 8
  %95 = getelementptr inbounds %struct.v4l2_fh, ptr %26, i32 0, i32 10
  %96 = load ptr, ptr %95, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %94, ptr noundef %96) #17
  br label %98

97:                                               ; preds = %81
  tail call fastcc void @fdp1_device_process(ptr noundef nonnull %26)
  br label %98

98:                                               ; preds = %97, %93, %28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fdp1_device_process(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fdp1_dev, ptr %3, i32 0, i32 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #17
  %6 = getelementptr inbounds %struct.fdp1_dev, ptr %3, i32 0, i32 10
  %7 = getelementptr inbounds %struct.fdp1_dev, ptr %3, i32 0, i32 3
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #17
  %9 = load volatile ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, %6
  %11 = getelementptr i8, ptr %9, i32 -16
  %12 = icmp eq ptr %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #17
  br label %584

15:                                               ; preds = %1
  %16 = getelementptr i8, ptr %9, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #17
  %20 = load i32, ptr @debug, align 4
  %21 = icmp ugt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %23, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 1, i32 noundef 24) #18
  br label %25

25:                                               ; preds = %22, %15
  %26 = getelementptr inbounds %struct.fdp1_dev, ptr %3, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #17, !srcloc !12
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %32 [
    i32 5, label %87
    i32 1, label %38
    i32 3, label %60
    i32 2, label %75
    i32 4, label %81
  ]

32:                                               ; preds = %25
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %102, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.v4l2_device, ptr %29, i32 0, i32 4
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %36, ptr noundef nonnull @__func__.fdp1_configure_deint_mode) #18
  br label %93

38:                                               ; preds = %25
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.v4l2_device, ptr %29, i32 0, i32 4
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %42, ptr noundef nonnull @__func__.fdp1_configure_deint_mode) #18
  br label %44

44:                                               ; preds = %41, %38
  %45 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 256, i32 257
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i32 [ 257, %44 ], [ %52, %48 ]
  %55 = icmp ugt i32 %46, 1
  %56 = select i1 %55, i32 775, i32 258
  %57 = icmp ugt i32 %46, 2
  %58 = or i32 %56, 8
  %59 = select i1 %57, i32 %58, i32 %56
  br label %93

60:                                               ; preds = %25
  %61 = load i32, ptr @debug, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.v4l2_device, ptr %29, i32 0, i32 4
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %64, ptr noundef nonnull @__func__.fdp1_configure_deint_mode) #18
  br label %66

66:                                               ; preds = %63, %60
  %67 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %93, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 263, i32 258
  br label %93

75:                                               ; preds = %25
  %76 = load i32, ptr @debug, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %102, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.v4l2_device, ptr %29, i32 0, i32 4
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %79, ptr noundef nonnull @__func__.fdp1_configure_deint_mode) #18
  br label %93

81:                                               ; preds = %25
  %82 = load i32, ptr @debug, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.v4l2_device, ptr %29, i32 0, i32 4
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %85, ptr noundef nonnull @__func__.fdp1_configure_deint_mode) #18
  br label %93

87:                                               ; preds = %25
  %88 = load i32, ptr @debug, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.v4l2_device, ptr %29, i32 0, i32 4
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %91, ptr noundef nonnull @__func__.fdp1_configure_deint_mode) #18
  br label %93

93:                                               ; preds = %90, %84, %78, %70, %66, %53, %35
  %94 = phi i32 [ %59, %53 ], [ 262, %90 ], [ 259, %84 ], [ 258, %78 ], [ %74, %70 ], [ 258, %35 ], [ 258, %66 ]
  %95 = phi i32 [ %54, %53 ], [ 260, %90 ], [ 259, %84 ], [ 257, %78 ], [ 258, %70 ], [ 257, %35 ], [ 258, %66 ]
  %96 = phi i32 [ 2, %53 ], [ 2, %90 ], [ 2, %84 ], [ 2, %78 ], [ 2, %70 ], [ 18, %35 ], [ 2, %66 ]
  %97 = load i32, ptr @debug, align 4
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.v4l2_device, ptr %29, i32 0, i32 4
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %100, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %94, i32 noundef 12) #18
  br label %102

102:                                              ; preds = %99, %93, %87, %81, %75, %32
  %103 = phi i32 [ %96, %93 ], [ %96, %99 ], [ 2, %87 ], [ 2, %81 ], [ 2, %75 ], [ 18, %32 ]
  %104 = phi i32 [ %95, %93 ], [ %95, %99 ], [ 260, %87 ], [ 259, %81 ], [ 257, %75 ], [ 257, %32 ]
  %105 = phi i32 [ %94, %93 ], [ %94, %99 ], [ 262, %87 ], [ 259, %81 ], [ 258, %75 ], [ 258, %32 ]
  %106 = getelementptr inbounds %struct.fdp1_dev, ptr %29, i32 0, i32 5
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 12
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %105) #17, !srcloc !12
  %109 = load i32, ptr @debug, align 4
  %110 = icmp ugt i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.v4l2_device, ptr %29, i32 0, i32 4
  %113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %112, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %103, i32 noundef 16) #18
  br label %114

114:                                              ; preds = %111, %102
  %115 = load ptr, ptr %106, align 4
  %116 = getelementptr i8, ptr %115, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %103) #17, !srcloc !12
  %117 = load i32, ptr @debug, align 4
  %118 = icmp ugt i32 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.v4l2_device, ptr %29, i32 0, i32 4
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %120, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %104, i32 noundef 256) #18
  br label %122

122:                                              ; preds = %119, %114
  %123 = load ptr, ptr %106, align 4
  %124 = getelementptr i8, ptr %123, i32 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %104) #17, !srcloc !12
  %125 = load ptr, ptr %2, align 4
  %126 = load i32, ptr @debug, align 4
  %127 = icmp ugt i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.v4l2_device, ptr %125, i32 0, i32 4
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %129, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 65538, i32 noundef 260) #18
  br label %131

131:                                              ; preds = %128, %122
  %132 = getelementptr inbounds %struct.fdp1_dev, ptr %125, i32 0, i32 5
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr i8, ptr %133, i32 260
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 65538) #17, !srcloc !12
  %135 = load i32, ptr @debug, align 4
  %136 = icmp ugt i32 %135, 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.v4l2_device, ptr %125, i32 0, i32 4
  %139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %138, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 2097216, i32 noundef 264) #18
  br label %140

140:                                              ; preds = %137, %131
  %141 = load ptr, ptr %132, align 4
  %142 = getelementptr i8, ptr %141, i32 264
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 2097216) #17, !srcloc !12
  %143 = load i32, ptr @debug, align 4
  %144 = icmp ugt i32 %143, 1
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.v4l2_device, ptr %125, i32 0, i32 4
  %147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %146, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 32800, i32 noundef 268) #18
  br label %148

148:                                              ; preds = %145, %140
  %149 = load ptr, ptr %132, align 4
  %150 = getelementptr i8, ptr %149, i32 268
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 32800) #17, !srcloc !12
  %151 = load i32, ptr @debug, align 4
  %152 = icmp ugt i32 %151, 1
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.v4l2_device, ptr %125, i32 0, i32 4
  %155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %154, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 8453890, i32 noundef 288) #18
  br label %156

156:                                              ; preds = %153, %148
  %157 = load ptr, ptr %132, align 4
  %158 = getelementptr i8, ptr %157, i32 288
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 8453890) #17, !srcloc !12
  %159 = load i32, ptr @debug, align 4
  %160 = icmp ugt i32 %159, 1
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.v4l2_device, ptr %125, i32 0, i32 4
  %163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %162, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 1048831, i32 noundef 292) #18
  br label %164

164:                                              ; preds = %161, %156
  %165 = load ptr, ptr %132, align 4
  %166 = getelementptr i8, ptr %165, i32 292
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 1048831) #17, !srcloc !12
  %167 = load i32, ptr @debug, align 4
  %168 = icmp ugt i32 %167, 1
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.v4l2_device, ptr %125, i32 0, i32 4
  %171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %170, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 9438463, i32 noundef 296) #18
  br label %172

172:                                              ; preds = %169, %164
  %173 = load ptr, ptr %132, align 4
  %174 = getelementptr i8, ptr %173, i32 296
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 9438463) #17, !srcloc !12
  %175 = load i32, ptr @debug, align 4
  %176 = icmp ugt i32 %175, 1
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.v4l2_device, ptr %125, i32 0, i32 4
  %179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %178, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 264204, i32 noundef 300) #18
  br label %180

180:                                              ; preds = %177, %172
  %181 = load ptr, ptr %132, align 4
  %182 = getelementptr i8, ptr %181, i32 300
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 264204) #17, !srcloc !12
  %183 = load i32, ptr @debug, align 4
  %184 = icmp ugt i32 %183, 1
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.v4l2_device, ptr %125, i32 0, i32 4
  %187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %186, ptr noundef nonnull @__func__.fdp1_write, i32 noundef -15663344, i32 noundef 304) #18
  br label %188

188:                                              ; preds = %185, %180
  %189 = load ptr, ptr %132, align 4
  %190 = getelementptr i8, ptr %189, i32 304
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 -15663344) #17, !srcloc !12
  %191 = load i32, ptr @debug, align 4
  %192 = icmp ugt i32 %191, 1
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.v4l2_device, ptr %125, i32 0, i32 4
  %195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %194, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 65296, i32 noundef 308) #18
  br label %196

196:                                              ; preds = %193, %188
  %197 = load ptr, ptr %132, align 4
  %198 = getelementptr i8, ptr %197, i32 308
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 65296) #17, !srcloc !12
  %199 = load ptr, ptr %2, align 4
  %200 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = udiv i32 %201, 3
  %205 = shl i32 %201, 1
  %206 = udiv i32 %205, 3
  %207 = load i32, ptr @debug, align 4
  %208 = icmp ugt i32 %207, 1
  br i1 %208, label %209, label %212

209:                                              ; preds = %196
  %210 = getelementptr inbounds %struct.v4l2_device, ptr %199, i32 0, i32 4
  %211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %210, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 539000960, i32 noundef 320) #18
  br label %212

212:                                              ; preds = %209, %196
  %213 = getelementptr inbounds %struct.fdp1_dev, ptr %199, i32 0, i32 5
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr i8, ptr %214, i32 320
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 539000960) #17, !srcloc !12
  %216 = load i32, ptr @debug, align 4
  %217 = icmp ugt i32 %216, 1
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.v4l2_device, ptr %199, i32 0, i32 4
  %220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %219, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 0, i32 noundef 324) #18
  br label %221

221:                                              ; preds = %218, %212
  %222 = load ptr, ptr %213, align 4
  %223 = getelementptr i8, ptr %222, i32 324
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 0) #17, !srcloc !12
  %224 = load i32, ptr @debug, align 4
  %225 = icmp ugt i32 %224, 1
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.v4l2_device, ptr %199, i32 0, i32 4
  %228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %227, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 8705, i32 noundef 368) #18
  br label %229

229:                                              ; preds = %226, %221
  %230 = load ptr, ptr %213, align 4
  %231 = getelementptr i8, ptr %230, i32 368
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 8705) #17, !srcloc !12
  %232 = load i32, ptr @debug, align 4
  %233 = icmp ugt i32 %232, 1
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.v4l2_device, ptr %199, i32 0, i32 4
  %236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %235, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 0, i32 noundef 372) #18
  br label %237

237:                                              ; preds = %234, %229
  %238 = load ptr, ptr %213, align 4
  %239 = getelementptr i8, ptr %238, i32 372
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 0) #17, !srcloc !12
  %240 = shl i32 %201, 16
  %241 = add i32 %240, -65536
  %242 = add i32 %203, -1
  %243 = or i32 %241, %242
  %244 = load i32, ptr @debug, align 4
  %245 = icmp ugt i32 %244, 1
  br i1 %245, label %246, label %249

246:                                              ; preds = %237
  %247 = getelementptr inbounds %struct.v4l2_device, ptr %199, i32 0, i32 4
  %248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %247, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %243, i32 noundef 376) #18
  br label %249

249:                                              ; preds = %246, %237
  %250 = load ptr, ptr %213, align 4
  %251 = getelementptr i8, ptr %250, i32 376
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %243) #17, !srcloc !12
  %252 = shl i32 %204, 16
  %253 = or i32 %252, %206
  %254 = load i32, ptr @debug, align 4
  %255 = icmp ugt i32 %254, 1
  br i1 %255, label %256, label %259

256:                                              ; preds = %249
  %257 = getelementptr inbounds %struct.v4l2_device, ptr %199, i32 0, i32 4
  %258 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %257, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %253, i32 noundef 380) #18
  br label %259

259:                                              ; preds = %256, %249
  %260 = load ptr, ptr %213, align 4
  %261 = getelementptr i8, ptr %260, i32 380
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %261, i32 %253) #17, !srcloc !12
  %262 = load ptr, ptr %2, align 4
  %263 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12
  %264 = load i32, ptr %200, align 4
  %265 = shl i32 %264, 16
  %266 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 2
  %267 = load i32, ptr %266, align 4
  %268 = or i32 %265, %267
  %269 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 3
  %270 = load i32, ptr %269, align 4
  %271 = shl i32 %270, 16
  %272 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 6
  %273 = load i8, ptr %272, align 4
  %274 = icmp ugt i8 %273, 1
  br i1 %274, label %275, label %279

275:                                              ; preds = %259
  %276 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 4
  %277 = load i32, ptr %276, align 4
  %278 = or i32 %277, %271
  br label %279

279:                                              ; preds = %275, %259
  %280 = phi i32 [ %278, %275 ], [ %271, %259 ]
  %281 = load ptr, ptr %263, align 4
  %282 = getelementptr inbounds %struct.fdp1_fmt, ptr %281, i32 0, i32 5
  %283 = load i8, ptr %282, align 2
  %284 = zext i8 %283 to i32
  %285 = getelementptr inbounds %struct.fdp1_fmt, ptr %281, i32 0, i32 6
  %286 = load i8, ptr %285, align 1, !range !17
  %287 = icmp eq i8 %286, 0
  %288 = or i32 %284, 8192
  %289 = select i1 %287, i32 %284, i32 %288
  %290 = getelementptr inbounds %struct.fdp1_fmt, ptr %281, i32 0, i32 7
  %291 = load i8, ptr %290, align 4, !range !17
  %292 = icmp eq i8 %291, 0
  %293 = or i32 %289, 4096
  %294 = select i1 %292, i32 %289, i32 %293
  %295 = getelementptr i8, ptr %9, i32 -12
  %296 = load ptr, ptr %295, align 4
  %297 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %296, i32 0, i32 2
  %298 = load i32, ptr %297, align 4
  %299 = icmp eq i32 %298, 3
  %300 = or i32 %294, 256
  %301 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 9
  %302 = getelementptr %struct.fdp1_ctx, ptr %0, i32 0, i32 9, i32 1
  %303 = select i1 %299, i32 %300, i32 %294
  %304 = select i1 %299, ptr %301, ptr %302
  %305 = load i32, ptr %304, align 4
  %306 = load i32, ptr %30, align 4
  %307 = icmp eq i32 %306, 0
  %308 = or i32 %303, 65536
  %309 = select i1 %307, i32 %303, i32 %308
  %310 = load i32, ptr @debug, align 4
  %311 = icmp ugt i32 %310, 1
  br i1 %311, label %312, label %315

312:                                              ; preds = %279
  %313 = getelementptr inbounds %struct.v4l2_device, ptr %262, i32 0, i32 4
  %314 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %313, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %309, i32 noundef 100) #18
  br label %315

315:                                              ; preds = %312, %279
  %316 = getelementptr inbounds %struct.fdp1_dev, ptr %262, i32 0, i32 5
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr i8, ptr %317, i32 100
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %318, i32 %309) #17, !srcloc !12
  %319 = load ptr, ptr %263, align 4
  %320 = getelementptr inbounds %struct.fdp1_fmt, ptr %319, i32 0, i32 8
  %321 = load i8, ptr %320, align 1
  %322 = zext i8 %321 to i32
  %323 = load i32, ptr @debug, align 4
  %324 = icmp ugt i32 %323, 1
  br i1 %324, label %325, label %328

325:                                              ; preds = %315
  %326 = getelementptr inbounds %struct.v4l2_device, ptr %262, i32 0, i32 4
  %327 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %326, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %322, i32 noundef 148) #18
  br label %328

328:                                              ; preds = %325, %315
  %329 = load ptr, ptr %316, align 4
  %330 = getelementptr i8, ptr %329, i32 148
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %330, i32 %322) #17, !srcloc !12
  %331 = load i32, ptr @debug, align 4
  %332 = icmp ugt i32 %331, 1
  br i1 %332, label %333, label %336

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.v4l2_device, ptr %262, i32 0, i32 4
  %335 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %334, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %268, i32 noundef 96) #18
  br label %336

336:                                              ; preds = %333, %328
  %337 = load ptr, ptr %316, align 4
  %338 = getelementptr i8, ptr %337, i32 96
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %338, i32 %268) #17, !srcloc !12
  %339 = load i32, ptr @debug, align 4
  %340 = icmp ugt i32 %339, 1
  br i1 %340, label %341, label %344

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.v4l2_device, ptr %262, i32 0, i32 4
  %343 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %342, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %280, i32 noundef 104) #18
  br label %344

344:                                              ; preds = %341, %336
  %345 = load ptr, ptr %316, align 4
  %346 = getelementptr i8, ptr %345, i32 104
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %346, i32 %280) #17, !srcloc !12
  %347 = load i32, ptr @debug, align 4
  %348 = icmp ugt i32 %347, 1
  br i1 %348, label %349, label %352

349:                                              ; preds = %344
  %350 = getelementptr inbounds %struct.v4l2_device, ptr %262, i32 0, i32 4
  %351 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %350, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %305, i32 noundef 144) #18
  br label %352

352:                                              ; preds = %349, %344
  %353 = load ptr, ptr %316, align 4
  %354 = getelementptr i8, ptr %353, i32 144
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %354, i32 %305) #17, !srcloc !12
  %355 = load ptr, ptr %11, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %368, label %357

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %355, i32 0, i32 1
  %359 = load i32, ptr %358, align 4
  %360 = load i32, ptr @debug, align 4
  %361 = icmp ugt i32 %360, 1
  br i1 %361, label %362, label %365

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.v4l2_device, ptr %262, i32 0, i32 4
  %364 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %363, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %359, i32 noundef 108) #18
  br label %365

365:                                              ; preds = %362, %357
  %366 = load ptr, ptr %316, align 4
  %367 = getelementptr i8, ptr %366, i32 108
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %367, i32 %359) #17, !srcloc !12
  br label %368

368:                                              ; preds = %365, %352
  %369 = load ptr, ptr %295, align 4
  %370 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %369, i32 0, i32 1
  %371 = load i32, ptr %370, align 4
  %372 = load i32, ptr @debug, align 4
  %373 = icmp ugt i32 %372, 1
  br i1 %373, label %374, label %377

374:                                              ; preds = %368
  %375 = getelementptr inbounds %struct.v4l2_device, ptr %262, i32 0, i32 4
  %376 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %375, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %371, i32 noundef 120) #18
  br label %377

377:                                              ; preds = %374, %368
  %378 = load ptr, ptr %316, align 4
  %379 = getelementptr i8, ptr %378, i32 120
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %379, i32 %371) #17, !srcloc !12
  %380 = load ptr, ptr %295, align 4
  %381 = getelementptr %struct.fdp1_field_buffer, ptr %380, i32 0, i32 1, i32 1
  %382 = load i32, ptr %381, align 4
  %383 = load i32, ptr @debug, align 4
  %384 = icmp ugt i32 %383, 1
  br i1 %384, label %385, label %388

385:                                              ; preds = %377
  %386 = getelementptr inbounds %struct.v4l2_device, ptr %262, i32 0, i32 4
  %387 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %386, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %382, i32 noundef 124) #18
  br label %388

388:                                              ; preds = %385, %377
  %389 = load ptr, ptr %316, align 4
  %390 = getelementptr i8, ptr %389, i32 124
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %390, i32 %382) #17, !srcloc !12
  %391 = load ptr, ptr %295, align 4
  %392 = getelementptr %struct.fdp1_field_buffer, ptr %391, i32 0, i32 1, i32 2
  %393 = load i32, ptr %392, align 4
  %394 = load i32, ptr @debug, align 4
  %395 = icmp ugt i32 %394, 1
  br i1 %395, label %396, label %399

396:                                              ; preds = %388
  %397 = getelementptr inbounds %struct.v4l2_device, ptr %262, i32 0, i32 4
  %398 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %397, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %393, i32 noundef 128) #18
  br label %399

399:                                              ; preds = %396, %388
  %400 = load ptr, ptr %316, align 4
  %401 = getelementptr i8, ptr %400, i32 128
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %401, i32 %393) #17, !srcloc !12
  %402 = getelementptr i8, ptr %9, i32 -8
  %403 = load ptr, ptr %402, align 4
  %404 = icmp eq ptr %403, null
  br i1 %404, label %416, label %405

405:                                              ; preds = %399
  %406 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %403, i32 0, i32 1
  %407 = load i32, ptr %406, align 4
  %408 = load i32, ptr @debug, align 4
  %409 = icmp ugt i32 %408, 1
  br i1 %409, label %410, label %413

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.v4l2_device, ptr %262, i32 0, i32 4
  %412 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %411, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %407, i32 noundef 132) #18
  br label %413

413:                                              ; preds = %410, %405
  %414 = load ptr, ptr %316, align 4
  %415 = getelementptr i8, ptr %414, i32 132
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %415, i32 %407) #17, !srcloc !12
  br label %416

416:                                              ; preds = %413, %399
  %417 = load ptr, ptr %2, align 4
  %418 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13
  %419 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 1, i32 5, i32 0, i32 1
  %420 = load i32, ptr %419, align 4
  %421 = shl i32 %420, 16
  %422 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 1, i32 6
  %423 = load i8, ptr %422, align 4
  %424 = icmp ugt i8 %423, 1
  br i1 %424, label %425, label %429

425:                                              ; preds = %416
  %426 = getelementptr %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 1, i32 5, i32 1, i32 1
  %427 = load i32, ptr %426, align 4
  %428 = or i32 %427, %421
  br label %429

429:                                              ; preds = %425, %416
  %430 = phi i32 [ %428, %425 ], [ %421, %416 ]
  %431 = load ptr, ptr %418, align 4
  %432 = getelementptr inbounds %struct.fdp1_fmt, ptr %431, i32 0, i32 5
  %433 = load i8, ptr %432, align 2
  %434 = zext i8 %433 to i32
  %435 = getelementptr inbounds %struct.fdp1_fmt, ptr %431, i32 0, i32 6
  %436 = load i8, ptr %435, align 1, !range !17
  %437 = icmp eq i8 %436, 0
  %438 = or i32 %434, 32768
  %439 = select i1 %437, i32 %434, i32 %438
  %440 = getelementptr inbounds %struct.fdp1_fmt, ptr %431, i32 0, i32 7
  %441 = load i8, ptr %440, align 4, !range !17
  %442 = icmp eq i8 %441, 0
  %443 = or i32 %439, 16384
  %444 = select i1 %442, i32 %439, i32 %443
  %445 = icmp ugt i8 %433, 27
  br i1 %445, label %458, label %446

446:                                              ; preds = %429
  %447 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 8
  %448 = load i8, ptr %447, align 2
  %449 = icmp eq i8 %448, 2
  br i1 %449, label %450, label %452

450:                                              ; preds = %446
  %451 = or i32 %444, 1280
  br label %458

452:                                              ; preds = %446
  %453 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 9
  %454 = load i8, ptr %453, align 1
  %455 = icmp eq i8 %454, 1
  %456 = select i1 %455, i32 768, i32 256
  %457 = or i32 %456, %444
  br label %458

458:                                              ; preds = %452, %450, %429
  %459 = phi i32 [ %451, %450 ], [ %444, %429 ], [ %457, %452 ]
  %460 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 11
  %461 = load i8, ptr %460, align 4
  %462 = zext i8 %461 to i32
  %463 = shl nuw i32 %462, 24
  %464 = or i32 %463, %459
  %465 = getelementptr inbounds %struct.fdp1_fmt, ptr %431, i32 0, i32 8
  %466 = load i8, ptr %465, align 1
  %467 = zext i8 %466 to i32
  %468 = load ptr, ptr %263, align 4
  %469 = getelementptr inbounds %struct.fdp1_fmt, ptr %468, i32 0, i32 8
  %470 = load i8, ptr %469, align 1
  %471 = zext i8 %470 to i32
  %472 = shl nuw nsw i32 %471, 4
  %473 = or i32 %472, %467
  %474 = load i32, ptr @debug, align 4
  %475 = icmp ugt i32 %474, 1
  br i1 %475, label %476, label %479

476:                                              ; preds = %458
  %477 = getelementptr inbounds %struct.v4l2_device, ptr %417, i32 0, i32 4
  %478 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %477, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %464, i32 noundef 192) #18
  br label %479

479:                                              ; preds = %476, %458
  %480 = getelementptr inbounds %struct.fdp1_dev, ptr %417, i32 0, i32 5
  %481 = load ptr, ptr %480, align 4
  %482 = getelementptr i8, ptr %481, i32 192
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %482, i32 %464) #17, !srcloc !12
  %483 = load i32, ptr @debug, align 4
  %484 = icmp ugt i32 %483, 1
  br i1 %484, label %485, label %488

485:                                              ; preds = %479
  %486 = getelementptr inbounds %struct.v4l2_device, ptr %417, i32 0, i32 4
  %487 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %486, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 268435456, i32 noundef 196) #18
  br label %488

488:                                              ; preds = %485, %479
  %489 = load ptr, ptr %480, align 4
  %490 = getelementptr i8, ptr %489, i32 196
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %490, i32 268435456) #17, !srcloc !12
  %491 = load i32, ptr @debug, align 4
  %492 = icmp ugt i32 %491, 1
  br i1 %492, label %493, label %496

493:                                              ; preds = %488
  %494 = getelementptr inbounds %struct.v4l2_device, ptr %417, i32 0, i32 4
  %495 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %494, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %473, i32 noundef 216) #18
  br label %496

496:                                              ; preds = %493, %488
  %497 = load ptr, ptr %480, align 4
  %498 = getelementptr i8, ptr %497, i32 216
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %498, i32 %473) #17, !srcloc !12
  %499 = load i32, ptr @debug, align 4
  %500 = icmp ugt i32 %499, 1
  br i1 %500, label %501, label %504

501:                                              ; preds = %496
  %502 = getelementptr inbounds %struct.v4l2_device, ptr %417, i32 0, i32 4
  %503 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %502, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %430, i32 noundef 200) #18
  br label %504

504:                                              ; preds = %501, %496
  %505 = load ptr, ptr %480, align 4
  %506 = getelementptr i8, ptr %505, i32 200
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %506, i32 %430) #17, !srcloc !12
  %507 = getelementptr i8, ptr %9, i32 -4
  %508 = load ptr, ptr %507, align 4
  %509 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %508, i32 0, i32 1
  %510 = load i32, ptr %509, align 4
  %511 = load i32, ptr @debug, align 4
  %512 = icmp ugt i32 %511, 1
  br i1 %512, label %513, label %516

513:                                              ; preds = %504
  %514 = getelementptr inbounds %struct.v4l2_device, ptr %417, i32 0, i32 4
  %515 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %514, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %510, i32 noundef 204) #18
  br label %516

516:                                              ; preds = %513, %504
  %517 = load ptr, ptr %480, align 4
  %518 = getelementptr i8, ptr %517, i32 204
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %518, i32 %510) #17, !srcloc !12
  %519 = load ptr, ptr %507, align 4
  %520 = getelementptr %struct.fdp1_field_buffer, ptr %519, i32 0, i32 1, i32 1
  %521 = load i32, ptr %520, align 4
  %522 = load i32, ptr @debug, align 4
  %523 = icmp ugt i32 %522, 1
  br i1 %523, label %524, label %527

524:                                              ; preds = %516
  %525 = getelementptr inbounds %struct.v4l2_device, ptr %417, i32 0, i32 4
  %526 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %525, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %521, i32 noundef 208) #18
  br label %527

527:                                              ; preds = %524, %516
  %528 = load ptr, ptr %480, align 4
  %529 = getelementptr i8, ptr %528, i32 208
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %529, i32 %521) #17, !srcloc !12
  %530 = load ptr, ptr %507, align 4
  %531 = getelementptr %struct.fdp1_field_buffer, ptr %530, i32 0, i32 1, i32 2
  %532 = load i32, ptr %531, align 4
  %533 = load i32, ptr @debug, align 4
  %534 = icmp ugt i32 %533, 1
  br i1 %534, label %535, label %538

535:                                              ; preds = %527
  %536 = getelementptr inbounds %struct.v4l2_device, ptr %417, i32 0, i32 4
  %537 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %536, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %532, i32 noundef 212) #18
  br label %538

538:                                              ; preds = %535, %527
  %539 = load ptr, ptr %480, align 4
  %540 = getelementptr i8, ptr %539, i32 212
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %540, i32 %532) #17, !srcloc !12
  %541 = load i32, ptr @debug, align 4
  %542 = icmp ugt i32 %541, 1
  br i1 %542, label %543, label %546

543:                                              ; preds = %538
  %544 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %545 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %544, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 1024, i32 noundef 480) #18
  br label %546

546:                                              ; preds = %543, %538
  %547 = load ptr, ptr %26, align 4
  %548 = getelementptr i8, ptr %547, i32 480
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %548, i32 1024) #17, !srcloc !12
  %549 = load i32, ptr @debug, align 4
  %550 = icmp ugt i32 %549, 1
  br i1 %550, label %551, label %554

551:                                              ; preds = %546
  %552 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %553 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %552, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 65553, i32 noundef 56) #18
  br label %554

554:                                              ; preds = %551, %546
  %555 = load ptr, ptr %26, align 4
  %556 = getelementptr i8, ptr %555, i32 56
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %556, i32 65553) #17, !srcloc !12
  %557 = getelementptr inbounds %struct.fdp1_dev, ptr %3, i32 0, i32 11
  %558 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #17
  %559 = getelementptr inbounds %struct.fdp1_dev, ptr %3, i32 0, i32 11, i32 1
  %560 = load ptr, ptr %559, align 4
  store ptr %9, ptr %559, align 4
  store ptr %557, ptr %9, align 4
  store ptr %560, ptr %16, align 4
  store volatile ptr %9, ptr %560, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %558) #17
  %561 = load i32, ptr @debug, align 4
  %562 = icmp ugt i32 %561, 1
  br i1 %562, label %563, label %566

563:                                              ; preds = %554
  %564 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %565 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %564, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 1, i32 noundef 0) #18
  br label %566

566:                                              ; preds = %563, %554
  %567 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %567, i32 1) #17, !srcloc !12
  %568 = load i32, ptr @debug, align 4
  %569 = icmp ugt i32 %568, 1
  br i1 %569, label %570, label %573

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %572 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %571, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 1, i32 noundef 8) #18
  br label %573

573:                                              ; preds = %570, %566
  %574 = load ptr, ptr %26, align 4
  %575 = getelementptr i8, ptr %574, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %575, i32 1) #17, !srcloc !12
  %576 = load i32, ptr @debug, align 4
  %577 = icmp ugt i32 %576, 1
  br i1 %577, label %578, label %581

578:                                              ; preds = %573
  %579 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %580 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %579, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 1, i32 noundef 4) #18
  br label %581

581:                                              ; preds = %578, %573
  %582 = load ptr, ptr %26, align 4
  %583 = getelementptr i8, ptr %582, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %583, i32 1) #17, !srcloc !12
  br label %584

584:                                              ; preds = %581, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fdp1_m2m_device_run(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %7, ptr noundef nonnull @__func__.fdp1_m2m_device_run) #18
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 5
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %12, i32 0, i32 8
  %14 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %13) #17
  %15 = getelementptr inbounds %struct.fdp1_buffer, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 14
  %20 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 14, i32 1
  %21 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 15
  %22 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  br label %30

23:                                               ; preds = %49, %9
  %24 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 7
  %25 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 15
  %26 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 14
  %27 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 3
  %28 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 16
  %29 = load i32, ptr @debug, align 4
  br label %53

30:                                               ; preds = %49, %18
  %31 = phi i32 [ 0, %18 ], [ %50, %49 ]
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.fdp1_dev, ptr %32, i32 0, i32 3
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #17
  %35 = getelementptr %struct.fdp1_buffer, ptr %14, i32 0, i32 1, i32 %31, i32 4
  %36 = load ptr, ptr %20, align 4
  store ptr %35, ptr %20, align 4
  store ptr %19, ptr %35, align 4
  %37 = getelementptr %struct.fdp1_buffer, ptr %14, i32 0, i32 1, i32 %31, i32 4, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %35, ptr %36, align 4
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr inbounds %struct.fdp1_dev, ptr %38, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %34) #17
  %40 = load i32, ptr %21, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %21, align 4
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %30
  %45 = getelementptr %struct.fdp1_buffer, ptr %14, i32 0, i32 1, i32 %31, i32 3
  %46 = load i8, ptr %45, align 4, !range !17
  %47 = zext i8 %46 to i32
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %22, ptr noundef nonnull @__func__.fdp1_m2m_device_run, i32 noundef %31, i32 noundef %47) #18
  br label %49

49:                                               ; preds = %44, %30
  %50 = add nuw i32 %31, 1
  %51 = load i32, ptr %15, align 8
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %30, label %23

53:                                               ; preds = %183, %23
  %54 = phi i32 [ %29, %23 ], [ %184, %183 ]
  %55 = load ptr, ptr %2, align 4
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.v4l2_device, ptr %55, i32 0, i32 4
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %58, ptr noundef nonnull @__func__.fdp1_prepare_job) #18
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, ptr %24, align 4
  %62 = add i32 %61, -1
  %63 = icmp ult i32 %62, 5
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr inbounds [5 x i32], ptr @switch.table.fdp1_m2m_device_run, i32 0, i32 %62
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i32 [ 1, %60 ], [ %66, %64 ]
  %69 = load i32, ptr %25, align 4
  %70 = icmp ult i32 %69, %68
  br i1 %70, label %190, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.fdp1_dev, ptr %55, i32 0, i32 9
  %73 = getelementptr inbounds %struct.fdp1_dev, ptr %55, i32 0, i32 3
  %74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %73) #17
  %75 = load volatile ptr, ptr %72, align 4
  %76 = icmp eq ptr %75, %72
  %77 = getelementptr i8, ptr %75, i32 -16
  %78 = icmp eq ptr %77, null
  %79 = or i1 %76, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %74) #17
  %81 = load i32, ptr @debug, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %190, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.v4l2_device, ptr %55, i32 0, i32 4
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %84, ptr noundef nonnull @__func__.fdp1_prepare_job) #18
  br label %190

86:                                               ; preds = %71
  %87 = getelementptr i8, ptr %75, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %75, align 4
  %90 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  store ptr %88, ptr %90, align 4
  store volatile ptr %89, ptr %88, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %75, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %87, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %74) #17
  %91 = load i32, ptr %25, align 4
  %92 = add i32 %91, -1
  store i32 %92, ptr %25, align 4
  %93 = load ptr, ptr %2, align 4
  %94 = getelementptr inbounds %struct.fdp1_dev, ptr %93, i32 0, i32 3
  %95 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %94) #17
  %96 = load volatile ptr, ptr %26, align 4
  %97 = icmp eq ptr %96, %26
  %98 = getelementptr i8, ptr %96, i32 -24
  %99 = select i1 %97, ptr null, ptr %98
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %86
  %102 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %99, i32 0, i32 4
  %103 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %99, i32 0, i32 4, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %102, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %104, ptr %106, align 4
  store volatile ptr %105, ptr %104, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %102, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %103, align 4
  br label %107

107:                                              ; preds = %101, %86
  %108 = load ptr, ptr %2, align 4
  %109 = getelementptr inbounds %struct.fdp1_dev, ptr %108, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %109, i32 noundef %95) #17
  %110 = getelementptr i8, ptr %75, i32 -12
  store ptr %99, ptr %110, align 4
  %111 = load i32, ptr @debug, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %100, label %113, label %121

113:                                              ; preds = %107
  br i1 %112, label %117, label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.v4l2_device, ptr %55, i32 0, i32 4
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %115, ptr noundef nonnull @__func__.fdp1_prepare_job) #18
  br label %117

117:                                              ; preds = %114, %113
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %77, i8 0, i32 24, i1 false) #17
  %118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %73) #17
  %119 = getelementptr inbounds %struct.fdp1_dev, ptr %55, i32 0, i32 9, i32 1
  %120 = load ptr, ptr %119, align 4
  store ptr %75, ptr %119, align 4
  store ptr %72, ptr %75, align 4
  store ptr %120, ptr %87, align 4
  store volatile ptr %75, ptr %120, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %118) #17
  br label %190

121:                                              ; preds = %107
  br i1 %112, label %125, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.v4l2_device, ptr %55, i32 0, i32 4
  %124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %123, ptr noundef nonnull @__func__.fdp1_prepare_job) #18
  br label %125

125:                                              ; preds = %122, %121
  %126 = load ptr, ptr %11, align 4
  %127 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %126, i32 0, i32 7
  %128 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %127) #17
  %129 = getelementptr inbounds %struct.fdp1_buffer, ptr %128, i32 0, i32 1
  %130 = getelementptr i8, ptr %75, i32 -4
  store ptr %129, ptr %130, align 4
  %131 = load i32, ptr %27, align 4
  %132 = load ptr, ptr %110, align 4
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %133, i32 0, i32 4
  store i32 %131, ptr %134, align 8
  %135 = load i32, ptr %27, align 4
  %136 = load ptr, ptr %130, align 4
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %137, i32 0, i32 4
  store i32 %135, ptr %138, align 8
  %139 = load i32, ptr %27, align 4
  %140 = add i32 %139, 1
  store i32 %140, ptr %27, align 4
  %141 = load i32, ptr %24, align 4
  switch i32 %141, label %146 [
    i32 1, label %142
    i32 3, label %142
    i32 4, label %142
  ]

142:                                              ; preds = %125, %125, %125
  %143 = load ptr, ptr %28, align 4
  store ptr %143, ptr %77, align 4
  %144 = load ptr, ptr %110, align 4
  store ptr %144, ptr %28, align 4
  %145 = load i32, ptr %24, align 4
  br label %146

146:                                              ; preds = %142, %125
  %147 = phi i32 [ %141, %125 ], [ %145, %142 ]
  switch i32 %147, label %159 [
    i32 1, label %148
    i32 3, label %148
    i32 5, label %148
  ]

148:                                              ; preds = %146, %146, %146
  %149 = load ptr, ptr %2, align 4
  %150 = getelementptr inbounds %struct.fdp1_dev, ptr %149, i32 0, i32 3
  %151 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %150) #17
  %152 = load volatile ptr, ptr %26, align 4
  %153 = icmp eq ptr %152, %26
  %154 = getelementptr i8, ptr %152, i32 -24
  %155 = select i1 %153, ptr null, ptr %154
  %156 = load ptr, ptr %2, align 4
  %157 = getelementptr inbounds %struct.fdp1_dev, ptr %156, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %157, i32 noundef %151) #17
  %158 = getelementptr i8, ptr %75, i32 -8
  store ptr %155, ptr %158, align 4
  br label %159

159:                                              ; preds = %148, %146
  %160 = load ptr, ptr %110, align 4
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.vb2_buffer, ptr %161, i32 0, i32 5
  %163 = load i64, ptr %162, align 8
  %164 = load ptr, ptr %130, align 4
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.vb2_buffer, ptr %165, i32 0, i32 5
  store i64 %163, ptr %166, align 8
  %167 = load ptr, ptr %110, align 4
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %168, i32 0, i32 1
  %170 = load i32, ptr %169, align 8
  %171 = and i32 %170, 458752
  %172 = load ptr, ptr %130, align 4
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %173, i32 0, i32 1
  store i32 %171, ptr %174, align 8
  %175 = load i32, ptr %10, align 4
  %176 = add i32 %175, 1
  store i32 %176, ptr %10, align 4
  %177 = getelementptr inbounds %struct.fdp1_dev, ptr %55, i32 0, i32 10
  %178 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %73) #17
  %179 = getelementptr inbounds %struct.fdp1_dev, ptr %55, i32 0, i32 10, i32 1
  %180 = load ptr, ptr %179, align 4
  store ptr %75, ptr %179, align 4
  store ptr %177, ptr %75, align 4
  store ptr %180, ptr %87, align 4
  store volatile ptr %75, ptr %180, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %178) #17
  %181 = load i32, ptr @debug, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %185, %159
  %184 = phi i32 [ 0, %159 ], [ %189, %185 ]
  br label %53

185:                                              ; preds = %159
  %186 = getelementptr inbounds %struct.v4l2_device, ptr %55, i32 0, i32 4
  %187 = load i32, ptr %10, align 4
  %188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %186, ptr noundef nonnull @__func__.fdp1_prepare_job, i32 noundef %187) #18
  %189 = load i32, ptr @debug, align 4
  br label %183

190:                                              ; preds = %117, %83, %80, %67
  %191 = load i32, ptr %10, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %190
  %194 = load i32, ptr @debug, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %197, ptr noundef nonnull @__func__.fdp1_m2m_device_run) #18
  br label %199

199:                                              ; preds = %196, %193
  %200 = getelementptr inbounds %struct.fdp1_dev, ptr %3, i32 0, i32 14
  %201 = load ptr, ptr %200, align 8
  %202 = load ptr, ptr %11, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %201, ptr noundef %202) #17
  br label %204

203:                                              ; preds = %190
  tail call fastcc void @fdp1_device_process(ptr noundef %0)
  br label %204

204:                                              ; preds = %203, %199
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_m2m_job_ready(ptr nocapture noundef readonly %0) #2 {
  %2 = load i32, ptr @debug, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v4l2_device, ptr %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 8, i32 3
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 7, i32 3
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %7, ptr noundef nonnull @__func__.fdp1_m2m_job_ready, i32 noundef %12, i32 noundef %15) #18
  br label %17

17:                                               ; preds = %4, %1
  %18 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -4
  %21 = icmp ult i32 %20, 6
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds [6 x i32], ptr @switch.table.fdp1_g_ctrl, i32 0, i32 %20
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i32 [ 1, %17 ], [ %24, %22 ]
  %27 = getelementptr inbounds %struct.v4l2_fh, ptr %0, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %28, i32 0, i32 8, i32 3
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %28, i32 0, i32 7, i32 3
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = icmp ugt i32 %26, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %32, %25
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.v4l2_device, ptr %42, i32 0, i32 4
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %43, ptr noundef nonnull @__func__.fdp1_m2m_job_ready) #18
  br label %45

45:                                               ; preds = %40, %37, %32
  %46 = phi i32 [ 0, %40 ], [ 0, %37 ], [ 1, %32 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fdp1_m2m_job_abort(ptr nocapture noundef %0) #2 {
  %2 = load i32, ptr @debug, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 6
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_device, ptr %10, i32 0, i32 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %11, ptr noundef nonnull @__func__.fdp1_m2m_job_abort) #18
  %13 = load i32, ptr @debug, align 4
  %14 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 6
  store i32 1, ptr %14, align 4
  %15 = load ptr, ptr %9, align 4
  %16 = icmp ugt i32 %13, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.v4l2_device, ptr %15, i32 0, i32 4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %18, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 0, i32 noundef 4) #18
  br label %20

20:                                               ; preds = %17, %8, %4
  %21 = phi ptr [ %7, %4 ], [ %15, %8 ], [ %15, %17 ]
  %22 = phi ptr [ %6, %4 ], [ %9, %8 ], [ %9, %17 ]
  %23 = getelementptr inbounds %struct.fdp1_dev, ptr %21, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #17, !srcloc !12
  %26 = load ptr, ptr %22, align 4
  %27 = load i32, ptr @debug, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.v4l2_device, ptr %26, i32 0, i32 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %30, ptr noundef nonnull @__func__.fdp1_write, i32 noundef 1, i32 noundef 28) #18
  br label %32

32:                                               ; preds = %29, %20
  %33 = getelementptr inbounds %struct.fdp1_dev, ptr %26, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 1) #17, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_open(ptr noundef %0) #2 {
  %2 = alloca %struct.v4l2_pix_format_mplane, align 1
  %3 = tail call ptr @video_devdata(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(192) %2, i8 0, i32 192, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.fdp1_dev, ptr %5, i32 0, i32 2
  %7 = tail call i32 @mutex_lock_interruptible(ptr noundef %6) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %69

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 668) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %67, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @video_devdata(ptr noundef %0) #17
  tail call void @v4l2_fh_init(ptr noundef nonnull %11, ptr noundef %14) #17
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  store ptr %11, ptr %15, align 8
  %16 = getelementptr inbounds %struct.fdp1_ctx, ptr %11, i32 0, i32 1
  store ptr %5, ptr %16, align 8
  %17 = getelementptr inbounds %struct.fdp1_ctx, ptr %11, i32 0, i32 14
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.fdp1_ctx, ptr %11, i32 0, i32 14, i32 1
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.fdp1_ctx, ptr %11, i32 0, i32 5
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fdp1_ctx, ptr %11, i32 0, i32 3
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fdp1_ctx, ptr %11, i32 0, i32 2
  %22 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %21, i32 noundef 3, ptr noundef null, ptr noundef null) #17
  %23 = tail call ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %21, ptr noundef nonnull @fdp1_ctrl_ops, i32 noundef 10422532, i8 noundef zeroext 5, i64 noundef 1, i8 noundef zeroext 3, ptr noundef nonnull @fdp1_ctrl_deint_menu) #17
  %24 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @fdp1_ctrl_ops, i32 noundef 9963815, i64 noundef 1, i64 noundef 2, i64 noundef 1, i64 noundef 1) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 20
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 128
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %13
  %31 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %21, ptr noundef nonnull @fdp1_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 255) #17
  %32 = getelementptr inbounds %struct.fdp1_ctx, ptr %11, i32 0, i32 2, i32 9
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.v4l2_fh, ptr %11, i32 0, i32 2
  store ptr %21, ptr %36, align 4
  %37 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %21) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(192) %2, i8 0, i32 192, i1 false)
  call fastcc void @fdp1_set_format(ptr noundef nonnull %11, ptr noundef nonnull %2, i32 noundef 10)
  %38 = getelementptr inbounds %struct.fdp1_dev, ptr %5, i32 0, i32 14
  %39 = load ptr, ptr %38, align 8
  %40 = call ptr @v4l2_m2m_ctx_init(ptr noundef %39, ptr noundef nonnull %11, ptr noundef nonnull @queue_init) #17
  %41 = getelementptr inbounds %struct.v4l2_fh, ptr %11, i32 0, i32 10
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = ptrtoint ptr %40 to i32
  br label %65

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.fdp1_dev, ptr %5, i32 0, i32 7
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 @__pm_runtime_resume(ptr noundef %47, i32 noundef 4) #17
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #17, !srcloc !14
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 0, i32 -1, ptr elementtype(i32) %51) #17, !srcloc !15
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  br label %63

56:                                               ; preds = %45
  call void @v4l2_fh_add(ptr noundef nonnull %11) #17
  %57 = load i32, ptr @debug, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %61 = load ptr, ptr %41, align 4
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %60, ptr noundef nonnull @__func__.fdp1_open, ptr noundef nonnull %11, ptr noundef %61) #18
  br label %67

63:                                               ; preds = %55, %50
  %64 = load ptr, ptr %41, align 4
  call void @v4l2_m2m_ctx_release(ptr noundef %64) #17
  br label %65

65:                                               ; preds = %63, %43, %30
  %66 = phi i32 [ %44, %43 ], [ %48, %63 ], [ %33, %30 ]
  call void @v4l2_ctrl_handler_free(ptr noundef %21) #17
  call void @kfree(ptr noundef nonnull %11) #17
  br label %67

67:                                               ; preds = %65, %59, %56, %9
  %68 = phi i32 [ 0, %59 ], [ 0, %56 ], [ %66, %65 ], [ -12, %9 ]
  call void @mutex_unlock(ptr noundef %6) #17
  br label %69

69:                                               ; preds = %67, %1
  %70 = phi i32 [ -512, %1 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %2) #17
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_release(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %10, ptr noundef nonnull @__func__.fdp1_release, ptr noundef %6) #18
  br label %12

12:                                               ; preds = %9, %1
  tail call void @v4l2_fh_del(ptr noundef %6) #17
  tail call void @v4l2_fh_exit(ptr noundef %6) #17
  %13 = getelementptr inbounds %struct.fdp1_ctx, ptr %6, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %14) #17
  %15 = getelementptr inbounds %struct.v4l2_fh, ptr %6, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %16) #17
  tail call void @mutex_unlock(ptr noundef %14) #17
  tail call void @kfree(ptr noundef %6) #17
  %17 = getelementptr inbounds %struct.fdp1_dev, ptr %4, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 5) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fdp1_set_format(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = alloca ptr, align 4
  switch i32 %2, label %7 [
    i32 14, label %5
    i32 12, label %5
    i32 10, label %5
    i32 8, label %5
    i32 7, label %5
    i32 5, label %5
    i32 3, label %5
    i32 2, label %5
  ]

5:                                                ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %6 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12
  br label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr null, ptr %4, align 4, !annotation !8
  %11 = icmp eq i32 %2, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call fastcc void @fdp1_try_fmt_output(ptr noundef nonnull %4, ptr noundef %1)
  br label %14

13:                                               ; preds = %9
  call fastcc void @fdp1_try_fmt_capture(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1)
  br label %14

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %4, align 4
  store ptr %15, ptr %10, align 4
  %16 = getelementptr inbounds %struct.fdp1_q_data, ptr %10, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(192) %16, ptr noundef align 1 dereferenceable(192) %1, i32 192, i1 false)
  %17 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 1
  %19 = getelementptr inbounds %struct.fdp1_q_data, ptr %10, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 1
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = lshr i32 %18, 1
  store i32 %24, ptr %19, align 4
  br label %25

25:                                               ; preds = %23, %14
  %26 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 0, i32 1
  %27 = load i32, ptr %26, align 1
  %28 = getelementptr inbounds %struct.fdp1_q_data, ptr %10, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  %29 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 1, i32 1
  %30 = load i32, ptr %29, align 1
  %31 = getelementptr inbounds %struct.fdp1_q_data, ptr %10, i32 0, i32 4
  store i32 %30, ptr %31, align 4
  %32 = load i32, ptr %20, align 1
  switch i32 %32, label %36 [
    i32 4, label %33
    i32 8, label %33
    i32 9, label %33
  ]

33:                                               ; preds = %25, %25, %25
  %34 = shl i32 %27, 1
  store i32 %34, ptr %28, align 4
  %35 = shl i32 %30, 1
  store i32 %35, ptr %31, align 4
  br label %36

36:                                               ; preds = %33, %25
  br i1 %11, label %37, label %58

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13
  %39 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(192) %39, ptr noundef align 4 dereferenceable(192) %16, i32 192, i1 false)
  %40 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 1, i32 5
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(160) %40, i8 0, i32 160, i1 false)
  %41 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 1, i32 3
  store i32 1, ptr %41, align 4
  %42 = load i32, ptr %20, align 1
  %43 = icmp eq i32 %42, 7
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 1, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %46, 1
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %37
  call fastcc void @fdp1_try_fmt_capture(ptr noundef %0, ptr noundef %38, ptr noundef %39)
  %49 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 1, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 2
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 1, i32 5, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 3
  store i32 %53, ptr %54, align 4
  %55 = getelementptr %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 1, i32 5, i32 1, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 13, i32 4
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %48, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  store i32 10, ptr %1, align 4
  %4 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 1
  store i32 19, ptr %4, align 4
  %5 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 12
  store i32 720, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 7
  store ptr @fdp1_qops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 13
  store i32 16384, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fdp1_dev, ptr %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 5
  store ptr %12, ptr %13, align 4
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr inbounds %struct.fdp1_dev, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = tail call i32 @vb2_queue_init(ptr noundef %1) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  store i32 9, ptr %2, align 4
  %21 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 1
  store i32 19, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  store ptr %0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 12
  store i32 720, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 7
  store ptr @fdp1_qops, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 8
  store ptr @vb2_dma_contig_memops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 13
  store i32 16384, ptr %26, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.fdp1_dev, ptr %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 5
  store ptr %28, ptr %29, align 4
  %30 = load ptr, ptr %10, align 4
  %31 = getelementptr inbounds %struct.fdp1_dev, ptr %30, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = tail call i32 @vb2_queue_init(ptr noundef %2) #17
  br label %35

35:                                               ; preds = %20, %3
  %36 = phi i32 [ %34, %20 ], [ %18, %3 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fdp1_g_ctrl(ptr nocapture noundef %0) #10 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 9963815
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 168
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %10, 6
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = getelementptr inbounds [6 x i32], ptr @switch.table.fdp1_g_ctrl, i32 0, i32 %10
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi i32 [ %14, %12 ], [ 1, %5 ]
  %17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i32 [ 1, %1 ], [ 0, %15 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fdp1_s_ctrl(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %15 [
    i32 9963817, label %6
    i32 10422532, label %11
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i8
  %10 = getelementptr i8, ptr %3, i32 148
  store i8 %9, ptr %10, align 4
  br label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %3, i32 128
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6, %1
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fdp1_try_fmt_output(ptr noundef writeonly %0, ptr nocapture noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 1
  %5 = tail call fastcc ptr @fdp1_find_format(i32 noundef %4)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fdp1_fmt, ptr %5, i32 0, i32 9
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %2
  br label %13

13:                                               ; preds = %12, %7
  %14 = phi ptr [ %5, %7 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 18), %12 ]
  %15 = icmp eq ptr %0, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store ptr %14, ptr %0, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, ptr %14, align 4
  store i32 %18, ptr %3, align 1
  %19 = getelementptr inbounds %struct.fdp1_fmt, ptr %14, i32 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 6
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 1
  %24 = add i32 %23, -1
  %25 = icmp ult i32 %24, 9
  br i1 %25, label %27, label %26

26:                                               ; preds = %27, %17
  store i32 4, ptr %22, align 1
  br label %35

27:                                               ; preds = %17
  %28 = trunc i32 %24 to i16
  %29 = lshr i16 505, %28
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %26, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds [9 x i32], ptr @switch.table.fdp1_try_fmt_output, i32 0, i32 %24
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i32 [ 4, %26 ], [ %34, %32 ]
  %37 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, ptr %37, align 1
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32, ptr %1, align 1
  %43 = getelementptr inbounds %struct.fdp1_fmt, ptr %14, i32 0, i32 3
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 0, %45
  %47 = and i32 %42, %46
  %48 = tail call i32 @llvm.umax.i32(i32 %47, i32 80)
  %49 = tail call i32 @llvm.umin.i32(i32 %48, i32 3840)
  store i32 %49, ptr %1, align 1
  %50 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 1
  %51 = load i32, ptr %50, align 1
  %52 = getelementptr inbounds %struct.fdp1_fmt, ptr %14, i32 0, i32 4
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 0, %54
  %56 = and i32 %51, %55
  %57 = icmp eq i32 %36, 7
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = tail call i32 @llvm.umax.i32(i32 %56, i32 40)
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 1080)
  br label %64

61:                                               ; preds = %41
  %62 = tail call i32 @llvm.umax.i32(i32 %56, i32 80)
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 2160)
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i32 [ %63, %61 ], [ %60, %58 ]
  store i32 %65, ptr %50, align 1
  %66 = load i8, ptr %19, align 1
  %67 = tail call i8 @llvm.umin.i8(i8 %66, i8 2) #17
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %111, label %69

69:                                               ; preds = %64
  %70 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 0
  %71 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 0, i32 1
  %72 = load i32, ptr %71, align 1
  %73 = getelementptr %struct.fdp1_fmt, ptr %14, i32 0, i32 1, i32 0
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = mul nuw nsw i32 %49, %75
  %77 = lshr i32 %76, 3
  %78 = tail call i32 @llvm.umax.i32(i32 %72, i32 %77) #17
  %79 = tail call i32 @llvm.umin.i32(i32 %78, i32 8064) #17
  %80 = add nsw i32 %79, -1
  %81 = or i32 %80, 127
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %71, align 1
  %83 = mul nsw i32 %82, %65
  store i32 %83, ptr %70, align 1
  %84 = load i8, ptr %19, align 1
  %85 = tail call i8 @llvm.umin.i8(i8 %84, i8 2) #17
  %86 = icmp ugt i8 %85, 1
  br i1 %86, label %87, label %111

87:                                               ; preds = %69
  %88 = load i8, ptr %43, align 4
  %89 = load i8, ptr %52, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 1
  %92 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 1, i32 1
  %93 = load i32, ptr %92, align 1
  %94 = trunc i32 %49 to i16
  %95 = zext i8 %88 to i16
  %96 = udiv i16 %94, %95
  %97 = zext i16 %96 to i32
  %98 = getelementptr %struct.fdp1_fmt, ptr %14, i32 0, i32 1, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = mul nuw nsw i32 %100, %97
  %102 = lshr i32 %101, 3
  %103 = tail call i32 @llvm.umax.i32(i32 %93, i32 %102) #17
  %104 = tail call i32 @llvm.umin.i32(i32 %103, i32 8064) #17
  %105 = add nsw i32 %104, -1
  %106 = or i32 %105, 127
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %92, align 1
  %108 = mul nsw i32 %107, %65
  %109 = udiv i32 %108, %90
  store i32 %109, ptr %91, align 1
  %110 = load i8, ptr %19, align 1
  br label %111

111:                                              ; preds = %87, %69, %64
  %112 = phi i8 [ %66, %64 ], [ %84, %69 ], [ %110, %87 ]
  %113 = icmp eq i8 %112, 3
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 1
  %116 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 1, i32 1
  %117 = load i32, ptr %116, align 1
  %118 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 2
  %119 = getelementptr %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 2, i32 1
  store i32 %117, ptr %119, align 1
  %120 = load i32, ptr %115, align 1
  store i32 %120, ptr %118, align 1
  br label %121

121:                                              ; preds = %114, %111
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fdp1_try_fmt_capture(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1
  %5 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 8
  %8 = load i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  switch i32 %6, label %11 [
    i32 12, label %15
    i32 3, label %15
    i32 10, label %13
    i32 2, label %14
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 9
  br label %41

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14, %13, %10, %10
  %16 = phi i32 [ 6, %13 ], [ 2, %10 ], [ 2, %10 ], [ 8, %14 ]
  %17 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 9
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i8 %18, 0
  %21 = icmp eq i32 %6, 7
  %22 = select i1 %21, i32 1, i32 2
  %23 = select i1 %20, i32 %22, i32 %19
  br label %34

24:                                               ; preds = %3
  %25 = zext i8 %8 to i32
  %26 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 9
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i8 %27, 0
  %30 = icmp eq i32 %6, 7
  %31 = select i1 %30, i32 1, i32 2
  %32 = select i1 %29, i32 %31, i32 %28
  %33 = icmp eq i8 %8, 1
  br i1 %33, label %41, label %34

34:                                               ; preds = %24, %15
  %35 = phi i32 [ %23, %15 ], [ %32, %24 ]
  %36 = phi ptr [ %17, %15 ], [ %26, %24 ]
  %37 = phi i32 [ %16, %15 ], [ %25, %24 ]
  %38 = icmp eq i32 %37, 2
  %39 = icmp eq i32 %35, 2
  %40 = select i1 %38, i1 %39, i1 false
  br label %41

41:                                               ; preds = %34, %24, %11
  %42 = phi ptr [ %26, %24 ], [ %36, %34 ], [ %12, %11 ]
  %43 = phi i1 [ true, %24 ], [ %40, %34 ], [ true, %11 ]
  %44 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 2
  %45 = load i32, ptr %44, align 1
  %46 = tail call fastcc ptr @fdp1_find_format(i32 noundef %45)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  br i1 %43, label %54, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.fdp1_fmt, ptr %46, i32 0, i32 5
  %51 = load i8, ptr %50, align 2
  %52 = icmp ugt i8 %51, 27
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %41
  br label %54

54:                                               ; preds = %53, %49, %48
  %55 = phi ptr [ %46, %48 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 18), %53 ], [ %46, %49 ]
  %56 = icmp eq ptr %1, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store ptr %55, ptr %1, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, ptr %55, align 4
  store i32 %59, ptr %44, align 1
  %60 = getelementptr inbounds %struct.fdp1_fmt, ptr %55, i32 0, i32 2
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 6
  store i8 %61, ptr %62, align 1
  %63 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 3
  store i32 1, ptr %63, align 1
  %64 = load i32, ptr %5, align 4
  %65 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 4
  store i32 %64, ptr %65, align 1
  %66 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 10
  %67 = load i8, ptr %66, align 4
  %68 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 10
  store i8 %67, ptr %68, align 1
  %69 = getelementptr inbounds %struct.fdp1_fmt, ptr %55, i32 0, i32 5
  %70 = load i8, ptr %69, align 2
  %71 = icmp ugt i8 %70, 27
  br i1 %71, label %74, label %72

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 8
  store i8 0, ptr %73, align 1
  br label %78

74:                                               ; preds = %58
  %75 = load i8, ptr %7, align 2
  %76 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 8
  store i8 %75, ptr %76, align 1
  %77 = load i8, ptr %42, align 1
  br label %78

78:                                               ; preds = %74, %72
  %79 = phi i8 [ %77, %74 ], [ 0, %72 ]
  %80 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 9
  store i8 %79, ptr %80, align 1
  %81 = load i32, ptr %4, align 4
  store i32 %81, ptr %2, align 1
  %82 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 7
  %85 = getelementptr inbounds %struct.fdp1_ctx, ptr %0, i32 0, i32 12, i32 1, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = zext i1 %84 to i32
  %88 = shl i32 %86, %87
  %89 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 1
  store i32 %88, ptr %89, align 1
  %90 = load i8, ptr %60, align 1
  %91 = tail call i8 @llvm.umin.i8(i8 %90, i8 2) #17
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %135, label %93

93:                                               ; preds = %78
  %94 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 0
  %95 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 0, i32 1
  %96 = load i32, ptr %95, align 1
  %97 = getelementptr %struct.fdp1_fmt, ptr %55, i32 0, i32 1, i32 0
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = mul i32 %81, %99
  %101 = lshr i32 %100, 3
  %102 = tail call i32 @llvm.umax.i32(i32 %96, i32 %101) #17
  %103 = tail call i32 @llvm.umin.i32(i32 %102, i32 8064) #17
  %104 = add nsw i32 %103, -1
  %105 = or i32 %104, 127
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %95, align 1
  %107 = mul i32 %106, %88
  store i32 %107, ptr %94, align 1
  %108 = load i8, ptr %60, align 1
  %109 = tail call i8 @llvm.umin.i8(i8 %108, i8 2) #17
  %110 = icmp ugt i8 %109, 1
  br i1 %110, label %111, label %135

111:                                              ; preds = %93
  %112 = getelementptr inbounds %struct.fdp1_fmt, ptr %55, i32 0, i32 4
  %113 = getelementptr inbounds %struct.fdp1_fmt, ptr %55, i32 0, i32 3
  %114 = load i8, ptr %113, align 4
  %115 = zext i8 %114 to i32
  %116 = load i8, ptr %112, align 1
  %117 = zext i8 %116 to i32
  %118 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 1
  %119 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 1, i32 1
  %120 = load i32, ptr %119, align 1
  %121 = udiv i32 %81, %115
  %122 = getelementptr %struct.fdp1_fmt, ptr %55, i32 0, i32 1, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = mul i32 %121, %124
  %126 = lshr i32 %125, 3
  %127 = tail call i32 @llvm.umax.i32(i32 %120, i32 %126) #17
  %128 = tail call i32 @llvm.umin.i32(i32 %127, i32 8064) #17
  %129 = add nsw i32 %128, -1
  %130 = or i32 %129, 127
  %131 = add nsw i32 %130, 1
  store i32 %131, ptr %119, align 1
  %132 = mul i32 %131, %88
  %133 = udiv i32 %132, %117
  store i32 %133, ptr %118, align 1
  %134 = load i8, ptr %60, align 1
  br label %135

135:                                              ; preds = %111, %93, %78
  %136 = phi i8 [ %90, %78 ], [ %108, %93 ], [ %134, %111 ]
  %137 = icmp eq i8 %136, 3
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 1
  %140 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 1, i32 1
  %141 = load i32, ptr %140, align 1
  %142 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 2
  %143 = getelementptr %struct.v4l2_pix_format_mplane, ptr %2, i32 0, i32 5, i32 2, i32 1
  store i32 %141, ptr %143, align 1
  %144 = load i32, ptr %139, align 1
  store i32 %144, ptr %142, align 1
  br label %145

145:                                              ; preds = %138, %135
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define internal fastcc ptr @fdp1_find_format(i32 noundef %0) unnamed_addr #11 {
  switch i32 %0, label %2 [
    i32 826427218, label %28
    i32 842093144, label %3
    i32 892424792, label %4
    i32 1346520914, label %5
    i32 875713089, label %6
    i32 875713112, label %7
    i32 875708738, label %8
    i32 875714626, label %9
    i32 859981650, label %10
    i32 861030210, label %11
    i32 842093121, label %12
    i32 892424769, label %13
    i32 909200718, label %14
    i32 825642318, label %15
    i32 842091854, label %16
    i32 825380174, label %17
    i32 1498831189, label %18
    i32 1498765654, label %19
    i32 1448695129, label %20
    i32 1431918169, label %21
    i32 875711833, label %22
    i32 842288473, label %23
    i32 909200729, label %24
    i32 825642329, label %25
    i32 842091865, label %26
    i32 825380185, label %27
  ]

2:                                                ; preds = %1
  br label %28

3:                                                ; preds = %1
  br label %28

4:                                                ; preds = %1
  br label %28

5:                                                ; preds = %1
  br label %28

6:                                                ; preds = %1
  br label %28

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  br label %28

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  br label %28

12:                                               ; preds = %1
  br label %28

13:                                               ; preds = %1
  br label %28

14:                                               ; preds = %1
  br label %28

15:                                               ; preds = %1
  br label %28

16:                                               ; preds = %1
  br label %28

17:                                               ; preds = %1
  br label %28

18:                                               ; preds = %1
  br label %28

19:                                               ; preds = %1
  br label %28

20:                                               ; preds = %1
  br label %28

21:                                               ; preds = %1
  br label %28

22:                                               ; preds = %1
  br label %28

23:                                               ; preds = %1
  br label %28

24:                                               ; preds = %1
  br label %28

25:                                               ; preds = %1
  br label %28

26:                                               ; preds = %1
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %29 = phi ptr [ @fdp1_formats, %1 ], [ null, %2 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 1), %3 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 2), %4 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 3), %5 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 4), %6 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 5), %7 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 6), %8 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 7), %9 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 8), %10 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 9), %11 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 10), %12 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 11), %13 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 12), %14 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 13), %15 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 14), %16 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 15), %17 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 16), %18 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 17), %19 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 18), %20 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 19), %21 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 20), %22 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 21), %23 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 22), %24 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 23), %25 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 24), %26 ], [ getelementptr inbounds ([26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 25), %27 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) #12 {
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
  %10 = getelementptr inbounds %struct.fdp1_ctx, ptr %7, i32 0, i32 12
  br label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.fdp1_ctx, ptr %7, i32 0, i32 13
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  %15 = load i32, ptr %2, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = icmp ugt i32 %15, 3
  %19 = select i1 %18, i32 -22, i32 0
  br label %33

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.fdp1_q_data, ptr %14, i32 0, i32 1, i32 6
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  store i32 %23, ptr %2, align 4
  %24 = icmp eq i8 %22, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %25, %20
  %26 = phi i32 [ %30, %25 ], [ 0, %20 ]
  %27 = getelementptr %struct.fdp1_q_data, ptr %14, i32 0, i32 1, i32 5, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i32, ptr %3, i32 %26
  store i32 %28, ptr %29, align 4
  %30 = add nuw i32 %26, 1
  %31 = load i32, ptr %2, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %25, label %33

33:                                               ; preds = %25, %20, %17
  %34 = phi i32 [ %19, %17 ], [ 0, %20 ], [ 0, %25 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_buf_prepare(ptr noundef %0) #2 {
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
  %7 = getelementptr inbounds %struct.fdp1_ctx, ptr %4, i32 0, i32 12
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fdp1_ctx, ptr %4, i32 0, i32 13
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  switch i32 %5, label %37 [
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
  %13 = getelementptr inbounds %struct.fdp1_q_data, ptr %11, i32 0, i32 1, i32 3
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %39 [
    i32 1, label %15
    i32 7, label %23
    i32 4, label %19
    i32 5, label %19
    i32 6, label %19
    i32 8, label %19
    i32 9, label %19
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %39, label %28

19:                                               ; preds = %12, %12, %12, %12, %12
  %20 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %14
  br i1 %22, label %39, label %28

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -2
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %39, label %28

28:                                               ; preds = %23, %19, %15
  %29 = phi i32 [ %21, %19 ], [ %17, %15 ], [ %25, %23 ]
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %183, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.fdp1_ctx, ptr %4, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.v4l2_device, ptr %34, i32 0, i32 4
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %35, ptr noundef nonnull @__func__.fdp1_buf_prepare, i32 noundef %29, i32 noundef %14) #18
  br label %183

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 2
  store i32 1, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %23, %19, %15, %12
  %40 = getelementptr inbounds %struct.fdp1_q_data, ptr %11, i32 0, i32 1, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %79, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %45 = load i32, ptr %44, align 8
  br label %46

46:                                               ; preds = %74, %43
  %47 = phi i8 [ %41, %43 ], [ %75, %74 ]
  %48 = phi i32 [ 0, %43 ], [ %76, %74 ]
  %49 = getelementptr %struct.fdp1_q_data, ptr %11, i32 0, i32 1, i32 5, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %45, %48
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %48, i32 4
  %54 = load i32, ptr %53, align 8
  %55 = icmp ult i32 %54, %50
  br i1 %55, label %58, label %71

56:                                               ; preds = %46
  %57 = icmp eq i32 %50, 0
  br i1 %57, label %74, label %61

58:                                               ; preds = %52
  %59 = load i32, ptr @debug, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %183, label %64

61:                                               ; preds = %56
  %62 = load i32, ptr @debug, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %183, label %64

64:                                               ; preds = %61, %58
  %65 = phi i32 [ 0, %61 ], [ %54, %58 ]
  %66 = zext i8 %47 to i32
  %67 = getelementptr inbounds %struct.fdp1_ctx, ptr %4, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.v4l2_device, ptr %68, i32 0, i32 4
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %69, ptr noundef nonnull @__func__.fdp1_buf_prepare, i32 noundef %48, i32 noundef %66, i32 noundef %65, i32 noundef %50) #18
  br label %183

71:                                               ; preds = %52
  %72 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %48, i32 3
  store i32 %50, ptr %72, align 4
  %73 = load i8, ptr %40, align 4
  br label %74

74:                                               ; preds = %71, %56
  %75 = phi i8 [ %47, %56 ], [ %73, %71 ]
  %76 = add nuw nsw i32 %48, 1
  %77 = zext i8 %75 to i32
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %46, label %79

79:                                               ; preds = %74, %39
  %80 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %0, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, -4
  %83 = icmp ult i32 %82, 6
  br i1 %83, label %87, label %84

84:                                               ; preds = %87, %79
  %85 = icmp eq i32 %81, 6
  %86 = select i1 %85, i32 2, i32 1
  br label %92

87:                                               ; preds = %79
  %88 = trunc i32 %82 to i8
  %89 = lshr i8 51, %88
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %84, label %92

92:                                               ; preds = %87, %84
  %93 = phi i32 [ %86, %84 ], [ 2, %87 ]
  %94 = getelementptr inbounds %struct.fdp1_buffer, ptr %0, i32 0, i32 2
  store i32 %93, ptr %94, align 8
  %95 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %96 = getelementptr inbounds %struct.fdp1_q_data, ptr %11, i32 0, i32 1, i32 1
  %97 = getelementptr inbounds %struct.fdp1_q_data, ptr %11, i32 0, i32 2
  %98 = getelementptr inbounds %struct.fdp1_q_data, ptr %11, i32 0, i32 3
  %99 = getelementptr inbounds %struct.fdp1_q_data, ptr %11, i32 0, i32 4
  br label %100

100:                                              ; preds = %181, %92
  %101 = phi i32 [ %81, %92 ], [ %182, %181 ]
  %102 = phi i32 [ 0, %92 ], [ %116, %181 ]
  %103 = getelementptr %struct.fdp1_buffer, ptr %0, i32 0, i32 1, i32 %102
  %104 = add i32 %101, -4
  %105 = icmp ult i32 %104, 6
  br i1 %105, label %109, label %106

106:                                              ; preds = %109, %100
  %107 = icmp eq i32 %101, 6
  %108 = select i1 %107, i32 2, i32 1
  br label %114

109:                                              ; preds = %100
  %110 = trunc i32 %104 to i8
  %111 = lshr i8 51, %110
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %106, label %114

114:                                              ; preds = %109, %106
  %115 = phi i32 [ %108, %106 ], [ 2, %109 ]
  store ptr %0, ptr %103, align 4
  %116 = add nuw i32 %102, 1
  %117 = icmp eq i32 %116, %115
  %118 = getelementptr %struct.fdp1_buffer, ptr %0, i32 0, i32 1, i32 %102, i32 3
  %119 = zext i1 %117 to i8
  store i8 %119, ptr %118, align 4
  %120 = load i32, ptr %95, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %122, %114
  %123 = phi i32 [ %127, %122 ], [ 0, %114 ]
  %124 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef %123) #17
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr %struct.fdp1_buffer, ptr %0, i32 0, i32 1, i32 %102, i32 1, i32 %123
  store i32 %125, ptr %126, align 4
  %127 = add nuw i32 %123, 1
  %128 = load i32, ptr %95, align 8
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %122, label %130

130:                                              ; preds = %122, %114
  %131 = phi i32 [ 0, %114 ], [ %128, %122 ]
  %132 = load i32, ptr %80, align 4
  switch i32 %132, label %145 [
    i32 4, label %133
    i32 8, label %139
    i32 5, label %139
    i32 9, label %142
    i32 6, label %142
  ]

133:                                              ; preds = %130
  %134 = load i32, ptr %96, align 4
  %135 = icmp ult i32 %134, 576
  %136 = zext i1 %135 to i32
  %137 = icmp eq i32 %102, %136
  %138 = select i1 %137, i32 2, i32 3
  br label %145

139:                                              ; preds = %130, %130
  %140 = icmp eq i32 %102, 0
  %141 = select i1 %140, i32 2, i32 3
  br label %145

142:                                              ; preds = %130, %130
  %143 = icmp eq i32 %102, 0
  %144 = select i1 %143, i32 3, i32 2
  br label %145

145:                                              ; preds = %142, %139, %133, %130
  %146 = phi i32 [ %144, %142 ], [ %141, %139 ], [ %138, %133 ], [ %132, %130 ]
  %147 = getelementptr %struct.fdp1_buffer, ptr %0, i32 0, i32 1, i32 %102, i32 2
  store i32 %146, ptr %147, align 4
  %148 = icmp eq i32 %102, 0
  br i1 %148, label %178, label %149

149:                                              ; preds = %145
  switch i32 %132, label %178 [
    i32 4, label %150
    i32 8, label %150
    i32 9, label %150
    i32 5, label %163
    i32 6, label %163
  ]

150:                                              ; preds = %149, %149, %149
  %151 = icmp eq i32 %131, 0
  br i1 %151, label %178, label %152

152:                                              ; preds = %152, %150
  %153 = phi i32 [ %160, %152 ], [ 0, %150 ]
  %154 = icmp eq i32 %153, 0
  %155 = select i1 %154, ptr %98, ptr %99
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr %struct.fdp1_buffer, ptr %0, i32 0, i32 1, i32 %102, i32 1, i32 %153
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, %156
  store i32 %159, ptr %157, align 4
  %160 = add nuw i32 %153, 1
  %161 = load i32, ptr %95, align 8
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %152, label %178

163:                                              ; preds = %149, %149
  %164 = icmp eq i32 %131, 0
  br i1 %164, label %178, label %165

165:                                              ; preds = %165, %163
  %166 = phi i32 [ %175, %165 ], [ 0, %163 ]
  %167 = load i32, ptr %97, align 4
  %168 = icmp eq i32 %166, 0
  %169 = select i1 %168, ptr %98, ptr %99
  %170 = load i32, ptr %169, align 4
  %171 = mul i32 %170, %167
  %172 = getelementptr %struct.fdp1_buffer, ptr %0, i32 0, i32 1, i32 %102, i32 1, i32 %166
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, %171
  store i32 %174, ptr %172, align 4
  %175 = add nuw i32 %166, 1
  %176 = load i32, ptr %95, align 8
  %177 = icmp ult i32 %175, %176
  br i1 %177, label %165, label %178

178:                                              ; preds = %165, %163, %152, %150, %149, %145
  %179 = load i32, ptr %94, align 8
  %180 = icmp ult i32 %116, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, ptr %80, align 4
  br label %100

183:                                              ; preds = %178, %64, %61, %58, %32, %28
  %184 = phi i32 [ -22, %32 ], [ -22, %64 ], [ -22, %28 ], [ -22, %58 ], [ -22, %61 ], [ 0, %178 ]
  ret i32 %184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  switch i32 %6, label %9 [
    i32 14, label %7
    i32 12, label %7
    i32 10, label %7
    i32 8, label %7
    i32 7, label %7
    i32 5, label %7
    i32 3, label %7
    i32 2, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %8 = getelementptr inbounds %struct.fdp1_ctx, ptr %5, i32 0, i32 12
  br label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fdp1_ctx, ptr %5, i32 0, i32 13
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  switch i32 %6, label %55 [
    i32 2, label %13
    i32 10, label %13
    i32 3, label %13
    i32 8, label %13
    i32 5, label %13
    i32 7, label %13
    i32 12, label %13
    i32 14, label %13
  ]

13:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11
  %14 = getelementptr inbounds %struct.fdp1_q_data, ptr %12, i32 0, i32 1
  %15 = getelementptr inbounds %struct.fdp1_q_data, ptr %12, i32 0, i32 1, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  %18 = getelementptr inbounds %struct.fdp1_ctx, ptr %5, i32 0, i32 7
  br i1 %17, label %19, label %20

19:                                               ; preds = %13
  store i32 0, ptr %18, align 4
  br label %55

20:                                               ; preds = %13
  %21 = load i32, ptr %18, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %55

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !annotation !8
  %24 = load i32, ptr %14, align 4
  %25 = shl i32 %24, 1
  %26 = add i32 %25, -2
  %27 = or i32 %26, 14
  %28 = add i32 %27, 2
  %29 = getelementptr inbounds %struct.fdp1_q_data, ptr %12, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %28, %30
  %32 = getelementptr inbounds %struct.fdp1_ctx, ptr %5, i32 0, i32 8
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.fdp1_ctx, ptr %5, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fdp1_dev, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = call ptr @dma_alloc_attrs(ptr noundef %36, i32 noundef %31, ptr noundef nonnull %3, i32 noundef 3264, i32 noundef 0) #17
  %38 = getelementptr inbounds %struct.fdp1_ctx, ptr %5, i32 0, i32 10
  store ptr %37, ptr %38, align 4
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %23
  %41 = load i32, ptr @debug, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %33, align 4
  %45 = getelementptr inbounds %struct.v4l2_device, ptr %44, i32 0, i32 4
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %45, ptr noundef nonnull @__func__.fdp1_start_streaming) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %55

47:                                               ; preds = %23
  %48 = load i32, ptr %3, align 4
  %49 = getelementptr inbounds %struct.fdp1_ctx, ptr %5, i32 0, i32 9
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %32, align 4
  %51 = lshr i32 %50, 1
  %52 = add i32 %51, %48
  %53 = getelementptr %struct.fdp1_ctx, ptr %5, i32 0, i32 9, i32 1
  store i32 %52, ptr %53, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %55

54:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  br label %55

55:                                               ; preds = %54, %47, %43, %20, %19, %11
  %56 = phi i32 [ -12, %54 ], [ -12, %43 ], [ 0, %47 ], [ 0, %11 ], [ 0, %20 ], [ 0, %19 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fdp1_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %5 = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 1
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, ptr %0, align 4
  switch i32 %7, label %11 [
    i32 2, label %8
    i32 10, label %8
    i32 3, label %8
    i32 8, label %8
    i32 5, label %8
    i32 7, label %8
    i32 12, label %8
    i32 14, label %8
  ]

8:                                                ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 8
  br label %14

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %12, i32 0, i32 7
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %13, %11 ], [ %10, %8 ]
  %16 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %15) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.fdp1_dev, ptr %19, i32 0, i32 3
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #17
  tail call void @vb2_buffer_done(ptr noundef nonnull %16, i32 noundef 6) #17
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.fdp1_dev, ptr %22, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %21) #17
  br label %6

24:                                               ; preds = %14
  %25 = load i32, ptr %0, align 4
  switch i32 %25, label %92 [
    i32 2, label %26
    i32 10, label %26
    i32 3, label %26
    i32 8, label %26
    i32 5, label %26
    i32 7, label %26
    i32 12, label %26
    i32 14, label %26
  ]

26:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24
  %27 = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 15
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 4
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr inbounds %struct.fdp1_dev, ptr %30, i32 0, i32 3
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #17
  %33 = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 14
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  %36 = getelementptr i8, ptr %34, i32 -24
  %37 = icmp eq ptr %36, null
  %38 = or i1 %35, %37
  br i1 %38, label %72, label %39

39:                                               ; preds = %26
  %40 = getelementptr i8, ptr %34, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %34, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  br label %44

44:                                               ; preds = %67, %39
  %45 = phi ptr [ %62, %67 ], [ %34, %39 ]
  %46 = phi ptr [ %68, %67 ], [ %40, %39 ]
  %47 = phi i32 [ %61, %67 ], [ %32, %39 ]
  %48 = phi ptr [ %64, %67 ], [ %36, %39 ]
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr inbounds %struct.fdp1_dev, ptr %49, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %47) #17
  %51 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %48, i32 0, i32 3
  %52 = load i8, ptr %51, align 4, !range !17
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %44
  %55 = load ptr, ptr %48, align 4
  tail call void @vb2_buffer_done(ptr noundef %55, i32 noundef 5) #17
  br label %56

56:                                               ; preds = %54, %44
  %57 = load i32, ptr %27, align 4
  %58 = add i32 %57, -1
  store i32 %58, ptr %27, align 4
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr inbounds %struct.fdp1_dev, ptr %59, i32 0, i32 3
  %61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %60) #17
  %62 = load volatile ptr, ptr %33, align 4
  %63 = icmp eq ptr %62, %33
  %64 = getelementptr i8, ptr %62, i32 -24
  %65 = icmp eq ptr %64, null
  %66 = or i1 %63, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %56
  %68 = getelementptr i8, ptr %62, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %62, align 4
  %71 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %69, ptr %71, align 4
  store volatile ptr %70, ptr %69, align 4
  br label %44

72:                                               ; preds = %56, %26
  %73 = phi i32 [ %32, %26 ], [ %61, %56 ]
  %74 = load ptr, ptr %5, align 4
  %75 = getelementptr inbounds %struct.fdp1_dev, ptr %74, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %73) #17
  %76 = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 10
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %88, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr inbounds %struct.fdp1_dev, ptr %80, i32 0, i32 7
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 8
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 9
  %86 = load i32, ptr %85, align 4
  tail call void @dma_free_attrs(ptr noundef %82, i32 noundef %84, ptr noundef nonnull %77, i32 noundef %86, i32 noundef 0) #17
  %87 = getelementptr %struct.fdp1_ctx, ptr %3, i32 0, i32 9, i32 1
  store i32 0, ptr %87, align 4
  store i32 0, ptr %85, align 4
  store ptr null, ptr %76, align 4
  br label %88

88:                                               ; preds = %79, %72
  %89 = load volatile ptr, ptr %33, align 4
  %90 = icmp eq ptr %89, %33
  br i1 %90, label %172, label %91, !prof !18

91:                                               ; preds = %88
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 2000, i32 noundef 9, ptr noundef nonnull @.str.59) #17
  br label %172

92:                                               ; preds = %24
  %93 = load ptr, ptr %5, align 4
  %94 = getelementptr inbounds %struct.fdp1_dev, ptr %93, i32 0, i32 10
  %95 = getelementptr inbounds %struct.fdp1_dev, ptr %93, i32 0, i32 3
  %96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %95) #17
  %97 = load volatile ptr, ptr %94, align 4
  %98 = icmp eq ptr %97, %94
  %99 = getelementptr i8, ptr %97, i32 -16
  %100 = icmp eq ptr %99, null
  %101 = or i1 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %95, i32 noundef %96) #17
  br label %149

103:                                              ; preds = %92
  %104 = getelementptr i8, ptr %97, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %97, align 4
  %107 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %105, ptr %107, align 4
  store volatile ptr %106, ptr %105, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %97, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %104, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %95, i32 noundef %96) #17
  %108 = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 7
  br label %109

109:                                              ; preds = %143, %103
  %110 = phi ptr [ %99, %103 ], [ %140, %143 ]
  %111 = load i32, ptr %108, align 4
  switch i32 %111, label %119 [
    i32 1, label %112
    i32 3, label %112
    i32 4, label %112
  ]

112:                                              ; preds = %109, %109, %109
  %113 = load ptr, ptr %110, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %130, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %113, i32 0, i32 3
  %117 = load i8, ptr %116, align 4, !range !17
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %130, label %127

119:                                              ; preds = %109
  %120 = getelementptr inbounds %struct.fdp1_job, ptr %110, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %121, i32 0, i32 3
  %125 = load i8, ptr %124, align 4, !range !17
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123, %115
  %128 = phi ptr [ %113, %115 ], [ %121, %123 ]
  %129 = load ptr, ptr %128, align 4
  tail call void @vb2_buffer_done(ptr noundef %129, i32 noundef 5) #17
  br label %130

130:                                              ; preds = %127, %123, %119, %115, %112
  %131 = getelementptr inbounds %struct.fdp1_job, ptr %110, i32 0, i32 3
  %132 = load ptr, ptr %131, align 4
  %133 = load ptr, ptr %132, align 4
  tail call void @vb2_buffer_done(ptr noundef %133, i32 noundef 6) #17
  store ptr null, ptr %131, align 4
  %134 = load ptr, ptr %5, align 4
  %135 = getelementptr inbounds %struct.fdp1_dev, ptr %134, i32 0, i32 10
  %136 = getelementptr inbounds %struct.fdp1_dev, ptr %134, i32 0, i32 3
  %137 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %136) #17
  %138 = load volatile ptr, ptr %135, align 4
  %139 = icmp eq ptr %138, %135
  %140 = getelementptr i8, ptr %138, i32 -16
  %141 = icmp eq ptr %140, null
  %142 = or i1 %139, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %130
  %144 = getelementptr i8, ptr %138, i32 4
  %145 = load ptr, ptr %144, align 4
  %146 = load ptr, ptr %138, align 4
  %147 = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  store ptr %145, ptr %147, align 4
  store volatile ptr %146, ptr %145, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %138, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %144, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %136, i32 noundef %137) #17
  br label %109

148:                                              ; preds = %130
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %136, i32 noundef %137) #17
  br label %149

149:                                              ; preds = %148, %102
  %150 = getelementptr inbounds %struct.fdp1_ctx, ptr %3, i32 0, i32 16
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %159, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.fdp1_field_buffer, ptr %151, i32 0, i32 3
  %155 = load i8, ptr %154, align 4, !range !17
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %151, align 4
  tail call void @vb2_buffer_done(ptr noundef %158, i32 noundef 5) #17
  br label %159

159:                                              ; preds = %157, %153, %149
  %160 = load ptr, ptr %5, align 4
  %161 = getelementptr inbounds %struct.fdp1_dev, ptr %160, i32 0, i32 10
  %162 = load volatile ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, %161
  br i1 %163, label %166, label %164, !prof !18

164:                                              ; preds = %159
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 2022, i32 noundef 9, ptr noundef nonnull @.str.60) #17
  %165 = load ptr, ptr %5, align 4
  br label %166

166:                                              ; preds = %164, %159
  %167 = phi ptr [ %165, %164 ], [ %160, %159 ]
  %168 = getelementptr inbounds %struct.fdp1_dev, ptr %167, i32 0, i32 11
  %169 = load volatile ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, %168
  br i1 %170, label %172, label %171, !prof !18

171:                                              ; preds = %166
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.58, i32 noundef 2025, i32 noundef 9, ptr noundef nonnull @.str.61) #17
  br label %172

172:                                              ; preds = %171, %166, %91, %88
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fdp1_buf_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.v4l2_fh, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %6, ptr noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_vidioc_querycap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 16) #17
  %5 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %6 = tail call i32 @strscpy(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 32) #17
  %7 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 2
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str)
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_enum_fmt_vid_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #13 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ult i32 %4, 26
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr [26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %8, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_enum_fmt_vid_out(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #13 {
  br label %4

4:                                                ; preds = %14, %3
  %5 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %6 = phi i32 [ 0, %3 ], [ %16, %14 ]
  %7 = and i32 %6, 268435452
  %8 = icmp ult i32 %7, 12
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %5, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = add i32 %5, 1
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i32 [ %13, %12 ], [ %5, %4 ]
  %16 = add nuw nsw i32 %6, 1
  %17 = icmp eq i32 %16, 26
  br i1 %17, label %22, label %4

18:                                               ; preds = %9
  %19 = getelementptr [26 x %struct.fdp1_fmt], ptr @fdp1_formats, i32 0, i32 %6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ 0, %18 ], [ -22, %14 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_g_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %5, i32 noundef %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 4
  switch i32 %10, label %13 [
    i32 14, label %11
    i32 12, label %11
    i32 10, label %11
    i32 8, label %11
    i32 7, label %11
    i32 5, label %11
    i32 3, label %11
    i32 2, label %11
  ]

11:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9
  %12 = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 12
  br label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 13
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %18 = getelementptr inbounds %struct.fdp1_q_data, ptr %16, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(192) %17, ptr noundef align 4 dereferenceable(192) %18, i32 192, i1 false)
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i32 [ 0, %15 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_s_fmt(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %2, align 4
  %7 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %5, i32 noundef %6) #17
  %8 = getelementptr inbounds %struct.vb2_queue, ptr %7, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_device, ptr %13, i32 0, i32 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %14, ptr noundef nonnull @__func__.fdp1_s_fmt) #18
  br label %46

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %18 = load i32, ptr %2, align 4
  tail call fastcc void @fdp1_set_format(ptr noundef %1, ptr noundef %17, i32 noundef %18)
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_device, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %2, align 4
  %26 = add i32 %25, -2
  %27 = icmp ult i32 %26, 11
  br i1 %27, label %31, label %28

28:                                               ; preds = %31, %21
  %29 = icmp eq i32 %25, 14
  %30 = select i1 %29, ptr @.str.66, ptr @.str.67
  br label %36

31:                                               ; preds = %21
  %32 = trunc i32 %26 to i16
  %33 = lshr i16 1387, %32
  %34 = and i16 %33, 1
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %28, label %36

36:                                               ; preds = %31, %28
  %37 = phi ptr [ %30, %28 ], [ @.str.66, %31 ]
  %38 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %17, align 4
  %41 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %24, ptr noundef nonnull @__func__.fdp1_s_fmt, ptr noundef nonnull %37, ptr noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %42, i32 noundef %44) #18
  br label %46

46:                                               ; preds = %36, %16, %11
  %47 = phi i32 [ -16, %11 ], [ 0, %36 ], [ 0, %16 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_try_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 10
  %6 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  br i1 %5, label %7, label %8

7:                                                ; preds = %3
  tail call fastcc void @fdp1_try_fmt_output(ptr noundef null, ptr noundef %6)
  br label %9

8:                                                ; preds = %3
  tail call fastcc void @fdp1_try_fmt_capture(ptr noundef %1, ptr noundef null, ptr noundef %6)
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.fdp1_ctx, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_device, ptr %14, i32 0, i32 4
  %16 = load i32, ptr %2, align 4
  %17 = add i32 %16, -2
  %18 = icmp ult i32 %17, 11
  br i1 %18, label %22, label %19

19:                                               ; preds = %22, %12
  %20 = icmp eq i32 %16, 14
  %21 = select i1 %20, ptr @.str.66, ptr @.str.67
  br label %27

22:                                               ; preds = %12
  %23 = trunc i32 %17 to i16
  %24 = lshr i16 1387, %23
  %25 = and i16 %24, 1
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %19, label %27

27:                                               ; preds = %22, %19
  %28 = phi ptr [ %21, %19 ], [ @.str.66, %22 ]
  %29 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %29, align 4
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %15, ptr noundef nonnull @__func__.fdp1_try_fmt, ptr noundef nonnull %28, ptr noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %34, i32 noundef %36) #18
  br label %38

38:                                               ; preds = %27, %9
  ret i32 0
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @fdp1_pm_runtime_suspend(ptr nocapture noundef readonly %0) #15 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fdp1_pm_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @fdp1_write_lut(ptr noundef %3, ptr noundef nonnull @fdp1_diff_adj, i32 noundef 24, i32 noundef 4096) #17
  tail call fastcc void @fdp1_write_lut(ptr noundef %3, ptr noundef nonnull @fdp1_sad_adj, i32 noundef 24, i32 noundef 5120) #17
  tail call fastcc void @fdp1_write_lut(ptr noundef %3, ptr noundef nonnull @fdp1_bld_gain, i32 noundef 1, i32 noundef 6144) #17
  tail call fastcc void @fdp1_write_lut(ptr noundef %3, ptr noundef nonnull @fdp1_dif_gain, i32 noundef 1, i32 noundef 7168) #17
  %4 = getelementptr inbounds %struct.v4l2_device, ptr %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.fdp1_dev, ptr %3, i32 0, i32 5
  br label %6

6:                                                ; preds = %17, %1
  %7 = phi i32 [ 0, %1 ], [ %20, %17 ]
  %8 = getelementptr i8, ptr @fdp1_mdet, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %7, 2
  %12 = add nuw nsw i32 %11, 8192
  %13 = load i32, ptr @debug, align 4
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %4, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %10, i32 noundef %12) #18
  br label %17

17:                                               ; preds = %15, %6
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %10) #17, !srcloc !12
  %20 = add nuw nsw i32 %7, 1
  %21 = icmp eq i32 %20, 256
  br i1 %21, label %22, label %6

22:                                               ; preds = %17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fdp1_write_lut(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = tail call i32 @llvm.umin.i32(i32 %2, i32 256)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.fdp1_dev, ptr %0, i32 0, i32 5
  br label %10

10:                                               ; preds = %21, %7
  %11 = phi i32 [ 0, %7 ], [ %24, %21 ]
  %12 = getelementptr i8, ptr %1, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl i32 %11, 2
  %16 = add i32 %15, %3
  %17 = load i32, ptr @debug, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %8, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %14, i32 noundef %16) #18
  br label %21

21:                                               ; preds = %19, %10
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %22, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %14) #17, !srcloc !12
  %24 = add nuw nsw i32 %11, 1
  %25 = icmp eq i32 %24, %5
  br i1 %25, label %26, label %10

26:                                               ; preds = %21
  %27 = icmp ult i32 %2, 256
  br i1 %27, label %28, label %49

28:                                               ; preds = %26, %4
  %29 = phi i32 [ %5, %26 ], [ 0, %4 ]
  %30 = add nsw i32 %29, -1
  %31 = getelementptr i8, ptr %1, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.v4l2_device, ptr %0, i32 0, i32 4
  %35 = getelementptr inbounds %struct.fdp1_dev, ptr %0, i32 0, i32 5
  br label %36

36:                                               ; preds = %44, %28
  %37 = phi i32 [ %29, %28 ], [ %47, %44 ]
  %38 = shl nuw nsw i32 %37, 2
  %39 = add i32 %38, %3
  %40 = load i32, ptr @debug, align 4
  %41 = icmp ugt i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %34, ptr noundef nonnull @__func__.fdp1_write, i32 noundef %33, i32 noundef %39) #18
  br label %44

44:                                               ; preds = %42, %36
  %45 = load ptr, ptr %35, align 4
  %46 = getelementptr i8, ptr %45, i32 %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #17, !srcloc !11
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %33) #17, !srcloc !12
  %47 = add nuw nsw i32 %37, 1
  %48 = icmp eq i32 %47, 256
  br i1 %48, label %49, label %36

49:                                               ; preds = %44, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #16

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

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
!9 = !{i64 5057135}
!10 = !{i64 2152596588}
!11 = !{i64 2152597810}
!12 = !{i64 5056717}
!13 = !{i64 2148007386}
!14 = !{i64 505696, i64 2147995667, i64 2147995693, i64 2147995740, i64 2147995762, i64 2147995790, i64 2147995810}
!15 = !{i64 492265, i64 492290, i64 492312, i64 492328, i64 492340, i64 492360, i64 492384, i64 492400, i64 492412}
!16 = !{i64 2148007512}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 2000, i32 1}
