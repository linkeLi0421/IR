; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_drv.c"
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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.79, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.80, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
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
%struct.anon.78 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.79 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.anon.80 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.vc4_file = type { %struct.anon.81, i8 }
%struct.anon.81 = type { %struct.idr, %struct.mutex }
%struct.drm_vc4_get_param = type { i32, i32, i64 }
%struct.vc4_v3d = type { ptr, ptr, ptr, ptr, %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }

@vc4_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-vc5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-vc4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-vc4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_alias279 = internal constant [23 x i8] c"alias=platform:vc4-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_description280 = internal constant [36 x i8] c"description=Broadcom VC4 DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author281 = internal constant [37 x i8] c"author=Eric Anholt <eric@anholt.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@component_drivers = internal constant [8 x ptr] [ptr @vc4_hvs_driver, ptr @vc4_hdmi_driver, ptr @vc4_vec_driver, ptr @vc4_dpi_driver, ptr @vc4_dsi_driver, ptr @vc4_txp_driver, ptr @vc4_crtc_driver, ptr @vc4_v3d_driver], align 4
@__this_module = external dso_local global %struct.module, align 64
@vc4_platform_driver = internal global %struct.platform_driver { ptr @vc4_platform_drm_probe, ptr @vc4_platform_drm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vc4_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@vc4_hvs_driver = external dso_local global %struct.platform_driver, align 4
@vc4_hdmi_driver = external dso_local global %struct.platform_driver, align 4
@vc4_vec_driver = external dso_local global %struct.platform_driver, align 4
@vc4_dpi_driver = external dso_local global %struct.platform_driver, align 4
@vc4_dsi_driver = external dso_local global %struct.platform_driver, align 4
@vc4_txp_driver = external dso_local global %struct.platform_driver, align 4
@vc4_crtc_driver = external dso_local global %struct.platform_driver, align 4
@vc4_v3d_driver = external dso_local global %struct.platform_driver, align 4
@.str = private unnamed_addr constant [8 x i8] c"vc4-drm\00", align 1
@vc4_drm_ops = internal constant %struct.component_master_ops { ptr @vc4_drm_bind, ptr @vc4_drm_unbind }, align 4
@vc4_v3d_dt_match = external dso_local constant [0 x %struct.of_device_id], align 4
@vc4_drm_driver = internal global %struct.drm_driver { ptr null, ptr @vc4_open, ptr @vc4_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vc4_debugfs_init, ptr @vc4_create_object, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @vc4_dumb_create, ptr null, ptr null, i32 0, i32 0, i32 0, ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 59, ptr @vc4_drm_ioctls, i32 15, ptr @vc4_drm_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@vc4_drm_bind.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"&vc4->bin_bo_lock\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vc4\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Broadcom VC4 graphics\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"20140616\00", align 1
@vc4_drm_ioctls = internal constant [15 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1062181824, i32 32, ptr @vc4_submit_cl_ioctl, ptr @.str.5 }, %struct.drm_ioctl_desc { i32 -1072667583, i32 32, ptr @vc4_wait_seqno_ioctl, ptr @.str.6 }, %struct.drm_ioctl_desc { i32 -1072667582, i32 32, ptr @vc4_wait_bo_ioctl, ptr @.str.7 }, %struct.drm_ioctl_desc { i32 -1072667581, i32 32, ptr @vc4_create_bo_ioctl, ptr @.str.8 }, %struct.drm_ioctl_desc { i32 -1072667580, i32 32, ptr @vc4_mmap_bo_ioctl, ptr @.str.9 }, %struct.drm_ioctl_desc { i32 -1072143291, i32 32, ptr @vc4_create_shader_bo_ioctl, ptr @.str.10 }, %struct.drm_ioctl_desc { i32 -1063230394, i32 4, ptr @vc4_get_hang_state_ioctl, ptr @.str.11 }, %struct.drm_ioctl_desc { i32 -1072667577, i32 32, ptr @vc4_get_param_ioctl, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 -1072667576, i32 32, ptr @vc4_set_tiling_ioctl, ptr @.str.13 }, %struct.drm_ioctl_desc { i32 -1072667575, i32 32, ptr @vc4_get_tiling_ioctl, ptr @.str.14 }, %struct.drm_ioctl_desc { i32 -1072667574, i32 32, ptr @vc4_label_bo_ioctl, ptr @.str.15 }, %struct.drm_ioctl_desc { i32 -1072667573, i32 32, ptr @vc4_gem_madvise_ioctl, ptr @.str.16 }, %struct.drm_ioctl_desc { i32 -1072143284, i32 32, ptr @vc4_perfmon_create_ioctl, ptr @.str.17 }, %struct.drm_ioctl_desc { i32 -1073454003, i32 32, ptr @vc4_perfmon_destroy_ioctl, ptr @.str.18 }, %struct.drm_ioctl_desc { i32 -1072667570, i32 32, ptr @vc4_perfmon_get_values_ioctl, ptr @.str.19 }], align 4
@vc4_drm_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"VC4_SUBMIT_CL\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"VC4_WAIT_SEQNO\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"VC4_WAIT_BO\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"VC4_CREATE_BO\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"VC4_MMAP_BO\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"VC4_CREATE_SHADER_BO\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"VC4_GET_HANG_STATE\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"VC4_GET_PARAM\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"VC4_SET_TILING\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"VC4_GET_TILING\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"VC4_LABEL_BO\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"VC4_GEM_MADVISE\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"VC4_PERFMON_CREATE\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"VC4_PERFMON_DESTROY\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"VC4_PERFMON_GET_VALUES\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Unknown parameter %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias279, ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_license282], section "llvm.metadata"

@__mod_of__vc4_of_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @vc4_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vc4_ioremap_regs(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef %1) #6
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @component_drivers, i32 noundef 8, ptr noundef nonnull @__this_module) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vc4_platform_driver, ptr noundef nonnull @__this_module) #6
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_unregister_drivers(ptr noundef nonnull @component_drivers, i32 noundef 8) #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @vc4_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_platform_drm_probe(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br label %4

