; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/dc.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/dc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.tegra_dc_soc_info = type { i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i8, i8, i8, i8 }
%struct.tegra_windowgroup_soc = type { i32, i32, ptr, i32 }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tegra_dc_state = type { %struct.drm_crtc_state, ptr, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.79 = type { i32, ptr }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_plane = type { %struct.drm_plane, ptr, i32, i32, ptr, ptr }
%struct.tegra_plane_state = type { %struct.drm_plane_state, [3 x ptr], [3 x i32], %struct.tegra_bo_tiling, i32, i32, i8, i8, [2 x %struct.tegra_plane_legacy_blending_state], i8, i32, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.tegra_bo_tiling = type { i32, i32, i32 }
%struct.tegra_plane_legacy_blending_state = type { i8, i8 }
%struct.tegra_core_opp_params = type { i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_drm = type { ptr, ptr, i8, %struct.mutex, %struct.drm_mm, %struct.anon.89, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.89 = type { %struct.iova_domain, i32, i32 }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.tegra_display_hub = type { %struct.drm_private_obj, %struct.host1x_client, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.73, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.73 = type { [4 x i8] }
%struct.tegra_dc_window = type { %struct.anon.87, %struct.anon.88, i32, [2 x i32], [3 x i32], i32, i8, i8, %struct.tegra_bo_tiling, i32, i32 }
%struct.anon.87 = type { i32, i32, i32, i32 }
%struct.anon.88 = type { i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }

@.str = private unnamed_addr constant [15 x i8] c"nvidia,outputs\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tegra-dc\00", align 1
@tegra_dc_of_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_dc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_dc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_dc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_dc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_dc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_dc_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_dc_soc_info }, %struct.of_device_id zeroinitializer], align 4
@tegra_dc_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @tegra_dc_probe, ptr @tegra_dc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_dc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__tracepoint_dc_writel = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to set DMA mask: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"failed to get reset\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to probe RGB output: %d\0A\00", align 1
@dc_client_ops = internal constant %struct.host1x_client_ops { ptr @tegra_dc_early_init, ptr @tegra_dc_init, ptr @tegra_dc_exit, ptr @tegra_dc_late_exit, ptr @tegra_dc_runtime_suspend, ptr @tegra_dc_runtime_resume }, align 4
@tegra_dc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"nvidia,head\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"missing \22nvidia,head\22 property\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"failed to allocate syncpoint\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"failed to attach to domain: %d\0A\00", align 1
@tegra_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @tegra_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @tegra_crtc_atomic_duplicate_state, ptr @tegra_crtc_atomic_destroy_state, ptr null, ptr null, ptr @tegra_dc_late_register, ptr @tegra_dc_early_unregister, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dc_get_vblank_counter, ptr @tegra_dc_enable_vblank, ptr @tegra_dc_disable_vblank, ptr null }, align 4
@tegra_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_crtc_atomic_check, ptr @tegra_crtc_atomic_begin, ptr @tegra_crtc_atomic_flush, ptr @tegra_crtc_atomic_enable, ptr @tegra_crtc_atomic_disable, ptr null }, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"failed to initialize RGB output: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"failed to request IRQ#%u: %d\0A\00", align 1
@tegra_plane_funcs = external dso_local constant %struct.drm_plane_funcs, align 4
@tegra_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr @tegra_plane_prepare_fb, ptr @tegra_plane_cleanup_fb, ptr @tegra_plane_atomic_check, ptr @tegra_plane_atomic_update, ptr @tegra_plane_atomic_disable, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [40 x i8] c"failed to create rotation property: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.18 = private unnamed_addr constant [44 x i8] c"hardware doesn't support block linear mode\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"unsupported UV-plane configuration\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"drivers/gpu/drm/tegra/dc.c\00", align 1
@compute_dda_inc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_dc_readl = external dso_local global %struct.tracepoint, align 4
@tegra_legacy_cursor_plane_formats = internal constant [1 x i32] [i32 875708754], align 4
@tegra_cursor_plane_formats = internal constant [1 x i32] [i32 875713089], align 4
@linear_modifiers = internal constant [2 x i64] [i64 0, i64 72057594037927935], align 8
@tegra_cursor_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr @tegra_plane_prepare_fb, ptr @tegra_plane_cleanup_fb, ptr @tegra_cursor_atomic_check, ptr @tegra_cursor_atomic_update, ptr @tegra_cursor_atomic_disable, ptr @tegra_cursor_atomic_async_check, ptr @tegra_cursor_atomic_async_update }, align 4
@.str.22 = private unnamed_addr constant [33 x i8] c"cursor size %ux%u not supported\0A\00", align 1
@debugfs_files = internal global [3 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.23, ptr @tegra_dc_show_regs, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.24, ptr @tegra_dc_show_crc, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.25, ptr @tegra_dc_show_stats, i32 0, ptr null }], align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"crc\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@tegra_dc_regs = internal unnamed_addr constant [212 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.27, i32 0 }, %struct.debugfs_reg32 { ptr @.str.28, i32 1 }, %struct.debugfs_reg32 { ptr @.str.29, i32 2 }, %struct.debugfs_reg32 { ptr @.str.30, i32 8 }, %struct.debugfs_reg32 { ptr @.str.31, i32 9 }, %struct.debugfs_reg32 { ptr @.str.32, i32 10 }, %struct.debugfs_reg32 { ptr @.str.33, i32 16 }, %struct.debugfs_reg32 { ptr @.str.34, i32 17 }, %struct.debugfs_reg32 { ptr @.str.35, i32 18 }, %struct.debugfs_reg32 { ptr @.str.36, i32 24 }, %struct.debugfs_reg32 { ptr @.str.37, i32 25 }, %struct.debugfs_reg32 { ptr @.str.38, i32 26 }, %struct.debugfs_reg32 { ptr @.str.39, i32 40 }, %struct.debugfs_reg32 { ptr @.str.40, i32 49 }, %struct.debugfs_reg32 { ptr @.str.41, i32 50 }, %struct.debugfs_reg32 { ptr @.str.42, i32 51 }, %struct.debugfs_reg32 { ptr @.str.43, i32 54 }, %struct.debugfs_reg32 { ptr @.str.44, i32 55 }, %struct.debugfs_reg32 { ptr @.str.45, i32 56 }, %struct.debugfs_reg32 { ptr @.str.46, i32 57 }, %struct.debugfs_reg32 { ptr @.str.47, i32 58 }, %struct.debugfs_reg32 { ptr @.str.48, i32 59 }, %struct.debugfs_reg32 { ptr @.str.49, i32 60 }, %struct.debugfs_reg32 { ptr @.str.50, i32 61 }, %struct.debugfs_reg32 { ptr @.str.51, i32 62 }, %struct.debugfs_reg32 { ptr @.str.52, i32 64 }, %struct.debugfs_reg32 { ptr @.str.53, i32 65 }, %struct.debugfs_reg32 { ptr @.str.54, i32 66 }, %struct.debugfs_reg32 { ptr @.str.55, i32 67 }, %struct.debugfs_reg32 { ptr @.str.56, i32 768 }, %struct.debugfs_reg32 { ptr @.str.57, i32 769 }, %struct.debugfs_reg32 { ptr @.str.58, i32 770 }, %struct.debugfs_reg32 { ptr @.str.59, i32 771 }, %struct.debugfs_reg32 { ptr @.str.60, i32 772 }, %struct.debugfs_reg32 { ptr @.str.61, i32 773 }, %struct.debugfs_reg32 { ptr @.str.62, i32 774 }, %struct.debugfs_reg32 { ptr @.str.63, i32 775 }, %struct.debugfs_reg32 { ptr @.str.64, i32 776 }, %struct.debugfs_reg32 { ptr @.str.65, i32 777 }, %struct.debugfs_reg32 { ptr @.str.66, i32 778 }, %struct.debugfs_reg32 { ptr @.str.67, i32 779 }, %struct.debugfs_reg32 { ptr @.str.68, i32 780 }, %struct.debugfs_reg32 { ptr @.str.69, i32 781 }, %struct.debugfs_reg32 { ptr @.str.70, i32 782 }, %struct.debugfs_reg32 { ptr @.str.71, i32 783 }, %struct.debugfs_reg32 { ptr @.str.72, i32 784 }, %struct.debugfs_reg32 { ptr @.str.73, i32 785 }, %struct.debugfs_reg32 { ptr @.str.74, i32 786 }, %struct.debugfs_reg32 { ptr @.str.75, i32 787 }, %struct.debugfs_reg32 { ptr @.str.76, i32 788 }, %struct.debugfs_reg32 { ptr @.str.77, i32 789 }, %struct.debugfs_reg32 { ptr @.str.78, i32 790 }, %struct.debugfs_reg32 { ptr @.str.79, i32 791 }, %struct.debugfs_reg32 { ptr @.str.80, i32 792 }, %struct.debugfs_reg32 { ptr @.str.81, i32 793 }, %struct.debugfs_reg32 { ptr @.str.82, i32 794 }, %struct.debugfs_reg32 { ptr @.str.83, i32 795 }, %struct.debugfs_reg32 { ptr @.str.84, i32 796 }, %struct.debugfs_reg32 { ptr @.str.85, i32 797 }, %struct.debugfs_reg32 { ptr @.str.86, i32 798 }, %struct.debugfs_reg32 { ptr @.str.87, i32 799 }, %struct.debugfs_reg32 { ptr @.str.88, i32 800 }, %struct.debugfs_reg32 { ptr @.str.89, i32 801 }, %struct.debugfs_reg32 { ptr @.str.90, i32 802 }, %struct.debugfs_reg32 { ptr @.str.91, i32 803 }, %struct.debugfs_reg32 { ptr @.str.92, i32 804 }, %struct.debugfs_reg32 { ptr @.str.93, i32 805 }, %struct.debugfs_reg32 { ptr @.str.94, i32 806 }, %struct.debugfs_reg32 { ptr @.str.95, i32 807 }, %struct.debugfs_reg32 { ptr @.str.96, i32 808 }, %struct.debugfs_reg32 { ptr @.str.97, i32 809 }, %struct.debugfs_reg32 { ptr @.str.98, i32 1024 }, %struct.debugfs_reg32 { ptr @.str.99, i32 1025 }, %struct.debugfs_reg32 { ptr @.str.100, i32 1026 }, %struct.debugfs_reg32 { ptr @.str.101, i32 1027 }, %struct.debugfs_reg32 { ptr @.str.102, i32 1028 }, %struct.debugfs_reg32 { ptr @.str.103, i32 1029 }, %struct.debugfs_reg32 { ptr @.str.104, i32 1030 }, %struct.debugfs_reg32 { ptr @.str.105, i32 1031 }, %struct.debugfs_reg32 { ptr @.str.106, i32 1032 }, %struct.debugfs_reg32 { ptr @.str.107, i32 1033 }, %struct.debugfs_reg32 { ptr @.str.108, i32 1034 }, %struct.debugfs_reg32 { ptr @.str.109, i32 1035 }, %struct.debugfs_reg32 { ptr @.str.110, i32 1036 }, %struct.debugfs_reg32 { ptr @.str.111, i32 1037 }, %struct.debugfs_reg32 { ptr @.str.112, i32 1038 }, %struct.debugfs_reg32 { ptr @.str.113, i32 1039 }, %struct.debugfs_reg32 { ptr @.str.114, i32 1040 }, %struct.debugfs_reg32 { ptr @.str.115, i32 1041 }, %struct.debugfs_reg32 { ptr @.str.116, i32 1042 }, %struct.debugfs_reg32 { ptr @.str.117, i32 1043 }, %struct.debugfs_reg32 { ptr @.str.118, i32 1044 }, %struct.debugfs_reg32 { ptr @.str.119, i32 1045 }, %struct.debugfs_reg32 { ptr @.str.120, i32 1046 }, %struct.debugfs_reg32 { ptr @.str.121, i32 1047 }, %struct.debugfs_reg32 { ptr @.str.122, i32 1048 }, %struct.debugfs_reg32 { ptr @.str.123, i32 1049 }, %struct.debugfs_reg32 { ptr @.str.124, i32 1050 }, %struct.debugfs_reg32 { ptr @.str.125, i32 1051 }, %struct.debugfs_reg32 { ptr @.str.126, i32 1052 }, %struct.debugfs_reg32 { ptr @.str.127, i32 1053 }, %struct.debugfs_reg32 { ptr @.str.128, i32 1054 }, %struct.debugfs_reg32 { ptr @.str.129, i32 1055 }, %struct.debugfs_reg32 { ptr @.str.130, i32 1056 }, %struct.debugfs_reg32 { ptr @.str.131, i32 1057 }, %struct.debugfs_reg32 { ptr @.str.132, i32 1058 }, %struct.debugfs_reg32 { ptr @.str.133, i32 1059 }, %struct.debugfs_reg32 { ptr @.str.134, i32 1060 }, %struct.debugfs_reg32 { ptr @.str.135, i32 1061 }, %struct.debugfs_reg32 { ptr @.str.136, i32 1062 }, %struct.debugfs_reg32 { ptr @.str.137, i32 1063 }, %struct.debugfs_reg32 { ptr @.str.138, i32 1064 }, %struct.debugfs_reg32 { ptr @.str.139, i32 1065 }, %struct.debugfs_reg32 { ptr @.str.140, i32 1066 }, %struct.debugfs_reg32 { ptr @.str.141, i32 1067 }, %struct.debugfs_reg32 { ptr @.str.142, i32 1068 }, %struct.debugfs_reg32 { ptr @.str.143, i32 1069 }, %struct.debugfs_reg32 { ptr @.str.144, i32 1070 }, %struct.debugfs_reg32 { ptr @.str.145, i32 1071 }, %struct.debugfs_reg32 { ptr @.str.146, i32 1072 }, %struct.debugfs_reg32 { ptr @.str.147, i32 1073 }, %struct.debugfs_reg32 { ptr @.str.148, i32 1074 }, %struct.debugfs_reg32 { ptr @.str.149, i32 1075 }, %struct.debugfs_reg32 { ptr @.str.150, i32 1076 }, %struct.debugfs_reg32 { ptr @.str.151, i32 1077 }, %struct.debugfs_reg32 { ptr @.str.152, i32 1078 }, %struct.debugfs_reg32 { ptr @.str.153, i32 1079 }, %struct.debugfs_reg32 { ptr @.str.154, i32 1080 }, %struct.debugfs_reg32 { ptr @.str.155, i32 1081 }, %struct.debugfs_reg32 { ptr @.str.156, i32 1084 }, %struct.debugfs_reg32 { ptr @.str.157, i32 1085 }, %struct.debugfs_reg32 { ptr @.str.158, i32 1086 }, %struct.debugfs_reg32 { ptr @.str.159, i32 1087 }, %struct.debugfs_reg32 { ptr @.str.160, i32 1088 }, %struct.debugfs_reg32 { ptr @.str.161, i32 1089 }, %struct.debugfs_reg32 { ptr @.str.162, i32 1090 }, %struct.debugfs_reg32 { ptr @.str.163, i32 1091 }, %struct.debugfs_reg32 { ptr @.str.164, i32 1092 }, %struct.debugfs_reg32 { ptr @.str.165, i32 1093 }, %struct.debugfs_reg32 { ptr @.str.166, i32 1094 }, %struct.debugfs_reg32 { ptr @.str.167, i32 1152 }, %struct.debugfs_reg32 { ptr @.str.168, i32 1153 }, %struct.debugfs_reg32 { ptr @.str.169, i32 1154 }, %struct.debugfs_reg32 { ptr @.str.170, i32 1155 }, %struct.debugfs_reg32 { ptr @.str.171, i32 1156 }, %struct.debugfs_reg32 { ptr @.str.172, i32 1216 }, %struct.debugfs_reg32 { ptr @.str.173, i32 1217 }, %struct.debugfs_reg32 { ptr @.str.174, i32 1218 }, %struct.debugfs_reg32 { ptr @.str.175, i32 1219 }, %struct.debugfs_reg32 { ptr @.str.176, i32 1220 }, %struct.debugfs_reg32 { ptr @.str.177, i32 1221 }, %struct.debugfs_reg32 { ptr @.str.178, i32 1222 }, %struct.debugfs_reg32 { ptr @.str.179, i32 1223 }, %struct.debugfs_reg32 { ptr @.str.180, i32 1224 }, %struct.debugfs_reg32 { ptr @.str.181, i32 1225 }, %struct.debugfs_reg32 { ptr @.str.182, i32 1226 }, %struct.debugfs_reg32 { ptr @.str.183, i32 1227 }, %struct.debugfs_reg32 { ptr @.str.184, i32 1228 }, %struct.debugfs_reg32 { ptr @.str.185, i32 1229 }, %struct.debugfs_reg32 { ptr @.str.186, i32 1230 }, %struct.debugfs_reg32 { ptr @.str.187, i32 1231 }, %struct.debugfs_reg32 { ptr @.str.188, i32 1232 }, %struct.debugfs_reg32 { ptr @.str.189, i32 1233 }, %struct.debugfs_reg32 { ptr @.str.190, i32 1234 }, %struct.debugfs_reg32 { ptr @.str.191, i32 1235 }, %struct.debugfs_reg32 { ptr @.str.192, i32 1236 }, %struct.debugfs_reg32 { ptr @.str.193, i32 1237 }, %struct.debugfs_reg32 { ptr @.str.194, i32 1238 }, %struct.debugfs_reg32 { ptr @.str.195, i32 1240 }, %struct.debugfs_reg32 { ptr @.str.196, i32 1241 }, %struct.debugfs_reg32 { ptr @.str.197, i32 1242 }, %struct.debugfs_reg32 { ptr @.str.198, i32 1243 }, %struct.debugfs_reg32 { ptr @.str.199, i32 1244 }, %struct.debugfs_reg32 { ptr @.str.200, i32 1245 }, %struct.debugfs_reg32 { ptr @.str.201, i32 1246 }, %struct.debugfs_reg32 { ptr @.str.202, i32 1260 }, %struct.debugfs_reg32 { ptr @.str.203, i32 1265 }, %struct.debugfs_reg32 { ptr @.str.204, i32 1792 }, %struct.debugfs_reg32 { ptr @.str.205, i32 1793 }, %struct.debugfs_reg32 { ptr @.str.206, i32 1794 }, %struct.debugfs_reg32 { ptr @.str.207, i32 1795 }, %struct.debugfs_reg32 { ptr @.str.208, i32 1796 }, %struct.debugfs_reg32 { ptr @.str.209, i32 1797 }, %struct.debugfs_reg32 { ptr @.str.210, i32 1798 }, %struct.debugfs_reg32 { ptr @.str.211, i32 1799 }, %struct.debugfs_reg32 { ptr @.str.212, i32 1800 }, %struct.debugfs_reg32 { ptr @.str.213, i32 1801 }, %struct.debugfs_reg32 { ptr @.str.214, i32 1802 }, %struct.debugfs_reg32 { ptr @.str.215, i32 1803 }, %struct.debugfs_reg32 { ptr @.str.216, i32 1804 }, %struct.debugfs_reg32 { ptr @.str.217, i32 1805 }, %struct.debugfs_reg32 { ptr @.str.218, i32 1806 }, %struct.debugfs_reg32 { ptr @.str.219, i32 1807 }, %struct.debugfs_reg32 { ptr @.str.220, i32 1808 }, %struct.debugfs_reg32 { ptr @.str.221, i32 1809 }, %struct.debugfs_reg32 { ptr @.str.222, i32 1810 }, %struct.debugfs_reg32 { ptr @.str.223, i32 1811 }, %struct.debugfs_reg32 { ptr @.str.224, i32 1812 }, %struct.debugfs_reg32 { ptr @.str.225, i32 2048 }, %struct.debugfs_reg32 { ptr @.str.226, i32 2049 }, %struct.debugfs_reg32 { ptr @.str.227, i32 2050 }, %struct.debugfs_reg32 { ptr @.str.228, i32 2051 }, %struct.debugfs_reg32 { ptr @.str.229, i32 2052 }, %struct.debugfs_reg32 { ptr @.str.230, i32 2053 }, %struct.debugfs_reg32 { ptr @.str.231, i32 2054 }, %struct.debugfs_reg32 { ptr @.str.232, i32 2055 }, %struct.debugfs_reg32 { ptr @.str.233, i32 2056 }, %struct.debugfs_reg32 { ptr @.str.234, i32 2057 }, %struct.debugfs_reg32 { ptr @.str.235, i32 2058 }, %struct.debugfs_reg32 { ptr @.str.236, i32 3018 }, %struct.debugfs_reg32 { ptr @.str.237, i32 3530 }, %struct.debugfs_reg32 { ptr @.str.238, i32 4042 }], align 4
@.str.26 = private unnamed_addr constant [18 x i8] c"%-40s %#05x %08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"DC_CMD_GENERAL_INCR_SYNCPT\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"DC_CMD_GENERAL_INCR_SYNCPT_CNTRL\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"DC_CMD_GENERAL_INCR_SYNCPT_ERROR\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"DC_CMD_WIN_A_INCR_SYNCPT\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"DC_CMD_WIN_A_INCR_SYNCPT_CNTRL\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"DC_CMD_WIN_A_INCR_SYNCPT_ERROR\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"DC_CMD_WIN_B_INCR_SYNCPT\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"DC_CMD_WIN_B_INCR_SYNCPT_CNTRL\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"DC_CMD_WIN_B_INCR_SYNCPT_ERROR\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"DC_CMD_WIN_C_INCR_SYNCPT\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"DC_CMD_WIN_C_INCR_SYNCPT_CNTRL\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"DC_CMD_WIN_C_INCR_SYNCPT_ERROR\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"DC_CMD_CONT_SYNCPT_VSYNC\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"DC_CMD_DISPLAY_COMMAND_OPTION0\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"DC_CMD_DISPLAY_COMMAND\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"DC_CMD_SIGNAL_RAISE\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"DC_CMD_DISPLAY_POWER_CONTROL\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"DC_CMD_INT_STATUS\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"DC_CMD_INT_MASK\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"DC_CMD_INT_ENABLE\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"DC_CMD_INT_TYPE\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"DC_CMD_INT_POLARITY\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"DC_CMD_SIGNAL_RAISE1\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"DC_CMD_SIGNAL_RAISE2\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"DC_CMD_SIGNAL_RAISE3\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"DC_CMD_STATE_ACCESS\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"DC_CMD_STATE_CONTROL\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"DC_CMD_DISPLAY_WINDOW_HEADER\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"DC_CMD_REG_ACT_CONTROL\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"DC_COM_CRC_CONTROL\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"DC_COM_CRC_CHECKSUM\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"DC_COM_PIN_OUTPUT_ENABLE(0)\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"DC_COM_PIN_OUTPUT_ENABLE(1)\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"DC_COM_PIN_OUTPUT_ENABLE(2)\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"DC_COM_PIN_OUTPUT_ENABLE(3)\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"DC_COM_PIN_OUTPUT_POLARITY(0)\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"DC_COM_PIN_OUTPUT_POLARITY(1)\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"DC_COM_PIN_OUTPUT_POLARITY(2)\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"DC_COM_PIN_OUTPUT_POLARITY(3)\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"DC_COM_PIN_OUTPUT_DATA(0)\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"DC_COM_PIN_OUTPUT_DATA(1)\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"DC_COM_PIN_OUTPUT_DATA(2)\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"DC_COM_PIN_OUTPUT_DATA(3)\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"DC_COM_PIN_INPUT_ENABLE(0)\00", align 1
@.str.71 = private unnamed_addr constant [27 x i8] c"DC_COM_PIN_INPUT_ENABLE(1)\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"DC_COM_PIN_INPUT_ENABLE(2)\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"DC_COM_PIN_INPUT_ENABLE(3)\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"DC_COM_PIN_INPUT_DATA(0)\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"DC_COM_PIN_INPUT_DATA(1)\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(0)\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(1)\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(2)\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(3)\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(4)\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(5)\00", align 1
@.str.82 = private unnamed_addr constant [28 x i8] c"DC_COM_PIN_OUTPUT_SELECT(6)\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c"DC_COM_PIN_MISC_CONTROL\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"DC_COM_PIN_PM0_CONTROL\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"DC_COM_PIN_PM0_DUTY_CYCLE\00", align 1
@.str.86 = private unnamed_addr constant [23 x i8] c"DC_COM_PIN_PM1_CONTROL\00", align 1
@.str.87 = private unnamed_addr constant [26 x i8] c"DC_COM_PIN_PM1_DUTY_CYCLE\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"DC_COM_SPI_CONTROL\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"DC_COM_SPI_START_BYTE\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"DC_COM_HSPI_WRITE_DATA_AB\00", align 1
@.str.91 = private unnamed_addr constant [26 x i8] c"DC_COM_HSPI_WRITE_DATA_CD\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"DC_COM_HSPI_CS_DC\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"DC_COM_SCRATCH_REGISTER_A\00", align 1
@.str.94 = private unnamed_addr constant [26 x i8] c"DC_COM_SCRATCH_REGISTER_B\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"DC_COM_GPIO_CTRL\00", align 1
@.str.96 = private unnamed_addr constant [29 x i8] c"DC_COM_GPIO_DEBOUNCE_COUNTER\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"DC_COM_CRC_CHECKSUM_LATCHED\00", align 1
@.str.98 = private unnamed_addr constant [29 x i8] c"DC_DISP_DISP_SIGNAL_OPTIONS0\00", align 1
@.str.99 = private unnamed_addr constant [29 x i8] c"DC_DISP_DISP_SIGNAL_OPTIONS1\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"DC_DISP_DISP_WIN_OPTIONS\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"DC_DISP_DISP_MEM_HIGH_PRIORITY\00", align 1
@.str.102 = private unnamed_addr constant [37 x i8] c"DC_DISP_DISP_MEM_HIGH_PRIORITY_TIMER\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"DC_DISP_DISP_TIMING_OPTIONS\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"DC_DISP_REF_TO_SYNC\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"DC_DISP_SYNC_WIDTH\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"DC_DISP_BACK_PORCH\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"DC_DISP_ACTIVE\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"DC_DISP_FRONT_PORCH\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"DC_DISP_H_PULSE0_CONTROL\00", align 1
@.str.110 = private unnamed_addr constant [28 x i8] c"DC_DISP_H_PULSE0_POSITION_A\00", align 1
@.str.111 = private unnamed_addr constant [28 x i8] c"DC_DISP_H_PULSE0_POSITION_B\00", align 1
@.str.112 = private unnamed_addr constant [28 x i8] c"DC_DISP_H_PULSE0_POSITION_C\00", align 1
@.str.113 = private unnamed_addr constant [28 x i8] c"DC_DISP_H_PULSE0_POSITION_D\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"DC_DISP_H_PULSE1_CONTROL\00", align 1
@.str.115 = private unnamed_addr constant [28 x i8] c"DC_DISP_H_PULSE1_POSITION_A\00", align 1
@.str.116 = private unnamed_addr constant [28 x i8] c"DC_DISP_H_PULSE1_POSITION_B\00", align 1
@.str.117 = private unnamed_addr constant [28 x i8] c"DC_DISP_H_PULSE1_POSITION_C\00", align 1
@.str.118 = private unnamed_addr constant [28 x i8] c"DC_DISP_H_PULSE1_POSITION_D\00", align 1
@.str.119 = private unnamed_addr constant [25 x i8] c"DC_DISP_H_PULSE2_CONTROL\00", align 1
@.str.120 = private unnamed_addr constant [28 x i8] c"DC_DISP_H_PULSE2_POSITION_A\00", align 1
@.str.121 = private unnamed_addr constant [28 x i8] c"DC_DISP_H_PULSE2_POSITION_B\00", align 1
@.str.122 = private unnamed_addr constant [28 x i8] c"DC_DISP_H_PULSE2_POSITION_C\00", align 1
@.str.123 = private unnamed_addr constant [28 x i8] c"DC_DISP_H_PULSE2_POSITION_D\00", align 1
@.str.124 = private unnamed_addr constant [25 x i8] c"DC_DISP_V_PULSE0_CONTROL\00", align 1
@.str.125 = private unnamed_addr constant [28 x i8] c"DC_DISP_V_PULSE0_POSITION_A\00", align 1
@.str.126 = private unnamed_addr constant [28 x i8] c"DC_DISP_V_PULSE0_POSITION_B\00", align 1
@.str.127 = private unnamed_addr constant [28 x i8] c"DC_DISP_V_PULSE0_POSITION_C\00", align 1
@.str.128 = private unnamed_addr constant [25 x i8] c"DC_DISP_V_PULSE1_CONTROL\00", align 1
@.str.129 = private unnamed_addr constant [28 x i8] c"DC_DISP_V_PULSE1_POSITION_A\00", align 1
@.str.130 = private unnamed_addr constant [28 x i8] c"DC_DISP_V_PULSE1_POSITION_B\00", align 1
@.str.131 = private unnamed_addr constant [28 x i8] c"DC_DISP_V_PULSE1_POSITION_C\00", align 1
@.str.132 = private unnamed_addr constant [25 x i8] c"DC_DISP_V_PULSE2_CONTROL\00", align 1
@.str.133 = private unnamed_addr constant [28 x i8] c"DC_DISP_V_PULSE2_POSITION_A\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"DC_DISP_V_PULSE3_CONTROL\00", align 1
@.str.135 = private unnamed_addr constant [28 x i8] c"DC_DISP_V_PULSE3_POSITION_A\00", align 1
@.str.136 = private unnamed_addr constant [19 x i8] c"DC_DISP_M0_CONTROL\00", align 1
@.str.137 = private unnamed_addr constant [19 x i8] c"DC_DISP_M1_CONTROL\00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"DC_DISP_DI_CONTROL\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"DC_DISP_PP_CONTROL\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"DC_DISP_PP_SELECT_A\00", align 1
@.str.141 = private unnamed_addr constant [20 x i8] c"DC_DISP_PP_SELECT_B\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"DC_DISP_PP_SELECT_C\00", align 1
@.str.143 = private unnamed_addr constant [20 x i8] c"DC_DISP_PP_SELECT_D\00", align 1
@.str.144 = private unnamed_addr constant [27 x i8] c"DC_DISP_DISP_CLOCK_CONTROL\00", align 1
@.str.145 = private unnamed_addr constant [31 x i8] c"DC_DISP_DISP_INTERFACE_CONTROL\00", align 1
@.str.146 = private unnamed_addr constant [27 x i8] c"DC_DISP_DISP_COLOR_CONTROL\00", align 1
@.str.147 = private unnamed_addr constant [28 x i8] c"DC_DISP_SHIFT_CLOCK_OPTIONS\00", align 1
@.str.148 = private unnamed_addr constant [28 x i8] c"DC_DISP_DATA_ENABLE_OPTIONS\00", align 1
@.str.149 = private unnamed_addr constant [33 x i8] c"DC_DISP_SERIAL_INTERFACE_OPTIONS\00", align 1
@.str.150 = private unnamed_addr constant [24 x i8] c"DC_DISP_LCD_SPI_OPTIONS\00", align 1
@.str.151 = private unnamed_addr constant [21 x i8] c"DC_DISP_BORDER_COLOR\00", align 1
@.str.152 = private unnamed_addr constant [25 x i8] c"DC_DISP_COLOR_KEY0_LOWER\00", align 1
@.str.153 = private unnamed_addr constant [25 x i8] c"DC_DISP_COLOR_KEY0_UPPER\00", align 1
@.str.154 = private unnamed_addr constant [25 x i8] c"DC_DISP_COLOR_KEY1_LOWER\00", align 1
@.str.155 = private unnamed_addr constant [25 x i8] c"DC_DISP_COLOR_KEY1_UPPER\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"DC_DISP_CURSOR_FOREGROUND\00", align 1
@.str.157 = private unnamed_addr constant [26 x i8] c"DC_DISP_CURSOR_BACKGROUND\00", align 1
@.str.158 = private unnamed_addr constant [26 x i8] c"DC_DISP_CURSOR_START_ADDR\00", align 1
@.str.159 = private unnamed_addr constant [29 x i8] c"DC_DISP_CURSOR_START_ADDR_NS\00", align 1
@.str.160 = private unnamed_addr constant [24 x i8] c"DC_DISP_CURSOR_POSITION\00", align 1
@.str.161 = private unnamed_addr constant [27 x i8] c"DC_DISP_CURSOR_POSITION_NS\00", align 1
@.str.162 = private unnamed_addr constant [25 x i8] c"DC_DISP_INIT_SEQ_CONTROL\00", align 1
@.str.163 = private unnamed_addr constant [28 x i8] c"DC_DISP_SPI_INIT_SEQ_DATA_A\00", align 1
@.str.164 = private unnamed_addr constant [28 x i8] c"DC_DISP_SPI_INIT_SEQ_DATA_B\00", align 1
@.str.165 = private unnamed_addr constant [28 x i8] c"DC_DISP_SPI_INIT_SEQ_DATA_C\00", align 1
@.str.166 = private unnamed_addr constant [28 x i8] c"DC_DISP_SPI_INIT_SEQ_DATA_D\00", align 1
@.str.167 = private unnamed_addr constant [26 x i8] c"DC_DISP_DC_MCCIF_FIFOCTRL\00", align 1
@.str.168 = private unnamed_addr constant [29 x i8] c"DC_DISP_MCCIF_DISPLAY0A_HYST\00", align 1
@.str.169 = private unnamed_addr constant [29 x i8] c"DC_DISP_MCCIF_DISPLAY0B_HYST\00", align 1
@.str.170 = private unnamed_addr constant [29 x i8] c"DC_DISP_MCCIF_DISPLAY1A_HYST\00", align 1
@.str.171 = private unnamed_addr constant [29 x i8] c"DC_DISP_MCCIF_DISPLAY1B_HYST\00", align 1
@.str.172 = private unnamed_addr constant [21 x i8] c"DC_DISP_DAC_CRT_CTRL\00", align 1
@.str.173 = private unnamed_addr constant [26 x i8] c"DC_DISP_DISP_MISC_CONTROL\00", align 1
@.str.174 = private unnamed_addr constant [19 x i8] c"DC_DISP_SD_CONTROL\00", align 1
@.str.175 = private unnamed_addr constant [21 x i8] c"DC_DISP_SD_CSC_COEFF\00", align 1
@.str.176 = private unnamed_addr constant [18 x i8] c"DC_DISP_SD_LUT(0)\00", align 1
@.str.177 = private unnamed_addr constant [18 x i8] c"DC_DISP_SD_LUT(1)\00", align 1
@.str.178 = private unnamed_addr constant [18 x i8] c"DC_DISP_SD_LUT(2)\00", align 1
@.str.179 = private unnamed_addr constant [18 x i8] c"DC_DISP_SD_LUT(3)\00", align 1
@.str.180 = private unnamed_addr constant [18 x i8] c"DC_DISP_SD_LUT(4)\00", align 1
@.str.181 = private unnamed_addr constant [18 x i8] c"DC_DISP_SD_LUT(5)\00", align 1
@.str.182 = private unnamed_addr constant [18 x i8] c"DC_DISP_SD_LUT(6)\00", align 1
@.str.183 = private unnamed_addr constant [18 x i8] c"DC_DISP_SD_LUT(7)\00", align 1
@.str.184 = private unnamed_addr constant [18 x i8] c"DC_DISP_SD_LUT(8)\00", align 1
@.str.185 = private unnamed_addr constant [27 x i8] c"DC_DISP_SD_FLICKER_CONTROL\00", align 1
@.str.186 = private unnamed_addr constant [23 x i8] c"DC_DISP_DC_PIXEL_COUNT\00", align 1
@.str.187 = private unnamed_addr constant [24 x i8] c"DC_DISP_SD_HISTOGRAM(0)\00", align 1
@.str.188 = private unnamed_addr constant [24 x i8] c"DC_DISP_SD_HISTOGRAM(1)\00", align 1
@.str.189 = private unnamed_addr constant [24 x i8] c"DC_DISP_SD_HISTOGRAM(2)\00", align 1
@.str.190 = private unnamed_addr constant [24 x i8] c"DC_DISP_SD_HISTOGRAM(3)\00", align 1
@.str.191 = private unnamed_addr constant [24 x i8] c"DC_DISP_SD_HISTOGRAM(4)\00", align 1
@.str.192 = private unnamed_addr constant [24 x i8] c"DC_DISP_SD_HISTOGRAM(5)\00", align 1
@.str.193 = private unnamed_addr constant [24 x i8] c"DC_DISP_SD_HISTOGRAM(6)\00", align 1
@.str.194 = private unnamed_addr constant [24 x i8] c"DC_DISP_SD_HISTOGRAM(7)\00", align 1
@.str.195 = private unnamed_addr constant [20 x i8] c"DC_DISP_SD_BL_TF(0)\00", align 1
@.str.196 = private unnamed_addr constant [20 x i8] c"DC_DISP_SD_BL_TF(1)\00", align 1
@.str.197 = private unnamed_addr constant [20 x i8] c"DC_DISP_SD_BL_TF(2)\00", align 1
@.str.198 = private unnamed_addr constant [20 x i8] c"DC_DISP_SD_BL_TF(3)\00", align 1
@.str.199 = private unnamed_addr constant [22 x i8] c"DC_DISP_SD_BL_CONTROL\00", align 1
@.str.200 = private unnamed_addr constant [23 x i8] c"DC_DISP_SD_HW_K_VALUES\00", align 1
@.str.201 = private unnamed_addr constant [24 x i8] c"DC_DISP_SD_MAN_K_VALUES\00", align 1
@.str.202 = private unnamed_addr constant [29 x i8] c"DC_DISP_CURSOR_START_ADDR_HI\00", align 1
@.str.203 = private unnamed_addr constant [29 x i8] c"DC_DISP_BLEND_CURSOR_CONTROL\00", align 1
@.str.204 = private unnamed_addr constant [19 x i8] c"DC_WIN_WIN_OPTIONS\00", align 1
@.str.205 = private unnamed_addr constant [17 x i8] c"DC_WIN_BYTE_SWAP\00", align 1
@.str.206 = private unnamed_addr constant [22 x i8] c"DC_WIN_BUFFER_CONTROL\00", align 1
@.str.207 = private unnamed_addr constant [19 x i8] c"DC_WIN_COLOR_DEPTH\00", align 1
@.str.208 = private unnamed_addr constant [16 x i8] c"DC_WIN_POSITION\00", align 1
@.str.209 = private unnamed_addr constant [12 x i8] c"DC_WIN_SIZE\00", align 1
@.str.210 = private unnamed_addr constant [22 x i8] c"DC_WIN_PRESCALED_SIZE\00", align 1
@.str.211 = private unnamed_addr constant [21 x i8] c"DC_WIN_H_INITIAL_DDA\00", align 1
@.str.212 = private unnamed_addr constant [21 x i8] c"DC_WIN_V_INITIAL_DDA\00", align 1
@.str.213 = private unnamed_addr constant [15 x i8] c"DC_WIN_DDA_INC\00", align 1
@.str.214 = private unnamed_addr constant [19 x i8] c"DC_WIN_LINE_STRIDE\00", align 1
@.str.215 = private unnamed_addr constant [18 x i8] c"DC_WIN_BUF_STRIDE\00", align 1
@.str.216 = private unnamed_addr constant [21 x i8] c"DC_WIN_UV_BUF_STRIDE\00", align 1
@.str.217 = private unnamed_addr constant [24 x i8] c"DC_WIN_BUFFER_ADDR_MODE\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c"DC_WIN_DV_CONTROL\00", align 1
@.str.219 = private unnamed_addr constant [19 x i8] c"DC_WIN_BLEND_NOKEY\00", align 1
@.str.220 = private unnamed_addr constant [18 x i8] c"DC_WIN_BLEND_1WIN\00", align 1
@.str.221 = private unnamed_addr constant [20 x i8] c"DC_WIN_BLEND_2WIN_X\00", align 1
@.str.222 = private unnamed_addr constant [20 x i8] c"DC_WIN_BLEND_2WIN_Y\00", align 1
@.str.223 = private unnamed_addr constant [21 x i8] c"DC_WIN_BLEND_3WIN_XY\00", align 1
@.str.224 = private unnamed_addr constant [24 x i8] c"DC_WIN_HP_FETCH_CONTROL\00", align 1
@.str.225 = private unnamed_addr constant [21 x i8] c"DC_WINBUF_START_ADDR\00", align 1
@.str.226 = private unnamed_addr constant [24 x i8] c"DC_WINBUF_START_ADDR_NS\00", align 1
@.str.227 = private unnamed_addr constant [23 x i8] c"DC_WINBUF_START_ADDR_U\00", align 1
@.str.228 = private unnamed_addr constant [26 x i8] c"DC_WINBUF_START_ADDR_U_NS\00", align 1
@.str.229 = private unnamed_addr constant [23 x i8] c"DC_WINBUF_START_ADDR_V\00", align 1
@.str.230 = private unnamed_addr constant [26 x i8] c"DC_WINBUF_START_ADDR_V_NS\00", align 1
@.str.231 = private unnamed_addr constant [24 x i8] c"DC_WINBUF_ADDR_H_OFFSET\00", align 1
@.str.232 = private unnamed_addr constant [27 x i8] c"DC_WINBUF_ADDR_H_OFFSET_NS\00", align 1
@.str.233 = private unnamed_addr constant [24 x i8] c"DC_WINBUF_ADDR_V_OFFSET\00", align 1
@.str.234 = private unnamed_addr constant [27 x i8] c"DC_WINBUF_ADDR_V_OFFSET_NS\00", align 1
@.str.235 = private unnamed_addr constant [23 x i8] c"DC_WINBUF_UFLOW_STATUS\00", align 1
@.str.236 = private unnamed_addr constant [26 x i8] c"DC_WINBUF_AD_UFLOW_STATUS\00", align 1
@.str.237 = private unnamed_addr constant [26 x i8] c"DC_WINBUF_BD_UFLOW_STATUS\00", align 1
@.str.238 = private unnamed_addr constant [26 x i8] c"DC_WINBUF_CD_UFLOW_STATUS\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"frames: %lu\0A\00", align 1
@.str.241 = private unnamed_addr constant [13 x i8] c"vblank: %lu\0A\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"underflow: %lu\0A\00", align 1
@.str.243 = private unnamed_addr constant [15 x i8] c"overflow: %lu\0A\00", align 1
@.str.244 = private unnamed_addr constant [19 x i8] c"frames total: %lu\0A\00", align 1
@.str.245 = private unnamed_addr constant [19 x i8] c"vblank total: %lu\0A\00", align 1
@.str.246 = private unnamed_addr constant [22 x i8] c"underflow total: %lu\0A\00", align 1
@.str.247 = private unnamed_addr constant [21 x i8] c"overflow total: %lu\0A\00", align 1
@tegra_crtc_calculate_memory_bandwidth.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.248 = private unnamed_addr constant [22 x i8] c"failed to resume: %d\0A\00", align 1
@.str.249 = private unnamed_addr constant [32 x i8] c"failed to set parent clock: %d\0A\00", align 1
@.str.250 = private unnamed_addr constant [36 x i8] c"failed to set clock rate to %lu Hz\0A\00", align 1
@.str.251 = private unnamed_addr constant [39 x i8] c"failed to set clock %pC to %lu Hz: %d\0A\00", align 1
@.str.252 = private unnamed_addr constant [20 x i8] c"rate: %lu, div: %u\0A\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c"pclk: %lu\0A\00", align 1
@.str.254 = private unnamed_addr constant [35 x i8] c"failed to find OPP for %luHz: %pe\0A\00", align 1
@.str.255 = private unnamed_addr constant [45 x i8] c"failed to set power domain state to %lu: %d\0A\00", align 1
@.str.256 = private unnamed_addr constant [23 x i8] c"failed to suspend: %d\0A\00", align 1
@.str.257 = private unnamed_addr constant [40 x i8] c"failed to clear power domain state: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.258 = private unnamed_addr constant [35 x i8] c"failed to shutdown RGB output: %d\0A\00", align 1
@.str.259 = private unnamed_addr constant [28 x i8] c"failed to assert reset: %d\0A\00", align 1
@.str.260 = private unnamed_addr constant [30 x i8] c"failed to get runtime PM: %d\0A\00", align 1
@.str.261 = private unnamed_addr constant [31 x i8] c"failed to power partition: %d\0A\00", align 1
@.str.262 = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@.str.263 = private unnamed_addr constant [30 x i8] c"failed to deassert reset: %d\0A\00", align 1
@.str.264 = private unnamed_addr constant [40 x i8] c"failed to unregister host1x client: %d\0A\00", align 1
@.str.265 = private unnamed_addr constant [33 x i8] c"failed to remove RGB output: %d\0A\00", align 1
@tegra194_dc_soc_info = internal constant %struct.tegra_dc_soc_info { i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i32 64, i8 0, i8 0, i8 1, ptr @tegra194_dc_wgrps, i32 6, ptr null, i32 0, ptr null, i32 0, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 4
@tegra186_dc_soc_info = internal constant %struct.tegra_dc_soc_info { i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i32 64, i8 0, i8 0, i8 1, ptr @tegra186_dc_wgrps, i32 6, ptr null, i32 0, ptr null, i32 0, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 4
@tegra210_dc_soc_info = internal constant %struct.tegra_dc_soc_info { i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i32 64, i8 1, i8 0, i8 0, ptr null, i32 0, ptr @tegra114_primary_formats, i32 18, ptr @tegra114_overlay_formats, i32 22, ptr @tegra124_modifiers, i8 0, i8 0, i8 0, i8 0, i8 1 }, align 4
@tegra124_dc_soc_info = internal constant %struct.tegra_dc_soc_info { i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i32 64, i8 1, i8 0, i8 0, ptr null, i32 0, ptr @tegra124_primary_formats, i32 20, ptr @tegra124_overlay_formats, i32 24, ptr @tegra124_modifiers, i8 0, i8 0, i8 0, i8 0, i8 1 }, align 4
@tegra114_dc_soc_info = internal constant %struct.tegra_dc_soc_info { i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 64, i8 1, i8 0, i8 0, ptr null, i32 0, ptr @tegra114_primary_formats, i32 18, ptr @tegra114_overlay_formats, i32 22, ptr @tegra20_modifiers, i8 0, i8 0, i8 0, i8 1, i8 1 }, align 4
@tegra30_dc_soc_info = internal constant %struct.tegra_dc_soc_info { i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 8, i8 0, i8 0, i8 0, ptr null, i32 0, ptr @tegra20_primary_formats, i32 10, ptr @tegra20_overlay_formats, i32 14, ptr @tegra20_modifiers, i8 0, i8 1, i8 0, i8 1, i8 1 }, align 4
@tegra20_dc_soc_info = internal constant %struct.tegra_dc_soc_info { i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 8, i8 0, i8 1, i8 0, ptr null, i32 0, ptr @tegra20_primary_formats, i32 10, ptr @tegra20_overlay_formats, i32 14, ptr @tegra20_modifiers, i8 1, i8 1, i8 1, i8 0, i8 0 }, align 4
@tegra194_dc_wgrps = internal constant [6 x %struct.tegra_windowgroup_soc] [%struct.tegra_windowgroup_soc { i32 0, i32 0, ptr @.compoundliteral, i32 1 }, %struct.tegra_windowgroup_soc { i32 1, i32 1, ptr @.compoundliteral.266, i32 1 }, %struct.tegra_windowgroup_soc { i32 2, i32 1, ptr @.compoundliteral.267, i32 1 }, %struct.tegra_windowgroup_soc { i32 3, i32 2, ptr @.compoundliteral.268, i32 1 }, %struct.tegra_windowgroup_soc { i32 4, i32 2, ptr @.compoundliteral.269, i32 1 }, %struct.tegra_windowgroup_soc { i32 5, i32 2, ptr @.compoundliteral.270, i32 1 }], align 4
@.compoundliteral = internal constant [1 x i32] zeroinitializer, align 4
@.compoundliteral.266 = internal constant [1 x i32] [i32 1], align 4
@.compoundliteral.267 = internal constant [1 x i32] [i32 2], align 4
@.compoundliteral.268 = internal constant [1 x i32] [i32 3], align 4
@.compoundliteral.269 = internal constant [1 x i32] [i32 4], align 4
@.compoundliteral.270 = internal constant [1 x i32] [i32 5], align 4
@tegra186_dc_wgrps = internal constant [6 x %struct.tegra_windowgroup_soc] [%struct.tegra_windowgroup_soc { i32 0, i32 0, ptr @.compoundliteral.271, i32 1 }, %struct.tegra_windowgroup_soc { i32 1, i32 1, ptr @.compoundliteral.272, i32 1 }, %struct.tegra_windowgroup_soc { i32 2, i32 1, ptr @.compoundliteral.273, i32 1 }, %struct.tegra_windowgroup_soc { i32 3, i32 2, ptr @.compoundliteral.274, i32 1 }, %struct.tegra_windowgroup_soc { i32 4, i32 2, ptr @.compoundliteral.275, i32 1 }, %struct.tegra_windowgroup_soc { i32 5, i32 2, ptr @.compoundliteral.276, i32 1 }], align 4
@.compoundliteral.271 = internal constant [1 x i32] zeroinitializer, align 4
@.compoundliteral.272 = internal constant [1 x i32] [i32 1], align 4
@.compoundliteral.273 = internal constant [1 x i32] [i32 2], align 4
@.compoundliteral.274 = internal constant [1 x i32] [i32 3], align 4
@.compoundliteral.275 = internal constant [1 x i32] [i32 4], align 4
@.compoundliteral.276 = internal constant [1 x i32] [i32 5], align 4
@tegra114_primary_formats = internal constant [18 x i32] [i32 842093121, i32 892424769, i32 909199186, i32 892420434, i32 875708993, i32 875713089, i32 842089025, i32 892420673, i32 892420418, i32 892424792, i32 892426322, i32 892420696, i32 892426306, i32 909199170, i32 875708738, i32 875708754, i32 875713112, i32 875709016], align 4
@tegra114_overlay_formats = internal constant [22 x i32] [i32 842093121, i32 892424769, i32 909199186, i32 892420434, i32 875708993, i32 875713089, i32 842089025, i32 892420673, i32 892420418, i32 892424792, i32 892426322, i32 892420696, i32 892426306, i32 909199170, i32 875708738, i32 875708754, i32 875713112, i32 875709016, i32 1498831189, i32 1448695129, i32 842093913, i32 909202777], align 4
@tegra124_modifiers = internal constant [8 x i64] [i64 0, i64 216172782113783824, i64 216172782113783825, i64 216172782113783826, i64 216172782113783827, i64 216172782113783828, i64 216172782113783829, i64 72057594037927935], align 8
@tegra124_primary_formats = internal constant [20 x i32] [i32 842093121, i32 892424769, i32 909199186, i32 892420434, i32 875708993, i32 875713089, i32 842089025, i32 892420673, i32 892420418, i32 892424792, i32 892426322, i32 892420696, i32 892426306, i32 909199170, i32 875708738, i32 875708754, i32 875713112, i32 875709016, i32 875714642, i32 875714626], align 4
@tegra124_overlay_formats = internal constant [24 x i32] [i32 842093121, i32 892424769, i32 909199186, i32 892420434, i32 875708993, i32 875713089, i32 842089025, i32 892420673, i32 892420418, i32 892424792, i32 892426322, i32 892420696, i32 892426306, i32 909199170, i32 875708738, i32 875708754, i32 875713112, i32 875709016, i32 875714642, i32 875714626, i32 1498831189, i32 1448695129, i32 842093913, i32 909202777], align 4
@tegra20_modifiers = internal constant [3 x i64] [i64 0, i64 216172782113783809, i64 72057594037927935], align 8
@tegra20_primary_formats = internal constant [10 x i32] [i32 842093121, i32 892424769, i32 909199186, i32 892420434, i32 875708993, i32 875713089, i32 892424792, i32 892426322, i32 875709016, i32 875713112], align 4
@tegra20_overlay_formats = internal constant [14 x i32] [i32 842093121, i32 892424769, i32 909199186, i32 892420434, i32 875708993, i32 875713089, i32 892424792, i32 892426322, i32 875709016, i32 875713112, i32 1498831189, i32 1448695129, i32 842093913, i32 909202777], align 4
@switch.table.__tegra_cursor_atomic_update = private unnamed_addr constant [8 x i32] [i32 0, i32 16777216, i32 0, i32 33554432, i32 0, i32 0, i32 0, i32 50331648], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tegra_dc_has_output(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.of_phandle_iterator, align 4
  %4 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !8
  %8 = call i32 @of_phandle_iterator_init(ptr noundef nonnull %3, ptr noundef %7, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0) #11
  %9 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %3) #11
  %10 = getelementptr inbounds %struct.of_phandle_iterator, ptr %3, i32 0, i32 8
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  br label %14

14:                                               ; preds = %18, %12
  %15 = load ptr, ptr %10, align 4
  %16 = load ptr, ptr %13, align 8
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %3) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %14, label %21

21:                                               ; preds = %18, %14, %2
  %22 = phi i1 [ false, %2 ], [ %17, %18 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  ret i1 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_dc_commit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #11
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %18 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %3, i32 noundef 65, i32 noundef 256) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %19

19:                                               ; preds = %17, %6, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %20 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 256) #11, !srcloc !12
  %23 = load ptr, ptr %2, align 4
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = tail call ptr @llvm.thread.pointer() #11
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %38 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %23, i32 noundef 65, i32 noundef 1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %39

