; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/fimc-core.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fimc_fmt = type { i32, i32, i32, i16, i16, i8, [3 x i8], i16, i16 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.fimc_drvdata = type { [4 x ptr], i32, i32, i8, i8, i8, i8 }
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
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_format = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.78, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.78 = type { i8 }
%struct.fimc_variant = type { i8, ptr, i16, i16, i16, i16 }
%struct.fimc_pix_limit = type { i16, i16, i16, i16, i16, i16 }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@fimc_formats = internal global [20 x %struct.fimc_fmt] [%struct.fimc_fmt { i32 0, i32 1346520914, i32 18, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 1213351746, i32 19, i16 1, i16 1, i8 0, [3 x i8] c" \00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 877807426, i32 20, i16 1, i16 1, i8 0, [3 x i8] c" \00\00", i16 0, i16 14 }, %struct.fimc_fmt { i32 0, i32 1329743698, i32 17, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 12 }, %struct.fimc_fmt { i32 0, i32 875836498, i32 16, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 12 }, %struct.fimc_fmt { i32 8214, i32 0, i32 0, i16 0, i16 0, i8 0, [3 x i8] zeroinitializer, i16 0, i16 32 }, %struct.fimc_fmt { i32 8200, i32 1448695129, i32 33, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 7 }, %struct.fimc_fmt { i32 8198, i32 1498831189, i32 35, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 7 }, %struct.fimc_fmt { i32 8199, i32 1498765654, i32 36, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 7 }, %struct.fimc_fmt { i32 8201, i32 1431918169, i32 34, i16 1, i16 1, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 7 }, %struct.fimc_fmt { i32 0, i32 1345466932, i32 33, i16 1, i16 3, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 909203022, i32 33, i16 1, i16 2, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 825644622, i32 34, i16 1, i16 2, i8 0, [3 x i8] c"\10\00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 842093913, i32 32, i16 1, i16 3, i8 0, [3 x i8] c"\0C\00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 842094158, i32 32, i16 1, i16 2, i8 0, [3 x i8] c"\0C\00\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 842091854, i32 32, i16 2, i16 2, i8 0, [3 x i8] c"\08\04\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 842091865, i32 32, i16 3, i16 3, i8 0, [3 x i8] c"\08\02\02", i16 0, i16 6 }, %struct.fimc_fmt { i32 0, i32 842091860, i32 32, i16 2, i16 2, i8 0, [3 x i8] c"\08\04\00", i16 0, i16 6 }, %struct.fimc_fmt { i32 16385, i32 1195724874, i32 128, i16 1, i16 1, i8 0, [3 x i8] c"\08\00\00", i16 0, i16 17 }, %struct.fimc_fmt { i32 20481, i32 1229141331, i32 256, i16 2, i16 1, i8 0, [3 x i8] c"\08\00\00", i16 2, i16 17 }], align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid target size: %dx%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid source size: %dx%d\0A\00", align 1
@fimc_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @fimc_s_ctrl }, align 4
@fimc_driver = internal global %struct.platform_driver { ptr @fimc_probe, ptr @fimc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fimc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.2 = private unnamed_addr constant [13 x i8] c"exynos4-fimc\00", align 1
@fimc_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-fimc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fimc_drvdata_s5pv210 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-fimc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fimc_drvdata_exynos4210 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4212-fimc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fimc_drvdata_exynos4x12 }, %struct.of_device_id zeroinitializer], align 4
@fimc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @fimc_suspend, ptr @fimc_resume, ptr @fimc_suspend, ptr @fimc_resume, ptr @fimc_suspend, ptr @fimc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fimc_runtime_suspend, ptr @fimc_runtime_resume, ptr null }, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Invalid driver data or device id (%d)\0A\00", align 1
@fimc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"&fimc->irq_queue\00", align 1
@fimc_probe.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"&fimc->lock\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to get IRQ resource\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to install irq (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"samsung,lcd-wb\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"samsung,pix-limits\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"samsung,min-pix-sizes\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"samsung,min-pix-alignment\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"samsung,rotators\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"samsung,mainscaler-ext\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"samsung,isp-wb\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"samsung,cam-if\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"fimc\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"samsung,sysreg\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"failed to get clock: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sclk_fimc\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"driver unloaded\0A\00", align 1
@fimc_drvdata_s5pv210 = internal constant %struct.fimc_drvdata { [4 x ptr] zeroinitializer, i32 3, i32 166000000, i8 0, i8 1, i8 0, i8 4 }, align 4
@fimc_drvdata_exynos4210 = internal constant %struct.fimc_drvdata { [4 x ptr] zeroinitializer, i32 4, i32 166000000, i8 1, i8 1, i8 1, i8 32 }, align 4
@fimc_drvdata_exynos4x12 = internal constant %struct.fimc_drvdata { [4 x ptr] zeroinitializer, i32 4, i32 166000000, i8 1, i8 1, i8 1, i8 32 }, align 4
@switch.table.fimc_set_yuv_order = private unnamed_addr constant [3 x i32] [i32 16, i32 32, i32 0], align 4
@switch.table.fimc_alpha_ctrl_update = private unnamed_addr constant [5 x i32] [i32 15, i32 1, i32 0, i32 0, i32 255], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @fimc_get_format(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 19
  %3 = getelementptr [20 x %struct.fimc_fmt], ptr @fimc_formats, i32 0, i32 %0
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @fimc_check_scaler_ratio(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  switch i32 %5, label %8 [
    i32 270, label %7
    i32 90, label %7
  ]

7:                                                ; preds = %6, %6
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i32 [ %3, %7 ], [ %4, %6 ]
  %10 = phi i32 [ %4, %7 ], [ %3, %6 ]
  %11 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = icmp eq i32 %10, %1
  %17 = icmp eq i32 %9, %2
  %18 = and i1 %17, %16
  br label %25

19:                                               ; preds = %8
  %20 = shl i32 %10, 6
  %21 = icmp sgt i32 %20, %1
  %22 = shl i32 %9, 6
  %23 = icmp sgt i32 %22, %2
  %24 = and i1 %23, %21
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi i1 [ %24, %19 ], [ %18, %15 ]
  %27 = select i1 %26, i32 0, i32 -22
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_set_scaler_info(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8
  %10 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %15 [
    i32 90, label %12
    i32 270, label %12
  ]

12:                                               ; preds = %1, %1
  %13 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 6
  %14 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 7
  br label %18

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 6
  %17 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 7
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi ptr [ %14, %12 ], [ %16, %15 ]
  %20 = phi ptr [ %13, %12 ], [ %17, %15 ]
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %19, align 4
  %23 = icmp slt i32 %22, 1
  %24 = icmp slt i32 %21, 1
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %22, i32 noundef %21) #13
  br label %140

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %29, 1
  %33 = icmp slt i32 %31, 1
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef %29, i32 noundef %31) #13
  br label %140

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 9
  store i32 %29, ptr %37, align 4
  %38 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 10
  store i32 %31, ptr %38, align 4
  %39 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 3
  %40 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 1
  %41 = shl i32 %22, 6
  %42 = icmp ugt i32 %41, %29
  br i1 %42, label %43, label %140

43:                                               ; preds = %36
  %44 = shl i32 %22, 5
  %45 = icmp ugt i32 %44, %29
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = shl i32 %22, 4
  %48 = icmp ugt i32 %47, %29
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = shl i32 %22, 3
  %51 = icmp ugt i32 %50, %29
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = shl i32 %22, 2
  %54 = icmp ugt i32 %53, %29
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = shl nuw i32 %22, 1
  %57 = icmp ugt i32 %56, %29
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = icmp ugt i32 %22, %29
  br i1 %59, label %63, label %60

60:                                               ; preds = %58, %55, %52, %49, %46, %43
  %61 = phi i32 [ 5, %43 ], [ 4, %46 ], [ 3, %49 ], [ 2, %52 ], [ 1, %55 ], [ 0, %58 ]
  %62 = shl nuw nsw i32 1, %61
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %61, %60 ], [ 0, %58 ]
  %65 = phi i32 [ %62, %60 ], [ 1, %58 ]
  store i32 %64, ptr %40, align 4
  store i32 %65, ptr %39, align 4
  %66 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 4
  %67 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 2
  %68 = shl i32 %21, 6
  %69 = icmp ugt i32 %68, %31
  br i1 %69, label %70, label %140

