; ModuleID = '/llk/IR/drivers/media/platform/exynos-gsc/gsc-core.c_pt.bc'
source_filename = "../drivers/media/platform/exynos-gsc/gsc-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gsc_fmt = type { i32, i32, i32, i32, i32, i16, i16, [8 x i8], i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.gsc_driverdata = type { [4 x ptr], [4 x ptr], i32, i32 }
%struct.gsc_variant = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16 }
%struct.gsc_pix_max = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.gsc_pix_min = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.gsc_pix_align = type { i16, i16, i16, i16, i16, i16, i16 }
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
%struct.gsc_frame = type { i32, i32, %struct.v4l2_rect, [8 x i32], %struct.gsc_addr, ptr, i32, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.gsc_addr = type { i32, i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.gsc_ctx = type { %struct.gsc_frame, %struct.gsc_frame, i32, i32, %struct.gsc_scaler, i32, i32, i32, i8, ptr, ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.gsc_ctrls, i8, i32 }
%struct.gsc_scaler = type { i32, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.gsc_ctrls = type { ptr, ptr, ptr, ptr }
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
%struct.v4l2_format = type { i32, %union.anon.81 }
%union.anon.81 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.83, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.83 = type { i8 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@gsc_formats = internal constant [21 x %struct.gsc_fmt] [%struct.gsc_fmt { i32 0, i32 1380075346, i32 1, i32 0, i32 0, i16 1, i16 1, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 877807426, i32 1, i32 0, i32 0, i16 1, i16 1, [8 x i8] c" \00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 8200, i32 1448695129, i32 4, i32 16, i32 32, i16 1, i16 1, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 8198, i32 1498831189, i32 4, i32 17, i32 32, i16 1, i16 1, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 8199, i32 1498765654, i32 4, i32 17, i32 33, i16 1, i16 1, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 8201, i32 1431918169, i32 4, i32 16, i32 33, i16 1, i16 1, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 878073177, i32 8, i32 16, i32 32, i16 1, i16 1, [8 x i8] c" \00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 1345466932, i32 4, i32 16, i32 32, i16 1, i16 3, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 909203022, i32 4, i32 16, i32 32, i16 1, i16 2, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 909200718, i32 4, i32 16, i32 32, i16 2, i16 2, [8 x i8] c"\08\08\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 825644622, i32 4, i32 16, i32 33, i16 1, i16 2, [8 x i8] c"\10\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 825642318, i32 4, i32 16, i32 33, i16 2, i16 2, [8 x i8] c"\08\08\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 842093913, i32 2, i32 16, i32 32, i16 1, i16 3, [8 x i8] c"\0C\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 842094169, i32 2, i32 16, i32 33, i16 1, i16 3, [8 x i8] c"\0C\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 842094158, i32 2, i32 16, i32 32, i16 1, i16 2, [8 x i8] c"\0C\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 825382478, i32 2, i32 16, i32 33, i16 1, i16 2, [8 x i8] c"\0C\00\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 825380174, i32 2, i32 16, i32 33, i16 2, i16 2, [8 x i8] c"\08\04\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 842091854, i32 2, i32 16, i32 32, i16 2, i16 2, [8 x i8] c"\08\04\00\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 842091865, i32 2, i32 16, i32 32, i16 3, i16 3, [8 x i8] c"\08\02\02\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 825380185, i32 2, i32 16, i32 33, i16 3, i16 3, [8 x i8] c"\08\02\02\00\00\00\00\00", i32 0 }, %struct.gsc_fmt { i32 0, i32 842091862, i32 2, i32 16, i32 32, i16 2, i16 2, [8 x i8] c"\08\04\00\00\00\00\00\00", i32 0 }], align 4
@.str = private unnamed_addr constant [45 x i8] c"\013Exceeded maximum downscaling ratio (1/16))\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"\016cropped src width size is recalculated from %d to %d\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"\016cropped src height size is recalculated from %d to %d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\013pixelformat format (0x%X) invalid\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"\016Cropped size has been modified from %dx%d to %dx%d\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"\013doesn't support negative values for top & left\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"\013out of scaler range\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Invalid target size: %dx%d\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"\013Horizontal scale ratio is out of range\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\013Vertical scale ratio is out of range\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"\013Control handler of this context was created already\00", align 1
@gsc_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @gsc_s_ctrl }, align 4
@.str.11 = private unnamed_addr constant [45 x i8] c"\013Failed to create G-Scaler control handlers\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"\013Invalid the number of color planes\00", align 1
@exynos_gsc_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-gsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gsc_v_5250_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-gsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gsc_v_5420_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-gsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gsc_5433_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5-gsc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gsc_v_100_drvdata }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author268 = internal constant [46 x i8] c"author=Hyunwong Kim <khw0178.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description269 = internal constant [55 x i8] c"description=Samsung EXYNOS5 Soc series G-Scaler driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"\013Plane address is wrong\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"\013Wrong buffer/video queue type (%d)\00", align 1
@gsc_v_5250_drvdata = internal global %struct.gsc_driverdata { [4 x ptr] [ptr @gsc_v_5250_variant, ptr @gsc_v_5250_variant, ptr @gsc_v_5250_variant, ptr @gsc_v_5250_variant], [4 x ptr] [ptr @.str.15, ptr null, ptr null, ptr null], i32 1, i32 4 }, align 4
@gsc_v_5420_drvdata = internal global %struct.gsc_driverdata { [4 x ptr] [ptr @gsc_v_5420_variant, ptr @gsc_v_5420_variant, ptr null, ptr null], [4 x ptr] [ptr @.str.15, ptr null, ptr null, ptr null], i32 1, i32 2 }, align 4
@gsc_5433_drvdata = internal global %struct.gsc_driverdata { [4 x ptr] [ptr @gsc_v_5433_variant, ptr @gsc_v_5433_variant, ptr @gsc_v_5433_variant, ptr null], [4 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], i32 4, i32 3 }, align 4
@gsc_v_100_drvdata = internal global %struct.gsc_driverdata { [4 x ptr] [ptr @gsc_v_100_variant, ptr @gsc_v_100_variant, ptr @gsc_v_100_variant, ptr @gsc_v_100_variant], [4 x ptr] [ptr @.str.15, ptr null, ptr null, ptr null], i32 1, i32 4 }, align 4
@gsc_v_5250_variant = internal global %struct.gsc_variant { ptr @gsc_v_5250_max, ptr @gsc_v_100_min, ptr @gsc_v_100_align, i16 32, i16 32, i16 8, i16 16, i16 4, i16 4, i16 2 }, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"gscl\00", align 1
@gsc_v_5250_max = internal global %struct.gsc_pix_max { i16 8192, i16 8192, i16 4800, i16 3344, i16 4800, i16 3344, i16 2016, i16 2016, i16 4800, i16 3344, i16 2016, i16 2016 }, align 2
@gsc_v_100_min = internal global %struct.gsc_pix_min { i16 64, i16 32, i16 64, i16 32, i16 64, i16 32, i16 32, i16 16 }, align 2
@gsc_v_100_align = internal global %struct.gsc_pix_align { i16 16, i16 16, i16 2, i16 16, i16 16, i16 2, i16 2 }, align 2
@gsc_v_5420_variant = internal global %struct.gsc_variant { ptr @gsc_v_5420_max, ptr @gsc_v_100_min, ptr @gsc_v_100_align, i16 32, i16 32, i16 8, i16 16, i16 4, i16 4, i16 2 }, align 4
@gsc_v_5420_max = internal global %struct.gsc_pix_max { i16 8192, i16 8192, i16 4800, i16 3344, i16 4800, i16 3344, i16 2048, i16 2048, i16 4800, i16 3344, i16 2016, i16 2016 }, align 2
@gsc_v_5433_variant = internal global %struct.gsc_variant { ptr @gsc_v_5433_max, ptr @gsc_v_100_min, ptr @gsc_v_100_align, i16 32, i16 32, i16 8, i16 16, i16 4, i16 4, i16 2 }, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"aclk_xiu\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"aclk_gsclbend\00", align 1
@gsc_v_5433_max = internal global %struct.gsc_pix_max { i16 8192, i16 8192, i16 4800, i16 3344, i16 4800, i16 3344, i16 2047, i16 2047, i16 4800, i16 3344, i16 2016, i16 2016 }, align 2
@gsc_v_100_variant = internal global %struct.gsc_variant { ptr @gsc_v_100_max, ptr @gsc_v_100_min, ptr @gsc_v_100_align, i16 32, i16 32, i16 8, i16 16, i16 4, i16 4, i16 2 }, align 4
@gsc_v_100_max = internal global %struct.gsc_pix_max { i16 8192, i16 8192, i16 4800, i16 3344, i16 4800, i16 3344, i16 2047, i16 2047, i16 4800, i16 3344, i16 2016, i16 2016 }, align 2
@gsc_driver = internal global %struct.platform_driver { ptr @gsc_probe, ptr @gsc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.20, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_gsc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.20 = private unnamed_addr constant [11 x i8] c"exynos-gsc\00", align 1
@gsc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gsc_runtime_suspend, ptr @gsc_runtime_resume, ptr null }, align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"gsc\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"compatible 'exynos5-gsc' is deprecated\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Invalid platform device id: %d\0A\00", align 1
@gsc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"&gsc->irq_queue\00", align 1
@gsc_probe.__key.25 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"&gsc->lock\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"failed to get IRQ resource\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"failed to get clock: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"clock prepare failed for clock: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"failed to install irq (%d)\0A\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"\013Local path input over-run interrupt has occurred!\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_license270], section "llvm.metadata"

@__mod_of__exynos_gsc_match_device_table = dso_local alias [5 x %struct.of_device_id], ptr @exynos_gsc_match

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @get_format(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 20
  %3 = getelementptr [21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 %0
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @find_fmt(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp ugt i32 %2, 20
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  %7 = icmp eq ptr %1, null
  br label %8

8:                                                ; preds = %22, %5
  %9 = phi i32 [ 0, %5 ], [ %25, %22 ]
  %10 = phi ptr [ null, %5 ], [ %24, %22 ]
  %11 = getelementptr [21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 %9
  br i1 %6, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr [21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 %9, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %0, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %12, %8
  br i1 %7, label %22, label %18

18:                                               ; preds = %17
  %19 = load i32, ptr %11, align 4
  %20 = load i32, ptr %1, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %18, %17
  %23 = icmp eq i32 %9, %2
  %24 = select i1 %23, ptr %11, ptr %10
  %25 = add nuw nsw i32 %9, 1
  %26 = icmp eq i32 %25, 21
  br i1 %26, label %27, label %8

27:                                               ; preds = %22, %18, %12, %3
  %28 = phi ptr [ null, %3 ], [ %24, %22 ], [ %11, %18 ], [ %11, %12 ]
  ret ptr %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @gsc_set_frame_size(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  store i32 %1, ptr %0, align 4
  %4 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 1
  store i32 %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 2, i32 2
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 2, i32 3
  store i32 %2, ptr %7, align 4
  store i32 0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 2, i32 1
  store i32 0, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gsc_cal_prescaler_ratio(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #4 {
  %5 = icmp ugt i32 %2, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gsc_variant, ptr %0, i32 0, i32 7
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = udiv i32 %1, %9
  %11 = icmp ugt i32 %10, %2
  br i1 %11, label %13, label %12

12:                                               ; preds = %6, %4
  store i32 1, ptr %3, align 4
  br label %25

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.gsc_variant, ptr %0, i32 0, i32 8
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = udiv i32 %10, %16
  %18 = icmp ugt i32 %17, %2
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %25

21:                                               ; preds = %13
  %22 = lshr i32 %1, 3
  %23 = icmp ult i32 %22, %2
  %24 = select i1 %23, i32 2, i32 4
  store i32 %24, ptr %3, align 4
  br label %25

25:                                               ; preds = %21, %19, %12
  %26 = phi i32 [ 0, %12 ], [ -22, %19 ], [ 0, %21 ]
  ret i32 %26
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @gsc_get_prescaler_shfactor(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = icmp eq i32 %0, 4
  %5 = icmp eq i32 %1, 4
  %6 = and i1 %4, %5
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, 2
  %9 = and i1 %4, %8
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = icmp eq i32 %0, 2
  %12 = and i1 %11, %5
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = icmp eq i32 %1, 1
  %15 = and i1 %4, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = icmp eq i32 %0, 1
  %18 = and i1 %17, %5
  %19 = and i1 %11, %8
  %20 = or i1 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = and i1 %17, %14
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %21, %16, %13, %10, %7, %3
  %26 = phi i32 [ 4, %3 ], [ 3, %10 ], [ 3, %7 ], [ 2, %16 ], [ 2, %13 ], [ %24, %21 ]
  store i32 %26, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_check_src_scale_info(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) local_unnamed_addr #4 {
  %7 = getelementptr inbounds %struct.gsc_frame, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gsc_fmt, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 2, i32 4
  %14 = and i32 %10, 6
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 2, i32 4
  %17 = getelementptr inbounds %struct.gsc_frame, ptr %1, i32 0, i32 2, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %2, align 4
  %20 = mul i32 %16, %19
  %21 = urem i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %6
  %24 = sub i32 %18, %21
  store i32 %24, ptr %17, align 4
  %25 = icmp ult i32 %24, %3
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.gsc_variant, ptr %0, i32 0, i32 7
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = udiv i32 %24, %29
  %31 = icmp ugt i32 %30, %3
  br i1 %31, label %33, label %32

32:                                               ; preds = %26, %23
  store i32 1, ptr %2, align 4
  br label %45

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.gsc_variant, ptr %0, i32 0, i32 8
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = udiv i32 %30, %36
  %38 = icmp ugt i32 %37, %3
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %45

41:                                               ; preds = %33
  %42 = lshr i32 %24, 3
  %43 = icmp ult i32 %42, %3
  %44 = select i1 %43, i32 2, i32 4
  store i32 %44, ptr %2, align 4
  br label %45

45:                                               ; preds = %41, %39, %32
  %46 = load i32, ptr %17, align 4
  %47 = add i32 %46, %21
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %47, i32 noundef %46) #12
  br label %49

49:                                               ; preds = %45, %6
  %50 = getelementptr inbounds %struct.gsc_frame, ptr %1, i32 0, i32 2, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %5, align 4
  %53 = mul i32 %52, %13
  %54 = urem i32 %51, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %49
  %57 = sub i32 %51, %54
  store i32 %57, ptr %50, align 4
  %58 = icmp ult i32 %57, %4
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.gsc_variant, ptr %0, i32 0, i32 7
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = udiv i32 %57, %62
  %64 = icmp ugt i32 %63, %4
  br i1 %64, label %66, label %65

65:                                               ; preds = %59, %56
  store i32 1, ptr %5, align 4
  br label %78

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.gsc_variant, ptr %0, i32 0, i32 8
  %68 = load i16, ptr %67, align 2
  %69 = zext i16 %68 to i32
  %70 = udiv i32 %63, %69
  %71 = icmp ugt i32 %70, %4
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %78

74:                                               ; preds = %66
  %75 = lshr i32 %57, 3
  %76 = icmp ult i32 %75, %4
  %77 = select i1 %76, i32 2, i32 4
  store i32 %77, ptr %5, align 4
  br label %78

78:                                               ; preds = %74, %72, %65
  %79 = load i32, ptr %50, align 4
  %80 = add i32 %79, %54
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %80, i32 noundef %79) #12
  br label %82

82:                                               ; preds = %78, %49
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gsc_enum_fmt(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp ugt i32 %2, 20
  br i1 %3, label %52, label %4

4:                                                ; preds = %1
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, ptr @gsc_formats, ptr null
  %7 = icmp eq i32 %2, 1
  %8 = select i1 %7, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 1), ptr %6
  %9 = icmp eq i32 %2, 2
  %10 = select i1 %9, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 2), ptr %8
  %11 = icmp eq i32 %2, 3
  %12 = select i1 %11, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 3), ptr %10
  %13 = icmp eq i32 %2, 4
  %14 = select i1 %13, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 4), ptr %12
  %15 = icmp eq i32 %2, 5
  %16 = select i1 %15, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 5), ptr %14
  %17 = icmp eq i32 %2, 6
  %18 = select i1 %17, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 6), ptr %16
  %19 = icmp eq i32 %2, 7
  %20 = select i1 %19, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 7), ptr %18
  %21 = icmp eq i32 %2, 8
  %22 = select i1 %21, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 8), ptr %20
  %23 = icmp eq i32 %2, 9
  %24 = select i1 %23, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 9), ptr %22
  %25 = icmp eq i32 %2, 10
  %26 = select i1 %25, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 10), ptr %24
  %27 = icmp eq i32 %2, 11
  %28 = select i1 %27, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 11), ptr %26
  %29 = icmp eq i32 %2, 12
  %30 = select i1 %29, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 12), ptr %28
  %31 = icmp eq i32 %2, 13
  %32 = select i1 %31, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 13), ptr %30
  %33 = icmp eq i32 %2, 14
  %34 = select i1 %33, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 14), ptr %32
  %35 = icmp eq i32 %2, 15
  %36 = select i1 %35, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 15), ptr %34
  %37 = icmp eq i32 %2, 16
  %38 = select i1 %37, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 16), ptr %36
  %39 = icmp eq i32 %2, 17
  %40 = select i1 %39, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 17), ptr %38
  %41 = icmp eq i32 %2, 18
  %42 = select i1 %41, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 18), ptr %40
  %43 = icmp eq i32 %2, 19
  %44 = select i1 %43, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 19), ptr %42
  %45 = icmp eq i32 %2, 20
  %46 = select i1 %45, ptr getelementptr inbounds ([21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 20), ptr %44
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.gsc_fmt, ptr %46, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %0, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %48, %4, %1
  %53 = phi i32 [ 0, %48 ], [ -22, %4 ], [ -22, %1 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_set_prefbuf(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gsc_frame, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gsc_fmt, ptr %4, i32 0, i32 5
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 3
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gsc_frame, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.gsc_frame, ptr %1, i32 0, i32 4, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %12)
  %14 = getelementptr inbounds %struct.gsc_frame, ptr %1, i32 0, i32 4, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %15)
  %17 = icmp eq i32 %10, %16
  %18 = icmp eq i32 %12, %16
  %19 = select i1 %17, i1 true, i1 %18
  %20 = icmp ule i32 %15, %13
  %21 = select i1 %19, i1 true, i1 %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %8
  %23 = tail call i32 @llvm.umax.i32(i32 %10, i32 %12)
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %15)
  %25 = icmp eq i32 %10, %24
  %26 = icmp eq i32 %12, %24
  %27 = select i1 %25, i1 true, i1 %26
  %28 = icmp uge i32 %15, %23
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %22, %8
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %32