39:                                               ; preds = %37, %26, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %40 = load ptr, ptr %20, align 8
  %41 = getelementptr i8, ptr %40, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 1) #11, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_dc_state_setup_clock(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call zeroext i1 @clk_has_parent(ptr noundef %7, ptr noundef %2) #11
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tegra_dc_state, ptr %1, i32 0, i32 1
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tegra_dc_state, ptr %1, i32 0, i32 2
  store i32 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.tegra_dc_state, ptr %1, i32 0, i32 3
  store i32 %4, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ 0, %9 ], [ -22, %5 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_has_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_crtc_atomic_post_commit(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call fastcc void @tegra_crtc_update_memory_bandwidth(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_crtc_update_memory_bandwidth(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = getelementptr i8, ptr %0, i32 -104
  %6 = select i1 %4, ptr null, ptr %5
  %7 = getelementptr inbounds %struct.tegra_dc, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %8, i32 0, i32 9
  %10 = load i8, ptr %9, align 2, !range !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %182

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr %struct.__drm_crtcs_state, ptr %14, i32 %16, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_crtc_state, ptr %20, i32 0, i32 2
  %22 = load i8, ptr %21, align 1, !range !13
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 20
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_atomic_state, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 30, i32 17
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %182, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 2
  br label %69

34:                                               ; preds = %12
  %35 = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 2
  %36 = load i8, ptr %35, align 1, !range !13
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %182, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 30, i32 18
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %182, label %43

43:                                               ; preds = %67, %38
  %44 = phi ptr [ %63, %67 ], [ %39, %38 ]
  %45 = phi ptr [ %68, %67 ], [ %20, %38 ]
  %46 = phi ptr [ %64, %67 ], [ %41, %38 ]
  %47 = getelementptr inbounds %struct.drm_crtc_state, ptr %45, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr i8, ptr %46, i32 408
  %50 = load i32, ptr %49, align 4
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %48
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %43
  %55 = getelementptr i8, ptr %46, i32 464
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @icc_set_bw(ptr noundef %56, i32 noundef 0, i32 noundef 0) #11
  %58 = getelementptr i8, ptr %46, i32 468
  %59 = load ptr, ptr %58, align 8
  %60 = tail call i32 @icc_set_bw(ptr noundef %59, i32 noundef 0, i32 noundef 0) #11
  %61 = load ptr, ptr %0, align 8
  br label %62

62:                                               ; preds = %54, %43
  %63 = phi ptr [ %61, %54 ], [ %44, %43 ]
  %64 = load ptr, ptr %46, align 4
  %65 = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 30, i32 18
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %182, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %19, align 4
  br label %43

69:                                               ; preds = %174, %32
  %70 = phi ptr [ %26, %32 ], [ %176, %174 ]
  %71 = phi i32 [ 0, %32 ], [ %175, %174 ]
  %72 = getelementptr inbounds %struct.drm_atomic_state, ptr %70, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr %struct.__drm_planes_state, ptr %73, i32 %71
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %174, label %77

77:                                               ; preds = %69
  %78 = getelementptr %struct.__drm_planes_state, ptr %73, i32 %71, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.drm_plane, ptr %75, i32 0, i32 19
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.tegra_plane, ptr %75, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, %6
  br i1 %84, label %85, label %174

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.tegra_plane_state, ptr %81, i32 0, i32 12
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.tegra_plane_state, ptr %79, i32 0, i32 12
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.tegra_plane_state, ptr %81, i32 0, i32 10
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.tegra_plane_state, ptr %79, i32 0, i32 10
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %87, %89
  %95 = icmp eq i32 %91, %93
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load i8, ptr %33, align 1, !range !13
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %174

100:                                              ; preds = %97, %85
  %101 = getelementptr inbounds %struct.drm_plane_state, ptr %81, i32 0, i32 20, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.drm_plane_state, ptr %81, i32 0, i32 20, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = sub i32 %102, %104
  %106 = ashr i32 %105, 16
  %107 = getelementptr inbounds %struct.drm_plane_state, ptr %81, i32 0, i32 21, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.drm_plane_state, ptr %81, i32 0, i32 21, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = sub i32 %108, %110
  %112 = getelementptr inbounds %struct.drm_plane_state, ptr %79, i32 0, i32 20, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.drm_plane_state, ptr %79, i32 0, i32 20, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = sub i32 %113, %115
  %117 = ashr i32 %116, 16
  %118 = getelementptr inbounds %struct.drm_plane_state, ptr %79, i32 0, i32 21, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.drm_plane_state, ptr %79, i32 0, i32 21, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = sub i32 %119, %121
  br i1 %2, label %123, label %141

123:                                              ; preds = %100
  %124 = tail call i32 @llvm.umax.i32(i32 %89, i32 %87)
  %125 = tail call i32 @llvm.umax.i32(i32 %93, i32 %91)
  %126 = icmp eq i32 %117, %122
  br i1 %126, label %141, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.tegra_plane, ptr %75, i32 0, i32 3
  %129 = load i32, ptr %128, align 8
  switch i32 %129, label %140 [
    i32 0, label %130
    i32 2, label %135
  ]

130:                                              ; preds = %127
  %131 = load ptr, ptr %7, align 8
  %132 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %131, i32 0, i32 17
  %133 = load i8, ptr %132, align 4, !range !13
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %140, label %141

135:                                              ; preds = %127
  %136 = load ptr, ptr %7, align 8
  %137 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %136, i32 0, i32 19
  %138 = load i8, ptr %137, align 2, !range !13
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135, %130, %127
  br label %141

141:                                              ; preds = %140, %135, %130, %123, %100
  %142 = phi i32 [ %117, %140 ], [ %106, %100 ], [ %106, %123 ], [ %106, %130 ], [ %106, %135 ]
  %143 = phi i32 [ %122, %140 ], [ %111, %100 ], [ %111, %123 ], [ %111, %130 ], [ %111, %135 ]
  %144 = phi i32 [ %125, %140 ], [ %91, %100 ], [ %125, %123 ], [ %125, %130 ], [ %125, %135 ]
  %145 = phi i32 [ %124, %140 ], [ %87, %100 ], [ %124, %123 ], [ %124, %130 ], [ %124, %135 ]
  %146 = getelementptr inbounds %struct.tegra_plane, ptr %75, i32 0, i32 4
  %147 = load ptr, ptr %146, align 4
  %148 = tail call i32 @icc_set_bw(ptr noundef %147, i32 noundef %145, i32 noundef %144) #11
  %149 = load ptr, ptr %82, align 8
  %150 = icmp eq i32 %142, %143
  br i1 %150, label %170, label %151

151:                                              ; preds = %141
  %152 = getelementptr inbounds %struct.tegra_plane, ptr %75, i32 0, i32 3
  %153 = load i32, ptr %152, align 8
  switch i32 %153, label %166 [
    i32 0, label %154
    i32 2, label %160
  ]

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.tegra_dc, ptr %149, i32 0, i32 14
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %156, i32 0, i32 17
  %158 = load i8, ptr %157, align 4, !range !13
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %166, label %170

160:                                              ; preds = %151
  %161 = getelementptr inbounds %struct.tegra_dc, ptr %149, i32 0, i32 14
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %162, i32 0, i32 19
  %164 = load i8, ptr %163, align 2, !range !13
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %160, %154, %151
  %167 = getelementptr inbounds %struct.tegra_plane, ptr %75, i32 0, i32 5
  %168 = load ptr, ptr %167, align 8
  %169 = tail call i32 @icc_set_bw(ptr noundef %168, i32 noundef %145, i32 noundef %144) #11
  br label %174

170:                                              ; preds = %160, %154, %141
  %171 = getelementptr inbounds %struct.tegra_plane, ptr %75, i32 0, i32 5
  %172 = load ptr, ptr %171, align 8
  %173 = tail call i32 @icc_set_bw(ptr noundef %172, i32 noundef 0, i32 noundef 0) #11
  br label %174

174:                                              ; preds = %170, %166, %97, %77, %69
  %175 = add nuw i32 %71, 1
  %176 = load ptr, ptr %25, align 4
  %177 = getelementptr inbounds %struct.drm_atomic_state, ptr %176, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.drm_device, ptr %178, i32 0, i32 30, i32 17
  %180 = load i32, ptr %179, align 4
  %181 = icmp ult i32 %175, %180
  br i1 %181, label %69, label %182

182:                                              ; preds = %174, %62, %38, %34, %24, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.tegra_core_opp_params, align 1
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i64, ptr %8, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %1
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi i64 [ 4294967295, %13 ], [ %11, %10 ]
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %16, ptr %17, align 4
  %18 = tail call i32 @dma_set_mask(ptr noundef %4, i64 noundef %15) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = tail call i32 @dma_set_coherent_mask(ptr noundef %4, i64 noundef %15) #11
  br label %25

22:                                               ; preds = %14
  %23 = icmp slt i32 %18, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %18) #12
  br label %151

25:                                               ; preds = %22, %20
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 936, i32 noundef 3520) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %151, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @of_device_get_match_data(ptr noundef %4) #11
  %30 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 14
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 12
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 12, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 2
  store ptr %4, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = call i32 @of_property_read_variable_u32_array(ptr noundef %35, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #11
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %28
  %39 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.12) #12
  %40 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_dc_of_match, ptr noundef null) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %54, label %42

42:                                               ; preds = %49, %38
  %43 = phi ptr [ %52, %49 ], [ %40, %38 ]
  %44 = load ptr, ptr %33, align 4
  %45 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 25
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  call void @of_node_put(ptr noundef nonnull %43) #11
  br label %54

49:                                               ; preds = %42
  %50 = load i32, ptr %3, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %3, align 4
  %52 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %43, ptr noundef nonnull @tegra_dc_of_match, ptr noundef null) #11
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %42

54:                                               ; preds = %49, %48, %38, %28
  %55 = load i32, ptr %3, align 4
  %56 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 5
  store i32 %55, ptr %56, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %57 = load ptr, ptr %30, align 8
  %58 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %57, i32 0, i32 8
  %59 = load i8, ptr %58, align 1, !range !13
  %60 = icmp ne i8 %59, 0
  %61 = icmp eq i32 %55, 1
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load ptr, ptr %33, align 4
  %65 = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 6
  %66 = load ptr, ptr %65, align 8
  %67 = call ptr @driver_find_device(ptr noundef %66, ptr noundef null, ptr noundef null, ptr noundef nonnull @tegra_dc_match_by_pipe) #11
  %68 = icmp eq ptr %67, null
  br i1 %68, label %151, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 8
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.host1x_client, ptr %26, i32 0, i32 9
  store ptr %71, ptr %72, align 8
  br label %73

73:                                               ; preds = %69, %54
  %74 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #11
  %75 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 6
  store ptr %74, ptr %75, align 8
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #12
  %78 = load ptr, ptr %75, align 8
  %79 = ptrtoint ptr %78 to i32
  br label %151

80:                                               ; preds = %73
  %81 = call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %82 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 7
  store ptr %81, ptr %82, align 4
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #12
  %85 = load ptr, ptr %82, align 4
  %86 = ptrtoint ptr %85 to i32
  br label %151

87:                                               ; preds = %80
  %88 = load ptr, ptr %75, align 8
  %89 = call i32 @clk_prepare(ptr noundef %88) #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = call i32 @clk_enable(ptr noundef %88) #11
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  call void @clk_unprepare(ptr noundef %88) #11
  br label %95

95:                                               ; preds = %94, %87
  %96 = phi i32 [ %89, %87 ], [ %92, %94 ]
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %151, label %98

98:                                               ; preds = %95, %91
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #11
  %99 = load ptr, ptr %82, align 4
  %100 = call i32 @reset_control_assert(ptr noundef %99) #11
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %151, label %102

102:                                              ; preds = %98
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #11
  %103 = load ptr, ptr %75, align 8
  call void @clk_disable(ptr noundef %103) #11
  call void @clk_unprepare(ptr noundef %103) #11
  %104 = load ptr, ptr %30, align 8
  %105 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %104, i32 0, i32 7
  %106 = load i8, ptr %105, align 4, !range !13
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load i32, ptr %56, align 4
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, i32 18, i32 19
  %112 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 4
  store i32 %111, ptr %112, align 8
  %113 = call i32 @tegra_powergate_power_off(i32 noundef %111) #11
  br label %114

114:                                              ; preds = %108, %102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1
  %115 = load ptr, ptr %33, align 4
  %116 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %115, ptr noundef nonnull %2) #11
  switch i32 %116, label %121 [
    i32 0, label %117
    i32 -19, label %118
  ]

117:                                              ; preds = %114
  br label %118

118:                                              ; preds = %117, %114
  %119 = phi i8 [ 1, %117 ], [ 0, %114 ]
  %120 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 15
  store i8 %119, ptr %120, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %123

121:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  %122 = icmp slt i32 %116, 0
  br i1 %122, label %151, label %123

123:                                              ; preds = %121, %118
  %124 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #11
  %125 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 8
  store ptr %124, ptr %125, align 8
  %126 = icmp ugt ptr %124, inttoptr (i32 -4096 to ptr)
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = ptrtoint ptr %124 to i32
  br label %151

129:                                              ; preds = %123
  %130 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %131 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 9
  store i32 %130, ptr %131, align 4
  %132 = icmp slt i32 %130, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %129
  %134 = call i32 @tegra_dc_rgb_probe(ptr noundef nonnull %26) #11
  %135 = icmp slt i32 %134, 0
  %136 = icmp ne i32 %134, -19
  %137 = and i1 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = icmp eq i32 %134, -517
  %140 = select i1 %139, ptr @.str.8, ptr @.str.7
  %141 = load ptr, ptr %33, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %140, ptr noundef %141, ptr noundef nonnull @.str.9, i32 noundef %134) #12
  br label %151

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %26, ptr %143, align 8
  call void @pm_runtime_enable(ptr noundef %4) #11
  store volatile ptr %26, ptr %26, align 4
  %144 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %26, ptr %144, align 4
  %145 = getelementptr inbounds %struct.host1x_client, ptr %26, i32 0, i32 4
  store ptr @dc_client_ops, ptr %145, align 4
  %146 = getelementptr inbounds %struct.host1x_client, ptr %26, i32 0, i32 2
  store ptr %4, ptr %146, align 4
  call void @__host1x_client_init(ptr noundef nonnull %26, ptr noundef nonnull @tegra_dc_probe.__key) #11
  %147 = call i32 @__host1x_client_register(ptr noundef nonnull %26) #11
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %147) #12
  call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #11
  %150 = call i32 @tegra_dc_rgb_remove(ptr noundef nonnull %26) #11
  br label %151

151:                                              ; preds = %149, %142, %138, %129, %127, %121, %98, %95, %84, %77, %63, %25, %24
  %152 = phi i32 [ %18, %24 ], [ %79, %77 ], [ %86, %84 ], [ %128, %127 ], [ %134, %138 ], [ %147, %149 ], [ -12, %25 ], [ %96, %95 ], [ %100, %98 ], [ %116, %121 ], [ -6, %129 ], [ 0, %142 ], [ -517, %63 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @host1x_client_unregister(ptr noundef %3) #11
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.264, i32 noundef %4) #12
  br label %14

8:                                                ; preds = %1
  %9 = tail call i32 @tegra_dc_rgb_remove(ptr noundef %3) #11
  %10 = icmp slt i32 %9, 0
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %10, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.265, i32 noundef %9) #12
  br label %14

13:                                               ; preds = %8
  tail call void @__pm_runtime_disable(ptr noundef %11, i1 noundef zeroext true) #11
  br label %14

14:                                               ; preds = %13, %12, %6
  %15 = phi i32 [ %4, %6 ], [ %9, %12 ], [ 0, %13 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_power_off(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_rgb_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_rgb_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @driver_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @tegra_dc_match_by_pipe(ptr nocapture noundef readonly %0, ptr noundef %1) #7 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %1 to i32
  %6 = getelementptr inbounds %struct.tegra_dc, ptr %4, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, %5
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra_dc_early_init(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_drm, ptr %7, i32 0, i32 12
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_init(ptr noundef %0) #0 {
  %2 = alloca [2 x ptr], align 8
  %3 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 26
  tail call void @host1x_syncpt_release_vblank_reservation(ptr noundef %0, i32 noundef %11) #11
  %12 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %13, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %13, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %315, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %9, align 4
  br label %23

23:                                               ; preds = %32, %21
  %24 = phi i32 [ 0, %21 ], [ %33, %32 ]
  %25 = getelementptr %struct.tegra_windowgroup_soc, ptr %15, i32 %24, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %22
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr %struct.tegra_windowgroup_soc, ptr %15, i32 %24, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %23
  %33 = add nuw i32 %24, 1
  %34 = icmp eq i32 %33, %19
  br i1 %34, label %315, label %23

35:                                               ; preds = %28, %1
  %36 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %13, i32 0, i32 9
  %37 = load i8, ptr %36, align 2, !range !13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tegra_drm, ptr %8, i32 0, i32 13
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tegra_display_hub, ptr %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 9
  store ptr %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = tail call ptr @host1x_syncpt_request(ptr noundef %0, i32 noundef 1) #11
  %46 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 1
  store ptr %45, ptr %46, align 8
  %47 = icmp eq ptr %45, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.13) #12
  br label %51

51:                                               ; preds = %48, %44
  %52 = tail call i32 @host1x_client_iommu_attach(ptr noundef %0) #11
  %53 = icmp slt i32 %52, 0
  %54 = icmp ne i32 %52, -19
  %55 = and i1 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.14, i32 noundef %52) #12
  br label %315

59:                                               ; preds = %51
  %60 = load ptr, ptr %12, align 8
  %61 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %60, i32 0, i32 10
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %114, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %60, i32 0, i32 11
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %205, label %68

68:                                               ; preds = %111, %64
  %69 = phi ptr [ %113, %111 ], [ %62, %64 ]
  %70 = phi ptr [ %105, %111 ], [ %60, %64 ]
  %71 = phi i32 [ %107, %111 ], [ 0, %64 ]
  %72 = phi ptr [ %106, %111 ], [ null, %64 ]
  %73 = getelementptr %struct.tegra_windowgroup_soc, ptr %69, i32 %71
  %74 = getelementptr %struct.tegra_windowgroup_soc, ptr %69, i32 %71, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %9, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %68
  %79 = getelementptr %struct.tegra_windowgroup_soc, ptr %69, i32 %71, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %104, label %82

82:                                               ; preds = %78
  %83 = getelementptr %struct.tegra_windowgroup_soc, ptr %69, i32 %71, i32 2
  br label %84

84:                                               ; preds = %97, %82
  %85 = phi i32 [ 0, %82 ], [ %99, %97 ]
  %86 = phi ptr [ %72, %82 ], [ %98, %97 ]
  %87 = load ptr, ptr %83, align 4
  %88 = getelementptr i32, ptr %87, i32 %85
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr %73, align 4
  %91 = tail call ptr @tegra_shared_plane_create(ptr noundef %6, ptr noundef %0, i32 noundef %90, i32 noundef %89) #11
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %200, label %93

93:                                               ; preds = %84
  %94 = icmp eq ptr %86, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.drm_plane, ptr %91, i32 0, i32 16
  store i32 1, ptr %96, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi ptr [ %91, %95 ], [ %86, %93 ]
  %99 = add nuw i32 %85, 1
  %100 = load i32, ptr %79, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %84, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %12, align 8
  br label %104

104:                                              ; preds = %102, %78, %68
  %105 = phi ptr [ %70, %68 ], [ %70, %78 ], [ %103, %102 ]
  %106 = phi ptr [ %72, %68 ], [ %72, %78 ], [ %98, %102 ]
  %107 = add nuw i32 %71, 1
  %108 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %105, i32 0, i32 11
  %109 = load i32, ptr %108, align 4
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %111, label %200

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %105, i32 0, i32 10
  %113 = load ptr, ptr %112, align 4
  br label %68

114:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store i64 0, ptr %2, align 8, !annotation !8
  %115 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 19
  %116 = load i32, ptr %115, align 4
  %117 = shl nuw i32 1, %116
  %118 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %119 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3520, i32 noundef 480) #13
  %120 = icmp eq ptr %119, null
  br i1 %120, label %198, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.tegra_plane, ptr %119, i32 0, i32 2
  store i32 2560, ptr %122, align 4
  %123 = getelementptr inbounds %struct.tegra_plane, ptr %119, i32 0, i32 3
  store i32 0, ptr %123, align 8
  %124 = getelementptr inbounds %struct.tegra_plane, ptr %119, i32 0, i32 1
  store ptr %0, ptr %124, align 8
  %125 = load ptr, ptr %12, align 8
  %126 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %125, i32 0, i32 13
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %125, i32 0, i32 12
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %125, i32 0, i32 16
  %131 = load ptr, ptr %130, align 4
  %132 = tail call i32 @tegra_plane_interconnect_init(ptr noundef nonnull %119) #11
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %121
  tail call void @kfree(ptr noundef nonnull %119) #11
  %135 = inttoptr i32 %132 to ptr
  br label %150