70:                                               ; preds = %63
  %71 = shl i32 %21, 5
  %72 = icmp ugt i32 %71, %31
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = shl i32 %21, 4
  %75 = icmp ugt i32 %74, %31
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = shl i32 %21, 3
  %78 = icmp ugt i32 %77, %31
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = shl i32 %21, 2
  %81 = icmp ugt i32 %80, %31
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = shl nuw i32 %21, 1
  %84 = icmp ugt i32 %83, %31
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = icmp ugt i32 %21, %31
  br i1 %86, label %90, label %87

87:                                               ; preds = %85, %82, %79, %76, %73, %70
  %88 = phi i32 [ 5, %70 ], [ 4, %73 ], [ 3, %76 ], [ 2, %79 ], [ 1, %82 ], [ 0, %85 ]
  %89 = shl nuw nsw i32 1, %88
  br label %90

90:                                               ; preds = %87, %85
  %91 = phi i32 [ %88, %87 ], [ 0, %85 ]
  %92 = phi i32 [ %89, %87 ], [ 1, %85 ]
  store i32 %91, ptr %67, align 4
  store i32 %92, ptr %66, align 4
  %93 = udiv i32 %29, %65
  %94 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 5
  store i32 %93, ptr %94, align 4
  %95 = udiv i32 %31, %92
  %96 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 6
  store i32 %95, ptr %96, align 4
  %97 = load i8, ptr %5, align 4
  %98 = and i8 %97, 4
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, i32 8, i32 14
  %101 = shl i32 %29, %100
  %102 = shl i32 %22, %64
  %103 = sdiv i32 %101, %102
  %104 = shl i32 %31, %100
  %105 = shl i32 %21, %91
  %106 = sdiv i32 %104, %105
  %107 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 7
  store i32 %103, ptr %107, align 4
  %108 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 8, i32 8
  store i32 %106, ptr %108, align 4
  %109 = icmp uge i32 %22, %29
  %110 = zext i1 %109 to i8
  %111 = load i8, ptr %9, align 4
  %112 = and i8 %111, -4
  %113 = icmp ult i32 %21, %31
  %114 = select i1 %113, i8 0, i8 2
  %115 = or i8 %114, %110
  %116 = or i8 %115, %112
  store i8 %116, ptr %9, align 4
  %117 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 12
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.fimc_fmt, ptr %118, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 12
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.fimc_fmt, ptr %122, i32 0, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %120, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %90
  %127 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 6
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %29, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 7
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %31, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = or i8 %116, 4
  br label %138

136:                                              ; preds = %130, %126, %90
  %137 = and i8 %116, -5
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i8 [ %137, %136 ], [ %135, %134 ]
  store i8 %139, ptr %9, align 4
  br label %140

