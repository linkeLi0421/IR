; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_drv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.77 = type { i32, ptr }
%struct.etnaviv_drm_private = type { i32, [4 x ptr], i32, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.etnaviv_file_private = type { ptr, [4 x %struct.drm_sched_entity] }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_vma_offset_manager = type { %struct.rwlock_t, %struct.drm_mm }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.drm_etnaviv_param = type { i32, i32, i64 }
%struct.drm_etnaviv_gem_new = type { i64, i32, i32 }
%struct.drm_etnaviv_gem_info = type { i32, i32, i64 }
%struct.drm_etnaviv_gem_cpu_prep = type { i32, i32, %struct.drm_etnaviv_timespec }
%struct.drm_etnaviv_timespec = type { i64, i64 }
%struct.drm_etnaviv_gem_cpu_fini = type { i32, i32 }
%struct.drm_etnaviv_wait_fence = type { i32, i32, i32, i32, %struct.drm_etnaviv_timespec }
%struct.drm_etnaviv_gem_userptr = type { i64, i64, i32, i32 }
%struct.drm_etnaviv_gem_wait = type { i32, i32, i32, i32, %struct.drm_etnaviv_timespec }

@__UNIQUE_ID_author282 = internal constant [55 x i8] c"author=Christian Gmeiner <christian.gmeiner@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author283 = internal constant [49 x i8] c"author=Russell King <rmk+kernel@armlinux.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_author284 = internal constant [44 x i8] c"author=Lucas Stach <l.stach@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description285 = internal constant [31 x i8] c"description=etnaviv DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license286 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias287 = internal constant [23 x i8] c"alias=platform:etnaviv\00", section ".modinfo", align 1
@etnaviv_gpu_driver = external dso_local global %struct.platform_driver, align 4
@__this_module = external dso_local global %struct.module, align 64
@etnaviv_platform_driver = internal global %struct.platform_driver { ptr @etnaviv_pdev_probe, ptr @etnaviv_pdev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"vivante,gc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"etnaviv\00", align 1
@etnaviv_drm = internal unnamed_addr global ptr null, align 4
@etnaviv_master_ops = internal constant %struct.component_master_ops { ptr @etnaviv_bind, ptr @etnaviv_unbind }, align 4
@etnaviv_drm_driver = internal constant %struct.drm_driver { ptr null, ptr @etnaviv_open, ptr @etnaviv_postclose, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @etnaviv_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @etnaviv_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr null, ptr null, ptr null, i32 1, i32 3, i32 0, ptr @.str.1, ptr @.str.5, ptr @.str.6, i32 9, ptr @etnaviv_ioctls, i32 12, ptr @fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to allocate private data\0A\00", align 1
@etnaviv_bind.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"&priv->gem_lock\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to create cmdbuf suballocator\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"etnaviv DRM\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"20151214\00", align 1
@etnaviv_ioctls = internal constant [12 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1072667584, i32 32, ptr @etnaviv_ioctl_get_param, ptr @.str.18 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667582, i32 32, ptr @etnaviv_ioctl_gem_new, ptr @.str.19 }, %struct.drm_ioctl_desc { i32 -1072667581, i32 32, ptr @etnaviv_ioctl_gem_info, ptr @.str.20 }, %struct.drm_ioctl_desc { i32 1075340356, i32 32, ptr @etnaviv_ioctl_gem_cpu_prep, ptr @.str.21 }, %struct.drm_ioctl_desc { i32 1074291781, i32 32, ptr @etnaviv_ioctl_gem_cpu_fini, ptr @.str.22 }, %struct.drm_ioctl_desc { i32 -1068997562, i32 32, ptr @etnaviv_ioctl_gem_submit, ptr @.str.23 }, %struct.drm_ioctl_desc { i32 1075864647, i32 32, ptr @etnaviv_ioctl_wait_fence, ptr @.str.24 }, %struct.drm_ioctl_desc { i32 -1072143288, i32 32, ptr @etnaviv_ioctl_gem_userptr, ptr @.str.25 }, %struct.drm_ioctl_desc { i32 1075864649, i32 32, ptr @etnaviv_ioctl_gem_wait, ptr @.str.26 }, %struct.drm_ioctl_desc { i32 -1068997558, i32 32, ptr @etnaviv_ioctl_pm_query_dom, ptr @.str.27 }, %struct.drm_ioctl_desc { i32 -1068735413, i32 32, ptr @etnaviv_ioctl_pm_query_sig, ptr @.str.28 }], align 4
@fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@etnaviv_debugfs_list = internal global [5 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.7, ptr @show_each_gpu, i32 0, ptr @etnaviv_gpu_debugfs }, %struct.drm_info_list { ptr @.str.8, ptr @show_unlocked, i32 0, ptr @etnaviv_gem_show }, %struct.drm_info_list { ptr @.str.9, ptr @show_unlocked, i32 0, ptr @etnaviv_mm_show }, %struct.drm_info_list { ptr @.str.10, ptr @show_each_gpu, i32 0, ptr @etnaviv_mmu_show }, %struct.drm_info_list { ptr @.str.11, ptr @show_each_gpu, i32 0, ptr @etnaviv_ring_show }], align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"gem\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mmu\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ring\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Active Objects (%s):\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Ring Buffer (%s): \00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"virt %p - phys 0x%llx - free 0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"\090x%p: \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"ETNAVIV_GET_PARAM\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"ETNAVIV_GEM_NEW\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"ETNAVIV_GEM_INFO\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"ETNAVIV_GEM_CPU_PREP\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"ETNAVIV_GEM_CPU_FINI\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"ETNAVIV_GEM_SUBMIT\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"ETNAVIV_WAIT_FENCE\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"ETNAVIV_GEM_USERPTR\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"ETNAVIV_GEM_WAIT\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"ETNAVIV_PM_QUERY_DOM\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"ETNAVIV_PM_QUERY_SIG\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_alias287, ptr @__UNIQUE_ID_author282, ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_author284, ptr @__UNIQUE_ID_description285, ptr @__UNIQUE_ID_license286], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  tail call void @etnaviv_validate_init() #9
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @etnaviv_gpu_driver, ptr noundef nonnull @__this_module) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %27

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @etnaviv_platform_driver, ptr noundef nonnull @__this_module) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %20, %6
  %10 = phi ptr [ %21, %20 ], [ %7, %6 ]
  %11 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %10) #9
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.1, i32 noundef -1) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @platform_device_add(ptr noundef nonnull %13) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @platform_device_put(ptr noundef nonnull %13) #9
  br label %23

