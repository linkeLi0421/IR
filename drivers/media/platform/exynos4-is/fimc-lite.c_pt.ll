; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/fimc-lite.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-lite.c"
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
%struct.flite_drvdata = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.fimc_lite = type { ptr, ptr, %struct.exynos_video_entity, ptr, %struct.v4l2_fh, %struct.v4l2_subdev, %struct.media_pad, [3 x %struct.media_pad], ptr, %struct.v4l2_ctrl_handler, ptr, i32, %struct.mutex, %struct.spinlock, ptr, ptr, %struct.wait_queue_head, [1 x i32], %struct.flite_frame, %struct.flite_frame, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.vb2_queue, i16, i32, i32, %struct.fimc_lite_events, i8 }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.flite_frame = type { i16, i16, %struct.v4l2_rect, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.fimc_lite_events = type { i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.76, %union.anon.77, i32, ptr, i32, %struct.anon.78, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.76 = type { i64 }
%union.anon.77 = type { ptr }
%struct.anon.78 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.83, i16, i16, i16, [10 x i16] }
%union.anon.83 = type { i16 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.exynos_media_pipeline = type { %struct.media_pipeline, ptr }
%struct.exynos_media_pipeline_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.89, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.89 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.81, i32 }
%union.anon.81 = type { i32 }
%struct.flite_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, i16 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype270 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@flite_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-fimc-lite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fimc_lite_drvdata_exynos4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-fimc-lite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fimc_lite_drvdata_exynos5 }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license291 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias292 = internal constant [32 x i8] c"alias=platform:exynos-fimc-lite\00", section ".modinfo", align 1
@fimc_lite_drvdata_exynos4 = internal global %struct.flite_drvdata { i16 8192, i16 8192, i16 8, i16 2, i16 8, i16 1, i16 2 }, align 2
@fimc_lite_drvdata_exynos5 = internal global %struct.flite_drvdata { i16 8192, i16 8192, i16 8, i16 2, i16 8, i16 32, i16 3 }, align 2
@fimc_lite_driver = internal global %struct.platform_driver { ptr @fimc_lite_probe, ptr @fimc_lite_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @flite_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [17 x i8] c"exynos-fimc-lite\00", align 1
@fimc_lite_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @fimc_lite_suspend, ptr @fimc_lite_resume, ptr @fimc_lite_suspend, ptr @fimc_lite_resume, ptr @fimc_lite_suspend, ptr @fimc_lite_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_runtime_suspend, ptr @fimc_lite_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fimc-lite\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Wrong %pOF node alias\0A\00", align 1
@fimc_lite_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"&fimc->irq_queue\00", align 1
@fimc_lite_probe.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"&fimc->lock\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to get IRQ resource\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to install irq (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"flite\00", align 1
@fimc_lite_subdev_ops = internal constant %struct.v4l2_subdev_ops { ptr @fimc_lite_core_ops, ptr null, ptr null, ptr @fimc_lite_subdev_video_ops, ptr null, ptr null, ptr null, ptr @fimc_lite_subdev_pad_ops }, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"FIMC-LITE.%d\00", align 1
@fimc_lite_ctrl = internal constant %struct.v4l2_ctrl_config { ptr @fimc_lite_ctrl_ops, ptr null, i32 9965569, ptr @.str.17, i32 2, i64 0, i64 0, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@fimc_lite_subdev_internal_ops = internal constant %struct.v4l2_subdev_internal_ops { ptr @fimc_lite_subdev_registered, ptr @fimc_lite_subdev_unregistered, ptr null, ptr null, ptr null }, align 4
@fimc_lite_subdev_media_ops = internal constant %struct.media_entity_operations { ptr null, ptr @fimc_lite_link_setup, ptr null }, align 4
@fimc_lite_core_ops = internal constant %struct.v4l2_subdev_core_ops { ptr @fimc_lite_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fimc_lite_subdev_video_ops = internal constant %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_subdev_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fimc_lite_subdev_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr null, ptr @fimc_lite_subdev_enum_mbus_code, ptr null, ptr null, ptr @fimc_lite_subdev_get_fmt, ptr @fimc_lite_subdev_set_fmt, ptr @fimc_lite_subdev_get_selection, ptr @fimc_lite_subdev_set_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__func__.fimc_lite_log_status = private unnamed_addr constant [21 x i8] c"fimc_lite_log_status\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"\013%s: s_stream(0) timeout\0A\00", align 1
@__func__.fimc_lite_hw_init = private unnamed_addr constant [18 x i8] c"fimc_lite_hw_init\00", align 1
@fimc_lite_formats = internal constant [7 x %struct.fimc_fmt] [%struct.fimc_fmt { i32 8200, i32 1448695129, i32 33, i16 1, i16 0, i8 7, [3 x i8] c"\10\00\00", i16 0, i16 128 }, %struct.fimc_fmt { i32 8198, i32 1498831189, i32 35, i16 1, i16 0, i8 7, [3 x i8] c"\10\00\00", i16 0, i16 128 }, %struct.fimc_fmt { i32 8199, i32 1498765654, i32 36, i16 1, i16 0, i8 7, [3 x i8] c"\10\00\00", i16 0, i16 128 }, %struct.fimc_fmt { i32 8201, i32 1431918169, i32 34, i16 1, i16 0, i8 7, [3 x i8] c"\10\00\00", i16 0, i16 128 }, %struct.fimc_fmt { i32 12290, i32 1195528775, i32 64, i16 1, i16 0, i8 8, [3 x i8] c"\08\00\00", i16 0, i16 64 }, %struct.fimc_fmt { i32 12298, i32 808534338, i32 65, i16 1, i16 0, i8 8, [3 x i8] c"\10\00\00", i16 0, i16 64 }, %struct.fimc_fmt { i32 12305, i32 842088770, i32 66, i16 1, i16 0, i8 8, [3 x i8] c"\10\00\00", i16 0, i16 64 }], align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"include/media/v4l2-subdev.h\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"\017%s: pad%d: code: 0x%x, %dx%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"drivers/media/platform/exynos4-is/fimc-lite.c\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\017%s: code: %#x (%d), %dx%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"\017%s: %s: (%d,%d) %dx%d, f_w: %d, f_h: %d\0A\00", align 1
@__func__.fimc_lite_subdev_get_selection = private unnamed_addr constant [31 x i8] c"fimc_lite_subdev_get_selection\00", align 1
@__func__.fimc_lite_subdev_set_selection = private unnamed_addr constant [31 x i8] c"fimc_lite_subdev_set_selection\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"\017%s: (%d,%d)/%dx%d, sink fmt: %dx%d\0A\00", align 1
@fimc_lite_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @fimc_lite_s_ctrl }, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"Test Pattern 640x480\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"fimc-lite.%d.capture\00", align 1
@fimc_lite_fops = internal constant %struct.v4l2_file_operations { ptr @__this_module, ptr null, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @fimc_lite_open, ptr @fimc_lite_release }, align 4
@fimc_lite_ioctl_ops = internal constant %struct.v4l2_ioctl_ops { ptr @fimc_lite_querycap, ptr @fimc_lite_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_g_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_s_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_try_fmt_mplane, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @fimc_lite_streamon, ptr @fimc_lite_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_lite_g_selection, ptr @fimc_lite_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fimc_lite_qops = internal constant %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.19 = private unnamed_addr constant [32 x i8] c"\016%s: Registered %s as /dev/%s\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.21 = private unnamed_addr constant [40 x i8] c"\017%s: (%d,%d)/%dx%d, source fmt: %dx%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"\013%s: User buffer too small (%ld < %ld)\0A\00", align 1
@__func__.start_streaming = private unnamed_addr constant [16 x i8] c"start_streaming\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"\017%s: %s: %s --> %s, flags: 0x%x. source_id: 0x%x\0A\00", align 1
@__func__.fimc_lite_link_setup = private unnamed_addr constant [21 x i8] c"fimc_lite_link_setup\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"\013%s: Invalid pad index\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"Driver unloaded\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_debugtype270, ptr @__UNIQUE_ID_license291, ptr @__param_debug], section "llvm.metadata"

@__mod_of__flite_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @flite_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fimc_lite_driver, ptr noundef nonnull @__this_module) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fimc_lite_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %117, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1888, i32 noundef 3520) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %117, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8
  %11 = tail call ptr @of_match_node(ptr noundef nonnull @flite_of_match, ptr noundef %10) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.of_device_id, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ null, %9 ]
  %18 = load ptr, ptr %3, align 8
  %19 = tail call i32 @of_alias_get_id(ptr noundef %18, ptr noundef nonnull @.str.1) #14
  %20 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 11
  store i32 %19, ptr %20, align 8
  %21 = icmp eq ptr %17, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.flite_drvdata, ptr %17, i32 0, i32 6
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp ult i32 %19, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %16
  %28 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %28) #15
  br label %117

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 1
  store ptr %17, ptr %30, align 4
  store ptr %0, ptr %7, align 8
  %31 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @fimc_lite_probe.__key) #14
  %32 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 13
  store i32 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %33, ptr noundef nonnull @.str.5, ptr noundef nonnull @fimc_lite_probe.__key.4) #14
  %34 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #14
  %35 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %34) #14
  %36 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 15
  store ptr %35, ptr %36, align 8
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = ptrtoint ptr %35 to i32
  br label %117

40:                                               ; preds = %29
  %41 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef 0) #14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #15
  br label %117

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  %47 = tail call ptr @clk_get(ptr noundef %46, ptr noundef nonnull @.str.8) #14
  %48 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 14
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  %50 = ptrtoint ptr %47 to i32
  br i1 %49, label %117, label %51

51:                                               ; preds = %44
  %52 = load i32, ptr %41, align 4
  %53 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load ptr, ptr %2, align 4
  br label %58