140:                                              ; preds = %138, %63, %36, %35, %26
  %141 = phi i32 [ -22, %26 ], [ -22, %35 ], [ 0, %138 ], [ -22, %36 ], [ -22, %63 ]
  ret i32 %141
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_prepare_addr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #3 {
  %5 = icmp eq ptr %1, null
  %6 = icmp eq ptr %2, null
  %7 = or i1 %5, %6
  br i1 %7, label %62, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fimc_frame, ptr %2, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fimc_frame, ptr %2, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %10
  %14 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %1, i32 noundef 0) #14
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %3, align 4
  %16 = getelementptr inbounds %struct.fimc_frame, ptr %2, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fimc_fmt, ptr %17, i32 0, i32 3
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %42

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.fimc_fmt, ptr %17, i32 0, i32 4
  %23 = load i16, ptr %22, align 2
  switch i16 %23, label %62 [
    i16 1, label %24
    i16 2, label %26
    i16 3, label %29
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.fimc_addr, ptr %3, i32 0, i32 1
  store i32 0, ptr %25, align 4
  br label %59

26:                                               ; preds = %21
  %27 = add i32 %15, %13
  %28 = getelementptr inbounds %struct.fimc_addr, ptr %3, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  br label %59

29:                                               ; preds = %21
  %30 = add i32 %15, %13
  %31 = getelementptr inbounds %struct.fimc_addr, ptr %3, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr inbounds %struct.fimc_fmt, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = lshr i32 %13, 2
  %38 = add i32 %30, %37
  br label %59

39:                                               ; preds = %29
  %40 = lshr i32 %13, 1
  %41 = add i32 %30, %40
  br label %59

42:                                               ; preds = %8
  %43 = getelementptr inbounds %struct.fimc_fmt, ptr %17, i32 0, i32 7
  %44 = load i16, ptr %43, align 4
  %45 = icmp eq i16 %44, 0
  %46 = icmp ne i16 %19, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %1, i32 noundef 1) #14
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.fimc_addr, ptr %3, i32 0, i32 1
  store i32 %50, ptr %51, align 4
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr inbounds %struct.fimc_fmt, ptr %52, i32 0, i32 3
  %54 = load i16, ptr %53, align 4
  %55 = icmp eq i16 %54, 3
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %1, i32 noundef 2) #14
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %56, %39, %36, %26, %24
  %60 = phi i32 [ %38, %36 ], [ %41, %39 ], [ 0, %26 ], [ 0, %24 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.fimc_addr, ptr %3, i32 0, i32 2
  store i32 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %48, %42, %21, %4
  %63 = phi i32 [ -22, %4 ], [ -22, %21 ], [ 0, %42 ], [ 0, %48 ], [ 0, %59 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @fimc_set_yuv_order(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 5
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 3
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fimc_fmt, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -34
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds [3 x i32], ptr @switch.table.fimc_set_yuv_order, i32 0, i32 %8
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i32 [ %12, %10 ], [ 48, %1 ]
  %15 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fimc_fmt, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -34
  %21 = icmp ult i32 %20, 3
  %22 = add i32 %19, -33
  %23 = select i1 %21, i32 %22, i32 0
  %24 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_prepare_dma_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_dev, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fimc_drvdata, ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fimc_fmt, ptr %11, i32 0, i32 3
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = icmp eq i16 %13, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %16, %2
  %17 = phi i32 [ %22, %16 ], [ 0, %2 ]
  %18 = phi i32 [ %23, %16 ], [ 0, %2 ]
  %19 = getelementptr %struct.fimc_fmt, ptr %11, i32 0, i32 6, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = add i32 %17, %21
  %23 = add nuw nsw i32 %18, 1
  %24 = icmp eq i32 %23, %14
  br i1 %24, label %25, label %16

25:                                               ; preds = %16
  %26 = lshr i32 %22, 3
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi i32 [ 0, %2 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 11
  %32 = select i1 %9, i32 %28, i32 1
  %33 = mul i32 %30, %32
  store i32 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 11, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 11, i32 2
  store i32 %30, ptr %37, align 4
  %38 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 11, i32 3
  store i32 %35, ptr %38, align 4
  %39 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 11, i32 4
  store i32 %30, ptr %39, align 4
  %40 = getelementptr inbounds %struct.fimc_frame, ptr %1, i32 0, i32 11, i32 5
  store i32 %35, ptr %40, align 4
  br i1 %9, label %41, label %53

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.fimc_fmt, ptr %11, i32 0, i32 4
  %43 = load i16, ptr %42, align 2
  %44 = icmp eq i16 %43, 3
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = ashr i32 %30, 1
  store i32 %46, ptr %37, align 4
  store i32 %46, ptr %39, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.fimc_fmt, ptr %11, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 32
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = ashr i32 %35, 1
  store i32 %52, ptr %38, align 4
  store i32 %52, ptr %40, align 4
  br label %53

53:                                               ; preds = %51, %47, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fimc_ctrls_create(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fimc_fmt, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -16
  %7 = icmp ult i32 %6, 5
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds [5 x i32], ptr @switch.table.fimc_alpha_ctrl_update, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %10, %8 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16
  %14 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 6
  %15 = load i8, ptr %14, align 4, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %13, i32 noundef 6, ptr noundef null, ptr noundef null) #14
  %19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %13, ptr noundef nonnull @fimc_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #14
  %20 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 2
  store ptr %19, ptr %20, align 4
  %21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %13, ptr noundef nonnull @fimc_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #14
  %22 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 3
  store ptr %21, ptr %22, align 4
  %23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %13, ptr noundef nonnull @fimc_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #14
  %24 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 4
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fimc_dev, ptr %26, i32 0, i32 6
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.fimc_drvdata, ptr %28, i32 0, i32 5
  %30 = load i8, ptr %29, align 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %17
  %33 = zext i32 %12 to i64
  %34 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %13, ptr noundef nonnull @fimc_ctrl_ops, i32 noundef 9963817, i64 noundef 0, i64 noundef %33, i64 noundef 1, i64 noundef 0) #14
  br label %35

35:                                               ; preds = %32, %17
  %36 = phi ptr [ %34, %32 ], [ null, %17 ]
  %37 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 5
  store ptr %36, ptr %37, align 4
  %38 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %13, ptr noundef nonnull @fimc_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 15, i64 noundef -38976, i8 noundef zeroext 0) #14
  %39 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 1
  store ptr %38, ptr %39, align 4
  %40 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %13, ptr noundef nonnull @fimc_ctrl_ops, i32 noundef 9963818, i64 noundef 0, i64 noundef 65535, i64 noundef 1, i64 noundef 0) #14
  %41 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 1, i32 1
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 9
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %39) #14
  store i8 1, ptr %14, align 4
  %47 = load i32, ptr %43, align 4
  br label %48

48:                                               ; preds = %46, %35, %11
  %49 = phi i32 [ 0, %11 ], [ %47, %46 ], [ %44, %35 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_ctrls_delete(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 6
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16
  tail call void @v4l2_ctrl_handler_free(ptr noundef %6) #14
  store i8 0, ptr %2, align 4
  %7 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 5
  store ptr null, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_ctrls_activate(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fimc_fmt, ptr %4, i32 0, i32 8
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 8
  %8 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 6
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %86, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @mutex_lock(ptr noundef %13) #14
  %14 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %15, i1 noundef zeroext %1) #14
  %16 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %17, i1 noundef zeroext %1) #14
  %18 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 4
  %19 = load ptr, ptr %18, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %19, i1 noundef zeroext %1) #14
  %20 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @v4l2_ctrl_activate(ptr noundef %21, i1 noundef zeroext %1) #14
  %22 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %11
  %26 = icmp ne i16 %7, 0
  %27 = select i1 %1, i1 %26, i1 false
  tail call void @v4l2_ctrl_activate(ptr noundef nonnull %23, i1 noundef zeroext %27) #14
  br label %28

28:                                               ; preds = %25, %11
  br i1 %1, label %29, label %78

29:                                               ; preds = %28
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %30, i32 0, i32 23
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 9
  switch i32 %32, label %56 [
    i32 0, label %34
    i32 1, label %35
    i32 2, label %38
    i32 3, label %41
    i32 4, label %42
    i32 11, label %43
    i32 12, label %44
    i32 15, label %45
  ]

34:                                               ; preds = %29
  store i32 0, ptr %33, align 4
  br label %56

35:                                               ; preds = %29
  store i32 67108864, ptr %33, align 4
  %36 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 9, i32 1
  store i8 -128, ptr %36, align 4
  %37 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 9, i32 2
  store i8 -128, ptr %37, align 1
  br label %56

38:                                               ; preds = %29
  store i32 67108864, ptr %33, align 4
  %39 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 9, i32 1
  store i8 115, ptr %39, align 4
  %40 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 9, i32 2
  store i8 -111, ptr %40, align 1
  br label %56

41:                                               ; preds = %29
  store i32 134217728, ptr %33, align 4
  br label %56

42:                                               ; preds = %29
  store i32 268435456, ptr %33, align 4
  br label %56

43:                                               ; preds = %29
  store i32 201326592, ptr %33, align 4
  br label %56

44:                                               ; preds = %29
  store i32 335544320, ptr %33, align 4
  br label %56

45:                                               ; preds = %29
  store i32 67108864, ptr %33, align 4
  %46 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 1, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %47, i32 0, i32 22
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 8
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 9, i32 1
  store i8 %51, ptr %52, align 4
  %53 = load i32, ptr %48, align 4
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 9, i32 2
  store i8 %54, ptr %55, align 1
  br label %56

56:                                               ; preds = %45, %44, %43, %42, %41, %38, %35, %34, %29
  %57 = load ptr, ptr %14, align 4
  %58 = getelementptr inbounds %struct.v4l2_ctrl, ptr %57, i32 0, i32 22
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 10
  store i32 %59, ptr %60, align 4
  %61 = load ptr, ptr %16, align 4
  %62 = getelementptr inbounds %struct.v4l2_ctrl, ptr %61, i32 0, i32 22
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 11
  %65 = trunc i32 %63 to i8
  %66 = load i8, ptr %64, align 4
  %67 = and i8 %65, 1
  %68 = and i8 %66, -2
  %69 = or i8 %68, %67
  store i8 %69, ptr %64, align 4
  %70 = load ptr, ptr %18, align 4
  %71 = getelementptr inbounds %struct.v4l2_ctrl, ptr %70, i32 0, i32 22
  %72 = load i32, ptr %71, align 4
  %73 = trunc i32 %72 to i8
  %74 = shl i8 %73, 1
  %75 = and i8 %74, 2
  %76 = and i8 %69, -3
  %77 = or i8 %75, %76
  store i8 %77, ptr %64, align 4
  br label %84