32:                                               ; preds = %30, %22, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gsc_try_fmt_mplane(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  %9 = icmp eq ptr %8, null
  br label %10

10:                                               ; preds = %18, %2
  %11 = phi i32 [ 0, %2 ], [ %21, %18 ]
  %12 = phi ptr [ null, %2 ], [ %20, %18 ]
  br i1 %9, label %18, label %13

13:                                               ; preds = %10
  %14 = getelementptr [21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 %11, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %8, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %13, %10
  %19 = icmp eq i32 %11, 0
  %20 = select i1 %19, ptr @gsc_formats, ptr %12
  %21 = add nuw nsw i32 %11, 1
  %22 = icmp eq i32 %21, 21
  br i1 %22, label %25, label %10

23:                                               ; preds = %13
  %24 = getelementptr [21 x %struct.gsc_fmt], ptr @gsc_formats, i32 0, i32 %11
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %20, %18 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, ptr %8, align 1
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %29) #12
  br label %154

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 3
  %33 = load i32, ptr %32, align 1
  switch i32 %33, label %154 [
    i32 0, label %34
    i32 1, label %35
  ]

34:                                               ; preds = %31
  store i32 1, ptr %32, align 1
  br label %35

35:                                               ; preds = %34, %31
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr inbounds %struct.gsc_pix_max, ptr %36, i32 0, i32 8
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.gsc_pix_max, ptr %36, i32 0, i32 9
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.gsc_variant, ptr %6, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.gsc_pix_align, ptr %44, i32 0, i32 1
  %46 = load i16, ptr %45, align 2
  %47 = tail call i16 @llvm.cttz.i16(i16 %46, i1 true), !range !8
  %48 = zext i16 %47 to i32
  %49 = icmp eq i16 %46, 0
  %50 = select i1 %49, i32 -1, i32 %48
  %51 = getelementptr inbounds %struct.gsc_fmt, ptr %26, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  %55 = load i16, ptr %44, align 2
  %56 = tail call i16 @llvm.cttz.i16(i16 %55, i1 true), !range !8
  %57 = zext i16 %56 to i32
  %58 = icmp eq i16 %55, 0
  %59 = select i1 %58, i32 -1, i32 %57
  %60 = add nsw i32 %57, -1
  %61 = select i1 %58, i32 -2, i32 %60
  %62 = select i1 %54, i32 %61, i32 %59
  %63 = load i32, ptr %1, align 4
  switch i32 %63, label %70 [
    i32 2, label %64
    i32 10, label %64
    i32 3, label %64
    i32 8, label %64
    i32 5, label %64
    i32 7, label %64
    i32 12, label %64
    i32 14, label %64
  ]

64:                                               ; preds = %35, %35, %35, %35, %35, %35, %35, %35
  %65 = getelementptr inbounds %struct.gsc_variant, ptr %6, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load i16, ptr %66, align 2
  %68 = getelementptr inbounds %struct.gsc_pix_min, ptr %66, i32 0, i32 1
  %69 = load i16, ptr %68, align 2
  br label %80

70:                                               ; preds = %35
  %71 = getelementptr inbounds %struct.gsc_variant, ptr %6, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.gsc_pix_min, ptr %72, i32 0, i32 4
  %74 = load i16, ptr %73, align 2
  %75 = getelementptr inbounds %struct.gsc_pix_min, ptr %72, i32 0, i32 5
  %76 = load i16, ptr %75, align 2
  %77 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 15
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 4
  store i32 %78, ptr %79, align 1
  br label %80

80:                                               ; preds = %70, %64
  %81 = phi i16 [ %69, %64 ], [ %76, %70 ]
  %82 = phi i16 [ %67, %64 ], [ %74, %70 ]
  %83 = zext i16 %82 to i32
  %84 = zext i16 %81 to i32
  %85 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %7, i32 noundef %83, i32 noundef %39, i32 noundef %50, ptr noundef %85, i32 noundef %84, i32 noundef %42, i32 noundef %62, i32 noundef 0) #13
  %86 = getelementptr inbounds %struct.gsc_fmt, ptr %26, i32 0, i32 5
  %87 = load i16, ptr %86, align 4
  %88 = trunc i16 %87 to i8
  %89 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 6
  store i8 %88, ptr %89, align 1
  %90 = load i32, ptr %1, align 4
  switch i32 %90, label %96 [
    i32 2, label %91
    i32 10, label %91
    i32 3, label %91
    i32 8, label %91
    i32 5, label %91
    i32 7, label %91
    i32 12, label %91
    i32 14, label %91
  ]

