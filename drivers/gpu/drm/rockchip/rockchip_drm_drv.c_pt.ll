; ModuleID = '/llk/IR/drivers/gpu/drm/rockchip/rockchip_drm_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/rockchip_drm_drv.c"
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
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.79 = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.rockchip_drm_private = type { ptr, %struct.mutex, %struct.drm_mm }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@is_support_iommu = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"*ERROR* Failed to attach iommu device\0A\00", align 1
@num_rockchip_sub_drivers = internal unnamed_addr global i1 false, align 4
@rockchip_sub_drivers = internal global [16 x ptr] zeroinitializer, align 4
@rockchip_drm_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,display-subsystem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author278 = internal constant [42 x i8] c"author=Mark Yao <mark.yao@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description279 = internal constant [32 x i8] c"description=ROCKCHIP DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@vop_platform_driver = external dso_local global %struct.platform_driver, align 4
@rockchip_dp_driver = external dso_local global %struct.platform_driver, align 4
@dw_hdmi_rockchip_pltfm_driver = external dso_local global %struct.platform_driver, align 4
@dw_mipi_dsi_rockchip_driver = external dso_local global %struct.platform_driver, align 4
@inno_hdmi_driver = external dso_local global %struct.platform_driver, align 4
@__this_module = external dso_local global %struct.module, align 64
@rockchip_drm_platform_driver = internal global %struct.platform_driver { ptr @rockchip_drm_platform_probe, ptr @rockchip_drm_platform_remove, ptr @rockchip_drm_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_drm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"rockchip-drm\00", align 1
@rockchip_drm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rockchip_drm_sys_suspend, ptr @rockchip_drm_sys_resume, ptr @rockchip_drm_sys_suspend, ptr @rockchip_drm_sys_resume, ptr @rockchip_drm_sys_suspend, ptr @rockchip_drm_sys_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@rockchip_drm_ops = internal constant %struct.component_master_ops { ptr @rockchip_drm_bind, ptr @rockchip_drm_unbind }, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"no iommu attached for %pOF, using non-iommu buffers\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"*ERROR* missing 'ports' property\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"*ERROR* No available vop found for display-subsystem.\0A\00", align 1
@rockchip_drm_driver = internal constant %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @rockchip_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @rockchip_gem_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 19, ptr null, i32 0, ptr @rockchip_drm_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.9 = private unnamed_addr constant [54 x i8] c"*ERROR* Failed to remove existing framebuffers - %d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"rockchip\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"RockChip Soc DRM\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"20140818\00", align 1
@rockchip_drm_driver_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.13 = private unnamed_addr constant [51 x i8] c"IOMMU context initialized (aperture: %#llx-%#llx)\0A\00", align 1
@rockchip_drm_init_iommu.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"&private->mm_lock\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_license280], section "llvm.metadata"

@__mod_of__rockchip_drm_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @rockchip_drm_dt_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rockchip_drm_dma_attach_device(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i1, ptr @is_support_iommu, align 1
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @iommu_attach_device(ptr noundef %7, ptr noundef %1) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  br label %11

11:                                               ; preds = %10, %4, %2
  %12 = phi i32 [ %8, %10 ], [ 0, %2 ], [ 0, %4 ]
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rockchip_drm_dma_detach_device(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i1, ptr @is_support_iommu, align 1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  tail call void @iommu_detach_device(ptr noundef %7, ptr noundef %1) #6
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rockchip_drm_endpoint_is_subdriver(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %2) #6
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @of_node_put(ptr noundef nonnull %2) #6
  br label %30

7:                                                ; preds = %4
  %8 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %2) #6
  tail call void @of_node_put(ptr noundef nonnull %2) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load i1, ptr @num_rockchip_sub_drivers, align 4
  %16 = select i1 %15, i32 5, i32 0
  br i1 %15, label %17, label %29

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %12, i32 -20
  br label %23

19:                                               ; preds = %10
  tail call void @platform_device_put(ptr noundef nonnull %8) #6
  br label %30

20:                                               ; preds = %23
  %21 = add nuw nsw i32 %24, 1
  %22 = icmp eq i32 %21, %16
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ 0, %17 ], [ %21, %20 ]
  %25 = getelementptr [16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %18
  br i1 %27, label %28, label %20

28:                                               ; preds = %23
  tail call void @platform_device_put(ptr noundef nonnull %8) #6
  br label %30

29:                                               ; preds = %20, %14
  tail call void @platform_device_put(ptr noundef nonnull %8) #6
  br label %30

30:                                               ; preds = %29, %28, %19, %7, %6, %1
  %31 = phi i32 [ 1, %28 ], [ 0, %29 ], [ 0, %19 ], [ -19, %6 ], [ -19, %1 ], [ 0, %7 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  store ptr @vop_platform_driver, ptr @rockchip_sub_drivers, align 4
  store ptr @rockchip_dp_driver, ptr getelementptr inbounds ([16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 1), align 4
  store ptr @dw_hdmi_rockchip_pltfm_driver, ptr getelementptr inbounds ([16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 2), align 4
  store ptr @dw_mipi_dsi_rockchip_driver, ptr getelementptr inbounds ([16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 3), align 4
  store i1 true, ptr @num_rockchip_sub_drivers, align 4
  store ptr @inno_hdmi_driver, ptr getelementptr inbounds ([16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 4), align 4
  %1 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @rockchip_sub_drivers, i32 noundef 5, ptr noundef nonnull @__this_module) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_drm_platform_driver, ptr noundef nonnull @__this_module) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i1, ptr @num_rockchip_sub_drivers, align 4
  %8 = select i1 %7, i32 5, i32 0
  tail call void @platform_unregister_drivers(ptr noundef nonnull @rockchip_sub_drivers, i32 noundef %8) #6
  br label %9

9:                                                ; preds = %6, %3, %0
  %10 = phi i32 [ %4, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_drm_platform_driver) #6
  %1 = load i1, ptr @num_rockchip_sub_drivers, align 4
  %2 = select i1 %1, i32 5, i32 0
  tail call void @platform_unregister_drivers(ptr noundef nonnull @rockchip_sub_drivers, i32 noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_drm_platform_probe(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %101, label %9

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #6, !annotation !8
  %10 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #6
  %11 = icmp ne i32 %10, 0
  %12 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #6
  %13 = icmp eq ptr %12, null
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %47, label %15

15:                                               ; preds = %34, %9
  %16 = phi ptr [ %39, %34 ], [ %12, %9 ]
  %17 = phi i32 [ %36, %34 ], [ 0, %9 ]
  %18 = phi i1 [ %35, %34 ], [ false, %9 ]
  %19 = getelementptr inbounds %struct.device_node, ptr %16, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = call zeroext i1 @of_device_is_available(ptr noundef %20) #6
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #6, !annotation !8
  %24 = call i32 @__of_parse_phandle_with_args(ptr noundef %23, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #6
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %3, align 4
  %27 = select i1 %25, ptr %26, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %27) #6
  br i1 %30, label %33, label %31

31:                                               ; preds = %29, %22
  %32 = load ptr, ptr %19, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %5, i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef %32) #6
  store i1 true, ptr @is_support_iommu, align 1
  br label %33

33:                                               ; preds = %31, %29
  call void @of_node_put(ptr noundef %27) #6
  br label %34

34:                                               ; preds = %33, %15
  %35 = phi i1 [ true, %33 ], [ %18, %15 ]
  call void @of_node_put(ptr noundef nonnull %16) #6
  %36 = add i32 %17, 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #6, !annotation !8
  %37 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef %36, ptr noundef nonnull %4) #6
  %38 = icmp ne i32 %37, 0
  %39 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #6
  %40 = icmp eq ptr %39, null
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %42, label %15

42:                                               ; preds = %34
  %43 = icmp eq i32 %36, 0
  %44 = xor i1 %35, true
  %45 = select i1 %43, i1 true, i1 %44
  %46 = select i1 %43, ptr @.str.7, ptr @.str.8
  br i1 %45, label %47, label %49

47:                                               ; preds = %42, %9
  %48 = phi ptr [ @.str.7, %9 ], [ %46, %42 ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull %48) #6
  br label %101

49:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store ptr null, ptr %2, align 4
  %50 = load i1, ptr @num_rockchip_sub_drivers, align 4
  br i1 %50, label %51, label %82

51:                                               ; preds = %63, %49
  %52 = phi i32 [ %64, %63 ], [ 0, %49 ]
  %53 = getelementptr [16 x ptr], ptr @rockchip_sub_drivers, i32 0, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.platform_driver, ptr %54, i32 0, i32 5
  %56 = call ptr @platform_find_device_by_driver(ptr noundef null, ptr noundef %55) #6
  call void @put_device(ptr noundef null) #6
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %58, %51
  %59 = phi ptr [ %61, %58 ], [ %56, %51 ]
  %60 = call ptr @device_link_add(ptr noundef %5, ptr noundef nonnull %59, i32 noundef 1) #6
  call void @component_match_add_release(ptr noundef %5, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @compare_dev, ptr noundef nonnull %59) #6
  %61 = call ptr @platform_find_device_by_driver(ptr noundef nonnull %59, ptr noundef %55) #6
  call void @put_device(ptr noundef nonnull %59) #6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %58

63:                                               ; preds = %58, %51
  %64 = add nuw nsw i32 %52, 1
  %65 = load i1, ptr @num_rockchip_sub_drivers, align 4
  %66 = select i1 %65, i32 5, i32 0
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %51, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %2, align 4
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 10, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %82, label %75

75:                                               ; preds = %75, %71
  %76 = phi ptr [ %78, %75 ], [ %73, %71 ]
  %77 = getelementptr i8, ptr %76, i32 -4
  call void @device_link_del(ptr noundef %77) #6
  %78 = load ptr, ptr %76, align 4
  %79 = icmp eq ptr %78, %72
  br i1 %79, label %80, label %75

80:                                               ; preds = %75
  %81 = load ptr, ptr %2, align 4
  br label %82

82:                                               ; preds = %80, %71, %68, %49
  %83 = phi ptr [ %69, %68 ], [ %81, %80 ], [ %69, %71 ], [ null, %49 ]
  %84 = icmp eq ptr %83, null
  %85 = select i1 %84, ptr inttoptr (i32 -19 to ptr), ptr %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = ptrtoint ptr %85 to i32
  br label %101

89:                                               ; preds = %82
  %90 = call i32 @component_master_add_with_match(ptr noundef %5, ptr noundef nonnull @rockchip_drm_ops, ptr noundef %85) #6
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 10, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %93
  br i1 %95, label %101, label %96

96:                                               ; preds = %96, %92
  %97 = phi ptr [ %99, %96 ], [ %94, %92 ]
  %98 = getelementptr i8, ptr %97, i32 -4
  call void @device_link_del(ptr noundef %98) #6
  %99 = load ptr, ptr %97, align 4
  %100 = icmp eq ptr %99, %93
  br i1 %100, label %101, label %96

101:                                              ; preds = %96, %92, %89, %87, %47, %1
  %102 = phi i32 [ %88, %87 ], [ 0, %89 ], [ %90, %92 ], [ -19, %1 ], [ -19, %47 ], [ %90, %96 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_drm_platform_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %2, ptr noundef nonnull @rockchip_drm_ops) #6
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 10, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %9, %6 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -4
  tail call void @device_link_del(ptr noundef %8) #6
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_drm_platform_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @drm_atomic_helper_shutdown(ptr noundef nonnull %3) #6
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_find_device_by_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @compare_dev(ptr noundef readnone %0, ptr noundef readnone %1) #5 {
  %3 = icmp eq ptr %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_drm_bind(ptr noundef %0) #0 {
  %2 = tail call i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, ptr noundef nonnull @rockchip_drm_driver) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef %2) #6
  br label %60

5:                                                ; preds = %1
  %6 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @rockchip_drm_driver, ptr noundef %0) #6
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %60

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %6, ptr %11, align 8
  %12 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef 176, i32 noundef 3520) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  store ptr %14, ptr %17, align 4
  %18 = load i1, ptr @is_support_iommu, align 1
  br i1 %18, label %33, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #6
  store ptr %20, ptr %14, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %58, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.iommu_domain, ptr %20, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.iommu_domain, ptr %20, i32 0, i32 5, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = zext i32 %27 to i64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13, i64 noundef %25, i64 noundef %28) #6
  %29 = getelementptr inbounds %struct.rockchip_drm_private, ptr %14, i32 0, i32 2
  %30 = sub nsw i64 1, %25
  %31 = add nsw i64 %30, %28
  tail call void @drm_mm_init(ptr noundef %29, i64 noundef %25, i64 noundef %31) #6
  %32 = getelementptr inbounds %struct.rockchip_drm_private, ptr %14, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %32, ptr noundef nonnull @.str.14, ptr noundef nonnull @rockchip_drm_init_iommu.__key) #6
  br label %33