78:                                               ; preds = %28
  %79 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 9
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 10
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 11
  %82 = load i8, ptr %81, align 4
  %83 = and i8 %82, -4
  store i8 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %78, %56
  %85 = load ptr, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef %85) #14
  br label %86

86:                                               ; preds = %84, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_activate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_alpha_ctrl_update(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 16, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fimc_dev, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.fimc_drvdata, ptr %9, i32 0, i32 5
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @mutex_lock(ptr noundef %17) #14
  %18 = getelementptr inbounds %struct.fimc_ctx, ptr %0, i32 0, i32 1, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.fimc_fmt, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -16
  %23 = icmp ult i32 %22, 5
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = getelementptr inbounds [5 x i32], ptr @switch.table.fimc_alpha_ctrl_update, i32 0, i32 %22
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %13
  %28 = phi i32 [ %26, %24 ], [ 0, %13 ]
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %3, i32 0, i32 12
  store i64 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %3, i32 0, i32 23
  %32 = load i32, ptr %31, align 8
  %33 = icmp sgt i32 %32, %28
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 %28, ptr %31, align 8
  br label %35

35:                                               ; preds = %34, %27
  %36 = load ptr, ptr %14, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void @mutex_unlock(ptr noundef %38) #14
  br label %39

39:                                               ; preds = %35, %5, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__fimc_get_format(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %3, align 1
  %6 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 1
  store i32 %7, ptr %8, align 1
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %9, align 1
  %10 = getelementptr inbounds %struct.fimc_frame, ptr %0, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fimc_fmt, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 2
  store i32 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 4
  store i32 7, ptr %15, align 1
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.fimc_fmt, ptr %16, i32 0, i32 3
  %18 = load i16, ptr %17, align 4
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 6
  store i8 %19, ptr %20, align 1
  %21 = and i16 %18, 255
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %23, %2
  %24 = phi i32 [ %31, %23 ], [ 0, %2 ]
  %25 = getelementptr %struct.fimc_frame, ptr %0, i32 0, i32 9, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 %24
  %28 = getelementptr %struct.v4l2_format, ptr %1, i32 0, i32 1, i32 0, i32 5, i32 %24, i32 1
  store i32 %26, ptr %28, align 1
  %29 = getelementptr %struct.fimc_frame, ptr %0, i32 0, i32 8, i32 %24
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %27, align 1
  %31 = add nuw nsw i32 %24, 1
  %32 = load i8, ptr %20, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %23, label %35

35:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fimc_adjust_mplane_format(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %3, i32 0, i32 4
  store i32 7, ptr %5, align 1
  %6 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %3, i32 0, i32 3
  store i32 1, ptr %6, align 1
  %7 = getelementptr inbounds %struct.fimc_fmt, ptr %0, i32 0, i32 3
  %8 = load i16, ptr %7, align 4
  %9 = trunc i16 %8 to i8
  %10 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %3, i32 0, i32 6
  store i8 %9, ptr %10, align 1
  %11 = getelementptr inbounds %struct.fimc_fmt, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %3, i32 0, i32 2
  store i32 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %3, i32 0, i32 1
  store i32 %2, ptr %14, align 1
  store i32 %1, ptr %3, align 1
  %15 = icmp eq i8 %9, 0
  br i1 %15, label %87, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.fimc_fmt, ptr %0, i32 0, i32 4
  %18 = getelementptr inbounds %struct.fimc_fmt, ptr %0, i32 0, i32 6
  br label %19

19:                                               ; preds = %79, %16
  %20 = phi i32 [ 0, %16 ], [ %62, %79 ]
  %21 = phi i32 [ 0, %16 ], [ %83, %79 ]
  %22 = getelementptr %struct.v4l2_pix_format_mplane, ptr %3, i32 0, i32 5, i32 %21
  %23 = getelementptr %struct.v4l2_pix_format_mplane, ptr %3, i32 0, i32 5, i32 %21, i32 1
  %24 = load i32, ptr %23, align 1
  %25 = load i16, ptr %17, align 2
  %26 = icmp ugt i16 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = icmp eq i32 %24, 0
  %29 = load i32, ptr %3, align 1
  %30 = icmp ult i32 %24, %29
  %31 = select i1 %28, i1 true, i1 %30
  %32 = select i1 %31, i32 %29, i32 %24
  br label %53

33:                                               ; preds = %19
  %34 = icmp eq i16 %25, 1
  br i1 %34, label %35, label %53

35:                                               ; preds = %33
  %36 = icmp eq i32 %24, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = load i32, ptr %3, align 1
  br label %47

39:                                               ; preds = %35
  %40 = shl i32 %24, 3
  %41 = getelementptr %struct.fimc_fmt, ptr %0, i32 0, i32 6, i32 %21
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = udiv i32 %40, %43
  %45 = load i32, ptr %3, align 1
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39, %37
  %48 = phi i32 [ %38, %37 ], [ %45, %39 ]
  %49 = load i8, ptr %18, align 1
  %50 = zext i8 %49 to i32
  %51 = mul i32 %48, %50
  %52 = lshr i32 %51, 3
  br label %53

53:                                               ; preds = %47, %39, %33, %27
  %54 = phi i32 [ %52, %47 ], [ %24, %39 ], [ %24, %33 ], [ %32, %27 ]
  switch i32 %21, label %60 [
    i32 0, label %61
    i32 1, label %55
  ]

55:                                               ; preds = %53
  %56 = load i16, ptr %7, align 4
  %57 = icmp eq i16 %56, 3
  %58 = zext i1 %57 to i32
  %59 = lshr i32 %20, %58
  br label %61

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %55, %53
  %62 = phi i32 [ %54, %53 ], [ %20, %60 ], [ %59, %55 ]
  store i32 %62, ptr %23, align 1
  %63 = load i32, ptr %3, align 1
  %64 = load i32, ptr %14, align 1
  %65 = mul i32 %64, %63
  %66 = getelementptr %struct.fimc_fmt, ptr %0, i32 0, i32 6, i32 %21
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = mul i32 %65, %68
  %70 = lshr i32 %69, 3
  %71 = load i32, ptr %11, align 4
  %72 = icmp eq i32 %71, 842091860
  br i1 %72, label %73, label %79

73:                                               ; preds = %61
  %74 = shl i32 %62, 5
  %75 = add i32 %74, -1
  %76 = add i32 %75, %70
  %77 = urem i32 %76, %74
  %78 = sub i32 %76, %77
  br label %79

79:                                               ; preds = %73, %61
  %80 = phi i32 [ %78, %73 ], [ %70, %61 ]
  %81 = load i32, ptr %22, align 1
  %82 = tail call i32 @llvm.umax.i32(i32 %80, i32 %81)
  store i32 %82, ptr %22, align 1
  %83 = add nuw nsw i32 %21, 1
  %84 = load i8, ptr %10, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %19, label %87

87:                                               ; preds = %79, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @fimc_find_format(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 {
  %5 = icmp sgt i32 %3, 19
  br i1 %5, label %39, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %0, null
  %8 = icmp eq ptr %1, null
  br label %9

9:                                                ; preds = %34, %6
  %10 = phi i32 [ 0, %6 ], [ %36, %34 ]
  %11 = phi i32 [ 0, %6 ], [ %37, %34 ]
  %12 = phi ptr [ null, %6 ], [ %35, %34 ]
  %13 = getelementptr [20 x %struct.fimc_fmt], ptr @fimc_formats, i32 0, i32 %11
  %14 = getelementptr [20 x %struct.fimc_fmt], ptr @fimc_formats, i32 0, i32 %11, i32 8
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, %2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %9
  br i1 %7, label %25, label %20

20:                                               ; preds = %19
  %21 = getelementptr [20 x %struct.fimc_fmt], ptr @fimc_formats, i32 0, i32 %11, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %0, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %39, label %25

25:                                               ; preds = %20, %19
  br i1 %8, label %30, label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %13, align 4
  %28 = load i32, ptr %1, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %26, %25
  %31 = icmp eq i32 %10, %3
  %32 = select i1 %31, ptr %13, ptr %12
  %33 = add i32 %10, 1
  br label %34

34:                                               ; preds = %30, %9
  %35 = phi ptr [ %32, %30 ], [ %12, %9 ]
  %36 = phi i32 [ %33, %30 ], [ %10, %9 ]
  %37 = add nuw nsw i32 %11, 1
  %38 = icmp eq i32 %37, 20
  br i1 %38, label %39, label %9

39:                                               ; preds = %34, %26, %20, %4
  %40 = phi ptr [ null, %4 ], [ %35, %34 ], [ %13, %26 ], [ %13, %20 ]
  ret ptr %40
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @fimc_register_driver() local_unnamed_addr #10 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fimc_driver, ptr noundef nonnull @__this_module) #14
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @fimc_unregister_driver() local_unnamed_addr #10 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fimc_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_s_ctrl(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -84
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.fimc_dev, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %118

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  switch i32 %16, label %112 [
    i32 9963796, label %17
    i32 9963797, label %26
    i32 9963810, label %36
    i32 9963817, label %81
    i32 9963807, label %86
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %3, i32 -96
  %21 = trunc i32 %19 to i8
  %22 = load i8, ptr %20, align 4
  %23 = and i8 %21, 1
  %24 = and i8 %22, -2
  %25 = or i8 %24, %23
  store i8 %25, ptr %20, align 4
  br label %112

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %3, i32 -96
  %30 = trunc i32 %28 to i8
  %31 = load i8, ptr %29, align 4
  %32 = shl i8 %30, 1
  %33 = and i8 %32, 2
  %34 = and i8 %31, -3
  %35 = or i8 %33, %34
  store i8 %35, ptr %29, align 4
  br label %112

36:                                               ; preds = %14
  %37 = getelementptr inbounds %struct.fimc_dev, ptr %7, i32 0, i32 14
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %43 = load i32, ptr %42, align 4
  br label %73

44:                                               ; preds = %36
  %45 = getelementptr i8, ptr %3, i32 -432
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %3, i32 -428
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %3, i32 -292
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %3, i32 -288
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %54 = load i32, ptr %53, align 4
  switch i32 %54, label %56 [
    i32 270, label %55
    i32 90, label %55
  ]

55:                                               ; preds = %44, %44
  br label %56

56:                                               ; preds = %55, %44
  %57 = phi i32 [ %50, %55 ], [ %52, %44 ]
  %58 = phi i32 [ %52, %55 ], [ %50, %44 ]
  %59 = getelementptr i8, ptr %3, i32 -152
  %60 = load i8, ptr %59, align 4
  %61 = and i8 %60, 8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %56
  %64 = shl i32 %58, 6
  %65 = icmp sgt i32 %64, %46
  %66 = shl i32 %57, 6
  %67 = icmp sgt i32 %66, %48
  %68 = and i1 %67, %65
  br i1 %68, label %73, label %118

69:                                               ; preds = %56
  %70 = icmp eq i32 %58, %46
  %71 = icmp eq i32 %57, %48
  %72 = and i1 %71, %70
  br i1 %72, label %73, label %118

73:                                               ; preds = %69, %63, %41
  %74 = phi i32 [ %43, %41 ], [ %54, %63 ], [ %54, %69 ]
  switch i32 %74, label %79 [
    i32 90, label %75
    i32 270, label %75
  ]

75:                                               ; preds = %73, %73
  %76 = load i8, ptr %9, align 4
  %77 = and i8 %76, 2
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %118, label %79

79:                                               ; preds = %75, %73
  %80 = getelementptr i8, ptr %3, i32 -100
  store i32 %74, ptr %80, align 4
  br label %112

81:                                               ; preds = %14
  %82 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %83 = load i32, ptr %82, align 4
  %84 = trunc i32 %83 to i8
  %85 = getelementptr i8, ptr %3, i32 -180
  store i8 %84, ptr %85, align 4
  br label %112

86:                                               ; preds = %14
  %87 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr i8, ptr %3, i32 -108
  switch i32 %88, label %118 [
    i32 0, label %90
    i32 1, label %91
    i32 2, label %94
    i32 3, label %97
    i32 4, label %98
    i32 11, label %99
    i32 12, label %100
    i32 15, label %101
  ]

90:                                               ; preds = %86
  store i32 0, ptr %89, align 4
  br label %112

91:                                               ; preds = %86
  store i32 67108864, ptr %89, align 4
  %92 = getelementptr i8, ptr %3, i32 -104
  store i8 -128, ptr %92, align 4
  %93 = getelementptr i8, ptr %3, i32 -103
  store i8 -128, ptr %93, align 1
  br label %112

94:                                               ; preds = %86
  store i32 67108864, ptr %89, align 4
  %95 = getelementptr i8, ptr %3, i32 -104
  store i8 115, ptr %95, align 4
  %96 = getelementptr i8, ptr %3, i32 -103
  store i8 -111, ptr %96, align 1
  br label %112

97:                                               ; preds = %86
  store i32 134217728, ptr %89, align 4
  br label %112

98:                                               ; preds = %86
  store i32 268435456, ptr %89, align 4
  br label %112

99:                                               ; preds = %86
  store i32 201326592, ptr %89, align 4
  br label %112

100:                                              ; preds = %86
  store i32 335544320, ptr %89, align 4
  br label %112

101:                                              ; preds = %86
  store i32 67108864, ptr %89, align 4
  %102 = getelementptr i8, ptr %3, i32 116
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.v4l2_ctrl, ptr %103, i32 0, i32 22
  %105 = load i32, ptr %104, align 4
  %106 = lshr i32 %105, 8
  %107 = trunc i32 %106 to i8
  %108 = getelementptr i8, ptr %3, i32 -104
  store i8 %107, ptr %108, align 4
  %109 = load i32, ptr %104, align 4
  %110 = trunc i32 %109 to i8
  %111 = getelementptr i8, ptr %3, i32 -103
  store i8 %110, ptr %111, align 1
  br label %112

112:                                              ; preds = %101, %100, %99, %98, %97, %94, %91, %90, %81, %79, %26, %17, %14
  %113 = getelementptr i8, ptr %3, i32 -88
  %114 = load i32, ptr %113, align 4
  %115 = or i32 %114, 1
  store i32 %115, ptr %113, align 4
  %116 = getelementptr inbounds %struct.fimc_dev, ptr %7, i32 0, i32 14
  tail call void @_set_bit(i32 noundef 12, ptr noundef %116) #14
  %117 = load ptr, ptr %4, align 4
  br label %118

118:                                              ; preds = %112, %86, %75, %69, %63, %1
  %119 = phi ptr [ %117, %112 ], [ %7, %1 ], [ %7, %69 ], [ %7, %75 ], [ %7, %63 ], [ %7, %86 ]
  %120 = phi i32 [ 0, %112 ], [ 0, %1 ], [ -22, %69 ], [ -22, %75 ], [ -22, %63 ], [ -22, %86 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %119, i32 noundef %6) #14
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_probe(ptr noundef %0) #3 {
  %2 = alloca [4 x i32], align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 2648, i32 noundef 3520) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %244, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 2
  store ptr %0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %103, label %12

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #14, !annotation !9
  %13 = tail call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.9, ptr noundef null) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %100

15:                                               ; preds = %12
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 28, i32 noundef 3520) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %100, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @of_match_node(ptr noundef nonnull @fimc_of_match, ptr noundef nonnull %10) #14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %100, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.of_device_id, ptr %19, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 6
  store ptr %23, ptr %24, align 8
  %25 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 4, i32 noundef 0) #14
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %102, label %27

27:                                               ; preds = %21
  %28 = getelementptr %struct.fimc_variant, ptr %16, i32 1
  %29 = load i32, ptr %2, align 4
  %30 = trunc i32 %29 to i16
  store i16 %30, ptr %28, align 2
  %31 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.fimc_pix_limit, ptr %28, i32 0, i32 1
  store i16 %33, ptr %34, align 2
  %35 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = trunc i32 %36 to i16
  %38 = getelementptr %struct.fimc_variant, ptr %16, i32 1, i32 2
  store i16 %37, ptr %38, align 2
  %39 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = trunc i32 %40 to i16
  %42 = getelementptr %struct.fimc_variant, ptr %16, i32 1, i32 3
  store i16 %41, ptr %42, align 2
  %43 = getelementptr inbounds %struct.fimc_variant, ptr %16, i32 0, i32 1
  store ptr %28, ptr %43, align 4
  %44 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.11, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #14
  %45 = icmp sgt i32 %44, -1
  %46 = load i32, ptr %2, align 4
  %47 = trunc i32 %46 to i16
  %48 = select i1 %45, i16 %47, i16 16
  %49 = getelementptr inbounds %struct.fimc_variant, ptr %16, i32 0, i32 2
  store i16 %48, ptr %49, align 4
  %50 = load i32, ptr %31, align 4
  %51 = trunc i32 %50 to i16
  %52 = select i1 %45, i16 %51, i16 16
  %53 = getelementptr inbounds %struct.fimc_variant, ptr %16, i32 0, i32 3
  store i16 %52, ptr %53, align 2
  %54 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #14
  %55 = icmp sgt i32 %54, -1
  %56 = load i32, ptr %2, align 4
  %57 = trunc i32 %56 to i16
  %58 = select i1 %55, i16 %57, i16 2
  %59 = getelementptr inbounds %struct.fimc_variant, ptr %16, i32 0, i32 5
  store i16 %58, ptr %59, align 2
  %60 = load i32, ptr %31, align 4
  %61 = trunc i32 %60 to i16
  %62 = select i1 %55, i16 %61, i16 1
  %63 = getelementptr inbounds %struct.fimc_variant, ptr %16, i32 0, i32 4
  store i16 %62, ptr %63, align 4
  %64 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.13, ptr noundef %31, i32 noundef 1, i32 noundef 0) #14
  %65 = icmp sgt i32 %64, -1
  %66 = load i32, ptr %31, align 4
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = select i1 %65, i8 %68, i8 1
  %70 = load i8, ptr %16, align 4
  %71 = and i8 %70, -4
  %72 = lshr i32 %64, 30
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 2
  %75 = or i8 %74, %71
  %76 = or i8 %75, %69
  store i8 %76, ptr %16, align 4
  %77 = call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.14, ptr noundef null) #14
  %78 = icmp eq ptr %77, null
  %79 = load i8, ptr %16, align 4
  %80 = select i1 %78, i8 0, i8 4
  %81 = and i8 %79, -5
  %82 = or i8 %81, %80
  store i8 %82, ptr %16, align 4
  %83 = call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.15, ptr noundef null) #14
  %84 = icmp eq ptr %83, null
  %85 = load i8, ptr %16, align 4
  %86 = select i1 %84, i8 0, i8 16
  %87 = and i8 %85, -17
  %88 = or i8 %87, %86
  store i8 %88, ptr %16, align 4
  %89 = call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.16, ptr noundef null) #14
  %90 = icmp eq ptr %89, null
  %91 = load i8, ptr %16, align 4
  %92 = select i1 %90, i8 0, i8 8
  %93 = and i8 %91, -9
  %94 = or i8 %93, %92
  store i8 %94, ptr %16, align 4
  %95 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.17, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #14
  %96 = call i32 @of_alias_get_id(ptr noundef nonnull %10, ptr noundef nonnull @.str.18) #14
  %97 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 7
  store i32 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 5
  store ptr %16, ptr %98, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  %99 = load ptr, ptr %24, align 8
  br label %113