91:                                               ; preds = %80, %80, %80, %80, %80, %80, %80, %80
  %92 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 4
  %93 = load i32, ptr %92, align 1
  %94 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 15
  store i32 %93, ptr %94, align 4
  %95 = load i8, ptr %89, align 1
  br label %96

96:                                               ; preds = %91, %80
  %97 = phi i8 [ %88, %80 ], [ %95, %91 ]
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %154, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.gsc_fmt, ptr %26, i32 0, i32 6
  br label %101

101:                                              ; preds = %133, %99
  %102 = phi i32 [ 0, %99 ], [ %150, %133 ]
  %103 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 %102
  %104 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 %102, i32 1
  %105 = load i32, ptr %104, align 1
  %106 = load i16, ptr %100, align 2
  switch i16 %106, label %127 [
    i16 1, label %107
    i16 0, label %133
  ]

107:                                              ; preds = %101
  %108 = icmp eq i32 %105, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %107
  %110 = load i32, ptr %7, align 1
  %111 = getelementptr %struct.gsc_fmt, ptr %26, i32 0, i32 7, i32 %102
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  br label %122

114:                                              ; preds = %107
  %115 = shl i32 %105, 3
  %116 = getelementptr %struct.gsc_fmt, ptr %26, i32 0, i32 7, i32 %102
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = udiv i32 %115, %118
  %120 = load i32, ptr %7, align 1
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %114, %109
  %123 = phi i32 [ %113, %109 ], [ %118, %114 ]
  %124 = phi i32 [ %110, %109 ], [ %120, %114 ]
  %125 = mul i32 %124, %123
  %126 = lshr i32 %125, 3
  br label %133