136:                                              ; preds = %121
  %137 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %6, ptr noundef nonnull %119, i32 noundef %117, ptr noundef nonnull @tegra_plane_funcs, ptr noundef %129, i32 noundef %127, ptr noundef %131, i32 noundef 1, ptr noundef null) #11
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  tail call void @kfree(ptr noundef nonnull %119) #11
  %140 = inttoptr i32 %137 to ptr
  br label %150

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.drm_plane, ptr %119, i32 0, i32 18
  store ptr @tegra_plane_helper_funcs, ptr %142, align 8
  %143 = load i32, ptr %123, align 8
  %144 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %119, i32 noundef %143, i32 noundef 0, i32 noundef 255) #11
  %145 = tail call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %119, i32 noundef 1, i32 noundef 53) #11
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.17, i32 noundef %145) #12
  br label %150

150:                                              ; preds = %147, %141, %139, %134
  %151 = phi ptr [ %135, %134 ], [ %140, %139 ], [ %119, %147 ], [ %119, %141 ]
  %152 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %198, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %12, align 8
  %155 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %154, i32 0, i32 2
  %156 = load i8, ptr %155, align 2, !range !13
  %157 = icmp eq i8 %156, 0
  %158 = tail call fastcc ptr @tegra_dc_overlay_plane_create(ptr noundef %6, ptr noundef %0, i32 noundef 1, i1 noundef zeroext false) #11
  store ptr %158, ptr %2, align 8
  %159 = icmp ugt ptr %158, inttoptr (i32 -4096 to ptr)
  br i1 %159, label %165, label %160

160:                                              ; preds = %153
  br i1 %157, label %198, label %161

161:                                              ; preds = %160
  %162 = tail call fastcc ptr @tegra_dc_overlay_plane_create(ptr noundef %6, ptr noundef %0, i32 noundef 2, i1 noundef zeroext false) #11
  %163 = getelementptr inbounds [2 x ptr], ptr %2, i32 0, i32 1
  store ptr %162, ptr %163, align 4
  %164 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %165, label %198

165:                                              ; preds = %161, %153
  %166 = phi ptr [ %158, %153 ], [ %162, %161 ]
  %167 = phi i1 [ false, %153 ], [ true, %161 ]
  %168 = phi i32 [ -1, %153 ], [ 0, %161 ]
  br i1 %159, label %193, label %169

169:                                              ; preds = %165
  %170 = getelementptr [2 x ptr], ptr %2, i32 0, i32 %168
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.drm_plane, ptr %171, i32 0, i32 14
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr inbounds %struct.drm_plane_funcs, ptr %173, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  tail call void %175(ptr noundef %171) #11
  br i1 %167, label %193, label %176

176:                                              ; preds = %169
  %177 = add nsw i32 %168, -1
  %178 = getelementptr [2 x ptr], ptr %2, i32 0, i32 %177
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.drm_plane, ptr %179, i32 0, i32 14
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr inbounds %struct.drm_plane_funcs, ptr %181, i32 0, i32 2
  %183 = load ptr, ptr %182, align 4
  tail call void %183(ptr noundef %179) #11
  %184 = icmp eq i32 %177, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %176
  %186 = add nsw i32 %168, -2
  %187 = getelementptr [2 x ptr], ptr %2, i32 0, i32 %186
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.drm_plane, ptr %188, i32 0, i32 14
  %190 = load ptr, ptr %189, align 8
  %191 = getelementptr inbounds %struct.drm_plane_funcs, ptr %190, i32 0, i32 2
  %192 = load ptr, ptr %191, align 4
  tail call void %192(ptr noundef %188) #11
  br label %193

193:                                              ; preds = %185, %176, %169, %165
  %194 = getelementptr inbounds %struct.drm_plane, ptr %151, i32 0, i32 14
  %195 = load ptr, ptr %194, align 8
  %196 = getelementptr inbounds %struct.drm_plane_funcs, ptr %195, i32 0, i32 2
  %197 = load ptr, ptr %196, align 4
  tail call void %197(ptr noundef %151) #11
  br label %198

198:                                              ; preds = %193, %161, %160, %150, %114
  %199 = phi ptr [ %166, %193 ], [ %151, %150 ], [ inttoptr (i32 -12 to ptr), %114 ], [ %151, %161 ], [ %151, %160 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %200

200:                                              ; preds = %198, %104, %84
  %201 = phi ptr [ %199, %198 ], [ %91, %84 ], [ %106, %104 ]
  %202 = icmp ugt ptr %201, inttoptr (i32 -4096 to ptr)
  br i1 %202, label %309, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr %12, align 8
  br label %205

205:                                              ; preds = %203, %64
  %206 = phi ptr [ %204, %203 ], [ %60, %64 ]
  %207 = phi ptr [ %201, %203 ], [ null, %64 ]
  %208 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %206, i32 0, i32 2
  %209 = load i8, ptr %208, align 2, !range !13
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %245, label %211

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 19
  %213 = load i32, ptr %212, align 4
  %214 = shl nuw i32 1, %213
  %215 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %216 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %215, i32 noundef 3520, i32 noundef 480) #13
  %217 = icmp eq ptr %216, null
  br i1 %217, label %242, label %218

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.tegra_plane, ptr %216, i32 0, i32 3
  store i32 6, ptr %219, align 8
  %220 = getelementptr inbounds %struct.tegra_plane, ptr %216, i32 0, i32 1
  store ptr %0, ptr %220, align 8
  %221 = load ptr, ptr %12, align 8
  %222 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %221, i32 0, i32 9
  %223 = load i8, ptr %222, align 2, !range !13
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %218
  %226 = tail call i32 @tegra_plane_interconnect_init(ptr noundef nonnull %216) #11
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %225
  tail call void @kfree(ptr noundef nonnull %216) #11
  %229 = inttoptr i32 %226 to ptr
  br label %239

230:                                              ; preds = %225, %218
  %231 = phi ptr [ @tegra_legacy_cursor_plane_formats, %225 ], [ @tegra_cursor_plane_formats, %218 ]
  %232 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %6, ptr noundef nonnull %216, i32 noundef %214, ptr noundef nonnull @tegra_plane_funcs, ptr noundef nonnull %231, i32 noundef 1, ptr noundef nonnull @linear_modifiers, i32 noundef 2, ptr noundef null) #11
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  tail call void @kfree(ptr noundef nonnull %216) #11
  %235 = inttoptr i32 %232 to ptr
  br label %239

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.drm_plane, ptr %216, i32 0, i32 18
  store ptr @tegra_cursor_plane_helper_funcs, ptr %237, align 8
  %238 = tail call i32 @drm_plane_create_zpos_immutable_property(ptr noundef nonnull %216, i32 noundef 255) #11
  br label %239

239:                                              ; preds = %236, %234, %228
  %240 = phi ptr [ %235, %234 ], [ %216, %236 ], [ %229, %228 ]
  %241 = icmp ugt ptr %240, inttoptr (i32 -4096 to ptr)
  br i1 %241, label %242, label %250

242:                                              ; preds = %239, %211
  %243 = phi ptr [ %240, %239 ], [ inttoptr (i32 -12 to ptr), %211 ]
  %244 = ptrtoint ptr %243 to i32
  br label %302

245:                                              ; preds = %205
  %246 = tail call fastcc ptr @tegra_dc_overlay_plane_create(ptr noundef %6, ptr noundef %0, i32 noundef 2, i1 noundef zeroext true)
  %247 = icmp ugt ptr %246, inttoptr (i32 -4096 to ptr)
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = ptrtoint ptr %246 to i32
  br label %302

250:                                              ; preds = %245, %239
  %251 = phi ptr [ %240, %239 ], [ %246, %245 ]
  %252 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 3
  %253 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %6, ptr noundef %252, ptr noundef %207, ptr noundef %251, ptr noundef nonnull @tegra_crtc_funcs, ptr noundef null) #11
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %302, label %255

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 3, i32 19
  store ptr @tegra_crtc_helper_funcs, ptr %256, align 4
  %257 = load ptr, ptr %12, align 8
  %258 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %257, i32 0, i32 6
  %259 = load i32, ptr %258, align 4
  %260 = getelementptr inbounds %struct.tegra_drm, ptr %8, i32 0, i32 11
  %261 = load i32, ptr %260, align 4
  %262 = icmp ugt i32 %259, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %255
  store i32 %259, ptr %260, align 4
  %264 = load ptr, ptr %12, align 8
  br label %265

265:                                              ; preds = %263, %255
  %266 = phi ptr [ %264, %263 ], [ %257, %255 ]
  %267 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %266, i32 0, i32 9
  %268 = load i8, ptr %267, align 2, !range !13
  %269 = icmp eq i8 %268, 0
  %270 = select i1 %269, i32 4096, i32 16384
  %271 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 26
  store i32 %270, ptr %271, align 4
  %272 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 25
  store i32 %270, ptr %272, align 4
  %273 = tail call i32 @tegra_dc_rgb_init(ptr noundef %6, ptr noundef %0) #11
  %274 = icmp slt i32 %273, 0
  %275 = icmp ne i32 %273, -19
  %276 = and i1 %274, %275
  %277 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 2
  %278 = load ptr, ptr %277, align 4
  br i1 %276, label %279, label %280

279:                                              ; preds = %265
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %278, ptr noundef nonnull @.str.15, i32 noundef %273) #12
  br label %302

280:                                              ; preds = %265
  %281 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 9
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr inbounds %struct.device, ptr %278, i32 0, i32 3
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = load ptr, ptr %278, align 4
  br label %288

288:                                              ; preds = %286, %280
  %289 = phi ptr [ %287, %286 ], [ %284, %280 ]
  %290 = tail call i32 @devm_request_threaded_irq(ptr noundef %278, i32 noundef %282, ptr noundef nonnull @tegra_dc_irq, ptr noundef null, i32 noundef 0, ptr noundef %289, ptr noundef %0) #11
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  %293 = load ptr, ptr %277, align 4
  %294 = load i32, ptr %281, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %293, ptr noundef nonnull @.str.16, i32 noundef %294, i32 noundef %290) #12
  br label %302

295:                                              ; preds = %288
  %296 = load ptr, ptr %3, align 4
  %297 = getelementptr inbounds %struct.device, ptr %296, i32 0, i32 20
  %298 = load ptr, ptr %297, align 4
  %299 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr inbounds %struct.device, ptr %300, i32 0, i32 20
  store ptr %298, ptr %301, align 4
  br label %315

302:                                              ; preds = %292, %279, %250, %248, %242
  %303 = phi ptr [ %243, %242 ], [ %251, %250 ], [ %251, %279 ], [ %251, %292 ], [ %246, %248 ]
  %304 = phi i32 [ %244, %242 ], [ %253, %250 ], [ %273, %279 ], [ %290, %292 ], [ %249, %248 ]
  %305 = icmp eq ptr %303, null
  %306 = icmp ugt ptr %303, inttoptr (i32 -4096 to ptr)
  %307 = or i1 %305, %306
  br i1 %307, label %311, label %308

308:                                              ; preds = %302
  tail call void @drm_plane_cleanup(ptr noundef nonnull %303) #11
  br label %311

309:                                              ; preds = %200
  %310 = ptrtoint ptr %201 to i32
  br label %312

311:                                              ; preds = %308, %302
  tail call void @drm_plane_cleanup(ptr noundef %207) #11
  br label %312

312:                                              ; preds = %311, %309
  %313 = phi i32 [ %304, %311 ], [ %310, %309 ]
  tail call void @host1x_client_iommu_detach(ptr noundef %0) #11
  %314 = load ptr, ptr %46, align 8
  tail call void @host1x_syncpt_put(ptr noundef %314) #11
  br label %315

315:                                              ; preds = %312, %295, %56, %32, %17
  %316 = phi i32 [ %52, %56 ], [ %313, %312 ], [ 0, %295 ], [ 0, %17 ], [ 0, %32 ]
  ret i32 %316
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %3, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %23, %11
  %15 = phi i32 [ 0, %11 ], [ %24, %23 ]
  %16 = getelementptr %struct.tegra_windowgroup_soc, ptr %5, i32 %15, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %13
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr %struct.tegra_windowgroup_soc, ptr %5, i32 %15, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %14
  %24 = add nuw i32 %15, 1
  %25 = icmp eq i32 %24, %9
  br i1 %25, label %41, label %14

26:                                               ; preds = %19, %1
  %27 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 20
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  tail call void @devm_free_irq(ptr noundef %31, i32 noundef %33, ptr noundef %0) #11
  %34 = tail call i32 @tegra_dc_rgb_exit(ptr noundef %0) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.258, i32 noundef %34) #12
  br label %41

38:                                               ; preds = %26
  tail call void @host1x_client_iommu_detach(ptr noundef %0) #11
  %39 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  tail call void @host1x_syncpt_put(ptr noundef %40) #11
  br label %41

41:                                               ; preds = %38, %36, %23, %7
  %42 = phi i32 [ %34, %36 ], [ 0, %38 ], [ 0, %7 ], [ 0, %23 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tegra_dc_late_exit(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_drm, ptr %7, i32 0, i32 12
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.259, i32 noundef %6) #12
  br label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %11, i32 0, i32 7
  %13 = load i8, ptr %12, align 4, !range !13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @tegra_powergate_power_off(i32 noundef %17) #11
  br label %19

19:                                               ; preds = %15, %9
  %20 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 8
  tail call void @clk_disable(ptr noundef %21) #11
  tail call void @clk_unprepare(ptr noundef %21) #11
  %22 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #11
  br label %23

23:                                               ; preds = %19, %8
  %24 = phi i32 [ %6, %8 ], [ 0, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #11
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #11, !srcloc !15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #11, !srcloc !16
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  br label %12

12:                                               ; preds = %11, %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.260, i32 noundef %4) #12
  br label %52

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %15, i32 0, i32 7
  %17 = load i8, ptr %16, align 4, !range !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef %21, ptr noundef %23, ptr noundef %25) #11
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.261, i32 noundef %26) #12
  br label %49

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 8
  %32 = tail call i32 @clk_prepare(ptr noundef %31) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = tail call i32 @clk_enable(ptr noundef %31) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  tail call void @clk_unprepare(ptr noundef %31) #11
  br label %38

38:                                               ; preds = %37, %29
  %39 = phi i32 [ %32, %29 ], [ %35, %37 ]
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.262, i32 noundef %39) #12
  br label %49

42:                                               ; preds = %38, %34
  %43 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @reset_control_deassert(ptr noundef %44) #11
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.263, i32 noundef %45) #12
  %48 = load ptr, ptr %30, align 8
  tail call void @clk_disable(ptr noundef %48) #11
  tail call void @clk_unprepare(ptr noundef %48) #11
  br label %49

49:                                               ; preds = %47, %41, %28
  %50 = phi i32 [ %26, %28 ], [ %39, %41 ], [ %45, %47 ]
  %51 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #11
  br label %52

52:                                               ; preds = %49, %42, %19, %12
  %53 = phi i32 [ %4, %12 ], [ %50, %49 ], [ 0, %42 ], [ 0, %19 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_release_vblank_reservation(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_iommu_attach(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @tegra_dc_overlay_plane_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 480) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %4
  %12 = shl i32 %2, 9
  %13 = add i32 %12, 2560
  %14 = getelementptr inbounds %struct.tegra_plane, ptr %9, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tegra_plane, ptr %9, i32 0, i32 3
  store i32 %2, ptr %15, align 8
  %16 = getelementptr inbounds %struct.tegra_plane, ptr %9, i32 0, i32 1
  store ptr %1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 14
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %18, i32 0, i32 15
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %18, i32 0, i32 14
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @tegra_plane_interconnect_init(ptr noundef nonnull %9) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %11
  tail call void @kfree(ptr noundef nonnull %9) #11
  %26 = inttoptr i32 %23 to ptr
  br label %42

27:                                               ; preds = %11
  %28 = select i1 %3, i32 2, i32 0
  %29 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %7, ptr noundef nonnull @tegra_plane_funcs, ptr noundef %22, i32 noundef %20, ptr noundef nonnull @linear_modifiers, i32 noundef %28, ptr noundef null) #11
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %9) #11
  %32 = inttoptr i32 %29 to ptr
  br label %42

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 18
  store ptr @tegra_plane_helper_funcs, ptr %34, align 8
  %35 = load i32, ptr %15, align 8
  %36 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %9, i32 noundef %35, i32 noundef 0, i32 noundef 255) #11
  %37 = tail call i32 @drm_plane_create_rotation_property(ptr noundef nonnull %9, i32 noundef 1, i32 noundef 53) #11
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.17, i32 noundef %37) #12
  br label %42

42:                                               ; preds = %39, %33, %31, %25, %4
  %43 = phi ptr [ %26, %25 ], [ %32, %31 ], [ %9, %39 ], [ %9, %33 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_rgb_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 220
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %7 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = tail call ptr @llvm.thread.pointer() #11
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %23 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %8, i32 noundef 55, i32 noundef %6) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %24 = load ptr, ptr %7, align 4
  br label %25

25:                                               ; preds = %22, %11, %2
  %26 = phi ptr [ %8, %2 ], [ %8, %11 ], [ %24, %22 ]
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = tail call ptr @llvm.thread.pointer() #11
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %41 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %26, i32 noundef 55, i32 noundef %6) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %42

42:                                               ; preds = %40, %29, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr i8, ptr %43, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %6) #11, !srcloc !12
  %45 = and i32 %6, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 11
  %49 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 11, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = load i32, ptr %48, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %48, align 4
  br label %54

54:                                               ; preds = %47, %42
  %55 = and i32 %6, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 3
  %59 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %58) #11
  %60 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 11, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 11, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  br label %66

66:                                               ; preds = %57, %54
  %67 = and i32 %6, 1792
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 11, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  %73 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 11, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %69, %66
  %77 = and i32 %6, 114688
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 11, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4
  %83 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 11, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 4
  br label %86

86:                                               ; preds = %79, %76
  %87 = and i32 %6, 8388608
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 11, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 4
  %93 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 11, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 4
  br label %96

96:                                               ; preds = %89, %86
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_client_iommu_detach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_shared_plane_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_interconnect_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_prepare_fb(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_plane_cleanup_fb(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_plane_atomic_check(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 3
  %12 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr i8, ptr %13, i32 -104
  %16 = select i1 %14, ptr null, ptr %15
  %17 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 11
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 12
  store i32 0, ptr %18, align 4
  br i1 %14, label %19, label %21

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 10
  store i32 0, ptr %20, align 4
  br label %83

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_framebuffer, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 4
  %28 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 5
  %29 = tail call i32 @tegra_plane_format(i32 noundef %26, ptr noundef %27, ptr noundef %28) #11
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %83, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.tegra_dc, ptr %16, i32 0, i32 14
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %33, i32 0, i32 5
  %35 = load i8, ptr %34, align 1, !range !13
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = tail call i32 @tegra_plane_setup_legacy_state(ptr noundef %0, ptr noundef %8) #11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %83, label %40

40:                                               ; preds = %37, %31
  %41 = load ptr, ptr %22, align 4
  %42 = tail call i32 @tegra_fb_get_tiling(ptr noundef %41, ptr noundef %11) #11
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %83, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %11, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load ptr, ptr %32, align 8
  %49 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %48, i32 0, i32 3
  %50 = load i8, ptr %49, align 1, !range !13
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #11
  br label %83

53:                                               ; preds = %47, %44
  %54 = load ptr, ptr %22, align 4
  %55 = tail call zeroext i1 @tegra_fb_is_bottom_up(ptr noundef %54) #11
  %56 = or i32 %10, 32
  %57 = select i1 %55, i32 %56, i32 %10
  %58 = tail call i32 @drm_rotation_simplify(i32 noundef %57, i32 noundef 49) #11
  %59 = trunc i32 %58 to i8
  %60 = lshr i8 %59, 4
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 6
  store i8 %61, ptr %62, align 4
  %63 = trunc i32 %58 to i8
  %64 = lshr i8 %63, 5
  %65 = and i8 %64, 1
  %66 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 7
  store i8 %65, ptr %66, align 1
  %67 = load ptr, ptr %22, align 4
  %68 = getelementptr inbounds %struct.drm_framebuffer, ptr %67, i32 0, i32 4
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.drm_format_info, ptr %69, i32 0, i32 2
  %71 = load i8, ptr %70, align 1
  %72 = icmp ugt i8 %71, 2
  br i1 %72, label %73, label %80

73:                                               ; preds = %53
  %74 = getelementptr %struct.drm_framebuffer, ptr %67, i32 0, i32 6, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = getelementptr %struct.drm_framebuffer, ptr %67, i32 0, i32 6, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %83

80:                                               ; preds = %73, %53
  %81 = tail call i32 @tegra_plane_state_add(ptr noundef %0, ptr noundef %8) #11
  %82 = tail call i32 @llvm.smin.i32(i32 %81, i32 0)
  br label %83

83:                                               ; preds = %80, %79, %52, %40, %37, %21, %19
  %84 = phi i32 [ -22, %79 ], [ -22, %52 ], [ 0, %19 ], [ %29, %21 ], [ %38, %37 ], [ %42, %40 ], [ %82, %80 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_plane_atomic_update(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.tegra_dc_window, align 4
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.__drm_planes_state, ptr %6, i32 %8, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %4, i8 0, i32 84, i1 false), !annotation !8
  %13 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %1910, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %11, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %1910, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 22
  %21 = load i8, ptr %20, align 4, !range !13
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @tegra_plane_atomic_disable(ptr noundef %0, ptr noundef %1)
  br label %1910

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 20
  %26 = load i32, ptr %25, align 4
  %27 = ashr i32 %26, 16
  store i32 %27, ptr %4, align 4
  %28 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 20, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = ashr i32 %29, 16
  %31 = getelementptr inbounds %struct.anon.87, ptr %4, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 20, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 %33, %26
  %35 = ashr i32 %34, 16
  %36 = getelementptr inbounds %struct.anon.87, ptr %4, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 20, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %38, %29
  %40 = ashr i32 %39, 16
  %41 = getelementptr inbounds %struct.anon.87, ptr %4, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 21
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 21, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 1, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 21, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %49, %43
  %51 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 1, i32 2
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 21, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = sub i32 %53, %46
  %55 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 1, i32 3
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.drm_framebuffer, ptr %12, i32 0, i32 4
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.drm_format_info, ptr %57, i32 0, i32 3
  %59 = load i8, ptr %58, align 2
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 3
  %62 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 2
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.tegra_plane_state, ptr %10, i32 0, i32 6
  %64 = load i8, ptr %63, align 4, !range !13
  %65 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 6
  store i8 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.tegra_plane_state, ptr %10, i32 0, i32 7
  %67 = load i8, ptr %66, align 1, !range !13
  %68 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 7
  store i8 %67, ptr %68, align 1
  %69 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 16
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 5
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 8
  %73 = getelementptr inbounds %struct.tegra_plane_state, ptr %10, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %72, ptr noundef align 4 dereferenceable(12) %73, i32 12, i1 false)
  %74 = getelementptr inbounds %struct.tegra_plane_state, ptr %10, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 9
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.tegra_plane_state, ptr %10, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 10
  store i32 %78, ptr %79, align 4
  %80 = load ptr, ptr %56, align 8
  %81 = getelementptr inbounds %struct.drm_format_info, ptr %80, i32 0, i32 2
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %126, label %84

84:                                               ; preds = %24
  %85 = getelementptr %struct.tegra_plane_state, ptr %10, i32 0, i32 2, i32 0
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 7, i32 0
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, %86
  %90 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 4, i32 0
  store i32 %89, ptr %90, align 4
  %91 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 6, i32 0
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 3, i32 0
  store i32 %92, ptr %93, align 4
  %94 = load i8, ptr %81, align 1
  %95 = icmp ugt i8 %94, 1
  br i1 %95, label %96, label %126

96:                                               ; preds = %84
  %97 = getelementptr %struct.tegra_plane_state, ptr %10, i32 0, i32 2, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 7, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, %98
  %102 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 4, i32 1
  store i32 %101, ptr %102, align 4
  %103 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 6, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 3, i32 1
  store i32 %104, ptr %105, align 4
  %106 = load ptr, ptr %56, align 8
  %107 = getelementptr inbounds %struct.drm_format_info, ptr %106, i32 0, i32 2
  %108 = load i8, ptr %107, align 1
  %109 = icmp ugt i8 %108, 2
  br i1 %109, label %110, label %126

110:                                              ; preds = %110, %96
  %111 = phi i32 [ %121, %110 ], [ 2, %96 ]
  %112 = getelementptr %struct.tegra_plane_state, ptr %10, i32 0, i32 2, i32 %111
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr %struct.drm_framebuffer, ptr %12, i32 0, i32 7, i32 %111
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, %113
  %117 = getelementptr %struct.tegra_dc_window, ptr %4, i32 0, i32 4, i32 %111
  store i32 %116, ptr %117, align 4
  %118 = load ptr, ptr %56, align 8
  %119 = getelementptr inbounds %struct.drm_format_info, ptr %118, i32 0, i32 2
  %120 = load i8, ptr %119, align 1
  %121 = add nuw nsw i32 %111, 1
  %122 = zext i8 %120 to i32
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %110, label %124, !llvm.loop !22

124:                                              ; preds = %110
  %125 = load i32, ptr %76, align 4
  br label %126

126:                                              ; preds = %124, %96, %84, %24
  %127 = phi i32 [ %75, %24 ], [ %125, %124 ], [ %75, %96 ], [ %75, %84 ]
  %128 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 1
  %129 = load ptr, ptr %128, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1, !annotation !8
  %130 = call zeroext i1 @tegra_plane_format_is_yuv(i32 noundef %127, ptr noundef nonnull %3, ptr noundef null) #11
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load i32, ptr %62, align 4
  %133 = lshr i32 %132, 3
  br label %138

134:                                              ; preds = %126
  %135 = load i8, ptr %3, align 1, !range !13
  %136 = icmp eq i8 %135, 0
  %137 = select i1 %136, i32 2, i32 1
  br label %138

138:                                              ; preds = %134, %131
  %139 = phi i32 [ %137, %134 ], [ %133, %131 ]
  %140 = load i32, ptr %76, align 4
  %141 = load ptr, ptr %128, align 8
  %142 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, 387
  %145 = getelementptr inbounds %struct.tegra_dc, ptr %141, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %138
  %150 = tail call ptr @llvm.thread.pointer() #11
  %151 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %152 = load i32, ptr %151, align 8
  %153 = lshr i32 %152, 5
  %154 = getelementptr i32, ptr @__cpu_online_mask, i32 %153
  %155 = load volatile i32, ptr %154, align 4
  %156 = and i32 %152, 31
  %157 = shl nuw i32 1, %156
  %158 = and i32 %157, %155
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %149
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %161 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %146, i32 noundef %144, i32 noundef %140) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %162

162:                                              ; preds = %160, %149, %138
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %163 = getelementptr inbounds %struct.tegra_dc, ptr %141, i32 0, i32 8
  %164 = load ptr, ptr %163, align 8
  %165 = shl i32 %144, 2
  %166 = getelementptr i8, ptr %164, i32 %165
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %140) #11, !srcloc !12
  %167 = load i32, ptr %79, align 4
  %168 = load ptr, ptr %128, align 8
  %169 = load i32, ptr %142, align 4
  %170 = add i32 %169, 385
  %171 = getelementptr inbounds %struct.tegra_dc, ptr %168, i32 0, i32 2
  %172 = load ptr, ptr %171, align 4
  %173 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %162
  %176 = tail call ptr @llvm.thread.pointer() #11
  %177 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 2
  %178 = load i32, ptr %177, align 8
  %179 = lshr i32 %178, 5
  %180 = getelementptr i32, ptr @__cpu_online_mask, i32 %179
  %181 = load volatile i32, ptr %180, align 4
  %182 = and i32 %178, 31
  %183 = shl nuw i32 1, %182
  %184 = and i32 %183, %181
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %175
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %187 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %172, i32 noundef %170, i32 noundef %167) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %188

188:                                              ; preds = %186, %175, %162
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %189 = getelementptr inbounds %struct.tegra_dc, ptr %168, i32 0, i32 8
  %190 = load ptr, ptr %189, align 8
  %191 = shl i32 %170, 2
  %192 = getelementptr i8, ptr %190, i32 %191
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %192, i32 %167) #11, !srcloc !12
  %193 = load i32, ptr %47, align 4
  %194 = shl i32 %193, 16
  %195 = and i32 %194, 536805376
  %196 = load i32, ptr %44, align 4
  %197 = and i32 %196, 8191
  %198 = or i32 %195, %197
  %199 = load ptr, ptr %128, align 8
  %200 = load i32, ptr %142, align 4
  %201 = add i32 %200, 388
  %202 = getelementptr inbounds %struct.tegra_dc, ptr %199, i32 0, i32 2
  %203 = load ptr, ptr %202, align 4
  %204 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %188
  %207 = tail call ptr @llvm.thread.pointer() #11
  %208 = getelementptr inbounds %struct.thread_info, ptr %207, i32 0, i32 2
  %209 = load i32, ptr %208, align 8
  %210 = lshr i32 %209, 5
  %211 = getelementptr i32, ptr @__cpu_online_mask, i32 %210
  %212 = load volatile i32, ptr %211, align 4
  %213 = and i32 %209, 31
  %214 = shl nuw i32 1, %213
  %215 = and i32 %214, %212
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %206
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %218 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %203, i32 noundef %201, i32 noundef %198) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %219

219:                                              ; preds = %217, %206, %188
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %220 = getelementptr inbounds %struct.tegra_dc, ptr %199, i32 0, i32 8
  %221 = load ptr, ptr %220, align 8
  %222 = shl i32 %201, 2
  %223 = getelementptr i8, ptr %221, i32 %222
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %198) #11, !srcloc !12
  %224 = load i32, ptr %55, align 4
  %225 = shl i32 %224, 16
  %226 = and i32 %225, 536805376
  %227 = load i32, ptr %51, align 4
  %228 = and i32 %227, 8191
  %229 = or i32 %226, %228
  %230 = load ptr, ptr %128, align 8
  %231 = load i32, ptr %142, align 4
  %232 = add i32 %231, 389
  %233 = getelementptr inbounds %struct.tegra_dc, ptr %230, i32 0, i32 2
  %234 = load ptr, ptr %233, align 4
  %235 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %250

237:                                              ; preds = %219
  %238 = tail call ptr @llvm.thread.pointer() #11
  %239 = getelementptr inbounds %struct.thread_info, ptr %238, i32 0, i32 2
  %240 = load i32, ptr %239, align 8
  %241 = lshr i32 %240, 5
  %242 = getelementptr i32, ptr @__cpu_online_mask, i32 %241
  %243 = load volatile i32, ptr %242, align 4
  %244 = and i32 %240, 31
  %245 = shl nuw i32 1, %244
  %246 = and i32 %245, %243
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %237
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %249 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %234, i32 noundef %232, i32 noundef %229) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %250

250:                                              ; preds = %248, %237, %219
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %251 = getelementptr inbounds %struct.tegra_dc, ptr %230, i32 0, i32 8
  %252 = load ptr, ptr %251, align 8
  %253 = shl i32 %232, 2
  %254 = getelementptr i8, ptr %252, i32 %253
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %254, i32 %229) #11, !srcloc !12
  %255 = load i32, ptr %4, align 4
  %256 = mul i32 %255, %139
  %257 = load i32, ptr %31, align 4
  %258 = load i32, ptr %36, align 4
  %259 = mul i32 %258, %139
  %260 = load i32, ptr %41, align 4
  %261 = load i8, ptr %65, align 4, !range !13
  %262 = icmp eq i8 %261, 0
  %263 = add i32 %258, -1
  %264 = mul i32 %263, %139
  %265 = select i1 %262, i32 0, i32 %264
  %266 = add i32 %265, %256
  %267 = load i8, ptr %68, align 1, !range !13
  %268 = icmp eq i8 %267, 0
  %269 = add i32 %260, -1
  %270 = select i1 %268, i32 0, i32 %269
  %271 = add i32 %270, %257
  %272 = shl i32 %260, 16
  %273 = and i32 %272, 536805376
  %274 = and i32 %259, 32767
  %275 = or i32 %273, %274
  %276 = load ptr, ptr %128, align 8
  %277 = load i32, ptr %142, align 4
  %278 = add i32 %277, 390
  %279 = getelementptr inbounds %struct.tegra_dc, ptr %276, i32 0, i32 2
  %280 = load ptr, ptr %279, align 4
  %281 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %296

283:                                              ; preds = %250
  %284 = tail call ptr @llvm.thread.pointer() #11
  %285 = getelementptr inbounds %struct.thread_info, ptr %284, i32 0, i32 2
  %286 = load i32, ptr %285, align 8
  %287 = lshr i32 %286, 5
  %288 = getelementptr i32, ptr @__cpu_online_mask, i32 %287
  %289 = load volatile i32, ptr %288, align 4
  %290 = and i32 %286, 31
  %291 = shl nuw i32 1, %290
  %292 = and i32 %291, %289
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %283
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %295 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %280, i32 noundef %278, i32 noundef %275) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %296

