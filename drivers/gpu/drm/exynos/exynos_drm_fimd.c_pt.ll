; ModuleID = '/llk/IR/drivers/gpu/drm/exynos/exynos_drm_fimd.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_fimd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.component_ops = type { ptr, ptr }
%struct.exynos_drm_crtc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.fimd_context = type { ptr, ptr, ptr, ptr, [5 x %struct.exynos_drm_plane], [5 x %struct.exynos_drm_plane_config], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, ptr, ptr, %struct.exynos_drm_clk }
%struct.exynos_drm_plane = type { %struct.drm_plane, ptr, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.exynos_drm_plane_config = type { i32, i32, ptr, i32, i32 }
%struct.exynos_drm_clk = type { ptr }
%struct.fimd_driver_data = type { i32, i32, i32, i32, i32, i32, i16 }
%struct.exynos_drm_crtc = type { %struct.drm_crtc, i32, ptr, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
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
%struct.anon.74 = type { i32, ptr }
%struct.exynos_drm_private = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.72, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.72 = type { [4 x i8] }
%struct.exynos_drm_plane_state = type { %struct.drm_plane_state, %struct.exynos_drm_rect, %struct.exynos_drm_rect, i32, i32 }
%struct.exynos_drm_rect = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@fimd_driver_dt_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6400-fimd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s3c64xx_fimd_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-fimd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_fimd_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-fimd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3_fimd_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-fimd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_fimd_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-fimd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5_fimd_driver_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-fimd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_fimd_driver_data }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [11 x i8] c"exynos4-fb\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@exynos_fimd_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_fimd_suspend, ptr @exynos_fimd_resume, ptr null }, align 4
@fimd_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @fimd_probe, ptr @fimd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @fimd_driver_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_fimd_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@s3c64xx_fimd_driver_data = internal global { i32, i32, i32, i32, i32, i32, i8, i8 } { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 6, i8 0 }, align 4
@s5pv210_fimd_driver_data = internal global { i32, i32, i32, i32, i32, i32, i8, i8 } { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 3, i8 0 }, align 4
@exynos3_fimd_driver_data = internal global { i32, i32, i32, i32, i32, i32, i8, i8 } { i32 131072, i32 528, i32 0, i32 1, i32 0, i32 0, i8 9, i8 0 }, align 4
@exynos4_fimd_driver_data = internal global { i32, i32, i32, i32, i32, i32, i8, i8 } { i32 0, i32 528, i32 10, i32 1, i32 0, i32 0, i8 17, i8 0 }, align 4
@exynos5_fimd_driver_data = internal global { i32, i32, i32, i32, i32, i32, i8, i8 } { i32 131072, i32 532, i32 24, i32 15, i32 0, i32 0, i8 89, i8 0 }, align 4
@exynos5420_fimd_driver_data = internal global { i32, i32, i32, i32, i32, i32, i8, i8 } { i32 131072, i32 532, i32 24, i32 15, i32 11, i32 0, i8 121, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"samsung,invert-vden\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"samsung,invert-vclk\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"i80-if-timings\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"cs-setup\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"wr-setup\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"wr-active\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"wr-hold\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"samsung,sysreg\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"failed to get system register.\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"fimd\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"failed to get bus clock\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sclk_fimd\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"failed to get lcd clock\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"lcd_sys\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"vsync\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"drm_fimd\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"irq request failed.\0A\00", align 1
@fimd_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"&ctx->wait_vsync_queue\00", align 1
@fimd_component_ops = internal constant %struct.component_ops { ptr @fimd_bind, ptr @fimd_unbind }, align 4
@fimd_formats = internal constant [5 x i32] [i32 538982467, i32 892424792, i32 909199186, i32 875713112, i32 875713089], align 4
@fimd_crtc_ops = internal constant %struct.exynos_drm_crtc_ops { ptr @fimd_atomic_enable, ptr @fimd_atomic_disable, ptr @fimd_enable_vblank, ptr @fimd_disable_vblank, ptr null, ptr null, ptr @fimd_atomic_check, ptr @fimd_atomic_begin, ptr @fimd_update_plane, ptr @fimd_disable_plane, ptr @fimd_atomic_flush, ptr @fimd_te_handler }, align 4
@.str.25 = private unnamed_addr constant [31 x i8] c"failed to enable FIMD device.\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"*ERROR* Failed to update sysreg for I80 i/f.\0A\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"*ERROR* Failed to update sysreg for bypass setting.\0A\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"*ERROR* Failed to update sysreg for bypass mic.\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"vblank wait timed out.\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"*ERROR* Mode has zero clock value.\0A\00", align 1
@.str.32 = private unnamed_addr constant [69 x i8] c"*ERROR* sclk_fimd clock too low(%lu) for requested pixel clock(%lu)\0A\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"*ERROR* requested pixel clock(%lu) too low\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"start addr = 0x%lx, end addr = 0x%lx, size = 0x%lx\0A\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"ovl_width = %d, ovl_height = %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"osd pos: tx = %d, ty = %d, bx = %d, by = %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"osd size = 0x%x\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"*ERROR* Failed to prepare_enable the bus clk [%d]\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"*ERROR* Failed to prepare_enable the lcd clk [%d]\0A\00", align 1

@__mod_of__fimd_driver_dt_match_device_table = dso_local alias [7 x %struct.of_device_id], ptr @fimd_driver_dt_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimd_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %140, label %7

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 2520, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %140, label %10

10:                                               ; preds = %7
  store ptr %3, ptr %8, align 8
  %11 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 16
  store i8 1, ptr %11, align 1
  %12 = tail call ptr @of_device_get_match_data(ptr noundef %3) #6
  %13 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 22
  store ptr %12, ptr %13, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = tail call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef null) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 16
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %10
  %22 = load ptr, ptr %4, align 8
  %23 = tail call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.8, ptr noundef null) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 128
  store i32 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load ptr, ptr %4, align 8
  %31 = tail call ptr @of_get_child_by_name(ptr noundef %30, ptr noundef nonnull @.str.9) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %90, label %33

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %34 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 15
  store i8 1, ptr %34, align 8
  %35 = load ptr, ptr %13, align 8
  %36 = getelementptr inbounds %struct.fimd_driver_data, ptr %35, i32 0, i32 6
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 8
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 13
  %42 = load i32, ptr %41, align 8
  %43 = or i32 %42, 512
  store i32 %43, ptr %41, align 8
  %44 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 11
  %45 = load i32, ptr %44, align 8
  br label %50

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 11
  %48 = load i32, ptr %47, align 8
  %49 = or i32 %48, 134217728
  store i32 %49, ptr %47, align 8
  br label %50

50:                                               ; preds = %46, %40
  %51 = phi i32 [ %49, %46 ], [ %45, %40 ]
  %52 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 11
  %53 = or i32 %51, 1073741824
  store i32 %53, ptr %52, align 8
  %54 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %31, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, ptr %2, align 4
  %58 = shl i32 %57, 16
  br label %60

59:                                               ; preds = %50
  store i32 0, ptr %2, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32 [ %58, %56 ], [ 0, %59 ]
  %62 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 14
  store i32 %61, ptr %62, align 4
  %63 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %31, ptr noundef nonnull @.str.11, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, ptr %2, align 4
  %67 = shl i32 %66, 12
  br label %69

68:                                               ; preds = %60
  store i32 0, ptr %2, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = phi i32 [ %67, %65 ], [ 0, %68 ]
  %71 = load i32, ptr %62, align 4
  %72 = or i32 %71, %70
  store i32 %72, ptr %62, align 4
  %73 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %31, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, ptr %2, align 4
  %77 = shl i32 %76, 8
  br label %79