127:                                              ; preds = %101
  %128 = icmp eq i32 %105, 0
  %129 = load i32, ptr %7, align 1
  %130 = icmp ult i32 %105, %129
  %131 = select i1 %128, i1 true, i1 %130
  %132 = select i1 %131, i32 %129, i32 %105
  br label %133

133:                                              ; preds = %127, %122, %114, %101
  %134 = phi i32 [ %105, %114 ], [ %126, %122 ], [ %105, %101 ], [ %132, %127 ]
  %135 = icmp ne i32 %102, 0
  %136 = icmp eq i16 %106, 3
  %137 = select i1 %135, i1 %136, i1 false
  %138 = zext i1 %137 to i32
  %139 = lshr i32 %134, %138
  store i32 %139, ptr %104, align 1
  %140 = load i32, ptr %7, align 1
  %141 = load i32, ptr %85, align 1
  %142 = mul i32 %141, %140
  %143 = getelementptr %struct.gsc_fmt, ptr %26, i32 0, i32 7, i32 %102
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i32
  %146 = mul i32 %142, %145
  %147 = lshr i32 %146, 3
  %148 = load i32, ptr %103, align 1
  %149 = tail call i32 @llvm.umax.i32(i32 %147, i32 %148)
  store i32 %149, ptr %103, align 1
  %150 = add nuw nsw i32 %102, 1
  %151 = load i8, ptr %89, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp ult i32 %150, %152
  br i1 %153, label %101, label %154

154:                                              ; preds = %133, %96, %31, %28
  %155 = phi i32 [ -22, %28 ], [ -22, %31 ], [ 0, %96 ], [ 0, %133 ]
  ret i32 %155
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gsc_g_fmt_mplane(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = load i32, ptr %1, align 4
  switch i32 %3, label %6 [
    i32 10, label %8
    i32 9, label %4
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1
  br label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %3) #12
  br label %11

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %5, %4 ], [ %0, %2 ]
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %6
  %12 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %9, %8 ]
  %13 = ptrtoint ptr %12 to i32
  br label %53

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %9, align 4
  store i32 %16, ptr %15, align 1
  %17 = getelementptr inbounds %struct.gsc_frame, ptr %9, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  store i32 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %20, align 1
  %21 = getelementptr inbounds %struct.gsc_frame, ptr %9, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.gsc_fmt, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  store i32 %24, ptr %25, align 1
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr inbounds %struct.gsc_fmt, ptr %26, i32 0, i32 5
  %28 = load i16, ptr %27, align 4
  %29 = trunc i16 %28 to i8
  %30 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 6
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 15
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 4
  store i32 %32, ptr %33, align 1
  %34 = and i16 %28, 255
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %36, %14
  %37 = phi i32 [ %49, %36 ], [ 0, %14 ]
  %38 = load i32, ptr %9, align 4
  %39 = load ptr, ptr %21, align 4
  %40 = getelementptr %struct.gsc_fmt, ptr %39, i32 0, i32 7, i32 %37
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = mul i32 %38, %42
  %44 = lshr i32 %43, 3
  %45 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 %37
  %46 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 %37, i32 1
  store i32 %44, ptr %46, align 1
  %47 = load i32, ptr %17, align 4
  %48 = mul i32 %44, %47
  store i32 %48, ptr %45, align 1
  %49 = add nuw nsw i32 %37, 1
  %50 = load i8, ptr %30, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %36, label %53

53:                                               ; preds = %36, %14, %11
  %54 = phi i32 [ %13, %11 ], [ 0, %14 ], [ 0, %36 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_check_crop_change(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #4 {
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, %0
  %7 = load i32, ptr %3, align 4
  %8 = icmp eq i32 %7, %1
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %5, i32 noundef %7, i32 noundef %0, i32 noundef %1) #12
  store i32 %0, ptr %2, align 4
  store i32 %1, ptr %3, align 4
  br label %12

12:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gsc_try_selection(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gsc_dev, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %9 = getelementptr inbounds %struct.v4l2_selection, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.v4l2_selection, ptr %1, i32 0, i32 3, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %2
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %178

18:                                               ; preds = %13
  %19 = load i32, ptr %1, align 4
  switch i32 %19, label %178 [
    i32 1, label %52
    i32 2, label %20
  ]

20:                                               ; preds = %18
  %21 = load i32, ptr %0, align 4
  %22 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.v4l2_selection, ptr %1, i32 0, i32 3, i32 2
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %3, align 4
  %26 = getelementptr inbounds %struct.v4l2_selection, ptr %1, i32 0, i32 3, i32 3
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %4, align 4
  %28 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.gsc_fmt, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = and i32 %31, 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 64, i32 32
  br label %47

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.gsc_fmt, ptr %29, i32 0, i32 6
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, 1
  %42 = and i32 %31, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 64, i32 32
  %45 = select i1 %41, i32 32, i32 %44
  %46 = icmp eq i16 %40, 3
  br i1 %46, label %111, label %47

47:                                               ; preds = %38, %34
  %48 = phi i32 [ %45, %38 ], [ %37, %34 ]
  %49 = and i32 %31, 2
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i16 16, i16 32
  br label %111

52:                                               ; preds = %18
  %53 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.v4l2_selection, ptr %1, i32 0, i32 3, i32 2
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr %3, align 4
  %59 = getelementptr inbounds %struct.v4l2_selection, ptr %1, i32 0, i32 3, i32 3
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %4, align 4
  %61 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.gsc_fmt, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  %67 = and i32 %64, 6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.gsc_variant, ptr %8, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.gsc_pix_align, ptr %71, i32 0, i32 5
  %73 = load i16, ptr %72, align 2
  %74 = tail call i16 @llvm.cttz.i16(i16 %73, i1 true), !range !8
  %75 = zext i16 %74 to i32
  %76 = icmp eq i16 %73, 0
  %77 = select i1 %76, i32 -1, i32 %75
  br label %78

78:                                               ; preds = %69, %52
  %79 = phi i32 [ %77, %69 ], [ 0, %52 ]
  br i1 %66, label %89, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.gsc_variant, ptr %8, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.gsc_pix_align, ptr %82, i32 0, i32 6
  %84 = load i16, ptr %83, align 2
  %85 = tail call i16 @llvm.cttz.i16(i16 %84, i1 true), !range !8
  %86 = zext i16 %85 to i32
  %87 = icmp eq i16 %84, 0
  %88 = select i1 %87, i32 -1, i32 %86
  br label %89

89:                                               ; preds = %80, %78
  %90 = phi i32 [ %88, %80 ], [ 0, %78 ]
  %91 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.v4l2_ctrl, ptr %92, i32 0, i32 22
  %94 = load i32, ptr %93, align 4
  switch i32 %94, label %103 [
    i32 90, label %95
    i32 270, label %95
  ]

95:                                               ; preds = %89, %89
  %96 = getelementptr inbounds %struct.gsc_variant, ptr %8, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.gsc_pix_min, ptr %97, i32 0, i32 6
  %99 = load i16, ptr %98, align 2
  %100 = zext i16 %99 to i32
  %101 = getelementptr inbounds %struct.gsc_pix_min, ptr %97, i32 0, i32 7
  %102 = load i16, ptr %101, align 2
  store i32 %60, ptr %3, align 4
  store i32 %58, ptr %4, align 4
  br label %111

103:                                              ; preds = %89
  %104 = getelementptr inbounds %struct.gsc_variant, ptr %8, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.gsc_pix_min, ptr %105, i32 0, i32 4
  %107 = load i16, ptr %106, align 2
  %108 = zext i16 %107 to i32
  %109 = getelementptr inbounds %struct.gsc_pix_min, ptr %105, i32 0, i32 5
  %110 = load i16, ptr %109, align 2
  br label %111

111:                                              ; preds = %103, %95, %47, %38
  %112 = phi ptr [ %59, %95 ], [ %59, %103 ], [ %26, %38 ], [ %26, %47 ]
  %113 = phi ptr [ %57, %95 ], [ %57, %103 ], [ %24, %38 ], [ %24, %47 ]
  %114 = phi ptr [ %53, %95 ], [ %53, %103 ], [ %0, %38 ], [ %0, %47 ]
  %115 = phi i32 [ %100, %95 ], [ %108, %103 ], [ %45, %38 ], [ %48, %47 ]
  %116 = phi i16 [ %102, %95 ], [ %110, %103 ], [ 32, %38 ], [ %51, %47 ]
  %117 = phi i32 [ %56, %95 ], [ %54, %103 ], [ %21, %38 ], [ %21, %47 ]
  %118 = phi i32 [ %54, %95 ], [ %56, %103 ], [ %23, %38 ], [ %23, %47 ]
  %119 = phi i32 [ %90, %95 ], [ %90, %103 ], [ 0, %38 ], [ 0, %47 ]
  %120 = phi i32 [ %79, %95 ], [ %79, %103 ], [ 0, %38 ], [ 0, %47 ]
  %121 = zext i16 %116 to i32
  call void @v4l_bound_align_image(ptr noundef nonnull %3, i32 noundef %115, i32 noundef %117, i32 noundef %120, ptr noundef nonnull %4, i32 noundef %121, i32 noundef %118, i32 noundef %119, i32 noundef 0) #13
  %122 = load i32, ptr %1, align 4
  switch i32 %122, label %123 [
    i32 2, label %138
    i32 10, label %138
    i32 3, label %138
    i32 8, label %138
    i32 5, label %138
    i32 7, label %138
    i32 12, label %138
    i32 14, label %138
  ]

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.v4l2_ctrl, ptr %125, i32 0, i32 22
  %127 = load i32, ptr %126, align 4
  switch i32 %127, label %138 [
    i32 90, label %128
    i32 270, label %128
  ]

128:                                              ; preds = %123, %123
  %129 = load i32, ptr %4, align 4
  %130 = load i32, ptr %3, align 4
  %131 = load i32, ptr %113, align 4
  %132 = icmp eq i32 %131, %129
  %133 = load i32, ptr %112, align 4
  %134 = icmp eq i32 %133, %130
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %151, label %136

136:                                              ; preds = %128
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %131, i32 noundef %133, i32 noundef %129, i32 noundef %130) #12
  br label %148

138:                                              ; preds = %123, %111, %111, %111, %111, %111, %111, %111, %111
  %139 = load i32, ptr %3, align 4
  %140 = load i32, ptr %4, align 4
  %141 = load i32, ptr %113, align 4
  %142 = icmp eq i32 %141, %139
  %143 = load i32, ptr %112, align 4
  %144 = icmp eq i32 %143, %140
  %145 = select i1 %142, i1 %144, i1 false
  br i1 %145, label %151, label %146

146:                                              ; preds = %138
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %141, i32 noundef %143, i32 noundef %139, i32 noundef %140) #12
  br label %148