58:                                               ; preds = %56, %51
  %59 = phi ptr [ %57, %56 ], [ %54, %51 ]
  %60 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %52, ptr noundef nonnull @flite_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %59, ptr noundef nonnull %7) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %60) #15
  br label %112

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 9
  %65 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 5
  tail call void @v4l2_subdev_init(ptr noundef %65, ptr noundef nonnull @fimc_lite_subdev_ops) #14
  %66 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 5, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = or i32 %67, 4
  store i32 %68, ptr %66, align 4
  %69 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 5, i32 9
  %70 = load i32, ptr %20, align 8
  %71 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %69, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %70) #14
  %72 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 7
  %73 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 7, i32 0, i32 4
  store i32 1, ptr %73, align 4
  %74 = getelementptr %struct.fimc_lite, ptr %7, i32 0, i32 7, i32 1, i32 4
  store i32 2, ptr %74, align 4
  %75 = getelementptr %struct.fimc_lite, ptr %7, i32 0, i32 7, i32 2, i32 4
  store i32 2, ptr %75, align 4
  %76 = tail call i32 @media_entity_pads_init(ptr noundef %65, i16 noundef zeroext 3, ptr noundef %72) #14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %112

78:                                               ; preds = %63
  %79 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %64, i32 noundef 1, ptr noundef null, ptr noundef null) #14
  %80 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %64, ptr noundef nonnull @fimc_lite_ctrl, ptr noundef null) #14
  %81 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 10
  store ptr %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 9, i32 9
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 5, i32 8
  store ptr %64, ptr %86, align 4
  %87 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 5, i32 7
  store ptr @fimc_lite_subdev_internal_ops, ptr %87, align 4
  %88 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 5, i32 0, i32 3
  store i32 16389, ptr %88, align 4
  %89 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 5, i32 0, i32 11
  store ptr @fimc_lite_subdev_media_ops, ptr %89, align 4
  %90 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 5, i32 2
  store ptr @__this_module, ptr %90, align 4
  %91 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 5, i32 11
  store ptr %7, ptr %91, align 4
  %92 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %92, align 8
  tail call void @pm_runtime_enable(ptr noundef %2) #14
  %93 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %94 = load i16, ptr %93, align 8
  %95 = and i16 %94, 7
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %85
  %98 = load ptr, ptr %48, align 4
  %99 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %98)
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %97, %85
  %102 = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %2, i32 noundef -1) #14
  %103 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 18
  %104 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 19
  %105 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 18, i32 3
  store ptr @fimc_lite_formats, ptr %105, align 4
  store i16 640, ptr %103, align 4
  %106 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 18, i32 1
  store i16 480, ptr %106, align 2
  %107 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 18, i32 2
  %108 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 18, i32 2, i32 2
  store i32 640, ptr %108, align 4
  %109 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 18, i32 2, i32 3
  store i32 480, ptr %109, align 4
  store i32 0, ptr %107, align 4
  %110 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 18, i32 2, i32 1
  store i32 0, ptr %110, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %104, ptr noundef align 4 dereferenceable(24) %103, i32 24, i1 false) #14
  br label %117

111:                                              ; preds = %97
  tail call void @v4l2_device_unregister_subdev(ptr noundef %65) #14
  tail call void @v4l2_ctrl_handler_free(ptr noundef %64) #14
  store ptr null, ptr %91, align 4
  br label %112

112:                                              ; preds = %111, %78, %63, %62
  %113 = phi i32 [ %60, %62 ], [ %99, %111 ], [ %83, %78 ], [ %76, %63 ]
  %114 = load ptr, ptr %48, align 4
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void @clk_put(ptr noundef %114) #14
  store ptr inttoptr (i32 -22 to ptr), ptr %48, align 4
  br label %117

117:                                              ; preds = %116, %112, %101, %44, %43, %38, %27, %6, %1
  %118 = phi i32 [ -22, %27 ], [ %39, %38 ], [ -6, %43 ], [ 0, %101 ], [ -19, %1 ], [ -12, %6 ], [ %50, %44 ], [ %113, %112 ], [ %113, %116 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 7
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #14
  tail call void @clk_unprepare(ptr noundef %11) #14
  br label %12

12:                                               ; preds = %9, %1
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #14
  %13 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 2) #14
  %14 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 5
  tail call void @v4l2_device_unregister_subdev(ptr noundef %14) #14
  %15 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %15) #14
  %16 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 5, i32 11
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  tail call void @clk_put(ptr noundef %18) #14
  store ptr inttoptr (i32 -22 to ptr), ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.26) #15
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flite_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 13
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %5 = tail call i32 @flite_hw_get_interrupt_source(ptr noundef %1) #14
  tail call void @flite_hw_clear_pending_irq(ptr noundef %1) #14
  %6 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 22
  %7 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %6) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %10, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %90

11:                                               ; preds = %2
  %12 = and i32 %5, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %6) #14
  %15 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 29
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = and i32 %5, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  tail call void @flite_hw_clear_last_capture_end(ptr noundef %1) #14
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %6) #14
  %22 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %22, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %23

23:                                               ; preds = %21, %18
  %24 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 20
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %90

27:                                               ; preds = %23
  %28 = and i32 %5, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = load volatile i32, ptr %6, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 23
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 -640
  %40 = getelementptr %struct.list_head, ptr %36, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %36, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %40, align 4
  tail call void @flite_hw_set_dma_buffer(ptr noundef %1, ptr noundef %39) #14
  %44 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 24
  %45 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 24, i32 1
  %46 = load ptr, ptr %45, align 4
  store ptr %36, ptr %45, align 4
  store ptr %44, ptr %36, align 4
  store ptr %46, ptr %40, align 4
  store volatile ptr %36, ptr %46, align 4
  br label %47

47:                                               ; preds = %38, %34, %30, %27
  %48 = and i32 %5, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %47
  %51 = load volatile i32, ptr %6, align 4
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 24
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %73, label %58

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %56, i32 -640
  %60 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %56, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %56, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %60, align 4
  %64 = tail call i64 @ktime_get() #14
  %65 = getelementptr i8, ptr %56, i32 -616
  store i64 %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 27
  %67 = load i32, ptr %66, align 8
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 8
  %69 = getelementptr i8, ptr %56, i32 -272
  store i32 %67, ptr %69, align 8
  %70 = getelementptr i8, ptr %56, i32 12
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  tail call void @flite_hw_mask_dma_buffer(ptr noundef %1, i32 noundef %72) #14
  tail call void @vb2_buffer_done(ptr noundef %59, i32 noundef 5) #14
  br label %73

73:                                               ; preds = %58, %54, %50, %47
  %74 = load volatile i32, ptr %6, align 4
  %75 = and i32 %74, 128
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 18
  tail call void @flite_hw_set_window_offset(ptr noundef %1, ptr noundef %78) #14
  %79 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 19
  tail call void @flite_hw_set_dma_window(ptr noundef %1, ptr noundef %79) #14
  %80 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 10
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.v4l2_ctrl, ptr %81, i32 0, i32 22
  %83 = load i32, ptr %82, align 4
  %84 = icmp ne i32 %83, 0
  tail call void @flite_hw_set_test_pattern(ptr noundef %1, i1 noundef zeroext %84) #14
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %6) #14
  br label %85

85:                                               ; preds = %77, %73
  %86 = getelementptr inbounds %struct.fimc_lite, ptr %1, i32 0, i32 23
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  tail call void @flite_hw_capture_stop(ptr noundef %1) #14
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %6) #14
  br label %90