296:                                              ; preds = %294, %283, %250
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %297 = getelementptr inbounds %struct.tegra_dc, ptr %276, i32 0, i32 8
  %298 = load ptr, ptr %297, align 8
  %299 = shl i32 %278, 2
  %300 = getelementptr i8, ptr %298, i32 %299
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %300, i32 %275) #11, !srcloc !12
  %301 = xor i1 %130, true
  %302 = load i8, ptr %3, align 1
  %303 = icmp eq i8 %302, 0
  %304 = select i1 %301, i1 true, i1 %303
  %305 = select i1 %304, i32 %139, i32 2
  %306 = load i32, ptr %36, align 4
  %307 = load i32, ptr %51, align 4
  switch i32 %305, label %308 [
    i32 2, label %312
    i32 4, label %311
  ]

308:                                              ; preds = %296
  %309 = load i1, ptr @compute_dda_inc.__already_done, align 1
  br i1 %309, label %311, label %310, !prof !24

310:                                              ; preds = %308
  store i1 true, ptr @compute_dda_inc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 141, i32 noundef 9, ptr noundef null) #11
  br label %311

311:                                              ; preds = %310, %308, %296
  br label %312

312:                                              ; preds = %311, %296
  %313 = phi i32 [ 16384, %311 ], [ 32768, %296 ]
  %314 = shl i32 %306, 12
  %315 = shl i32 %307, 12
  %316 = add i32 %315, -4096
  %317 = call i32 @llvm.umax.i32(i32 %316, i32 4096) #11
  %318 = add i32 %314, -4096
  %319 = zext i32 %318 to i64
  %320 = shl nuw nsw i64 %319, 13
  %321 = icmp ult i32 %318, 524288
  br i1 %321, label %322, label %326, !prof !24

322:                                              ; preds = %312
  %323 = trunc i64 %320 to i32
  %324 = udiv i32 %323, %317
  %325 = zext i32 %324 to i64
  br label %329

326:                                              ; preds = %312
  %327 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %317, i64 %320) #14, !srcloc !25
  %328 = extractvalue { i64, i64 } %327, 1
  br label %329

329:                                              ; preds = %326, %322
  %330 = phi i64 [ %325, %322 ], [ %328, %326 ]
  %331 = add i64 %330, 1
  %332 = lshr i64 %331, 1
  %333 = trunc i64 %332 to i32
  %334 = call i32 @llvm.umin.i32(i32 %333, i32 %313) #11
  %335 = load i32, ptr %41, align 4
  %336 = load i32, ptr %55, align 4
  %337 = shl i32 %335, 12
  %338 = shl i32 %336, 12
  %339 = add i32 %338, -4096
  %340 = call i32 @llvm.umax.i32(i32 %339, i32 4096) #11
  %341 = add i32 %337, -4096
  %342 = zext i32 %341 to i64
  %343 = shl nuw nsw i64 %342, 13
  %344 = icmp ult i32 %341, 524288
  br i1 %344, label %345, label %349, !prof !24

345:                                              ; preds = %329
  %346 = trunc i64 %343 to i32
  %347 = udiv i32 %346, %340
  %348 = zext i32 %347 to i64
  br label %352

349:                                              ; preds = %329
  %350 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %340, i64 %343) #14, !srcloc !25
  %351 = extractvalue { i64, i64 } %350, 1
  br label %352

352:                                              ; preds = %349, %345
  %353 = phi i64 [ %348, %345 ], [ %351, %349 ]
  %354 = add i64 %353, 1
  %355 = lshr i64 %354, 1
  %356 = trunc i64 %355 to i32
  %357 = call i32 @llvm.umin.i32(i32 %356, i32 61440) #11
  %358 = shl nuw i32 %357, 16
  %359 = or i32 %358, %334
  %360 = load ptr, ptr %128, align 8
  %361 = load i32, ptr %142, align 4
  %362 = add i32 %361, 393
  %363 = getelementptr inbounds %struct.tegra_dc, ptr %360, i32 0, i32 2
  %364 = load ptr, ptr %363, align 4
  %365 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %367, label %380

367:                                              ; preds = %352
  %368 = tail call ptr @llvm.thread.pointer() #11
  %369 = getelementptr inbounds %struct.thread_info, ptr %368, i32 0, i32 2
  %370 = load i32, ptr %369, align 8
  %371 = lshr i32 %370, 5
  %372 = getelementptr i32, ptr @__cpu_online_mask, i32 %371
  %373 = load volatile i32, ptr %372, align 4
  %374 = and i32 %370, 31
  %375 = shl nuw i32 1, %374
  %376 = and i32 %375, %373
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %380, label %378

378:                                              ; preds = %367
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %379 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %364, i32 noundef %362, i32 noundef %359) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %380

380:                                              ; preds = %378, %367, %352
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %381 = getelementptr inbounds %struct.tegra_dc, ptr %360, i32 0, i32 8
  %382 = load ptr, ptr %381, align 8
  %383 = shl i32 %362, 2
  %384 = getelementptr i8, ptr %382, i32 %383
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %384, i32 %359) #11, !srcloc !12
  %385 = load ptr, ptr %128, align 8
  %386 = load i32, ptr %142, align 4
  %387 = add i32 %386, 391
  %388 = getelementptr inbounds %struct.tegra_dc, ptr %385, i32 0, i32 2
  %389 = load ptr, ptr %388, align 4
  %390 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %405

392:                                              ; preds = %380
  %393 = tail call ptr @llvm.thread.pointer() #11
  %394 = getelementptr inbounds %struct.thread_info, ptr %393, i32 0, i32 2
  %395 = load i32, ptr %394, align 8
  %396 = lshr i32 %395, 5
  %397 = getelementptr i32, ptr @__cpu_online_mask, i32 %396
  %398 = load volatile i32, ptr %397, align 4
  %399 = and i32 %395, 31
  %400 = shl nuw i32 1, %399
  %401 = and i32 %400, %398
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %405, label %403

403:                                              ; preds = %392
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %404 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %389, i32 noundef %387, i32 noundef 0) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %405

405:                                              ; preds = %403, %392, %380
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %406 = getelementptr inbounds %struct.tegra_dc, ptr %385, i32 0, i32 8
  %407 = load ptr, ptr %406, align 8
  %408 = shl i32 %387, 2
  %409 = getelementptr i8, ptr %407, i32 %408
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %409, i32 0) #11, !srcloc !12
  %410 = load ptr, ptr %128, align 8
  %411 = load i32, ptr %142, align 4
  %412 = add i32 %411, 392
  %413 = getelementptr inbounds %struct.tegra_dc, ptr %410, i32 0, i32 2
  %414 = load ptr, ptr %413, align 4
  %415 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %430

417:                                              ; preds = %405
  %418 = tail call ptr @llvm.thread.pointer() #11
  %419 = getelementptr inbounds %struct.thread_info, ptr %418, i32 0, i32 2
  %420 = load i32, ptr %419, align 8
  %421 = lshr i32 %420, 5
  %422 = getelementptr i32, ptr @__cpu_online_mask, i32 %421
  %423 = load volatile i32, ptr %422, align 4
  %424 = and i32 %420, 31
  %425 = shl nuw i32 1, %424
  %426 = and i32 %425, %423
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %430, label %428

428:                                              ; preds = %417
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %429 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %414, i32 noundef %412, i32 noundef 0) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %430

430:                                              ; preds = %428, %417, %405
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %431 = getelementptr inbounds %struct.tegra_dc, ptr %410, i32 0, i32 8
  %432 = load ptr, ptr %431, align 8
  %433 = shl i32 %412, 2
  %434 = getelementptr i8, ptr %432, i32 %433
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %434, i32 0) #11, !srcloc !12
  %435 = load ptr, ptr %128, align 8
  %436 = load i32, ptr %142, align 4
  %437 = add i32 %436, 396
  %438 = getelementptr inbounds %struct.tegra_dc, ptr %435, i32 0, i32 2
  %439 = load ptr, ptr %438, align 4
  %440 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %441 = icmp sgt i32 %440, 0
  br i1 %441, label %442, label %455

442:                                              ; preds = %430
  %443 = tail call ptr @llvm.thread.pointer() #11
  %444 = getelementptr inbounds %struct.thread_info, ptr %443, i32 0, i32 2
  %445 = load i32, ptr %444, align 8
  %446 = lshr i32 %445, 5
  %447 = getelementptr i32, ptr @__cpu_online_mask, i32 %446
  %448 = load volatile i32, ptr %447, align 4
  %449 = and i32 %445, 31
  %450 = shl nuw i32 1, %449
  %451 = and i32 %450, %448
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %455, label %453

453:                                              ; preds = %442
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %454 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %439, i32 noundef %437, i32 noundef 0) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %455

455:                                              ; preds = %453, %442, %430
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %456 = getelementptr inbounds %struct.tegra_dc, ptr %435, i32 0, i32 8
  %457 = load ptr, ptr %456, align 8
  %458 = shl i32 %437, 2
  %459 = getelementptr i8, ptr %457, i32 %458
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %459, i32 0) #11, !srcloc !12
  %460 = load ptr, ptr %128, align 8
  %461 = load i32, ptr %142, align 4
  %462 = add i32 %461, 395
  %463 = getelementptr inbounds %struct.tegra_dc, ptr %460, i32 0, i32 2
  %464 = load ptr, ptr %463, align 4
  %465 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %466 = icmp sgt i32 %465, 0
  br i1 %466, label %467, label %480

467:                                              ; preds = %455
  %468 = tail call ptr @llvm.thread.pointer() #11
  %469 = getelementptr inbounds %struct.thread_info, ptr %468, i32 0, i32 2
  %470 = load i32, ptr %469, align 8
  %471 = lshr i32 %470, 5
  %472 = getelementptr i32, ptr @__cpu_online_mask, i32 %471
  %473 = load volatile i32, ptr %472, align 4
  %474 = and i32 %470, 31
  %475 = shl nuw i32 1, %474
  %476 = and i32 %475, %473
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %480, label %478

478:                                              ; preds = %467
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %479 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %464, i32 noundef %462, i32 noundef 0) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %480

480:                                              ; preds = %478, %467, %455
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %481 = getelementptr inbounds %struct.tegra_dc, ptr %460, i32 0, i32 8
  %482 = load ptr, ptr %481, align 8
  %483 = shl i32 %462, 2
  %484 = getelementptr i8, ptr %482, i32 %483
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %484, i32 0) #11, !srcloc !12
  %485 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 4
  %486 = load i32, ptr %485, align 4
  %487 = load ptr, ptr %128, align 8
  %488 = load i32, ptr %142, align 4
  %489 = add i32 %488, 448
  %490 = getelementptr inbounds %struct.tegra_dc, ptr %487, i32 0, i32 2
  %491 = load ptr, ptr %490, align 4
  %492 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %493 = icmp sgt i32 %492, 0
  br i1 %493, label %494, label %507

494:                                              ; preds = %480
  %495 = tail call ptr @llvm.thread.pointer() #11
  %496 = getelementptr inbounds %struct.thread_info, ptr %495, i32 0, i32 2
  %497 = load i32, ptr %496, align 8
  %498 = lshr i32 %497, 5
  %499 = getelementptr i32, ptr @__cpu_online_mask, i32 %498
  %500 = load volatile i32, ptr %499, align 4
  %501 = and i32 %497, 31
  %502 = shl nuw i32 1, %501
  %503 = and i32 %502, %500
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %507, label %505

505:                                              ; preds = %494
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %506 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %491, i32 noundef %489, i32 noundef %486) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %507

507:                                              ; preds = %505, %494, %480
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %508 = getelementptr inbounds %struct.tegra_dc, ptr %487, i32 0, i32 8
  %509 = load ptr, ptr %508, align 8
  %510 = shl i32 %489, 2
  %511 = getelementptr i8, ptr %509, i32 %510
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %511, i32 %486) #11, !srcloc !12
  %512 = load i8, ptr %3, align 1
  %513 = icmp eq i8 %512, 0
  %514 = select i1 %301, i1 true, i1 %513
  br i1 %514, label %601, label %515

515:                                              ; preds = %507
  %516 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 4, i32 1
  %517 = load i32, ptr %516, align 4
  %518 = load ptr, ptr %128, align 8
  %519 = load i32, ptr %142, align 4
  %520 = add i32 %519, 450
  %521 = getelementptr inbounds %struct.tegra_dc, ptr %518, i32 0, i32 2
  %522 = load ptr, ptr %521, align 4
  %523 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %524 = icmp sgt i32 %523, 0
  br i1 %524, label %525, label %538

525:                                              ; preds = %515
  %526 = tail call ptr @llvm.thread.pointer() #11
  %527 = getelementptr inbounds %struct.thread_info, ptr %526, i32 0, i32 2
  %528 = load i32, ptr %527, align 8
  %529 = lshr i32 %528, 5
  %530 = getelementptr i32, ptr @__cpu_online_mask, i32 %529
  %531 = load volatile i32, ptr %530, align 4
  %532 = and i32 %528, 31
  %533 = shl nuw i32 1, %532
  %534 = and i32 %533, %531
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %538, label %536

536:                                              ; preds = %525
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %537 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %522, i32 noundef %520, i32 noundef %517) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %538

538:                                              ; preds = %536, %525, %515
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %539 = getelementptr inbounds %struct.tegra_dc, ptr %518, i32 0, i32 8
  %540 = load ptr, ptr %539, align 8
  %541 = shl i32 %520, 2
  %542 = getelementptr i8, ptr %540, i32 %541
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %542, i32 %517) #11, !srcloc !12
  %543 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 4, i32 2
  %544 = load i32, ptr %543, align 4
  %545 = load ptr, ptr %128, align 8
  %546 = load i32, ptr %142, align 4
  %547 = add i32 %546, 452
  %548 = getelementptr inbounds %struct.tegra_dc, ptr %545, i32 0, i32 2
  %549 = load ptr, ptr %548, align 4
  %550 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %551 = icmp sgt i32 %550, 0
  br i1 %551, label %552, label %565

552:                                              ; preds = %538
  %553 = tail call ptr @llvm.thread.pointer() #11
  %554 = getelementptr inbounds %struct.thread_info, ptr %553, i32 0, i32 2
  %555 = load i32, ptr %554, align 8
  %556 = lshr i32 %555, 5
  %557 = getelementptr i32, ptr @__cpu_online_mask, i32 %556
  %558 = load volatile i32, ptr %557, align 4
  %559 = and i32 %555, 31
  %560 = shl nuw i32 1, %559
  %561 = and i32 %560, %558
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %565, label %563

563:                                              ; preds = %552
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %564 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %549, i32 noundef %547, i32 noundef %544) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %565

565:                                              ; preds = %563, %552, %538
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %566 = getelementptr inbounds %struct.tegra_dc, ptr %545, i32 0, i32 8
  %567 = load ptr, ptr %566, align 8
  %568 = shl i32 %547, 2
  %569 = getelementptr i8, ptr %567, i32 %568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %569, i32 %544) #11, !srcloc !12
  %570 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 3
  %571 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 3, i32 1
  %572 = load i32, ptr %571, align 4
  %573 = shl i32 %572, 16
  %574 = load i32, ptr %570, align 4
  %575 = or i32 %573, %574
  %576 = load ptr, ptr %128, align 8
  %577 = load i32, ptr %142, align 4
  %578 = add i32 %577, 394
  %579 = getelementptr inbounds %struct.tegra_dc, ptr %576, i32 0, i32 2
  %580 = load ptr, ptr %579, align 4
  %581 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %582 = icmp sgt i32 %581, 0
  br i1 %582, label %583, label %596

583:                                              ; preds = %565
  %584 = tail call ptr @llvm.thread.pointer() #11
  %585 = getelementptr inbounds %struct.thread_info, ptr %584, i32 0, i32 2
  %586 = load i32, ptr %585, align 8
  %587 = lshr i32 %586, 5
  %588 = getelementptr i32, ptr @__cpu_online_mask, i32 %587
  %589 = load volatile i32, ptr %588, align 4
  %590 = and i32 %586, 31
  %591 = shl nuw i32 1, %590
  %592 = and i32 %591, %589
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %596, label %594

594:                                              ; preds = %583
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %595 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %580, i32 noundef %578, i32 noundef %575) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %596

596:                                              ; preds = %594, %583, %565
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %597 = getelementptr inbounds %struct.tegra_dc, ptr %576, i32 0, i32 8
  %598 = load ptr, ptr %597, align 8
  %599 = shl i32 %578, 2
  %600 = getelementptr i8, ptr %598, i32 %599
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %600, i32 %575) #11, !srcloc !12
  br label %629

601:                                              ; preds = %507
  %602 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 3
  %603 = load i32, ptr %602, align 4
  %604 = load ptr, ptr %128, align 8
  %605 = load i32, ptr %142, align 4
  %606 = add i32 %605, 394
  %607 = getelementptr inbounds %struct.tegra_dc, ptr %604, i32 0, i32 2
  %608 = load ptr, ptr %607, align 4
  %609 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %610 = icmp sgt i32 %609, 0
  br i1 %610, label %611, label %624

611:                                              ; preds = %601
  %612 = tail call ptr @llvm.thread.pointer() #11
  %613 = getelementptr inbounds %struct.thread_info, ptr %612, i32 0, i32 2
  %614 = load i32, ptr %613, align 8
  %615 = lshr i32 %614, 5
  %616 = getelementptr i32, ptr @__cpu_online_mask, i32 %615
  %617 = load volatile i32, ptr %616, align 4
  %618 = and i32 %614, 31
  %619 = shl nuw i32 1, %618
  %620 = and i32 %619, %617
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %624, label %622

622:                                              ; preds = %611
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %623 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %608, i32 noundef %606, i32 noundef %603) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %624

624:                                              ; preds = %622, %611, %601
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %625 = getelementptr inbounds %struct.tegra_dc, ptr %604, i32 0, i32 8
  %626 = load ptr, ptr %625, align 8
  %627 = shl i32 %606, 2
  %628 = getelementptr i8, ptr %626, i32 %627
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %628, i32 %603) #11, !srcloc !12
  br label %629

629:                                              ; preds = %624, %596
  %630 = phi i32 [ %575, %596 ], [ %359, %624 ]
  %631 = load ptr, ptr %128, align 8
  %632 = load i32, ptr %142, align 4
  %633 = add i32 %632, 454
  %634 = getelementptr inbounds %struct.tegra_dc, ptr %631, i32 0, i32 2
  %635 = load ptr, ptr %634, align 4
  %636 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %637 = icmp sgt i32 %636, 0
  br i1 %637, label %638, label %651

638:                                              ; preds = %629
  %639 = tail call ptr @llvm.thread.pointer() #11
  %640 = getelementptr inbounds %struct.thread_info, ptr %639, i32 0, i32 2
  %641 = load i32, ptr %640, align 8
  %642 = lshr i32 %641, 5
  %643 = getelementptr i32, ptr @__cpu_online_mask, i32 %642
  %644 = load volatile i32, ptr %643, align 4
  %645 = and i32 %641, 31
  %646 = shl nuw i32 1, %645
  %647 = and i32 %646, %644
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %651, label %649

649:                                              ; preds = %638
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %650 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %635, i32 noundef %633, i32 noundef %266) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %651

651:                                              ; preds = %649, %638, %629
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %652 = getelementptr inbounds %struct.tegra_dc, ptr %631, i32 0, i32 8
  %653 = load ptr, ptr %652, align 8
  %654 = shl i32 %633, 2
  %655 = getelementptr i8, ptr %653, i32 %654
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %655, i32 %266) #11, !srcloc !12
  %656 = load ptr, ptr %128, align 8
  %657 = load i32, ptr %142, align 4
  %658 = add i32 %657, 456
  %659 = getelementptr inbounds %struct.tegra_dc, ptr %656, i32 0, i32 2
  %660 = load ptr, ptr %659, align 4
  %661 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %662 = icmp sgt i32 %661, 0
  br i1 %662, label %663, label %676

663:                                              ; preds = %651
  %664 = tail call ptr @llvm.thread.pointer() #11
  %665 = getelementptr inbounds %struct.thread_info, ptr %664, i32 0, i32 2
  %666 = load i32, ptr %665, align 8
  %667 = lshr i32 %666, 5
  %668 = getelementptr i32, ptr @__cpu_online_mask, i32 %667
  %669 = load volatile i32, ptr %668, align 4
  %670 = and i32 %666, 31
  %671 = shl nuw i32 1, %670
  %672 = and i32 %671, %669
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %676, label %674

674:                                              ; preds = %663
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %675 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %660, i32 noundef %658, i32 noundef %271) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %676

676:                                              ; preds = %674, %663, %651
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %677 = getelementptr inbounds %struct.tegra_dc, ptr %656, i32 0, i32 8
  %678 = load ptr, ptr %677, align 8
  %679 = shl i32 %658, 2
  %680 = getelementptr i8, ptr %678, i32 %679
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %680, i32 %271) #11, !srcloc !12
  %681 = getelementptr inbounds %struct.tegra_dc, ptr %129, i32 0, i32 14
  %682 = load ptr, ptr %681, align 8
  %683 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %682, i32 0, i32 3
  %684 = load i8, ptr %683, align 1, !range !13
  %685 = icmp eq i8 %684, 0
  %686 = load i32, ptr %72, align 4
  br i1 %685, label %723, label %687

687:                                              ; preds = %676
  switch i32 %686, label %696 [
    i32 0, label %688
    i32 1, label %689
    i32 2, label %690
  ]

688:                                              ; preds = %687
  br label %696

689:                                              ; preds = %687
  br label %696

690:                                              ; preds = %687
  %691 = getelementptr inbounds %struct.tegra_dc_window, ptr %4, i32 0, i32 8, i32 1
  %692 = load i32, ptr %691, align 4
  %693 = shl i32 %692, 4
  %694 = and i32 %693, 112
  %695 = or i32 %694, 2
  br label %696

696:                                              ; preds = %690, %689, %688, %687
  %697 = phi i32 [ %630, %687 ], [ %695, %690 ], [ %686, %689 ], [ %686, %688 ]
  %698 = load ptr, ptr %128, align 8
  %699 = load i32, ptr %142, align 4
  %700 = add i32 %699, 459
  %701 = getelementptr inbounds %struct.tegra_dc, ptr %698, i32 0, i32 2
  %702 = load ptr, ptr %701, align 4
  %703 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %704 = icmp sgt i32 %703, 0
  br i1 %704, label %705, label %718

705:                                              ; preds = %696
  %706 = tail call ptr @llvm.thread.pointer() #11
  %707 = getelementptr inbounds %struct.thread_info, ptr %706, i32 0, i32 2
  %708 = load i32, ptr %707, align 8
  %709 = lshr i32 %708, 5
  %710 = getelementptr i32, ptr @__cpu_online_mask, i32 %709
  %711 = load volatile i32, ptr %710, align 4
  %712 = and i32 %708, 31
  %713 = shl nuw i32 1, %712
  %714 = and i32 %713, %711
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %718, label %716

716:                                              ; preds = %705
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %717 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %702, i32 noundef %700, i32 noundef %697) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %718

718:                                              ; preds = %716, %705, %696
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %719 = getelementptr inbounds %struct.tegra_dc, ptr %698, i32 0, i32 8
  %720 = load ptr, ptr %719, align 8
  %721 = shl i32 %700, 2
  %722 = getelementptr i8, ptr %720, i32 %721
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %722, i32 %697) #11, !srcloc !12
  br label %753

723:                                              ; preds = %676
  switch i32 %686, label %726 [
    i32 0, label %724
    i32 1, label %725
  ]

724:                                              ; preds = %723
  br label %726

725:                                              ; preds = %723
  br label %726

726:                                              ; preds = %725, %724, %723
  %727 = phi i32 [ %630, %723 ], [ 65537, %725 ], [ 0, %724 ]
  %728 = load ptr, ptr %128, align 8
  %729 = load i32, ptr %142, align 4
  %730 = add i32 %729, 397
  %731 = getelementptr inbounds %struct.tegra_dc, ptr %728, i32 0, i32 2
  %732 = load ptr, ptr %731, align 4
  %733 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %734 = icmp sgt i32 %733, 0
  br i1 %734, label %735, label %748

735:                                              ; preds = %726
  %736 = tail call ptr @llvm.thread.pointer() #11
  %737 = getelementptr inbounds %struct.thread_info, ptr %736, i32 0, i32 2
  %738 = load i32, ptr %737, align 8
  %739 = lshr i32 %738, 5
  %740 = getelementptr i32, ptr @__cpu_online_mask, i32 %739
  %741 = load volatile i32, ptr %740, align 4
  %742 = and i32 %738, 31
  %743 = shl nuw i32 1, %742
  %744 = and i32 %743, %741
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %748, label %746

746:                                              ; preds = %735
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %747 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %732, i32 noundef %730, i32 noundef %727) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %748

748:                                              ; preds = %746, %735, %726
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %749 = getelementptr inbounds %struct.tegra_dc, ptr %728, i32 0, i32 8
  %750 = load ptr, ptr %749, align 8
  %751 = shl i32 %730, 2
  %752 = getelementptr i8, ptr %750, i32 %751
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %752, i32 %727) #11, !srcloc !12
  br label %753

753:                                              ; preds = %748, %718
  br i1 %130, label %754, label %955

754:                                              ; preds = %753
  %755 = load ptr, ptr %128, align 8
  %756 = load i32, ptr %142, align 4
  %757 = add i32 %756, 273
  %758 = getelementptr inbounds %struct.tegra_dc, ptr %755, i32 0, i32 2
  %759 = load ptr, ptr %758, align 4
  %760 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %761 = icmp sgt i32 %760, 0
  br i1 %761, label %762, label %775

762:                                              ; preds = %754
  %763 = tail call ptr @llvm.thread.pointer() #11
  %764 = getelementptr inbounds %struct.thread_info, ptr %763, i32 0, i32 2
  %765 = load i32, ptr %764, align 8
  %766 = lshr i32 %765, 5
  %767 = getelementptr i32, ptr @__cpu_online_mask, i32 %766
  %768 = load volatile i32, ptr %767, align 4
  %769 = and i32 %765, 31
  %770 = shl nuw i32 1, %769
  %771 = and i32 %770, %768
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %775, label %773

773:                                              ; preds = %762
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %774 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %759, i32 noundef %757, i32 noundef 240) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %775

775:                                              ; preds = %773, %762, %754
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %776 = getelementptr inbounds %struct.tegra_dc, ptr %755, i32 0, i32 8
  %777 = load ptr, ptr %776, align 8
  %778 = shl i32 %757, 2
  %779 = getelementptr i8, ptr %777, i32 %778
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %779, i32 240) #11, !srcloc !12
  %780 = load ptr, ptr %128, align 8
  %781 = load i32, ptr %142, align 4
  %782 = add i32 %781, 274
  %783 = getelementptr inbounds %struct.tegra_dc, ptr %780, i32 0, i32 2
  %784 = load ptr, ptr %783, align 4
  %785 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %786 = icmp sgt i32 %785, 0
  br i1 %786, label %787, label %800

787:                                              ; preds = %775
  %788 = tail call ptr @llvm.thread.pointer() #11
  %789 = getelementptr inbounds %struct.thread_info, ptr %788, i32 0, i32 2
  %790 = load i32, ptr %789, align 8
  %791 = lshr i32 %790, 5
  %792 = getelementptr i32, ptr @__cpu_online_mask, i32 %791
  %793 = load volatile i32, ptr %792, align 4
  %794 = and i32 %790, 31
  %795 = shl nuw i32 1, %794
  %796 = and i32 %795, %793
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %800, label %798

798:                                              ; preds = %787
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %799 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %784, i32 noundef %782, i32 noundef 298) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %800

800:                                              ; preds = %798, %787, %775
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %801 = getelementptr inbounds %struct.tegra_dc, ptr %780, i32 0, i32 8
  %802 = load ptr, ptr %801, align 8
  %803 = shl i32 %782, 2
  %804 = getelementptr i8, ptr %802, i32 %803
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %804, i32 298) #11, !srcloc !12
  %805 = load ptr, ptr %128, align 8
  %806 = load i32, ptr %142, align 4
  %807 = add i32 %806, 275
  %808 = getelementptr inbounds %struct.tegra_dc, ptr %805, i32 0, i32 2
  %809 = load ptr, ptr %808, align 4
  %810 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %811 = icmp sgt i32 %810, 0
  br i1 %811, label %812, label %825

812:                                              ; preds = %800
  %813 = tail call ptr @llvm.thread.pointer() #11
  %814 = getelementptr inbounds %struct.thread_info, ptr %813, i32 0, i32 2
  %815 = load i32, ptr %814, align 8
  %816 = lshr i32 %815, 5
  %817 = getelementptr i32, ptr @__cpu_online_mask, i32 %816
  %818 = load volatile i32, ptr %817, align 4
  %819 = and i32 %815, 31
  %820 = shl nuw i32 1, %819
  %821 = and i32 %820, %818
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %825, label %823

823:                                              ; preds = %812
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %824 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %809, i32 noundef %807, i32 noundef 0) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %825

825:                                              ; preds = %823, %812, %800
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %826 = getelementptr inbounds %struct.tegra_dc, ptr %805, i32 0, i32 8
  %827 = load ptr, ptr %826, align 8
  %828 = shl i32 %807, 2
  %829 = getelementptr i8, ptr %827, i32 %828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %829, i32 0) #11, !srcloc !12
  %830 = load ptr, ptr %128, align 8
  %831 = load i32, ptr %142, align 4
  %832 = add i32 %831, 276
  %833 = getelementptr inbounds %struct.tegra_dc, ptr %830, i32 0, i32 2
  %834 = load ptr, ptr %833, align 4
  %835 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %836 = icmp sgt i32 %835, 0
  br i1 %836, label %837, label %850

837:                                              ; preds = %825
  %838 = tail call ptr @llvm.thread.pointer() #11
  %839 = getelementptr inbounds %struct.thread_info, ptr %838, i32 0, i32 2
  %840 = load i32, ptr %839, align 8
  %841 = lshr i32 %840, 5
  %842 = getelementptr i32, ptr @__cpu_online_mask, i32 %841
  %843 = load volatile i32, ptr %842, align 4
  %844 = and i32 %840, 31
  %845 = shl nuw i32 1, %844
  %846 = and i32 %845, %843
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %850, label %848

848:                                              ; preds = %837
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %849 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %834, i32 noundef %832, i32 noundef 408) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %850

850:                                              ; preds = %848, %837, %825
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %851 = getelementptr inbounds %struct.tegra_dc, ptr %830, i32 0, i32 8
  %852 = load ptr, ptr %851, align 8
  %853 = shl i32 %832, 2
  %854 = getelementptr i8, ptr %852, i32 %853
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %854, i32 408) #11, !srcloc !12
  %855 = load ptr, ptr %128, align 8
  %856 = load i32, ptr %142, align 4
  %857 = add i32 %856, 277
  %858 = getelementptr inbounds %struct.tegra_dc, ptr %855, i32 0, i32 2
  %859 = load ptr, ptr %858, align 4
  %860 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %861 = icmp sgt i32 %860, 0
  br i1 %861, label %862, label %875

862:                                              ; preds = %850
  %863 = tail call ptr @llvm.thread.pointer() #11
  %864 = getelementptr inbounds %struct.thread_info, ptr %863, i32 0, i32 2
  %865 = load i32, ptr %864, align 8
  %866 = lshr i32 %865, 5
  %867 = getelementptr i32, ptr @__cpu_online_mask, i32 %866
  %868 = load volatile i32, ptr %867, align 4
  %869 = and i32 %865, 31
  %870 = shl nuw i32 1, %869
  %871 = and i32 %870, %868
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %875, label %873

873:                                              ; preds = %862
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %874 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %859, i32 noundef %857, i32 noundef 923) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %875

875:                                              ; preds = %873, %862, %850
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %876 = getelementptr inbounds %struct.tegra_dc, ptr %855, i32 0, i32 8
  %877 = load ptr, ptr %876, align 8
  %878 = shl i32 %857, 2
  %879 = getelementptr i8, ptr %877, i32 %878
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %879, i32 923) #11, !srcloc !12
  %880 = load ptr, ptr %128, align 8
  %881 = load i32, ptr %142, align 4
  %882 = add i32 %881, 278
  %883 = getelementptr inbounds %struct.tegra_dc, ptr %880, i32 0, i32 2
  %884 = load ptr, ptr %883, align 4
  %885 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %886 = icmp sgt i32 %885, 0
  br i1 %886, label %887, label %900

887:                                              ; preds = %875
  %888 = tail call ptr @llvm.thread.pointer() #11
  %889 = getelementptr inbounds %struct.thread_info, ptr %888, i32 0, i32 2
  %890 = load i32, ptr %889, align 8
  %891 = lshr i32 %890, 5
  %892 = getelementptr i32, ptr @__cpu_online_mask, i32 %891
  %893 = load volatile i32, ptr %892, align 4
  %894 = and i32 %890, 31
  %895 = shl nuw i32 1, %894
  %896 = and i32 %895, %893
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %900, label %898

898:                                              ; preds = %887
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %899 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %884, i32 noundef %882, i32 noundef 815) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %900

900:                                              ; preds = %898, %887, %875
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %901 = getelementptr inbounds %struct.tegra_dc, ptr %880, i32 0, i32 8
  %902 = load ptr, ptr %901, align 8
  %903 = shl i32 %882, 2
  %904 = getelementptr i8, ptr %902, i32 %903
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %904, i32 815) #11, !srcloc !12
  %905 = load ptr, ptr %128, align 8
  %906 = load i32, ptr %142, align 4
  %907 = add i32 %906, 279
  %908 = getelementptr inbounds %struct.tegra_dc, ptr %905, i32 0, i32 2
  %909 = load ptr, ptr %908, align 4
  %910 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %911 = icmp sgt i32 %910, 0
  br i1 %911, label %912, label %925

912:                                              ; preds = %900
  %913 = tail call ptr @llvm.thread.pointer() #11
  %914 = getelementptr inbounds %struct.thread_info, ptr %913, i32 0, i32 2
  %915 = load i32, ptr %914, align 8
  %916 = lshr i32 %915, 5
  %917 = getelementptr i32, ptr @__cpu_online_mask, i32 %916
  %918 = load volatile i32, ptr %917, align 4
  %919 = and i32 %915, 31
  %920 = shl nuw i32 1, %919
  %921 = and i32 %920, %918
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %925, label %923

923:                                              ; preds = %912
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %924 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %909, i32 noundef %907, i32 noundef 516) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %925

925:                                              ; preds = %923, %912, %900
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %926 = getelementptr inbounds %struct.tegra_dc, ptr %905, i32 0, i32 8
  %927 = load ptr, ptr %926, align 8
  %928 = shl i32 %907, 2
  %929 = getelementptr i8, ptr %927, i32 %928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %929, i32 516) #11, !srcloc !12
  %930 = load ptr, ptr %128, align 8
  %931 = load i32, ptr %142, align 4
  %932 = add i32 %931, 280
  %933 = getelementptr inbounds %struct.tegra_dc, ptr %930, i32 0, i32 2
  %934 = load ptr, ptr %933, align 4
  %935 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %936 = icmp sgt i32 %935, 0
  br i1 %936, label %937, label %950

937:                                              ; preds = %925
  %938 = tail call ptr @llvm.thread.pointer() #11
  %939 = getelementptr inbounds %struct.thread_info, ptr %938, i32 0, i32 2
  %940 = load i32, ptr %939, align 8
  %941 = lshr i32 %940, 5
  %942 = getelementptr i32, ptr @__cpu_online_mask, i32 %941
  %943 = load volatile i32, ptr %942, align 4
  %944 = and i32 %940, 31
  %945 = shl nuw i32 1, %944
  %946 = and i32 %945, %943
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %950, label %948

948:                                              ; preds = %937
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %949 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %934, i32 noundef %932, i32 noundef 0) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %950

950:                                              ; preds = %948, %937, %925
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %951 = getelementptr inbounds %struct.tegra_dc, ptr %930, i32 0, i32 8
  %952 = load ptr, ptr %951, align 8
  %953 = shl i32 %932, 2
  %954 = getelementptr i8, ptr %952, i32 %953
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %954, i32 0) #11, !srcloc !12
  br label %959