148:                                              ; preds = %146, %136
  %149 = phi i32 [ %139, %146 ], [ %129, %136 ]
  %150 = phi i32 [ %140, %146 ], [ %130, %136 ]
  store i32 %149, ptr %113, align 4
  store i32 %150, ptr %112, align 4
  br label %151

151:                                              ; preds = %148, %138, %128
  %152 = load i32, ptr %9, align 4
  %153 = load i32, ptr %3, align 4
  %154 = add i32 %153, %152
  %155 = icmp ugt i32 %154, %117
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = sub i32 %117, %153
  store i32 %157, ptr %9, align 4
  br label %158

158:                                              ; preds = %156, %151
  %159 = phi i32 [ %157, %156 ], [ %152, %151 ]
  %160 = load i32, ptr %10, align 4
  %161 = load i32, ptr %4, align 4
  %162 = add i32 %161, %160
  %163 = icmp ugt i32 %162, %118
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = sub i32 %118, %161
  store i32 %165, ptr %10, align 4
  br label %166

166:                                              ; preds = %164, %158
  %167 = getelementptr inbounds %struct.gsc_frame, ptr %114, i32 0, i32 5
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.gsc_fmt, ptr %168, i32 0, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = and i32 %170, 6
  %172 = icmp eq i32 %171, 0
  %173 = and i32 %159, 1
  %174 = icmp eq i32 %173, 0
  %175 = select i1 %172, i1 true, i1 %174
  br i1 %175, label %178, label %176

176:                                              ; preds = %166
  %177 = add i32 %159, -1
  store i32 %177, ptr %9, align 4
  br label %178

