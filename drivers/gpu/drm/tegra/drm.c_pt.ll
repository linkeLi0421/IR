; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/drm.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/drm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.host1x_driver = type { %struct.device_driver, ptr, %struct.list_head, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_tegra_syncpt = type { i32, i32 }
%struct.drm_tegra_cmdbuf = type { i32, i32, i32, i32 }
%struct.drm_tegra_submit = type { i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, [5 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.79 = type { i32, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.tegra_drm_context = type { ptr, ptr, i32, %struct.xarray }
%struct.host1x_job = type { %struct.kref, %struct.list_head, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, i8 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.host1x_reloc = type { %struct.anon.85, %struct.anon.86, i32, i32 }
%struct.anon.85 = type { ptr, i32 }
%struct.anon.86 = type { ptr, i32 }
%struct.drm_tegra_reloc = type { %struct.anon.83, %struct.anon.84, i32, i32 }
%struct.anon.83 = type { i32, i32 }
%struct.anon.84 = type { i32, i32 }
%struct.tegra_drm_client = type { %struct.host1x_client, %struct.list_head, ptr, ptr, i32, ptr }
%struct.tegra_drm_client_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.tegra_drm = type { ptr, ptr, i8, %struct.mutex, %struct.drm_mm, %struct.anon.80, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.80 = type { %struct.iova_domain, i32, i32 }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.host1x_device = type { ptr, %struct.list_head, %struct.device, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, %struct.device_dma_parameters }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.tegra_drm_file = type { %struct.idr, %struct.mutex, %struct.xarray, %struct.xarray }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.75, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.75 = type { [4 x i8] }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@__initcall__kmod_tegra_drm__299_1427_host1x_drm_init6 = internal global ptr @host1x_drm_init, section ".initcall6.init", align 4
@drivers = internal constant [10 x ptr] [ptr @tegra_display_hub_driver, ptr @tegra_dc_driver, ptr @tegra_hdmi_driver, ptr @tegra_dsi_driver, ptr @tegra_dpaux_driver, ptr @tegra_sor_driver, ptr @tegra_gr2d_driver, ptr @tegra_gr3d_driver, ptr @tegra_vic_driver, ptr @tegra_nvdec_driver], align 4
@host1x_drm_driver = internal global %struct.host1x_driver { %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @host1x_drm_pm_ops, ptr null, ptr null }, ptr @host1x_drm_subdevs, %struct.list_head zeroinitializer, ptr @host1x_drm_probe, ptr @host1x_drm_remove, ptr null }, align 4
@__exitcall_host1x_drm_exit = internal global ptr @host1x_drm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [67 x i8] c"tegra_drm.author=Thierry Reding <thierry.reding@avionic-design.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [46 x i8] c"tegra_drm.description=NVIDIA Tegra DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [47 x i8] c"tegra_drm.file=drivers/gpu/drm/tegra/tegra-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [25 x i8] c"tegra_drm.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@tegra_display_hub_driver = external dso_local global %struct.platform_driver, align 4
@tegra_dc_driver = external dso_local global %struct.platform_driver, align 4
@tegra_hdmi_driver = external dso_local global %struct.platform_driver, align 4
@tegra_dsi_driver = external dso_local global %struct.platform_driver, align 4
@tegra_dpaux_driver = external dso_local global %struct.platform_driver, align 4
@tegra_sor_driver = external dso_local global %struct.platform_driver, align 4
@tegra_gr2d_driver = external dso_local global %struct.platform_driver, align 4
@tegra_gr3d_driver = external dso_local global %struct.platform_driver, align 4
@tegra_vic_driver = external dso_local global %struct.platform_driver, align 4
@tegra_nvdec_driver = external dso_local global %struct.platform_driver, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"drm\00", align 1
@host1x_drm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @host1x_drm_suspend, ptr @host1x_drm_resume, ptr @host1x_drm_suspend, ptr @host1x_drm_resume, ptr @host1x_drm_suspend, ptr @host1x_drm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@host1x_drm_subdevs = internal constant [37 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-gr2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-gr3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-gr2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-gr3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-gr2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-gr3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-sor1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-nvdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-sor1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-nvdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-dc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-sor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-nvdec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tegra_drm_driver = internal constant %struct.drm_driver { ptr null, ptr @tegra_drm_open, ptr @tegra_drm_postclose, ptr @drm_fb_helper_lastclose, ptr null, ptr null, ptr null, ptr null, ptr @tegra_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr @tegra_gem_prime_import, ptr null, ptr null, ptr @tegra_bo_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 59, ptr @tegra_drm_ioctls, i32 0, ptr @tegra_drm_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@host1x_drm_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"&tegra->clients_lock\00", align 1
@tegra_drm_mode_config_funcs = internal constant %struct.drm_mode_config_funcs { ptr @tegra_fb_create, ptr null, ptr @drm_fb_helper_output_poll_changed, ptr null, ptr @tegra_atomic_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, align 4
@tegra_drm_mode_config_helpers = internal constant %struct.drm_mode_config_helper_funcs { ptr @tegra_atomic_commit_tail, ptr null }, align 4
@host1x_drm_probe.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"&tegra->mm_lock\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"IOMMU apertures:\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"  GEM: %#llx-%#llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"  Carveout: %#llx-%#llx\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"tegra\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"NVIDIA Tegra graphics\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"20120330\00", align 1
@tegra_drm_ioctls = internal constant [0 x %struct.drm_ioctl_desc] zeroinitializer, align 4
@tegra_drm_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @tegra_drm_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_drm_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"&fpriv->lock\00", align 1
@tegra_debugfs_list = internal global [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.13, ptr @tegra_debugfs_framebuffers, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.14, ptr @tegra_debugfs_iova, i32 0, ptr null }], align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"framebuffers\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"iova\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"%3d: user size: %d x %d, depth %d, %d bpp, refcount %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"host1x device cleanup failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_host1x_drm_exit, ptr @__initcall__kmod_tegra_drm__299_1427_host1x_drm_init6, ptr @host1x_drm_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_submit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.drm_tegra_syncpt, align 8
  %6 = alloca %struct.drm_tegra_cmdbuf, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.drm_tegra_submit, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_tegra_submit, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !8
  %12 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.drm_tegra_submit, ptr %1, i32 0, i32 8
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.drm_tegra_submit, ptr %1, i32 0, i32 9
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.drm_tegra_submit, ptr %1, i32 0, i32 7
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.drm_tegra_submit, ptr %1, i32 0, i32 1
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %296

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.drm_tegra_submit, ptr %1, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %296

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tegra_drm_context, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = tail call ptr @host1x_job_alloc(ptr noundef %39, i32 noundef %9, i32 noundef %11, i1 noundef zeroext false) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %296, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %10, align 8
  %44 = getelementptr inbounds %struct.host1x_job, ptr %40, i32 0, i32 7
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.host1x_job, ptr %40, i32 0, i32 3
  store ptr %7, ptr %45, align 4
  %46 = getelementptr inbounds %struct.host1x_client, ptr %7, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.host1x_job, ptr %40, i32 0, i32 26
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.host1x_job, ptr %40, i32 0, i32 27
  store i8 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.host1x_job, ptr %40, i32 0, i32 28
  store i8 1, ptr %50, align 1
  %51 = shl i32 %11, 1
  %52 = add i32 %51, %9
  %53 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %52, i32 4) #10
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %294, label %55, !prof !9

55:                                               ; preds = %42
  %56 = extractvalue { i32, i1 } %53, 0
  %57 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %56, i32 noundef 3264) #11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %294, label %59

59:                                               ; preds = %55
  %60 = icmp eq i32 %9, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.drm_tegra_cmdbuf, ptr %6, i32 0, i32 2
  %63 = getelementptr inbounds %struct.drm_tegra_cmdbuf, ptr %6, i32 0, i32 1
  br label %66

64:                                               ; preds = %112, %59
  %65 = getelementptr inbounds %struct.host1x_job, ptr %40, i32 0, i32 6
  br label %116

66:                                               ; preds = %112, %61
  %67 = phi i32 [ %9, %61 ], [ %113, %112 ]
  %68 = phi ptr [ %21, %61 ], [ %114, %112 ]
  %69 = phi i32 [ 0, %61 ], [ %100, %112 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  %70 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %68, i32 16, i32 -1090519040) #12, !srcloc !10
  %71 = extractvalue { i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81, !prof !11

73:                                               ; preds = %66
  %74 = tail call ptr @llvm.thread.pointer() #10
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %76 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %75) #13, !srcloc !12
  %77 = and i32 %76, -13
  %78 = or i32 %77, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %79 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %68, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81, !prof !11

81:                                               ; preds = %73, %66
  %82 = phi i32 [ %79, %73 ], [ 16, %66 ]
  %83 = sub i32 16, %82
  %84 = getelementptr i8, ptr %6, i32 %83
  call void @llvm.memset.p0.i32(ptr align 1 %84, i8 0, i32 %82, i1 false) #10
  br label %109

85:                                               ; preds = %73
  %86 = load i32, ptr %62, align 4
  %87 = icmp ugt i32 %86, 16383
  br i1 %87, label %109, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %6, align 4
  %90 = call ptr @tegra_gem_lookup(ptr noundef %3, i32 noundef %89) #10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %109, label %92

92:                                               ; preds = %88
  %93 = load i32, ptr %63, align 4
  %94 = zext i32 %93 to i64
  %95 = load i32, ptr %62, align 4
  %96 = zext i32 %95 to i64
  %97 = shl nuw nsw i64 %96, 2
  %98 = add nuw nsw i64 %97, %94
  %99 = getelementptr i8, ptr %90, i32 -208
  %100 = add nuw i32 %69, 1
  %101 = getelementptr ptr, ptr %57, i32 %69
  store ptr %99, ptr %101, align 4
  %102 = and i64 %98, 3
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %92
  %105 = getelementptr i8, ptr %90, i32 -64
  %106 = load i32, ptr %105, align 8
  %107 = zext i32 %106 to i64
  %108 = icmp ugt i64 %98, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104, %92, %88, %85, %81
  %110 = phi i32 [ %69, %81 ], [ %69, %85 ], [ %69, %88 ], [ %100, %104 ], [ %100, %92 ]
  %111 = phi i32 [ -14, %81 ], [ -22, %85 ], [ -2, %88 ], [ -22, %104 ], [ -22, %92 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %273

112:                                              ; preds = %104
  call void @host1x_job_add_gather(ptr noundef nonnull %40, ptr noundef nonnull %90, i32 noundef %95, i32 noundef %93) #10
  %113 = add i32 %67, -1
  %114 = getelementptr %struct.drm_tegra_cmdbuf, ptr %68, i32 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %64, label %66

116:                                              ; preds = %196, %64
  %117 = phi i32 [ %200, %196 ], [ %9, %64 ]
  %118 = phi i32 [ %119, %196 ], [ %11, %64 ]
  %119 = add i32 %118, -1
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %207, label %121

121:                                              ; preds = %116
  %122 = load ptr, ptr %65, align 4
  %123 = getelementptr %struct.host1x_reloc, ptr %122, i32 %119
  %124 = getelementptr %struct.drm_tegra_reloc, ptr %25, i32 %119
  %125 = tail call ptr @llvm.thread.pointer() #10
  %126 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 3
  %127 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %126) #13, !srcloc !12
  %128 = and i32 %127, -13
  %129 = or i32 %128, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %129) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %130 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %124, i32 -1090519041) #10, !srcloc !15
  %131 = extractvalue { i32, i32 } %130, 0
  %132 = extractvalue { i32, i32 } %130, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %127) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %133 = icmp slt i32 %131, 0
  br i1 %133, label %263, label %134

134:                                              ; preds = %121
  %135 = getelementptr inbounds %struct.anon.83, ptr %124, i32 0, i32 1
  %136 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %126) #13, !srcloc !12
  %137 = and i32 %136, -13
  %138 = or i32 %137, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %139 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %135, i32 -1090519041) #10, !srcloc !16
  %140 = extractvalue { i32, i32 } %139, 0
  %141 = extractvalue { i32, i32 } %139, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %136) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %142 = getelementptr inbounds %struct.anon.85, ptr %123, i32 0, i32 1
  store i32 %141, ptr %142, align 4
  %143 = icmp slt i32 %140, 0
  br i1 %143, label %265, label %144