19:                                               ; preds = %15
  store ptr %13, ptr @etnaviv_drm, align 4
  tail call void @of_node_put(ptr noundef nonnull %10) #9
  br label %27

20:                                               ; preds = %9
  %21 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull @.str) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %9

23:                                               ; preds = %18, %12
  %24 = phi i32 [ %16, %18 ], [ -12, %12 ]
  tail call void @of_node_put(ptr noundef nonnull %10) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @etnaviv_platform_driver) #9
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i32 [ %4, %3 ], [ %24, %23 ]
  tail call void @platform_driver_unregister(ptr noundef nonnull @etnaviv_gpu_driver) #9
  br label %27

27:                                               ; preds = %25, %20, %19, %6, %0
  %28 = phi i32 [ %26, %25 ], [ %1, %0 ], [ 0, %19 ], [ 0, %6 ], [ 0, %20 ]
  ret i32 %28
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  %1 = load ptr, ptr @etnaviv_drm, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @etnaviv_platform_driver) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @etnaviv_gpu_driver) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_validate_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_pdev_probe(ptr noundef %0) #3 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %24

10:                                               ; preds = %1
  %11 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %20, %10
  %14 = phi ptr [ %22, %20 ], [ %11, %10 ]
  %15 = phi ptr [ %21, %20 ], [ null, %10 ]
  %16 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %14) #9
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = icmp eq ptr %15, null
  %19 = select i1 %18, ptr %14, ptr %15
  call void @drm_of_component_match_add(ptr noundef %3, ptr noundef nonnull %2, ptr noundef nonnull @compare_of, ptr noundef nonnull %14) #9
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %22 = call ptr @of_find_compatible_node(ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull @.str) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %13

24:                                               ; preds = %24, %7
  %25 = phi ptr [ %29, %24 ], [ %8, %7 ]
  %26 = phi i32 [ %27, %24 ], [ 0, %7 ]
  call void @component_match_add_release(ptr noundef %3, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @compare_str, ptr noundef nonnull %25) #9
  %27 = add i32 %26, 1
  %28 = getelementptr ptr, ptr %5, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %24