955:                                              ; preds = %753
  %956 = load i32, ptr %62, align 4
  %957 = icmp ult i32 %956, 24
  %958 = select i1 %957, i32 1073741888, i32 1073741824
  br label %959

959:                                              ; preds = %955, %950
  %960 = phi i32 [ 1074003968, %950 ], [ %958, %955 ]
  %961 = load i8, ptr %65, align 4, !range !13
  %962 = zext i8 %961 to i32
  %963 = or i32 %960, %962
  %964 = load i8, ptr %68, align 1, !range !13
  %965 = icmp eq i8 %964, 0
  %966 = or i32 %963, 4
  %967 = select i1 %965, i32 %963, i32 %966
  %968 = load ptr, ptr %128, align 8
  %969 = load i32, ptr %36, align 4
  %970 = load i32, ptr %51, align 4
  %971 = icmp eq i32 %969, %970
  br i1 %971, label %1384, label %972

972:                                              ; preds = %959
  %973 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 3
  %974 = load i32, ptr %973, align 8
  %975 = icmp eq i32 %974, 0
  br i1 %975, label %976, label %982

976:                                              ; preds = %972
  %977 = getelementptr inbounds %struct.tegra_dc, ptr %968, i32 0, i32 14
  %978 = load ptr, ptr %977, align 8
  %979 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %978, i32 0, i32 17
  %980 = load i8, ptr %979, align 4, !range !13
  %981 = icmp eq i8 %980, 0
  br i1 %981, label %982, label %1384

982:                                              ; preds = %976, %972
  %983 = load i32, ptr %142, align 4
  %984 = add i32 %983, 257
  %985 = getelementptr inbounds %struct.tegra_dc, ptr %968, i32 0, i32 2
  %986 = load ptr, ptr %985, align 4
  %987 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %988 = icmp sgt i32 %987, 0
  br i1 %988, label %989, label %1002

989:                                              ; preds = %982
  %990 = tail call ptr @llvm.thread.pointer() #11
  %991 = getelementptr inbounds %struct.thread_info, ptr %990, i32 0, i32 2
  %992 = load i32, ptr %991, align 8
  %993 = lshr i32 %992, 5
  %994 = getelementptr i32, ptr @__cpu_online_mask, i32 %993
  %995 = load volatile i32, ptr %994, align 4
  %996 = and i32 %992, 31
  %997 = shl nuw i32 1, %996
  %998 = and i32 %997, %995
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1002, label %1000

1000:                                             ; preds = %989
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1001 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %986, i32 noundef %984, i32 noundef 32768) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1002

1002:                                             ; preds = %1000, %989, %982
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1003 = getelementptr inbounds %struct.tegra_dc, ptr %968, i32 0, i32 8
  %1004 = load ptr, ptr %1003, align 8
  %1005 = shl i32 %984, 2
  %1006 = getelementptr i8, ptr %1004, i32 %1005
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1006, i32 32768) #11, !srcloc !12
  %1007 = load ptr, ptr %128, align 8
  %1008 = load i32, ptr %142, align 4
  %1009 = add i32 %1008, 258
  %1010 = getelementptr inbounds %struct.tegra_dc, ptr %1007, i32 0, i32 2
  %1011 = load ptr, ptr %1010, align 4
  %1012 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1013 = icmp sgt i32 %1012, 0
  br i1 %1013, label %1014, label %1027

1014:                                             ; preds = %1002
  %1015 = tail call ptr @llvm.thread.pointer() #11
  %1016 = getelementptr inbounds %struct.thread_info, ptr %1015, i32 0, i32 2
  %1017 = load i32, ptr %1016, align 8
  %1018 = lshr i32 %1017, 5
  %1019 = getelementptr i32, ptr @__cpu_online_mask, i32 %1018
  %1020 = load volatile i32, ptr %1019, align 4
  %1021 = and i32 %1017, 31
  %1022 = shl nuw i32 1, %1021
  %1023 = and i32 %1022, %1020
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1027, label %1025

1025:                                             ; preds = %1014
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1026 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1011, i32 noundef %1009, i32 noundef 1040743649) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1027

1027:                                             ; preds = %1025, %1014, %1002
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1028 = getelementptr inbounds %struct.tegra_dc, ptr %1007, i32 0, i32 8
  %1029 = load ptr, ptr %1028, align 8
  %1030 = shl i32 %1009, 2
  %1031 = getelementptr i8, ptr %1029, i32 %1030
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1031, i32 1040743649) #11, !srcloc !12
  %1032 = load ptr, ptr %128, align 8
  %1033 = load i32, ptr %142, align 4
  %1034 = add i32 %1033, 259
  %1035 = getelementptr inbounds %struct.tegra_dc, ptr %1032, i32 0, i32 2
  %1036 = load ptr, ptr %1035, align 4
  %1037 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1038 = icmp sgt i32 %1037, 0
  br i1 %1038, label %1039, label %1052

1039:                                             ; preds = %1027
  %1040 = tail call ptr @llvm.thread.pointer() #11
  %1041 = getelementptr inbounds %struct.thread_info, ptr %1040, i32 0, i32 2
  %1042 = load i32, ptr %1041, align 8
  %1043 = lshr i32 %1042, 5
  %1044 = getelementptr i32, ptr @__cpu_online_mask, i32 %1043
  %1045 = load volatile i32, ptr %1044, align 4
  %1046 = and i32 %1042, 31
  %1047 = shl nuw i32 1, %1046
  %1048 = and i32 %1047, %1045
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1052, label %1050

1050:                                             ; preds = %1039
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1051 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1036, i32 noundef %1034, i32 noundef 991001281) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1052

1052:                                             ; preds = %1050, %1039, %1027
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1053 = getelementptr inbounds %struct.tegra_dc, ptr %1032, i32 0, i32 8
  %1054 = load ptr, ptr %1053, align 8
  %1055 = shl i32 %1034, 2
  %1056 = getelementptr i8, ptr %1054, i32 %1055
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1056, i32 991001281) #11, !srcloc !12
  %1057 = load ptr, ptr %128, align 8
  %1058 = load i32, ptr %142, align 4
  %1059 = add i32 %1058, 260
  %1060 = getelementptr inbounds %struct.tegra_dc, ptr %1057, i32 0, i32 2
  %1061 = load ptr, ptr %1060, align 4
  %1062 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1063 = icmp sgt i32 %1062, 0
  br i1 %1063, label %1064, label %1077

1064:                                             ; preds = %1052
  %1065 = tail call ptr @llvm.thread.pointer() #11
  %1066 = getelementptr inbounds %struct.thread_info, ptr %1065, i32 0, i32 2
  %1067 = load i32, ptr %1066, align 8
  %1068 = lshr i32 %1067, 5
  %1069 = getelementptr i32, ptr @__cpu_online_mask, i32 %1068
  %1070 = load volatile i32, ptr %1069, align 4
  %1071 = and i32 %1067, 31
  %1072 = shl nuw i32 1, %1071
  %1073 = and i32 %1072, %1070
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1077, label %1075

1075:                                             ; preds = %1064
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1076 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1061, i32 noundef %1059, i32 noundef 1494971306) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1077

1077:                                             ; preds = %1075, %1064, %1052
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1078 = getelementptr inbounds %struct.tegra_dc, ptr %1057, i32 0, i32 8
  %1079 = load ptr, ptr %1078, align 8
  %1080 = shl i32 %1059, 2
  %1081 = getelementptr i8, ptr %1079, i32 %1080
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1081, i32 1494971306) #11, !srcloc !12
  %1082 = load ptr, ptr %128, align 8
  %1083 = load i32, ptr %142, align 4
  %1084 = add i32 %1083, 261
  %1085 = getelementptr inbounds %struct.tegra_dc, ptr %1082, i32 0, i32 2
  %1086 = load ptr, ptr %1085, align 4
  %1087 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1088 = icmp sgt i32 %1087, 0
  br i1 %1088, label %1089, label %1102

1089:                                             ; preds = %1077
  %1090 = tail call ptr @llvm.thread.pointer() #11
  %1091 = getelementptr inbounds %struct.thread_info, ptr %1090, i32 0, i32 2
  %1092 = load i32, ptr %1091, align 8
  %1093 = lshr i32 %1092, 5
  %1094 = getelementptr i32, ptr @__cpu_online_mask, i32 %1093
  %1095 = load volatile i32, ptr %1094, align 4
  %1096 = and i32 %1092, 31
  %1097 = shl nuw i32 1, %1096
  %1098 = and i32 %1097, %1095
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1102, label %1100

1100:                                             ; preds = %1089
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1101 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1086, i32 noundef %1084, i32 noundef 1462070682) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1102

1102:                                             ; preds = %1100, %1089, %1077
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1103 = getelementptr inbounds %struct.tegra_dc, ptr %1082, i32 0, i32 8
  %1104 = load ptr, ptr %1103, align 8
  %1105 = shl i32 %1084, 2
  %1106 = getelementptr i8, ptr %1104, i32 %1105
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1106, i32 1462070682) #11, !srcloc !12
  %1107 = load ptr, ptr %128, align 8
  %1108 = load i32, ptr %142, align 4
  %1109 = add i32 %1108, 262
  %1110 = getelementptr inbounds %struct.tegra_dc, ptr %1107, i32 0, i32 2
  %1111 = load ptr, ptr %1110, align 4
  %1112 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1113 = icmp sgt i32 %1112, 0
  br i1 %1113, label %1114, label %1127

1114:                                             ; preds = %1102
  %1115 = tail call ptr @llvm.thread.pointer() #11
  %1116 = getelementptr inbounds %struct.thread_info, ptr %1115, i32 0, i32 2
  %1117 = load i32, ptr %1116, align 8
  %1118 = lshr i32 %1117, 5
  %1119 = getelementptr i32, ptr @__cpu_online_mask, i32 %1118
  %1120 = load volatile i32, ptr %1119, align 4
  %1121 = and i32 %1117, 31
  %1122 = shl nuw i32 1, %1121
  %1123 = and i32 %1122, %1120
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1127, label %1125

1125:                                             ; preds = %1114
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1126 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1111, i32 noundef %1109, i32 noundef 1429169803) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1127

1127:                                             ; preds = %1125, %1114, %1102
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1128 = getelementptr inbounds %struct.tegra_dc, ptr %1107, i32 0, i32 8
  %1129 = load ptr, ptr %1128, align 8
  %1130 = shl i32 %1109, 2
  %1131 = getelementptr i8, ptr %1129, i32 %1130
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1131, i32 1429169803) #11, !srcloc !12
  %1132 = load ptr, ptr %128, align 8
  %1133 = load i32, ptr %142, align 4
  %1134 = add i32 %1133, 263
  %1135 = getelementptr inbounds %struct.tegra_dc, ptr %1132, i32 0, i32 2
  %1136 = load ptr, ptr %1135, align 4
  %1137 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1138 = icmp sgt i32 %1137, 0
  br i1 %1138, label %1139, label %1152

1139:                                             ; preds = %1127
  %1140 = tail call ptr @llvm.thread.pointer() #11
  %1141 = getelementptr inbounds %struct.thread_info, ptr %1140, i32 0, i32 2
  %1142 = load i32, ptr %1141, align 8
  %1143 = lshr i32 %1142, 5
  %1144 = getelementptr i32, ptr @__cpu_online_mask, i32 %1143
  %1145 = load volatile i32, ptr %1144, align 4
  %1146 = and i32 %1142, 31
  %1147 = shl nuw i32 1, %1146
  %1148 = and i32 %1147, %1145
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1152, label %1150

1150:                                             ; preds = %1139
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1151 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1136, i32 noundef %1134, i32 noundef 1933074059) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1152

1152:                                             ; preds = %1150, %1139, %1127
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1153 = getelementptr inbounds %struct.tegra_dc, ptr %1132, i32 0, i32 8
  %1154 = load ptr, ptr %1153, align 8
  %1155 = shl i32 %1134, 2
  %1156 = getelementptr i8, ptr %1154, i32 %1155
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1156, i32 1933074059) #11, !srcloc !12
  %1157 = load ptr, ptr %128, align 8
  %1158 = load i32, ptr %142, align 4
  %1159 = add i32 %1158, 264
  %1160 = getelementptr inbounds %struct.tegra_dc, ptr %1157, i32 0, i32 2
  %1161 = load ptr, ptr %1160, align 4
  %1162 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1163 = icmp sgt i32 %1162, 0
  br i1 %1163, label %1164, label %1177

1164:                                             ; preds = %1152
  %1165 = tail call ptr @llvm.thread.pointer() #11
  %1166 = getelementptr inbounds %struct.thread_info, ptr %1165, i32 0, i32 2
  %1167 = load i32, ptr %1166, align 8
  %1168 = lshr i32 %1167, 5
  %1169 = getelementptr i32, ptr @__cpu_online_mask, i32 %1168
  %1170 = load volatile i32, ptr %1169, align 4
  %1171 = and i32 %1167, 31
  %1172 = shl nuw i32 1, %1171
  %1173 = and i32 %1172, %1170
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %1177, label %1175

1175:                                             ; preds = %1164
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1176 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1161, i32 noundef %1159, i32 noundef 1917015427) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1177

1177:                                             ; preds = %1175, %1164, %1152
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1178 = getelementptr inbounds %struct.tegra_dc, ptr %1157, i32 0, i32 8
  %1179 = load ptr, ptr %1178, align 8
  %1180 = shl i32 %1159, 2
  %1181 = getelementptr i8, ptr %1179, i32 %1180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1181, i32 1917015427) #11, !srcloc !12
  %1182 = load ptr, ptr %128, align 8
  %1183 = load i32, ptr %142, align 4
  %1184 = add i32 %1183, 265
  %1185 = getelementptr inbounds %struct.tegra_dc, ptr %1182, i32 0, i32 2
  %1186 = load ptr, ptr %1185, align 4
  %1187 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1188 = icmp sgt i32 %1187, 0
  br i1 %1188, label %1189, label %1202

1189:                                             ; preds = %1177
  %1190 = tail call ptr @llvm.thread.pointer() #11
  %1191 = getelementptr inbounds %struct.thread_info, ptr %1190, i32 0, i32 2
  %1192 = load i32, ptr %1191, align 8
  %1193 = lshr i32 %1192, 5
  %1194 = getelementptr i32, ptr @__cpu_online_mask, i32 %1193
  %1195 = load volatile i32, ptr %1194, align 4
  %1196 = and i32 %1192, 31
  %1197 = shl nuw i32 1, %1196
  %1198 = and i32 %1197, %1195
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1202, label %1200

1200:                                             ; preds = %1189
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1201 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1186, i32 noundef %1184, i32 noundef 1900825739) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1202

1202:                                             ; preds = %1200, %1189, %1177
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1203 = getelementptr inbounds %struct.tegra_dc, ptr %1182, i32 0, i32 8
  %1204 = load ptr, ptr %1203, align 8
  %1205 = shl i32 %1184, 2
  %1206 = getelementptr i8, ptr %1204, i32 %1205
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1206, i32 1900825739) #11, !srcloc !12
  %1207 = load ptr, ptr %128, align 8
  %1208 = load i32, ptr %142, align 4
  %1209 = add i32 %1208, 266
  %1210 = getelementptr inbounds %struct.tegra_dc, ptr %1207, i32 0, i32 2
  %1211 = load ptr, ptr %1210, align 4
  %1212 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1213 = icmp sgt i32 %1212, 0
  br i1 %1213, label %1214, label %1227

1214:                                             ; preds = %1202
  %1215 = tail call ptr @llvm.thread.pointer() #11
  %1216 = getelementptr inbounds %struct.thread_info, ptr %1215, i32 0, i32 2
  %1217 = load i32, ptr %1216, align 8
  %1218 = lshr i32 %1217, 5
  %1219 = getelementptr i32, ptr @__cpu_online_mask, i32 %1218
  %1220 = load volatile i32, ptr %1219, align 4
  %1221 = and i32 %1217, 31
  %1222 = shl nuw i32 1, %1221
  %1223 = and i32 %1222, %1220
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1227, label %1225

1225:                                             ; preds = %1214
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1226 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1211, i32 noundef %1209, i32 noundef 1884636051) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1227

1227:                                             ; preds = %1225, %1214, %1202
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1228 = getelementptr inbounds %struct.tegra_dc, ptr %1207, i32 0, i32 8
  %1229 = load ptr, ptr %1228, align 8
  %1230 = shl i32 %1209, 2
  %1231 = getelementptr i8, ptr %1229, i32 %1230
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1231, i32 1884636051) #11, !srcloc !12
  %1232 = load ptr, ptr %128, align 8
  %1233 = load i32, ptr %142, align 4
  %1234 = add i32 %1233, 267
  %1235 = getelementptr inbounds %struct.tegra_dc, ptr %1232, i32 0, i32 2
  %1236 = load ptr, ptr %1235, align 4
  %1237 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1238 = icmp sgt i32 %1237, 0
  br i1 %1238, label %1239, label %1252

1239:                                             ; preds = %1227
  %1240 = tail call ptr @llvm.thread.pointer() #11
  %1241 = getelementptr inbounds %struct.thread_info, ptr %1240, i32 0, i32 2
  %1242 = load i32, ptr %1241, align 8
  %1243 = lshr i32 %1242, 5
  %1244 = getelementptr i32, ptr @__cpu_online_mask, i32 %1243
  %1245 = load volatile i32, ptr %1244, align 4
  %1246 = and i32 %1242, 31
  %1247 = shl nuw i32 1, %1246
  %1248 = and i32 %1247, %1245
  %1249 = icmp eq i32 %1248, 0
  br i1 %1249, label %1252, label %1250

1250:                                             ; preds = %1239
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1251 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1236, i32 noundef %1234, i32 noundef 1902000283) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1252

1252:                                             ; preds = %1250, %1239, %1227
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1253 = getelementptr inbounds %struct.tegra_dc, ptr %1232, i32 0, i32 8
  %1254 = load ptr, ptr %1253, align 8
  %1255 = shl i32 %1234, 2
  %1256 = getelementptr i8, ptr %1254, i32 %1255
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1256, i32 1902000283) #11, !srcloc !12
  %1257 = load ptr, ptr %128, align 8
  %1258 = load i32, ptr %142, align 4
  %1259 = add i32 %1258, 268
  %1260 = getelementptr inbounds %struct.tegra_dc, ptr %1257, i32 0, i32 2
  %1261 = load ptr, ptr %1260, align 4
  %1262 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1263 = icmp sgt i32 %1262, 0
  br i1 %1263, label %1264, label %1277

1264:                                             ; preds = %1252
  %1265 = tail call ptr @llvm.thread.pointer() #11
  %1266 = getelementptr inbounds %struct.thread_info, ptr %1265, i32 0, i32 2
  %1267 = load i32, ptr %1266, align 8
  %1268 = lshr i32 %1267, 5
  %1269 = getelementptr i32, ptr @__cpu_online_mask, i32 %1268
  %1270 = load volatile i32, ptr %1269, align 4
  %1271 = and i32 %1267, 31
  %1272 = shl nuw i32 1, %1271
  %1273 = and i32 %1272, %1270
  %1274 = icmp eq i32 %1273, 0
  br i1 %1274, label %1277, label %1275

1275:                                             ; preds = %1264
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1276 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1261, i32 noundef %1259, i32 noundef 1902522282) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1277

1277:                                             ; preds = %1275, %1264, %1252
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1278 = getelementptr inbounds %struct.tegra_dc, ptr %1257, i32 0, i32 8
  %1279 = load ptr, ptr %1278, align 8
  %1280 = shl i32 %1259, 2
  %1281 = getelementptr i8, ptr %1279, i32 %1280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1281, i32 1902522282) #11, !srcloc !12
  %1282 = load ptr, ptr %128, align 8
  %1283 = load i32, ptr %142, align 4
  %1284 = add i32 %1283, 269
  %1285 = getelementptr inbounds %struct.tegra_dc, ptr %1282, i32 0, i32 2
  %1286 = load ptr, ptr %1285, align 4
  %1287 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1288 = icmp sgt i32 %1287, 0
  br i1 %1288, label %1289, label %1302

1289:                                             ; preds = %1277
  %1290 = tail call ptr @llvm.thread.pointer() #11
  %1291 = getelementptr inbounds %struct.thread_info, ptr %1290, i32 0, i32 2
  %1292 = load i32, ptr %1291, align 8
  %1293 = lshr i32 %1292, 5
  %1294 = getelementptr i32, ptr @__cpu_online_mask, i32 %1293
  %1295 = load volatile i32, ptr %1294, align 4
  %1296 = and i32 %1292, 31
  %1297 = shl nuw i32 1, %1296
  %1298 = and i32 %1297, %1295
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %1302, label %1300

1300:                                             ; preds = %1289
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1301 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1286, i32 noundef %1284, i32 noundef 1399662010) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1302

1302:                                             ; preds = %1300, %1289, %1277
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1303 = getelementptr inbounds %struct.tegra_dc, ptr %1282, i32 0, i32 8
  %1304 = load ptr, ptr %1303, align 8
  %1305 = shl i32 %1284, 2
  %1306 = getelementptr i8, ptr %1304, i32 %1305
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1306, i32 1399662010) #11, !srcloc !12
  %1307 = load ptr, ptr %128, align 8
  %1308 = load i32, ptr %142, align 4
  %1309 = add i32 %1308, 270
  %1310 = getelementptr inbounds %struct.tegra_dc, ptr %1307, i32 0, i32 2
  %1311 = load ptr, ptr %1310, align 4
  %1312 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1313 = icmp sgt i32 %1312, 0
  br i1 %1313, label %1314, label %1327

1314:                                             ; preds = %1302
  %1315 = tail call ptr @llvm.thread.pointer() #11
  %1316 = getelementptr inbounds %struct.thread_info, ptr %1315, i32 0, i32 2
  %1317 = load i32, ptr %1316, align 8
  %1318 = lshr i32 %1317, 5
  %1319 = getelementptr i32, ptr @__cpu_online_mask, i32 %1318
  %1320 = load volatile i32, ptr %1319, align 4
  %1321 = and i32 %1317, 31
  %1322 = shl nuw i32 1, %1321
  %1323 = and i32 %1322, %1320
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1327, label %1325

1325:                                             ; preds = %1314
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1326 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1311, i32 noundef %1309, i32 noundef 1433607114) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1327

1327:                                             ; preds = %1325, %1314, %1302
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1328 = getelementptr inbounds %struct.tegra_dc, ptr %1307, i32 0, i32 8
  %1329 = load ptr, ptr %1328, align 8
  %1330 = shl i32 %1309, 2
  %1331 = getelementptr i8, ptr %1329, i32 %1330
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1331, i32 1433607114) #11, !srcloc !12
  %1332 = load ptr, ptr %128, align 8
  %1333 = load i32, ptr %142, align 4
  %1334 = add i32 %1333, 271
  %1335 = getelementptr inbounds %struct.tegra_dc, ptr %1332, i32 0, i32 2
  %1336 = load ptr, ptr %1335, align 4
  %1337 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1338 = icmp sgt i32 %1337, 0
  br i1 %1338, label %1339, label %1352

1339:                                             ; preds = %1327
  %1340 = tail call ptr @llvm.thread.pointer() #11
  %1341 = getelementptr inbounds %struct.thread_info, ptr %1340, i32 0, i32 2
  %1342 = load i32, ptr %1341, align 8
  %1343 = lshr i32 %1342, 5
  %1344 = getelementptr i32, ptr @__cpu_online_mask, i32 %1343
  %1345 = load volatile i32, ptr %1344, align 4
  %1346 = and i32 %1342, 31
  %1347 = shl nuw i32 1, %1346
  %1348 = and i32 %1347, %1345
  %1349 = icmp eq i32 %1348, 0
  br i1 %1349, label %1352, label %1350

1350:                                             ; preds = %1339
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1351 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1336, i32 noundef %1334, i32 noundef 947524057) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1352

1352:                                             ; preds = %1350, %1339, %1327
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1353 = getelementptr inbounds %struct.tegra_dc, ptr %1332, i32 0, i32 8
  %1354 = load ptr, ptr %1353, align 8
  %1355 = shl i32 %1334, 2
  %1356 = getelementptr i8, ptr %1354, i32 %1355
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1356, i32 947524057) #11, !srcloc !12
  %1357 = load ptr, ptr %128, align 8
  %1358 = load i32, ptr %142, align 4
  %1359 = add i32 %1358, 272
  %1360 = getelementptr inbounds %struct.tegra_dc, ptr %1357, i32 0, i32 2
  %1361 = load ptr, ptr %1360, align 4
  %1362 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1363 = icmp sgt i32 %1362, 0
  br i1 %1363, label %1364, label %1377

1364:                                             ; preds = %1352
  %1365 = tail call ptr @llvm.thread.pointer() #11
  %1366 = getelementptr inbounds %struct.thread_info, ptr %1365, i32 0, i32 2
  %1367 = load i32, ptr %1366, align 8
  %1368 = lshr i32 %1367, 5
  %1369 = getelementptr i32, ptr @__cpu_online_mask, i32 %1368
  %1370 = load volatile i32, ptr %1369, align 4
  %1371 = and i32 %1367, 31
  %1372 = shl nuw i32 1, %1371
  %1373 = and i32 %1372, %1370
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1377, label %1375

1375:                                             ; preds = %1364
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1376 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1361, i32 noundef %1359, i32 noundef 1014761713) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1377

1377:                                             ; preds = %1375, %1364, %1352
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1378 = getelementptr inbounds %struct.tegra_dc, ptr %1357, i32 0, i32 8
  %1379 = load ptr, ptr %1378, align 8
  %1380 = shl i32 %1359, 2
  %1381 = getelementptr i8, ptr %1379, i32 %1380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1381, i32 1014761713) #11, !srcloc !12
  %1382 = or i32 %967, 256
  %1383 = load ptr, ptr %128, align 8
  br label %1384

1384:                                             ; preds = %1377, %976, %959
  %1385 = phi ptr [ %1383, %1377 ], [ %968, %959 ], [ %968, %976 ]
  %1386 = phi i32 [ %1382, %1377 ], [ %967, %959 ], [ %967, %976 ]
  %1387 = load i32, ptr %41, align 4
  %1388 = load i32, ptr %55, align 4
  %1389 = icmp eq i32 %1387, %1388
  br i1 %1389, label %1443, label %1390

1390:                                             ; preds = %1384
  %1391 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 3
  %1392 = load i32, ptr %1391, align 8
  switch i32 %1392, label %1405 [
    i32 0, label %1393
    i32 2, label %1399
  ]

1393:                                             ; preds = %1390
  %1394 = getelementptr inbounds %struct.tegra_dc, ptr %1385, i32 0, i32 14
  %1395 = load ptr, ptr %1394, align 8
  %1396 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %1395, i32 0, i32 17
  %1397 = load i8, ptr %1396, align 4, !range !13
  %1398 = icmp eq i8 %1397, 0
  br i1 %1398, label %1405, label %1443

1399:                                             ; preds = %1390
  %1400 = getelementptr inbounds %struct.tegra_dc, ptr %1385, i32 0, i32 14
  %1401 = load ptr, ptr %1400, align 8
  %1402 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %1401, i32 0, i32 19
  %1403 = load i8, ptr %1402, align 2, !range !13
  %1404 = icmp eq i8 %1403, 0
  br i1 %1404, label %1405, label %1443

1405:                                             ; preds = %1399, %1393, %1390
  br label %1406

1406:                                             ; preds = %1437, %1405
  %1407 = phi ptr [ %1439, %1437 ], [ %1385, %1405 ]
  %1408 = phi i32 [ %1438, %1437 ], [ 128, %1405 ]
  %1409 = phi i32 [ %1435, %1437 ], [ 0, %1405 ]
  %1410 = add nuw nsw i32 %1409, 281
  %1411 = load i32, ptr %142, align 4
  %1412 = add i32 %1411, %1410
  %1413 = getelementptr inbounds %struct.tegra_dc, ptr %1407, i32 0, i32 2
  %1414 = load ptr, ptr %1413, align 4
  %1415 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1416 = icmp sgt i32 %1415, 0
  br i1 %1416, label %1417, label %1430

1417:                                             ; preds = %1406
  %1418 = tail call ptr @llvm.thread.pointer() #11
  %1419 = getelementptr inbounds %struct.thread_info, ptr %1418, i32 0, i32 2
  %1420 = load i32, ptr %1419, align 8
  %1421 = lshr i32 %1420, 5
  %1422 = getelementptr i32, ptr @__cpu_online_mask, i32 %1421
  %1423 = load volatile i32, ptr %1422, align 4
  %1424 = and i32 %1420, 31
  %1425 = shl nuw i32 1, %1424
  %1426 = and i32 %1425, %1423
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %1430, label %1428

1428:                                             ; preds = %1417
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1429 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1414, i32 noundef %1412, i32 noundef %1408) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1430

1430:                                             ; preds = %1428, %1417, %1406
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1431 = getelementptr inbounds %struct.tegra_dc, ptr %1407, i32 0, i32 8
  %1432 = load ptr, ptr %1431, align 8
  %1433 = shl i32 %1412, 2
  %1434 = getelementptr i8, ptr %1432, i32 %1433
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1434, i32 %1408) #11, !srcloc !12
  %1435 = add nuw nsw i32 %1409, 1
  %1436 = icmp eq i32 %1435, 16
  br i1 %1436, label %1440, label %1437

1437:                                             ; preds = %1430
  %1438 = add nsw i32 %1408, -8
  %1439 = load ptr, ptr %128, align 8
  br label %1406

1440:                                             ; preds = %1430
  %1441 = or i32 %1386, 1024
  %1442 = load ptr, ptr %128, align 8
  br label %1443

1443:                                             ; preds = %1440, %1399, %1393, %1384
  %1444 = phi ptr [ %1442, %1440 ], [ %1385, %1384 ], [ %1385, %1393 ], [ %1385, %1399 ]
  %1445 = phi i32 [ %1441, %1440 ], [ %1386, %1384 ], [ %1386, %1393 ], [ %1386, %1399 ]
  %1446 = load i32, ptr %142, align 4
  %1447 = add i32 %1446, 384
  %1448 = getelementptr inbounds %struct.tegra_dc, ptr %1444, i32 0, i32 2
  %1449 = load ptr, ptr %1448, align 4
  %1450 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1451 = icmp sgt i32 %1450, 0
  br i1 %1451, label %1452, label %1465

1452:                                             ; preds = %1443
  %1453 = tail call ptr @llvm.thread.pointer() #11
  %1454 = getelementptr inbounds %struct.thread_info, ptr %1453, i32 0, i32 2
  %1455 = load i32, ptr %1454, align 8
  %1456 = lshr i32 %1455, 5
  %1457 = getelementptr i32, ptr @__cpu_online_mask, i32 %1456
  %1458 = load volatile i32, ptr %1457, align 4
  %1459 = and i32 %1455, 31
  %1460 = shl nuw i32 1, %1459
  %1461 = and i32 %1460, %1458
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1465, label %1463

1463:                                             ; preds = %1452
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1464 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1449, i32 noundef %1447, i32 noundef %1445) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1465

1465:                                             ; preds = %1463, %1452, %1443
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1466 = getelementptr inbounds %struct.tegra_dc, ptr %1444, i32 0, i32 8
  %1467 = load ptr, ptr %1466, align 8
  %1468 = shl i32 %1447, 2
  %1469 = getelementptr i8, ptr %1467, i32 %1468
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1469, i32 %1445) #11, !srcloc !12
  %1470 = load ptr, ptr %681, align 8
  %1471 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %1470, i32 0, i32 5
  %1472 = load i8, ptr %1471, align 1, !range !13
  %1473 = icmp eq i8 %1472, 0
  %1474 = load ptr, ptr %128, align 8
  %1475 = load i32, ptr %142, align 4
  br i1 %1473, label %1831, label %1476

1476:                                             ; preds = %1465
  %1477 = add i32 %1475, 399
  %1478 = getelementptr inbounds %struct.tegra_dc, ptr %1474, i32 0, i32 2
  %1479 = load ptr, ptr %1478, align 4
  %1480 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1481 = icmp sgt i32 %1480, 0
  br i1 %1481, label %1482, label %1495

1482:                                             ; preds = %1476
  %1483 = tail call ptr @llvm.thread.pointer() #11
  %1484 = getelementptr inbounds %struct.thread_info, ptr %1483, i32 0, i32 2
  %1485 = load i32, ptr %1484, align 8
  %1486 = lshr i32 %1485, 5
  %1487 = getelementptr i32, ptr @__cpu_online_mask, i32 %1486
  %1488 = load volatile i32, ptr %1487, align 4
  %1489 = and i32 %1485, 31
  %1490 = shl nuw i32 1, %1489
  %1491 = and i32 %1490, %1488
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1495, label %1493

1493:                                             ; preds = %1482
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1494 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1479, i32 noundef %1477, i32 noundef 16776960) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1495

1495:                                             ; preds = %1493, %1482, %1476
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1496 = getelementptr inbounds %struct.tegra_dc, ptr %1474, i32 0, i32 8
  %1497 = load ptr, ptr %1496, align 8
  %1498 = shl i32 %1477, 2
  %1499 = getelementptr i8, ptr %1497, i32 %1498
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1499, i32 16776960) #11, !srcloc !12
  %1500 = load ptr, ptr %128, align 8
  %1501 = load i32, ptr %142, align 4
  %1502 = add i32 %1501, 400
  %1503 = getelementptr inbounds %struct.tegra_dc, ptr %1500, i32 0, i32 2
  %1504 = load ptr, ptr %1503, align 4
  %1505 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1506 = icmp sgt i32 %1505, 0
  br i1 %1506, label %1507, label %1520

1507:                                             ; preds = %1495
  %1508 = tail call ptr @llvm.thread.pointer() #11
  %1509 = getelementptr inbounds %struct.thread_info, ptr %1508, i32 0, i32 2
  %1510 = load i32, ptr %1509, align 8
  %1511 = lshr i32 %1510, 5
  %1512 = getelementptr i32, ptr @__cpu_online_mask, i32 %1511
  %1513 = load volatile i32, ptr %1512, align 4
  %1514 = and i32 %1510, 31
  %1515 = shl nuw i32 1, %1514
  %1516 = and i32 %1515, %1513
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %1520, label %1518

1518:                                             ; preds = %1507
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1519 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1504, i32 noundef %1502, i32 noundef 16776960) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1520

1520:                                             ; preds = %1518, %1507, %1495
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1521 = getelementptr inbounds %struct.tegra_dc, ptr %1500, i32 0, i32 8
  %1522 = load ptr, ptr %1521, align 8
  %1523 = shl i32 %1502, 2
  %1524 = getelementptr i8, ptr %1522, i32 %1523
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1524, i32 16776960) #11, !srcloc !12
  %1525 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %1526 = load ptr, ptr %1525, align 4
  %1527 = getelementptr inbounds %struct.tegra_plane_state, ptr %1526, i32 0, i32 9
  %1528 = load i8, ptr %1527, align 2, !range !13
  %1529 = icmp eq i8 %1528, 0
  br i1 %1529, label %1530, label %1534

1530:                                             ; preds = %1520
  %1531 = getelementptr %struct.tegra_plane_state, ptr %1526, i32 0, i32 8, i32 0
  %1532 = load i8, ptr %1531, align 2, !range !13
  %1533 = icmp eq i8 %1532, 0
  br i1 %1533, label %1551, label %1546

1534:                                             ; preds = %1520
  %1535 = getelementptr inbounds %struct.drm_plane_state, ptr %1526, i32 0, i32 16
  %1536 = load i32, ptr %1535, align 4
  switch i32 %1536, label %1581 [
    i32 0, label %1537
    i32 1, label %1664
  ]

1537:                                             ; preds = %1534
  %1538 = getelementptr inbounds %struct.tegra_plane_state, ptr %1526, i32 0, i32 8
  %1539 = load i8, ptr %1538, align 2, !range !13
  %1540 = icmp eq i8 %1539, 0
  br i1 %1540, label %1585, label %1541

