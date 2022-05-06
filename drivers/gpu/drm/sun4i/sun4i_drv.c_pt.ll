; ModuleID = '/llk/IR/drivers/gpu/drm/sun4i/sun4i_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_drv.c"
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
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.endpoint_list = type { %struct.anon.71 }
%struct.anon.71 = type { %union.anon.72, [16 x ptr] }
%union.anon.72 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
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
%struct.of_endpoint = type { i32, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.73, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.anon.73 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.80 = type { i32, ptr }
%struct.sun4i_drv = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }

@sun4i_drv_of_table = internal constant [16 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a10s-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31s-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-display-engine\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author275 = internal constant [60 x i8] c"author=Boris Brezillon <boris.brezillon@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author276 = internal constant [56 x i8] c"author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [56 x i8] c"description=Allwinner A10 Display Engine DRM/KMS Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@sun4i_drv_platform_driver = internal global %struct.platform_driver { ptr @sun4i_drv_probe, ptr @sun4i_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_drv_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_drv_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [10 x i8] c"sun4i-drm\00", align 1
@sun4i_drv_drm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sun4i_drv_drm_sys_suspend, ptr @sun4i_drv_drm_sys_resume, ptr @sun4i_drv_drm_sys_suspend, ptr @sun4i_drv_drm_sys_resume, ptr @sun4i_drv_drm_sys_suspend, ptr @sun4i_drv_drm_sys_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"allwinner,pipelines\00", align 1
@sun4i_drv_master_ops = internal constant %struct.component_master_ops { ptr @sun4i_drv_bind, ptr @sun4i_drv_unbind }, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Adding component %pOF\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"allwinner,sun4i-a10-display-frontend\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"allwinner,sun5i-a13-display-frontend\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"allwinner,sun6i-a31-display-frontend\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"allwinner,sun7i-a20-display-frontend\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"allwinner,sun8i-a23-display-frontend\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"allwinner,sun8i-a33-display-frontend\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"allwinner,sun9i-a80-display-frontend\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"hdmi-connector\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"allwinner,sun9i-a80-deu\00", align 1
@sun4i_frontend_of_table = external dso_local constant [0 x %struct.of_device_id], align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"Comparing of node %pOF with %pOF\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"No output to bind on port %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Error retrieving the output node\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"TCON output endpoint is TCON TOP... skipping\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Couldn't parse endpoint\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Endpoint is our panel... skipping\0A\00", align 1
@sun4i_tcon_of_table = external dso_local constant [0 x %struct.of_device_id], align 4
@sun8i_tcon_top_of_table = external dso_local constant [0 x %struct.of_device_id], align 4
@sun4i_drv_driver = internal constant %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_sun4i_gem_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.20, ptr @.str.21, i32 19, ptr null, i32 0, ptr @sun4i_drv_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.18 = private unnamed_addr constant [34 x i8] c"Couldn't claim our memory region\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Couldn't bind all pipelines components\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Allwinner sun4i Display Engine\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"20150629\00", align 1
@sun4i_drv_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_license278], section "llvm.metadata"

@__mod_of__sun4i_drv_of_table_device_table = dso_local alias [16 x %struct.of_device_id], ptr @sun4i_drv_of_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_drv_platform_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_drv_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_drv_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca ptr, align 4
  %4 = alloca %struct.endpoint_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #6
  %8 = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %4, i8 0, i64 84, i1 false)
  store i32 15, ptr %9, align 4
  %10 = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 3
  store i32 4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.anon.71, ptr %4, i32 0, i32 1
  %12 = getelementptr inbounds %struct.__kfifo, ptr %4, i32 0, i32 4
  store ptr %11, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !8
  %13 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #6
  %14 = icmp ne i32 %13, 0
  %15 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %35, %1
  %19 = load i32, ptr %4, align 4
  %20 = load i32, ptr %8, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %84, label %42

22:                                               ; preds = %35, %1
  %23 = phi ptr [ %39, %35 ], [ %15, %1 ]
  %24 = phi i32 [ %36, %35 ], [ 0, %1 ]
  %25 = load i32, ptr %4, align 4
  %26 = load i32, ptr %8, align 4
  %27 = sub i32 %25, %26
  %28 = load i32, ptr %9, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = and i32 %28, %25
  %32 = getelementptr ptr, ptr %11, i32 %31
  store ptr %23, ptr %32, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !9
  %33 = load i32, ptr %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %4, align 4
  br label %35

35:                                               ; preds = %30, %22
  %36 = add i32 %24, 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !8
  %37 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %36, ptr noundef nonnull %2) #6
  %38 = icmp ne i32 %37, 0
  %39 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %40 = icmp eq ptr %39, null
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %18, label %22