78:                                               ; preds = %69
  store i32 1, ptr %2, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = phi i32 [ %77, %75 ], [ 256, %78 ]
  %81 = load i32, ptr %62, align 4
  %82 = or i32 %81, %80
  store i32 %82, ptr %62, align 4
  %83 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %31, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %84 = load i32, ptr %2, align 4
  %85 = shl i32 %84, 4
  %86 = icmp slt i32 %83, 0
  %87 = select i1 %86, i32 0, i32 %85
  %88 = load i32, ptr %62, align 4
  %89 = or i32 %88, %87
  store i32 %89, ptr %62, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %90

90:                                               ; preds = %79, %29
  call void @of_node_put(ptr noundef %31) #6
  %91 = load ptr, ptr %4, align 8
  %92 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %91, ptr noundef nonnull @.str.14) #6
  %93 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 9
  store ptr %92, ptr %93, align 8
  %94 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.15) #7
  store ptr null, ptr %93, align 8
  br label %96

96:                                               ; preds = %95, %90
  %97 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.16) #6
  %98 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 6
  store ptr %97, ptr %98, align 4
  %99 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #7
  %101 = load ptr, ptr %98, align 4
  %102 = ptrtoint ptr %101 to i32
  br label %140

103:                                              ; preds = %96
  %104 = call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.18) #6
  %105 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 7
  store ptr %104, ptr %105, align 8
  %106 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #7
  %108 = load ptr, ptr %105, align 8
  %109 = ptrtoint ptr %108 to i32
  br label %140

110:                                              ; preds = %103
  %111 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %112 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 8
  store ptr %111, ptr %112, align 4
  %113 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = ptrtoint ptr %111 to i32
  br label %140

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 15
  %118 = load i8, ptr %117, align 8, !range !9
  %119 = icmp eq i8 %118, 0
  %120 = select i1 %119, ptr @.str.21, ptr @.str.20
  %121 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull %120) #6
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %140, label %123

123:                                              ; preds = %116
  %124 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %121, ptr noundef nonnull @fimd_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull %8) #6
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23) #7
  br label %140

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 17
  call void @__init_waitqueue_head(ptr noundef %128, ptr noundef nonnull @.str.24, ptr noundef nonnull @fimd_probe.__key) #6
  %129 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 18
  store volatile i32 0, ptr %129, align 4
  %130 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %130, align 8
  %131 = call ptr @exynos_dpi_probe(ptr noundef %3) #6
  %132 = getelementptr inbounds %struct.fimd_context, ptr %8, i32 0, i32 23
  store ptr %131, ptr %132, align 4
  %133 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = ptrtoint ptr %131 to i32
  br label %140

136:                                              ; preds = %127
  call void @pm_runtime_enable(ptr noundef %3) #6
  %137 = call i32 @component_add(ptr noundef %3, ptr noundef nonnull @fimd_component_ops) #6
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #6
  br label %140

140:                                              ; preds = %139, %136, %134, %126, %116, %114, %107, %100, %7, %1
  %141 = phi i32 [ %102, %100 ], [ %109, %107 ], [ %115, %114 ], [ %124, %126 ], [ %135, %134 ], [ %137, %139 ], [ -19, %1 ], [ -12, %7 ], [ %121, %116 ], [ 0, %136 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimd_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #6
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @fimd_component_ops) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimd_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.fimd_context, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 308
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %7 = getelementptr inbounds %struct.fimd_context, ptr %1, i32 0, i32 15
  %8 = load i8, ptr %7, align 8, !range !9
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 2, i32 4
  %11 = and i32 %10, %6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %10) #6, !srcloc !13
  br label %16

16:                                               ; preds = %13, %2
  %17 = getelementptr inbounds %struct.fimd_context, ptr %1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = load i8, ptr %7, align 8, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.fimd_context, ptr %1, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %25) #6
  %27 = load i8, ptr %7, align 8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23, %20
  %30 = getelementptr inbounds %struct.fimd_context, ptr %1, i32 0, i32 20
  store volatile i32 0, ptr %30, align 4
  br label %37

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.fimd_context, ptr %1, i32 0, i32 18
  %33 = load volatile i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  store volatile i32 0, ptr %32, align 4
  %36 = getelementptr inbounds %struct.fimd_context, ptr %1, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %36, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %37

37:                                               ; preds = %35, %31, %29, %16
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_dpi_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimd_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 0
  %8 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 0, i32 2
  store ptr @fimd_formats, ptr %8, align 4
  %9 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 0, i32 3
  store i32 5, ptr %9, align 4
  store i32 0, ptr %7, align 4
  %10 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 0, i32 1
  store i32 1, ptr %10, align 4
  %11 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 0, i32 4
  store i32 0, ptr %11, align 4
  %12 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 4, i32 0
  %13 = tail call i32 @exynos_plane_init(ptr noundef %2, ptr noundef %12, i32 noundef 0, ptr noundef %7) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %213

15:                                               ; preds = %3
  %16 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 1
  %17 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 1, i32 2
  store ptr @fimd_formats, ptr %17, align 4
  %18 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 1, i32 3
  store i32 5, ptr %18, align 4
  store i32 1, ptr %16, align 4
  %19 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 1, i32 1
  store i32 0, ptr %19, align 4
  %20 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 1, i32 4
  store i32 48, ptr %20, align 4
  %21 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 4, i32 1
  %22 = tail call i32 @exynos_plane_init(ptr noundef %2, ptr noundef %21, i32 noundef 1, ptr noundef %16) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %213

24:                                               ; preds = %15
  %25 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 2
  %26 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 2, i32 2
  store ptr @fimd_formats, ptr %26, align 4
  %27 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 2, i32 3
  store i32 5, ptr %27, align 4
  store i32 2, ptr %25, align 4
  %28 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 2, i32 1
  store i32 0, ptr %28, align 4
  %29 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 2, i32 4
  store i32 48, ptr %29, align 4
  %30 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 4, i32 2
  %31 = tail call i32 @exynos_plane_init(ptr noundef %2, ptr noundef %30, i32 noundef 2, ptr noundef %25) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %213

33:                                               ; preds = %24
  %34 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 3
  %35 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 3, i32 2
  store ptr @fimd_formats, ptr %35, align 4
  %36 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 3, i32 3
  store i32 5, ptr %36, align 4
  store i32 3, ptr %34, align 4
  %37 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 3, i32 1
  store i32 0, ptr %37, align 4
  %38 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 3, i32 4
  store i32 48, ptr %38, align 4
  %39 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 4, i32 3
  %40 = tail call i32 @exynos_plane_init(ptr noundef %2, ptr noundef %39, i32 noundef 3, ptr noundef %34) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %213

42:                                               ; preds = %33
  %43 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 4
  %44 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 4, i32 2
  store ptr @fimd_formats, ptr %44, align 4
  %45 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 4, i32 3
  store i32 5, ptr %45, align 4
  store i32 4, ptr %43, align 4
  %46 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 4, i32 1
  store i32 2, ptr %46, align 4
  %47 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 5, i32 4, i32 4
  store i32 48, ptr %47, align 4
  %48 = getelementptr %struct.fimd_context, ptr %5, i32 0, i32 4, i32 4
  %49 = tail call i32 @exynos_plane_init(ptr noundef %2, ptr noundef %48, i32 noundef 4, ptr noundef %43) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %213

51:                                               ; preds = %42
  %52 = tail call ptr @exynos_drm_crtc_create(ptr noundef %2, ptr noundef %12, i32 noundef 1, ptr noundef nonnull @fimd_crtc_ops, ptr noundef %5) #6
  %53 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 3
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = ptrtoint ptr %52 to i32
  br label %213

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 22
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.fimd_driver_data, ptr %59, i32 0, i32 6
  %61 = load i16, ptr %60, align 4
  %62 = and i16 %61, 64
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 24
  store ptr @fimd_dp_clock_enable, ptr %65, align 8
  %66 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %52, i32 0, i32 4
  store ptr %65, ptr %66, align 4
  br label %67

