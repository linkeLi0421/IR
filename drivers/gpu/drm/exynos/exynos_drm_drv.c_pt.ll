; ModuleID = '/llk/IR/drivers/gpu/drm/exynos/exynos_drm_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_drv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.exynos_drm_driver_info = type { ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.exynos_drm_private = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.wait_queue_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.76 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }

@__UNIQUE_ID_author277 = internal constant [39 x i8] c"author=Inki Dae <inki.dae@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [48 x i8] c"author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author279 = internal constant [46 x i8] c"author=Seung-Woo Kim <sw0312.kim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description280 = internal constant [35 x i8] c"description=Samsung SoC DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@exynos_drm_drivers = internal unnamed_addr constant [15 x %struct.exynos_drm_driver_info] [%struct.exynos_drm_driver_info { ptr @fimd_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr null, i32 1 }, %struct.exynos_drm_driver_info { ptr null, i32 1 }, %struct.exynos_drm_driver_info { ptr @mixer_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr null, i32 1 }, %struct.exynos_drm_driver_info { ptr @dp_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr @dsi_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr @hdmi_driver, i32 1 }, %struct.exynos_drm_driver_info { ptr null, i32 3 }, %struct.exynos_drm_driver_info { ptr null, i32 1 }, %struct.exynos_drm_driver_info { ptr null, i32 5 }, %struct.exynos_drm_driver_info { ptr null, i32 1 }, %struct.exynos_drm_driver_info { ptr null, i32 1 }, %struct.exynos_drm_driver_info { ptr null, i32 1 }, %struct.exynos_drm_driver_info { ptr @exynos_drm_platform_driver, i32 2 }], align 4
@fimd_driver = external dso_local global %struct.platform_driver, align 4
@mixer_driver = external dso_local global %struct.platform_driver, align 4
@dp_driver = external dso_local global %struct.platform_driver, align 4
@dsi_driver = external dso_local global %struct.platform_driver, align 4
@hdmi_driver = external dso_local global %struct.platform_driver, align 4
@exynos_drm_platform_driver = internal global %struct.platform_driver { ptr @exynos_drm_platform_probe, ptr @exynos_drm_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"exynos-drm\00", align 1
@exynos_drm_pm_ops = internal constant %struct.dev_pm_ops { ptr @exynos_drm_suspend, ptr @exynos_drm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@exynos_drm_ops = internal constant %struct.component_master_ops { ptr @exynos_drm_bind, ptr @exynos_drm_unbind }, align 4
@exynos_drm_driver = internal constant %struct.drm_driver { ptr null, ptr @exynos_drm_open, ptr @exynos_drm_postclose, ptr @drm_fb_helper_lastclose, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr @exynos_drm_gem_prime_import, ptr @exynos_drm_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @exynos_drm_gem_dumb_create, ptr null, ptr null, i32 1, i32 1, i32 0, ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 27, ptr @exynos_ioctls, i32 68, ptr @exynos_drm_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@exynos_drm_bind.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"&private->wait\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"exynos\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Samsung SoC DRM\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"20180330\00", align 1
@exynos_ioctls = internal constant [68 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1072667584, i32 32, ptr @exynos_drm_gem_create_ioctl, ptr @.str.5 }, %struct.drm_ioctl_desc { i32 -1072667583, i32 32, ptr @exynos_drm_gem_map_ioctl, ptr @.str.6 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667580, i32 32, ptr @exynos_drm_gem_get_ioctl, ptr @.str.7 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667577, i32 1, ptr null, ptr @.str.8 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1073191840, i32 32, ptr @exynos_g2d_get_ver_ioctl, ptr @.str.9 }, %struct.drm_ioctl_desc { i32 -1071094687, i32 32, ptr @exynos_g2d_set_cmdlist_ioctl, ptr @.str.10 }, %struct.drm_ioctl_desc { i32 -1073191838, i32 32, ptr @exynos_g2d_exec_ioctl, ptr @.str.11 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667520, i32 32, ptr @exynos_drm_ipp_get_res_ioctl, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 -1072143231, i32 32, ptr @exynos_drm_ipp_get_caps_ioctl, ptr @.str.13 }, %struct.drm_ioctl_desc { i32 -1071618942, i32 32, ptr @exynos_drm_ipp_get_limits_ioctl, ptr @.str.14 }, %struct.drm_ioctl_desc { i32 -1071618941, i32 32, ptr @exynos_drm_ipp_commit_ioctl, ptr @.str.15 }], align 4
@exynos_drm_driver_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"EXYNOS_GEM_CREATE\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"EXYNOS_GEM_MAP\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"EXYNOS_GEM_GET\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"EXYNOS_VIDI_CONNECTION\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"EXYNOS_G2D_GET_VER\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"EXYNOS_G2D_SET_CMDLIST\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"EXYNOS_G2D_EXEC\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"EXYNOS_IPP_GET_RESOURCES\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"EXYNOS_IPP_GET_CAPS\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"EXYNOS_IPP_GET_LIMITS\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"EXYNOS_IPP_COMMIT\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_license281], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @g2d_open(ptr nocapture readnone %0, ptr nocapture readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @g2d_close(ptr nocapture %0, ptr nocapture %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #1 {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  %4 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 5
  br label %5

5:                                                ; preds = %16, %0
  %6 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %7 = getelementptr [15 x %struct.exynos_drm_driver_info], ptr @exynos_drm_drivers, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  switch i32 %6, label %16 [
    i32 14, label %11
    i32 8, label %11
  ]

11:                                               ; preds = %10, %10
  %12 = getelementptr inbounds %struct.platform_driver, ptr %8, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #8
  store ptr %13, ptr %2, align 4
  store i32 -1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false) #8
  %14 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #8
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %10, %5
  %17 = add nuw nsw i32 %6, 1
  %18 = icmp eq i32 %17, 15
  br i1 %18, label %39, label %5

19:                                               ; preds = %34, %11
  %20 = phi i32 [ %35, %34 ], [ 14, %11 ]
  %21 = getelementptr [15 x %struct.exynos_drm_driver_info], ptr @exynos_drm_drivers, i32 0, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  switch i32 %20, label %34 [
    i32 14, label %25
    i32 8, label %25
  ]

25:                                               ; preds = %24, %24
  %26 = getelementptr inbounds %struct.platform_driver, ptr %22, i32 0, i32 5
  %27 = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %26) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %32, %29 ], [ %27, %25 ]
  call void @put_device(ptr noundef nonnull %30) #8
  %31 = getelementptr i8, ptr %30, i32 -16
  call void @platform_device_unregister(ptr noundef %31) #8
  %32 = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %26) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %29