1541:                                             ; preds = %1537
  %1542 = getelementptr %struct.tegra_plane_state, ptr %1526, i32 0, i32 8, i32 1
  %1543 = load i8, ptr %1542, align 2, !range !13
  %1544 = icmp eq i8 %1543, 0
  %1545 = select i1 %1544, i32 0, i32 8
  br label %1585

1546:                                             ; preds = %1530
  %1547 = getelementptr %struct.tegra_plane_state, ptr %1526, i32 0, i32 8, i32 0, i32 1
  %1548 = load i8, ptr %1547, align 1, !range !13
  %1549 = icmp eq i8 %1548, 0
  %1550 = select i1 %1549, i32 0, i32 8
  br label %1551

1551:                                             ; preds = %1546, %1530
  %1552 = phi i32 [ 0, %1530 ], [ %1550, %1546 ]
  %1553 = getelementptr %struct.tegra_plane_state, ptr %1526, i32 0, i32 8, i32 1
  %1554 = load i8, ptr %1553, align 2, !range !13
  %1555 = icmp eq i8 %1554, 0
  br i1 %1555, label %1561, label %1556

1556:                                             ; preds = %1551
  %1557 = getelementptr %struct.tegra_plane_state, ptr %1526, i32 0, i32 8, i32 1, i32 1
  %1558 = load i8, ptr %1557, align 1, !range !13
  %1559 = icmp eq i8 %1558, 0
  %1560 = select i1 %1559, i32 0, i32 8
  br label %1561

1561:                                             ; preds = %1556, %1551
  %1562 = phi i32 [ 0, %1551 ], [ %1560, %1556 ]
  %1563 = getelementptr inbounds %struct.drm_plane_state, ptr %1526, i32 0, i32 16
  %1564 = load i32, ptr %1563, align 4
  switch i32 %1564, label %1581 [
    i32 0, label %1565
    i32 1, label %1568
  ]

1565:                                             ; preds = %1561
  %1566 = select i1 %1533, i1 true, i1 %1555
  %1567 = select i1 %1566, i32 0, i32 8
  br label %1585

1568:                                             ; preds = %1561
  br i1 %1533, label %1574, label %1569

1569:                                             ; preds = %1568
  %1570 = getelementptr inbounds %struct.tegra_plane_state, ptr %1526, i32 0, i32 8, i32 0, i32 1
  %1571 = load i8, ptr %1570, align 1, !range !13
  %1572 = icmp eq i8 %1571, 0
  %1573 = select i1 %1572, i32 0, i32 4
  br label %1574

1574:                                             ; preds = %1569, %1568
  %1575 = phi i32 [ 0, %1568 ], [ %1573, %1569 ]
  br i1 %1555, label %1664, label %1576

1576:                                             ; preds = %1574
  %1577 = getelementptr %struct.tegra_plane_state, ptr %1526, i32 0, i32 8, i32 1, i32 1
  %1578 = load i8, ptr %1577, align 1, !range !13
  %1579 = icmp eq i8 %1578, 0
  %1580 = select i1 %1579, i32 %1575, i32 4
  br label %1664

1581:                                             ; preds = %1561, %1534
  %1582 = phi i32 [ %1564, %1561 ], [ %1536, %1534 ]
  %1583 = phi i32 [ 16776964, %1561 ], [ 16776960, %1534 ]
  %1584 = icmp eq i32 %1582, 2
  br i1 %1584, label %1755, label %1909

1585:                                             ; preds = %1565, %1541, %1537
  %1586 = phi i32 [ 0, %1537 ], [ %1545, %1541 ], [ %1567, %1565 ]
  %1587 = phi i32 [ 8, %1537 ], [ 8, %1541 ], [ %1562, %1565 ]
  %1588 = phi i32 [ 8, %1537 ], [ 8, %1541 ], [ %1552, %1565 ]
  %1589 = load ptr, ptr %128, align 8
  %1590 = load i32, ptr %142, align 4
  %1591 = add i32 %1590, 401
  %1592 = getelementptr inbounds %struct.tegra_dc, ptr %1589, i32 0, i32 2
  %1593 = load ptr, ptr %1592, align 4
  %1594 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1595 = icmp sgt i32 %1594, 0
  br i1 %1595, label %1596, label %1609

1596:                                             ; preds = %1585
  %1597 = tail call ptr @llvm.thread.pointer() #11
  %1598 = getelementptr inbounds %struct.thread_info, ptr %1597, i32 0, i32 2
  %1599 = load i32, ptr %1598, align 8
  %1600 = lshr i32 %1599, 5
  %1601 = getelementptr i32, ptr @__cpu_online_mask, i32 %1600
  %1602 = load volatile i32, ptr %1601, align 4
  %1603 = and i32 %1599, 31
  %1604 = shl nuw i32 1, %1603
  %1605 = and i32 %1604, %1602
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %1609, label %1607

1607:                                             ; preds = %1596
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1608 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1593, i32 noundef %1591, i32 noundef %1588) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1609

1609:                                             ; preds = %1607, %1596, %1585
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1610 = getelementptr inbounds %struct.tegra_dc, ptr %1589, i32 0, i32 8
  %1611 = load ptr, ptr %1610, align 8
  %1612 = shl i32 %1591, 2
  %1613 = getelementptr i8, ptr %1611, i32 %1612
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1613, i32 %1588) #11, !srcloc !12
  %1614 = load ptr, ptr %128, align 8
  %1615 = load i32, ptr %142, align 4
  %1616 = add i32 %1615, 402
  %1617 = getelementptr inbounds %struct.tegra_dc, ptr %1614, i32 0, i32 2
  %1618 = load ptr, ptr %1617, align 4
  %1619 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1620 = icmp sgt i32 %1619, 0
  br i1 %1620, label %1621, label %1634

1621:                                             ; preds = %1609
  %1622 = tail call ptr @llvm.thread.pointer() #11
  %1623 = getelementptr inbounds %struct.thread_info, ptr %1622, i32 0, i32 2
  %1624 = load i32, ptr %1623, align 8
  %1625 = lshr i32 %1624, 5
  %1626 = getelementptr i32, ptr @__cpu_online_mask, i32 %1625
  %1627 = load volatile i32, ptr %1626, align 4
  %1628 = and i32 %1624, 31
  %1629 = shl nuw i32 1, %1628
  %1630 = and i32 %1629, %1627
  %1631 = icmp eq i32 %1630, 0
  br i1 %1631, label %1634, label %1632

1632:                                             ; preds = %1621
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1633 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1618, i32 noundef %1616, i32 noundef %1587) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1634

1634:                                             ; preds = %1632, %1621, %1609
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1635 = getelementptr inbounds %struct.tegra_dc, ptr %1614, i32 0, i32 8
  %1636 = load ptr, ptr %1635, align 8
  %1637 = shl i32 %1616, 2
  %1638 = getelementptr i8, ptr %1636, i32 %1637
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1638, i32 %1587) #11, !srcloc !12
  %1639 = load ptr, ptr %128, align 8
  %1640 = load i32, ptr %142, align 4
  %1641 = add i32 %1640, 403
  %1642 = getelementptr inbounds %struct.tegra_dc, ptr %1639, i32 0, i32 2
  %1643 = load ptr, ptr %1642, align 4
  %1644 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1645 = icmp sgt i32 %1644, 0
  br i1 %1645, label %1646, label %1659

1646:                                             ; preds = %1634
  %1647 = tail call ptr @llvm.thread.pointer() #11
  %1648 = getelementptr inbounds %struct.thread_info, ptr %1647, i32 0, i32 2
  %1649 = load i32, ptr %1648, align 8
  %1650 = lshr i32 %1649, 5
  %1651 = getelementptr i32, ptr @__cpu_online_mask, i32 %1650
  %1652 = load volatile i32, ptr %1651, align 4
  %1653 = and i32 %1649, 31
  %1654 = shl nuw i32 1, %1653
  %1655 = and i32 %1654, %1652
  %1656 = icmp eq i32 %1655, 0
  br i1 %1656, label %1659, label %1657

1657:                                             ; preds = %1646
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1658 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1643, i32 noundef %1641, i32 noundef %1586) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1659

1659:                                             ; preds = %1657, %1646, %1634
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1660 = getelementptr inbounds %struct.tegra_dc, ptr %1639, i32 0, i32 8
  %1661 = load ptr, ptr %1660, align 8
  %1662 = shl i32 %1641, 2
  %1663 = getelementptr i8, ptr %1661, i32 %1662
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1663, i32 %1586) #11, !srcloc !12
  br label %1909

1664:                                             ; preds = %1576, %1574, %1534
  %1665 = phi i32 [ 16776964, %1574 ], [ 16776960, %1534 ], [ 16776964, %1576 ]
  %1666 = phi i32 [ %1575, %1574 ], [ 8, %1534 ], [ %1580, %1576 ]
  %1667 = phi i32 [ %1562, %1574 ], [ 8, %1534 ], [ %1562, %1576 ]
  %1668 = phi i32 [ %1552, %1574 ], [ 8, %1534 ], [ %1552, %1576 ]
  %1669 = getelementptr inbounds %struct.tegra_plane_state, ptr %1526, i32 0, i32 8, i32 0, i32 1
  %1670 = load i8, ptr %1669, align 1, !range !13
  %1671 = icmp eq i8 %1670, 0
  br i1 %1671, label %1672, label %1676

1672:                                             ; preds = %1664
  %1673 = getelementptr %struct.tegra_plane_state, ptr %1526, i32 0, i32 8, i32 1, i32 1
  %1674 = load i8, ptr %1673, align 1, !range !13
  %1675 = icmp eq i8 %1674, 0
  br i1 %1675, label %1676, label %1677

1676:                                             ; preds = %1672, %1664
  br label %1677

1677:                                             ; preds = %1676, %1672
  %1678 = phi i32 [ %1668, %1676 ], [ %1665, %1672 ]
  %1679 = phi i32 [ %1665, %1676 ], [ %1667, %1672 ]
  %1680 = load ptr, ptr %128, align 8
  %1681 = load i32, ptr %142, align 4
  %1682 = add i32 %1681, 401
  %1683 = getelementptr inbounds %struct.tegra_dc, ptr %1680, i32 0, i32 2
  %1684 = load ptr, ptr %1683, align 4
  %1685 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1686 = icmp sgt i32 %1685, 0
  br i1 %1686, label %1687, label %1700

1687:                                             ; preds = %1677
  %1688 = tail call ptr @llvm.thread.pointer() #11
  %1689 = getelementptr inbounds %struct.thread_info, ptr %1688, i32 0, i32 2
  %1690 = load i32, ptr %1689, align 8
  %1691 = lshr i32 %1690, 5
  %1692 = getelementptr i32, ptr @__cpu_online_mask, i32 %1691
  %1693 = load volatile i32, ptr %1692, align 4
  %1694 = and i32 %1690, 31
  %1695 = shl nuw i32 1, %1694
  %1696 = and i32 %1695, %1693
  %1697 = icmp eq i32 %1696, 0
  br i1 %1697, label %1700, label %1698

1698:                                             ; preds = %1687
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1699 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1684, i32 noundef %1682, i32 noundef %1678) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1700

1700:                                             ; preds = %1698, %1687, %1677
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1701 = getelementptr inbounds %struct.tegra_dc, ptr %1680, i32 0, i32 8
  %1702 = load ptr, ptr %1701, align 8
  %1703 = shl i32 %1682, 2
  %1704 = getelementptr i8, ptr %1702, i32 %1703
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1704, i32 %1678) #11, !srcloc !12
  %1705 = load ptr, ptr %128, align 8
  %1706 = load i32, ptr %142, align 4
  %1707 = add i32 %1706, 402
  %1708 = getelementptr inbounds %struct.tegra_dc, ptr %1705, i32 0, i32 2
  %1709 = load ptr, ptr %1708, align 4
  %1710 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1711 = icmp sgt i32 %1710, 0
  br i1 %1711, label %1712, label %1725

1712:                                             ; preds = %1700
  %1713 = tail call ptr @llvm.thread.pointer() #11
  %1714 = getelementptr inbounds %struct.thread_info, ptr %1713, i32 0, i32 2
  %1715 = load i32, ptr %1714, align 8
  %1716 = lshr i32 %1715, 5
  %1717 = getelementptr i32, ptr @__cpu_online_mask, i32 %1716
  %1718 = load volatile i32, ptr %1717, align 4
  %1719 = and i32 %1715, 31
  %1720 = shl nuw i32 1, %1719
  %1721 = and i32 %1720, %1718
  %1722 = icmp eq i32 %1721, 0
  br i1 %1722, label %1725, label %1723

1723:                                             ; preds = %1712
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1724 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1709, i32 noundef %1707, i32 noundef %1679) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1725

1725:                                             ; preds = %1723, %1712, %1700
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1726 = getelementptr inbounds %struct.tegra_dc, ptr %1705, i32 0, i32 8
  %1727 = load ptr, ptr %1726, align 8
  %1728 = shl i32 %1707, 2
  %1729 = getelementptr i8, ptr %1727, i32 %1728
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1729, i32 %1679) #11, !srcloc !12
  %1730 = load ptr, ptr %128, align 8
  %1731 = load i32, ptr %142, align 4
  %1732 = add i32 %1731, 403
  %1733 = getelementptr inbounds %struct.tegra_dc, ptr %1730, i32 0, i32 2
  %1734 = load ptr, ptr %1733, align 4
  %1735 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1736 = icmp sgt i32 %1735, 0
  br i1 %1736, label %1737, label %1750

1737:                                             ; preds = %1725
  %1738 = tail call ptr @llvm.thread.pointer() #11
  %1739 = getelementptr inbounds %struct.thread_info, ptr %1738, i32 0, i32 2
  %1740 = load i32, ptr %1739, align 8
  %1741 = lshr i32 %1740, 5
  %1742 = getelementptr i32, ptr @__cpu_online_mask, i32 %1741
  %1743 = load volatile i32, ptr %1742, align 4
  %1744 = and i32 %1740, 31
  %1745 = shl nuw i32 1, %1744
  %1746 = and i32 %1745, %1743
  %1747 = icmp eq i32 %1746, 0
  br i1 %1747, label %1750, label %1748

1748:                                             ; preds = %1737
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1749 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1734, i32 noundef %1732, i32 noundef %1666) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1750

1750:                                             ; preds = %1748, %1737, %1725
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1751 = getelementptr inbounds %struct.tegra_dc, ptr %1730, i32 0, i32 8
  %1752 = load ptr, ptr %1751, align 8
  %1753 = shl i32 %1732, 2
  %1754 = getelementptr i8, ptr %1752, i32 %1753
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1754, i32 %1666) #11, !srcloc !12
  br label %1909

1755:                                             ; preds = %1581
  %1756 = load ptr, ptr %128, align 8
  %1757 = load i32, ptr %142, align 4
  %1758 = add i32 %1757, 401
  %1759 = getelementptr inbounds %struct.tegra_dc, ptr %1756, i32 0, i32 2
  %1760 = load ptr, ptr %1759, align 4
  %1761 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1762 = icmp sgt i32 %1761, 0
  br i1 %1762, label %1763, label %1776

1763:                                             ; preds = %1755
  %1764 = tail call ptr @llvm.thread.pointer() #11
  %1765 = getelementptr inbounds %struct.thread_info, ptr %1764, i32 0, i32 2
  %1766 = load i32, ptr %1765, align 8
  %1767 = lshr i32 %1766, 5
  %1768 = getelementptr i32, ptr @__cpu_online_mask, i32 %1767
  %1769 = load volatile i32, ptr %1768, align 4
  %1770 = and i32 %1766, 31
  %1771 = shl nuw i32 1, %1770
  %1772 = and i32 %1771, %1769
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %1776, label %1774

1774:                                             ; preds = %1763
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1775 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1760, i32 noundef %1758, i32 noundef %1583) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1776

1776:                                             ; preds = %1774, %1763, %1755
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1777 = getelementptr inbounds %struct.tegra_dc, ptr %1756, i32 0, i32 8
  %1778 = load ptr, ptr %1777, align 8
  %1779 = shl i32 %1758, 2
  %1780 = getelementptr i8, ptr %1778, i32 %1779
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1780, i32 %1583) #11, !srcloc !12
  %1781 = load ptr, ptr %128, align 8
  %1782 = load i32, ptr %142, align 4
  %1783 = add i32 %1782, 402
  %1784 = getelementptr inbounds %struct.tegra_dc, ptr %1781, i32 0, i32 2
  %1785 = load ptr, ptr %1784, align 4
  %1786 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1787 = icmp sgt i32 %1786, 0
  br i1 %1787, label %1788, label %1801

1788:                                             ; preds = %1776
  %1789 = tail call ptr @llvm.thread.pointer() #11
  %1790 = getelementptr inbounds %struct.thread_info, ptr %1789, i32 0, i32 2
  %1791 = load i32, ptr %1790, align 8
  %1792 = lshr i32 %1791, 5
  %1793 = getelementptr i32, ptr @__cpu_online_mask, i32 %1792
  %1794 = load volatile i32, ptr %1793, align 4
  %1795 = and i32 %1791, 31
  %1796 = shl nuw i32 1, %1795
  %1797 = and i32 %1796, %1794
  %1798 = icmp eq i32 %1797, 0
  br i1 %1798, label %1801, label %1799

1799:                                             ; preds = %1788
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1800 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1785, i32 noundef %1783, i32 noundef %1583) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1801

1801:                                             ; preds = %1799, %1788, %1776
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1802 = getelementptr inbounds %struct.tegra_dc, ptr %1781, i32 0, i32 8
  %1803 = load ptr, ptr %1802, align 8
  %1804 = shl i32 %1783, 2
  %1805 = getelementptr i8, ptr %1803, i32 %1804
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1805, i32 %1583) #11, !srcloc !12
  %1806 = load ptr, ptr %128, align 8
  %1807 = load i32, ptr %142, align 4
  %1808 = add i32 %1807, 403
  %1809 = getelementptr inbounds %struct.tegra_dc, ptr %1806, i32 0, i32 2
  %1810 = load ptr, ptr %1809, align 4
  %1811 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1812 = icmp sgt i32 %1811, 0
  br i1 %1812, label %1813, label %1826

1813:                                             ; preds = %1801
  %1814 = tail call ptr @llvm.thread.pointer() #11
  %1815 = getelementptr inbounds %struct.thread_info, ptr %1814, i32 0, i32 2
  %1816 = load i32, ptr %1815, align 8
  %1817 = lshr i32 %1816, 5
  %1818 = getelementptr i32, ptr @__cpu_online_mask, i32 %1817
  %1819 = load volatile i32, ptr %1818, align 4
  %1820 = and i32 %1816, 31
  %1821 = shl nuw i32 1, %1820
  %1822 = and i32 %1821, %1819
  %1823 = icmp eq i32 %1822, 0
  br i1 %1823, label %1826, label %1824

1824:                                             ; preds = %1813
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1825 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1810, i32 noundef %1808, i32 noundef %1583) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1826

1826:                                             ; preds = %1824, %1813, %1801
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1827 = getelementptr inbounds %struct.tegra_dc, ptr %1806, i32 0, i32 8
  %1828 = load ptr, ptr %1827, align 8
  %1829 = shl i32 %1808, 2
  %1830 = getelementptr i8, ptr %1828, i32 %1829
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1830, i32 %1583) #11, !srcloc !12
  br label %1909

1831:                                             ; preds = %1465
  %1832 = add i32 %1475, 407
  %1833 = getelementptr inbounds %struct.tegra_dc, ptr %1474, i32 0, i32 2
  %1834 = load ptr, ptr %1833, align 4
  %1835 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1836 = icmp sgt i32 %1835, 0
  br i1 %1836, label %1837, label %1850

1837:                                             ; preds = %1831
  %1838 = tail call ptr @llvm.thread.pointer() #11
  %1839 = getelementptr inbounds %struct.thread_info, ptr %1838, i32 0, i32 2
  %1840 = load i32, ptr %1839, align 8
  %1841 = lshr i32 %1840, 5
  %1842 = getelementptr i32, ptr @__cpu_online_mask, i32 %1841
  %1843 = load volatile i32, ptr %1842, align 4
  %1844 = and i32 %1840, 31
  %1845 = shl nuw i32 1, %1844
  %1846 = and i32 %1845, %1843
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1850, label %1848

1848:                                             ; preds = %1837
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1849 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1834, i32 noundef %1832, i32 noundef 613) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1850

1850:                                             ; preds = %1848, %1837, %1831
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1851 = getelementptr inbounds %struct.tegra_dc, ptr %1474, i32 0, i32 8
  %1852 = load ptr, ptr %1851, align 8
  %1853 = shl i32 %1832, 2
  %1854 = getelementptr i8, ptr %1852, i32 %1853
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1854, i32 613) #11, !srcloc !12
  %1855 = load ptr, ptr %128, align 8
  %1856 = load i32, ptr %142, align 4
  %1857 = add i32 %1856, 408
  %1858 = getelementptr inbounds %struct.tegra_dc, ptr %1855, i32 0, i32 2
  %1859 = load ptr, ptr %1858, align 4
  %1860 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1861 = icmp sgt i32 %1860, 0
  br i1 %1861, label %1862, label %1875

1862:                                             ; preds = %1850
  %1863 = tail call ptr @llvm.thread.pointer() #11
  %1864 = getelementptr inbounds %struct.thread_info, ptr %1863, i32 0, i32 2
  %1865 = load i32, ptr %1864, align 8
  %1866 = lshr i32 %1865, 5
  %1867 = getelementptr i32, ptr @__cpu_online_mask, i32 %1866
  %1868 = load volatile i32, ptr %1867, align 4
  %1869 = and i32 %1865, 31
  %1870 = shl nuw i32 1, %1869
  %1871 = and i32 %1870, %1868
  %1872 = icmp eq i32 %1871, 0
  br i1 %1872, label %1875, label %1873

1873:                                             ; preds = %1862
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1874 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1859, i32 noundef %1857, i32 noundef 613) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1875

1875:                                             ; preds = %1873, %1862, %1850
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1876 = getelementptr inbounds %struct.tegra_dc, ptr %1855, i32 0, i32 8
  %1877 = load ptr, ptr %1876, align 8
  %1878 = shl i32 %1857, 2
  %1879 = getelementptr i8, ptr %1877, i32 %1878
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1879, i32 613) #11, !srcloc !12
  %1880 = load i32, ptr %71, align 4
  %1881 = sub i32 255, %1880
  %1882 = and i32 %1881, 255
  %1883 = or i32 %1882, 16776960
  %1884 = load ptr, ptr %128, align 8
  %1885 = load i32, ptr %142, align 4
  %1886 = add i32 %1885, 406
  %1887 = getelementptr inbounds %struct.tegra_dc, ptr %1884, i32 0, i32 2
  %1888 = load ptr, ptr %1887, align 4
  %1889 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1890 = icmp sgt i32 %1889, 0
  br i1 %1890, label %1891, label %1904

1891:                                             ; preds = %1875
  %1892 = tail call ptr @llvm.thread.pointer() #11
  %1893 = getelementptr inbounds %struct.thread_info, ptr %1892, i32 0, i32 2
  %1894 = load i32, ptr %1893, align 8
  %1895 = lshr i32 %1894, 5
  %1896 = getelementptr i32, ptr @__cpu_online_mask, i32 %1895
  %1897 = load volatile i32, ptr %1896, align 4
  %1898 = and i32 %1894, 31
  %1899 = shl nuw i32 1, %1898
  %1900 = and i32 %1899, %1897
  %1901 = icmp eq i32 %1900, 0
  br i1 %1901, label %1904, label %1902

1902:                                             ; preds = %1891
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %1903 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1888, i32 noundef %1886, i32 noundef %1883) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %1904

1904:                                             ; preds = %1902, %1891, %1875
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %1905 = getelementptr inbounds %struct.tegra_dc, ptr %1884, i32 0, i32 8
  %1906 = load ptr, ptr %1905, align 8
  %1907 = shl i32 %1886, 2
  %1908 = getelementptr i8, ptr %1906, i32 %1907
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1908, i32 %1883) #11, !srcloc !12
  br label %1909

1909:                                             ; preds = %1904, %1826, %1750, %1659, %1581
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %1910

1910:                                             ; preds = %1909, %23, %16, %2
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_plane_atomic_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %69, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 384
  %20 = getelementptr inbounds %struct.tegra_dc, ptr %16, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = shl i32 %19, 2
  %23 = getelementptr i8, ptr %21, i32 %22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %25 = getelementptr inbounds %struct.tegra_dc, ptr %16, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %14
  %30 = tail call ptr @llvm.thread.pointer() #11
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %41 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %26, i32 noundef %19, i32 noundef %24) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %42

42:                                               ; preds = %40, %29, %14
  %43 = and i32 %24, -1073741825
  %44 = load ptr, ptr %15, align 8
  %45 = load i32, ptr %17, align 4
  %46 = add i32 %45, 384
  %47 = getelementptr inbounds %struct.tegra_dc, ptr %44, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = tail call ptr @llvm.thread.pointer() #11
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %63 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %48, i32 noundef %46, i32 noundef %43) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %64

64:                                               ; preds = %62, %51, %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %65 = getelementptr inbounds %struct.tegra_dc, ptr %44, i32 0, i32 8
  %66 = load ptr, ptr %65, align 8
  %67 = shl i32 %46, 2
  %68 = getelementptr i8, ptr %66, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %43) #11, !srcloc !12
  br label %69

69:                                               ; preds = %64, %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_format(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_setup_legacy_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fb_get_tiling(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_fb_is_bottom_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_rotation_simplify(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_state_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_plane_format_is_yuv(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_immutable_property(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_cursor_atomic_check(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 11
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 12
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 10
  store i32 0, ptr %15, align 4
  br label %38

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 16
  %20 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 16
  %27 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %26, %28
  %30 = icmp eq i32 %18, %25
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = add nsw i32 %19, -32
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 27)
  switch i32 %34, label %38 [
    i32 0, label %35
    i32 1, label %35
    i32 3, label %35
    i32 7, label %35
  ]

35:                                               ; preds = %32, %32, %32, %32
  %36 = tail call i32 @tegra_plane_state_add(ptr noundef %0, ptr noundef %8) #11
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 0)
  br label %38

38:                                               ; preds = %35, %32, %23, %16, %14
  %39 = phi i32 [ 0, %14 ], [ -22, %23 ], [ -22, %16 ], [ -22, %32 ], [ %37, %35 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_cursor_atomic_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call fastcc void @__tegra_cursor_atomic_update(ptr noundef %0, ptr noundef %8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_cursor_atomic_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %58, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %58, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 768
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 4104
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %19 = getelementptr i8, ptr %12, i32 -4
  %20 = load ptr, ptr %19, align 4
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %14
  %24 = tail call ptr @llvm.thread.pointer() #11
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %35 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %20, i32 noundef 1026, i32 noundef %18) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %36 = load ptr, ptr %19, align 4
  br label %37

37:                                               ; preds = %34, %23, %14
  %38 = phi ptr [ %20, %14 ], [ %20, %23 ], [ %36, %34 ]
  %39 = and i32 %18, -65537
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = tail call ptr @llvm.thread.pointer() #11
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 5
  %47 = getelementptr i32, ptr @__cpu_online_mask, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %45, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %54 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %38, i32 noundef 1026, i32 noundef %39) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %55

55:                                               ; preds = %53, %42, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %56 = load ptr, ptr %15, align 8
  %57 = getelementptr i8, ptr %56, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %39) #11, !srcloc !12
  br label %58

58:                                               ; preds = %55, %10, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_cursor_atomic_async_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr %struct.__drm_crtcs_state, ptr %12, i32 %14, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19, !prof !26

18:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 1029, i32 noundef 9, ptr noundef null) #11
  br label %72

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.drm_crtc_state, ptr %16, i32 0, i32 2
  %21 = load i8, ptr %20, align 1, !range !13
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %72, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %10
  br i1 %28, label %29, label %72

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 11
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 10
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp ne ptr %55, %57
  %59 = icmp eq ptr %55, null
  %60 = or i1 %59, %58
  br i1 %60, label %72, label %61

61:                                               ; preds = %53
  %62 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %8, ptr noundef nonnull %16, i32 noundef 8192, i32 noundef 524288, i1 noundef zeroext true, i1 noundef zeroext true) #11
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  %66 = load i8, ptr %65, align 4, !range !13
  %67 = load ptr, ptr %24, align 4
  %68 = getelementptr inbounds %struct.drm_plane_state, ptr %67, i32 0, i32 22
  %69 = load i8, ptr %68, align 4, !range !13
  %70 = icmp eq i8 %66, %69
  %71 = select i1 %70, i32 0, i32 -22
  br label %72

72:                                               ; preds = %64, %61, %53, %47, %41, %35, %29, %23, %19, %18
  %73 = phi i32 [ -22, %18 ], [ -22, %19 ], [ -22, %53 ], [ -22, %47 ], [ -22, %41 ], [ -22, %35 ], [ -22, %29 ], [ -22, %23 ], [ %62, %61 ], [ %71, %64 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_cursor_atomic_async_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = getelementptr i8, ptr %10, i32 -104
  %13 = select i1 %11, ptr null, ptr %12
  %14 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 8
  store i32 %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds %struct.drm_plane_state, ptr %21, i32 0, i32 9
  store i32 %20, ptr %22, align 4
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 4
  store i32 %24, ptr %26, align 4
  %27 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 5
  store i32 %28, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 22
  %32 = load i8, ptr %31, align 4, !range !13
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %122, label %34

34:                                               ; preds = %2
  tail call fastcc void @__tegra_cursor_atomic_update(ptr noundef %0, ptr noundef %8)
  %35 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 3
  %36 = load i32, ptr %35, align 8
  %37 = shl i32 512, %36
  %38 = or i32 %37, 256
  %39 = getelementptr inbounds %struct.tegra_dc, ptr %13, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %34
  %44 = tail call ptr @llvm.thread.pointer() #11
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %55 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %40, i32 noundef 65, i32 noundef %38) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %56

56:                                               ; preds = %54, %43, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %57 = getelementptr inbounds %struct.tegra_dc, ptr %13, i32 0, i32 8
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr i8, ptr %58, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %38) #11, !srcloc !12
  %60 = load ptr, ptr %57, align 8
  %61 = getelementptr i8, ptr %60, i32 260
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %63 = load ptr, ptr %39, align 4
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %56
  %67 = tail call ptr @llvm.thread.pointer() #11
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %78 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %63, i32 noundef 65, i32 noundef %62) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %79 = load ptr, ptr %39, align 4
  br label %80

80:                                               ; preds = %77, %66, %56
  %81 = phi ptr [ %63, %56 ], [ %63, %66 ], [ %79, %77 ]
  %82 = load i32, ptr %35, align 8
  %83 = shl i32 2, %82
  %84 = or i32 %83, 1
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = tail call ptr @llvm.thread.pointer() #11
  %89 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 8
  %91 = lshr i32 %90, 5
  %92 = getelementptr i32, ptr @__cpu_online_mask, i32 %91
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %90, 31
  %95 = shl nuw i32 1, %94
  %96 = and i32 %95, %93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %87
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %99 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %81, i32 noundef 65, i32 noundef %84) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %100

100:                                              ; preds = %98, %87, %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %101 = load ptr, ptr %57, align 8
  %102 = getelementptr i8, ptr %101, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %84) #11, !srcloc !12
  %103 = load ptr, ptr %57, align 8
  %104 = getelementptr i8, ptr %103, i32 260
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %106 = load ptr, ptr %39, align 4
  %107 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %100
  %110 = tail call ptr @llvm.thread.pointer() #11
  %111 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 8
  %113 = lshr i32 %112, 5
  %114 = getelementptr i32, ptr @__cpu_online_mask, i32 %113
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %112, 31
  %117 = shl nuw i32 1, %116
  %118 = and i32 %117, %115
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %109
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %121 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %106, i32 noundef 65, i32 noundef %105) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %122

122:                                              ; preds = %120, %109, %100, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__tegra_cursor_atomic_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -104
  %7 = select i1 %5, ptr null, ptr %6
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  br i1 %5, label %256, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %256, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tegra_dc, ptr %7, i32 0, i32 14
  %17 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -32
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 27)
  %21 = icmp ult i32 %20, 8
  br i1 %21, label %25, label %22

22:                                               ; preds = %25, %15
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 938, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef %18, i32 noundef %24) #11
  br label %256

25:                                               ; preds = %15
  %26 = trunc i32 %20 to i8
  %27 = lshr i8 -117, %26
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %22, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds [8 x i32], ptr @switch.table.__tegra_cursor_atomic_update, i32 0, i32 %20
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tegra_plane_state, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 10
  %36 = or i32 %35, %32
  %37 = getelementptr inbounds %struct.tegra_dc, ptr %7, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %30
  %42 = tail call ptr @llvm.thread.pointer() #11
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr @__cpu_online_mask, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %47
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %53 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %38, i32 noundef 1086, i32 noundef %36) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %54

54:                                               ; preds = %52, %41, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %55 = getelementptr inbounds %struct.tegra_dc, ptr %7, i32 0, i32 8
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr i8, ptr %56, i32 4344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %36) #11, !srcloc !12
  %58 = load ptr, ptr %55, align 8
  %59 = getelementptr i8, ptr %58, i32 4104
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %61 = load ptr, ptr %37, align 4
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %54
  %65 = tail call ptr @llvm.thread.pointer() #11
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 8
  %68 = lshr i32 %67, 5
  %69 = getelementptr i32, ptr @__cpu_online_mask, i32 %68
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %67, 31
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %64
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %76 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %61, i32 noundef 1026, i32 noundef %60) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %77 = load ptr, ptr %37, align 4
  br label %78

78:                                               ; preds = %75, %64, %54
  %79 = phi ptr [ %61, %54 ], [ %61, %64 ], [ %77, %75 ]
  %80 = or i32 %60, 65536
  %81 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = tail call ptr @llvm.thread.pointer() #11
  %85 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = lshr i32 %86, 5
  %88 = getelementptr i32, ptr @__cpu_online_mask, i32 %87
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %86, 31
  %91 = shl nuw i32 1, %90
  %92 = and i32 %91, %89
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %83
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %95 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %79, i32 noundef 1026, i32 noundef %80) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %96

96:                                               ; preds = %94, %83, %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %97 = load ptr, ptr %55, align 8
  %98 = getelementptr i8, ptr %97, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %80) #11, !srcloc !12
  %99 = load ptr, ptr %55, align 8
  %100 = getelementptr i8, ptr %99, i32 5060
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %102 = load ptr, ptr %37, align 4
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %96
  %106 = tail call ptr @llvm.thread.pointer() #11
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %108, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %105
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %117 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %102, i32 noundef 1265, i32 noundef %101) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %118 = load ptr, ptr %37, align 4
  br label %119

119:                                              ; preds = %116, %105, %96
  %120 = phi ptr [ %102, %96 ], [ %102, %105 ], [ %118, %116 ]
  %121 = load ptr, ptr %16, align 8
  %122 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %121, i32 0, i32 9
  %123 = load i8, ptr %122, align 2, !range !13
  %124 = icmp eq i8 %123, 0
  %125 = and i32 %101, -33752064
  %126 = and i32 %101, -16974848
  %127 = or i32 %126, 16777216
  %128 = select i1 %124, i32 %127, i32 %125
  %129 = or i32 %128, 131583
  %130 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %119
  %133 = tail call ptr @llvm.thread.pointer() #11
  %134 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %135 = load i32, ptr %134, align 8
  %136 = lshr i32 %135, 5
  %137 = getelementptr i32, ptr @__cpu_online_mask, i32 %136
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %135, 31
  %140 = shl nuw i32 1, %139
  %141 = and i32 %140, %138
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %132
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %144 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %120, i32 noundef 1265, i32 noundef %129) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %145