90:                                               ; preds = %89, %85, %23, %9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %6) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #14
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flite_hw_get_interrupt_source(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_clear_pending_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_clear_last_capture_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_dma_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_mask_dma_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_capture_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_window_offset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_dma_window(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_test_pattern(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_log_status(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  tail call void @flite_hw_dump_regs(ptr noundef %3, ptr noundef nonnull @__func__.fimc_lite_log_status) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_dump_regs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_subdev_s_stream(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @fimc_find_remote_sensor(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 8
  store ptr %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 20
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %11, label %56

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %12) #14
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  tail call void @flite_hw_reset(ptr noundef %5) #14
  %15 = tail call fastcc i32 @fimc_lite_hw_init(ptr noundef %5, i1 noundef zeroext true)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 13
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #14
  tail call void @flite_hw_capture_start(ptr noundef %5) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #14
  br label %54

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 5, ptr noundef %21) #14
  %22 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 13
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #14
  tail call void @flite_hw_capture_stop(ptr noundef %5) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #14
  %24 = load volatile i32, ptr %21, align 4
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #14
  %28 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 16
  %29 = call i32 @prepare_to_wait_event(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 2) #14
  %30 = load volatile i32, ptr %21, align 4
  %31 = and i32 %30, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  call void @finish_wait(ptr noundef %28, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  br label %52

34:                                               ; preds = %34, %27
  %35 = phi i32 [ %44, %34 ], [ 20, %27 ]
  %36 = call i32 @schedule_timeout(i32 noundef %35) #14
  %37 = call i32 @prepare_to_wait_event(ptr noundef %28, ptr noundef nonnull %3, i32 noundef 2) #14
  %38 = load volatile i32, ptr %21, align 4
  %39 = and i32 %38, 32
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = icmp ne i32 %36, 0
  %43 = select i1 %40, i1 true, i1 %42
  %44 = select i1 %43, i32 %36, i32 1
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %41, i1 true, i1 %45
  br i1 %46, label %47, label %34

47:                                               ; preds = %34
  call void @finish_wait(ptr noundef %28, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  %48 = icmp eq i32 %44, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %50) #15
  br label %52

52:                                               ; preds = %49, %47, %33, %20
  %53 = phi i32 [ 0, %49 ], [ %44, %47 ], [ 20, %20 ], [ 20, %33 ]
  call void @_clear_bit(i32 noundef 2, ptr noundef %21) #14
  br label %54

54:                                               ; preds = %52, %17, %14
  %55 = phi i32 [ %15, %14 ], [ 0, %17 ], [ %53, %52 ]
  call void @mutex_unlock(ptr noundef %12) #14
  br label %56

56:                                               ; preds = %54, %2
  %57 = phi i32 [ %55, %54 ], [ -515, %2 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fimc_find_remote_sensor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_lite_hw_init(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 18
  %8 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 18, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 19
  %13 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 19, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 13
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #14
  tail call void @flite_hw_set_camera_bus(ptr noundef %0, ptr noundef nonnull %18) #14
  tail call void @flite_hw_set_source_format(ptr noundef %0, ptr noundef %7) #14
  tail call void @flite_hw_set_window_offset(ptr noundef %0, ptr noundef %7) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %23 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 15
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr i8, ptr %24, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #14, !srcloc !10
  %26 = xor i1 %1, true
  tail call void @flite_hw_set_output_dma(ptr noundef %0, ptr noundef %12, i1 noundef zeroext %26) #14
  tail call void @flite_hw_set_interrupt_mask(ptr noundef %0) #14
  %27 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 0
  tail call void @flite_hw_set_test_pattern(ptr noundef %0, i1 noundef zeroext %31) #14
  %32 = load i32, ptr @debug, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  tail call void @flite_hw_dump_regs(ptr noundef %0, ptr noundef nonnull @__func__.fimc_lite_hw_init) #14
  br label %35

35:                                               ; preds = %34, %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #14
  br label %36

36:                                               ; preds = %35, %16, %11, %6, %2
  %37 = phi i32 [ 0, %35 ], [ -6, %2 ], [ -22, %11 ], [ -22, %6 ], [ -22, %16 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_capture_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_camera_bus(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_source_format(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_output_dma(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flite_hw_set_interrupt_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fimc_lite_subdev_enum_mbus_code(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #9 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 6
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %5, 6
  br i1 %8, label %23, label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %5, 5
  %11 = icmp eq i32 %5, 4
  %12 = icmp eq i32 %5, 3
  %13 = icmp eq i32 %5, 2
  %14 = icmp eq i32 %5, 1
  %15 = icmp eq i32 %5, 0
  %16 = select i1 %15, ptr @fimc_lite_formats, ptr null
  %17 = select i1 %14, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 1), ptr %16
  %18 = select i1 %13, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 2), ptr %17
  %19 = select i1 %12, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 3), ptr %18
  %20 = select i1 %11, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 4), ptr %19
  %21 = select i1 %10, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 5), ptr %20
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %9, %7
  %24 = phi ptr [ %21, %9 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 6), %7 ]
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  br label %27

27:                                               ; preds = %23, %9, %3
  %28 = phi i32 [ 0, %23 ], [ -22, %9 ], [ -22, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_subdev_get_fmt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %7 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %16 = load i16, ptr %15, align 4
  %17 = zext i1 %13 to i16
  %18 = icmp ugt i16 %16, %17
  br i1 %18, label %20, label %19, !prof !11

19:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #14
  br label %20

20:                                               ; preds = %19, %10
  %21 = phi i32 [ 0, %19 ], [ %14, %10 ]
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr %struct.v4l2_subdev_pad_config, ptr %22, i32 %21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %6, ptr noundef align 4 dereferenceable(48) %23, i32 48, i1 false)
  br label %52

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %25) #14
  %26 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.fimc_fmt, ptr %27, i32 0, i32 5
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %26, align 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %24
  %39 = load i16, ptr %7, align 4
  %40 = zext i16 %39 to i32
  store i32 %40, ptr %6, align 4
  %41 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  br label %49

44:                                               ; preds = %24
  %45 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2, i32 2
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %6, align 4
  %47 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2, i32 3
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i32 [ %43, %38 ], [ %48, %44 ]
  %51 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  store i32 %50, ptr %51, align 4
  tail call void @mutex_unlock(ptr noundef %25) #14
  br label %52

52:                                               ; preds = %49, %20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_subdev_set_fmt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %7 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18
  %8 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 19
  %9 = load i32, ptr @debug, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %6, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %17, i32 noundef %19) #15
  br label %21

21:                                               ; preds = %11, %3
  %22 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %22) #14
  %23 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 20
  %24 = load volatile i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %174, label %30

30:                                               ; preds = %26, %21
  %31 = load volatile i32, ptr %23, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 25, i32 21
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %174

37:                                               ; preds = %33, %30
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr inbounds %struct.flite_drvdata, ptr %43, i32 0, i32 2
  %47 = load i16, ptr %46, align 2
  %48 = tail call i16 @llvm.cttz.i16(i16 %47, i1 true) #14, !range !12
  %49 = zext i16 %48 to i32
  %50 = icmp eq i16 %47, 0
  %51 = select i1 %50, i32 -1, i32 %49
  %52 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %53 = getelementptr inbounds %struct.flite_drvdata, ptr %43, i32 0, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  tail call void @v4l_bound_align_image(ptr noundef %6, i32 noundef 8, i32 noundef %45, i32 noundef %51, ptr noundef %52, i32 noundef 0, i32 noundef %55, i32 noundef 0, i32 noundef 0) #14
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %57 = load i32, ptr %56, align 4
  switch i32 %57, label %64 [
    i32 12305, label %63
    i32 8198, label %58
    i32 8199, label %59
    i32 8201, label %60
    i32 12290, label %61
    i32 12298, label %62
  ]

58:                                               ; preds = %41
  br label %64

59:                                               ; preds = %41
  br label %64

60:                                               ; preds = %41
  br label %64

61:                                               ; preds = %41
  br label %64

62:                                               ; preds = %41
  br label %64

63:                                               ; preds = %41
  br label %64

64:                                               ; preds = %63, %62, %61, %60, %59, %58, %41
  %65 = phi ptr [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 1), %58 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 2), %59 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 3), %60 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 4), %61 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 5), %62 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 6), %63 ], [ @fimc_lite_formats, %41 ]
  %66 = getelementptr inbounds %struct.fimc_fmt, ptr %65, i32 0, i32 5
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 %68, ptr %69, align 4
  %70 = load i32, ptr %65, align 4
  store i32 %70, ptr %56, align 4
  br label %111

71:                                               ; preds = %37
  %72 = load i32, ptr %2, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 5, i32 0, i32 5
  %76 = load i16, ptr %75, align 4
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %79, !prof !13

78:                                               ; preds = %74
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #14
  br label %79

79:                                               ; preds = %78, %74
  %80 = load ptr, ptr %1, align 4
  %81 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %80, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 %85, ptr %86, align 4
  %87 = load i16, ptr %75, align 4
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %89, label %90, !prof !13

89:                                               ; preds = %79
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1016, i32 noundef 9, ptr noundef null) #14
  br label %90

90:                                               ; preds = %89, %79
  %91 = load ptr, ptr %1, align 4
  %92 = getelementptr %struct.v4l2_subdev_pad_config, ptr %91, i32 0, i32 1
  br label %104

93:                                               ; preds = %71
  %94 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  store i32 %96, ptr %97, align 4
  %98 = load ptr, ptr %94, align 4
  %99 = getelementptr inbounds %struct.fimc_fmt, ptr %98, i32 0, i32 5
  %100 = load i8, ptr %99, align 4
  %101 = zext i8 %100 to i32
  %102 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  store i32 %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2
  br label %104

104:                                              ; preds = %93, %90
  %105 = phi ptr [ %92, %90 ], [ %103, %93 ]
  %106 = getelementptr inbounds %struct.v4l2_rect, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 4
  store i32 %107, ptr %6, align 4
  %108 = getelementptr inbounds %struct.v4l2_rect, ptr %105, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  store i32 %109, ptr %110, align 4
  br label %111

111:                                              ; preds = %104, %64
  %112 = phi ptr [ %65, %64 ], [ null, %104 ]
  %113 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 3
  store i32 1, ptr %113, align 4
  %114 = load i32, ptr @debug, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 5, i32 9
  %118 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = load i32, ptr %6, align 4
  %123 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %117, i32 noundef %119, i32 noundef %121, i32 noundef %122, i32 noundef %124) #15
  br label %126

126:                                              ; preds = %116, %111
  %127 = load i32, ptr %2, align 4
  %128 = icmp eq i32 %127, 0
  %129 = load i32, ptr %38, align 4
  br i1 %128, label %130, label %152

130:                                              ; preds = %126
  %131 = icmp ne i32 %129, 0
  %132 = zext i1 %131 to i32
  %133 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %134 = load i16, ptr %133, align 4
  %135 = zext i1 %131 to i16
  %136 = icmp ugt i16 %134, %135
  br i1 %136, label %138, label %137, !prof !11

137:                                              ; preds = %130
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #14
  br label %138

138:                                              ; preds = %137, %130
  %139 = phi i32 [ 0, %137 ], [ %132, %130 ]
  %140 = load ptr, ptr %1, align 4
  %141 = getelementptr %struct.v4l2_subdev_pad_config, ptr %140, i32 %139
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %141, ptr noundef align 4 dereferenceable(48) %6, i32 48, i1 false)
  %142 = load i32, ptr %38, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %174

144:                                              ; preds = %138
  %145 = load i16, ptr %133, align 4
  %146 = icmp ugt i16 %145, 1
  br i1 %146, label %148, label %147, !prof !11

147:                                              ; preds = %144
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 998, i32 noundef 9, ptr noundef null) #14
  br label %148

148:                                              ; preds = %147, %144
  %149 = phi i32 [ 0, %147 ], [ 1, %144 ]
  %150 = load ptr, ptr %1, align 4
  %151 = getelementptr %struct.v4l2_subdev_pad_config, ptr %150, i32 %149
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %151, ptr noundef align 4 dereferenceable(48) %141, i32 48, i1 false)
  br label %174

152:                                              ; preds = %126
  %153 = icmp eq i32 %129, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %152
  %155 = load i32, ptr %6, align 4
  %156 = trunc i32 %155 to i16
  store i16 %156, ptr %7, align 4
  %157 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  %158 = load i32, ptr %157, align 4
  %159 = trunc i32 %158 to i16
  %160 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 1
  store i16 %159, ptr %160, align 2
  %161 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 3
  store ptr %112, ptr %161, align 4
  %162 = load i32, ptr %6, align 4
  %163 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2
  %164 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2, i32 2
  store i32 %162, ptr %164, align 4
  %165 = load i32, ptr %157, align 4
  %166 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2, i32 3
  store i32 %165, ptr %166, align 4
  store i32 0, ptr %163, align 4
  %167 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2, i32 1
  store i32 0, ptr %167, align 4
  %168 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 19, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %168, ptr noundef align 4 dereferenceable(16) %163, i32 16, i1 false)
  %169 = load i32, ptr %6, align 4
  %170 = trunc i32 %169 to i16
  store i16 %170, ptr %8, align 4
  %171 = load i32, ptr %157, align 4
  %172 = trunc i32 %171 to i16
  %173 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 19, i32 1
  store i16 %172, ptr %173, align 2
  br label %174