67:                                               ; preds = %64, %57
  %68 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 23
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = tail call i32 @exynos_dpi_bind(ptr noundef %2, ptr noundef nonnull %69) #6
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.exynos_drm_private, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %210, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr %53, align 4
  %81 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 8
  %83 = load ptr, ptr %82, align 8
  %84 = tail call i32 @__pm_runtime_resume(ptr noundef %83, i32 noundef 4) #6
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #6, !srcloc !15
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 0, i32 -1, ptr elementtype(i32) %87) #6, !srcloc !16
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  br label %92

92:                                               ; preds = %91, %86
  %93 = load ptr, ptr %82, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.25) #7
  br label %213

94:                                               ; preds = %79
  %95 = getelementptr inbounds %struct.fimd_context, ptr %82, i32 0, i32 6
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 @clk_prepare(ptr noundef %96) #6
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = tail call i32 @clk_enable(ptr noundef %96) #6
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  tail call void @clk_unprepare(ptr noundef %96) #6
  br label %103

103:                                              ; preds = %102, %99, %94
  %104 = getelementptr inbounds %struct.fimd_context, ptr %82, i32 0, i32 7
  %105 = load ptr, ptr %104, align 8
  %106 = tail call i32 @clk_prepare(ptr noundef %105) #6
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = tail call i32 @clk_enable(ptr noundef %105) #6
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  tail call void @clk_unprepare(ptr noundef %105) #6
  br label %112

112:                                              ; preds = %111, %108, %103
  %113 = getelementptr inbounds %struct.fimd_context, ptr %82, i32 0, i32 8
  %114 = getelementptr inbounds %struct.fimd_context, ptr %82, i32 0, i32 22
  br label %115

115:                                              ; preds = %146, %112
  %116 = phi i32 [ 0, %112 ], [ %148, %146 ]
  %117 = phi i32 [ 0, %112 ], [ %147, %146 ]
  %118 = load ptr, ptr %113, align 4
  %119 = shl nuw nsw i32 %116, 2
  %120 = add nuw nsw i32 %119, 32
  %121 = getelementptr i8, ptr %118, i32 %120
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %146, label %125

125:                                              ; preds = %115
  %126 = load ptr, ptr %113, align 4
  %127 = getelementptr i8, ptr %126, i32 %120
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %129 = and i32 %128, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %130 = load ptr, ptr %113, align 4
  %131 = getelementptr i8, ptr %130, i32 %120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %129) #6, !srcloc !13
  %132 = load ptr, ptr %114, align 8
  %133 = getelementptr inbounds %struct.fimd_driver_data, ptr %132, i32 0, i32 6
  %134 = load i16, ptr %133, align 4
  %135 = and i16 %134, 1
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %125
  %138 = load ptr, ptr %113, align 4
  %139 = getelementptr i8, ptr %138, i32 52
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  %141 = shl nuw nsw i32 1, %116
  %142 = xor i32 %141, -1
  %143 = and i32 %140, %142
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %144 = load ptr, ptr %113, align 4
  %145 = getelementptr i8, ptr %144, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #6, !srcloc !13
  br label %146

146:                                              ; preds = %137, %125, %115
  %147 = phi i32 [ %117, %115 ], [ 1, %137 ], [ 1, %125 ]
  %148 = add nuw nsw i32 %116, 1
  %149 = icmp eq i32 %148, 5
  br i1 %149, label %150, label %115

150:                                              ; preds = %146
  %151 = icmp eq i32 %147, 0
  br i1 %151, label %205, label %152

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.fimd_context, ptr %82, i32 0, i32 16
  store i8 0, ptr %153, align 1
  %154 = getelementptr inbounds %struct.fimd_context, ptr %82, i32 0, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %155, i32 0, i32 3
  %157 = load ptr, ptr %156, align 8
  %158 = getelementptr inbounds %struct.fimd_context, ptr %157, i32 0, i32 16
  %159 = load i8, ptr %158, align 1, !range !9
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %180

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.fimd_context, ptr %157, i32 0, i32 10
  %163 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %162) #6
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.fimd_context, ptr %157, i32 0, i32 8
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr i8, ptr %167, i32 304
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %168) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %170 = getelementptr inbounds %struct.fimd_context, ptr %157, i32 0, i32 15
  %171 = load i8, ptr %170, align 8, !range !9
  %172 = icmp eq i8 %171, 0
  %173 = and i32 %169, -917506
  %174 = or i32 %173, 655361
  %175 = and i32 %169, -126978
  %176 = or i32 %175, 102401
  %177 = select i1 %172, i32 %176, i32 %174
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %178 = load ptr, ptr %166, align 4
  %179 = getelementptr i8, ptr %178, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #6, !srcloc !13
  br label %180

180:                                              ; preds = %165, %161, %152
  %181 = load ptr, ptr %154, align 4
  tail call fastcc void @fimd_wait_for_vblank(ptr noundef %181) #6
  %182 = load ptr, ptr %154, align 4
  %183 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %182, i32 0, i32 3
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds %struct.fimd_context, ptr %184, i32 0, i32 16
  %186 = load i8, ptr %185, align 1, !range !9
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.fimd_context, ptr %184, i32 0, i32 10
  %190 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %189) #6
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %204, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.fimd_context, ptr %184, i32 0, i32 8
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr i8, ptr %194, i32 304
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %195) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !25
  %197 = getelementptr inbounds %struct.fimd_context, ptr %184, i32 0, i32 15
  %198 = load i8, ptr %197, align 8, !range !9
  %199 = icmp eq i8 %198, 0
  %200 = select i1 %199, i32 -4098, i32 -917506
  %201 = and i32 %200, %196
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %202 = load ptr, ptr %193, align 4
  %203 = getelementptr i8, ptr %202, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %203, i32 %201) #6, !srcloc !13
  br label %204

204:                                              ; preds = %192, %188, %180
  store i8 1, ptr %153, align 1
  br label %205

205:                                              ; preds = %204, %150
  %206 = load ptr, ptr %104, align 8
  tail call void @clk_disable(ptr noundef %206) #6
  tail call void @clk_unprepare(ptr noundef %206) #6
  %207 = load ptr, ptr %95, align 4
  tail call void @clk_disable(ptr noundef %207) #6
  tail call void @clk_unprepare(ptr noundef %207) #6
  %208 = load ptr, ptr %82, align 8
  %209 = tail call i32 @__pm_runtime_idle(ptr noundef %208, i32 noundef 5) #6
  br label %210

210:                                              ; preds = %205, %73
  %211 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 2
  %212 = tail call i32 @exynos_drm_register_dma(ptr noundef %2, ptr noundef %0, ptr noundef %211) #6
  br label %213

213:                                              ; preds = %210, %92, %55, %42, %33, %24, %15, %3
  %214 = phi i32 [ %56, %55 ], [ %212, %210 ], [ %84, %92 ], [ %13, %3 ], [ %22, %15 ], [ %31, %24 ], [ %40, %33 ], [ %49, %42 ]
  ret i32 %214
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimd_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @fimd_atomic_disable(ptr noundef %7)
  %8 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 2
  tail call void @exynos_drm_unregister_dma(ptr noundef %9, ptr noundef %10, ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 23
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = tail call i32 @exynos_dpi_remove(ptr noundef nonnull %13) #6
  br label %17

17:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_crtc_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimd_dp_clock_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = select i1 %1, i32 2, i32 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 636
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %3) #6, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_dpi_bind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_register_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimd_atomic_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 16
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %275, label %7