178:                                              ; preds = %176, %166, %18, %16
  %179 = phi i32 [ -22, %16 ], [ -22, %18 ], [ 0, %166 ], [ 0, %176 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %179
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @gsc_check_scaler_ratio(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #8 {
  %8 = icmp eq i32 %6, 2
  %9 = getelementptr inbounds %struct.gsc_variant, ptr %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.gsc_variant, ptr %0, i32 0, i32 9
  %11 = select i1 %8, ptr %9, ptr %10
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %5, 90
  %15 = icmp eq i32 %5, 270
  %16 = or i1 %14, %15
  %17 = select i1 %16, i32 %4, i32 %3
  %18 = select i1 %16, i32 %3, i32 %4
  %19 = sdiv i32 %1, %17
  %20 = icmp sgt i32 %19, %13
  br i1 %20, label %34, label %21

21:                                               ; preds = %7
  %22 = sdiv i32 %2, %18
  %23 = icmp sgt i32 %22, %13
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = sdiv i32 %17, %1
  %26 = getelementptr inbounds %struct.gsc_variant, ptr %0, i32 0, i32 5
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = sdiv i32 %18, %2
  %32 = icmp sgt i32 %31, %28
  %33 = select i1 %32, i32 -22, i32 0
  br label %34

34:                                               ; preds = %30, %24, %21, %7
  %35 = phi i32 [ -22, %24 ], [ -22, %21 ], [ -22, %7 ], [ %33, %30 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gsc_set_scaler_info(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 2, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gsc_frame, ptr %0, i32 0, i32 2, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 2, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 1, i32 2, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 22
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  %25 = getelementptr inbounds %struct.gsc_variant, ptr %6, i32 0, i32 6
  %26 = getelementptr inbounds %struct.gsc_variant, ptr %6, i32 0, i32 9
  %27 = select i1 %24, ptr %25, ptr %26
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp eq i32 %21, 90
  %31 = icmp eq i32 %21, 270
  %32 = or i1 %30, %31
  %33 = select i1 %32, i32 %17, i32 %15
  %34 = select i1 %32, i32 %15, i32 %17
  %35 = sdiv i32 %11, %33
  %36 = icmp sgt i32 %35, %29
  br i1 %36, label %49, label %37

37:                                               ; preds = %1
  %38 = sdiv i32 %13, %34
  %39 = icmp sgt i32 %38, %29
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = sdiv i32 %33, %11
  %42 = getelementptr inbounds %struct.gsc_variant, ptr %6, i32 0, i32 5
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = sdiv i32 %34, %13
  %48 = icmp sgt i32 %47, %44
  br i1 %48, label %49, label %51

49:                                               ; preds = %46, %40, %37, %1
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %140

51:                                               ; preds = %46
  switch i32 %21, label %52 [
    i32 90, label %53
    i32 270, label %53
  ]

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %51, %51
  %54 = phi i32 [ %15, %52 ], [ %17, %51 ], [ %17, %51 ]
  %55 = phi i32 [ %17, %52 ], [ %15, %51 ], [ %15, %51 ]
  %56 = icmp slt i32 %54, 1
  %57 = icmp slt i32 %55, 1
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef %54, i32 noundef %55) #12
  br label %140

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 4, i32 1
  %62 = icmp ugt i32 %54, %11
  br i1 %62, label %82, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.gsc_variant, ptr %6, i32 0, i32 7
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = udiv i32 %11, %66
  %68 = icmp ugt i32 %67, %54
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.gsc_variant, ptr %6, i32 0, i32 8
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  %73 = udiv i32 %67, %72
  %74 = icmp ugt i32 %73, %54
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = lshr i32 %11, 3
  %77 = icmp ult i32 %76, %54
  %78 = select i1 %77, i32 2, i32 4
  br label %82

79:                                               ; preds = %69
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %140

82:                                               ; preds = %75, %63, %60
  %83 = phi i32 [ %78, %75 ], [ 1, %63 ], [ 1, %60 ]
  store i32 %83, ptr %61, align 4
  %84 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 4, i32 2
  %85 = icmp ugt i32 %55, %13
  br i1 %85, label %105, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.gsc_variant, ptr %6, i32 0, i32 7
  %88 = load i16, ptr %87, align 4
  %89 = zext i16 %88 to i32
  %90 = udiv i32 %13, %89
  %91 = icmp ugt i32 %90, %55
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.gsc_variant, ptr %6, i32 0, i32 8
  %94 = load i16, ptr %93, align 2
  %95 = zext i16 %94 to i32
  %96 = udiv i32 %90, %95
  %97 = icmp ugt i32 %96, %55
  br i1 %97, label %102, label %98

98:                                               ; preds = %92
  %99 = lshr i32 %13, 3
  %100 = icmp ult i32 %99, %55
  %101 = select i1 %100, i32 2, i32 4
  br label %105

102:                                              ; preds = %92
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %140

105:                                              ; preds = %98, %86, %82
  %106 = phi i32 [ %101, %98 ], [ 1, %86 ], [ 1, %82 ]
  store i32 %106, ptr %84, align 4
  tail call void @gsc_check_src_scale_info(ptr noundef %6, ptr noundef %0, ptr noundef %61, i32 noundef %54, i32 noundef %55, ptr noundef %84)
  %107 = load i32, ptr %61, align 4
  %108 = load i32, ptr %84, align 4
  %109 = icmp eq i32 %107, 4
  %110 = icmp eq i32 %108, 4
  %111 = and i1 %109, %110
  br i1 %111, label %130, label %112

112:                                              ; preds = %105
  %113 = icmp eq i32 %108, 2
  %114 = and i1 %109, %113
  br i1 %114, label %130, label %115

115:                                              ; preds = %112
  %116 = icmp eq i32 %107, 2
  %117 = and i1 %116, %110
  br i1 %117, label %130, label %118

118:                                              ; preds = %115
  %119 = icmp eq i32 %108, 1
  %120 = and i1 %109, %119
  br i1 %120, label %130, label %121

121:                                              ; preds = %118
  %122 = icmp eq i32 %107, 1
  %123 = and i1 %122, %110
  %124 = and i1 %116, %113
  %125 = or i1 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %121
  %127 = and i1 %122, %119
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  br label %130

130:                                              ; preds = %126, %121, %118, %115, %112, %105
  %131 = phi i32 [ 4, %105 ], [ 3, %115 ], [ 3, %112 ], [ 2, %121 ], [ 2, %118 ], [ %129, %126 ]
  store i32 %131, ptr %2, align 4
  %132 = load i32, ptr %10, align 4
  %133 = shl i32 %132, 16
  %134 = udiv i32 %133, %54
  %135 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 4, i32 3
  store i32 %134, ptr %135, align 4
  %136 = load i32, ptr %12, align 4
  %137 = shl i32 %136, 16
  %138 = udiv i32 %137, %55
  %139 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 4, i32 4
  store i32 %138, ptr %139, align 4
  br label %140

140:                                              ; preds = %130, %102, %79, %59, %49
  %141 = phi i32 [ -22, %49 ], [ -22, %59 ], [ -22, %79 ], [ -22, %102 ], [ 0, %130 ]
  ret i32 %141
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gsc_ctrls_create(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 14
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 12
  %7 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %6, i32 noundef 10, ptr noundef null, ptr noundef null) #13
  %8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %6, ptr noundef nonnull @gsc_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #13
  %9 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13
  store ptr %8, ptr %9, align 4
  %10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %6, ptr noundef nonnull @gsc_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #13
  %11 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13, i32 1
  store ptr %10, ptr %11, align 4
  %12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %6, ptr noundef nonnull @gsc_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #13
  %13 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13, i32 2
  store ptr %12, ptr %13, align 4
  %14 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %6, ptr noundef nonnull @gsc_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 0) #13
  %15 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 13, i32 3
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 12, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i8
  store i8 %19, ptr %2, align 4
  br i1 %18, label %25, label %20

20:                                               ; preds = %5
  tail call void @v4l2_ctrl_handler_free(ptr noundef %6) #13
  br label %21

21:                                               ; preds = %20, %1
  %22 = phi ptr [ @.str.11, %20 ], [ @.str.10, %1 ]
  %23 = phi i32 [ %17, %20 ], [ 0, %1 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %22) #12
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i32 [ 0, %5 ], [ %23, %21 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gsc_ctrls_delete(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 14
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gsc_ctx, ptr %0, i32 0, i32 12
  tail call void @v4l2_ctrl_handler_free(ptr noundef %6) #13
  store i8 0, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gsc_prepare_addr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef readonly %2, ptr nocapture noundef %3) local_unnamed_addr #4 {
  %5 = icmp eq ptr %1, null
  %6 = icmp eq ptr %2, null
  %7 = or i1 %5, %6
  br i1 %7, label %65, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %2, align 4
  %10 = getelementptr inbounds %struct.gsc_frame, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %9
  %13 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %1, i32 noundef 0) #13
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %3, align 4
  %15 = getelementptr inbounds %struct.gsc_frame, ptr %2, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.gsc_fmt, ptr %16, i32 0, i32 5
  %18 = load i16, ptr %17, align 4
  switch i16 %18, label %42 [
    i16 1, label %19
    i16 0, label %56
  ]

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.gsc_fmt, ptr %16, i32 0, i32 6
  %21 = load i16, ptr %20, align 2
  switch i16 %21, label %40 [
    i16 1, label %22
    i16 2, label %24
    i16 3, label %27
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gsc_addr, ptr %3, i32 0, i32 1
  store i32 0, ptr %23, align 4
  br label %53

24:                                               ; preds = %19
  %25 = add i32 %14, %12
  %26 = getelementptr inbounds %struct.gsc_addr, ptr %3, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  br label %53

27:                                               ; preds = %19
  %28 = add i32 %14, %12
  %29 = getelementptr inbounds %struct.gsc_addr, ptr %3, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr inbounds %struct.gsc_fmt, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = lshr i32 %12, 2
  %36 = add i32 %28, %35
  br label %53

37:                                               ; preds = %27
  %38 = lshr i32 %12, 1
  %39 = add i32 %28, %38
  br label %53

40:                                               ; preds = %19
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %65

42:                                               ; preds = %8
  %43 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %1, i32 noundef 1) #13
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.gsc_addr, ptr %3, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  %46 = load ptr, ptr %15, align 4
  %47 = getelementptr inbounds %struct.gsc_fmt, ptr %46, i32 0, i32 5
  %48 = load i16, ptr %47, align 4
  %49 = icmp eq i16 %48, 3
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %1, i32 noundef 2) #13
  %52 = load i32, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %37, %34, %24, %22
  %54 = phi i32 [ %52, %50 ], [ 0, %22 ], [ 0, %24 ], [ %39, %37 ], [ %36, %34 ]
  %55 = getelementptr inbounds %struct.gsc_addr, ptr %3, i32 0, i32 2
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %53, %42, %8
  %57 = load ptr, ptr %15, align 4
  %58 = getelementptr inbounds %struct.gsc_fmt, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  switch i32 %59, label %65 [
    i32 1498765654, label %60
    i32 1431918169, label %60
    i32 842094169, label %60
    i32 825380185, label %60
  ]

60:                                               ; preds = %56, %56, %56, %56
  %61 = getelementptr inbounds %struct.gsc_addr, ptr %3, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.gsc_addr, ptr %3, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %61, align 4
  store i32 %62, ptr %63, align 4
  br label %65

65:                                               ; preds = %60, %56, %40, %4
  %66 = phi i32 [ -22, %40 ], [ -22, %4 ], [ 0, %56 ], [ 0, %60 ]
  ret i32 %66
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #9 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gsc_driver, ptr noundef nonnull @__this_module) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #9 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gsc_driver) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_s_ctrl(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -88
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #13
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.gsc_dev, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %94

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  switch i32 %16, label %90 [
    i32 9963796, label %17
    i32 9963797, label %26
    i32 9963810, label %36
    i32 9963817, label %85
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %3, i32 -92
  %21 = trunc i32 %19 to i8
  %22 = load i8, ptr %20, align 4
  %23 = and i8 %21, 1
  %24 = and i8 %22, -2
  %25 = or i8 %24, %23
  store i8 %25, ptr %20, align 4
  br label %90

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %3, i32 -92
  %30 = trunc i32 %28 to i8
  %31 = load i8, ptr %29, align 4
  %32 = shl i8 %30, 1
  %33 = and i8 %32, 2
  %34 = and i8 %31, -3
  %35 = or i8 %33, %34
  store i8 %35, ptr %29, align 4
  br label %90

36:                                               ; preds = %14
  %37 = getelementptr i8, ptr %3, i32 -100
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 6
  %40 = icmp eq i32 %39, 6
  br i1 %40, label %41, label %81

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %3, i32 -276
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %3, i32 -272
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %3, i32 -196
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %3, i32 -192
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %3, i32 112
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.v4l2_ctrl, ptr %51, i32 0, i32 22
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr i8, ptr %3, i32 -128
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 2
  %57 = getelementptr inbounds %struct.gsc_variant, ptr %9, i32 0, i32 6
  %58 = getelementptr inbounds %struct.gsc_variant, ptr %9, i32 0, i32 9
  %59 = select i1 %56, ptr %57, ptr %58
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp eq i32 %53, 90
  %63 = icmp eq i32 %53, 270
  %64 = or i1 %62, %63
  %65 = select i1 %64, i32 %49, i32 %47
  %66 = select i1 %64, i32 %47, i32 %49
  %67 = sdiv i32 %43, %65
  %68 = icmp sgt i32 %67, %61
  br i1 %68, label %94, label %69

69:                                               ; preds = %41
  %70 = sdiv i32 %45, %66
  %71 = icmp sgt i32 %70, %61
  br i1 %71, label %94, label %72

72:                                               ; preds = %69
  %73 = sdiv i32 %65, %43
  %74 = getelementptr inbounds %struct.gsc_variant, ptr %9, i32 0, i32 5
  %75 = load i16, ptr %74, align 4
  %76 = zext i16 %75 to i32
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %94, label %78

78:                                               ; preds = %72
  %79 = sdiv i32 %66, %45
  %80 = icmp sgt i32 %79, %76
  br i1 %80, label %94, label %81

81:                                               ; preds = %78, %36
  %82 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr i8, ptr %3, i32 -96
  store i32 %83, ptr %84, align 4
  br label %90

85:                                               ; preds = %14
  %86 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %87 = load i32, ptr %86, align 4
  %88 = trunc i32 %87 to i8
  %89 = getelementptr i8, ptr %3, i32 -136
  store i8 %88, ptr %89, align 4
  br label %90

90:                                               ; preds = %85, %81, %26, %17, %14
  %91 = getelementptr i8, ptr %3, i32 -100
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 1
  store i32 %93, ptr %91, align 4
  br label %94

94:                                               ; preds = %90, %78, %72, %69, %41, %1
  %95 = phi i32 [ 0, %90 ], [ 0, %1 ], [ -22, %72 ], [ -22, %69 ], [ -22, %41 ], [ -22, %78 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %6) #13
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_probe(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #13
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1040, i32 noundef 3520) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %116, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @of_alias_get_id(ptr noundef %8, ptr noundef nonnull @.str.21) #13
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %116, label %11

11:                                               ; preds = %6
  %12 = icmp eq ptr %3, @gsc_v_100_drvdata
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.22) #12
  br label %14

14:                                               ; preds = %13, %11
  %15 = trunc i32 %9 to i16
  %16 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 4
  store i16 %15, ptr %16, align 8
  %17 = and i32 %9, 65535
  %18 = getelementptr inbounds %struct.gsc_driverdata, ptr %3, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %17) #12
  br label %116

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.gsc_driverdata, ptr %3, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 5
  store i32 %24, ptr %25, align 4
  %26 = getelementptr [4 x ptr], ptr %3, i32 0, i32 %17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 3
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 2
  store ptr %0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %30, ptr noundef nonnull @.str.24, ptr noundef nonnull @gsc_probe.__key) #13
  store i32 0, ptr %4, align 8
  %31 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %31, ptr noundef nonnull @.str.26, ptr noundef nonnull @gsc_probe.__key.25) #13
  %32 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #13
  %33 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 7
  store ptr %32, ptr %33, align 8
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = ptrtoint ptr %32 to i32
  br label %116