174:                                              ; preds = %154, %152, %148, %138, %33, %26
  %175 = phi i32 [ -16, %33 ], [ -16, %26 ], [ 0, %148 ], [ 0, %138 ], [ 0, %154 ], [ 0, %152 ]
  tail call void @mutex_unlock(ptr noundef %22) #14
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_subdev_get_selection(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18
  %7 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %60 [
    i32 0, label %9
    i32 2, label %9
  ]

9:                                                ; preds = %3, %3
  %10 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %9
  %14 = load i32, ptr %2, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %18 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %22, !prof !13

21:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1016, i32 noundef 9, ptr noundef null) #14
  br label %22

22:                                               ; preds = %21, %16
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr %struct.v4l2_subdev_pad_config, ptr %23, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %17, ptr noundef align 4 dereferenceable(16) %24, i32 16, i1 false)
  br label %60

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %26) #14
  %27 = load i32, ptr %7, align 4
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  br i1 %28, label %30, label %32

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %29, ptr noundef align 4 dereferenceable(16) %31, i32 16, i1 false)
  br label %41

32:                                               ; preds = %25
  store i32 0, ptr %29, align 4
  %33 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  store i32 0, ptr %33, align 4
  %34 = load i16, ptr %6, align 4
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %32, %30
  tail call void @mutex_unlock(ptr noundef %26) #14
  %42 = load i32, ptr @debug, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %46 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = load i16, ptr %6, align 4
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = zext i16 %57 to i32
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %45, ptr noundef nonnull @__func__.fimc_lite_subdev_get_selection, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %58) #15
  br label %60

60:                                               ; preds = %44, %41, %22, %9, %3
  %61 = phi i32 [ 0, %22 ], [ -22, %3 ], [ -22, %9 ], [ 0, %44 ], [ 0, %41 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_subdev_set_selection(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18
  %7 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %91

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %91

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %15) #14
  %16 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4
  %17 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 2
  %18 = load i16, ptr %6, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 3
  %21 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  tail call void @v4l_bound_align_image(ptr noundef %17, i32 noundef 0, i32 noundef %19, i32 noundef 0, ptr noundef %20, i32 noundef 0, i32 noundef %23, i32 noundef 0, i32 noundef 0) #14
  %24 = load i32, ptr %16, align 4
  %25 = load i16, ptr %6, align 4
  %26 = zext i16 %25 to i32
  %27 = load i32, ptr %17, align 4
  %28 = sub i32 %26, %27
  %29 = tail call i32 @llvm.umin.i32(i32 %24, i32 %28) #14
  store i32 %29, ptr %16, align 4
  %30 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.flite_drvdata, ptr %31, i32 0, i32 3
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = sub nsw i32 0, %34
  %36 = and i32 %29, %35
  store i32 %36, ptr %16, align 4
  %37 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %2, i32 0, i32 4, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = load i16, ptr %21, align 2
  %40 = zext i16 %39 to i32
  %41 = load i32, ptr %20, align 4
  %42 = sub i32 %40, %41
  %43 = tail call i32 @llvm.umin.i32(i32 %38, i32 %42) #14
  store i32 %43, ptr %37, align 4
  %44 = load i32, ptr @debug, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %14
  %47 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 5, i32 9
  %48 = load i16, ptr %6, align 4
  %49 = zext i16 %48 to i32
  %50 = load i16, ptr %21, align 2
  %51 = zext i16 %50 to i32
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %47, i32 noundef %36, i32 noundef %43, i32 noundef %27, i32 noundef %41, i32 noundef %49, i32 noundef %51) #15
  br label %53

53:                                               ; preds = %46, %14
  %54 = load i32, ptr %2, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i32, ptr %11, align 4
  %58 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 5
  %59 = load i16, ptr %58, align 4
  %60 = zext i16 %59 to i32
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %63, label %62, !prof !11

62:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1016, i32 noundef 9, ptr noundef null) #14
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi i32 [ 0, %62 ], [ %57, %56 ]
  %65 = load ptr, ptr %1, align 4
  %66 = getelementptr %struct.v4l2_subdev_pad_config, ptr %65, i32 %64, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %66, ptr noundef align 4 dereferenceable(16) %16, i32 16, i1 false)
  br label %73

67:                                               ; preds = %53
  %68 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 13
  %69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %68) #14
  %70 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %70, ptr noundef align 4 dereferenceable(16) %16, i32 16, i1 false)
  %71 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 19, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %71, ptr noundef align 4 dereferenceable(16) %16, i32 16, i1 false)
  %72 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 7, ptr noundef %72) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %68, i32 noundef %69) #14
  br label %73

73:                                               ; preds = %67, %63
  tail call void @mutex_unlock(ptr noundef %15) #14
  %74 = load i32, ptr @debug, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %78 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.fimc_lite, ptr %5, i32 0, i32 18, i32 2, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = load i16, ptr %6, align 4
  %87 = zext i16 %86 to i32
  %88 = load i16, ptr %21, align 2
  %89 = zext i16 %88 to i32
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %77, ptr noundef nonnull @__func__.fimc_lite_subdev_set_selection, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89) #15
  br label %91

91:                                               ; preds = %76, %73, %10, %3
  %92 = phi i32 [ -22, %10 ], [ -22, %3 ], [ 0, %76 ], [ 0, %73 ]
  ret i32 %92
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @fimc_lite_find_format(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
  %5 = icmp sgt i32 %3, 6
  br i1 %5, label %137, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %2, 0
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %1, null
  %10 = and i32 %2, 128
  %11 = icmp ne i32 %10, 0
  %12 = or i1 %7, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %6
  br i1 %8, label %17, label %14

14:                                               ; preds = %13
  %15 = load i32, ptr %0, align 4
  %16 = icmp eq i32 %15, 1448695129
  br i1 %16, label %137, label %17

17:                                               ; preds = %14, %13
  br i1 %9, label %21, label %18

18:                                               ; preds = %17
  %19 = load i32, ptr %1, align 4
  %20 = icmp eq i32 %19, 8200
  br i1 %20, label %137, label %21

21:                                               ; preds = %18, %17
  %22 = icmp eq i32 %3, 0
  %23 = select i1 %22, ptr @fimc_lite_formats, ptr null
  br i1 %7, label %29, label %24

24:                                               ; preds = %21, %6
  %25 = phi i32 [ 1, %21 ], [ 0, %6 ]
  %26 = phi ptr [ %23, %21 ], [ null, %6 ]
  %27 = and i32 %2, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %24, %21
  %30 = phi i32 [ %25, %24 ], [ 1, %21 ]
  %31 = phi ptr [ %26, %24 ], [ %23, %21 ]
  br i1 %8, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %0, align 4
  %34 = icmp eq i32 %33, 1498831189
  br i1 %34, label %137, label %35

35:                                               ; preds = %32, %29
  br i1 %9, label %39, label %36

36:                                               ; preds = %35
  %37 = load i32, ptr %1, align 4
  %38 = icmp eq i32 %37, 8198
  br i1 %38, label %137, label %39

39:                                               ; preds = %36, %35
  %40 = icmp eq i32 %30, %3
  %41 = select i1 %40, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 1), ptr %31
  %42 = add nuw nsw i32 %30, 1
  br i1 %7, label %48, label %43

43:                                               ; preds = %39, %24
  %44 = phi i32 [ %42, %39 ], [ %25, %24 ]
  %45 = phi ptr [ %41, %39 ], [ %26, %24 ]
  %46 = and i32 %2, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %43, %39
  %49 = phi i32 [ %44, %43 ], [ %42, %39 ]
  %50 = phi ptr [ %45, %43 ], [ %41, %39 ]
  br i1 %8, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %0, align 4
  %53 = icmp eq i32 %52, 1498765654
  br i1 %53, label %137, label %54

54:                                               ; preds = %51, %48
  br i1 %9, label %58, label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %1, align 4
  %57 = icmp eq i32 %56, 8199
  br i1 %57, label %137, label %58

58:                                               ; preds = %55, %54
  %59 = icmp eq i32 %49, %3
  %60 = select i1 %59, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 2), ptr %50
  %61 = add nuw nsw i32 %49, 1
  br i1 %7, label %67, label %62

62:                                               ; preds = %58, %43
  %63 = phi i32 [ %61, %58 ], [ %44, %43 ]
  %64 = phi ptr [ %60, %58 ], [ %45, %43 ]
  %65 = and i32 %2, 128
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %62, %58
  %68 = phi i32 [ %63, %62 ], [ %61, %58 ]
  %69 = phi ptr [ %64, %62 ], [ %60, %58 ]
  br i1 %8, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %0, align 4
  %72 = icmp eq i32 %71, 1431918169
  br i1 %72, label %137, label %73

73:                                               ; preds = %70, %67
  br i1 %9, label %77, label %74

74:                                               ; preds = %73
  %75 = load i32, ptr %1, align 4
  %76 = icmp eq i32 %75, 8201
  br i1 %76, label %137, label %77

77:                                               ; preds = %74, %73
  %78 = icmp eq i32 %68, %3
  %79 = select i1 %78, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 3), ptr %69
  %80 = add nuw nsw i32 %68, 1
  br i1 %7, label %86, label %81

81:                                               ; preds = %77, %62
  %82 = phi i32 [ %80, %77 ], [ %63, %62 ]
  %83 = phi ptr [ %79, %77 ], [ %64, %62 ]
  %84 = and i32 %2, 64
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %81, %77
  %87 = phi i32 [ %82, %81 ], [ %80, %77 ]
  %88 = phi ptr [ %83, %81 ], [ %79, %77 ]
  br i1 %8, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr %0, align 4
  %91 = icmp eq i32 %90, 1195528775
  br i1 %91, label %137, label %92

92:                                               ; preds = %89, %86
  br i1 %9, label %96, label %93