144:                                              ; preds = %134
  %145 = getelementptr %struct.drm_tegra_reloc, ptr %25, i32 %119, i32 1
  %146 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %126) #13, !srcloc !12
  %147 = and i32 %146, -13
  %148 = or i32 %147, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %148) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %149 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %145, i32 -1090519041) #10, !srcloc !17
  %150 = extractvalue { i32, i32 } %149, 0
  %151 = extractvalue { i32, i32 } %149, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %146) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %152 = icmp slt i32 %150, 0
  br i1 %152, label %267, label %153

153:                                              ; preds = %144
  %154 = getelementptr %struct.drm_tegra_reloc, ptr %25, i32 %119, i32 1, i32 1
  %155 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %126) #13, !srcloc !12
  %156 = and i32 %155, -13
  %157 = or i32 %156, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %157) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %158 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %154, i32 -1090519041) #10, !srcloc !18
  %159 = extractvalue { i32, i32 } %158, 0
  %160 = extractvalue { i32, i32 } %158, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %155) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %161 = getelementptr %struct.host1x_reloc, ptr %122, i32 %119, i32 1
  %162 = getelementptr %struct.host1x_reloc, ptr %122, i32 %119, i32 1, i32 1
  store i32 %160, ptr %162, align 4
  %163 = icmp slt i32 %159, 0
  br i1 %163, label %269, label %164