7:                                                ; preds = %1
  store i8 0, ptr %4, align 1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #6, !srcloc !15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #6, !srcloc !16
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  br label %17

17:                                               ; preds = %16, %11
  %18 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.25) #7
  br label %275

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 10
  %21 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %20) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.fimd_context, ptr %27, i32 0, i32 16
  %29 = load i8, ptr %28, align 1, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.fimd_context, ptr %27, i32 0, i32 10
  %33 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %32) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.fimd_context, ptr %27, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 304
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %40 = getelementptr inbounds %struct.fimd_context, ptr %27, i32 0, i32 15
  %41 = load i8, ptr %40, align 8, !range !9
  %42 = icmp eq i8 %41, 0
  %43 = and i32 %39, -917506
  %44 = or i32 %43, 655361
  %45 = and i32 %39, -126978
  %46 = or i32 %45, 102401
  %47 = select i1 %42, i32 %46, i32 %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %48 = load ptr, ptr %36, align 4
  %49 = getelementptr i8, ptr %48, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #6, !srcloc !13
  br label %50

50:                                               ; preds = %35, %31, %23, %19
  %51 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.drm_crtc, ptr %52, i32 0, i32 22
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.fimd_context, ptr %54, i32 0, i32 22
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.fimd_context, ptr %54, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = load i32, ptr %58, align 4
  %62 = getelementptr i8, ptr %60, i32 %61
  %63 = getelementptr inbounds %struct.fimd_context, ptr %54, i32 0, i32 16
  %64 = load i8, ptr %63, align 1, !range !9
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %275

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 4
  %68 = load i16, ptr %67, align 2
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %275, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 9
  %72 = load i16, ptr %71, align 4
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %275, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.fimd_context, ptr %54, i32 0, i32 15
  %76 = load i8, ptr %75, align 8, !range !9
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.fimd_context, ptr %54, i32 0, i32 14
  %80 = load i32, ptr %79, align 4
  %81 = or i32 %80, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %82 = getelementptr i8, ptr %62, i32 432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %81) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %83 = getelementptr i8, ptr %62, i32 440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 0) #6, !srcloc !13
  %84 = getelementptr inbounds %struct.fimd_driver_data, ptr %58, i32 0, i32 6
  %85 = load i16, ptr %84, align 4
  %86 = and i16 %85, 16
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %170, label %88

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.fimd_context, ptr %54, i32 0, i32 9
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %170, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.fimd_driver_data, ptr %58, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.fimd_driver_data, ptr %58, i32 0, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 3, %96
  %98 = shl nuw i32 1, %96
  %99 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %90, i32 noundef %94, i32 noundef %97, i32 noundef %98, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %170, label %101

101:                                              ; preds = %92
  %102 = load ptr, ptr %54, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %102, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #6
  br label %275

103:                                              ; preds = %74
  %104 = getelementptr inbounds %struct.fimd_context, ptr %54, i32 0, i32 12
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 11
  %107 = load i32, ptr %106, align 4
  %108 = shl i32 %107, 2
  %109 = and i32 %108, 32
  %110 = or i32 %109, %105
  %111 = shl i32 %107, 5
  %112 = and i32 %111, 64
  %113 = or i32 %110, %112
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %114 = load ptr, ptr %59, align 4
  %115 = load i32, ptr %58, align 4
  %116 = getelementptr i8, ptr %114, i32 %115
  %117 = getelementptr i8, ptr %116, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %113) #6, !srcloc !13
  %118 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 24
  %119 = load i16, ptr %118, align 2
  %120 = zext i16 %119 to i32
  %121 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 23
  %122 = load i16, ptr %121, align 4
  %123 = zext i16 %122 to i32
  %124 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 25
  %125 = load i16, ptr %124, align 4
  %126 = zext i16 %125 to i32
  %127 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 20
  %128 = load i16, ptr %127, align 2
  %129 = zext i16 %128 to i32
  %130 = xor i32 %120, -1
  %131 = add nsw i32 %126, %130
  %132 = shl i32 %131, 16
  %133 = xor i32 %129, -1
  %134 = add nsw i32 %133, %123
  %135 = shl nsw i32 %134, 8
  %136 = xor i32 %123, -1
  %137 = add nsw i32 %136, %120
  %138 = or i32 %132, %137
  %139 = or i32 %138, %135
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %140 = load ptr, ptr %59, align 4
  %141 = load i32, ptr %58, align 4
  %142 = getelementptr i8, ptr %140, i32 %141
  %143 = getelementptr i8, ptr %142, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %139) #6, !srcloc !13
  %144 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 17
  %145 = load i16, ptr %144, align 4
  %146 = zext i16 %145 to i32
  %147 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 16
  %148 = load i16, ptr %147, align 2
  %149 = zext i16 %148 to i32
  %150 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 18
  %151 = load i16, ptr %150, align 2
  %152 = zext i16 %151 to i32
  %153 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 13
  %154 = load i16, ptr %153, align 4
  %155 = zext i16 %154 to i32
  %156 = xor i32 %146, -1
  %157 = add nsw i32 %152, %156
  %158 = shl i32 %157, 16
  %159 = xor i32 %155, -1
  %160 = add nsw i32 %159, %149
  %161 = shl nsw i32 %160, 8
  %162 = xor i32 %149, -1
  %163 = add nsw i32 %162, %146
  %164 = or i32 %158, %163
  %165 = or i32 %164, %161
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %166 = load ptr, ptr %59, align 4
  %167 = load i32, ptr %58, align 4
  %168 = getelementptr i8, ptr %166, i32 %167
  %169 = getelementptr i8, ptr %168, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %165) #6, !srcloc !13
  br label %170

170:                                              ; preds = %103, %92, %88, %78
  %171 = getelementptr inbounds %struct.fimd_driver_data, ptr %58, i32 0, i32 6
  %172 = load i16, ptr %171, align 4
  %173 = and i16 %172, 8
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %176 = getelementptr inbounds %struct.fimd_context, ptr %54, i32 0, i32 13
  %177 = load i32, ptr %176, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %177) #6, !srcloc !13
  br label %178

178:                                              ; preds = %175, %170
  %179 = getelementptr inbounds %struct.fimd_context, ptr %54, i32 0, i32 9
  %180 = load ptr, ptr %179, align 8
  %181 = icmp eq ptr %180, null
  br i1 %181, label %192, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.fimd_driver_data, ptr %58, i32 0, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.fimd_driver_data, ptr %58, i32 0, i32 3
  %186 = load i32, ptr %185, align 4
  %187 = shl nuw i32 1, %186
  %188 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %180, i32 noundef %184, i32 noundef %187, i32 noundef %187, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %182
  %191 = load ptr, ptr %54, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %191, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28) #6
  br label %275

192:                                              ; preds = %182, %178
  %193 = load i16, ptr %171, align 4
  %194 = and i16 %193, 32
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %209, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr %179, align 8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %209, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.fimd_driver_data, ptr %58, i32 0, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds %struct.fimd_driver_data, ptr %58, i32 0, i32 4
  %203 = load i32, ptr %202, align 4
  %204 = shl nuw i32 1, %203
  %205 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %197, i32 noundef %201, i32 noundef %204, i32 noundef %204, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %199
  %208 = load ptr, ptr %54, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %208, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.29) #6
  br label %275