93:                                               ; preds = %92
  %94 = load i32, ptr %1, align 4
  %95 = icmp eq i32 %94, 12290
  br i1 %95, label %137, label %96

96:                                               ; preds = %93, %92
  %97 = icmp eq i32 %87, %3
  %98 = select i1 %97, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 4), ptr %88
  %99 = add nuw nsw i32 %87, 1
  br i1 %7, label %105, label %100

100:                                              ; preds = %96, %81
  %101 = phi i32 [ %99, %96 ], [ %82, %81 ]
  %102 = phi ptr [ %98, %96 ], [ %83, %81 ]
  %103 = and i32 %2, 64
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %100, %96
  %106 = phi i32 [ %101, %100 ], [ %99, %96 ]
  %107 = phi ptr [ %102, %100 ], [ %98, %96 ]
  br i1 %8, label %111, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %0, align 4
  %110 = icmp eq i32 %109, 808534338
  br i1 %110, label %137, label %111

111:                                              ; preds = %108, %105
  br i1 %9, label %115, label %112

112:                                              ; preds = %111
  %113 = load i32, ptr %1, align 4
  %114 = icmp eq i32 %113, 12298
  br i1 %114, label %137, label %115

115:                                              ; preds = %112, %111
  %116 = icmp eq i32 %106, %3
  %117 = select i1 %116, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 5), ptr %107
  %118 = add nuw nsw i32 %106, 1
  br i1 %7, label %124, label %119

119:                                              ; preds = %115, %100
  %120 = phi i32 [ %118, %115 ], [ %101, %100 ]
  %121 = phi ptr [ %117, %115 ], [ %102, %100 ]
  %122 = and i32 %2, 64
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %137, label %124

124:                                              ; preds = %119, %115
  %125 = phi i32 [ %120, %119 ], [ %118, %115 ]
  %126 = phi ptr [ %121, %119 ], [ %117, %115 ]
  br i1 %8, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, ptr %0, align 4
  %129 = icmp eq i32 %128, 842088770
  br i1 %129, label %137, label %130

130:                                              ; preds = %127, %124
  br i1 %9, label %134, label %131

131:                                              ; preds = %130
  %132 = load i32, ptr %1, align 4
  %133 = icmp eq i32 %132, 12305
  br i1 %133, label %137, label %134

134:                                              ; preds = %131, %130
  %135 = icmp eq i32 %125, %3
  %136 = select i1 %135, ptr getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 6), ptr %126
  br label %137

137:                                              ; preds = %134, %131, %127, %119, %112, %108, %93, %89, %74, %70, %55, %51, %36, %32, %18, %14, %4
  %138 = phi ptr [ null, %4 ], [ @fimc_lite_formats, %14 ], [ @fimc_lite_formats, %18 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 1), %32 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 1), %36 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 2), %51 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 2), %55 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 3), %70 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 3), %74 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 4), %89 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 4), %93 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 5), %108 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 5), %112 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 6), %127 ], [ getelementptr inbounds ([7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 6), %131 ], [ %136, %134 ], [ %121, %119 ]
  ret ptr %138
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 224
  tail call void @_set_bit(i32 noundef 7, ptr noundef %4) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_subdev_registered(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 25
  %5 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(856) %5, i8 0, i32 856, i1 false)
  %6 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 20
  store volatile i32 2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 12
  %8 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 11
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.18, i32 noundef %9)
  %11 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 3
  store ptr @fimc_lite_fops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 24
  store ptr @fimc_lite_ioctl_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 7
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 15
  store i32 -1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 23
  store ptr @video_device_release_empty, ptr %17, align 8
  %18 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 10
  store ptr %4, ptr %18, align 8
  %19 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 4
  store i32 67112960, ptr %19, align 8
  %20 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 28
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 23
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 23, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 24
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 24, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 25, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(340) %25, i8 0, i32 328, i1 false)
  store i32 9, ptr %4, align 4
  %26 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 25, i32 1
  store i32 3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 25, i32 7
  store ptr @fimc_lite_qops, ptr %27, align 4
  %28 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 25, i32 8
  store ptr @vb2_dma_contig_memops, ptr %28, align 4
  %29 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 25, i32 12
  store i32 656, ptr %29, align 4
  %30 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 25, i32 10
  store ptr %3, ptr %30, align 4
  %31 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 25, i32 13
  store i32 8192, ptr %31, align 4
  %32 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 12
  %33 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 25, i32 5
  store ptr %32, ptr %33, align 4
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 25, i32 2
  store ptr %35, ptr %36, align 4
  %37 = tail call i32 @vb2_queue_init(ptr noundef %4) #14
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %1
  %40 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 6
  %41 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 6, i32 4
  store i32 1, ptr %41, align 4
  %42 = tail call i32 @media_entity_pads_init(ptr noundef %5, i16 noundef zeroext 1, ptr noundef %40) #14
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 5, i32 8
  store ptr %3, ptr %45, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 12
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 1
  store ptr %47, ptr %48, align 8
  %49 = load ptr, ptr %11, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @__video_register_device(ptr noundef %5, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %50) #14
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store ptr null, ptr %48, align 8
  br label %66

54:                                               ; preds = %44
  %55 = load ptr, ptr %13, align 4
  %56 = getelementptr inbounds %struct.v4l2_device, ptr %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 5, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %54
  %64 = phi ptr [ %62, %60 ], [ %58, %54 ]
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %56, ptr noundef %7, ptr noundef %64) #15
  br label %66

66:                                               ; preds = %63, %53, %39, %1
  %67 = phi i32 [ %51, %53 ], [ 0, %63 ], [ %37, %1 ], [ %42, %39 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimc_lite_subdev_unregistered(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %6) #14
  %7 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 0, i32 17
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2
  tail call void @video_unregister_device(ptr noundef %12) #14
  %13 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 1
  store ptr null, ptr %13, align 8
  br label %14

14:                                               ; preds = %11, %5
  tail call void @mutex_unlock(ptr noundef %6) #14
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_open(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %6) #14
  %7 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 20
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %73

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 6, ptr noundef %11) #14
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #14
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #14, !srcloc !15
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 -1, ptr elementtype(i32) %17) #14, !srcloc !16
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %71, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !17
  br label %71

22:                                               ; preds = %10
  %23 = tail call i32 @v4l2_fh_open(ptr noundef %0) #14
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %66, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @v4l2_fh_is_singular(ptr noundef %27) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %73, label %30

30:                                               ; preds = %25
  %31 = load volatile i32, ptr %7, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %73

33:                                               ; preds = %30
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr inbounds %struct.media_device, ptr %34, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %35) #14
  %36 = icmp eq ptr %5, null
  br i1 %36, label %61, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 2, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %43, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = tail call i32 %47(ptr noundef nonnull %39, ptr noundef nonnull %5, i1 noundef zeroext true) #14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 2, i32 0, i32 0, i32 13
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 4
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.media_device, ptr %56, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %57) #14
  %58 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 13
  %59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %58) #14
  %60 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 29
  store i32 0, ptr %60, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %59) #14
  br label %73

61:                                               ; preds = %49, %45, %41, %37, %33
  %62 = phi i32 [ %50, %49 ], [ -515, %41 ], [ -515, %45 ], [ -2, %33 ], [ -2, %37 ]
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr inbounds %struct.media_device, ptr %63, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %64) #14
  %65 = tail call i32 @v4l2_fh_release(ptr noundef %0) #14
  br label %66

66:                                               ; preds = %61, %22
  %67 = phi i32 [ %23, %22 ], [ %62, %61 ]
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3
  %70 = tail call i32 @__pm_runtime_idle(ptr noundef %69, i32 noundef 4) #14
  br label %71

71:                                               ; preds = %66, %21, %16
  %72 = phi i32 [ %67, %66 ], [ %14, %16 ], [ %14, %21 ]
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %11) #14
  br label %73

73:                                               ; preds = %71, %52, %30, %25, %1
  %74 = phi i32 [ %72, %71 ], [ %23, %30 ], [ 0, %52 ], [ %23, %25 ], [ -16, %1 ]
  tail call void @mutex_unlock(ptr noundef %6) #14
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_release(ptr noundef %0) #2 {
  %2 = tail call ptr @video_devdata(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %6) #14
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @v4l2_fh_is_singular(ptr noundef %8) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %46, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 20
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 30
  %17 = load i8, ptr %16, align 4, !range !18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @media_pipeline_stop(ptr noundef %5) #14
  store i8 0, ptr %16, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = tail call fastcc i32 @fimc_lite_stop_capture(ptr noundef %4, i1 noundef zeroext false)
  %22 = icmp eq ptr %5, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 2, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %25, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %29, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 %33(ptr noundef nonnull %25) #14
  br label %37

37:                                               ; preds = %35, %31, %27, %23, %20
  %38 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %38) #14
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds %struct.media_device, ptr %39, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %40) #14
  %41 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 2, i32 0, i32 0, i32 13
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -1
  store i32 %43, ptr %41, align 4
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr inbounds %struct.media_device, ptr %44, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %45) #14
  br label %46

46:                                               ; preds = %37, %11, %1
  %47 = tail call i32 @_vb2_fop_release(ptr noundef %0, ptr noundef null) #14
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  %50 = tail call i32 @__pm_runtime_idle(ptr noundef %49, i32 noundef 5) #14
  %51 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %51) #14
  tail call void @mutex_unlock(ptr noundef %6) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_lite_stop_capture(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 13
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 6
  %9 = icmp eq i32 %8, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  br i1 %9, label %37, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  tail call void @_set_bit(i32 noundef 5, ptr noundef %6) #14
  tail call void @flite_hw_capture_stop(ptr noundef %0) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %11) #14
  %12 = load volatile i32, ptr %6, align 4
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #14
  %16 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 16
  %17 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %3, i32 noundef 2) #14
  %18 = load volatile i32, ptr %6, align 4
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %21, %15
  %22 = phi i32 [ %31, %21 ], [ 20, %15 ]
  %23 = call i32 @schedule_timeout(i32 noundef %22) #14
  %24 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %3, i32 noundef 2) #14
  %25 = load volatile i32, ptr %6, align 4
  %26 = and i32 %25, 32
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = icmp ne i32 %23, 0
  %30 = select i1 %27, i1 true, i1 %29
  %31 = select i1 %30, i32 %23, i32 1
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %28, i1 true, i1 %32
  br i1 %33, label %34, label %21