31:                                               ; preds = %24, %20, %10, %7
  %32 = phi ptr [ null, %10 ], [ null, %7 ], [ %21, %20 ], [ null, %24 ]
  %33 = call i32 @dma_set_mask(ptr noundef %3, i64 noundef 1099511627775) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef 4294967295) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = icmp eq ptr %32, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = call i32 @of_dma_configure_id(ptr noundef %3, ptr noundef nonnull %32, i1 noundef zeroext true, ptr noundef null) #9
  br label %42

42:                                               ; preds = %40, %38
  %43 = load ptr, ptr %2, align 4
  %44 = call i32 @component_master_add_with_match(ptr noundef %3, ptr noundef nonnull @etnaviv_master_ops, ptr noundef %43) #9
  br label %45

45:                                               ; preds = %42, %35, %31
  %46 = phi i32 [ %44, %42 ], [ -19, %35 ], [ -19, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_pdev_remove(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %2, ptr noundef nonnull @etnaviv_master_ops) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_of_component_match_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #4 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @compare_str(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %1)
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_bind(ptr noundef %0) #3 {
  %2 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @etnaviv_drm_driver, ptr noundef %0) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %79

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 60) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #11
  br label %77

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  store ptr %8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 -2147483648, ptr %14, align 4
  br label %17

17:                                               ; preds = %16, %11
  %18 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %8, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @etnaviv_bind.__key) #9
  %19 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %8, i32 0, i32 6
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %8, i32 0, i32 6, i32 1
  store ptr %19, ptr %20, align 8
  store i32 0, ptr %8, align 8
  %21 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %8, i32 0, i32 2
  store i32 1076418, ptr %21, align 4
  %22 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @etnaviv_cmdbuf_suballoc_new(ptr noundef %23) #9
  %25 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %8, i32 0, i32 3
  store ptr %24, ptr %25, align 8
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.4) #11
  %29 = load ptr, ptr %25, align 8
  %30 = ptrtoint ptr %29 to i32
  br label %75

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %2, ptr %32, align 8
  %33 = tail call i32 @component_bind_all(ptr noundef %0, ptr noundef %2) #9
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %72, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr %struct.etnaviv_drm_private, ptr %36, i32 0, i32 1, i32 0
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @etnaviv_gpu_init(ptr noundef nonnull %38) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store ptr null, ptr %37, align 4
  br label %44

44:                                               ; preds = %43, %40, %35
  %45 = getelementptr %struct.etnaviv_drm_private, ptr %36, i32 0, i32 1, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @etnaviv_gpu_init(ptr noundef nonnull %46) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store ptr null, ptr %45, align 4
  br label %52

52:                                               ; preds = %51, %48, %44
  %53 = getelementptr %struct.etnaviv_drm_private, ptr %36, i32 0, i32 1, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @etnaviv_gpu_init(ptr noundef nonnull %54) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store ptr null, ptr %53, align 4
  br label %60

60:                                               ; preds = %59, %56, %52
  %61 = getelementptr %struct.etnaviv_drm_private, ptr %36, i32 0, i32 1, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @etnaviv_gpu_init(ptr noundef nonnull %62) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store ptr null, ptr %61, align 4
  br label %68

68:                                               ; preds = %67, %64, %60
  %69 = tail call i32 @drm_dev_register(ptr noundef %2, i32 noundef 0) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  tail call void @component_unbind_all(ptr noundef %0, ptr noundef %2) #9
  br label %72

72:                                               ; preds = %71, %31
  %73 = phi i32 [ %33, %31 ], [ %69, %71 ]
  %74 = load ptr, ptr %25, align 8
  tail call void @etnaviv_cmdbuf_suballoc_destroy(ptr noundef %74) #9
  br label %75

75:                                               ; preds = %72, %27
  %76 = phi i32 [ %30, %27 ], [ %73, %72 ]
  tail call void @kfree(ptr noundef nonnull %8) #9
  br label %77

77:                                               ; preds = %75, %10
  %78 = phi i32 [ %76, %75 ], [ -12, %10 ]
  tail call void @drm_dev_put(ptr noundef %2) #9
  br label %79