33:                                               ; preds = %22, %16
  %34 = tail call i32 @drmm_mode_config_init(ptr noundef %6) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  tail call void @rockchip_drm_mode_config_init(ptr noundef %6) #6
  %37 = tail call i32 @component_bind_all(ptr noundef %0, ptr noundef %6) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 19
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @drm_vblank_init(ptr noundef %6, i32 noundef %41) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  tail call void @drm_mode_config_reset(ptr noundef %6) #6
  tail call void @drm_kms_helper_poll_init(ptr noundef %6) #6
  %45 = tail call i32 @drm_dev_register(ptr noundef %6, i32 noundef 0) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void @drm_fbdev_generic_setup(ptr noundef %6, i32 noundef 0) #6
  br label %60

48:                                               ; preds = %44
  tail call void @drm_kms_helper_poll_fini(ptr noundef %6) #6
  br label %49

49:                                               ; preds = %48, %39
  %50 = phi i32 [ %42, %39 ], [ %45, %48 ]
  tail call void @component_unbind_all(ptr noundef %0, ptr noundef %6) #6
  br label %51

51:                                               ; preds = %49, %36, %33
  %52 = phi i32 [ %34, %33 ], [ %37, %36 ], [ %50, %49 ]
  %53 = load i1, ptr @is_support_iommu, align 1
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %17, align 4
  %56 = getelementptr inbounds %struct.rockchip_drm_private, ptr %55, i32 0, i32 2
  tail call void @drm_mm_takedown(ptr noundef %56) #6
  %57 = load ptr, ptr %55, align 8
  tail call void @iommu_domain_free(ptr noundef %57) #6
  br label %58

