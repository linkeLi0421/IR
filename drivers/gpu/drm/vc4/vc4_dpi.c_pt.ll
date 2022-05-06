; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_dpi.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_dpi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vc4_encoder = type { %struct.drm_encoder, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.vc4_dpi_encoder = type { %struct.vc4_encoder, ptr }
%struct.vc4_dpi = type { ptr, ptr, ptr, ptr, ptr, %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.76, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.77, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.75 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.76 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.77 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@.str = private unnamed_addr constant [8 x i8] c"vc4_dpi\00", align 1
@vc4_dpi_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-dpi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@vc4_dpi_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @vc4_dpi_dev_probe, ptr @vc4_dpi_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_dpi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@vc4_dpi_ops = internal constant %struct.component_ops { ptr @vc4_dpi_bind, ptr @vc4_dpi_unbind }, align 4
@dpi_regs = internal constant [2 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.8, i32 0 }, %struct.debugfs_reg32 { ptr @.str.9, i32 4 }], align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Port returned 0x%08x for ID instead of 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get core clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"pixel\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to get pixel clock: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to turn on core clock: %d\0A\00", align 1
@vc4_dpi_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr @vc4_dpi_encoder_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_dpi_encoder_disable, ptr @vc4_dpi_encoder_enable, ptr null }, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"dpi_regs\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"DPI_C\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"DPI_ID\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Unknown media bus format %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Failed to set clock rate: %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_dpi_dev_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @vc4_dpi_ops) #5
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_dpi_dev_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @vc4_dpi_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_dpi_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 36, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %84, label %9

9:                                                ; preds = %3
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 104, i32 noundef 3520) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %84, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.vc4_encoder, ptr %10, i32 0, i32 1
  store i32 7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vc4_dpi_encoder, ptr %10, i32 0, i32 1
  store ptr %7, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vc4_dpi, ptr %7, i32 0, i32 1
  store ptr %10, ptr %15, align 4
  store ptr %4, ptr %7, align 4
  %16 = tail call ptr @vc4_ioremap_regs(ptr noundef %4, i32 noundef 0) #5
  %17 = getelementptr inbounds %struct.vc4_dpi, ptr %7, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = ptrtoint ptr %16 to i32
  br label %84

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.vc4_dpi, ptr %7, i32 0, i32 5
  %23 = getelementptr inbounds %struct.vc4_dpi, ptr %7, i32 0, i32 5, i32 2
  store ptr %16, ptr %23, align 4
  store ptr @dpi_regs, ptr %22, align 4
  %24 = getelementptr inbounds %struct.vc4_dpi, ptr %7, i32 0, i32 5, i32 1
  store i32 2, ptr %24, align 4
  %25 = getelementptr i8, ptr %16, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %27 = icmp eq i32 %26, 6582377
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr %17, align 4
  %30 = getelementptr i8, ptr %29, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %31, i32 noundef 6582377) #6
  br label %84

32:                                               ; preds = %21
  %33 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  %34 = getelementptr inbounds %struct.vc4_dpi, ptr %7, i32 0, i32 4
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = icmp eq ptr %33, inttoptr (i32 -517 to ptr)
  br i1 %37, label %84, label %38

38:                                               ; preds = %36
  %39 = ptrtoint ptr %33 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %39) #5
  br label %84

40:                                               ; preds = %32
  %41 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.4) #5
  %42 = getelementptr inbounds %struct.vc4_dpi, ptr %7, i32 0, i32 3
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = icmp eq ptr %41, inttoptr (i32 -517 to ptr)
  br i1 %45, label %84, label %46

46:                                               ; preds = %44
  %47 = ptrtoint ptr %41 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %47) #5
  br label %84

48:                                               ; preds = %40
  %49 = load ptr, ptr %34, align 4
  %50 = tail call i32 @clk_prepare(ptr noundef %49) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = tail call i32 @clk_enable(ptr noundef %49) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  tail call void @clk_unprepare(ptr noundef %49) #5
  br label %56

56:                                               ; preds = %55, %48
  %57 = phi i32 [ %53, %55 ], [ %50, %48 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %57) #5
  br label %58

58:                                               ; preds = %56, %52
  %59 = load ptr, ptr %15, align 4
  %60 = tail call i32 @drm_simple_encoder_init(ptr noundef %6, ptr noundef %59, i32 noundef 8) #5
  %61 = load ptr, ptr %15, align 4
  %62 = getelementptr inbounds %struct.drm_encoder, ptr %61, i32 0, i32 11
  store ptr @vc4_dpi_encoder_helper_funcs, ptr %62, align 4
  %63 = load ptr, ptr %7, align 4
  %64 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3, i32 25
  %66 = load ptr, ptr %65, align 8
  %67 = tail call ptr @devm_drm_of_get_bridge(ptr noundef %64, ptr noundef %66, i32 noundef 0, i32 noundef 0) #5
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = ptrtoint ptr %67 to i32
  %71 = icmp eq ptr %67, inttoptr (i32 -19 to ptr)
  br i1 %71, label %78, label %75