100:                                              ; preds = %18, %15, %12
  %101 = phi i32 [ -22, %18 ], [ -12, %15 ], [ -19, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  br label %244

102:                                              ; preds = %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  br label %244

103:                                              ; preds = %7
  %104 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.platform_device_id, ptr %105, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = inttoptr i32 %107 to ptr
  %109 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 6
  store ptr %108, ptr %109, align 8
  %110 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 7
  store i32 %111, ptr %112, align 4
  br label %113

113:                                              ; preds = %103, %27
  %114 = phi i32 [ %96, %27 ], [ %111, %103 ]
  %115 = phi ptr [ %99, %27 ], [ %108, %103 ]
  %116 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 6
  %117 = icmp eq ptr %115, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.fimc_drvdata, ptr %115, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = icmp sge i32 %114, %120
  %122 = icmp slt i32 %114, 0
  %123 = or i1 %122, %121
  br i1 %123, label %124, label %125

124:                                              ; preds = %118, %113
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %114) #13
  br label %244

125:                                              ; preds = %118
  %126 = load ptr, ptr %9, align 8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = getelementptr [4 x ptr], ptr %115, i32 0, i32 %114
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 5
  store ptr %130, ptr %131, align 4
  br label %132

132:                                              ; preds = %128, %125
  %133 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 10
  call void @__init_waitqueue_head(ptr noundef %133, ptr noundef nonnull @.str.4, ptr noundef nonnull @fimc_probe.__key) #14
  store i32 0, ptr %5, align 8
  %134 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 1
  call void @__mutex_init(ptr noundef %134, ptr noundef nonnull @.str.6, ptr noundef nonnull @fimc_probe.__key.5) #14
  %135 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 5
  %136 = load ptr, ptr %135, align 4
  %137 = load i8, ptr %136, align 4
  %138 = and i8 %137, 16
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %132
  %141 = load ptr, ptr %9, align 8
  %142 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %141, ptr noundef nonnull @.str.19) #14
  %143 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 4
  store ptr %142, ptr %143, align 8
  %144 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = ptrtoint ptr %142 to i32
  br label %244