145:                                              ; preds = %143, %132, %119
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %146 = load ptr, ptr %55, align 8
  %147 = getelementptr i8, ptr %146, i32 5060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %129) #11, !srcloc !12
  %148 = load ptr, ptr %16, align 8
  %149 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %148, i32 0, i32 9
  %150 = load i8, ptr %149, align 2, !range !13
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %221, label %152

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 21
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 21, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20
  %158 = load i32, ptr %157, align 4
  %159 = ashr i32 %158, 16
  %160 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 1
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 2
  %163 = load i32, ptr %162, align 4
  %164 = sub i32 %163, %158
  %165 = ashr i32 %164, 16
  %166 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 20, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = sub i32 %167, %161
  %169 = getelementptr inbounds %struct.tegra_drm, ptr %10, i32 0, i32 10
  %170 = load i32, ptr %169, align 8
  %171 = shl i32 %170, 16
  %172 = and i32 %171, %161
  %173 = getelementptr inbounds %struct.tegra_drm, ptr %10, i32 0, i32 9
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, %159
  %176 = or i32 %172, %175
  %177 = load ptr, ptr %37, align 4
  %178 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %152
  %181 = tail call ptr @llvm.thread.pointer() #11
  %182 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 2
  %183 = load i32, ptr %182, align 8
  %184 = lshr i32 %183, 5
  %185 = getelementptr i32, ptr @__cpu_online_mask, i32 %184
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %183, 31
  %188 = shl nuw i32 1, %187
  %189 = and i32 %188, %186
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %180
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %192 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %177, i32 noundef 1090, i32 noundef %176) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %193

193:                                              ; preds = %191, %180, %152
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %194 = load ptr, ptr %55, align 8
  %195 = getelementptr i8, ptr %194, i32 4360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %176) #11, !srcloc !12
  %196 = load i32, ptr %169, align 8
  %197 = shl i32 %196, 16
  %198 = and i32 %197, %168
  %199 = load i32, ptr %173, align 4
  %200 = and i32 %199, %165
  %201 = or i32 %198, %200
  %202 = load ptr, ptr %37, align 4
  %203 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %193
  %206 = tail call ptr @llvm.thread.pointer() #11
  %207 = getelementptr inbounds %struct.thread_info, ptr %206, i32 0, i32 2
  %208 = load i32, ptr %207, align 8
  %209 = lshr i32 %208, 5
  %210 = getelementptr i32, ptr @__cpu_online_mask, i32 %209
  %211 = load volatile i32, ptr %210, align 4
  %212 = and i32 %208, 31
  %213 = shl nuw i32 1, %212
  %214 = and i32 %213, %211
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %205
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %217 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %202, i32 noundef 1094, i32 noundef %201) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %218

218:                                              ; preds = %216, %205, %193
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %219 = load ptr, ptr %55, align 8
  %220 = getelementptr i8, ptr %219, i32 4376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %201) #11, !srcloc !12
  br label %226

221:                                              ; preds = %145
  %222 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 4
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 5
  %225 = load i32, ptr %224, align 4
  br label %226

226:                                              ; preds = %221, %218
  %227 = phi i32 [ %154, %218 ], [ %223, %221 ]
  %228 = phi i32 [ %156, %218 ], [ %225, %221 ]
  %229 = getelementptr inbounds %struct.tegra_drm, ptr %10, i32 0, i32 10
  %230 = load i32, ptr %229, align 8
  %231 = and i32 %230, %228
  %232 = shl i32 %231, 16
  %233 = getelementptr inbounds %struct.tegra_drm, ptr %10, i32 0, i32 9
  %234 = load i32, ptr %233, align 4
  %235 = and i32 %234, %227
  %236 = or i32 %232, %235
  %237 = load ptr, ptr %37, align 4
  %238 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %253

240:                                              ; preds = %226
  %241 = tail call ptr @llvm.thread.pointer() #11
  %242 = getelementptr inbounds %struct.thread_info, ptr %241, i32 0, i32 2
  %243 = load i32, ptr %242, align 8
  %244 = lshr i32 %243, 5
  %245 = getelementptr i32, ptr @__cpu_online_mask, i32 %244
  %246 = load volatile i32, ptr %245, align 4
  %247 = and i32 %243, 31
  %248 = shl nuw i32 1, %247
  %249 = and i32 %248, %246
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %240
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %252 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %237, i32 noundef 1088, i32 noundef %236) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %253

253:                                              ; preds = %251, %240, %226
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %254 = load ptr, ptr %55, align 8
  %255 = getelementptr i8, ptr %254, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %255, i32 %236) #11, !srcloc !12
  br label %256

256:                                              ; preds = %253, %22, %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_crtc_reset(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 300) #13
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %5) #11
  tail call void @kfree(ptr noundef nonnull %5) #11
  br label %8

8:                                                ; preds = %7, %1
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %0, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_dc_destroy(ptr noundef %0) #0 {
  tail call void @drm_crtc_cleanup(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_crtc_atomic_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 300) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %0, ptr noundef nonnull %5) #11
  %8 = getelementptr inbounds %struct.tegra_dc_state, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_dc_state, ptr %5, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tegra_dc_state, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_dc_state, ptr %5, i32 0, i32 2
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.tegra_dc_state, ptr %3, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.tegra_dc_state, ptr %5, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tegra_dc_state, ptr %3, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tegra_dc_state, ptr %5, i32 0, i32 4
  store i32 %18, ptr %19, align 8
  br label %20

20:                                               ; preds = %7, %1
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_crtc_atomic_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_late_register(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %0, null
  %6 = getelementptr i8, ptr %0, i32 -104
  %7 = select i1 %5, ptr null, ptr %6
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @kmemdup(ptr noundef nonnull @debugfs_files, i32 noundef 48, i32 noundef 3264) #11
  %11 = getelementptr inbounds %struct.tegra_dc, ptr %7, i32 0, i32 13
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = getelementptr %struct.drm_info_list, ptr %10, i32 0, i32 3
  store ptr %7, ptr %14, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr %struct.drm_info_list, ptr %15, i32 1, i32 3
  store ptr %7, ptr %16, align 4
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr %struct.drm_info_list, ptr %17, i32 2, i32 3
  store ptr %7, ptr %18, align 4
  %19 = load ptr, ptr %11, align 4
  tail call void @drm_debugfs_create_files(ptr noundef %19, i32 noundef 3, ptr noundef %9, ptr noundef %4) #11
  br label %20

20:                                               ; preds = %13, %1
  %21 = phi i32 [ 0, %13 ], [ -12, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_dc_early_unregister(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %0, null
  %6 = getelementptr i8, ptr %0, i32 -104
  %7 = select i1 %5, ptr null, ptr %6
  %8 = getelementptr inbounds %struct.tegra_dc, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @drm_debugfs_remove_files(ptr noundef %9, i32 noundef 3, ptr noundef %4) #11
  %11 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %11) #11
  store ptr null, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_get_vblank_counter(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr i8, ptr %0, i32 -104
  %4 = select i1 %2, ptr null, ptr %3
  %5 = getelementptr inbounds %struct.tegra_dc, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tegra_dc, ptr %4, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %10, i32 0, i32 9
  %12 = load i8, ptr %11, align 2, !range !13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = tail call i32 @host1x_syncpt_read(ptr noundef nonnull %6) #11
  br label %20

16:                                               ; preds = %8, %1
  %17 = getelementptr inbounds %struct.tegra_dc, ptr %4, i32 0, i32 3
  %18 = tail call i64 @drm_crtc_vblank_count(ptr noundef %17) #11
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi i32 [ %19, %16 ], [ %15, %14 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_enable_vblank(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr i8, ptr %0, i32 -104
  %4 = select i1 %2, ptr null, ptr %3
  %5 = getelementptr inbounds %struct.tegra_dc, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 224
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %9 = getelementptr inbounds %struct.tegra_dc, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = tail call ptr @llvm.thread.pointer() #11
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %25 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %10, i32 noundef 56, i32 noundef %8) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %26 = load ptr, ptr %9, align 4
  br label %27

27:                                               ; preds = %24, %13, %1
  %28 = phi ptr [ %10, %1 ], [ %10, %13 ], [ %26, %24 ]
  %29 = or i32 %8, 4
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = tail call ptr @llvm.thread.pointer() #11
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %44 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %28, i32 noundef 56, i32 noundef %29) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %45

45:                                               ; preds = %43, %32, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr i8, ptr %46, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %29) #11, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_dc_disable_vblank(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr i8, ptr %0, i32 -104
  %4 = select i1 %2, ptr null, ptr %3
  %5 = getelementptr inbounds %struct.tegra_dc, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 224
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %9 = getelementptr inbounds %struct.tegra_dc, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = tail call ptr @llvm.thread.pointer() #11
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %25 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %10, i32 noundef 56, i32 noundef %8) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %26 = load ptr, ptr %9, align 4
  br label %27

27:                                               ; preds = %24, %13, %1
  %28 = phi ptr [ %10, %1 ], [ %10, %13 ], [ %26, %24 ]
  %29 = and i32 %8, -5
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = tail call ptr @llvm.thread.pointer() #11
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %44 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %28, i32 noundef 56, i32 noundef %29) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %45

45:                                               ; preds = %43, %32, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr i8, ptr %46, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %29) #11, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_show_regs(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 3, i32 4
  %10 = tail call i32 @drm_modeset_lock(ptr noundef %9, ptr noundef null) #11
  %11 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 3, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 1, !range !13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %18 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  br label %19

19:                                               ; preds = %45, %16
  %20 = phi i32 [ 0, %16 ], [ %46, %45 ]
  %21 = getelementptr [212 x %struct.debugfs_reg32], ptr @tegra_dc_regs, i32 0, i32 %20
  %22 = getelementptr [212 x %struct.debugfs_reg32], ptr @tegra_dc_regs, i32 0, i32 %20, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = load ptr, ptr %17, align 8
  %26 = shl i32 %23, 2
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %29 = load ptr, ptr %18, align 4
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %19
  %33 = tail call ptr @llvm.thread.pointer() #11
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %44 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %29, i32 noundef %23, i32 noundef %28) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %45

45:                                               ; preds = %43, %32, %19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef %24, i32 noundef %23, i32 noundef %28) #11
  %46 = add nuw nsw i32 %20, 1
  %47 = icmp eq i32 %46, 212
  br i1 %47, label %48, label %19

48:                                               ; preds = %45, %2
  %49 = phi i32 [ -16, %2 ], [ 0, %45 ]
  tail call void @drm_modeset_unlock(ptr noundef %9) #11
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_show_crc(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 3, i32 4
  %10 = tail call i32 @drm_modeset_lock(ptr noundef %9, ptr noundef null) #11
  %11 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 3, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 1, !range !13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %78, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 3
  %18 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = tail call ptr @llvm.thread.pointer() #11
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %34 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %19, i32 noundef 768, i32 noundef 5) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %35

35:                                               ; preds = %33, %22, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %36 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr i8, ptr %37, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 5) #11, !srcloc !12
  tail call void @tegra_dc_commit(ptr noundef %8)
  tail call void @drm_crtc_wait_one_vblank(ptr noundef %17) #11
  tail call void @drm_crtc_wait_one_vblank(ptr noundef %17) #11
  %39 = load ptr, ptr %36, align 8
  %40 = getelementptr i8, ptr %39, i32 3076
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %42 = load ptr, ptr %18, align 4
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %35
  %46 = tail call ptr @llvm.thread.pointer() #11
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %57 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %42, i32 noundef 769, i32 noundef %41) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %58

58:                                               ; preds = %56, %45, %35
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.239, i32 noundef %41) #11
  %59 = load ptr, ptr %18, align 4
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = tail call ptr @llvm.thread.pointer() #11
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 5
  %67 = getelementptr i32, ptr @__cpu_online_mask, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %65, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %74 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %59, i32 noundef 768, i32 noundef 0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %75

75:                                               ; preds = %73, %62, %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %76 = load ptr, ptr %36, align 8
  %77 = getelementptr i8, ptr %76, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 0) #11, !srcloc !12
  br label %78

78:                                               ; preds = %75, %2
  %79 = phi i32 [ 0, %75 ], [ -16, %2 ]
  tail call void @drm_modeset_unlock(ptr noundef %9) #11
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_dc_show_stats(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.240, i32 noundef %10) #11
  %11 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 11, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.241, i32 noundef %12) #11
  %13 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 11, i32 2
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.242, i32 noundef %14) #11
  %15 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 11, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.243, i32 noundef %16) #11
  %17 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 11, i32 4
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.244, i32 noundef %18) #11
  %19 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 11, i32 5
  %20 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.245, i32 noundef %20) #11
  %21 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 11, i32 6
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.246, i32 noundef %22) #11
  %23 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 11, i32 7
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.247, i32 noundef %24) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_wait_one_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_debugfs_remove_files(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_crtc_vblank_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_crtc_atomic_check(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.drm_rect, align 4
  %4 = alloca [7 x i32], align 4
  %5 = alloca [7 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #11
  %6 = icmp eq ptr %0, null
  %7 = getelementptr i8, ptr %0, i32 -104
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %10, i32 0, i32 9
  %12 = load i8, ptr %11, align 2, !range !13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %297

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr %struct.__drm_crtcs_state, ptr %16, i32 %18, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_crtc_state, ptr %20, i32 0, i32 20
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_atomic_state, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 30, i32 18
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %32, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.drm_crtc_state, ptr %20, i32 0, i32 4
  br label %41

30:                                               ; preds = %222
  %31 = load ptr, ptr %225, align 4
  br label %32

32:                                               ; preds = %30, %14
  %33 = phi ptr [ %24, %14 ], [ %227, %30 ]
  %34 = phi ptr [ %22, %14 ], [ %223, %30 ]
  %35 = phi ptr [ %25, %14 ], [ %31, %30 ]
  %36 = phi i1 [ true, %14 ], [ %224, %30 ]
  %37 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30, i32 18
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %297, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.drm_crtc_state, ptr %20, i32 0, i32 4
  br label %230

41:                                               ; preds = %222, %28
  %42 = phi ptr [ %22, %28 ], [ %223, %222 ]
  %43 = phi ptr [ %26, %28 ], [ %225, %222 ]
  %44 = phi i1 [ true, %28 ], [ %224, %222 ]
  %45 = load i32, ptr %29, align 4
  %46 = getelementptr i8, ptr %43, i32 408
  %47 = load i32, ptr %46, align 4
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %45
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %222, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.drm_atomic_state, ptr %42, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr %struct.__drm_planes_state, ptr %53, i32 %47, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  %57 = getelementptr i8, ptr %43, i32 416
  %58 = select i1 %56, ptr %57, ptr %54
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %222, label %61

61:                                               ; preds = %51
  %62 = getelementptr i8, ptr %43, i32 460
  %63 = load i32, ptr %62, align 8
  %64 = icmp ugt i32 %63, 6
  %65 = load i1, ptr @tegra_crtc_calculate_memory_bandwidth.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !26

68:                                               ; preds = %61
  store i1 true, ptr @tegra_crtc_calculate_memory_bandwidth.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 2393, i32 noundef 9, ptr noundef null) #11
  br label %69

69:                                               ; preds = %68, %61
  br i1 %64, label %297, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.tegra_plane_state, ptr %59, i32 0, i32 11
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %62, align 8
  %74 = getelementptr [7 x i32], ptr %5, i32 0, i32 %73
  store i32 %72, ptr %74, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #11, !annotation !8
  %75 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 22
  %76 = load i8, ptr %75, align 4, !range !13
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %214, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %214, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.drm_framebuffer, ptr %80, i32 0, i32 4
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 20
  %86 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 20, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %85, align 4
  %89 = sub i32 %87, %88
  %90 = ashr i32 %89, 16
  %91 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 21
  %92 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 21, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = load i32, ptr %91, align 4
  %95 = sub i32 %93, %94
  %96 = load ptr, ptr %59, align 4
  %97 = getelementptr inbounds %struct.drm_plane, ptr %96, i32 0, i32 16
  %98 = load i32, ptr %97, align 8
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %123

100:                                              ; preds = %82
  %101 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  %104 = getelementptr i8, ptr %102, i32 -104
  %105 = select i1 %103, ptr null, ptr %104
  %106 = getelementptr inbounds %struct.tegra_dc, ptr %105, i32 0, i32 14
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %107, i32 0, i32 2
  %109 = load i8, ptr %108, align 2, !range !13
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %214

111:                                              ; preds = %100
  %112 = icmp eq i32 %90, %95
  br i1 %112, label %113, label %123

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.drm_format_info, ptr %84, i32 0, i32 2
  %115 = load i8, ptr %114, align 1
  %116 = icmp eq i8 %115, 1
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.drm_format_info, ptr %84, i32 0, i32 3
  %119 = load i8, ptr %118, align 2
  %120 = zext i8 %119 to i32
  %121 = mul nsw i32 %90, %120
  %122 = icmp ult i32 %121, 257
  br i1 %122, label %214, label %123

123:                                              ; preds = %117, %113, %111, %82
  %124 = load ptr, ptr %21, align 4
  %125 = getelementptr inbounds %struct.drm_atomic_state, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.drm_device, ptr %126, i32 0, i32 30, i32 18
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, %127
  br i1 %129, label %214, label %130

130:                                              ; preds = %206, %123
  %131 = phi ptr [ %209, %206 ], [ %124, %123 ]
  %132 = phi ptr [ %208, %206 ], [ %128, %123 ]
  %133 = phi i32 [ %207, %206 ], [ 0, %123 ]
  %134 = load i32, ptr %29, align 4
  %135 = getelementptr i8, ptr %132, i32 408
  %136 = load i32, ptr %135, align 4
  %137 = shl nuw i32 1, %136
  %138 = and i32 %137, %134
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %206, label %140

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.drm_atomic_state, ptr %131, i32 0, i32 3
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr %struct.__drm_planes_state, ptr %142, i32 %136, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  %146 = getelementptr i8, ptr %132, i32 416
  %147 = select i1 %145, ptr %146, ptr %143
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %206, label %150

150:                                              ; preds = %140
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef align 4 dereferenceable(16) %91, i32 16, i1 false) #11
  %151 = load ptr, ptr %148, align 4
  %152 = getelementptr inbounds %struct.drm_plane_state, ptr %148, i32 0, i32 22
  %153 = load i8, ptr %152, align 4, !range !13
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %206, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.drm_plane_state, ptr %148, i32 0, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %206, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.drm_framebuffer, ptr %157, i32 0, i32 4
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds %struct.drm_plane_state, ptr %148, i32 0, i32 20
  %163 = getelementptr inbounds %struct.drm_plane_state, ptr %148, i32 0, i32 20, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = load i32, ptr %162, align 4
  %166 = sub i32 %164, %165
  %167 = ashr i32 %166, 16
  %168 = getelementptr inbounds %struct.drm_plane_state, ptr %148, i32 0, i32 21
  %169 = getelementptr inbounds %struct.drm_plane_state, ptr %148, i32 0, i32 21, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = load i32, ptr %168, align 4
  %172 = sub i32 %170, %171
  %173 = getelementptr inbounds %struct.drm_plane, ptr %151, i32 0, i32 16
  %174 = load i32, ptr %173, align 8
  %175 = icmp eq i32 %174, 2
  br i1 %175, label %176, label %199

176:                                              ; preds = %159
  %177 = getelementptr inbounds %struct.drm_plane_state, ptr %148, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  %180 = getelementptr i8, ptr %178, i32 -104
  %181 = select i1 %179, ptr null, ptr %180
  %182 = getelementptr inbounds %struct.tegra_dc, ptr %181, i32 0, i32 14
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %183, i32 0, i32 2
  %185 = load i8, ptr %184, align 2, !range !13
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %206

187:                                              ; preds = %176
  %188 = icmp eq i32 %167, %172
  br i1 %188, label %189, label %199

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.drm_format_info, ptr %161, i32 0, i32 2
  %191 = load i8, ptr %190, align 1
  %192 = icmp eq i8 %191, 1
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.drm_format_info, ptr %161, i32 0, i32 3
  %195 = load i8, ptr %194, align 2
  %196 = zext i8 %195 to i32
  %197 = mul nsw i32 %167, %196
  %198 = icmp ult i32 %197, 257
  br i1 %198, label %206, label %199

199:                                              ; preds = %193, %189, %187, %159
  %200 = call zeroext i1 @drm_rect_intersect(ptr noundef nonnull %3, ptr noundef %168) #11
  br i1 %200, label %201, label %206

201:                                              ; preds = %199
  %202 = getelementptr inbounds %struct.tegra_plane, ptr %151, i32 0, i32 3
  %203 = load i32, ptr %202, align 8
  %204 = shl nuw i32 1, %203
  %205 = or i32 %204, %133
  br label %206

206:                                              ; preds = %201, %199, %193, %176, %155, %150, %140, %130
  %207 = phi i32 [ %133, %193 ], [ %205, %201 ], [ %133, %199 ], [ %133, %155 ], [ %133, %150 ], [ %133, %140 ], [ %133, %130 ], [ %133, %176 ]
  %208 = load ptr, ptr %132, align 4
  %209 = load ptr, ptr %21, align 4
  %210 = getelementptr inbounds %struct.drm_atomic_state, ptr %209, i32 0, i32 1
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.drm_device, ptr %211, i32 0, i32 30, i32 18
  %213 = icmp eq ptr %208, %212
  br i1 %213, label %214, label %130

214:                                              ; preds = %206, %123, %117, %100, %78, %70
  %215 = phi i32 [ 0, %78 ], [ 0, %70 ], [ 0, %117 ], [ 0, %100 ], [ 0, %123 ], [ %207, %206 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %216 = load i32, ptr %62, align 8
  %217 = getelementptr [7 x i32], ptr %4, i32 0, i32 %216
  store i32 %215, ptr %217, align 4
  %218 = call i32 @__sw_hweight32(i32 noundef %215) #11
  %219 = icmp eq i32 %218, 3
  %220 = select i1 %219, i1 %44, i1 false
  %221 = load ptr, ptr %21, align 4
  br label %222

222:                                              ; preds = %214, %51, %41
  %223 = phi ptr [ %42, %51 ], [ %42, %41 ], [ %221, %214 ]
  %224 = phi i1 [ %44, %51 ], [ %44, %41 ], [ %220, %214 ]
  %225 = load ptr, ptr %43, align 4
  %226 = getelementptr inbounds %struct.drm_atomic_state, ptr %223, i32 0, i32 1
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.drm_device, ptr %227, i32 0, i32 30, i32 18
  %229 = icmp eq ptr %225, %228
  br i1 %229, label %30, label %41

230:                                              ; preds = %290, %39
  %231 = phi ptr [ %34, %39 ], [ %292, %290 ]
  %232 = phi ptr [ %35, %39 ], [ %291, %290 ]
  %233 = getelementptr i8, ptr %232, i32 -4
  %234 = load i32, ptr %40, align 4
  %235 = getelementptr i8, ptr %232, i32 408
  %236 = load i32, ptr %235, align 4
  %237 = shl nuw i32 1, %236
  %238 = and i32 %237, %234
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %290, label %240

240:                                              ; preds = %230
  %241 = getelementptr inbounds %struct.drm_atomic_state, ptr %231, i32 0, i32 3
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr %struct.__drm_planes_state, ptr %242, i32 %236, i32 1
  %244 = load ptr, ptr %243, align 4
  %245 = icmp eq ptr %244, null
  %246 = getelementptr i8, ptr %232, i32 416
  %247 = select i1 %245, ptr %246, ptr %243
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %290, label %250

250:                                              ; preds = %240
  %251 = getelementptr i8, ptr %232, i32 460
  %252 = load i32, ptr %251, align 8
  %253 = getelementptr [7 x i32], ptr %4, i32 0, i32 %252
  %254 = call i32 @_find_next_bit_le(ptr noundef %253, i32 noundef 3, i32 noundef 0) #11
  %255 = icmp ult i32 %254, 3
  br i1 %255, label %256, label %274

256:                                              ; preds = %268, %250
  %257 = phi i32 [ %269, %268 ], [ 0, %250 ]
  %258 = phi i32 [ %272, %268 ], [ %254, %250 ]
  %259 = load i32, ptr %251, align 8
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %268, label %261

261:                                              ; preds = %256
  %262 = getelementptr [7 x i32], ptr %5, i32 0, i32 %258
  %263 = load i32, ptr %262, align 4
  br i1 %36, label %264, label %266

264:                                              ; preds = %261
  %265 = add i32 %263, %257
  br label %268

266:                                              ; preds = %261
  %267 = call i32 @llvm.umax.i32(i32 %257, i32 %263) #11
  br label %268

268:                                              ; preds = %266, %264, %256
  %269 = phi i32 [ %257, %256 ], [ %265, %264 ], [ %267, %266 ]
  %270 = getelementptr [7 x i32], ptr %4, i32 0, i32 %259
  %271 = add nuw nsw i32 %258, 1
  %272 = call i32 @_find_next_bit_le(ptr noundef %270, i32 noundef 3, i32 noundef %271) #11
  %273 = icmp ult i32 %272, 3
  br i1 %273, label %256, label %274

274:                                              ; preds = %268, %250
  %275 = phi i32 [ 0, %250 ], [ %269, %268 ]
  %276 = load i32, ptr %251, align 8
  %277 = getelementptr [7 x i32], ptr %5, i32 0, i32 %276
  %278 = load i32, ptr %277, align 4
  %279 = add i32 %278, %275
  %280 = getelementptr inbounds %struct.tegra_plane_state, ptr %248, i32 0, i32 10
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %281, %279
  br i1 %282, label %290, label %283

283:                                              ; preds = %274
  %284 = call ptr @drm_atomic_get_plane_state(ptr noundef %1, ptr noundef %233) #11
  %285 = icmp ugt ptr %284, inttoptr (i32 -4096 to ptr)
  br i1 %285, label %288, label %286

286:                                              ; preds = %283
  %287 = getelementptr inbounds %struct.tegra_plane_state, ptr %284, i32 0, i32 10
  store i32 %279, ptr %287, align 4
  br label %290

288:                                              ; preds = %283
  %289 = ptrtoint ptr %284 to i32
  br label %297

290:                                              ; preds = %286, %274, %240, %230
  %291 = load ptr, ptr %232, align 4
  %292 = load ptr, ptr %21, align 4
  %293 = getelementptr inbounds %struct.drm_atomic_state, ptr %292, i32 0, i32 1
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr inbounds %struct.drm_device, ptr %294, i32 0, i32 30, i32 18
  %296 = icmp eq ptr %291, %295
  br i1 %296, label %297, label %230

297:                                              ; preds = %290, %288, %69, %32, %2
  %298 = phi i32 [ %289, %288 ], [ 0, %2 ], [ 0, %32 ], [ 0, %290 ], [ -22, %69 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  ret i32 %298
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_crtc_atomic_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @tegra_crtc_update_memory_bandwidth(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 28
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #11
  %12 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #11
  %13 = icmp eq i32 %12, 0
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  br i1 %13, label %18, label %17

17:                                               ; preds = %8
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef %16) #11
  br label %19

18:                                               ; preds = %8
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %0, ptr noundef %16) #11
  br label %19

19:                                               ; preds = %18, %17
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %11) #11
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.drm_crtc_state, ptr %22, i32 0, i32 18
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_crtc_atomic_flush(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %0, null
  %10 = getelementptr i8, ptr %0, i32 -104
  %11 = select i1 %9, ptr null, ptr %10
  %12 = getelementptr inbounds %struct.tegra_dc_state, ptr %8, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 8
  %15 = or i32 %14, 256
  %16 = getelementptr inbounds %struct.tegra_dc, ptr %11, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = tail call ptr @llvm.thread.pointer() #11
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %32 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %17, i32 noundef 65, i32 noundef %15) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %33

33:                                               ; preds = %31, %20, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %34 = getelementptr inbounds %struct.tegra_dc, ptr %11, i32 0, i32 8
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %15) #11, !srcloc !12
  %37 = load ptr, ptr %34, align 8
  %38 = getelementptr i8, ptr %37, i32 260
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %40 = load ptr, ptr %16, align 4
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %33
  %44 = tail call ptr @llvm.thread.pointer() #11
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = lshr i32 %46, 5
  %48 = getelementptr i32, ptr @__cpu_online_mask, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %46, 31
  %51 = shl nuw i32 1, %50
  %52 = and i32 %51, %49
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %55 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %40, i32 noundef 65, i32 noundef %39) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %56 = load ptr, ptr %16, align 4
  br label %57

57:                                               ; preds = %54, %43, %33
  %58 = phi ptr [ %40, %33 ], [ %40, %43 ], [ %56, %54 ]
  %59 = load i32, ptr %12, align 4
  %60 = or i32 %59, 1
  %61 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = tail call ptr @llvm.thread.pointer() #11
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = lshr i32 %66, 5
  %68 = getelementptr i32, ptr @__cpu_online_mask, i32 %67
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %66, 31
  %71 = shl nuw i32 1, %70
  %72 = and i32 %71, %69
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %75 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %58, i32 noundef 65, i32 noundef %60) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %76

76:                                               ; preds = %74, %63, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %77 = load ptr, ptr %34, align 8
  %78 = getelementptr i8, ptr %77, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %60) #11, !srcloc !12
  %79 = load ptr, ptr %34, align 8
  %80 = getelementptr i8, ptr %79, i32 260
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %82 = load ptr, ptr %16, align 4
  %83 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %76
  %86 = tail call ptr @llvm.thread.pointer() #11
  %87 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 8
  %89 = lshr i32 %88, 5
  %90 = getelementptr i32, ptr @__cpu_online_mask, i32 %89
  %91 = load volatile i32, ptr %90, align 4
  %92 = and i32 %88, 31
  %93 = shl nuw i32 1, %92
  %94 = and i32 %93, %91
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %85
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %97 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %82, i32 noundef 65, i32 noundef %81) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  br label %98

98:                                               ; preds = %96, %85, %76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_crtc_atomic_enable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %0, null
  %7 = getelementptr i8, ptr %0, i32 -104
  %8 = select i1 %6, ptr null, ptr %7
  %9 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.tegra_dc_state, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_set_parent(ptr noundef %10, ptr noundef %12) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.249, i32 noundef %13) #12
  br label %18

18:                                               ; preds = %15, %2
  %19 = getelementptr inbounds %struct.tegra_dc_state, ptr %5, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %11, align 4
  %24 = tail call i32 @clk_set_rate(ptr noundef %23, i32 noundef %20) #11
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.250, i32 noundef %29) #12
  br label %30

30:                                               ; preds = %26, %22
  %31 = load ptr, ptr %9, align 8
  %32 = load i32, ptr %19, align 4
  %33 = tail call i32 @clk_set_rate(ptr noundef %31, i32 noundef %32) #11
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %9, align 8
  %39 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.251, ptr noundef %38, i32 noundef %39, i32 noundef %33) #12
  br label %40

40:                                               ; preds = %35, %30, %18
  %41 = load ptr, ptr %9, align 8
  %42 = tail call i32 @clk_get_rate(ptr noundef %41) #11
  %43 = getelementptr inbounds %struct.tegra_dc_state, ptr %5, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.252, i32 noundef %42, i32 noundef %44) #11
  %45 = load i32, ptr %19, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.253, i32 noundef %45) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %46 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 15
  %47 = load i8, ptr %46, align 4, !range !13
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %78, label %49

49:                                               ; preds = %40
  %50 = load ptr, ptr %9, align 8
  %51 = tail call i32 @clk_get_rate(ptr noundef %50) #11
  %52 = shl i32 %51, 1
  %53 = load i32, ptr %43, align 4
  %54 = add i32 %53, 2
  %55 = add i32 %52, -1
  %56 = add i32 %55, %54
  %57 = udiv i32 %56, %54
  store i32 %57, ptr %3, align 4
  %58 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %59, ptr noundef nonnull %3) #11
  %61 = icmp eq ptr %60, inttoptr (i32 -34 to ptr)
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load ptr, ptr %58, align 4
  %64 = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %63, ptr noundef nonnull %3) #11
  br label %65

65:                                               ; preds = %62, %49
  %66 = phi ptr [ %64, %62 ], [ %60, %49 ]
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load ptr, ptr %58, align 4
  %70 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.254, i32 noundef %70, ptr noundef nonnull %66) #12
  br label %78

71:                                               ; preds = %65
  %72 = call i32 @dev_pm_opp_get_required_pstate(ptr noundef %66, i32 noundef 0) #11
  call void @dev_pm_opp_put(ptr noundef %66) #11
  %73 = load ptr, ptr %58, align 4
  %74 = call i32 @dev_pm_genpd_set_performance_state(ptr noundef %73, i32 noundef %72) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %58, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.255, i32 noundef %72, i32 noundef %74) #12
  br label %78

78:                                               ; preds = %76, %71, %68, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %79 = call i32 @host1x_client_resume(ptr noundef %8) #11
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.248, i32 noundef %79) #12
  br label %785

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %137, label %88

88:                                               ; preds = %84
  %89 = call i32 @host1x_syncpt_id(ptr noundef nonnull %86) #11
  %90 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 14
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %91, i32 0, i32 9
  %93 = load i8, ptr %92, align 2, !range !13
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i32 256, i32 -2147483648
  %96 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %88
  %101 = tail call ptr @llvm.thread.pointer() #11
  %102 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %103 = load i32, ptr %102, align 8
  %104 = lshr i32 %103, 5
  %105 = getelementptr i32, ptr @__cpu_online_mask, i32 %104
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %103, 31
  %108 = shl nuw i32 1, %107
  %109 = and i32 %108, %106
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %100
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %112 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %97, i32 noundef 1, i32 noundef 256) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %113

113:                                              ; preds = %111, %100, %88
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %114 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr i8, ptr %115, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 256) #11, !srcloc !12
  %117 = or i32 %95, %89
  %118 = load ptr, ptr %96, align 4
  %119 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %113
  %122 = tail call ptr @llvm.thread.pointer() #11
  %123 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 2
  %124 = load i32, ptr %123, align 8
  %125 = lshr i32 %124, 5
  %126 = getelementptr i32, ptr @__cpu_online_mask, i32 %125
  %127 = load volatile i32, ptr %126, align 4
  %128 = and i32 %124, 31
  %129 = shl nuw i32 1, %128
  %130 = and i32 %129, %127
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %121
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %133 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %118, i32 noundef 40, i32 noundef %117) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %134

134:                                              ; preds = %132, %121, %113
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %135 = load ptr, ptr %114, align 8
  %136 = getelementptr i8, ptr %135, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %117) #11, !srcloc !12
  br label %137

137:                                              ; preds = %134, %84
  %138 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 14
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %139, i32 0, i32 9
  %141 = load i8, ptr %140, align 2, !range !13
  %142 = icmp eq i8 %141, 0
  %143 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %142, label %241, label %147

147:                                              ; preds = %137
  br i1 %146, label %148, label %161

148:                                              ; preds = %147
  %149 = tail call ptr @llvm.thread.pointer() #11
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 5
  %153 = getelementptr i32, ptr @__cpu_online_mask, i32 %152
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %151, 31
  %156 = shl nuw i32 1, %155
  %157 = and i32 %156, %154
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %148
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %160 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %144, i32 noundef 58, i32 noundef 1006632960) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %161

161:                                              ; preds = %159, %148, %147
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %162 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr i8, ptr %163, i32 232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 1006632960) #11, !srcloc !12
  %165 = load ptr, ptr %143, align 4
  %166 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %161
  %169 = tail call ptr @llvm.thread.pointer() #11
  %170 = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 2
  %171 = load i32, ptr %170, align 8
  %172 = lshr i32 %171, 5
  %173 = getelementptr i32, ptr @__cpu_online_mask, i32 %172
  %174 = load volatile i32, ptr %173, align 4
  %175 = and i32 %171, 31
  %176 = shl nuw i32 1, %175
  %177 = and i32 %176, %174
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %168
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %180 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %165, i32 noundef 59, i32 noundef 1031803126) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %181