4:                                                ; preds = %16, %1
  %5 = phi i32 [ 0, %1 ], [ %18, %16 ]
  %6 = getelementptr ptr, ptr @component_drivers, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_driver, ptr %7, i32 0, i32 5
  %9 = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %8) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %11, %4
  %12 = phi ptr [ %14, %11 ], [ %9, %4 ]
  %13 = phi ptr [ %12, %11 ], [ null, %4 ]
  call void @put_device(ptr noundef %13) #6
  call void @component_match_add_release(ptr noundef %3, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @compare_dev, ptr noundef nonnull %12) #6
  %14 = call ptr @platform_find_device_by_driver(ptr noundef nonnull %12, ptr noundef %8) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11

16:                                               ; preds = %11, %4
  %17 = phi ptr [ null, %4 ], [ %12, %11 ]
  call void @put_device(ptr noundef %17) #6
  %18 = add nuw nsw i32 %5, 1
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %4

20:                                               ; preds = %16
  %21 = load ptr, ptr %2, align 4
  %22 = call i32 @component_master_add_with_match(ptr noundef %3, ptr noundef nonnull @vc4_drm_ops, ptr noundef %21) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_platform_drm_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %2, ptr noundef nonnull @vc4_drm_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_find_device_by_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @compare_dev(ptr noundef readnone %0, ptr noundef readnone %1) #4 {
  %3 = icmp eq ptr %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_drm_bind(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 17
  store i64 4294967295, ptr %2, align 8
  %3 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @vc4_v3d_dt_match, ptr noundef null) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %3) #6
  br i1 %6, label %10, label %7

7:                                                ; preds = %5, %1
  %8 = load i32, ptr getelementptr inbounds (%struct.drm_driver, ptr @vc4_drm_driver, i32 0, i32 24), align 4
  %9 = and i32 %8, -9
  store i32 %9, ptr getelementptr inbounds (%struct.drm_driver, ptr @vc4_drm_driver, i32 0, i32 24), align 4
  br label %10

10:                                               ; preds = %7, %5
  tail call void @of_node_put(ptr noundef %3) #6
  %11 = tail call ptr @__devm_drm_dev_alloc(ptr noundef %0, ptr noundef nonnull @vc4_drm_driver, i32 noundef 1568, i32 noundef 0) #6
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  br label %56

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %0, i32 64
  store ptr %11, ptr %16, align 8
  %17 = getelementptr inbounds %struct.vc4_dev, ptr %11, i32 0, i32 38
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.vc4_dev, ptr %11, i32 0, i32 38, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.vc4_dev, ptr %11, i32 0, i32 39
  tail call void @__mutex_init(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @vc4_drm_bind.__key) #6
  %20 = tail call i32 @vc4_bo_cache_init(ptr noundef %11) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %15
  %23 = tail call i32 @drmm_mode_config_init(ptr noundef %11) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = tail call i32 @vc4_gem_init(ptr noundef %11) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  %29 = tail call i32 @component_bind_all(ptr noundef %0, ptr noundef %11) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = tail call i32 @vc4_plane_create_additional_planes(ptr noundef %11) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = tail call i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @vc4_drm_driver) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = tail call i32 @vc4_kms_load(ptr noundef %11) #6
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 20
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %50, label %44