34:                                               ; preds = %29, %25, %24, %19
  %35 = add nsw i32 %20, -1
  %36 = icmp eq i32 %20, 0
  br i1 %36, label %37, label %19

37:                                               ; preds = %34
  %38 = ptrtoint ptr %14 to i32
  br label %69

39:                                               ; preds = %47, %16
  %40 = phi i32 [ %48, %47 ], [ 0, %16 ]
  %41 = getelementptr [15 x %struct.exynos_drm_driver_info], ptr @exynos_drm_drivers, i32 0, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = call i32 @__platform_driver_register(ptr noundef nonnull %42, ptr noundef nonnull @__this_module) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %39
  %48 = add nuw nsw i32 %40, 1
  %49 = icmp eq i32 %48, 15
  br i1 %49, label %69, label %39

50:                                               ; preds = %44
  call void @platform_driver_unregister(ptr noundef nonnull @exynos_drm_platform_driver) #8
  call void @platform_driver_unregister(ptr noundef nonnull @hdmi_driver) #8
  call void @platform_driver_unregister(ptr noundef nonnull @dsi_driver) #8
  call void @platform_driver_unregister(ptr noundef nonnull @dp_driver) #8
  call void @platform_driver_unregister(ptr noundef nonnull @mixer_driver) #8
  call void @platform_driver_unregister(ptr noundef nonnull @fimd_driver) #8
  br label %51

51:                                               ; preds = %66, %50
  %52 = phi i32 [ 14, %50 ], [ %67, %66 ]
  %53 = getelementptr [15 x %struct.exynos_drm_driver_info], ptr @exynos_drm_drivers, i32 0, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  switch i32 %52, label %66 [
    i32 14, label %57
    i32 8, label %57
  ]