164:                                              ; preds = %153
  %165 = getelementptr %struct.drm_tegra_reloc, ptr %25, i32 %119, i32 2
  %166 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %126) #13, !srcloc !12
  %167 = and i32 %166, -13
  %168 = or i32 %167, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %168) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %169 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %165, i32 -1090519041) #10, !srcloc !19
  %170 = extractvalue { i32, i32 } %169, 0
  %171 = extractvalue { i32, i32 } %169, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %166) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %172 = getelementptr %struct.host1x_reloc, ptr %122, i32 %119, i32 2
  store i32 %171, ptr %172, align 4
  %173 = icmp slt i32 %170, 0
  br i1 %173, label %271, label %174

174:                                              ; preds = %164
  %175 = getelementptr %struct.host1x_reloc, ptr %122, i32 %119, i32 3
  store i32 3, ptr %175, align 4
  %176 = call ptr @tegra_gem_lookup(ptr noundef %3, i32 noundef %132) #10
  store ptr %176, ptr %123, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %273, label %178

178:                                              ; preds = %174
  %179 = call ptr @tegra_gem_lookup(ptr noundef %3, i32 noundef %151) #10
  store ptr %179, ptr %161, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %273, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr %65, align 4
  %183 = getelementptr %struct.host1x_reloc, ptr %182, i32 %119
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr i8, ptr %184, i32 -208
  %186 = add i32 %117, 1
  %187 = getelementptr ptr, ptr %57, i32 %117
  store ptr %185, ptr %187, align 4
  %188 = getelementptr inbounds %struct.anon.85, ptr %183, i32 0, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = and i32 %189, 3
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %273

192:                                              ; preds = %181
  %193 = getelementptr i8, ptr %184, i32 -64
  %194 = load i32, ptr %193, align 8
  %195 = icmp ult i32 %189, %194
  br i1 %195, label %196, label %273

196:                                              ; preds = %192
  %197 = getelementptr %struct.host1x_reloc, ptr %182, i32 %119, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr i8, ptr %198, i32 -208
  %200 = add i32 %117, 2
  %201 = getelementptr ptr, ptr %57, i32 %186
  store ptr %199, ptr %201, align 4
  %202 = getelementptr %struct.host1x_reloc, ptr %182, i32 %119, i32 1, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr i8, ptr %198, i32 -64
  %205 = load i32, ptr %204, align 8
  %206 = icmp ult i32 %203, %205
  br i1 %206, label %116, label %273

207:                                              ; preds = %116
  %208 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %29, i32 8, i32 -1090519040) #12, !srcloc !10
  %209 = extractvalue { i32, i32 } %208, 0
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %219, !prof !11

211:                                              ; preds = %207
  %212 = tail call ptr @llvm.thread.pointer() #10
  %213 = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 3
  %214 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %213) #13, !srcloc !12
  %215 = and i32 %214, -13
  %216 = or i32 %215, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %216) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %217 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %29, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %214) #10, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !14
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %223, label %219, !prof !11

219:                                              ; preds = %211, %207
  %220 = phi i32 [ %217, %211 ], [ 8, %207 ]
  %221 = sub i32 8, %220
  %222 = getelementptr i8, ptr %5, i32 %221
  call void @llvm.memset.p0.i32(ptr align 1 %222, i8 0, i32 %220, i1 false) #10
  br label %273