42:                                               ; preds = %73, %18
  %43 = phi i32 [ %77, %73 ], [ %20, %18 ]
  %44 = phi i32 [ %75, %73 ], [ 0, %18 ]
  %45 = load i32, ptr %9, align 4
  %46 = and i32 %45, %43
  %47 = getelementptr ptr, ptr %11, i32 %46
  %48 = load ptr, ptr %47, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !10
  %49 = load i32, ptr %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %8, align 4
  %51 = call fastcc zeroext i1 @sun4i_drv_node_is_frontend(ptr noundef %48) #6
  br i1 %51, label %54, label %52

52:                                               ; preds = %42
  %53 = call zeroext i1 @of_device_is_available(ptr noundef %48) #6
  br i1 %53, label %54, label %73

54:                                               ; preds = %52, %42
  %55 = call i32 @of_device_is_compatible(ptr noundef %48, ptr noundef nonnull @.str.10) #6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = call fastcc zeroext i1 @sun4i_drv_node_is_frontend(ptr noundef %48) #6
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = call i32 @of_device_is_compatible(ptr noundef %48, ptr noundef nonnull @.str.11) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59, %57
  %63 = call ptr @of_match_node(ptr noundef nonnull @sun4i_frontend_of_table, ptr noundef %48) #6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = call zeroext i1 @of_device_is_available(ptr noundef %48) #6
  br i1 %66, label %67, label %68

67:                                               ; preds = %65, %59
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %48) #6
  call void @drm_of_component_match_add(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull @compare_of, ptr noundef %48) #6
  br label %68

68:                                               ; preds = %67, %65, %62
  %69 = phi i32 [ 1, %67 ], [ 0, %65 ], [ 0, %62 ]
  call fastcc void @sun4i_drv_traverse_endpoints(ptr noundef nonnull %4, ptr noundef %48, i32 noundef 1) #6
  %70 = call ptr @of_match_node(ptr noundef nonnull @sun8i_tcon_top_of_table, ptr noundef %48) #6
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  call fastcc void @sun4i_drv_traverse_endpoints(ptr noundef nonnull %4, ptr noundef %48, i32 noundef 3) #6
  call fastcc void @sun4i_drv_traverse_endpoints(ptr noundef nonnull %4, ptr noundef %48, i32 noundef 5) #6
  br label %73

73:                                               ; preds = %72, %68, %54, %52
  %74 = phi i32 [ 0, %52 ], [ 0, %54 ], [ %69, %72 ], [ %69, %68 ]
  %75 = add i32 %74, %44
  %76 = load i32, ptr %4, align 4
  %77 = load i32, ptr %8, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %42

79:                                               ; preds = %73
  %80 = icmp eq i32 %75, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %79
  %82 = load ptr, ptr %3, align 4
  %83 = call i32 @component_master_add_with_match(ptr noundef %5, ptr noundef nonnull @sun4i_drv_master_ops, ptr noundef %82) #6
  br label %84

84:                                               ; preds = %81, %79, %18
  %85 = phi i32 [ %83, %81 ], [ 0, %79 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_drv_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %2, ptr noundef nonnull @sun4i_drv_master_ops) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sun4i_drv_node_is_frontend(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.3) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %22

4:                                                ; preds = %1
  %5 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %7
  %11 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.6) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.7) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.8) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.9) #6
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16, %13, %10, %7, %4, %1
  %23 = phi i1 [ true, %16 ], [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %4 ], [ true, %1 ], [ %21, %19 ]
  ret i1 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_of_component_match_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, ptr noundef %4, ptr noundef %1) #6
  %5 = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %5, %1
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sun4i_drv_traverse_endpoints(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.of_endpoint, align 4
  %5 = tail call ptr @of_graph_get_port_by_id(ptr noundef %1, i32 noundef %2) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef %2) #6
  br label %59

8:                                                ; preds = %3
  %9 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %5, ptr noundef null) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.of_endpoint, ptr %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %15 = getelementptr inbounds %struct.anon.71, ptr %0, i32 0, i32 1
  br label %16

16:                                               ; preds = %56, %11
  %17 = phi ptr [ %9, %11 ], [ %57, %56 ]
  %18 = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %17) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14) #6
  br label %56

21:                                               ; preds = %16
  %22 = call ptr @of_match_node(ptr noundef nonnull @sun4i_tcon_of_table, ptr noundef %1) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = call ptr @of_match_node(ptr noundef nonnull @sun8i_tcon_top_of_table, ptr noundef nonnull %18) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15) #6
  call void @of_node_put(ptr noundef nonnull %18) #6
  br label %56