57:                                               ; preds = %56, %56
  %58 = getelementptr inbounds %struct.platform_driver, ptr %54, i32 0, i32 5
  %59 = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %58) #8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %61, %57
  %62 = phi ptr [ %64, %61 ], [ %59, %57 ]
  call void @put_device(ptr noundef nonnull %62) #8
  %63 = getelementptr i8, ptr %62, i32 -16
  call void @platform_device_unregister(ptr noundef %63) #8
  %64 = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %58) #8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %61

66:                                               ; preds = %61, %57, %56, %51
  %67 = add nsw i32 %52, -1
  %68 = icmp eq i32 %52, 0
  br i1 %68, label %69, label %51

69:                                               ; preds = %66, %47, %37
  %70 = phi i32 [ %38, %37 ], [ %45, %66 ], [ 0, %47 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_drm_platform_driver) #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @hdmi_driver) #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @dsi_driver) #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @dp_driver) #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mixer_driver) #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @fimd_driver) #8
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i32 [ 14, %0 ], [ %17, %16 ]
  %3 = getelementptr [15 x %struct.exynos_drm_driver_info], ptr @exynos_drm_drivers, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  switch i32 %2, label %16 [
    i32 14, label %7
    i32 8, label %7
  ]

7:                                                ; preds = %6, %6
  %8 = getelementptr inbounds %struct.platform_driver, ptr %4, i32 0, i32 5
  %9 = tail call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %8) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %11, %7
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  tail call void @put_device(ptr noundef nonnull %12) #8
  %13 = getelementptr i8, ptr %12, i32 -16
  tail call void @platform_device_unregister(ptr noundef %13) #8
  %14 = tail call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %8) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11

16:                                               ; preds = %11, %7, %6, %1
  %17 = add nsw i32 %2, -1
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %19, label %1

19:                                               ; preds = %16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_drm_platform_probe(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  store i64 4294967295, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %7 = getelementptr [15 x %struct.exynos_drm_driver_info], ptr @exynos_drm_drivers, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp eq i32 %6, 14
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.platform_driver, ptr %8, i32 0, i32 5
  %14 = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %13) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  %18 = phi ptr [ %17, %16 ], [ null, %12 ]
  call void @put_device(ptr noundef %18) #8
  call void @component_match_add_release(ptr noundef %3, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @compare_dev, ptr noundef nonnull %17) #8
  %19 = call ptr @platform_find_device_by_driver(ptr noundef nonnull %17, ptr noundef %13) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %12
  %22 = phi ptr [ null, %12 ], [ %17, %16 ]
  call void @put_device(ptr noundef %22) #8
  br label %23

23:                                               ; preds = %21, %5
  %24 = add nuw nsw i32 %6, 1
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %26, label %5

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 4
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr inttoptr (i32 -19 to ptr), ptr %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = ptrtoint ptr %29 to i32
  br label %35

33:                                               ; preds = %26
  %34 = call i32 @component_master_add_with_match(ptr noundef %3, ptr noundef nonnull @exynos_drm_ops, ptr noundef %29) #8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_drm_platform_remove(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %2, ptr noundef nonnull @exynos_drm_ops) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_find_device_by_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @compare_dev(ptr noundef readnone %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_drm_bind(ptr noundef %0) #1 {
  %2 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @exynos_drm_driver, ptr noundef %0) #8
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %60

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 36) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %58, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.exynos_drm_private, ptr %8, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @exynos_drm_bind.__key) #8
  %12 = getelementptr inbounds %struct.exynos_drm_private, ptr %8, i32 0, i32 5
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %2, ptr %13, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  store ptr %8, ptr %14, align 4
  %15 = tail call i32 @drmm_mode_config_init(ptr noundef %2) #8
  tail call void @exynos_drm_mode_config_init(ptr noundef %2) #8
  %16 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %34, label %20

19:                                               ; preds = %20
  br i1 %18, label %34, label %29