223:                                              ; preds = %211
  %224 = load i32, ptr %5, align 8
  %225 = call ptr @host1x_syncpt_get_by_id(ptr noundef %17, i32 noundef %224) #10
  %226 = icmp eq ptr %225, null
  br i1 %226, label %273, label %227

227:                                              ; preds = %223
  %228 = load ptr, ptr %0, align 4
  %229 = getelementptr inbounds %struct.tegra_drm_client, ptr %228, i32 0, i32 5
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %230, i32 0, i32 2
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.host1x_job, ptr %40, i32 0, i32 24
  store ptr %232, ptr %233, align 4
  %234 = load ptr, ptr %0, align 4
  %235 = getelementptr inbounds %struct.tegra_drm_client, ptr %234, i32 0, i32 5
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %236, i32 0, i32 3
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.host1x_job, ptr %40, i32 0, i32 25
  store ptr %238, ptr %239, align 4
  %240 = getelementptr inbounds %struct.drm_tegra_syncpt, ptr %5, i32 0, i32 1
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr inbounds %struct.host1x_job, ptr %40, i32 0, i32 14
  store i32 %241, ptr %242, align 4
  %243 = getelementptr inbounds %struct.host1x_job, ptr %40, i32 0, i32 13
  store ptr %225, ptr %243, align 4
  %244 = getelementptr inbounds %struct.host1x_job, ptr %40, i32 0, i32 17
  store i32 10000, ptr %244, align 4
  %245 = getelementptr inbounds %struct.drm_tegra_submit, ptr %1, i32 0, i32 6
  %246 = load i32, ptr %245, align 4
  %247 = add i32 %246, -1
  %248 = icmp ult i32 %247, 9999
  %249 = select i1 %248, i32 %246, i32 10000
  store i32 %249, ptr %244, align 4
  %250 = load ptr, ptr %0, align 4
  %251 = getelementptr inbounds %struct.host1x_client, ptr %250, i32 0, i32 2
  %252 = load ptr, ptr %251, align 4
  %253 = call i32 @host1x_job_pin(ptr noundef nonnull %40, ptr noundef %252) #10
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %273

255:                                              ; preds = %227
  %256 = call i32 @host1x_job_submit(ptr noundef nonnull %40) #10
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %255
  call void @host1x_job_unpin(ptr noundef nonnull %40) #10
  br label %273

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.host1x_job, ptr %40, i32 0, i32 15
  %261 = load i32, ptr %260, align 4
  %262 = getelementptr inbounds %struct.drm_tegra_submit, ptr %1, i32 0, i32 11
  store i32 %261, ptr %262, align 8
  br label %273

263:                                              ; preds = %121
  %264 = extractvalue { i32, i32 } %130, 0
  br label %273

265:                                              ; preds = %134
  %266 = extractvalue { i32, i32 } %139, 0
  br label %273

267:                                              ; preds = %144
  %268 = extractvalue { i32, i32 } %149, 0
  br label %273

269:                                              ; preds = %153
  %270 = extractvalue { i32, i32 } %158, 0
  br label %273

271:                                              ; preds = %164
  %272 = extractvalue { i32, i32 } %169, 0
  br label %273

273:                                              ; preds = %271, %269, %267, %265, %263, %259, %258, %227, %223, %219, %196, %192, %181, %178, %174, %109
  %274 = phi i32 [ %117, %227 ], [ %117, %258 ], [ %117, %259 ], [ %117, %223 ], [ %110, %109 ], [ %117, %219 ], [ %117, %263 ], [ %117, %265 ], [ %117, %267 ], [ %117, %269 ], [ %117, %271 ], [ %117, %178 ], [ %117, %174 ], [ %200, %196 ], [ %186, %181 ], [ %186, %192 ]
  %275 = phi i32 [ %253, %227 ], [ %256, %258 ], [ 0, %259 ], [ -2, %223 ], [ %111, %109 ], [ -14, %219 ], [ %264, %263 ], [ %266, %265 ], [ %268, %267 ], [ %270, %269 ], [ %272, %271 ], [ -2, %178 ], [ -2, %174 ], [ -22, %196 ], [ -22, %181 ], [ -22, %192 ]
  %276 = icmp eq i32 %274, 0
  br i1 %276, label %293, label %277

277:                                              ; preds = %291, %273
  %278 = phi i32 [ %279, %291 ], [ %274, %273 ]
  %279 = add i32 %278, -1
  %280 = getelementptr ptr, ptr %57, i32 %279
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %291, label %283

283:                                              ; preds = %277
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %281) #10, !srcloc !21
  %284 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %281, ptr nonnull %281, i32 1, ptr nonnull elementtype(i32) %281) #10, !srcloc !22
  %285 = extractvalue { i32, i32, i32 } %284, 0
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %290, label %287

287:                                              ; preds = %283
  %288 = icmp sgt i32 %285, 0
  br i1 %288, label %291, label %289, !prof !11

289:                                              ; preds = %287
  call void @refcount_warn_saturate(ptr noundef nonnull %281, i32 noundef 3) #10
  br label %291

290:                                              ; preds = %283
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  call void @drm_gem_object_free(ptr noundef nonnull %281) #10
  br label %291

291:                                              ; preds = %290, %289, %287, %277
  %292 = icmp eq i32 %279, 0
  br i1 %292, label %293, label %277

293:                                              ; preds = %291, %273
  call void @kfree(ptr noundef nonnull %57) #10
  br label %294

294:                                              ; preds = %293, %55, %42
  %295 = phi i32 [ %275, %293 ], [ -12, %55 ], [ -12, %42 ]
  call void @host1x_job_put(ptr noundef nonnull %40) #10
  br label %296