58:                                               ; preds = %54, %51, %19, %10
  %59 = phi i32 [ -12, %10 ], [ -12, %19 ], [ %52, %51 ], [ %52, %54 ]
  tail call void @drm_dev_put(ptr noundef %6) #6
  br label %60

60:                                               ; preds = %58, %47, %8, %4
  %61 = phi i32 [ %2, %4 ], [ %9, %8 ], [ %59, %58 ], [ 0, %47 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_drm_unbind(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @drm_dev_unregister(ptr noundef %3) #6
  tail call void @drm_kms_helper_poll_fini(ptr noundef %3) #6
  tail call void @drm_atomic_helper_shutdown(ptr noundef %3) #6
  tail call void @component_unbind_all(ptr noundef %0, ptr noundef %3) #6
  %4 = load i1, ptr @is_support_iommu, align 1
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rockchip_drm_private, ptr %7, i32 0, i32 2
  tail call void @drm_mm_takedown(ptr noundef %8) #6
  %9 = load ptr, ptr %7, align 8
  tail call void @iommu_domain_free(ptr noundef %9) #6
  br label %10

10:                                               ; preds = %5, %1
  tail call void @drm_dev_put(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_drm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_gem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #2

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
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_drm_sys_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %3) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_drm_sys_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %3) #6
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }

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