181:                                              ; preds = %179, %168, %161
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %182 = load ptr, ptr %162, align 8
  %183 = getelementptr i8, ptr %182, i32 236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 1031803126) #11, !srcloc !12
  %184 = load ptr, ptr %143, align 4
  %185 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %181
  %188 = tail call ptr @llvm.thread.pointer() #11
  %189 = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 2
  %190 = load i32, ptr %189, align 8
  %191 = lshr i32 %190, 5
  %192 = getelementptr i32, ptr @__cpu_online_mask, i32 %191
  %193 = load volatile i32, ptr %192, align 4
  %194 = and i32 %190, 31
  %195 = shl nuw i32 1, %194
  %196 = and i32 %195, %193
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %187
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %199 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %184, i32 noundef 57, i32 noundef 25165830) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %200

200:                                              ; preds = %198, %187, %181
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %201 = load ptr, ptr %162, align 8
  %202 = getelementptr i8, ptr %201, i32 228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 25165830) #11, !srcloc !12
  %203 = load ptr, ptr %143, align 4
  %204 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %200
  %207 = tail call ptr @llvm.thread.pointer() #11
  %208 = getelementptr inbounds %struct.thread_info, ptr %207, i32 0, i32 2
  %209 = load i32, ptr %208, align 8
  %210 = lshr i32 %209, 5
  %211 = getelementptr i32, ptr @__cpu_online_mask, i32 %210
  %212 = load volatile i32, ptr %211, align 4
  %213 = and i32 %209, 31
  %214 = shl nuw i32 1, %213
  %215 = and i32 %214, %212
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %206
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %218 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %203, i32 noundef 56, i32 noundef 8388738) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %219

219:                                              ; preds = %217, %206, %200
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %220 = load ptr, ptr %162, align 8
  %221 = getelementptr i8, ptr %220, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 8388738) #11, !srcloc !12
  %222 = load ptr, ptr %143, align 4
  %223 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %219
  %226 = tail call ptr @llvm.thread.pointer() #11
  %227 = getelementptr inbounds %struct.thread_info, ptr %226, i32 0, i32 2
  %228 = load i32, ptr %227, align 8
  %229 = lshr i32 %228, 5
  %230 = getelementptr i32, ptr @__cpu_online_mask, i32 %229
  %231 = load volatile i32, ptr %230, align 4
  %232 = and i32 %228, 31
  %233 = shl nuw i32 1, %232
  %234 = and i32 %233, %231
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %225
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %237 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %222, i32 noundef 64, i32 noundef 1) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %238

238:                                              ; preds = %236, %225, %219
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %239 = load ptr, ptr %162, align 8
  %240 = getelementptr i8, ptr %239, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 1) #11, !srcloc !12
  br label %354

241:                                              ; preds = %137
  br i1 %146, label %242, label %255

242:                                              ; preds = %241
  %243 = tail call ptr @llvm.thread.pointer() #11
  %244 = getelementptr inbounds %struct.thread_info, ptr %243, i32 0, i32 2
  %245 = load i32, ptr %244, align 8
  %246 = lshr i32 %245, 5
  %247 = getelementptr i32, ptr @__cpu_online_mask, i32 %246
  %248 = load volatile i32, ptr %247, align 4
  %249 = and i32 %245, 31
  %250 = shl nuw i32 1, %249
  %251 = and i32 %250, %248
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %255, label %253

253:                                              ; preds = %242
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %254 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %144, i32 noundef 58, i32 noundef 116480) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %255

255:                                              ; preds = %253, %242, %241
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %256 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %257 = load ptr, ptr %256, align 8
  %258 = getelementptr i8, ptr %257, i32 232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %258, i32 116480) #11, !srcloc !12
  %259 = load ptr, ptr %143, align 4
  %260 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %275

262:                                              ; preds = %255
  %263 = tail call ptr @llvm.thread.pointer() #11
  %264 = getelementptr inbounds %struct.thread_info, ptr %263, i32 0, i32 2
  %265 = load i32, ptr %264, align 8
  %266 = lshr i32 %265, 5
  %267 = getelementptr i32, ptr @__cpu_online_mask, i32 %266
  %268 = load volatile i32, ptr %267, align 4
  %269 = and i32 %265, 31
  %270 = shl nuw i32 1, %269
  %271 = and i32 %270, %268
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %262
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %274 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %259, i32 noundef 59, i32 noundef 116480) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %275

275:                                              ; preds = %273, %262, %255
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %276 = load ptr, ptr %256, align 8
  %277 = getelementptr i8, ptr %276, i32 236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 116480) #11, !srcloc !12
  %278 = load ptr, ptr %143, align 4
  %279 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %294

281:                                              ; preds = %275
  %282 = tail call ptr @llvm.thread.pointer() #11
  %283 = getelementptr inbounds %struct.thread_info, ptr %282, i32 0, i32 2
  %284 = load i32, ptr %283, align 8
  %285 = lshr i32 %284, 5
  %286 = getelementptr i32, ptr @__cpu_online_mask, i32 %285
  %287 = load volatile i32, ptr %286, align 4
  %288 = and i32 %284, 31
  %289 = shl nuw i32 1, %288
  %290 = and i32 %289, %287
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %281
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %293 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %278, i32 noundef 1027, i32 noundef 2105376) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %294

294:                                              ; preds = %292, %281, %275
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %295 = load ptr, ptr %256, align 8
  %296 = getelementptr i8, ptr %295, i32 4108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %296, i32 2105376) #11, !srcloc !12
  %297 = load ptr, ptr %143, align 4
  %298 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %294
  %301 = tail call ptr @llvm.thread.pointer() #11
  %302 = getelementptr inbounds %struct.thread_info, ptr %301, i32 0, i32 2
  %303 = load i32, ptr %302, align 8
  %304 = lshr i32 %303, 5
  %305 = getelementptr i32, ptr @__cpu_online_mask, i32 %304
  %306 = load volatile i32, ptr %305, align 4
  %307 = and i32 %303, 31
  %308 = shl nuw i32 1, %307
  %309 = and i32 %308, %306
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %300
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %312 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %297, i32 noundef 1028, i32 noundef 65793) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %313

313:                                              ; preds = %311, %300, %294
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %314 = load ptr, ptr %256, align 8
  %315 = getelementptr i8, ptr %314, i32 4112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %315, i32 65793) #11, !srcloc !12
  %316 = load ptr, ptr %143, align 4
  %317 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %332

319:                                              ; preds = %313
  %320 = tail call ptr @llvm.thread.pointer() #11
  %321 = getelementptr inbounds %struct.thread_info, ptr %320, i32 0, i32 2
  %322 = load i32, ptr %321, align 8
  %323 = lshr i32 %322, 5
  %324 = getelementptr i32, ptr @__cpu_online_mask, i32 %323
  %325 = load volatile i32, ptr %324, align 4
  %326 = and i32 %322, 31
  %327 = shl nuw i32 1, %326
  %328 = and i32 %327, %325
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %332, label %330

330:                                              ; preds = %319
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %331 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %316, i32 noundef 57, i32 noundef 116484) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %332

332:                                              ; preds = %330, %319, %313
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %333 = load ptr, ptr %256, align 8
  %334 = getelementptr i8, ptr %333, i32 228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %334, i32 116484) #11, !srcloc !12
  %335 = load ptr, ptr %143, align 4
  %336 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %351

338:                                              ; preds = %332
  %339 = tail call ptr @llvm.thread.pointer() #11
  %340 = getelementptr inbounds %struct.thread_info, ptr %339, i32 0, i32 2
  %341 = load i32, ptr %340, align 8
  %342 = lshr i32 %341, 5
  %343 = getelementptr i32, ptr @__cpu_online_mask, i32 %342
  %344 = load volatile i32, ptr %343, align 4
  %345 = and i32 %341, 31
  %346 = shl nuw i32 1, %345
  %347 = and i32 %346, %344
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %351, label %349

349:                                              ; preds = %338
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %350 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %335, i32 noundef 56, i32 noundef 116480) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %351

351:                                              ; preds = %349, %338, %332
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %352 = load ptr, ptr %256, align 8
  %353 = getelementptr i8, ptr %352, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %353, i32 116480) #11, !srcloc !12
  br label %354

354:                                              ; preds = %351, %238
  %355 = load ptr, ptr %138, align 8
  %356 = load i8, ptr %355, align 4, !range !13
  %357 = icmp eq i8 %356, 0
  %358 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %359 = load ptr, ptr %358, align 4
  %360 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %361 = icmp sgt i32 %360, 0
  br i1 %357, label %380, label %362

362:                                              ; preds = %354
  br i1 %361, label %363, label %376

363:                                              ; preds = %362
  %364 = tail call ptr @llvm.thread.pointer() #11
  %365 = getelementptr inbounds %struct.thread_info, ptr %364, i32 0, i32 2
  %366 = load i32, ptr %365, align 8
  %367 = lshr i32 %366, 5
  %368 = getelementptr i32, ptr @__cpu_online_mask, i32 %367
  %369 = load volatile i32, ptr %368, align 4
  %370 = and i32 %366, 31
  %371 = shl nuw i32 1, %370
  %372 = and i32 %371, %369
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %376, label %374

374:                                              ; preds = %363
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %375 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %359, i32 noundef 1252, i32 noundef 0) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %376

376:                                              ; preds = %374, %363, %362
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %377 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %378 = load ptr, ptr %377, align 8
  %379 = getelementptr i8, ptr %378, i32 5008
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %379, i32 0) #11, !srcloc !12
  br label %398

380:                                              ; preds = %354
  br i1 %361, label %381, label %394

381:                                              ; preds = %380
  %382 = tail call ptr @llvm.thread.pointer() #11
  %383 = getelementptr inbounds %struct.thread_info, ptr %382, i32 0, i32 2
  %384 = load i32, ptr %383, align 8
  %385 = lshr i32 %384, 5
  %386 = getelementptr i32, ptr @__cpu_online_mask, i32 %385
  %387 = load volatile i32, ptr %386, align 4
  %388 = and i32 %384, 31
  %389 = shl nuw i32 1, %388
  %390 = and i32 %389, %387
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %394, label %392

392:                                              ; preds = %381
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %393 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %359, i32 noundef 1077, i32 noundef 0) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %394

394:                                              ; preds = %392, %381, %380
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %395 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %396 = load ptr, ptr %395, align 8
  %397 = getelementptr i8, ptr %396, i32 4308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %397, i32 0) #11, !srcloc !12
  br label %398

398:                                              ; preds = %394, %376
  %399 = load ptr, ptr %138, align 8
  %400 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %399, i32 0, i32 9
  %401 = load i8, ptr %400, align 2, !range !13
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %403, label %472

403:                                              ; preds = %398
  %404 = load i32, ptr %43, align 4
  %405 = and i32 %404, 255
  %406 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %407 = load ptr, ptr %406, align 4
  %408 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %423

410:                                              ; preds = %403
  %411 = tail call ptr @llvm.thread.pointer() #11
  %412 = getelementptr inbounds %struct.thread_info, ptr %411, i32 0, i32 2
  %413 = load i32, ptr %412, align 8
  %414 = lshr i32 %413, 5
  %415 = getelementptr i32, ptr @__cpu_online_mask, i32 %414
  %416 = load volatile i32, ptr %415, align 4
  %417 = and i32 %413, 31
  %418 = shl nuw i32 1, %417
  %419 = and i32 %418, %416
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %410
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %422 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %407, i32 noundef 1070, i32 noundef %405) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %423

423:                                              ; preds = %421, %410, %403
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %424 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %425 = load ptr, ptr %424, align 8
  %426 = getelementptr i8, ptr %425, i32 4280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %426, i32 %405) #11, !srcloc !12
  %427 = load ptr, ptr %138, align 8
  %428 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %427, i32 0, i32 9
  %429 = load i8, ptr %428, align 2, !range !13
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %431, label %472

431:                                              ; preds = %423
  %432 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %433 = load ptr, ptr %432, align 4
  %434 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %435 = icmp sgt i32 %434, 0
  br i1 %435, label %436, label %449

436:                                              ; preds = %431
  %437 = tail call ptr @llvm.thread.pointer() #11
  %438 = getelementptr inbounds %struct.thread_info, ptr %437, i32 0, i32 2
  %439 = load i32, ptr %438, align 8
  %440 = lshr i32 %439, 5
  %441 = getelementptr i32, ptr @__cpu_online_mask, i32 %440
  %442 = load volatile i32, ptr %441, align 4
  %443 = and i32 %439, 31
  %444 = shl nuw i32 1, %443
  %445 = and i32 %444, %442
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %449, label %447

447:                                              ; preds = %436
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %448 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %433, i32 noundef 1029, i32 noundef 0) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %449

449:                                              ; preds = %447, %436, %431
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %450 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %451 = load ptr, ptr %450, align 8
  %452 = getelementptr i8, ptr %451, i32 4116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %452, i32 0) #11, !srcloc !12
  %453 = load ptr, ptr %432, align 4
  %454 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %455 = icmp sgt i32 %454, 0
  br i1 %455, label %456, label %469

456:                                              ; preds = %449
  %457 = tail call ptr @llvm.thread.pointer() #11
  %458 = getelementptr inbounds %struct.thread_info, ptr %457, i32 0, i32 2
  %459 = load i32, ptr %458, align 8
  %460 = lshr i32 %459, 5
  %461 = getelementptr i32, ptr @__cpu_online_mask, i32 %460
  %462 = load volatile i32, ptr %461, align 4
  %463 = and i32 %459, 31
  %464 = shl nuw i32 1, %463
  %465 = and i32 %464, %462
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %469, label %467

467:                                              ; preds = %456
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %468 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %453, i32 noundef 1030, i32 noundef 65537) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %469

469:                                              ; preds = %467, %456, %449
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %470 = load ptr, ptr %450, align 8
  %471 = getelementptr i8, ptr %470, i32 4120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %471, i32 65537) #11, !srcloc !12
  br label %472

472:                                              ; preds = %469, %423, %398
  %473 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 8
  %474 = load i16, ptr %473, align 2
  %475 = zext i16 %474 to i32
  %476 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 7
  %477 = load i16, ptr %476, align 4
  %478 = zext i16 %477 to i32
  %479 = sub nsw i32 %475, %478
  %480 = shl i32 %479, 16
  %481 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 3
  %482 = load i16, ptr %481, align 4
  %483 = zext i16 %482 to i32
  %484 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 2
  %485 = load i16, ptr %484, align 2
  %486 = zext i16 %485 to i32
  %487 = sub nsw i32 %483, %486
  %488 = or i32 %487, %480
  %489 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 2
  %490 = load ptr, ptr %489, align 4
  %491 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %492 = icmp sgt i32 %491, 0
  br i1 %492, label %493, label %506

493:                                              ; preds = %472
  %494 = tail call ptr @llvm.thread.pointer() #11
  %495 = getelementptr inbounds %struct.thread_info, ptr %494, i32 0, i32 2
  %496 = load i32, ptr %495, align 8
  %497 = lshr i32 %496, 5
  %498 = getelementptr i32, ptr @__cpu_online_mask, i32 %497
  %499 = load volatile i32, ptr %498, align 4
  %500 = and i32 %496, 31
  %501 = shl nuw i32 1, %500
  %502 = and i32 %501, %499
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %506, label %504

504:                                              ; preds = %493
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %505 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %490, i32 noundef 1031, i32 noundef %488) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %506

506:                                              ; preds = %504, %493, %472
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %507 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 8
  %508 = load ptr, ptr %507, align 8
  %509 = getelementptr i8, ptr %508, i32 4124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %509, i32 %488) #11, !srcloc !12
  %510 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 9
  %511 = load i16, ptr %510, align 4
  %512 = zext i16 %511 to i32
  %513 = load i16, ptr %473, align 2
  %514 = zext i16 %513 to i32
  %515 = sub nsw i32 %512, %514
  %516 = shl i32 %515, 16
  %517 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 4
  %518 = load i16, ptr %517, align 2
  %519 = zext i16 %518 to i32
  %520 = load i16, ptr %481, align 4
  %521 = zext i16 %520 to i32
  %522 = sub nsw i32 %519, %521
  %523 = or i32 %522, %516
  %524 = load ptr, ptr %489, align 4
  %525 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %526 = icmp sgt i32 %525, 0
  br i1 %526, label %527, label %540

527:                                              ; preds = %506
  %528 = tail call ptr @llvm.thread.pointer() #11
  %529 = getelementptr inbounds %struct.thread_info, ptr %528, i32 0, i32 2
  %530 = load i32, ptr %529, align 8
  %531 = lshr i32 %530, 5
  %532 = getelementptr i32, ptr @__cpu_online_mask, i32 %531
  %533 = load volatile i32, ptr %532, align 4
  %534 = and i32 %530, 31
  %535 = shl nuw i32 1, %534
  %536 = and i32 %535, %533
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %540, label %538

538:                                              ; preds = %527
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %539 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %524, i32 noundef 1032, i32 noundef %523) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %540

540:                                              ; preds = %538, %527, %506
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %541 = load ptr, ptr %507, align 8
  %542 = getelementptr i8, ptr %541, i32 4128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %542, i32 %523) #11, !srcloc !12
  %543 = load i16, ptr %476, align 4
  %544 = zext i16 %543 to i32
  %545 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 6
  %546 = load i16, ptr %545, align 2
  %547 = zext i16 %546 to i32
  %548 = sub nsw i32 %544, %547
  %549 = shl i32 %548, 16
  %550 = load i16, ptr %484, align 2
  %551 = zext i16 %550 to i32
  %552 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 1
  %553 = load i16, ptr %552, align 4
  %554 = zext i16 %553 to i32
  %555 = sub nsw i32 %551, %554
  %556 = or i32 %555, %549
  %557 = load ptr, ptr %489, align 4
  %558 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %559 = icmp sgt i32 %558, 0
  br i1 %559, label %560, label %573

560:                                              ; preds = %540
  %561 = tail call ptr @llvm.thread.pointer() #11
  %562 = getelementptr inbounds %struct.thread_info, ptr %561, i32 0, i32 2
  %563 = load i32, ptr %562, align 8
  %564 = lshr i32 %563, 5
  %565 = getelementptr i32, ptr @__cpu_online_mask, i32 %564
  %566 = load volatile i32, ptr %565, align 4
  %567 = and i32 %563, 31
  %568 = shl nuw i32 1, %567
  %569 = and i32 %568, %566
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %573, label %571

571:                                              ; preds = %560
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %572 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %557, i32 noundef 1034, i32 noundef %556) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %573

573:                                              ; preds = %571, %560, %540
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %574 = load ptr, ptr %507, align 8
  %575 = getelementptr i8, ptr %574, i32 4136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %575, i32 %556) #11, !srcloc !12
  %576 = load i16, ptr %545, align 2
  %577 = zext i16 %576 to i32
  %578 = shl nuw i32 %577, 16
  %579 = load i16, ptr %552, align 4
  %580 = zext i16 %579 to i32
  %581 = or i32 %578, %580
  %582 = load ptr, ptr %489, align 4
  %583 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %584 = icmp sgt i32 %583, 0
  br i1 %584, label %585, label %598

585:                                              ; preds = %573
  %586 = tail call ptr @llvm.thread.pointer() #11
  %587 = getelementptr inbounds %struct.thread_info, ptr %586, i32 0, i32 2
  %588 = load i32, ptr %587, align 8
  %589 = lshr i32 %588, 5
  %590 = getelementptr i32, ptr @__cpu_online_mask, i32 %589
  %591 = load volatile i32, ptr %590, align 4
  %592 = and i32 %588, 31
  %593 = shl nuw i32 1, %592
  %594 = and i32 %593, %591
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %598, label %596

596:                                              ; preds = %585
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %597 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %582, i32 noundef 1033, i32 noundef %581) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %598

598:                                              ; preds = %596, %585, %573
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %599 = load ptr, ptr %507, align 8
  %600 = getelementptr i8, ptr %599, i32 4132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %600, i32 %581) #11, !srcloc !12
  %601 = load ptr, ptr %138, align 8
  %602 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %601, i32 0, i32 1
  %603 = load i8, ptr %602, align 1, !range !13
  %604 = icmp eq i8 %603, 0
  br i1 %604, label %647, label %605

605:                                              ; preds = %598
  %606 = load ptr, ptr %507, align 8
  %607 = getelementptr i8, ptr %606, i32 5012
  %608 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %607) #11, !srcloc !18
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %609 = load ptr, ptr %489, align 4
  %610 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %611 = icmp sgt i32 %610, 0
  br i1 %611, label %612, label %626

612:                                              ; preds = %605
  %613 = tail call ptr @llvm.thread.pointer() #11
  %614 = getelementptr inbounds %struct.thread_info, ptr %613, i32 0, i32 2
  %615 = load i32, ptr %614, align 8
  %616 = lshr i32 %615, 5
  %617 = getelementptr i32, ptr @__cpu_online_mask, i32 %616
  %618 = load volatile i32, ptr %617, align 4
  %619 = and i32 %615, 31
  %620 = shl nuw i32 1, %619
  %621 = and i32 %620, %618
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %626, label %623

623:                                              ; preds = %612
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %624 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %609, i32 noundef 1253, i32 noundef %608) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %625 = load ptr, ptr %489, align 4
  br label %626

626:                                              ; preds = %623, %612, %605
  %627 = phi ptr [ %609, %605 ], [ %609, %612 ], [ %625, %623 ]
  %628 = and i32 %608, -2
  %629 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %630 = icmp sgt i32 %629, 0
  br i1 %630, label %631, label %644

631:                                              ; preds = %626
  %632 = tail call ptr @llvm.thread.pointer() #11
  %633 = getelementptr inbounds %struct.thread_info, ptr %632, i32 0, i32 2
  %634 = load i32, ptr %633, align 8
  %635 = lshr i32 %634, 5
  %636 = getelementptr i32, ptr @__cpu_online_mask, i32 %635
  %637 = load volatile i32, ptr %636, align 4
  %638 = and i32 %634, 31
  %639 = shl nuw i32 1, %638
  %640 = and i32 %639, %637
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %644, label %642

642:                                              ; preds = %631
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %643 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %627, i32 noundef 1253, i32 noundef %628) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %644

644:                                              ; preds = %642, %631, %626
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %645 = load ptr, ptr %507, align 8
  %646 = getelementptr i8, ptr %645, i32 5012
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %646, i32 %628) #11, !srcloc !12
  br label %647

647:                                              ; preds = %644, %598
  %648 = load ptr, ptr %507, align 8
  %649 = getelementptr i8, ptr %648, i32 200
  %650 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %649) #11, !srcloc !18
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %651 = load ptr, ptr %489, align 4
  %652 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %653 = icmp sgt i32 %652, 0
  br i1 %653, label %654, label %668

654:                                              ; preds = %647
  %655 = tail call ptr @llvm.thread.pointer() #11
  %656 = getelementptr inbounds %struct.thread_info, ptr %655, i32 0, i32 2
  %657 = load i32, ptr %656, align 8
  %658 = lshr i32 %657, 5
  %659 = getelementptr i32, ptr @__cpu_online_mask, i32 %658
  %660 = load volatile i32, ptr %659, align 4
  %661 = and i32 %657, 31
  %662 = shl nuw i32 1, %661
  %663 = and i32 %662, %660
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %668, label %665

665:                                              ; preds = %654
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %666 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %651, i32 noundef 50, i32 noundef %650) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %667 = load ptr, ptr %489, align 4
  br label %668

668:                                              ; preds = %665, %654, %647
  %669 = phi ptr [ %651, %647 ], [ %651, %654 ], [ %667, %665 ]
  %670 = and i32 %650, -97
  %671 = or i32 %670, 32
  %672 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %673 = icmp sgt i32 %672, 0
  br i1 %673, label %674, label %687

674:                                              ; preds = %668
  %675 = tail call ptr @llvm.thread.pointer() #11
  %676 = getelementptr inbounds %struct.thread_info, ptr %675, i32 0, i32 2
  %677 = load i32, ptr %676, align 8
  %678 = lshr i32 %677, 5
  %679 = getelementptr i32, ptr @__cpu_online_mask, i32 %678
  %680 = load volatile i32, ptr %679, align 4
  %681 = and i32 %677, 31
  %682 = shl nuw i32 1, %681
  %683 = and i32 %682, %680
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %687, label %685

685:                                              ; preds = %674
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %686 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %669, i32 noundef 50, i32 noundef %671) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %687

687:                                              ; preds = %685, %674, %668
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %688 = load ptr, ptr %507, align 8
  %689 = getelementptr i8, ptr %688, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %689, i32 %671) #11, !srcloc !12
  %690 = load ptr, ptr %138, align 8
  %691 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %690, i32 0, i32 9
  %692 = load i8, ptr %691, align 2, !range !13
  %693 = icmp eq i8 %692, 0
  br i1 %693, label %694, label %740

694:                                              ; preds = %687
  %695 = load ptr, ptr %507, align 8
  %696 = getelementptr i8, ptr %695, i32 216
  %697 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %696) #11, !srcloc !18
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %698 = load ptr, ptr %489, align 4
  %699 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %700 = icmp sgt i32 %699, 0
  br i1 %700, label %701, label %715

701:                                              ; preds = %694
  %702 = tail call ptr @llvm.thread.pointer() #11
  %703 = getelementptr inbounds %struct.thread_info, ptr %702, i32 0, i32 2
  %704 = load i32, ptr %703, align 8
  %705 = lshr i32 %704, 5
  %706 = getelementptr i32, ptr @__cpu_online_mask, i32 %705
  %707 = load volatile i32, ptr %706, align 4
  %708 = and i32 %704, 31
  %709 = shl nuw i32 1, %708
  %710 = and i32 %709, %707
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %715, label %712

712:                                              ; preds = %701
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %713 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %698, i32 noundef 54, i32 noundef %697) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %714 = load ptr, ptr %489, align 4
  br label %715

715:                                              ; preds = %712, %701, %694
  %716 = phi ptr [ %698, %694 ], [ %698, %701 ], [ %714, %712 ]
  %717 = or i32 %697, 328021
  %718 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %719 = icmp sgt i32 %718, 0
  br i1 %719, label %720, label %733

720:                                              ; preds = %715
  %721 = tail call ptr @llvm.thread.pointer() #11
  %722 = getelementptr inbounds %struct.thread_info, ptr %721, i32 0, i32 2
  %723 = load i32, ptr %722, align 8
  %724 = lshr i32 %723, 5
  %725 = getelementptr i32, ptr @__cpu_online_mask, i32 %724
  %726 = load volatile i32, ptr %725, align 4
  %727 = and i32 %723, 31
  %728 = shl nuw i32 1, %727
  %729 = and i32 %728, %726
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %733, label %731

731:                                              ; preds = %720
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %732 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %716, i32 noundef 54, i32 noundef %717) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %733

733:                                              ; preds = %731, %720, %715
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %734 = load ptr, ptr %507, align 8
  %735 = getelementptr i8, ptr %734, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %735, i32 %717) #11, !srcloc !12
  %736 = load ptr, ptr %138, align 8
  %737 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %736, i32 0, i32 9
  %738 = load i8, ptr %737, align 2, !range !13
  %739 = icmp eq i8 %738, 0
  br i1 %739, label %760, label %740

740:                                              ; preds = %733, %687
  %741 = load ptr, ptr %489, align 4
  %742 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %743 = icmp sgt i32 %742, 0
  br i1 %743, label %744, label %757

744:                                              ; preds = %740
  %745 = tail call ptr @llvm.thread.pointer() #11
  %746 = getelementptr inbounds %struct.thread_info, ptr %745, i32 0, i32 2
  %747 = load i32, ptr %746, align 8
  %748 = lshr i32 %747, 5
  %749 = getelementptr i32, ptr @__cpu_online_mask, i32 %748
  %750 = load volatile i32, ptr %749, align 4
  %751 = and i32 %747, 31
  %752 = shl nuw i32 1, %751
  %753 = and i32 %752, %750
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %757, label %755

755:                                              ; preds = %744
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %756 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %741, i32 noundef 869, i32 noundef 257) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %757

757:                                              ; preds = %755, %744, %740
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %758 = load ptr, ptr %507, align 8
  %759 = getelementptr i8, ptr %758, i32 3476
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %759, i32 257) #11, !srcloc !12
  br label %760

760:                                              ; preds = %757, %733
  %761 = getelementptr inbounds %struct.tegra_dc, ptr %8, i32 0, i32 10
  %762 = load ptr, ptr %761, align 8
  %763 = icmp eq ptr %762, null
  br i1 %763, label %784, label %764

764:                                              ; preds = %760
  %765 = load ptr, ptr %489, align 4
  %766 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %767 = icmp sgt i32 %766, 0
  br i1 %767, label %768, label %781

768:                                              ; preds = %764
  %769 = tail call ptr @llvm.thread.pointer() #11
  %770 = getelementptr inbounds %struct.thread_info, ptr %769, i32 0, i32 2
  %771 = load i32, ptr %770, align 8
  %772 = lshr i32 %771, 5
  %773 = getelementptr i32, ptr @__cpu_online_mask, i32 %772
  %774 = load volatile i32, ptr %773, align 4
  %775 = and i32 %771, 31
  %776 = shl nuw i32 1, %775
  %777 = and i32 %776, %774
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %781, label %779

779:                                              ; preds = %768
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %780 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %765, i32 noundef 1073, i32 noundef 65537) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %781

781:                                              ; preds = %779, %768, %764
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  call void @arm_heavy_mb() #11
  %782 = load ptr, ptr %507, align 8
  %783 = getelementptr i8, ptr %782, i32 4292
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %783, i32 65537) #11, !srcloc !12
  br label %784

784:                                              ; preds = %781, %760
  call void @tegra_dc_commit(ptr noundef %8)
  call void @drm_crtc_vblank_on(ptr noundef %0) #11
  br label %785

785:                                              ; preds = %784, %81
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_crtc_atomic_disable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = getelementptr i8, ptr %0, i32 -104
  %5 = select i1 %3, ptr null, ptr %4
  %6 = tail call fastcc zeroext i1 @tegra_dc_idle(ptr noundef %5)
  br i1 %6, label %62, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 200
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %12 = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %7
  %17 = tail call ptr @llvm.thread.pointer() #11
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %28 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %13, i32 noundef 50, i32 noundef %11) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %29 = load ptr, ptr %12, align 4
  br label %30

30:                                               ; preds = %27, %16, %7
  %31 = phi ptr [ %13, %7 ], [ %13, %16 ], [ %29, %27 ]
  %32 = and i32 %11, -97
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = tail call ptr @llvm.thread.pointer() #11
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %47 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %31, i32 noundef 50, i32 noundef %32) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %48

48:                                               ; preds = %46, %35, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr i8, ptr %49, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %32) #11, !srcloc !12
  tail call void @tegra_dc_commit(ptr noundef %5) #11
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = sub i32 -10, %51
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = add i32 %52, %53
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %58, %48
  %57 = tail call fastcc zeroext i1 @tegra_dc_idle(ptr noundef %5) #11
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #11
  %59 = load volatile i32, ptr @jiffies, align 64
  %60 = add i32 %59, %52
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %56, label %62

62:                                               ; preds = %58, %56, %48, %2
  %63 = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 10
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %110, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 8
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr i8, ptr %68, i32 216
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %71 = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %66
  %76 = tail call ptr @llvm.thread.pointer() #11
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 5
  %80 = getelementptr i32, ptr @__cpu_online_mask, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %78, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %75
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %87 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %72, i32 noundef 54, i32 noundef %70) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %88 = load ptr, ptr %71, align 4
  br label %89

89:                                               ; preds = %86, %75, %66
  %90 = phi ptr [ %72, %66 ], [ %72, %75 ], [ %88, %86 ]
  %91 = and i32 %70, -328022
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = tail call ptr @llvm.thread.pointer() #11
  %96 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 5
  %99 = getelementptr i32, ptr @__cpu_online_mask, i32 %98
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %97, 31
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, %100
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %94
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %106 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %90, i32 noundef 54, i32 noundef %91) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %107

107:                                              ; preds = %105, %94, %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %108 = load ptr, ptr %67, align 8
  %109 = getelementptr i8, ptr %108, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %91) #11, !srcloc !12
  br label %110

110:                                              ; preds = %107, %62
  %111 = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %111, i8 0, i64 16, i1 false) #11
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #11
  %112 = load ptr, ptr %0, align 8
  %113 = getelementptr inbounds %struct.drm_device, ptr %112, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %113) #11
  %114 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.drm_crtc_state, ptr %115, i32 0, i32 18
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %110
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef nonnull %117) #11
  %120 = load ptr, ptr %114, align 4
  %121 = getelementptr inbounds %struct.drm_crtc_state, ptr %120, i32 0, i32 18
  store ptr null, ptr %121, align 4
  br label %122

122:                                              ; preds = %119, %110
  %123 = load ptr, ptr %0, align 8
  %124 = getelementptr inbounds %struct.drm_device, ptr %123, i32 0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  %125 = load i16, ptr %124, align 4
  %126 = add i16 %125, 1
  store i16 %126, ptr %124, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !29
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !30
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  %127 = tail call i32 @host1x_client_suspend(ptr noundef %5) #11
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.256, i32 noundef %127) #12
  br label %132

132:                                              ; preds = %129, %122
  %133 = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 15
  %134 = load i8, ptr %133, align 4, !range !13
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.tegra_dc, ptr %5, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %138, i32 noundef 0) #11
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %136
  %142 = load ptr, ptr %137, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.257, i32 noundef %139) #12
  br label %143

143:                                              ; preds = %141, %136, %132
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_rect_intersect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_required_pstate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_genpd_set_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tegra_dc_idle(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #11
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %18 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %3, i32 noundef 64, i32 noundef 1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %19

19:                                               ; preds = %17, %6, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %20 = getelementptr inbounds %struct.tegra_dc, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 1) #11, !srcloc !12
  %23 = load ptr, ptr %20, align 8
  %24 = getelementptr i8, ptr %23, i32 200
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !18
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !19
  %26 = load ptr, ptr %2, align 4
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %19
  %30 = tail call ptr @llvm.thread.pointer() #11
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %41 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %26, i32 noundef 50, i32 noundef %25) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %42 = load ptr, ptr %2, align 4
  br label %43

43:                                               ; preds = %40, %29, %19
  %44 = phi ptr [ %26, %19 ], [ %26, %29 ], [ %42, %40 ]
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = tail call ptr @llvm.thread.pointer() #11
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %59 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %44, i32 noundef 64, i32 noundef 0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  br label %60

60:                                               ; preds = %58, %47, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  %61 = load ptr, ptr %20, align 8
  %62 = getelementptr i8, ptr %61, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 0) #11, !srcloc !12
  %63 = and i32 %25, 96
  %64 = icmp eq i32 %63, 0
  ret i1 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_rgb_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_sequence_power_up(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

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
!9 = !{i64 2155809715}
!10 = !{i64 2155809881}
!11 = !{i64 2155984632}
!12 = !{i64 4723637}
!13 = !{i8 0, i8 2}
!14 = !{i64 2148032423}
!15 = !{i64 530733, i64 2148020704, i64 2148020730, i64 2148020777, i64 2148020799, i64 2148020827, i64 2148020847}
!16 = !{i64 517302, i64 517327, i64 517349, i64 517365, i64 517377, i64 517397, i64 517421, i64 517437, i64 517449}
!17 = !{i64 2148032549}
!18 = !{i64 4724055}
!19 = !{i64 2155985296}
!20 = !{i64 2155825650}
!21 = !{i64 2155825814}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.peeled.count", i32 2}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2148446096, i64 2148446376, i64 2148446710, i64 2148447044}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{i64 2148969285}
!28 = !{i64 2148965109}
!29 = !{i64 2148965184, i64 2148965211, i64 2148965258, i64 2148965280, i64 2148965308, i64 2148965328}
!30 = !{i64 426217}
!31 = !{i64 2148993429}