79:                                               ; preds = %77, %68, %4
  %80 = phi i32 [ %5, %4 ], [ %78, %77 ], [ 0, %68 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @etnaviv_unbind(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @drm_dev_unregister(ptr noundef %3) #9
  tail call void @component_unbind_all(ptr noundef %0, ptr noundef %3) #9
  %6 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @etnaviv_cmdbuf_suballoc_destroy(ptr noundef %7) #9
  store ptr null, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #9
  tail call void @drm_dev_put(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_cmdbuf_suballoc_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_cmdbuf_suballoc_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 424) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @etnaviv_iommu_context_init(ptr noundef %11, ptr noundef %13) #9
  store ptr %14, ptr %7, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = getelementptr %struct.etnaviv_drm_private, ptr %5, i32 0, i32 1, i32 0
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %21

20:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %7) #9
  br label %51

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.etnaviv_gpu, ptr %18, i32 0, i32 7
  store ptr %22, ptr %3, align 4
  %23 = getelementptr %struct.etnaviv_file_private, ptr %7, i32 0, i32 1, i32 0
  %24 = call i32 @drm_sched_entity_init(ptr noundef %23, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null) #9
  br label %25

25:                                               ; preds = %21, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %26 = getelementptr %struct.etnaviv_drm_private, ptr %5, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.etnaviv_gpu, ptr %27, i32 0, i32 7
  store ptr %30, ptr %3, align 4
  %31 = getelementptr %struct.etnaviv_file_private, ptr %7, i32 0, i32 1, i32 1
  %32 = call i32 @drm_sched_entity_init(ptr noundef %31, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null) #9
  br label %33

33:                                               ; preds = %29, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %34 = getelementptr %struct.etnaviv_drm_private, ptr %5, i32 0, i32 1, i32 2
  %35 = load ptr, ptr %34, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.etnaviv_gpu, ptr %35, i32 0, i32 7
  store ptr %38, ptr %3, align 4
  %39 = getelementptr %struct.etnaviv_file_private, ptr %7, i32 0, i32 1, i32 2
  %40 = call i32 @drm_sched_entity_init(ptr noundef %39, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null) #9
  br label %41

41:                                               ; preds = %37, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %42 = getelementptr %struct.etnaviv_drm_private, ptr %5, i32 0, i32 1, i32 3
  %43 = load ptr, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.etnaviv_gpu, ptr %43, i32 0, i32 7
  store ptr %46, ptr %3, align 4
  %47 = getelementptr %struct.etnaviv_file_private, ptr %7, i32 0, i32 1, i32 3
  %48 = call i32 @drm_sched_entity_init(ptr noundef %47, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null) #9
  br label %49

49:                                               ; preds = %45, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %50 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  store ptr %7, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %20, %2
  %52 = phi i32 [ 0, %49 ], [ -12, %20 ], [ -12, %2 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @etnaviv_postclose(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.etnaviv_drm_private, ptr %4, i32 0, i32 1, i32 0
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr %struct.etnaviv_file_private, ptr %6, i32 0, i32 1, i32 0
  tail call void @drm_sched_entity_destroy(ptr noundef %11) #9
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr %struct.etnaviv_drm_private, ptr %4, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.etnaviv_file_private, ptr %6, i32 0, i32 1, i32 1
  tail call void @drm_sched_entity_destroy(ptr noundef %17) #9
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr %struct.etnaviv_drm_private, ptr %4, i32 0, i32 1, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.etnaviv_file_private, ptr %6, i32 0, i32 1, i32 2
  tail call void @drm_sched_entity_destroy(ptr noundef %23) #9
  br label %24

24:                                               ; preds = %22, %18
  %25 = getelementptr %struct.etnaviv_drm_private, ptr %4, i32 0, i32 1, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.etnaviv_file_private, ptr %6, i32 0, i32 1, i32 3
  tail call void @drm_sched_entity_destroy(ptr noundef %29) #9
  br label %30

30:                                               ; preds = %28, %24
  %31 = load ptr, ptr %6, align 8
  tail call void @etnaviv_iommu_context_put(ptr noundef %31) #9
  tail call void @kfree(ptr noundef %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @etnaviv_debugfs_init(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @etnaviv_debugfs_list, i32 noundef 5, ptr noundef %3, ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_iommu_context_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_each_gpu(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_info_list, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.etnaviv_drm_private, ptr %9, i32 0, i32 1, i32 0
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = tail call i32 %13(ptr noundef nonnull %15, ptr noundef %0) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %17, %2
  %21 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %22 = getelementptr %struct.etnaviv_drm_private, ptr %9, i32 0, i32 1, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = tail call i32 %13(ptr noundef nonnull %23, ptr noundef %0) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %26, %25 ], [ %21, %20 ]
  %30 = getelementptr %struct.etnaviv_drm_private, ptr %9, i32 0, i32 1, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = tail call i32 %13(ptr noundef nonnull %31, ptr noundef %0) #9
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33, %28
  %37 = phi i32 [ %34, %33 ], [ %29, %28 ]
  %38 = getelementptr %struct.etnaviv_drm_private, ptr %9, i32 0, i32 1, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = tail call i32 %13(ptr noundef nonnull %39, ptr noundef %0) #9
  br label %43

43:                                               ; preds = %41, %36, %33, %25, %17
  %44 = phi i32 [ %18, %17 ], [ %26, %25 ], [ %34, %33 ], [ %42, %41 ], [ %37, %36 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gpu_debugfs(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_unlocked(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_info_list, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %7, ptr noundef %0) #9
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_show(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void @etnaviv_gem_describe_objects(ptr noundef %4, ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_mm_show(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = alloca %struct.drm_printer, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !8
  %4 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %4, align 4, !alias.scope !8
  %5 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %1, ptr %5, align 4, !alias.scope !8
  %6 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %6, align 4, !alias.scope !8
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 33
  %8 = load ptr, ptr %7, align 4
  tail call void @_raw_read_lock(ptr noundef %8) #9
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %9, i32 0, i32 1
  call void @drm_mm_print(ptr noundef %10, ptr noundef nonnull %3) #9
  %11 = load ptr, ptr %7, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #9, !srcloc !12
  %12 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %11) #9, !srcloc !13
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !15
  br label %16

16:                                               ; preds = %15, %2
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_mmu_show(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.drm_printer, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !17
  %4 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %4, align 4, !alias.scope !17
  %5 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %1, ptr %5, align 4, !alias.scope !17
  %6 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %6, align 4, !alias.scope !17
  %7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ %10, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 30
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %18) #9, !srcloc !12
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 1, ptr nonnull elementtype(i32) %18) #9, !srcloc !20
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !21

24:                                               ; preds = %20
  %25 = add i32 %22, 1
  %26 = or i32 %25, %22
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %30, label %28, !prof !22

28:                                               ; preds = %24, %20
  %29 = phi i32 [ 2, %20 ], [ 1, %24 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %18, i32 noundef %29) #9
  br label %30

30:                                               ; preds = %28, %24
  tail call void @mutex_unlock(ptr noundef %16) #9
  %31 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %18, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %31) #9
  %32 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %18, i32 0, i32 4
  call void @drm_mm_print(ptr noundef %32, ptr noundef nonnull %3) #9
  call void @mutex_unlock(ptr noundef %31) #9
  call void @etnaviv_iommu_context_put(ptr noundef nonnull %18) #9
  br label %34

33:                                               ; preds = %14
  tail call void @mutex_unlock(ptr noundef %16) #9
  br label %34

34:                                               ; preds = %33, %30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_ring_show(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %6, %2 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10
  %14 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @etnaviv_cmdbuf_get_pa(ptr noundef %13) #9
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 %15, %21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef %17, i64 noundef %19, i32 noundef %22) #9
  %23 = icmp ult i32 %15, 4
  br i1 %23, label %41, label %24

24:                                               ; preds = %10
  %25 = lshr i32 %15, 2
  br label %26

26:                                               ; preds = %36, %24
  %27 = phi i32 [ %39, %36 ], [ 0, %24 ]
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %27, 3
  %30 = icmp eq i32 %29, 0
  %31 = and i1 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.15) #9
  br label %33

33:                                               ; preds = %32, %26
  br i1 %30, label %34, label %36

34:                                               ; preds = %33
  %35 = getelementptr i32, ptr %17, i32 %27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef %35) #9
  br label %36

36:                                               ; preds = %34, %33
  %37 = getelementptr i32, ptr %17, i32 %27
  %38 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %38) #9
  %39 = add nuw nsw i32 %27, 1
  %40 = icmp eq i32 %39, %25
  br i1 %40, label %41, label %26

41:                                               ; preds = %36, %10
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.15) #9
  tail call void @mutex_unlock(ptr noundef %12) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_gem_describe_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_print(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_get_pa(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_get_param(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = load i32, ptr %1, align 8
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.etnaviv_drm_private, ptr %8, i32 0, i32 1, i32 %4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.drm_etnaviv_param, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_etnaviv_param, ptr %1, i32 0, i32 2
  %16 = tail call i32 @etnaviv_gpu_get_param(ptr noundef nonnull %10, i32 noundef %14, ptr noundef %15) #9
  br label %17

17:                                               ; preds = %12, %6, %3
  %18 = phi i32 [ %16, %12 ], [ -22, %3 ], [ -6, %6 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_gem_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drm_etnaviv_gem_new, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -1507329
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load i64, ptr %1, align 8
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.drm_etnaviv_gem_new, ptr %1, i32 0, i32 2
  %12 = tail call i32 @etnaviv_gem_new_handle(ptr noundef %0, ptr noundef %2, i32 noundef %10, i32 noundef %5, ptr noundef %11) #9
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_gem_info(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drm_etnaviv_gem_info, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 8
  %9 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %8) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.drm_etnaviv_gem_info, ptr %1, i32 0, i32 2
  %13 = tail call i32 @etnaviv_gem_mmap_offset(ptr noundef nonnull %9, ptr noundef %12) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #9, !srcloc !12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #9, !srcloc !24
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = icmp sgt i32 %15, 0
  br i1 %18, label %21, label %19, !prof !22

19:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #9
  br label %21

20:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  tail call void @drm_gem_object_free(ptr noundef nonnull %9) #9
  br label %21

21:                                               ; preds = %20, %19, %17, %7, %3
  %22 = phi i32 [ -22, %3 ], [ -2, %7 ], [ %13, %17 ], [ %13, %19 ], [ %13, %20 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_gem_cpu_prep(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drm_etnaviv_gem_cpu_prep, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 8
  %9 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %8) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %4, align 4
  %13 = getelementptr inbounds %struct.drm_etnaviv_gem_cpu_prep, ptr %1, i32 0, i32 2
  %14 = tail call i32 @etnaviv_gem_cpu_prep(ptr noundef nonnull %9, i32 noundef %12, ptr noundef %13) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #9, !srcloc !12
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #9, !srcloc !24
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %22, label %20, !prof !22

20:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #9
  br label %22

21:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  tail call void @drm_gem_object_free(ptr noundef nonnull %9) #9
  br label %22

22:                                               ; preds = %21, %20, %18, %7, %3
  %23 = phi i32 [ -22, %3 ], [ -2, %7 ], [ %14, %18 ], [ %14, %20 ], [ %14, %21 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_gem_cpu_fini(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drm_etnaviv_gem_cpu_fini, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 4
  %9 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %8) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @etnaviv_gem_cpu_fini(ptr noundef nonnull %9) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #9, !srcloc !12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #9, !srcloc !24
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !22

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #9
  br label %20

19:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  tail call void @drm_gem_object_free(ptr noundef nonnull %9) #9
  br label %20

20:                                               ; preds = %19, %18, %16, %7, %3
  %21 = phi i32 [ -22, %3 ], [ -2, %7 ], [ %12, %16 ], [ %12, %18 ], [ %12, %19 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_ioctl_gem_submit(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_wait_fence(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_etnaviv_wait_fence, ptr %1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.drm_etnaviv_wait_fence, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load i32, ptr %1, align 8
  %12 = icmp ugt i32 %11, 3
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = getelementptr %struct.etnaviv_drm_private, ptr %5, i32 0, i32 1, i32 %11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %8, 0
  %19 = select i1 %18, ptr %6, ptr null
  %20 = getelementptr inbounds %struct.drm_etnaviv_wait_fence, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @etnaviv_gpu_wait_fence_interruptible(ptr noundef nonnull %15, i32 noundef %21, ptr noundef %19) #9
  br label %23

23:                                               ; preds = %17, %13, %10, %3
  %24 = phi i32 [ %22, %17 ], [ -22, %3 ], [ -22, %10 ], [ -6, %13 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_gem_userptr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drm_etnaviv_gem_userptr, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, -4
  %7 = icmp ult i32 %6, -3
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  %9 = load i64, ptr %1, align 8
  %10 = getelementptr inbounds %struct.drm_etnaviv_gem_userptr, ptr %1, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = or i64 %11, %9
  %13 = and i64 %12, 4095
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %8
  %16 = trunc i64 %9 to i32
  %17 = icmp ult i64 %9, 4294967296
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = trunc i64 %11 to i32
  %20 = icmp ult i64 %11, 4294967296
  %21 = and i64 %9, 4095
  %22 = icmp eq i64 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = inttoptr i32 %16 to ptr
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i64 %11, i32 -1090519040) #12, !srcloc !26
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.drm_etnaviv_gem_userptr, ptr %1, i32 0, i32 3
  %31 = tail call i32 @etnaviv_gem_new_userptr(ptr noundef %0, ptr noundef %2, i32 noundef %16, i32 noundef %19, i32 noundef %5, ptr noundef %30) #9
  br label %32

32:                                               ; preds = %29, %24, %18, %15, %8, %3
  %33 = phi i32 [ %31, %29 ], [ -22, %3 ], [ -22, %18 ], [ -22, %15 ], [ -22, %8 ], [ -14, %24 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_gem_wait(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_etnaviv_gem_wait, ptr %1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.drm_etnaviv_gem_wait, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = load i32, ptr %1, align 8
  %12 = icmp ugt i32 %11, 3
  br i1 %12, label %35, label %13

13:                                               ; preds = %10
  %14 = getelementptr %struct.etnaviv_drm_private, ptr %5, i32 0, i32 1, i32 %11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.drm_etnaviv_gem_wait, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %19) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %7, align 8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr %6, ptr null
  %27 = tail call i32 @etnaviv_gem_wait_bo(ptr noundef nonnull %15, ptr noundef nonnull %20, ptr noundef %26) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %20) #9, !srcloc !12
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %20, ptr nonnull %20, i32 1, ptr nonnull elementtype(i32) %20) #9, !srcloc !24
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %35, label %33, !prof !22

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef nonnull %20, i32 noundef 3) #9
  br label %35

34:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  tail call void @drm_gem_object_free(ptr noundef nonnull %20) #9
  br label %35

35:                                               ; preds = %34, %33, %31, %17, %13, %10, %3
  %36 = phi i32 [ -22, %3 ], [ -22, %10 ], [ -6, %13 ], [ -2, %17 ], [ %27, %31 ], [ %27, %33 ], [ %27, %34 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_pm_query_dom(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.etnaviv_drm_private, ptr %8, i32 0, i32 1, i32 %4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @etnaviv_pm_query_dom(ptr noundef nonnull %10, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %12, %6, %3
  %15 = phi i32 [ %13, %12 ], [ -22, %3 ], [ -6, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_pm_query_sig(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #3 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.etnaviv_drm_private, ptr %8, i32 0, i32 1, i32 %4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @etnaviv_pm_query_sig(ptr noundef nonnull %10, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %12, %6, %3
  %15 = phi i32 [ %13, %12 ], [ -22, %3 ], [ -6, %6 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gpu_get_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_new_handle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_mmap_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_cpu_prep(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_cpu_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gpu_wait_fence_interruptible(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_new_userptr(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_wait_bo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_pm_query_dom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_pm_query_sig(ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gpu_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!8 = !{!9}
!9 = distinct !{!9, !10, !"drm_seq_file_printer: argument 0"}
!10 = distinct !{!10, !"drm_seq_file_printer"}
!11 = !{i64 2149257158}
!12 = !{i64 629688, i64 2148131254, i64 2148131280, i64 2148131327, i64 2148131349, i64 2148131377, i64 2148131397}
!13 = !{i64 1760582, i64 1760605, i64 1760625, i64 1760649, i64 1760665}
!14 = !{i64 2149245100}
!15 = !{i64 2149245175, i64 2149245202, i64 2149245249, i64 2149245271, i64 2149245299, i64 2149245319}
!16 = !{i64 2149294761}
!17 = !{!18}
!18 = distinct !{!18, !19, !"drm_seq_file_printer: argument 0"}
!19 = distinct !{!19, !"drm_seq_file_printer"}
!20 = !{i64 2148195974, i64 2148196006, i64 2148196035, i64 2148196069, i64 2148196100, i64 2148196123}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2148296196}
!24 = !{i64 2148198331, i64 2148198363, i64 2148198392, i64 2148198426, i64 2148198457, i64 2148198480}
!25 = !{i64 2149323191}
!26 = !{i64 2155379207, i64 2155379232}