28:                                               ; preds = %24
  %29 = call ptr @of_match_node(ptr noundef nonnull @sun4i_tcon_of_table, ptr noundef %1) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.of_device_id, ptr %29, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = load i8, ptr %33, align 4, !range !11
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !8
  %37 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %17, ptr noundef nonnull %4) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, ptr %12, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %36
  %43 = phi ptr [ @.str.16, %36 ], [ @.str.17, %39 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull %43) #6
  call void @of_node_put(ptr noundef nonnull %18) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  br label %56

44:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  br label %45

45:                                               ; preds = %44, %31, %28, %21
  %46 = load i32, ptr %0, align 4
  %47 = load i32, ptr %13, align 4
  %48 = sub i32 %46, %47
  %49 = load i32, ptr %14, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = and i32 %49, %46
  %53 = getelementptr ptr, ptr %15, i32 %52
  store ptr %18, ptr %53, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #6, !srcloc !12
  %54 = load i32, ptr %0, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %0, align 4
  br label %56

56:                                               ; preds = %51, %45, %42, %27, %20
  %57 = call ptr @of_get_next_available_child(ptr noundef nonnull %5, ptr noundef nonnull %17) #6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %16

59:                                               ; preds = %56, %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_drv_bind(ptr noundef %0) #2 {
  %2 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @sun4i_drv_driver, ptr noundef %0) #6
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %48

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 24, i32 noundef 3520) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  store ptr %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.sun4i_drv, ptr %7, i32 0, i32 1
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sun4i_drv, ptr %7, i32 0, i32 1, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %7, ptr %7, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %7, ptr %14, align 4
  %15 = getelementptr inbounds %struct.sun4i_drv, ptr %7, i32 0, i32 2
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sun4i_drv, ptr %7, i32 0, i32 2, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %0, ptr noundef %18, i32 noundef 0) #6
  switch i32 %19, label %20 [
    i32 -19, label %23
    i32 0, label %23
  ]

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.18) #7
  br label %46

23:                                               ; preds = %9, %9
  %24 = tail call i32 @drmm_mode_config_init(ptr noundef %2) #6
  %25 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @component_bind_all(ptr noundef %26, ptr noundef %2) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.19) #7
  br label %44

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 19
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @drm_vblank_init(ptr noundef %2, i32 noundef %33) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = tail call i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @sun4i_drv_driver) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  tail call void @sun4i_framebuffer_init(ptr noundef %2) #6
  tail call void @drm_kms_helper_poll_init(ptr noundef %2) #6
  %40 = tail call i32 @drm_dev_register(ptr noundef %2, i32 noundef 0) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void @drm_fbdev_generic_setup(ptr noundef %2, i32 noundef 32) #6
  br label %48

43:                                               ; preds = %39
  tail call void @drm_kms_helper_poll_fini(ptr noundef %2) #6
  br label %44

44:                                               ; preds = %43, %36, %31, %29
  %45 = phi i32 [ %27, %29 ], [ %34, %31 ], [ %37, %36 ], [ %40, %43 ]
  tail call void @drm_mode_config_cleanup(ptr noundef %2) #6
  tail call void @of_reserved_mem_device_release(ptr noundef %0) #6
  br label %46

46:                                               ; preds = %44, %20, %6
  %47 = phi i32 [ %19, %20 ], [ %45, %44 ], [ -12, %6 ]
  tail call void @drm_dev_put(ptr noundef %2) #6
  br label %48

48:                                               ; preds = %46, %42, %4
  %49 = phi i32 [ %5, %4 ], [ %47, %46 ], [ 0, %42 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun4i_drv_unbind(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @drm_dev_unregister(ptr noundef %3) #6
  tail call void @drm_kms_helper_poll_fini(ptr noundef %3) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %3) #6
  tail call void @drm_mode_config_cleanup(ptr noundef %3) #6
  tail call void @component_unbind_all(ptr noundef %0, ptr noundef null) #6
  tail call void @of_reserved_mem_device_release(ptr noundef %0) #6
  tail call void @drm_dev_put(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sun4i_framebuffer_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_sun4i_gem_dumb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = mul i32 %7, %5
  %9 = add i32 %8, 7
  %10 = lshr i32 %9, 3
  %11 = add nuw nsw i32 %10, 1
  %12 = and i32 %11, 1073741822
  %13 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 5
  store i32 %12, ptr %13, align 4
  %14 = tail call i32 @drm_gem_cma_dumb_create_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_drv_drm_sys_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %3) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_drv_drm_sys_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %3) #6
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i64 2155607567}
!10 = !{i64 2155609059}
!11 = !{i8 0, i8 2}
!12 = !{i64 2155599481}