34:                                               ; preds = %21, %15
  call void @finish_wait(ptr noundef %16, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  br label %35

35:                                               ; preds = %34, %10
  %36 = call fastcc i32 @fimc_lite_reinit(ptr noundef %0, i1 noundef zeroext %1)
  br label %37

37:                                               ; preds = %35, %2
  %38 = phi i32 [ %36, %35 ], [ 0, %2 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vb2_fop_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_lite_reinit(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 13
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %6, -317
  %10 = and i32 %6, -319
  %11 = or i32 %9, 16
  %12 = select i1 %1, i32 %11, i32 %10
  store i32 %12, ptr %5, align 4
  br i1 %1, label %26, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 23
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %26, label %17

17:                                               ; preds = %17, %13
  %18 = phi ptr [ %24, %17 ], [ %15, %13 ]
  %19 = getelementptr i8, ptr %18, i32 -640
  %20 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @vb2_buffer_done(ptr noundef %19, i32 noundef 6) #14
  %24 = load volatile ptr, ptr %14, align 4
  %25 = icmp eq ptr %24, %14
  br i1 %25, label %26, label %17

26:                                               ; preds = %17, %13, %2
  %27 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 24
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 23
  %32 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 23, i32 1
  br label %33

33:                                               ; preds = %43, %30
  %34 = phi ptr [ %28, %30 ], [ %44, %43 ]
  %35 = getelementptr %struct.list_head, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %34, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %34, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  br i1 %1, label %39, label %41

39:                                               ; preds = %33
  %40 = load ptr, ptr %32, align 4
  store ptr %34, ptr %32, align 4
  store ptr %31, ptr %34, align 4
  store ptr %40, ptr %35, align 4
  store volatile ptr %34, ptr %40, align 4
  br label %43

41:                                               ; preds = %33
  %42 = getelementptr i8, ptr %34, i32 -640
  tail call void @vb2_buffer_done(ptr noundef %42, i32 noundef 6) #14
  br label %43

43:                                               ; preds = %41, %39
  %44 = load volatile ptr, ptr %27, align 4
  %45 = icmp eq ptr %44, %27
  br i1 %45, label %46, label %33

46:                                               ; preds = %43, %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  tail call void @flite_hw_reset(ptr noundef %0) #14
  br i1 %8, label %64, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 2
  %49 = icmp eq ptr %48, null
  br i1 %49, label %64, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 2, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %52, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %56, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call i32 %60(ptr noundef nonnull %52, i1 noundef zeroext false) #14
  br label %64

64:                                               ; preds = %62, %58, %54, %50, %47, %46
  %65 = phi i32 [ 0, %46 ], [ -2, %50 ], [ -2, %47 ], [ %63, %62 ], [ -515, %58 ], [ -515, %54 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_querycap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @strscpy(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 16) #14
  %8 = getelementptr inbounds %struct.v4l2_capability, ptr %2, i32 0, i32 1
  %9 = tail call i32 @strscpy(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef 32) #14
  %10 = load ptr, ptr %6, align 8
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
  %20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef %18)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @fimc_lite_enum_fmt(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #11 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ugt i32 %4, 6
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr [7 x %struct.fimc_fmt], ptr @fimc_lite_formats, i32 0, i32 %4, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %8, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_g_fmt_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %9 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 19
  %10 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 19, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %9, align 4
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.fimc_fmt, ptr %11, i32 0, i32 6
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = mul nuw nsw i32 %16, %13
  %18 = lshr i32 %17, 3
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  store i32 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 19, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = mul i32 %18, %22
  store i32 %23, ptr %8, align 1
  %24 = getelementptr inbounds %struct.fimc_fmt, ptr %11, i32 0, i32 3
  %25 = load i16, ptr %24, align 4
  %26 = trunc i16 %25 to i8
  %27 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 6
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.fimc_fmt, ptr %11, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 2
  store i32 %29, ptr %30, align 1
  %31 = load i16, ptr %9, align 4
  %32 = zext i16 %31 to i32
  store i32 %32, ptr %7, align 1
  %33 = load i16, ptr %20, align 2
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %36, align 1
  %37 = getelementptr inbounds %struct.fimc_fmt, ptr %11, i32 0, i32 5
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %39, ptr %40, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_s_fmt_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %6 = tail call ptr @video_devdata(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store ptr null, ptr %4, align 4
  %10 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 25, i32 21
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = call fastcc i32 @fimc_lite_try_fmt(ptr noundef %8, ptr noundef %5, ptr noundef nonnull %4)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 19, i32 3
  store ptr %17, ptr %18, align 4
  %19 = load i32, ptr %5, align 1
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  %21 = load i32, ptr %20, align 1
  %22 = mul i32 %21, %19
  %23 = getelementptr inbounds %struct.fimc_fmt, ptr %17, i32 0, i32 6
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = mul i32 %22, %25
  %27 = lshr i32 %26, 3
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 5
  %29 = load i32, ptr %28, align 1
  %30 = call i32 @llvm.umax.i32(i32 %27, i32 %29)
  %31 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 17
  store i32 %30, ptr %31, align 8
  %32 = load i32, ptr %5, align 1
  %33 = trunc i32 %32 to i16
  store i16 %33, ptr %9, align 4
  %34 = load i32, ptr %20, align 1
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 19, i32 1
  store i16 %35, ptr %36, align 2
  br label %37

37:                                               ; preds = %16, %13, %3
  %38 = phi i32 [ 0, %16 ], [ -16, %3 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_try_fmt_mplane(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %8 = tail call fastcc i32 @fimc_lite_try_fmt(ptr noundef %6, ptr noundef %7, ptr noundef null)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_reqbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 2)
  store i32 %8, ptr %2, align 4
  %9 = tail call i32 @vb2_ioctl_reqbufs(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, ptr %2, align 4
  %13 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 28
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %3
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_streamon(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.v4l2_subdev_format, align 4
  %5 = alloca %struct.v4l2_subdev_format, align 4
  %6 = tail call ptr @video_devdata(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 13
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %12 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 6
  %15 = icmp eq i32 %14, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #14
  br i1 %15, label %16, label %138

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @media_pipeline_start(ptr noundef %9, ptr noundef %18) #14
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %138, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false) #14, !annotation !8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %5, i8 0, i32 88, i1 false) #14, !annotation !8
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 1
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2, i32 2
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 1
  %26 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %27 = icmp eq ptr %26, null
  %28 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %26, i32 0, i32 4
  %29 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 19
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 19, i32 1
  %32 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 1
  %33 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 18, i32 3
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 2
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 1
  %36 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %5, i32 0, i32 2
  br label %37

37:                                               ; preds = %125, %21
  %38 = phi ptr [ %22, %21 ], [ %87, %125 ]
  %39 = getelementptr inbounds %struct.media_entity, ptr %38, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.media_pad, ptr %40, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %130, label %45

45:                                               ; preds = %37
  %46 = icmp eq ptr %38, %22
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = load i16, ptr %29, align 4
  %49 = zext i16 %48 to i32
  store i32 %49, ptr %30, align 4
  %50 = load i16, ptr %31, align 2
  %51 = zext i16 %50 to i32
  store i32 %51, ptr %32, align 4
  %52 = load ptr, ptr %33, align 4
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %34, align 4
  br label %82

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.media_pad, ptr %40, i32 0, i32 2
  %56 = load i16, ptr %55, align 4
  %57 = zext i16 %56 to i32
  store i32 %57, ptr %25, align 4
  store i32 1, ptr %4, align 4
  %58 = icmp eq ptr %38, null
  br i1 %58, label %77, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.v4l2_subdev, ptr %38, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %61, i32 0, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %82, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %63, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %82, label %69

69:                                               ; preds = %65
  br i1 %27, label %73, label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr %28, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %69
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi ptr [ %67, %73 ], [ %71, %70 ]
  %76 = call i32 %75(ptr noundef nonnull %38, ptr noundef null, ptr noundef nonnull %4) #14
  br label %77

77:                                               ; preds = %74, %54
  %78 = phi i32 [ -19, %54 ], [ %76, %74 ]
  %79 = icmp slt i32 %78, 0
  %80 = icmp ne i32 %78, -515
  %81 = and i1 %79, %80
  br i1 %81, label %129, label %82

82:                                               ; preds = %77, %65, %59, %47
  %83 = call ptr @media_entity_remote_pad(ptr noundef %40) #14
  %84 = icmp eq ptr %83, null
  br i1 %84, label %130, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.media_pad, ptr %83, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %130, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.media_entity, ptr %87, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %130

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.media_pad, ptr %83, i32 0, i32 2
  %95 = load i16, ptr %94, align 4
  %96 = zext i16 %95 to i32
  store i32 %96, ptr %35, align 4
  store i32 1, ptr %5, align 4
  %97 = getelementptr inbounds %struct.v4l2_subdev, ptr %87, i32 0, i32 6
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %98, i32 0, i32 7
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %117, label %102

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %100, i32 0, i32 4
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %117, label %106

106:                                              ; preds = %102
  br i1 %27, label %110, label %107

107:                                              ; preds = %106
  %108 = load ptr, ptr %28, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %107, %106
  br label %111

111:                                              ; preds = %110, %107
  %112 = phi ptr [ %104, %110 ], [ %108, %107 ]
  %113 = call i32 %112(ptr noundef nonnull %87, ptr noundef null, ptr noundef nonnull %5) #14
  %114 = icmp slt i32 %113, 0
  %115 = icmp ne i32 %113, -515
  %116 = and i1 %114, %115
  br i1 %116, label %129, label %117

117:                                              ; preds = %111, %102, %93
  %118 = load i32, ptr %36, align 4
  %119 = load i32, ptr %30, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i32, ptr %23, align 4
  %123 = load i32, ptr %32, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, ptr %24, align 4
  %127 = load i32, ptr %34, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %37, label %129

129:                                              ; preds = %125, %121, %117, %111, %77
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #14
  br label %137

130:                                              ; preds = %89, %85, %82, %37
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #14
  %131 = call ptr @fimc_find_remote_sensor(ptr noundef %22) #14
  %132 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 8
  store ptr %131, ptr %132, align 8
  %133 = call i32 @vb2_ioctl_streamon(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.fimc_lite, ptr %8, i32 0, i32 30
  store i8 1, ptr %136, align 4
  br label %138

137:                                              ; preds = %130, %129
  call void @media_pipeline_stop(ptr noundef %9) #14
  br label %138

138:                                              ; preds = %137, %135, %16, %3
  %139 = phi i32 [ 0, %137 ], [ 0, %135 ], [ -16, %3 ], [ %19, %16 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_streamoff(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @vb2_ioctl_streamoff(ptr noundef %0, ptr noundef %1, i32 noundef %2) #14
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 2
  tail call void @media_pipeline_stop(ptr noundef %10) #14
  %11 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 30
  store i8 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ 0, %9 ], [ %7, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_g_selection(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 19
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %26 [
    i32 258, label %13
    i32 257, label %13
    i32 256, label %23
  ]

13:                                               ; preds = %10, %10
  %14 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  store i32 0, ptr %15, align 4
  %16 = load i16, ptr %7, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 19, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  store i32 %21, ptr %22, align 4
  br label %26

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %25 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 19, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %24, ptr noundef align 4 dereferenceable(16) %25, i32 16, i1 false)
  br label %26

26:                                               ; preds = %23, %13, %10, %3
  %27 = phi i32 [ 0, %23 ], [ 0, %13 ], [ -22, %3 ], [ -22, %10 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_s_selection(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 2
  %12 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 3, i32 3
  %13 = load i32, ptr %2, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %94

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 256
  br i1 %18, label %19, label %94

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 19
  %21 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 18, i32 2, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 18, i32 2, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = load i16, ptr %20, align 4
  %26 = zext i16 %25 to i32
  %27 = sub i32 %26, %22
  %28 = tail call i32 @llvm.umin.i32(i32 %8, i32 %27) #14
  %29 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.flite_drvdata, ptr %30, i32 0, i32 4
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 0, %33
  %35 = and i32 %28, %34
  %36 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 19, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = sub i32 %38, %24
  %40 = tail call i32 @llvm.umin.i32(i32 %10, i32 %39) #14
  %41 = load i32, ptr @debug, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %19
  %44 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 5, i32 9
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %44, i32 noundef %35, i32 noundef %40, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %38) #15
  br label %46

46:                                               ; preds = %43, %19
  %47 = getelementptr inbounds %struct.v4l2_selection, ptr %2, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %7, align 4
  %53 = icmp slt i32 %35, %52
  br i1 %53, label %94, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %9, align 4
  %56 = icmp slt i32 %40, %55
  br i1 %56, label %94, label %57

57:                                               ; preds = %54
  %58 = add i32 %35, %22
  %59 = load i32, ptr %11, align 4
  %60 = add i32 %59, %52
  %61 = icmp ugt i32 %58, %60
  br i1 %61, label %94, label %62

62:                                               ; preds = %57
  %63 = add i32 %40, %24
  %64 = load i32, ptr %12, align 4
  %65 = add i32 %64, %55
  %66 = icmp ugt i32 %63, %65
  br i1 %66, label %94, label %67

67:                                               ; preds = %62, %46
  %68 = and i32 %48, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %7, align 4
  %72 = icmp slt i32 %71, %35
  br i1 %72, label %94, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %9, align 4
  %75 = icmp slt i32 %74, %40
  br i1 %75, label %94, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %11, align 4
  %78 = add i32 %77, %71
  %79 = add i32 %35, %22
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %94, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr %12, align 4
  %83 = add i32 %82, %74
  %84 = add i32 %40, %24
  %85 = icmp ugt i32 %83, %84
  br i1 %85, label %94, label %86

86:                                               ; preds = %81, %67
  store i32 %35, ptr %7, align 4
  store i32 %40, ptr %9, align 4
  store i32 %22, ptr %11, align 4
  store i32 %24, ptr %12, align 4
  %87 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 13
  %88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %87) #14
  %89 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 19, i32 2
  store i32 %35, ptr %89, align 4
  %90 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 19, i32 2, i32 1
  store i32 %40, ptr %90, align 4
  %91 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 19, i32 2, i32 2
  store i32 %22, ptr %91, align 4
  %92 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 19, i32 2, i32 3
  store i32 %24, ptr %92, align 4
  %93 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 7, ptr noundef %93) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %87, i32 noundef %88) #14
  br label %94

94:                                               ; preds = %86, %81, %76, %73, %70, %62, %57, %54, %51, %15, %3
  %95 = phi i32 [ 0, %86 ], [ -22, %15 ], [ -22, %3 ], [ -34, %62 ], [ -34, %81 ], [ -34, %54 ], [ -34, %51 ], [ -34, %57 ], [ -34, %73 ], [ -34, %70 ], [ -34, %76 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_lite_try_fmt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5
  %5 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 5, i32 0, i32 1
  %6 = load i32, ptr %5, align 1
  %7 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fimc_lite, ptr %0, i32 0, i32 18, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !13

12:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 702, i32 noundef 9, ptr noundef null) #14
  br label %85

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.fimc_fmt, ptr %10, i32 0, i32 8
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 2
  %21 = tail call fastcc ptr @fimc_lite_find_format(ptr noundef %20, ptr noundef null, i32 noundef %16, i32 noundef 0)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !13

23:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 715, i32 noundef 9, ptr noundef null) #14
  br label %85

24:                                               ; preds = %19, %13
  %25 = phi ptr [ %21, %19 ], [ %10, %13 ]
  %26 = icmp eq ptr %2, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store ptr %25, ptr %2, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i16, ptr %8, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.flite_drvdata, ptr %8, i32 0, i32 2
  %32 = load i16, ptr %31, align 2
  %33 = tail call i16 @llvm.cttz.i16(i16 %32, i1 true), !range !12
  %34 = zext i16 %33 to i32
  %35 = icmp eq i16 %32, 0
  %36 = select i1 %35, i32 -1, i32 %34
  %37 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 1
  %38 = getelementptr inbounds %struct.flite_drvdata, ptr %8, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  tail call void @v4l_bound_align_image(ptr noundef %1, i32 noundef 8, i32 noundef %30, i32 noundef %36, ptr noundef %37, i32 noundef 0, i32 noundef %40, i32 noundef 0, i32 noundef 0) #14
  %41 = icmp eq i32 %6, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load i32, ptr %1, align 1
  %44 = getelementptr inbounds %struct.fimc_fmt, ptr %25, i32 0, i32 6
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  br label %55

47:                                               ; preds = %28
  %48 = shl i32 %6, 3
  %49 = getelementptr inbounds %struct.fimc_fmt, ptr %25, i32 0, i32 6
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = udiv i32 %48, %51
  %53 = load i32, ptr %1, align 1
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %47, %42
  %56 = phi i32 [ %46, %42 ], [ %51, %47 ]
  %57 = phi i32 [ %43, %42 ], [ %53, %47 ]
  %58 = mul i32 %57, %56
  %59 = lshr i32 %58, 3
  store i32 %59, ptr %5, align 1
  br label %60

60:                                               ; preds = %55, %47
  %61 = phi i32 [ %57, %55 ], [ %53, %47 ]
  %62 = load i32, ptr %4, align 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32, ptr %37, align 1
  %66 = mul i32 %65, %61
  %67 = getelementptr inbounds %struct.fimc_fmt, ptr %25, i32 0, i32 6
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = mul i32 %66, %69
  %71 = lshr i32 %70, 3
  store i32 %71, ptr %4, align 1
  br label %72

72:                                               ; preds = %64, %60
  %73 = getelementptr inbounds %struct.fimc_fmt, ptr %25, i32 0, i32 3
  %74 = load i16, ptr %73, align 4
  %75 = trunc i16 %74 to i8
  %76 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 6
  store i8 %75, ptr %76, align 1
  %77 = getelementptr inbounds %struct.fimc_fmt, ptr %25, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 2
  store i32 %78, ptr %79, align 1
  %80 = getelementptr inbounds %struct.fimc_fmt, ptr %25, i32 0, i32 5
  %81 = load i8, ptr %80, align 4
  %82 = zext i8 %81 to i32
  %83 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 4
  store i32 %82, ptr %83, align 1
  %84 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %1, i32 0, i32 3
  store i32 1, ptr %84, align 1
  br label %85

85:                                               ; preds = %72, %23, %12
  %86 = phi i32 [ -22, %12 ], [ -22, %23 ], [ 0, %72 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_remote_pad(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4) #12 {
  %6 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 19
  %9 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 19, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i16, ptr %8, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.fimc_lite, ptr %7, i32 0, i32 19, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = mul nuw i32 %15, %12
  %17 = icmp eq ptr %10, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %5
  %19 = load i32, ptr %2, align 4
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.fimc_fmt, ptr %10, i32 0, i32 3
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  br i1 %20, label %39, label %24

24:                                               ; preds = %18
  %25 = icmp eq i32 %19, %23
  br i1 %25, label %29, label %54

26:                                               ; preds = %29
  %27 = add nuw i32 %30, 1
  %28 = icmp eq i32 %27, %19
  br i1 %28, label %54, label %29

29:                                               ; preds = %26, %24
  %30 = phi i32 [ %27, %26 ], [ 0, %24 ]
  %31 = getelementptr i32, ptr %3, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.fimc_fmt, ptr %10, i32 0, i32 6, i32 %30
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = mul i32 %16, %35
  %37 = lshr i32 %36, 3
  %38 = icmp ult i32 %32, %37
  br i1 %38, label %54, label %26

39:                                               ; preds = %18
  store i32 %23, ptr %2, align 4
  %40 = load i16, ptr %21, align 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %42, %39
  %43 = phi i32 [ %50, %42 ], [ 0, %39 ]
  %44 = getelementptr %struct.fimc_fmt, ptr %10, i32 0, i32 6, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = mul i32 %16, %46
  %48 = lshr i32 %47, 3
  %49 = getelementptr i32, ptr %3, i32 %43
  store i32 %48, ptr %49, align 4
  %50 = add nuw nsw i32 %43, 1
  %51 = load i16, ptr %21, align 4
  %52 = zext i16 %51 to i32
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %42, label %54

54:                                               ; preds = %42, %39, %29, %26, %24, %5
  %55 = phi i32 [ -22, %5 ], [ -22, %24 ], [ 0, %39 ], [ 0, %42 ], [ -22, %29 ], [ 0, %26 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 19, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fimc_fmt, ptr %6, i32 0, i32 3
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  br label %15

15:                                               ; preds = %34, %12
  %16 = phi ptr [ %6, %12 ], [ %35, %34 ]
  %17 = phi i32 [ 0, %12 ], [ %36, %34 ]
  %18 = getelementptr %struct.fimc_lite, ptr %4, i32 0, i32 17, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %14, %17
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %17, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = icmp ult i32 %23, %19
  br i1 %24, label %27, label %31

25:                                               ; preds = %15
  %26 = icmp eq i32 %19, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %23, %21 ], [ 0, %25 ]
  %29 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 2, i32 0, i32 12
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %29, i32 noundef %28, i32 noundef %19) #15
  br label %41

31:                                               ; preds = %21
  %32 = getelementptr %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 %17, i32 3
  store i32 %19, ptr %32, align 4
  %33 = load ptr, ptr %5, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi ptr [ %16, %25 ], [ %33, %31 ]
  %36 = add nuw nsw i32 %17, 1
  %37 = getelementptr inbounds %struct.fimc_fmt, ptr %35, i32 0, i32 3
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %15, label %41

41:                                               ; preds = %34, %27, %8, %1
  %42 = phi i32 [ -22, %1 ], [ -22, %27 ], [ 0, %8 ], [ 0, %34 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 13
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 26
  store i16 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 27
  store i32 0, ptr %8, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  %9 = tail call fastcc i32 @fimc_lite_hw_init(ptr noundef %4, i1 noundef zeroext false)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @fimc_lite_reinit(ptr noundef %4, i1 noundef zeroext false)
  br label %45

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 1, ptr noundef %14) #14
  %15 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 24
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %41, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %14) #14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  tail call void @flite_hw_capture_start(ptr noundef %4) #14
  %22 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %14) #14
  %23 = icmp ne i32 %22, 0
  %24 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 2
  %25 = icmp eq ptr %24, null
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 2, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %29, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %33, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 %37(ptr noundef nonnull %29, i1 noundef zeroext true) #14
  br label %41

41:                                               ; preds = %39, %35, %31, %27, %21, %18, %13
  %42 = load i32, ptr @debug, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  tail call void @flite_hw_dump_regs(ptr noundef %4, ptr noundef nonnull @__func__.start_streaming) #14
  br label %45

45:                                               ; preds = %44, %41, %11
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 13
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 6
  %9 = icmp eq i32 %8, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @fimc_lite_stop_capture(ptr noundef %3, i1 noundef zeroext false)
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 13
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = tail call ptr @vb2_plane_cookie(ptr noundef %0, i32 noundef 0) #14
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.flite_buffer, ptr %0, i32 0, i32 2
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 26
  %11 = load i16, ptr %10, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.flite_buffer, ptr %0, i32 0, i32 3
  store i16 %11, ptr %13, align 4
  %14 = load i16, ptr %10, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 28
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, %15
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i16 0, ptr %10, align 4
  br label %20

20:                                               ; preds = %19, %1
  %21 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 22
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load volatile i32, ptr %21, align 4
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 24
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  tail call void @flite_hw_set_dma_buffer(ptr noundef %4, ptr noundef %0) #14
  %34 = getelementptr inbounds %struct.flite_buffer, ptr %0, i32 0, i32 1
  %35 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 24, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %34, ptr %35, align 4
  store ptr %30, ptr %34, align 4
  %37 = getelementptr inbounds %struct.flite_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %34, ptr %36, align 4
  br label %44

38:                                               ; preds = %29, %25, %20
  %39 = getelementptr inbounds %struct.flite_buffer, ptr %0, i32 0, i32 1
  %40 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 23
  %41 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 23, i32 1
  %42 = load ptr, ptr %41, align 4
  store ptr %39, ptr %41, align 4
  store ptr %40, ptr %39, align 4
  %43 = getelementptr inbounds %struct.flite_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %42, ptr %43, align 4
  store volatile ptr %39, ptr %42, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 25, i32 28
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, 1
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 23
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %76, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %21) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  tail call void @flite_hw_capture_start(ptr noundef %4) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  %57 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %21) #14
  %58 = icmp ne i32 %57, 0
  %59 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 2
  %60 = icmp eq ptr %59, null
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %77, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.fimc_lite, ptr %4, i32 0, i32 2, i32 1
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %64, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %68, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = tail call i32 %72(ptr noundef nonnull %64, i1 noundef zeroext true) #14
  br label %77

76:                                               ; preds = %53, %49, %44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  br label %77

77:                                               ; preds = %76, %74, %70, %66, %62, %56
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_link_setup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !13

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 959, i32 noundef 9, ptr noundef null) #14
  br label %57

9:                                                ; preds = %4
  %10 = load i32, ptr @debug, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %14 = getelementptr inbounds %struct.media_pad, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.media_entity, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.media_pad, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.media_entity, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 21
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %13, ptr noundef nonnull @__func__.fimc_lite_link_setup, ptr noundef %17, ptr noundef %21, i32 noundef %3, i32 noundef %23) #15
  br label %25

25:                                               ; preds = %12, %9
  %26 = getelementptr inbounds %struct.media_pad, ptr %1, i32 0, i32 2
  %27 = load i16, ptr %26, align 4
  switch i16 %27, label %52 [
    i16 0, label %28
    i16 1, label %40
    i16 2, label %46
  ]

28:                                               ; preds = %25
  %29 = and i32 %3, 1
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 21
  br i1 %30, label %38, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %31, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 10
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %31, align 8
  br label %55

38:                                               ; preds = %28
  store i32 0, ptr %31, align 8
  %39 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 8
  store ptr null, ptr %39, align 8
  br label %55

40:                                               ; preds = %25
  %41 = and i32 %3, 1
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 20
  br i1 %42, label %44, label %45

44:                                               ; preds = %40
  store volatile i32 0, ptr %43, align 4
  br label %55

45:                                               ; preds = %40
  store volatile i32 2, ptr %43, align 4
  br label %55

46:                                               ; preds = %25
  %47 = and i32 %3, 1
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.fimc_lite, ptr %6, i32 0, i32 20
  br i1 %48, label %50, label %51

50:                                               ; preds = %46
  store volatile i32 0, ptr %49, align 4
  br label %55

51:                                               ; preds = %46
  store volatile i32 5, ptr %49, align 4
  br label %55

52:                                               ; preds = %25
  %53 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %53) #15
  br label %55

55:                                               ; preds = %52, %51, %50, %45, %44, %38, %35, %32
  %56 = phi i32 [ -22, %52 ], [ 0, %51 ], [ 0, %50 ], [ 0, %45 ], [ 0, %44 ], [ 0, %35 ], [ 0, %38 ], [ -16, %32 ]
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !19
  tail call void @arm_heavy_mb() #14
  br label %57

57:                                               ; preds = %55, %8
  %58 = phi i32 [ 0, %8 ], [ %56, %55 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 22
  %5 = load volatile i32, ptr %4, align 4
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %4) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = and i32 %5, 64
  %10 = icmp ne i32 %9, 0
  %11 = tail call fastcc i32 @fimc_lite_stop_capture(ptr noundef %3, i1 noundef zeroext %10)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 13
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #14
  %16 = load i32, ptr %4, align 4
  %17 = and i32 %16, 6
  %18 = icmp eq i32 %17, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #14
  br i1 %18, label %36, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %28, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 %32(ptr noundef nonnull %24) #14
  br label %36

36:                                               ; preds = %34, %30, %26, %22, %19, %13, %8, %1
  %37 = phi i32 [ 0, %1 ], [ %11, %13 ], [ %11, %8 ], [ -2, %22 ], [ -2, %19 ], [ %35, %34 ], [ -515, %30 ], [ -515, %26 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 13
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 22
  %7 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %6) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load volatile i32, ptr %6, align 4
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  br label %58

14:                                               ; preds = %9
  tail call void @flite_hw_reset(ptr noundef %3) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  %15 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %6) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %58, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 24
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 24, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.exynos_media_pipeline, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.exynos_media_pipeline_ops, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 %32(ptr noundef nonnull %24, ptr noundef nonnull %20, i1 noundef zeroext false) #14
  br label %36