209:                                              ; preds = %199, %196, %192
  %210 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 6
  %211 = load i16, ptr %210, align 2
  %212 = zext i16 %211 to i32
  %213 = add nsw i32 %212, -1
  %214 = shl nsw i32 %213, 11
  %215 = and i32 %214, 4192256
  %216 = getelementptr inbounds %struct.drm_crtc_state, ptr %56, i32 0, i32 7, i32 1
  %217 = load i16, ptr %216, align 4
  %218 = zext i16 %217 to i32
  %219 = add nsw i32 %218, -1
  %220 = and i32 %219, 2047
  %221 = or i32 %215, %220
  %222 = shl nsw i32 %213, 12
  %223 = and i32 %222, 8388608
  %224 = or i32 %221, %223
  %225 = shl nsw i32 %219, 11
  %226 = and i32 %225, 4194304
  %227 = or i32 %224, %226
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %228 = load ptr, ptr %59, align 4
  %229 = load i32, ptr %58, align 4
  %230 = getelementptr i8, ptr %228, i32 %229
  %231 = getelementptr i8, ptr %230, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %227) #6, !srcloc !13
  %232 = load ptr, ptr %59, align 4
  %233 = load ptr, ptr %57, align 8
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr i8, ptr %232, i32 %234
  %236 = getelementptr inbounds %struct.fimd_driver_data, ptr %233, i32 0, i32 5
  %237 = load i32, ptr %236, align 4
  %238 = getelementptr i8, ptr %235, i32 420
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %238) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !35
  %240 = icmp eq i32 %237, 2
  br i1 %240, label %241, label %254

241:                                              ; preds = %209
  %242 = and i32 %239, -2
  %243 = load ptr, ptr %57, align 8
  %244 = getelementptr inbounds %struct.fimd_driver_data, ptr %243, i32 0, i32 6
  %245 = load i16, ptr %244, align 4
  %246 = and i16 %245, 128
  %247 = icmp eq i16 %246, 0
  %248 = or i32 %242, 24
  %249 = select i1 %247, i32 %242, i32 %248
  %250 = and i16 %245, 256
  %251 = zext i16 %250 to i32
  %252 = shl nuw i32 %251, 23
  %253 = or i32 %252, %249
  br label %256

254:                                              ; preds = %209
  %255 = or i32 %239, 1
  br label %256

256:                                              ; preds = %254, %241
  %257 = phi i32 [ %255, %254 ], [ %253, %241 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %257) #6, !srcloc !13
  %258 = getelementptr inbounds %struct.fimd_context, ptr %54, i32 0, i32 11
  %259 = load i32, ptr %258, align 8
  %260 = load ptr, ptr %57, align 8
  %261 = getelementptr inbounds %struct.fimd_driver_data, ptr %260, i32 0, i32 6
  %262 = load i16, ptr %261, align 4
  %263 = and i16 %262, 2
  %264 = icmp eq i16 %263, 0
  %265 = select i1 %264, i32 3, i32 7
  %266 = or i32 %265, %259
  %267 = getelementptr inbounds %struct.fimd_context, ptr %54, i32 0, i32 21
  %268 = load i32, ptr %267, align 4
  %269 = icmp ugt i32 %268, 1
  %270 = shl i32 %268, 6
  %271 = add i32 %270, -48
  %272 = select i1 %269, i32 %271, i32 0
  %273 = or i32 %266, %272
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %274 = load ptr, ptr %59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 %273) #6, !srcloc !13
  br label %275

275:                                              ; preds = %256, %207, %190, %101, %70, %66, %50, %17, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimd_atomic_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 16
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %92

7:                                                ; preds = %39, %1
  %8 = phi i8 [ %44, %39 ], [ 0, %1 ]
  %9 = phi ptr [ %42, %39 ], [ %3, %1 ]
  %10 = phi i32 [ %40, %39 ], [ 0, %1 ]
  %11 = getelementptr %struct.fimd_context, ptr %3, i32 0, i32 4, i32 %10, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i8 %8, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.fimd_context, ptr %9, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = shl i32 %12, 2
  %18 = add i32 %17, 32
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %21 = and i32 %20, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr i8, ptr %22, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !13
  %24 = getelementptr inbounds %struct.fimd_context, ptr %9, i32 0, i32 22
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.fimd_driver_data, ptr %25, i32 0, i32 6
  %27 = load i16, ptr %26, align 4
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %14
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr i8, ptr %31, i32 52
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  %34 = shl nuw i32 1, %12
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %37 = load ptr, ptr %15, align 4
  %38 = getelementptr i8, ptr %37, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #6, !srcloc !13
  br label %39

39:                                               ; preds = %30, %14, %7
  %40 = add nuw nsw i32 %10, 1
  %41 = icmp eq i32 %40, 5
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct.fimd_context, ptr %42, i32 0, i32 16
  %44 = load i8, ptr %43, align 1, !range !9
  br i1 %41, label %45, label %7

45:                                               ; preds = %39
  %46 = icmp eq i8 %44, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.fimd_context, ptr %42, i32 0, i32 10
  %49 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %48) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.fimd_context, ptr %42, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 304
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %56 = getelementptr inbounds %struct.fimd_context, ptr %42, i32 0, i32 15
  %57 = load i8, ptr %56, align 8, !range !9
  %58 = icmp eq i8 %57, 0
  %59 = and i32 %55, -917506
  %60 = or i32 %59, 655361
  %61 = and i32 %55, -126978
  %62 = or i32 %61, 102401
  %63 = select i1 %58, i32 %62, i32 %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %64 = load ptr, ptr %52, align 4
  %65 = getelementptr i8, ptr %64, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #6, !srcloc !13
  br label %66

66:                                               ; preds = %51, %47, %45
  tail call fastcc void @fimd_wait_for_vblank(ptr noundef %0)
  %67 = load ptr, ptr %2, align 8
  %68 = getelementptr inbounds %struct.fimd_context, ptr %67, i32 0, i32 16
  %69 = load i8, ptr %68, align 1, !range !9
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.fimd_context, ptr %67, i32 0, i32 10
  %73 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %72) #6
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.fimd_context, ptr %67, i32 0, i32 8
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 304
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !25
  %80 = getelementptr inbounds %struct.fimd_context, ptr %67, i32 0, i32 15
  %81 = load i8, ptr %80, align 8, !range !9
  %82 = icmp eq i8 %81, 0
  %83 = select i1 %82, i32 -4098, i32 -917506
  %84 = and i32 %83, %79
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %85 = load ptr, ptr %76, align 4
  %86 = getelementptr i8, ptr %85, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #6, !srcloc !13
  br label %87

87:                                               ; preds = %75, %71, %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %88 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 8
  %89 = load ptr, ptr %88, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 0) #6, !srcloc !13
  %90 = load ptr, ptr %3, align 8
  %91 = tail call i32 @__pm_runtime_idle(ptr noundef %90, i32 noundef 4) #6
  store i8 1, ptr %4, align 1
  br label %92

92:                                               ; preds = %87, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimd_enable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 16
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 10
  %9 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 304
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  %16 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 15
  %17 = load i8, ptr %16, align 8, !range !9
  %18 = icmp eq i8 %17, 0
  %19 = and i32 %15, -917506
  %20 = or i32 %19, 655361
  %21 = and i32 %15, -126978
  %22 = or i32 %21, 102401
  %23 = select i1 %18, i32 %22, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr i8, ptr %24, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #6, !srcloc !13
  br label %26

26:                                               ; preds = %11, %7, %1
  %27 = phi i32 [ -1, %1 ], [ 0, %11 ], [ 0, %7 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimd_disable_vblank(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 16
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 10
  %9 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %8) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 304
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !25
  %16 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 15
  %17 = load i8, ptr %16, align 8, !range !9
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 -4098, i32 -917506
  %20 = and i32 %19, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr i8, ptr %21, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #6, !srcloc !13
  br label %23

23:                                               ; preds = %11, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fimd_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %4 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.31) #6
  br label %33

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 15
  %12 = load i8, ptr %11, align 8, !range !9
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 1000, i32 2000
  %15 = mul i32 %14, %6
  %16 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @clk_get_rate(ptr noundef %17) #6
  %19 = shl i32 %18, 1
  %20 = icmp ult i32 %19, %15
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %22, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.32, i32 noundef %18, i32 noundef %15) #6
  br label %33