147:                                              ; preds = %140, %132
  %148 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #14
  %149 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %148) #14
  %150 = getelementptr inbounds %struct.fimc_dev, ptr %5, i32 0, i32 9
  store ptr %149, ptr %150, align 8
  %151 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = ptrtoint ptr %149 to i32
  br label %244

154:                                              ; preds = %147
  %155 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef 0) #14
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #13
  br label %244

158:                                              ; preds = %154
  %159 = getelementptr %struct.fimc_dev, ptr %5, i32 0, i32 8, i32 0
  store ptr inttoptr (i32 -22 to ptr), ptr %159, align 4
  %160 = getelementptr %struct.fimc_dev, ptr %5, i32 0, i32 8, i32 1
  store ptr inttoptr (i32 -22 to ptr), ptr %160, align 4
  %161 = load ptr, ptr %8, align 8
  %162 = getelementptr inbounds %struct.platform_device, ptr %161, i32 0, i32 3
  %163 = call ptr @clk_get(ptr noundef %162, ptr noundef nonnull @.str.21) #14
  store ptr %163, ptr %159, align 4
  %164 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %183, label %173

165:                                              ; preds = %173
  %166 = load ptr, ptr %8, align 8
  %167 = getelementptr inbounds %struct.platform_device, ptr %166, i32 0, i32 3
  %168 = call ptr @clk_get(ptr noundef %167, ptr noundef nonnull @.str.18) #14
  store ptr %168, ptr %160, align 4
  %169 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %169, label %180, label %170