72:                                               ; preds = %58
  %73 = load ptr, ptr %15, align 4
  %74 = tail call i32 @drm_bridge_attach(ptr noundef %73, ptr noundef %67, ptr noundef null, i32 noundef 0) #5
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i32 [ %74, %72 ], [ %70, %69 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75, %69
  %79 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %7, ptr %79, align 8
  %80 = getelementptr inbounds %struct.vc4_dev, ptr %6, i32 0, i32 4
  store ptr %7, ptr %80, align 8
  tail call void @vc4_debugfs_add_regset32(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef %22) #5
  br label %84

81:                                               ; preds = %75
  %82 = load ptr, ptr %15, align 4
  tail call void @drm_encoder_cleanup(ptr noundef %82) #5
  %83 = load ptr, ptr %34, align 4
  tail call void @clk_disable(ptr noundef %83) #5
  tail call void @clk_unprepare(ptr noundef %83) #5
  br label %84

84:                                               ; preds = %81, %78, %46, %44, %38, %36, %28, %19, %9, %3
  %85 = phi i32 [ %20, %19 ], [ -19, %28 ], [ %76, %81 ], [ 0, %78 ], [ -12, %3 ], [ -12, %9 ], [ %39, %38 ], [ -517, %36 ], [ %47, %46 ], [ -517, %44 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_dpi_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @of_graph_get_remote_node(ptr noundef %9, i32 noundef 0, i32 noundef 0) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %10) #5
  tail call void @drm_panel_bridge_remove(ptr noundef %13) #5
  br label %14

14:                                               ; preds = %12, %3
  %15 = getelementptr inbounds %struct.vc4_dpi, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @drm_encoder_cleanup(ptr noundef %16) #5
  %17 = getelementptr inbounds %struct.vc4_dpi, ptr %7, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #5
  tail call void @clk_unprepare(ptr noundef %18) #5
  %19 = getelementptr inbounds %struct.vc4_dev, ptr %5, i32 0, i32 4
  store ptr null, ptr %19, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_ioremap_regs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_add_regset32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @vc4_dpi_encoder_mode_valid(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 0, i32 7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_dpi_encoder_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vc4_dpi_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vc4_dpi, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_dpi_encoder_enable(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.drm_connector_list_iter, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 12
  %7 = getelementptr inbounds %struct.vc4_dpi_encoder, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store i64 0, ptr %2, align 8, !annotation !11
  call void @drm_connector_list_iter_begin(ptr noundef %3, ptr noundef nonnull %2) #5
  br label %9

9:                                                ; preds = %13, %1
  %10 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @drm_connector_list_iter_end(ptr noundef nonnull %2) #5
  br label %30

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.drm_connector, ptr %10, i32 0, i32 41
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  call void @drm_connector_list_iter_end(ptr noundef nonnull %2) #5
  %18 = getelementptr inbounds %struct.drm_connector, ptr %10, i32 0, i32 20, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_connector, ptr %10, i32 0, i32 20, i32 6
  %23 = load ptr, ptr %22, align 8
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %29 [
    i32 4106, label %30
    i32 4115, label %25
    i32 4117, label %26
    i32 4105, label %27
    i32 4119, label %28
  ]

25:                                               ; preds = %21
  br label %30

26:                                               ; preds = %21
  br label %30

27:                                               ; preds = %21
  br label %30

28:                                               ; preds = %21
  br label %30

29:                                               ; preds = %21
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %24) #5
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %21, %17, %12
  %31 = phi i32 [ 65537, %29 ], [ 71681, %28 ], [ 73729, %27 ], [ 75777, %26 ], [ 94209, %25 ], [ 77825, %21 ], [ 77825, %17 ], [ 77825, %12 ]
  %32 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 12, i32 11
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = or i32 %31, 512
  %37 = shl i32 %33, 3
  %38 = and i32 %37, 8
  %39 = or i32 %38, %31
  %40 = xor i32 %39, 8
  %41 = select i1 %35, i32 %40, i32 %36
  %42 = and i32 %33, 8
  %43 = icmp eq i32 %42, 0
  %44 = or i32 %41, 256
  %45 = and i32 %33, 4
  %46 = or i32 %45, %41
  %47 = xor i32 %46, 4
  %48 = select i1 %43, i32 %47, i32 %44
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  call void @arm_heavy_mb() #5
  %49 = getelementptr inbounds %struct.vc4_dpi, ptr %8, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #5, !srcloc !13
  %51 = getelementptr inbounds %struct.vc4_dpi, ptr %8, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %6, align 4
  %54 = mul i32 %53, 1000
  %55 = call i32 @clk_set_rate(ptr noundef %52, i32 noundef %54) #5
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %30
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %55) #5
  br label %58

58:                                               ; preds = %57, %30
  %59 = load ptr, ptr %51, align 4
  %60 = call i32 @clk_prepare(ptr noundef %59) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = call i32 @clk_enable(ptr noundef %59) #5
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  call void @clk_unprepare(ptr noundef %59) #5
  br label %66

66:                                               ; preds = %65, %58
  %67 = phi i32 [ %63, %65 ], [ %60, %58 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %67) #5
  br label %68

68:                                               ; preds = %66, %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_of_get_bridge(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 5409415}
!9 = !{i64 2156151202}
!10 = !{i64 2156152328}
!11 = !{!"auto-init"}
!12 = !{i64 2156148525}
!13 = !{i64 5408997}