20:                                               ; preds = %20, %10
  %21 = phi ptr [ %27, %20 ], [ %17, %10 ]
  %22 = phi i32 [ %26, %20 ], [ 0, %10 ]
  %23 = getelementptr i8, ptr %21, i32 36
  %24 = load i32, ptr %23, align 4
  %25 = shl nuw i32 1, %24
  %26 = or i32 %25, %22
  %27 = load ptr, ptr %21, align 4
  %28 = icmp eq ptr %27, %16
  br i1 %28, label %19, label %20

29:                                               ; preds = %29, %19
  %30 = phi ptr [ %32, %29 ], [ %17, %19 ]
  %31 = getelementptr i8, ptr %30, i32 44
  store i32 %26, ptr %31, align 4
  %32 = load ptr, ptr %30, align 4
  %33 = icmp eq ptr %32, %16
  br i1 %33, label %34, label %29

34:                                               ; preds = %29, %19, %10
  %35 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @component_bind_all(ptr noundef %36, ptr noundef %2) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 19
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @drm_vblank_init(ptr noundef %2, i32 noundef %41) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  tail call void @drm_mode_config_reset(ptr noundef %2) #8
  tail call void @drm_kms_helper_poll_init(ptr noundef %2) #8
  %45 = tail call i32 @exynos_drm_fbdev_init(ptr noundef %2) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = tail call i32 @drm_dev_register(ptr noundef %2, i32 noundef 0) #8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  tail call void @exynos_drm_fbdev_fini(ptr noundef %2) #8
  br label %51

51:                                               ; preds = %50, %44
  %52 = phi i32 [ %45, %44 ], [ %48, %50 ]
  tail call void @drm_kms_helper_poll_fini(ptr noundef %2) #8
  br label %53

53:                                               ; preds = %51, %39
  %54 = phi i32 [ %42, %39 ], [ %52, %51 ]
  %55 = load ptr, ptr %35, align 4
  tail call void @component_unbind_all(ptr noundef %55, ptr noundef %2) #8
  br label %56

56:                                               ; preds = %53, %34
  %57 = phi i32 [ %37, %34 ], [ %54, %53 ]
  tail call void @drm_mode_config_cleanup(ptr noundef %2) #8
  tail call void @exynos_drm_cleanup_dma(ptr noundef %2) #8
  tail call void @kfree(ptr noundef nonnull %8) #8
  br label %58

58:                                               ; preds = %56, %6
  %59 = phi i32 [ %57, %56 ], [ -12, %6 ]
  tail call void @drm_dev_put(ptr noundef %2) #8
  br label %60

60:                                               ; preds = %58, %47, %4
  %61 = phi i32 [ %5, %4 ], [ %59, %58 ], [ 0, %47 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_drm_unbind(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @drm_dev_unregister(ptr noundef %3) #8
  tail call void @exynos_drm_fbdev_fini(ptr noundef %3) #8
  tail call void @drm_kms_helper_poll_fini(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @component_unbind_all(ptr noundef %5, ptr noundef %3) #8
  tail call void @drm_mode_config_cleanup(ptr noundef %3) #8
  tail call void @exynos_drm_cleanup_dma(ptr noundef %3) #8
  %6 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #8
  store ptr null, ptr %6, align 4
  store ptr null, ptr %2, align 8
  tail call void @drm_dev_put(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_mode_config_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_fbdev_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_fbdev_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_drm_cleanup_dma(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_drm_open(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  store ptr %4, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_drm_postclose(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #8
  store ptr null, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_lastclose(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_gem_prime_import(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exynos_drm_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_gem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_gem_create_ioctl(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_gem_map_ioctl(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_drm_gem_get_ioctl(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @exynos_g2d_get_ver_ioctl(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  ret i32 -19
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @exynos_g2d_set_cmdlist_ioctl(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  ret i32 -19
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @exynos_g2d_exec_ioctl(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  ret i32 -19
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @exynos_drm_ipp_get_res_ioctl(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #5 {
  store i32 0, ptr %1, align 8
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @exynos_drm_ipp_get_caps_ioctl(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  ret i32 -19
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @exynos_drm_ipp_get_limits_ioctl(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  ret i32 -19
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @exynos_drm_ipp_commit_ioctl(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  ret i32 -19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_drm_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %3) #8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos_drm_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