44:                                               ; preds = %44, %40
  %45 = phi ptr [ %48, %44 ], [ %42, %40 ]
  %46 = getelementptr i8, ptr %45, i32 -8
  %47 = tail call i32 @vc4_crtc_disable_at_boot(ptr noundef %46) #6
  %48 = load ptr, ptr %45, align 4
  %49 = icmp eq ptr %48, %41
  br i1 %49, label %50, label %44

50:                                               ; preds = %44, %40
  %51 = tail call i32 @drm_dev_register(ptr noundef %11, i32 noundef 0) #6
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void @drm_fbdev_generic_setup(ptr noundef %11, i32 noundef 16) #6
  br label %56

54:                                               ; preds = %50, %37, %34, %31
  %55 = phi i32 [ %32, %31 ], [ %35, %34 ], [ %38, %37 ], [ %51, %50 ]
  tail call void @component_unbind_all(ptr noundef %0, ptr noundef %11) #6
  br label %56

56:                                               ; preds = %54, %53, %28, %25, %22, %15, %13
  %57 = phi i32 [ %14, %13 ], [ %55, %54 ], [ 0, %53 ], [ %20, %15 ], [ %23, %22 ], [ %26, %25 ], [ %29, %28 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_drm_unbind(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @drm_dev_unregister(ptr noundef %3) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_bo_cache_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_gem_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_plane_create_additional_planes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_kms_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_crtc_disable_at_boot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_open(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 44) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  tail call void @vc4_perfmon_open_file(ptr noundef nonnull %4) #6
  %7 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  store ptr %4, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vc4_close(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vc4_file, ptr %4, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @vc4_v3d_bin_bo_put(ptr noundef %0) #6
  br label %9

9:                                                ; preds = %8, %2
  tail call void @vc4_perfmon_close_file(ptr noundef %4) #6
  tail call void @kfree(ptr noundef %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_debugfs_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_create_object(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_dumb_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_perfmon_open_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_v3d_bin_bo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_perfmon_close_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_submit_cl_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_wait_seqno_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_wait_bo_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_create_bo_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_mmap_bo_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_create_shader_bo_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_get_hang_state_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_get_param_ioctl(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.drm_vc4_get_param, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %1, align 8
  switch i32 %12, label %47 [
    i32 0, label %13
    i32 1, label %23
    i32 2, label %34
    i32 3, label %45
    i32 4, label %45
    i32 5, label %45
    i32 6, label %45
    i32 7, label %45
    i32 8, label %45
  ]

13:                                               ; preds = %11
  %14 = tail call i32 @vc4_v3d_pm_get(ptr noundef %0) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr inbounds %struct.vc4_v3d, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.drm_vc4_get_param, ptr %1, i32 0, i32 2
  store i64 %21, ptr %22, align 8
  tail call void @vc4_v3d_pm_put(ptr noundef %0) #6
  br label %48

23:                                               ; preds = %11
  %24 = tail call i32 @vc4_v3d_pm_get(ptr noundef %0) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr inbounds %struct.vc4_v3d, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.drm_vc4_get_param, ptr %1, i32 0, i32 2
  store i64 %32, ptr %33, align 8
  tail call void @vc4_v3d_pm_put(ptr noundef %0) #6
  br label %48

34:                                               ; preds = %11
  %35 = tail call i32 @vc4_v3d_pm_get(ptr noundef %0) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load ptr, ptr %8, align 4
  %39 = getelementptr inbounds %struct.vc4_v3d, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.drm_vc4_get_param, ptr %1, i32 0, i32 2
  store i64 %43, ptr %44, align 8
  tail call void @vc4_v3d_pm_put(ptr noundef %0) #6
  br label %48

45:                                               ; preds = %11, %11, %11, %11, %11, %11
  %46 = getelementptr inbounds %struct.drm_vc4_get_param, ptr %1, i32 0, i32 2
  store i64 1, ptr %46, align 8
  br label %48

47:                                               ; preds = %11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20, i32 noundef %12) #6
  br label %48

48:                                               ; preds = %47, %45, %37, %34, %26, %23, %16, %13, %7, %3
  %49 = phi i32 [ -22, %47 ], [ -22, %3 ], [ -19, %7 ], [ %14, %13 ], [ %24, %23 ], [ %35, %34 ], [ 0, %45 ], [ 0, %37 ], [ 0, %26 ], [ 0, %16 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_set_tiling_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_get_tiling_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_label_bo_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_gem_madvise_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_perfmon_create_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_perfmon_destroy_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_perfmon_get_values_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_v3d_pm_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_v3d_pm_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!9 = !{i64 4996302}
!10 = !{i64 2155561536}
!11 = !{i64 2155561940}
!12 = !{i64 2155562344}