37:                                               ; preds = %22
  %38 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef 0) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %25, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %50, label %86

43:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.27) #12
  br label %116

44:                                               ; preds = %50
  %45 = add nuw nsw i32 %51, 1
  %46 = load i32, ptr %25, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %61, label %86

50:                                               ; preds = %44, %40
  %51 = phi i32 [ %45, %44 ], [ 0, %40 ]
  %52 = getelementptr %struct.gsc_driverdata, ptr %3, i32 0, i32 1, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %53) #13
  %55 = getelementptr %struct.gsc_dev, ptr %4, i32 0, i32 6, i32 %51
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %44

57:                                               ; preds = %50
  %58 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef %58) #12
  %59 = load ptr, ptr %55, align 4
  %60 = ptrtoint ptr %59 to i32
  br label %116

61:                                               ; preds = %82, %48
  %62 = phi i32 [ %83, %82 ], [ 0, %48 ]
  %63 = getelementptr %struct.gsc_dev, ptr %4, i32 0, i32 6, i32 %62
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 @clk_prepare(ptr noundef %64) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = tail call i32 @clk_enable(ptr noundef %64) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %67
  tail call void @clk_unprepare(ptr noundef %64) #13
  br label %71

71:                                               ; preds = %70, %61
  %72 = phi i32 [ %68, %70 ], [ %65, %61 ]
  %73 = getelementptr %struct.gsc_driverdata, ptr %3, i32 0, i32 1, i32 %62
  %74 = load ptr, ptr %73, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.29, ptr noundef %74) #12
  %75 = icmp eq i32 %62, 0
  br i1 %75, label %116, label %76

76:                                               ; preds = %76, %71
  %77 = phi i32 [ %78, %76 ], [ %62, %71 ]
  %78 = add nsw i32 %77, -1
  %79 = getelementptr %struct.gsc_dev, ptr %4, i32 0, i32 6, i32 %78
  %80 = load ptr, ptr %79, align 4
  tail call void @clk_disable(ptr noundef %80) #13
  tail call void @clk_unprepare(ptr noundef %80) #13
  %81 = icmp sgt i32 %77, 1
  br i1 %81, label %76, label %116

82:                                               ; preds = %67
  %83 = add nuw nsw i32 %62, 1
  %84 = load i32, ptr %25, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %61, label %86

86:                                               ; preds = %82, %48, %40
  %87 = load i32, ptr %38, align 4
  %88 = load ptr, ptr %0, align 8
  %89 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %87, ptr noundef nonnull @gsc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %88, ptr noundef nonnull %4) #13
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef %89) #12
  br label %105

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 12
  %94 = tail call i32 @v4l2_device_register(ptr noundef %2, ptr noundef %93) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = tail call i32 @gsc_register_m2m_device(ptr noundef nonnull %4) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %100, align 8
  tail call void @gsc_hw_set_sw_reset(ptr noundef nonnull %4) #13
  %101 = tail call i32 @gsc_wait_reset(ptr noundef nonnull %4) #13
  %102 = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %2, i32 noundef -1) #13
  %103 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #13
  tail call void @pm_runtime_enable(ptr noundef %2) #13
  br label %116