296:                                              ; preds = %294, %37, %33, %4
  %297 = phi i32 [ %295, %294 ], [ -22, %4 ], [ -22, %33 ], [ -12, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 %297
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_job_alloc(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_gem_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_add_gather(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_get_by_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_job_pin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_job_submit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_unpin(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_register_client(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @host1x_channel_request(ptr noundef %1) #10
  %4 = getelementptr inbounds %struct.tegra_drm_client, ptr %1, i32 0, i32 3
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.tegra_drm_client, ptr %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 7, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %8, ptr %10, align 4
  store ptr %9, ptr %8, align 4
  %12 = getelementptr inbounds %struct.tegra_drm_client, ptr %1, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tegra_drm_client, ptr %1, i32 0, i32 2
  store ptr %0, ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef %7) #10
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %6 ], [ -16, %2 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_unregister_client(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.tegra_drm_client, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tegra_drm_client, ptr %1, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %5, align 4
  %9 = getelementptr inbounds %struct.tegra_drm_client, ptr %1, i32 0, i32 2
  store ptr null, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %3) #10
  %10 = getelementptr inbounds %struct.tegra_drm_client, ptr %1, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void @host1x_channel_put(ptr noundef nonnull %11) #10
  br label %14

14:                                               ; preds = %13, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_client_iommu_attach(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 24
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  tail call void @arm_iommu_detach_device(ptr noundef %11) #10
  tail call void @arm_iommu_release_mapping(ptr noundef nonnull %13) #10
  %16 = load ptr, ptr %2, align 4
  %17 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %16) #10
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi ptr [ %17, %15 ], [ %4, %1 ]
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.tegra_drm, ptr %10, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  br i1 %20, label %25, label %23

23:                                               ; preds = %18
  %24 = icmp eq ptr %19, %22
  br i1 %24, label %27, label %44

25:                                               ; preds = %18
  %26 = icmp eq ptr %22, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %25, %23
  %28 = load ptr, ptr %2, align 4
  %29 = tail call ptr @iommu_group_get(ptr noundef %28) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tegra_drm, ptr %10, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %19, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @iommu_attach_group(ptr noundef %33, ptr noundef nonnull %29) #10
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @iommu_group_put(ptr noundef nonnull %29) #10
  br label %44

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.tegra_drm, ptr %10, i32 0, i32 2
  store i8 1, ptr %40, align 8
  br label %41

41:                                               ; preds = %39, %25
  %42 = phi ptr [ %29, %39 ], [ null, %25 ]
  %43 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 3
  store ptr %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %41, %38, %27, %23
  %45 = phi i32 [ %36, %38 ], [ 0, %41 ], [ 0, %23 ], [ -19, %27 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_detach_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_release_mapping(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_client_iommu_detach(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %13) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tegra_drm, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %8, align 4
  tail call void @iommu_detach_group(ptr noundef %18, ptr noundef %19) #10
  br label %20

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr %8, align 4
  tail call void @iommu_group_put(ptr noundef %21) #10
  store ptr null, ptr %8, align 4
  br label %22

22:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_drm_alloc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 5, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %1, -1
  %11 = add i32 %10, %9
  %12 = sub i32 0, %9
  %13 = and i32 %11, %12
  br label %17

14:                                               ; preds = %3
  %15 = add i32 %1, 4095
  %16 = and i32 %15, -4096
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i32 [ 3521, %14 ], [ 3520, %7 ]
  %19 = phi i32 [ %16, %14 ], [ %13, %7 ]
  %20 = add i32 %19, -1
  %21 = lshr i32 %20, 12
  %22 = icmp ult i32 %20, 4096
  %23 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 false) #10, !range !24
  %24 = sub nuw nsw i32 32, %23
  %25 = select i1 %22, i32 0, i32 %24
  %26 = tail call i32 @__get_free_pages(i32 noundef %18, i32 noundef %25) #10
  %27 = inttoptr i32 %26 to ptr
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %58, label %29

29:                                               ; preds = %17
  %30 = load ptr, ptr %4, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %26, i32 -2130706432, i32 8454144) #12, !srcloc !25
  store i32 %33, ptr %2, align 4
  br label %58

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 5
  %36 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 5, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %19, %37
  %39 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 5, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = tail call ptr @alloc_iova(ptr noundef %35, i32 noundef %38, i32 noundef %40, i1 noundef zeroext true) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.iova, ptr %41, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 5, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @llvm.cttz.i32(i32 %47, i1 false) #10, !range !24
  %49 = shl i32 %45, %48
  store i32 %49, ptr %2, align 4
  %50 = load ptr, ptr %4, align 4
  %51 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %26, i32 -2130706432, i32 8454144) #12, !srcloc !25
  %52 = tail call i32 @iommu_map(ptr noundef %50, i32 noundef %49, i32 noundef %51, i32 noundef %19, i32 noundef 3) #10
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  tail call void @__free_iova(ptr noundef %35, ptr noundef nonnull %41) #10
  %55 = inttoptr i32 %52 to ptr
  br label %56

56:                                               ; preds = %54, %34
  %57 = phi ptr [ %55, %54 ], [ inttoptr (i32 -16 to ptr), %34 ]
  tail call void @free_pages(i32 noundef %26, i32 noundef %25) #10
  br label %58

58:                                               ; preds = %56, %43, %32, %17
  %59 = phi ptr [ %57, %56 ], [ %27, %32 ], [ %27, %43 ], [ inttoptr (i32 -12 to ptr), %17 ]
  ret ptr %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_iova(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_iova(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_drm_free(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = add i32 %1, 4095
  %10 = and i32 %9, -4096
  br label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 5, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %1, -1
  %15 = add i32 %14, %13
  %16 = sub i32 0, %13
  %17 = and i32 %15, %16
  %18 = tail call i32 @iommu_unmap(ptr noundef nonnull %6, i32 noundef %3, i32 noundef %17) #10
  %19 = getelementptr inbounds %struct.tegra_drm, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %12, align 4
  %21 = tail call i32 @llvm.cttz.i32(i32 %20, i1 false) #10, !range !24
  %22 = lshr i32 %3, %21
  tail call void @free_iova(ptr noundef %19, i32 noundef %22) #10
  br label %23

23:                                               ; preds = %11, %8
  %24 = phi i32 [ %10, %8 ], [ %17, %11 ]
  %25 = add i32 %24, -1
  %26 = icmp ult i32 %25, 4096
  %27 = lshr i32 %25, 12
  %28 = tail call i32 @llvm.ctlz.i32(i32 %27, i1 false) #10, !range !24
  %29 = sub nuw nsw i32 32, %28
  %30 = select i1 %26, i32 0, i32 %29
  %31 = ptrtoint ptr %2 to i32
  tail call void @free_pages(i32 noundef %31, i32 noundef %30) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_iova(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @host1x_drm_init() #4 section ".init.text" {
  %1 = tail call i32 @host1x_driver_register_full(ptr noundef nonnull @host1x_drm_driver, ptr noundef null) #10
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 10, ptr noundef null) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @host1x_driver_unregister(ptr noundef nonnull @host1x_drm_driver) #10
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %4, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @host1x_drm_exit() #4 section ".exit.text" {
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 10) #10
  tail call void @host1x_driver_unregister(ptr noundef nonnull @host1x_drm_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host1x_drm_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_device, ptr %0, i32 0, i32 2
  %3 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @tegra_drm_driver, ptr noundef %2) #10
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %3 to i32
  br label %159

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1144) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %157, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.host1x_device, ptr %0, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %13) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = tail call i64 @host1x_get_dma_mask(ptr noundef %15) #10
  %20 = icmp ult i64 %19, 4294967296
  br i1 %20, label %21, label %30

21:                                               ; preds = %18, %11
  %22 = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #10
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  %24 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #10
  %25 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %155, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @iova_cache_get() #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %149, label %30

30:                                               ; preds = %27, %21, %18
  %31 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @host1x_drm_probe.__key) #10
  %32 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 7
  store volatile ptr %32, ptr %32, align 8
  %33 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 7, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.host1x_device, ptr %0, i32 0, i32 2, i32 8
  store ptr %3, ptr %34, align 8
  %35 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  store ptr %9, ptr %35, align 4
  store ptr %3, ptr %9, align 8
  %36 = tail call i32 @drmm_mode_config_init(ptr noundef %3) #10
  %37 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 23
  %38 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 25
  %39 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 26
  %40 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 98
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  store i8 1, ptr %40, align 1
  %41 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 27
  store ptr @tegra_drm_mode_config_funcs, ptr %41, align 4
  %42 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 103
  store ptr @tegra_drm_mode_config_helpers, ptr %42, align 4
  %43 = tail call i32 @tegra_drm_fb_prepare(ptr noundef %3) #10
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %147, label %45

45:                                               ; preds = %30
  tail call void @drm_kms_helper_poll_init(ptr noundef %3) #10
  %46 = tail call i32 @host1x_device_init(ptr noundef %0) #10
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %145, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %38, align 4
  %50 = add i32 %49, -1
  %51 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 9
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %39, align 4
  %53 = add i32 %52, -1
  %54 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 10
  store i32 %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 2
  %56 = load i8, ptr %55, align 8, !range !26
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %102, label %58

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.host1x_device, ptr %0, i32 0, i32 2, i32 16
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i64, ptr %60, align 8
  %64 = icmp eq i64 %63, 0
  %65 = trunc i64 %63 to i32
  br i1 %64, label %66, label %67

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %62
  %68 = phi i32 [ -1, %66 ], [ %65, %62 ]
  %69 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.iommu_domain, ptr %70, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, %68
  %74 = getelementptr inbounds %struct.iommu_domain, ptr %70, i32 0, i32 5, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, %68
  %77 = zext i32 %73 to i64
  %78 = add i32 %76, -67108864
  %79 = zext i32 %78 to i64
  %80 = add nuw nsw i64 %79, 1
  %81 = zext i32 %76 to i64
  %82 = getelementptr inbounds %struct.iommu_domain, ptr %70, i32 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = tail call i32 @llvm.cttz.i32(i32 %83, i1 false) #10, !range !24
  %85 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 5
  %86 = shl nuw i32 1, %84
  %87 = zext i32 %84 to i64
  %88 = lshr i64 %80, %87
  %89 = trunc i64 %88 to i32
  tail call void @init_iova_domain(ptr noundef %85, i32 noundef %86, i32 noundef %89) #10
  %90 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 5, i32 0, i32 4
  %91 = load i32, ptr %90, align 8
  %92 = tail call i32 @llvm.cttz.i32(i32 %91, i1 false) #10, !range !24
  %93 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 5, i32 1
  store i32 %92, ptr %93, align 4
  %94 = zext i32 %92 to i64
  %95 = lshr i64 %81, %94
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 5, i32 2
  store i32 %96, ptr %97, align 8
  %98 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 4
  %99 = sub nsw i64 1, %77
  %100 = add nsw i64 %99, %79
  tail call void @drm_mm_init(ptr noundef %98, i64 noundef %77, i64 noundef %100) #10
  %101 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %101, ptr noundef nonnull @.str.5, ptr noundef nonnull @host1x_drm_probe.__key.4) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i64 noundef %77, i64 noundef %79) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i64 noundef %80, i64 noundef %81) #10
  br label %107