23:                                               ; preds = %10
  %24 = lshr exact i32 %15, 1
  %25 = add i32 %24, %18
  %26 = udiv i32 %25, %15
  %27 = icmp ugt i32 %26, 511
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.33, i32 noundef %15) #6
  br label %33

30:                                               ; preds = %23
  %31 = tail call i32 @llvm.umin.i32(i32 %26, i32 255)
  %32 = getelementptr inbounds %struct.fimd_context, ptr %5, i32 0, i32 21
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %28, %21, %8
  %34 = phi i32 [ -22, %8 ], [ -22, %21 ], [ -22, %28 ], [ 0, %30 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimd_atomic_begin(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 16
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %74

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 22
  %9 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 8
  %10 = load ptr, ptr %8, align 8
  %11 = getelementptr inbounds %struct.fimd_driver_data, ptr %10, i32 0, i32 6
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %14, i32 2048, i32 1024
  %16 = select i1 %14, i32 12, i32 52
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %20 = or i32 %15, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #6, !srcloc !13
  %23 = load ptr, ptr %8, align 8
  %24 = getelementptr inbounds %struct.fimd_driver_data, ptr %23, i32 0, i32 6
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  %28 = select i1 %27, i32 12, i32 52
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr i8, ptr %29, i32 %28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %32 = or i32 %31, 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr i8, ptr %33, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #6, !srcloc !13
  %35 = load ptr, ptr %8, align 8
  %36 = getelementptr inbounds %struct.fimd_driver_data, ptr %35, i32 0, i32 6
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %39, i32 2048, i32 4096
  %41 = select i1 %39, i32 12, i32 52
  %42 = load ptr, ptr %9, align 4
  %43 = getelementptr i8, ptr %42, i32 %41
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %45 = or i32 %40, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr i8, ptr %46, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #6, !srcloc !13
  %48 = load ptr, ptr %8, align 8
  %49 = getelementptr inbounds %struct.fimd_driver_data, ptr %48, i32 0, i32 6
  %50 = load i16, ptr %49, align 4
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  %53 = select i1 %52, i32 2048, i32 8192
  %54 = select i1 %52, i32 12, i32 52
  %55 = load ptr, ptr %9, align 4
  %56 = getelementptr i8, ptr %55, i32 %54
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %58 = or i32 %53, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %59 = load ptr, ptr %9, align 4
  %60 = getelementptr i8, ptr %59, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #6, !srcloc !13
  %61 = load ptr, ptr %8, align 8
  %62 = getelementptr inbounds %struct.fimd_driver_data, ptr %61, i32 0, i32 6
  %63 = load i16, ptr %62, align 4
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  %66 = select i1 %65, i32 2048, i32 16384
  %67 = select i1 %65, i32 12, i32 52
  %68 = load ptr, ptr %9, align 4
  %69 = getelementptr i8, ptr %68, i32 %67
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %71 = or i32 %66, %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %72 = load ptr, ptr %9, align 4
  %73 = getelementptr i8, ptr %72, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #6, !srcloc !13
  br label %74

74:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimd_update_plane(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_plane, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.exynos_drm_plane, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fimd_context, ptr %6, i32 0, i32 16
  %10 = load i8, ptr %9, align 1, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %250

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_format_info, ptr %18, i32 0, i32 3
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %4, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %21
  %25 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %4, i32 0, i32 2, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, %16
  %28 = add i32 %27, %24
  %29 = tail call i32 @exynos_drm_fb_dma_addr(ptr noundef %14, i32 noundef 0) #6
  %30 = add i32 %28, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %31 = getelementptr inbounds %struct.fimd_context, ptr %6, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = shl i32 %8, 3
  %34 = add i32 %33, 160
  %35 = getelementptr i8, ptr %32, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %30) #6, !srcloc !13
  %36 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %4, i32 0, i32 1
  %37 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %4, i32 0, i32 1, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %38, %16
  %40 = add i32 %39, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %41 = load ptr, ptr %31, align 4
  %42 = add i32 %33, 208
  %43 = getelementptr i8, ptr %41, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %40) #6, !srcloc !13
  %44 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %44, i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef %30, i32 noundef %40, i32 noundef %39) #6
  %45 = load ptr, ptr %6, align 8
  %46 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %4, i32 0, i32 1, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %37, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %45, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %47, i32 noundef %48) #6
  %49 = load i32, ptr %46, align 4
  %50 = mul i32 %49, %21
  %51 = sub i32 %16, %50
  %52 = shl i32 %51, 13
  %53 = and i32 %52, 67100672
  %54 = and i32 %50, 8191
  %55 = shl i32 %51, 14
  %56 = and i32 %55, 134217728
  %57 = shl i32 %50, 13
  %58 = and i32 %57, 67108864
  %59 = or i32 %58, %54
  %60 = or i32 %59, %53
  %61 = or i32 %60, %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %62 = load ptr, ptr %31, align 4
  %63 = shl i32 %8, 2
  %64 = add i32 %63, 256
  %65 = getelementptr i8, ptr %62, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %61) #6, !srcloc !13
  %66 = load i32, ptr %36, align 4
  %67 = shl i32 %66, 11
  %68 = and i32 %67, 4192256
  %69 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %4, i32 0, i32 1, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 2047
  %72 = or i32 %68, %71
  %73 = shl i32 %66, 12
  %74 = and i32 %73, 8388608
  %75 = or i32 %72, %74
  %76 = shl i32 %70, 11
  %77 = and i32 %76, 4194304
  %78 = or i32 %75, %77
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %79 = load ptr, ptr %31, align 4
  %80 = shl i32 %8, 4
  %81 = add i32 %80, 64
  %82 = getelementptr i8, ptr %79, i32 %81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %78) #6, !srcloc !13
  %83 = load i32, ptr %36, align 4
  %84 = load i32, ptr %46, align 4
  %85 = add i32 %84, %83
  %86 = icmp eq i32 %85, 0
  %87 = add i32 %85, -1
  %88 = select i1 %86, i32 0, i32 %87
  %89 = load i32, ptr %69, align 4
  %90 = load i32, ptr %37, align 4
  %91 = add i32 %90, %89
  %92 = icmp eq i32 %91, 0
  %93 = add i32 %91, -1
  %94 = select i1 %92, i32 0, i32 %93
  %95 = shl i32 %88, 11
  %96 = and i32 %95, 4192256
  %97 = and i32 %94, 2047
  %98 = shl i32 %88, 12
  %99 = and i32 %98, 8388608
  %100 = shl i32 %94, 11
  %101 = and i32 %100, 4194304
  %102 = or i32 %99, %96
  %103 = or i32 %102, %97
  %104 = or i32 %103, %101
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %105 = load ptr, ptr %31, align 4
  %106 = add i32 %80, 68
  %107 = getelementptr i8, ptr %105, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %104) #6, !srcloc !13
  %108 = load ptr, ptr %6, align 8
  %109 = load i32, ptr %36, align 4
  %110 = load i32, ptr %69, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %108, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef %109, i32 noundef %110, i32 noundef %88, i32 noundef %94) #6
  %111 = add i32 %8, -5
  %112 = icmp ult i32 %111, -2
  br i1 %112, label %113, label %123

113:                                              ; preds = %12
  %114 = icmp eq i32 %8, 0
  %115 = select i1 %114, i32 72, i32 76
  %116 = add i32 %115, %80
  %117 = load i32, ptr %46, align 4
  %118 = load i32, ptr %37, align 4
  %119 = mul i32 %118, %117
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %120 = load ptr, ptr %31, align 4
  %121 = getelementptr i8, ptr %120, i32 %116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #6, !srcloc !13
  %122 = load ptr, ptr %6, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %122, i32 noundef 4, ptr noundef nonnull @.str.37, i32 noundef %119) #6
  br label %123