170:                                              ; preds = %165
  %171 = call i32 @clk_prepare(ptr noundef %168) #14
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %176, label %197

173:                                              ; preds = %158
  %174 = call i32 @clk_prepare(ptr noundef %163) #14
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %165

176:                                              ; preds = %173, %170
  %177 = phi ptr [ @.str.21, %173 ], [ @.str.18, %170 ]
  %178 = phi ptr [ %159, %173 ], [ %160, %170 ]
  %179 = load ptr, ptr %178, align 4
  call void @clk_put(ptr noundef %179) #14
  store ptr inttoptr (i32 -22 to ptr), ptr %178, align 4
  br label %180

180:                                              ; preds = %176, %165
  %181 = phi ptr [ @.str.18, %165 ], [ %177, %176 ]
  %182 = load ptr, ptr %159, align 4
  br label %183

183:                                              ; preds = %180, %158
  %184 = phi ptr [ %182, %180 ], [ %163, %158 ]
  %185 = phi ptr [ %181, %180 ], [ @.str.21, %158 ]
  %186 = icmp ugt ptr %184, inttoptr (i32 -4096 to ptr)
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  call void @clk_unprepare(ptr noundef %184) #14
  %188 = load ptr, ptr %159, align 4
  call void @clk_put(ptr noundef %188) #14
  store ptr inttoptr (i32 -22 to ptr), ptr %159, align 4
  br label %189

189:                                              ; preds = %187, %183
  %190 = load ptr, ptr %160, align 4
  %191 = icmp ugt ptr %190, inttoptr (i32 -4096 to ptr)
  br i1 %191, label %194, label %192

192:                                              ; preds = %189
  call void @clk_unprepare(ptr noundef %190) #14
  %193 = load ptr, ptr %160, align 4
  call void @clk_put(ptr noundef %193) #14
  store ptr inttoptr (i32 -22 to ptr), ptr %160, align 4
  br label %194

194:                                              ; preds = %192, %189
  %195 = load ptr, ptr %8, align 8
  %196 = getelementptr inbounds %struct.platform_device, ptr %195, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %196, ptr noundef nonnull @.str.20, ptr noundef nonnull %185) #13
  br label %244

197:                                              ; preds = %170
  %198 = load i32, ptr %3, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load ptr, ptr %116, align 8
  %202 = getelementptr inbounds %struct.fimc_drvdata, ptr %201, i32 0, i32 2
  %203 = load i32, ptr %202, align 4
  store i32 %203, ptr %3, align 4
  br label %204

204:                                              ; preds = %200, %197
  %205 = phi i32 [ %203, %200 ], [ %198, %197 ]
  %206 = load ptr, ptr %159, align 8
  %207 = call i32 @clk_set_rate(ptr noundef %206, i32 noundef %205) #14
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %244, label %209

209:                                              ; preds = %204
  %210 = load ptr, ptr %159, align 8
  %211 = call i32 @clk_enable(ptr noundef %210) #14
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %244, label %213

213:                                              ; preds = %209
  %214 = load i32, ptr %155, align 4
  %215 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load ptr, ptr %4, align 4
  br label %220

220:                                              ; preds = %218, %213
  %221 = phi ptr [ %219, %218 ], [ %216, %213 ]
  %222 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %214, ptr noundef nonnull @fimc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %221, ptr noundef nonnull %5) #14
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %222) #13
  br label %241

225:                                              ; preds = %220
  %226 = call i32 @fimc_initialize_capture_subdev(ptr noundef nonnull %5) #14
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %241, label %228

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %229, align 8
  call void @pm_runtime_enable(ptr noundef %4) #14
  %230 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %231 = load i16, ptr %230, align 8
  %232 = and i16 %231, 7
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %228
  %235 = load ptr, ptr %160, align 4
  %236 = call i32 @clk_enable(ptr noundef %235) #14
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %234, %228
  %239 = call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %4, i32 noundef -1) #14
  br label %244

240:                                              ; preds = %234
  call void @fimc_unregister_capture_subdev(ptr noundef nonnull %5) #14
  br label %241

241:                                              ; preds = %240, %225, %224
  %242 = phi i32 [ %222, %224 ], [ %226, %225 ], [ %236, %240 ]
  %243 = load ptr, ptr %159, align 8
  call void @clk_disable(ptr noundef %243) #14
  call fastcc void @fimc_clk_put(ptr noundef nonnull %5)
  br label %244

244:                                              ; preds = %241, %238, %209, %204, %194, %157, %152, %145, %124, %102, %100, %1
  %245 = phi i32 [ -22, %124 ], [ %146, %145 ], [ %153, %152 ], [ -6, %157 ], [ %242, %241 ], [ 0, %238 ], [ -12, %1 ], [ %25, %102 ], [ -6, %194 ], [ %207, %204 ], [ %211, %209 ], [ %101, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %245
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #14
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 18
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr %struct.fimc_dev, ptr %3, i32 0, i32 8, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_disable(ptr noundef %10) #14
  br label %11

11:                                               ; preds = %8, %1
  %12 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 2) #14
  tail call void @fimc_unregister_capture_subdev(ptr noundef %3) #14
  %13 = getelementptr %struct.fimc_dev, ptr %3, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  tail call void @clk_disable(ptr noundef %14) #14
  %15 = load ptr, ptr %13, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %15) #14
  %18 = load ptr, ptr %13, align 4
  tail call void @clk_put(ptr noundef %18) #14
  store ptr inttoptr (i32 -22 to ptr), ptr %13, align 4
  br label %19