102:                                              ; preds = %48
  %103 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  tail call void @iommu_domain_free(ptr noundef nonnull %104) #10
  store ptr null, ptr %103, align 4
  tail call void @iova_cache_put() #10
  br label %107

107:                                              ; preds = %106, %102, %67
  %108 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 13
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = tail call i32 @tegra_display_hub_prepare(ptr noundef nonnull %109) #10
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %135, label %114

114:                                              ; preds = %111, %107
  %115 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 26
  store i32 -1, ptr %115, align 4
  %116 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %117 = load i32, ptr %116, align 4
  %118 = tail call i32 @drm_vblank_init(ptr noundef %3, i32 noundef %117) #10
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %114
  tail call void @drm_mode_config_reset(ptr noundef %3) #10
  %121 = tail call i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @tegra_drm_driver) #10
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %120
  %124 = tail call i32 @tegra_drm_fb_init(ptr noundef %3) #10
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %123
  %127 = tail call i32 @drm_dev_register(ptr noundef %3, i32 noundef 0) #10
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %159

129:                                              ; preds = %126
  tail call void @tegra_drm_fb_exit(ptr noundef %3) #10
  br label %130

130:                                              ; preds = %129, %123, %120, %114
  %131 = phi i32 [ %118, %114 ], [ %121, %120 ], [ %124, %123 ], [ %127, %129 ]
  %132 = load ptr, ptr %108, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  tail call void @tegra_display_hub_cleanup(ptr noundef nonnull %132) #10
  br label %135