123:                                              ; preds = %113, %12
  %124 = getelementptr inbounds %struct.exynos_drm_plane_state, ptr %4, i32 0, i32 2, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr %struct.fimd_context, ptr %6, i32 0, i32 4, i32 %8, i32 0, i32 19
  %127 = load ptr, ptr %126, align 4
  %128 = load ptr, ptr %17, align 8
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.drm_plane_state, ptr %127, i32 0, i32 12
  %131 = load i16, ptr %130, align 4
  %132 = zext i16 %131 to i32
  %133 = getelementptr inbounds %struct.drm_format_info, ptr %128, i32 0, i32 8
  %134 = load i8, ptr %133, align 4, !range !9
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %123
  %137 = getelementptr inbounds %struct.drm_plane_state, ptr %127, i32 0, i32 13
  %138 = load i16, ptr %137, align 2
  %139 = zext i16 %138 to i32
  br label %140

140:                                              ; preds = %136, %123
  %141 = phi i32 [ %139, %136 ], [ 2, %123 ]
  %142 = getelementptr inbounds %struct.fimd_context, ptr %6, i32 0, i32 22
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.fimd_driver_data, ptr %143, i32 0, i32 6
  %145 = load i16, ptr %144, align 4
  %146 = and i16 %145, 4
  %147 = icmp eq i16 %146, 0
  %148 = icmp ne i32 %8, 0
  %149 = or i1 %148, %147
  %150 = icmp eq i32 %129, 875713089
  %151 = select i1 %150, i32 875713112, i32 %129
  %152 = select i1 %149, i32 %129, i32 %151
  switch i32 %152, label %156 [
    i32 538982467, label %157
    i32 892424792, label %153
    i32 909199186, label %154
    i32 875713112, label %155
  ]

153:                                              ; preds = %140
  br label %157

154:                                              ; preds = %140
  br label %157

155:                                              ; preds = %140
  br label %157

156:                                              ; preds = %140
  br label %157

157:                                              ; preds = %156, %155, %154, %153, %140
  %158 = phi i32 [ 32821, %156 ], [ 32813, %155 ], [ 65557, %154 ], [ 65565, %153 ], [ 131597, %140 ]
  %159 = icmp slt i32 %125, 128
  %160 = and i32 %158, 229437
  %161 = or i32 %160, 1024
  %162 = select i1 %159, i32 %161, i32 %158
  %163 = add i32 %63, 32
  %164 = load ptr, ptr %31, align 4
  %165 = getelementptr i8, ptr %164, i32 %163
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !47
  %167 = and i32 %166, 194
  %168 = or i32 %167, %162
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %169 = load ptr, ptr %31, align 4
  %170 = getelementptr i8, ptr %169, i32 %163
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %168) #6, !srcloc !13
  br i1 %148, label %171, label %224

171:                                              ; preds = %157
  %172 = icmp eq i32 %141, 2
  %173 = select i1 %172, i32 0, i32 194
  %174 = lshr i32 %132, 12
  %175 = lshr i32 %132, 8
  %176 = and i32 %175, 15
  %177 = load ptr, ptr %31, align 4
  %178 = getelementptr i8, ptr %177, i32 %163
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %178) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !47
  %180 = and i32 %179, -195
  %181 = or i32 %180, %173
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %182 = load ptr, ptr %31, align 4
  %183 = getelementptr i8, ptr %182, i32 %163
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %181) #6, !srcloc !13
  %184 = shl nuw nsw i32 %174, 20
  %185 = shl nuw nsw i32 %174, 16
  %186 = and i32 %132, 61440
  %187 = or i32 %185, %186
  %188 = or i32 %187, %184
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %189 = load ptr, ptr %31, align 4
  %190 = add i32 %80, 72
  %191 = getelementptr i8, ptr %189, i32 %190
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 %188) #6, !srcloc !13
  %192 = mul nuw nsw i32 %176, 65793
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %193 = load ptr, ptr %31, align 4
  %194 = add i32 %33, 540
  %195 = getelementptr i8, ptr %193, i32 %194
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %192) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %196 = load ptr, ptr %31, align 4
  %197 = add i32 %33, 544
  %198 = getelementptr i8, ptr %196, i32 %197
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 0) #6, !srcloc !13
  %199 = load ptr, ptr %31, align 4
  %200 = getelementptr i8, ptr %199, i32 608
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %200) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !47
  %202 = or i32 %201, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %203 = load ptr, ptr %31, align 4
  %204 = getelementptr i8, ptr %203, i32 608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #6, !srcloc !13
  %205 = add nsw i32 %141, -1
  %206 = icmp ult i32 %205, 2
  %207 = icmp eq i16 %131, -1
  %208 = select i1 %207, i32 193, i32 198
  %209 = select i1 %206, i32 194, i32 %208
  %210 = add i32 %63, 576
  %211 = load ptr, ptr %31, align 4
  %212 = getelementptr i8, ptr %211, i32 %210
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %212) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !47
  %214 = and i32 %213, -976
  %215 = or i32 %214, %209
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %216 = load ptr, ptr %31, align 4
  %217 = getelementptr i8, ptr %216, i32 %210
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %215) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %218 = load ptr, ptr %31, align 4
  %219 = add i32 %33, 312
  %220 = getelementptr i8, ptr %218, i32 %219
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 -117440513) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %221 = load ptr, ptr %31, align 4
  %222 = add i32 %33, 316
  %223 = getelementptr i8, ptr %221, i32 %222
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 -1) #6, !srcloc !13
  br label %224

224:                                              ; preds = %171, %157
  %225 = load ptr, ptr %31, align 4
  %226 = getelementptr i8, ptr %225, i32 %163
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %226) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %228 = or i32 %227, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %229 = load ptr, ptr %31, align 4
  %230 = getelementptr i8, ptr %229, i32 %163
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %228) #6, !srcloc !13
  %231 = load ptr, ptr %142, align 8
  %232 = getelementptr inbounds %struct.fimd_driver_data, ptr %231, i32 0, i32 6
  %233 = load i16, ptr %232, align 4
  %234 = and i16 %233, 1
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %224
  %237 = load ptr, ptr %31, align 4
  %238 = getelementptr i8, ptr %237, i32 52
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %238) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  %240 = shl nuw i32 1, %8
  %241 = or i32 %239, %240
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %242 = load ptr, ptr %31, align 4
  %243 = getelementptr i8, ptr %242, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %243, i32 %241) #6, !srcloc !13
  br label %244

244:                                              ; preds = %236, %224
  %245 = getelementptr inbounds %struct.fimd_context, ptr %6, i32 0, i32 15
  %246 = load i8, ptr %245, align 8, !range !9
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.fimd_context, ptr %6, i32 0, i32 19
  store volatile i32 1, ptr %249, align 4
  br label %250