104:                                              ; preds = %96
  tail call void @v4l2_device_unregister(ptr noundef %93) #13
  br label %105

105:                                              ; preds = %104, %92, %91
  %106 = phi i32 [ %89, %91 ], [ %94, %92 ], [ %97, %104 ]
  %107 = load i32, ptr %25, align 4
  %108 = add i32 %107, -1
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %110, label %116

110:                                              ; preds = %110, %105
  %111 = phi i32 [ %114, %110 ], [ %108, %105 ]
  %112 = getelementptr %struct.gsc_dev, ptr %4, i32 0, i32 6, i32 %111
  %113 = load ptr, ptr %112, align 4
  tail call void @clk_disable(ptr noundef %113) #13
  tail call void @clk_unprepare(ptr noundef %113) #13
  %114 = add nsw i32 %111, -1
  %115 = icmp sgt i32 %111, 0
  br i1 %115, label %110, label %116

116:                                              ; preds = %110, %105, %99, %76, %71, %57, %43, %35, %21, %6, %1
  %117 = phi i32 [ -22, %21 ], [ %36, %35 ], [ %60, %57 ], [ 0, %99 ], [ -6, %43 ], [ -12, %1 ], [ %9, %6 ], [ %72, %71 ], [ %106, %105 ], [ %106, %110 ], [ %72, %76 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_remove(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @gsc_unregister_m2m_device(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 12
  tail call void @v4l2_device_unregister(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #13
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %13, %9
  %14 = phi i32 [ %17, %13 ], [ 0, %9 ]
  %15 = getelementptr %struct.gsc_dev, ptr %3, i32 0, i32 6, i32 %14
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #13
  tail call void @clk_unprepare(ptr noundef %16) #13
  %17 = add nuw nsw i32 %14, 1
  %18 = load i32, ptr %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %13, label %20

20:                                               ; preds = %13, %9, %1
  %21 = tail call i32 @__pm_runtime_set_status(ptr noundef %5, i32 noundef 2) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_irq_handler(i32 noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #13, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !11
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #13, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !12
  %10 = and i32 %6, 131072
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 65536, i32 131072
  %13 = or i32 %12, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !13
  tail call void @arm_heavy_mb() #13
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #13, !srcloc !14
  br i1 %11, label %18, label %16

16:                                               ; preds = %2
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  br label %53

18:                                               ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef %1) #13
  %19 = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 10
  %20 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %19) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %3, align 8
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #13, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !15
  %25 = and i32 %24, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !16
  tail call void @arm_heavy_mb() #13
  %26 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #13, !srcloc !14
  %27 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %19) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  tail call void @_set_bit(i32 noundef 3, ptr noundef %19) #13
  %30 = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %30, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %50

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 9, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %33) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.gsc_ctx, ptr %34, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %41 = load i16, ptr %1, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  tail call void @gsc_m2m_job_finish(ptr noundef nonnull %34, i32 noundef 5) #13
  %43 = getelementptr inbounds %struct.gsc_ctx, ptr %34, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = and i32 %44, -65
  store i32 %48, ptr %43, align 4
  %49 = getelementptr inbounds %struct.gsc_dev, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %49, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %53

50:                                               ; preds = %36, %31, %29, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %51 = load i16, ptr %1, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  br label %53

53:                                               ; preds = %50, %47, %40, %16
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_register_m2m_device(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_hw_set_sw_reset(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsc_wait_reset(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_m2m_job_finish(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsc_unregister_m2m_device(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_runtime_suspend(ptr nocapture noundef readonly %0) #4 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #13
  %6 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 10
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  br label %40

11:                                               ; preds = %1
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %6) #13
  tail call void @_set_bit(i32 noundef 4, ptr noundef %6) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #13
  %12 = load volatile i32, ptr %6, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %6) #13
  br label %40

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #13, !annotation !21
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #13
  %17 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 8
  %18 = call i32 @prepare_to_wait_event(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 2) #13
  %19 = load volatile i32, ptr %6, align 4
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %22, %16
  %23 = phi i32 [ %32, %22 ], [ 10, %16 ]
  %24 = call i32 @schedule_timeout(i32 noundef %23) #13
  %25 = call i32 @prepare_to_wait_event(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 2) #13
  %26 = load volatile i32, ptr %6, align 4
  %27 = and i32 %26, 8
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = icmp ne i32 %24, 0
  %31 = select i1 %29, i1 true, i1 %30
  %32 = select i1 %31, i32 %24, i32 1
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %28, i1 true, i1 %33
  br i1 %34, label %35, label %22

35:                                               ; preds = %22
  %36 = select i1 %33, i32 -11, i32 0
  br label %37

37:                                               ; preds = %35, %16
  %38 = phi i32 [ 0, %16 ], [ %36, %35 ]
  call void @finish_wait(ptr noundef %17, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  call void @_clear_bit(i32 noundef 4, ptr noundef %6) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37, %15, %10
  %41 = getelementptr inbounds %struct.gsc_dev, ptr %4, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -1
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %51

45:                                               ; preds = %45, %40
  %46 = phi i32 [ %49, %45 ], [ %43, %40 ]
  %47 = getelementptr %struct.gsc_dev, ptr %4, i32 0, i32 6, i32 %46
  %48 = load ptr, ptr %47, align 4
  call void @clk_disable(ptr noundef %48) #13
  call void @clk_unprepare(ptr noundef %48) #13
  %49 = add nsw i32 %46, -1
  %50 = icmp sgt i32 %46, 0
  br i1 %50, label %45, label %51

51:                                               ; preds = %45, %40, %37
  %52 = phi i32 [ %38, %37 ], [ 0, %40 ], [ 0, %45 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gsc_runtime_resume(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %26, %1
  %8 = phi i32 [ %27, %26 ], [ 0, %1 ]
  %9 = getelementptr %struct.gsc_dev, ptr %3, i32 0, i32 6, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = tail call i32 @clk_enable(ptr noundef %10) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #13
  br label %17

17:                                               ; preds = %16, %7
  %18 = phi i32 [ %14, %16 ], [ %11, %7 ]
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %22, %20 ], [ %8, %17 ]
  %22 = add nsw i32 %21, -1
  %23 = getelementptr %struct.gsc_dev, ptr %3, i32 0, i32 6, i32 %22
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #13
  tail call void @clk_unprepare(ptr noundef %24) #13
  %25 = icmp sgt i32 %21, 1
  br i1 %25, label %20, label %39

26:                                               ; preds = %13
  %27 = add nuw nsw i32 %8, 1
  %28 = load i32, ptr %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %7, label %30

30:                                               ; preds = %26, %1
  tail call void @gsc_hw_set_sw_reset(ptr noundef %3) #13
  %31 = tail call i32 @gsc_wait_reset(ptr noundef %3) #13
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %33 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 9, i32 2
  %34 = load ptr, ptr %33, align 8
  store ptr null, ptr %33, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %32) #13
  %35 = getelementptr inbounds %struct.gsc_dev, ptr %3, i32 0, i32 10
  %36 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %35) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  tail call void @gsc_m2m_job_finish(ptr noundef %34, i32 noundef 6) #13
  br label %39

39:                                               ; preds = %38, %30, %20, %17
  %40 = phi i32 [ 0, %30 ], [ 0, %38 ], [ %18, %17 ], [ %18, %20 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }

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
!8 = !{i16 0, i16 17}
!9 = !{i8 0, i8 2}
!10 = !{i64 3488897}
!11 = !{i64 2155101684}
!12 = !{i64 2155102199}
!13 = !{i64 2155102408}
!14 = !{i64 3488479}
!15 = !{i64 2155100844}
!16 = !{i64 2155101051}
!17 = !{i64 2148956239}
!18 = !{i64 2148952063}
!19 = !{i64 2148952138, i64 2148952165, i64 2148952212, i64 2148952234, i64 2148952262, i64 2148952282}
!20 = !{i64 2148979242}
!21 = !{!"auto-init"}