135:                                              ; preds = %134, %130, %111
  %136 = phi i32 [ %112, %111 ], [ %131, %134 ], [ %131, %130 ]
  %137 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 4
  tail call void @drm_mm_takedown(ptr noundef %141) #10
  %142 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 5
  tail call void @put_iova_domain(ptr noundef %142) #10
  tail call void @iova_cache_put() #10
  br label %143

143:                                              ; preds = %140, %135
  %144 = tail call i32 @host1x_device_exit(ptr noundef %0) #10
  br label %145

145:                                              ; preds = %143, %45
  %146 = phi i32 [ %46, %45 ], [ %136, %143 ]
  tail call void @drm_kms_helper_poll_fini(ptr noundef %3) #10
  tail call void @tegra_drm_fb_free(ptr noundef %3) #10
  br label %147

147:                                              ; preds = %145, %30
  %148 = phi i32 [ %43, %30 ], [ %146, %145 ]
  tail call void @drm_mode_config_cleanup(ptr noundef %3) #10
  br label %149

149:                                              ; preds = %147, %27
  %150 = phi i32 [ %28, %27 ], [ %148, %147 ]
  %151 = getelementptr inbounds %struct.tegra_drm, ptr %9, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  tail call void @iommu_domain_free(ptr noundef nonnull %152) #10
  br label %155

155:                                              ; preds = %154, %149, %23
  %156 = phi i32 [ %150, %154 ], [ %150, %149 ], [ -12, %23 ]
  tail call void @kfree(ptr noundef nonnull %9) #10
  br label %157

157:                                              ; preds = %155, %7
  %158 = phi i32 [ %156, %155 ], [ -12, %7 ]
  tail call void @drm_dev_put(ptr noundef %3) #10
  br label %159

159:                                              ; preds = %157, %126, %5
  %160 = phi i32 [ %6, %5 ], [ %158, %157 ], [ 0, %126 ]
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host1x_drm_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_device, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.host1x_device, ptr %0, i32 0, i32 2, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void @drm_dev_unregister(ptr noundef %4) #10
  tail call void @drm_kms_helper_poll_fini(ptr noundef %4) #10
  tail call void @tegra_drm_fb_exit(ptr noundef %4) #10
  tail call void @drm_atomic_helper_shutdown(ptr noundef %4) #10
  tail call void @drm_mode_config_cleanup(ptr noundef %4) #10
  %7 = getelementptr inbounds %struct.tegra_drm, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @tegra_display_hub_cleanup(ptr noundef nonnull %8) #10
  br label %11

11:                                               ; preds = %10, %1
  %12 = tail call i32 @host1x_device_exit(ptr noundef %0) #10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %12) #15
  br label %15

15:                                               ; preds = %14, %11
  %16 = getelementptr inbounds %struct.tegra_drm, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tegra_drm, ptr %6, i32 0, i32 4
  tail call void @drm_mm_takedown(ptr noundef %20) #10
  %21 = getelementptr inbounds %struct.tegra_drm, ptr %6, i32 0, i32 5
  tail call void @put_iova_domain(ptr noundef %21) #10
  tail call void @iova_cache_put() #10
  %22 = load ptr, ptr %16, align 4
  tail call void @iommu_domain_free(ptr noundef %22) #10
  br label %23