19:                                               ; preds = %17, %11
  %20 = getelementptr %struct.fimc_dev, ptr %3, i32 0, i32 8, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %21) #14
  %24 = load ptr, ptr %20, align 4
  tail call void @clk_put(ptr noundef %24) #14
  store ptr inttoptr (i32 -22 to ptr), ptr %20, align 4
  br label %25

25:                                               ; preds = %23, %19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.22) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_irq_handler(i32 noundef %0, ptr noundef %1) #3 {
  tail call void @fimc_hw_clear_irq(ptr noundef %1) #14
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  %3 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 14
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %3) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %3) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  tail call void @_set_bit(i32 noundef 4, ptr noundef %3) #14
  %10 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %10, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %41

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 12, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %13) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %17 = load i16, ptr %1, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  tail call void @fimc_m2m_job_finish(ptr noundef nonnull %14, i32 noundef 5) #14
  %19 = getelementptr inbounds %struct.fimc_ctx, ptr %14, i32 0, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 262144
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %16
  %24 = and i32 %20, -262145
  store i32 %24, ptr %19, align 4
  %25 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %25, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %44

26:                                               ; preds = %2
  %27 = load volatile i32, ptr %3, align 4
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load volatile i32, ptr %3, align 4
  %32 = and i32 %31, 8192
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.fimc_dev, ptr %1, i32 0, i32 13, i32 14
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, 1
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i32 [ 1, %30 ], [ %38, %34 ]
  tail call void @fimc_capture_irq_handler(ptr noundef %1, i32 noundef %40) #14
  br label %41

41:                                               ; preds = %39, %26, %11, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !10
  %42 = load i16, ptr %1, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  br label %44

44:                                               ; preds = %41, %23, %16
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_initialize_capture_subdev(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_unregister_capture_subdev(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fimc_clk_put(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr %struct.fimc_dev, ptr %0, i32 0, i32 8, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @clk_unprepare(ptr noundef %3) #14
  %6 = load ptr, ptr %2, align 4
  tail call void @clk_put(ptr noundef %6) #14
  store ptr inttoptr (i32 -22 to ptr), ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr %struct.fimc_dev, ptr %0, i32 0, i32 8, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %9) #14
  %12 = load ptr, ptr %8, align 4
  tail call void @clk_put(ptr noundef %12) #14
  store ptr inttoptr (i32 -22 to ptr), ptr %8, align 4
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_clear_irq(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_m2m_job_finish(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_capture_irq_handler(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 14
  %5 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load volatile i32, ptr %4, align 4
  %9 = and i32 %8, 2048
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @fimc_capture_suspend(ptr noundef %3) #14
  br label %15

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @fimc_m2m_suspend(ptr noundef %3)
  br label %15

15:                                               ; preds = %13, %11, %1
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 14
  %6 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load volatile i32, ptr %5, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load volatile i32, ptr %5, align 4
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  br label %30

17:                                               ; preds = %12, %8
  tail call void @fimc_hw_reset(ptr noundef %3) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #14
  %18 = load volatile i32, ptr %5, align 4
  %19 = and i32 %18, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @fimc_capture_resume(ptr noundef %3) #14
  br label %30

23:                                               ; preds = %17
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %25 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 12, i32 2
  %26 = load ptr, ptr %25, align 4
  store ptr null, ptr %25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %24) #14
  %27 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %5) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void @fimc_m2m_job_finish(ptr noundef %26, i32 noundef 6) #14
  br label %30

30:                                               ; preds = %29, %23, %21, %16
  %31 = phi i32 [ %22, %21 ], [ 0, %16 ], [ 0, %23 ], [ 0, %29 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_runtime_suspend(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 14
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 2048
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @fimc_capture_suspend(ptr noundef %3) #14
  br label %12

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @fimc_m2m_suspend(ptr noundef %3)
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr %struct.fimc_dev, ptr %3, i32 0, i32 8, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #14
  br label %18

18:                                               ; preds = %15, %12
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimc_runtime_resume(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.fimc_dev, ptr %3, i32 0, i32 8, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #14
  tail call void @fimc_hw_reset(ptr noundef %3) #14
  %7 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 14
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 2048
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @fimc_capture_resume(ptr noundef %3) #14
  br label %20

13:                                               ; preds = %1
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %15 = getelementptr inbounds %struct.fimc_dev, ptr %3, i32 0, i32 12, i32 2
  %16 = load ptr, ptr %15, align 4
  store ptr null, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %14) #14
  %17 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %7) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @fimc_m2m_job_finish(ptr noundef %16, i32 noundef 6) #14
  br label %20

20:                                               ; preds = %19, %13, %11
  %21 = phi i32 [ %12, %11 ], [ 0, %13 ], [ 0, %19 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_capture_suspend(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fimc_m2m_suspend(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 14
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #14
  br label %38

9:                                                ; preds = %1
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %4) #14
  tail call void @_set_bit(i32 noundef 3, ptr noundef %4) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #14
  %10 = load volatile i32, ptr %4, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %4) #14
  br label %38

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #14
  %15 = getelementptr inbounds %struct.fimc_dev, ptr %0, i32 0, i32 10
  %16 = call i32 @prepare_to_wait_event(ptr noundef %15, ptr noundef nonnull %2, i32 noundef 2) #14
  %17 = load volatile i32, ptr %4, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %20, %14
  %21 = phi i32 [ %30, %20 ], [ 10, %14 ]
  %22 = call i32 @schedule_timeout(i32 noundef %21) #14
  %23 = call i32 @prepare_to_wait_event(ptr noundef %15, ptr noundef nonnull %2, i32 noundef 2) #14
  %24 = load volatile i32, ptr %4, align 4
  %25 = and i32 %24, 16
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = icmp ne i32 %22, 0
  %29 = select i1 %27, i1 true, i1 %28
  %30 = select i1 %29, i32 %22, i32 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %26, i1 true, i1 %31
  br i1 %32, label %33, label %20

33:                                               ; preds = %20
  %34 = icmp eq i32 %30, 0
  %35 = select i1 %34, i32 -11, i32 0
  br label %36

36:                                               ; preds = %33, %14
  %37 = phi i32 [ 0, %14 ], [ %35, %33 ]
  call void @finish_wait(ptr noundef %15, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @_clear_bit(i32 noundef 3, ptr noundef %4) #14
  br label %38

38:                                               ; preds = %36, %13, %8
  %39 = phi i32 [ 0, %8 ], [ 0, %13 ], [ %37, %36 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fimc_hw_reset(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fimc_capture_resume(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i64 2148952958}
!11 = !{i64 2148948782}
!12 = !{i64 2148948857, i64 2148948884, i64 2148948931, i64 2148948953, i64 2148948981, i64 2148949001}
!13 = !{i64 2148975961}