36:                                               ; preds = %34, %30, %26, %22, %17
  %37 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 20
  %38 = load volatile i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 5
  %40 = tail call fastcc i32 @fimc_lite_hw_init(ptr noundef %3, i1 noundef zeroext %39)
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %6) #14
  %41 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 23
  %42 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 28
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %49, %36
  %46 = phi i32 [ %55, %49 ], [ 0, %36 ]
  %47 = load volatile ptr, ptr %41, align 4
  %48 = icmp eq ptr %47, %41
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %47, i32 -640
  %51 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %47, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store volatile ptr %53, ptr %52, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  tail call void @buffer_queue(ptr noundef %50)
  %55 = add nuw i32 %46, 1
  %56 = load i32, ptr %42, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %45, label %58

58:                                               ; preds = %49, %45, %36, %14, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #14
  tail call void @clk_unprepare(ptr noundef %5) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_lite_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimc_lite, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #14
  br label %12

12:                                               ; preds = %11, %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }

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
!9 = !{i64 2155197046}
!10 = !{i64 3767520}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i16 0, i16 17}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2148075254}
!15 = !{i64 574361, i64 2148064332, i64 2148064358, i64 2148064405, i64 2148064427, i64 2148064455, i64 2148064475}
!16 = !{i64 560930, i64 560955, i64 560977, i64 560993, i64 561005, i64 561025, i64 561049, i64 561065, i64 561077}
!17 = !{i64 2148075380}
!18 = !{i8 0, i8 2}
!19 = !{i64 2155280386}