250:                                              ; preds = %248, %244, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimd_disable_plane(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.exynos_drm_plane, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fimd_context, ptr %4, i32 0, i32 16
  %8 = load i8, ptr %7, align 1, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fimd_context, ptr %4, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = shl i32 %6, 2
  %14 = add i32 %13, 32
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %17 = and i32 %16, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #6, !srcloc !13
  %20 = getelementptr inbounds %struct.fimd_context, ptr %4, i32 0, i32 22
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.fimd_driver_data, ptr %21, i32 0, i32 6
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %10
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr i8, ptr %27, i32 52
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  %30 = shl nuw i32 1, %6
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %33 = load ptr, ptr %11, align 4
  %34 = getelementptr i8, ptr %33, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #6, !srcloc !13
  br label %35

35:                                               ; preds = %26, %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimd_atomic_flush(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 16
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %74

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 22
  %9 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 8
  %10 = load ptr, ptr %8, align 8
  %11 = getelementptr inbounds %struct.fimd_driver_data, ptr %10, i32 0, i32 6
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %14, i32 12, i32 52
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %19 = select i1 %14, i32 -2049, i32 -1025
  %20 = and i32 %19, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #6, !srcloc !13
  %23 = load ptr, ptr %8, align 8
  %24 = getelementptr inbounds %struct.fimd_driver_data, ptr %23, i32 0, i32 6
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, 1
  %27 = icmp eq i16 %26, 0
  %28 = select i1 %27, i32 12, i32 52
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr i8, ptr %29, i32 %28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %32 = and i32 %31, -2049
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr i8, ptr %33, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #6, !srcloc !13
  %35 = load ptr, ptr %8, align 8
  %36 = getelementptr inbounds %struct.fimd_driver_data, ptr %35, i32 0, i32 6
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 1
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %39, i32 12, i32 52
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr i8, ptr %41, i32 %40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %44 = select i1 %39, i32 -2049, i32 -4097
  %45 = and i32 %44, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr i8, ptr %46, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #6, !srcloc !13
  %48 = load ptr, ptr %8, align 8
  %49 = getelementptr inbounds %struct.fimd_driver_data, ptr %48, i32 0, i32 6
  %50 = load i16, ptr %49, align 4
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  %53 = select i1 %52, i32 12, i32 52
  %54 = load ptr, ptr %9, align 4
  %55 = getelementptr i8, ptr %54, i32 %53
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %57 = select i1 %52, i32 -2049, i32 -8193
  %58 = and i32 %57, %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %59 = load ptr, ptr %9, align 4
  %60 = getelementptr i8, ptr %59, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #6, !srcloc !13
  %61 = load ptr, ptr %8, align 8
  %62 = getelementptr inbounds %struct.fimd_driver_data, ptr %61, i32 0, i32 6
  %63 = load i16, ptr %62, align 4
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  %66 = select i1 %65, i32 12, i32 52
  %67 = load ptr, ptr %9, align 4
  %68 = getelementptr i8, ptr %67, i32 %66
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !39
  %70 = select i1 %65, i32 -2049, i32 -16385
  %71 = and i32 %70, %69
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %72 = load ptr, ptr %9, align 4
  %73 = getelementptr i8, ptr %72, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #6, !srcloc !13
  tail call void @exynos_crtc_handle_event(ptr noundef %0) #6
  br label %74

74:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fimd_te_handler(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.fimd_driver_data, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %40, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #6, !srcloc !15
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 0, i32 -1, ptr elementtype(i32) %14) #6, !srcloc !16
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !17
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.fimd_context, ptr %21, i32 0, i32 22
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.fimd_context, ptr %21, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr %23, align 4
  %27 = getelementptr inbounds %struct.fimd_context, ptr %21, i32 0, i32 20
  %28 = load volatile i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %18
  %31 = getelementptr i8, ptr %25, i32 %26
  store volatile i32 1, ptr %27, align 4
  %32 = getelementptr i8, ptr %31, i32 420
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !54
  %34 = or i32 %33, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %34) #6, !srcloc !13
  %35 = getelementptr inbounds %struct.fimd_context, ptr %21, i32 0, i32 10
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store volatile i32 0, ptr %27, align 4
  br label %40

40:                                               ; preds = %39, %30, %18, %13, %7
  %41 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 18
  %42 = load volatile i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  store volatile i32 0, ptr %41, align 4
  %45 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %45, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 10
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %53) #6
  br label %55

55:                                               ; preds = %51, %46, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fimd_wait_for_vblank(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.exynos_drm_crtc, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.fimd_context, ptr %4, i32 0, i32 16
  %6 = load i8, ptr %5, align 1, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fimd_context, ptr %4, i32 0, i32 18
  store volatile i32 1, ptr %9, align 4
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #6
  %13 = getelementptr inbounds %struct.fimd_context, ptr %4, i32 0, i32 17
  %14 = call i32 @prepare_to_wait_event(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 2) #6
  %15 = load volatile i32, ptr %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  call void @finish_wait(ptr noundef %13, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  br label %34

18:                                               ; preds = %18, %12
  %19 = phi i32 [ %27, %18 ], [ 5, %12 ]
  %20 = call i32 @schedule_timeout(i32 noundef %19) #6
  %21 = call i32 @prepare_to_wait_event(ptr noundef %13, ptr noundef nonnull %2, i32 noundef 2) #6
  %22 = load volatile i32, ptr %9, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = icmp ne i32 %20, 0
  %26 = select i1 %23, i1 true, i1 %25
  %27 = select i1 %26, i32 %20, i32 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %24, i1 true, i1 %28
  br i1 %29, label %30, label %18

30:                                               ; preds = %18
  %31 = icmp eq i32 %27, 0
  call void @finish_wait(ptr noundef %13, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %33, i32 noundef 4, ptr noundef nonnull @.str.30) #6
  br label %34

34:                                               ; preds = %32, %30, %17, %8, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_fb_dma_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_crtc_handle_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_unregister_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_dpi_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_fimd_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_fimd_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ]
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.38, i32 noundef %13) #6
  br label %29

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.fimd_context, ptr %3, i32 0, i32 7
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @clk_prepare(ptr noundef %18) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = tail call i32 @clk_enable(ptr noundef %18) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %18) #6
  br label %25

25:                                               ; preds = %24, %16
  %26 = phi i32 [ %19, %16 ], [ %22, %24 ]
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.39, i32 noundef %26) #6
  br label %29

29:                                               ; preds = %28, %25, %21, %15
  %30 = phi i32 [ %13, %15 ], [ %26, %28 ], [ 0, %25 ], [ 0, %21 ]
  ret i32 %30
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 3958317}
!11 = !{i64 2155340904}
!12 = !{i64 2155341119}
!13 = !{i64 3957899}
!14 = !{i64 2147974290}
!15 = !{i64 472600, i64 2147962571, i64 2147962597, i64 2147962644, i64 2147962666, i64 2147962694, i64 2147962714}
!16 = !{i64 459169, i64 459194, i64 459216, i64 459232, i64 459244, i64 459264, i64 459288, i64 459304, i64 459316}
!17 = !{i64 2147974416}
!18 = !{i64 2155323933}
!19 = !{i64 2155321853}
!20 = !{i64 2155322099}
!21 = !{i64 2155322581}
!22 = !{i64 2155322806}
!23 = !{i64 2155318127}
!24 = !{i64 2155318415}
!25 = !{i64 2155319011}
!26 = !{i64 2155319251}
!27 = !{i64 2155340435}
!28 = !{i64 2155325663}
!29 = !{i64 2155326027}
!30 = !{i64 2155326551}
!31 = !{i64 2155326999}
!32 = !{i64 2155327439}
!33 = !{i64 2155327799}
!34 = !{i64 2155328625}
!35 = !{i64 2155325054}
!36 = !{i64 2155325302}
!37 = !{i64 2155329035}
!38 = !{i64 2155338079}
!39 = !{i64 2155333345}
!40 = !{i64 2155333528}
!41 = !{i64 2155333941}
!42 = !{i64 2155334382}
!43 = !{i64 2155335252}
!44 = !{i64 2155335829}
!45 = !{i64 2155336369}
!46 = !{i64 2155336945}
!47 = !{i64 2155317354}
!48 = !{i64 2155317537}
!49 = !{i64 2155329784}
!50 = !{i64 2155330263}
!51 = !{i64 2155330719}
!52 = !{i64 2155332370}
!53 = !{i64 2155332804}
!54 = !{i64 2155338549}
!55 = !{i64 2155338760}