23:                                               ; preds = %19, %15
  tail call void @kfree(ptr noundef %6) #10
  tail call void @drm_dev_put(ptr noundef %4) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host1x_drm_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @host1x_drm_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iova_cache_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_fb_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_device_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_iova_domain(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iova_cache_put() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_display_hub_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_fb_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_drm_fb_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_display_hub_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_iova_domain(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_device_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_drm_fb_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_drm_open(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  store i32 0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.xarray, ptr %4, i32 0, i32 1
  store i32 33554436, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xarray, ptr %4, i32 0, i32 2
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %struct.idr, ptr %4, i32 0, i32 1
  store i32 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.idr, ptr %4, i32 0, i32 2
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.tegra_drm_file, ptr %4, i32 0, i32 2
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.tegra_drm_file, ptr %4, i32 0, i32 2, i32 1
  store i32 12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tegra_drm_file, ptr %4, i32 0, i32 2, i32 2
  %14 = getelementptr inbounds %struct.tegra_drm_file, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  tail call void @__mutex_init(ptr noundef %14, ptr noundef nonnull @.str.12, ptr noundef nonnull @tegra_drm_open.__key) #10
  %15 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  store ptr %4, ptr %15, align 4
  br label %16

16:                                               ; preds = %6, %2
  %17 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_drm_postclose(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_drm_file, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = tail call i32 @idr_for_each(ptr noundef %4, ptr noundef nonnull @tegra_drm_context_cleanup, ptr noundef null) #10
  tail call void @tegra_drm_uapi_close_file(ptr noundef %4) #10
  tail call void @mutex_unlock(ptr noundef %5) #10
  tail call void @idr_destroy(ptr noundef %4) #10
  tail call void @kfree(ptr noundef %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_lastclose(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_debugfs_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @tegra_debugfs_list, i32 noundef 2, ptr noundef %3, ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_gem_prime_import(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_bo_dumb_create(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_drm_context_cleanup(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.tegra_drm_client, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_drm_client_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %1) #10
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.host1x_client, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 5) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_drm_uapi_close_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_debugfs_framebuffers(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 6
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %33, label %12

12:                                               ; preds = %12, %2
  %13 = phi ptr [ %31, %12 ], [ %10, %2 ]
  %14 = getelementptr i8, ptr %13, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 92
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr i8, ptr %13, i32 96
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %13, i32 44
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.drm_format_info, ptr %21, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.drm_format_info, ptr %21, i32 0, i32 3
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 3
  %29 = getelementptr i8, ptr %13, i32 20
  %30 = load volatile i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %24, i32 noundef %28, i32 noundef %30) #10
  %31 = load ptr, ptr %13, align 4
  %32 = icmp eq ptr %31, %9
  br i1 %32, label %33, label %12

33:                                               ; preds = %12, %2
  tail call void @mutex_unlock(ptr noundef %8) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_debugfs_iova(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.drm_printer, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !27
  %11 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %11, align 4, !alias.scope !27
  %12 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %0, ptr %12, align 4, !alias.scope !27
  %13 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %13, align 4, !alias.scope !27
  %14 = getelementptr inbounds %struct.tegra_drm, ptr %10, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.tegra_drm, ptr %10, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %18) #10
  %19 = getelementptr inbounds %struct.tegra_drm, ptr %10, i32 0, i32 4
  call void @drm_mm_print(ptr noundef %19, ptr noundef nonnull %3) #10
  call void @mutex_unlock(ptr noundef %18) #10
  br label %20

20:                                               ; preds = %17, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_print(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @host1x_get_dma_mask(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_fb_create(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_output_poll_changed(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_atomic_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @drm_atomic_helper_check(ptr noundef %0, ptr noundef %1) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @tegra_display_hub_atomic_check(ptr noundef %0, ptr noundef %1) #10
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ %3, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_display_hub_atomic_check(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_atomic_commit_tail(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_drm, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %3, ptr noundef %0) #10
  tail call void @tegra_display_hub_atomic_commit(ptr noundef %3, ptr noundef %0) #10
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %3, ptr noundef %0, i32 noundef 0) #10
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %3, ptr noundef %0) #10
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %0) #10
  tail call void @drm_atomic_helper_wait_for_vblanks(ptr noundef %3, ptr noundef %0) #10
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %3, ptr noundef %0) #10
  br label %11

10:                                               ; preds = %1
  tail call void @drm_atomic_helper_commit_tail_rpm(ptr noundef %0) #10
  br label %11

11:                                               ; preds = %10, %9
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 30, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  br label %18

18:                                               ; preds = %27, %16
  %19 = phi ptr [ %12, %16 ], [ %28, %27 ]
  %20 = phi i32 [ 0, %16 ], [ %29, %27 ]
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr %struct.__drm_crtcs_state, ptr %21, i32 %20
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  tail call void @tegra_crtc_atomic_post_commit(ptr noundef nonnull %23, ptr noundef %0) #10
  %26 = load ptr, ptr %2, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi ptr [ %26, %25 ], [ %19, %18 ]
  %29 = add nuw i32 %20, 1
  %30 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 30, i32 19
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %18, label %33

33:                                               ; preds = %27, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_display_hub_atomic_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_vblanks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_tail_rpm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_crtc_atomic_post_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind allocsize(2) }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152056280, i64 2152056305}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 4552392}
!13 = !{i64 4552589}
!14 = !{i64 2152037868}
!15 = !{i64 2155829820, i64 2155830100, i64 2155830434, i64 2155830768}
!16 = !{i64 2155845985, i64 2155846265, i64 2155846599, i64 2155846933}
!17 = !{i64 2155857985, i64 2155858265, i64 2155858599, i64 2155858933}
!18 = !{i64 2155870089, i64 2155870369, i64 2155870703, i64 2155871037}
!19 = !{i64 2155882097, i64 2155882377, i64 2155882711, i64 2155883045}
!20 = !{i64 2148000581}
!21 = !{i64 396742, i64 2147886713, i64 2147886739, i64 2147886786, i64 2147886808, i64 2147886836, i64 2147886856}
!22 = !{i64 2147902740, i64 2147902772, i64 2147902801, i64 2147902835, i64 2147902866, i64 2147902889}
!23 = !{i64 2149329420}
!24 = !{i32 0, i32 33}
!25 = !{i64 2148814043, i64 2148814066, i64 2148814098, i64 2148814130, i64 2148814168, i64 2148814198}
!26 = !{i8 0, i8 2}
!27 = !{!28}
!28 = distinct !{!28, !29, !"drm_seq_file_printer: argument 0"}
!29 = distinct !{!29, !"drm_seq_file_printer"}
