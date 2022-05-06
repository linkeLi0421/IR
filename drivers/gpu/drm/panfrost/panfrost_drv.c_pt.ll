; ModuleID = '/llk/IR/drivers/gpu/drm/panfrost/panfrost_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_drv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.panfrost_compatible = type { i32, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.88, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.anon.88 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.75, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
%struct.anon.75 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.panfrost_file_priv = type { ptr, [3 x %struct.drm_sched_entity], ptr }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.drm_panfrost_submit = type { i64, i64, i32, i32, i64, i32, i32 }
%struct.panfrost_job = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, i64, i32, i32, ptr, ptr, i32, ptr }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.78, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.78 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.panfrost_gem_object = type { %struct.drm_gem_shmem_object, ptr, %struct.anon.87, %struct.atomic_t, i8 }
%struct.drm_gem_shmem_object = type { %struct.drm_gem_object, %struct.mutex, ptr, i32, i32, %struct.list_head, i8, ptr, %struct.mutex, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.anon.87 = type { %struct.list_head, %struct.mutex }
%struct.drm_panfrost_wait_bo = type { i32, i32, i64 }
%struct.drm_panfrost_create_bo = type { i32, i32, i32, i32, i64 }
%struct.panfrost_gem_mapping = type { %struct.list_head, %struct.kref, ptr, %struct.drm_mm_node, ptr, i8 }
%struct.drm_panfrost_mmap_bo = type { i32, i32, i64 }
%struct.drm_panfrost_get_param = type { i32, i32, i64 }
%struct.drm_panfrost_get_bo_offset = type { i32, i32, i64 }
%struct.drm_panfrost_madvise = type { i32, i32, i32 }

@__param_str_unstable_ioctls = internal constant [16 x i8] c"unstable_ioctls\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@unstable_ioctls = internal global i8 0, align 1
@__param_unstable_ioctls = internal constant %struct.kernel_param { ptr @__param_str_unstable_ioctls, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 1, %union.anon.64 { ptr @unstable_ioctls } }, section "__param", align 4
@__UNIQUE_ID_unstable_ioctlstype263 = internal constant [30 x i8] c"parmtype=unstable_ioctls:bool\00", section ".modinfo", align 1
@dt_match = internal constant [14 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxm-mali\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @amlogic_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-mali\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @amlogic_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t604\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t624\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t628\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t760\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t820\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t830\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t860\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-t880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-bifrost\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @default_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-mali\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mediatek_mt8183_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author264 = internal constant [35 x i8] c"author=Panfrost Project Developers\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [32 x i8] c"description=Panfrost DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@amlogic_data = internal constant %struct.panfrost_compatible { i32 1, ptr @default_supplies, i32 0, ptr null, ptr @panfrost_gpu_amlogic_quirk }, align 4
@default_data = internal constant %struct.panfrost_compatible { i32 1, ptr @default_supplies, i32 1, ptr null, ptr null }, align 4
@mediatek_mt8183_data = internal constant %struct.panfrost_compatible { i32 2, ptr @mediatek_mt8183_supplies, i32 3, ptr @mediatek_mt8183_pm_domains, ptr null }, align 4
@default_supplies = internal constant [1 x ptr] [ptr @.str], align 4
@.str = private unnamed_addr constant [5 x i8] c"mali\00", align 1
@mediatek_mt8183_supplies = internal constant [2 x ptr] [ptr @.str, ptr @.str.1], align 4
@mediatek_mt8183_pm_domains = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"sram\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"core0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"core1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"core2\00", align 1
@panfrost_driver = internal global %struct.platform_driver { ptr @panfrost_probe, ptr @panfrost_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panfrost_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"panfrost\00", align 1
@panfrost_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panfrost_device_suspend, ptr @panfrost_device_resume, ptr null }, align 4
@panfrost_drm_driver = internal constant %struct.drm_driver { ptr null, ptr @panfrost_open, ptr @panfrost_postclose, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @panfrost_gem_create_object, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @panfrost_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr null, ptr null, ptr null, i32 1, i32 2, i32 0, ptr @.str.5, ptr @.str.8, ptr @.str.9, i32 41, ptr @panfrost_drm_driver_ioctls, i32 9, ptr @panfrost_drm_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@panfrost_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"&pfdev->shrinker_lock\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Fatal error during GPU init\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"panfrost DRM\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"20180908\00", align 1
@panfrost_drm_driver_ioctls = internal constant [9 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 1076388928, i32 32, ptr @panfrost_ioctl_submit, ptr @.str.10 }, %struct.drm_ioctl_desc { i32 1074816065, i32 32, ptr @panfrost_ioctl_wait_bo, ptr @.str.11 }, %struct.drm_ioctl_desc { i32 -1072143294, i32 32, ptr @panfrost_ioctl_create_bo, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 -1072667581, i32 32, ptr @panfrost_ioctl_mmap_bo, ptr @.str.13 }, %struct.drm_ioctl_desc { i32 -1072667580, i32 32, ptr @panfrost_ioctl_get_param, ptr @.str.14 }, %struct.drm_ioctl_desc { i32 -1072667579, i32 32, ptr @panfrost_ioctl_get_bo_offset, ptr @.str.15 }, %struct.drm_ioctl_desc { i32 1074291782, i32 32, ptr @panfrost_ioctl_perfcnt_enable, ptr @.str.16 }, %struct.drm_ioctl_desc { i32 1074291783, i32 32, ptr @panfrost_ioctl_perfcnt_dump, ptr @.str.17 }, %struct.drm_ioctl_desc { i32 -1072929720, i32 32, ptr @panfrost_ioctl_madvise, ptr @.str.18 }], align 4
@panfrost_drm_driver_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"PANFROST_SUBMIT\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"PANFROST_WAIT_BO\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"PANFROST_CREATE_BO\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"PANFROST_MMAP_BO\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"PANFROST_GET_PARAM\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"PANFROST_GET_BO_OFFSET\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"PANFROST_PERFCNT_ENABLE\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"PANFROST_PERFCNT_DUMP\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"PANFROST_MADVISE\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"Failed to allocate incoming syncobj handles\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Failed to copy in syncobj handles\0A\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"\016[drm] unknown mmap_bo flags: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Failed to look up GEM BO %d\0A\00", align 1
@panfrost_ioctl_madvise.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/panfrost/panfrost_drv.c\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_license266, ptr @__UNIQUE_ID_unstable_ioctlstype263, ptr @__param_unstable_ioctls], section "llvm.metadata"

@__mod_of__dt_match_device_table = dso_local alias [14 x %struct.of_device_id], ptr @dt_match

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @panfrost_unstable_ioctl_check() local_unnamed_addr #0 {
  %1 = load i8, ptr @unstable_ioctls, align 1, !range !8
  %2 = icmp eq i8 %1, 0
  %3 = select i1 %2, i32 -38, i32 0
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @panfrost_driver, ptr noundef nonnull @__this_module) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @panfrost_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gpu_amlogic_quirk(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 496, i32 noundef 3520) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 2
  store ptr %0, ptr %6, align 8
  store ptr %2, ptr %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %2) #13
  %9 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 12
  store ptr %8, ptr %9, align 8
  %10 = icmp eq ptr %8, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %5
  %12 = tail call i32 @device_get_dma_attr(ptr noundef %2) #13
  %13 = icmp eq i32 %12, 2
  %14 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 10
  %15 = zext i1 %13 to i8
  store i8 %15, ptr %14, align 8
  %16 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @panfrost_drm_driver, ptr noundef %2) #13
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = ptrtoint ptr %16 to i32
  br label %46

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 5
  store ptr %3, ptr %21, align 4
  %22 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 1
  store ptr %16, ptr %22, align 4
  %23 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %23, ptr noundef nonnull @.str.6, ptr noundef nonnull @panfrost_probe.__key) #13
  %24 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 25
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 25, i32 1
  store ptr %24, ptr %25, align 4
  %26 = tail call i32 @panfrost_device_init(ptr noundef nonnull %3) #13
  switch i32 %26, label %27 [
    i32 0, label %28
    i32 -517, label %44
  ]

27:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #14
  br label %44

28:                                               ; preds = %20
  %29 = load ptr, ptr %3, align 8
  %30 = tail call i32 @__pm_runtime_set_status(ptr noundef %29, i32 noundef 0) #13
  %31 = load ptr, ptr %3, align 8
  %32 = tail call i64 @ktime_get_mono_fast_ns() #13
  %33 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 11, i32 22
  store volatile i64 %32, ptr %33, align 8
  %34 = load ptr, ptr %3, align 8
  tail call void @pm_runtime_enable(ptr noundef %34) #13
  %35 = load ptr, ptr %3, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %35, i32 noundef 50) #13
  %36 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %36, i1 noundef zeroext true) #13
  %37 = tail call i32 @drm_dev_register(ptr noundef %16, i32 noundef 0) #13
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  tail call void @panfrost_gem_shrinker_init(ptr noundef %16) #13
  br label %46

40:                                               ; preds = %28
  %41 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %41, i1 noundef zeroext true) #13
  tail call void @panfrost_device_fini(ptr noundef nonnull %3) #13
  %42 = load ptr, ptr %3, align 8
  %43 = tail call i32 @__pm_runtime_set_status(ptr noundef %42, i32 noundef 2) #13
  br label %44

44:                                               ; preds = %40, %27, %20
  %45 = phi i32 [ %26, %27 ], [ %37, %40 ], [ %26, %20 ]
  tail call void @drm_dev_put(ptr noundef %16) #13
  br label %46

46:                                               ; preds = %44, %39, %18, %5, %1
  %47 = phi i32 [ %19, %18 ], [ %45, %44 ], [ 0, %39 ], [ -12, %1 ], [ -19, %5 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_remove(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @drm_dev_unregister(ptr noundef %5) #13
  tail call void @panfrost_gem_shrinker_cleanup(ptr noundef %5) #13
  %6 = load ptr, ptr %3, align 8
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #13
  %8 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %8, i1 noundef zeroext true) #13
  tail call void @panfrost_device_fini(ptr noundef %3) #13
  %9 = load ptr, ptr %3, align 8
  %10 = tail call i32 @__pm_runtime_set_status(ptr noundef %9, i32 noundef 2) #13
  tail call void @drm_dev_put(ptr noundef %5) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_dma_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_device_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_shrinker_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_device_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 328) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  store ptr %4, ptr %6, align 8
  %9 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  store ptr %6, ptr %9, align 4
  %10 = tail call ptr @panfrost_mmu_ctx_create(ptr noundef %4) #13
  %11 = getelementptr inbounds %struct.panfrost_file_priv, ptr %6, i32 0, i32 2
  store ptr %10, ptr %11, align 8
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i32
  br label %20

15:                                               ; preds = %8
  %16 = tail call i32 @panfrost_job_open(ptr noundef nonnull %6) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %11, align 8
  tail call void @panfrost_mmu_ctx_put(ptr noundef %19) #13
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i32 [ %14, %13 ], [ %16, %18 ]
  tail call void @kfree(ptr noundef nonnull %6) #13
  br label %22

22:                                               ; preds = %20, %15, %2
  %23 = phi i32 [ %21, %20 ], [ -12, %2 ], [ 0, %15 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @panfrost_postclose(ptr nocapture noundef readnone %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  tail call void @panfrost_perfcnt_close(ptr noundef %1) #13
  tail call void @panfrost_job_close(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.panfrost_file_priv, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  tail call void @panfrost_mmu_ctx_put(ptr noundef %6) #13
  tail call void @kfree(ptr noundef %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_gem_create_object(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_mmu_ctx_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_job_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_mmu_ctx_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_perfcnt_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_job_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_ioctl_submit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load i64, ptr %1, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %169, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_panfrost_submit, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %169

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.drm_panfrost_submit, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @drm_syncobj_find(ptr noundef %2, i32 noundef %15) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %169, label %20

20:                                               ; preds = %17, %13
  %21 = phi ptr [ %18, %17 ], [ null, %13 ]
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 136) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %158, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.panfrost_job, ptr %23, i32 0, i32 1
  store volatile i32 1, ptr %26, align 8
  %27 = getelementptr inbounds %struct.panfrost_job, ptr %23, i32 0, i32 2
  store ptr %6, ptr %27, align 4
  %28 = load i64, ptr %1, align 8
  %29 = getelementptr inbounds %struct.panfrost_job, ptr %23, i32 0, i32 5
  store i64 %28, ptr %29, align 8
  %30 = load i32, ptr %10, align 4
  %31 = getelementptr inbounds %struct.panfrost_job, ptr %23, i32 0, i32 6
  store i32 %30, ptr %31, align 8
  %32 = tail call i32 @panfrost_gpu_get_latest_flush_id(ptr noundef %6) #13
  %33 = getelementptr inbounds %struct.panfrost_job, ptr %23, i32 0, i32 7
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.panfrost_job, ptr %23, i32 0, i32 3
  store ptr %35, ptr %36, align 8
  %37 = tail call i32 @panfrost_job_get_slot(ptr noundef nonnull %23) #13
  %38 = load ptr, ptr %36, align 8
  %39 = getelementptr %struct.panfrost_file_priv, ptr %38, i32 0, i32 1, i32 %37
  %40 = tail call i32 @drm_sched_job_init(ptr noundef nonnull %23, ptr noundef %39, ptr noundef null) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %156

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.drm_panfrost_submit, ptr %1, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %102, label %46

46:                                               ; preds = %42
  %47 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 4) #13
  %48 = extractvalue { i32, i1 } %47, 1
  br i1 %48, label %53, label %49, !prof !9

49:                                               ; preds = %46
  %50 = extractvalue { i32, i1 } %47, 0
  %51 = tail call noalias ptr @kvmalloc_node(i32 noundef %50, i32 noundef 3264, i32 noundef -1) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %46
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.19) #13
  br label %98

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.drm_panfrost_submit, ptr %1, i32 0, i32 1
  %56 = load i64, ptr %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = inttoptr i32 %57 to ptr
  %59 = shl nuw i32 %44, 2
  %60 = icmp slt i32 %59, 0
  %61 = load i1, ptr @check_copy_size.__already_done, align 1
  %62 = xor i1 %61, true
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %65, !prof !9

64:                                               ; preds = %54
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %65

65:                                               ; preds = %64, %54
  br i1 %60, label %82, label %66, !prof !9

66:                                               ; preds = %65
  %67 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %58, i32 %59, i32 -1090519040) #17, !srcloc !10
  %68 = extractvalue { i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78, !prof !11

70:                                               ; preds = %66
  %71 = tail call ptr @llvm.thread.pointer() #13
  %72 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %73 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %72) #18, !srcloc !12
  %74 = and i32 %73, -13
  %75 = or i32 %74, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %76 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %51, ptr noundef %58, i32 noundef %59) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #13, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78, !prof !11

78:                                               ; preds = %70, %66
  %79 = phi i32 [ %76, %70 ], [ %59, %66 ]
  %80 = sub i32 %59, %79
  %81 = getelementptr i8, ptr %51, i32 %80
  tail call void @llvm.memset.p0.i32(ptr align 1 %81, i8 0, i32 %79, i1 false) #13
  br label %82

82:                                               ; preds = %78, %65
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.20) #13
  br label %98

83:                                               ; preds = %95, %70
  %84 = phi i32 [ %96, %95 ], [ 0, %70 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !15
  %85 = getelementptr i32, ptr %51, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = call i32 @drm_syncobj_find_fence(ptr noundef %2, i32 noundef %86, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %4) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load ptr, ptr %4, align 4
  %91 = call i32 @drm_sched_job_add_dependency(ptr noundef nonnull %23, ptr noundef %90) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89, %83
  %94 = phi i32 [ %91, %89 ], [ %87, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %98

95:                                               ; preds = %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %96 = add nuw nsw i32 %84, 1
  %97 = icmp eq i32 %96, %44
  br i1 %97, label %101, label %83

98:                                               ; preds = %93, %82, %53
  %99 = phi ptr [ %51, %93 ], [ null, %53 ], [ %51, %82 ]
  %100 = phi i32 [ %94, %93 ], [ -12, %53 ], [ -14, %82 ]
  call void @kvfree(ptr noundef %99) #13
  br label %154

101:                                              ; preds = %95
  call void @kvfree(ptr noundef nonnull %51) #13
  br label %102

102:                                              ; preds = %101, %42
  %103 = load ptr, ptr %34, align 4
  %104 = getelementptr inbounds %struct.drm_panfrost_submit, ptr %1, i32 0, i32 5
  %105 = load i32, ptr %104, align 8
  %106 = getelementptr inbounds %struct.panfrost_job, ptr %23, i32 0, i32 10
  store i32 %105, ptr %106, align 8
  %107 = icmp eq i32 %105, 0
  br i1 %107, label %145, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.drm_panfrost_submit, ptr %1, i32 0, i32 4
  %110 = load i64, ptr %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = inttoptr i32 %111 to ptr
  %113 = getelementptr inbounds %struct.panfrost_job, ptr %23, i32 0, i32 9
  %114 = call i32 @drm_gem_objects_lookup(ptr noundef %2, ptr noundef %112, i32 noundef %105, ptr noundef %113) #13
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %108
  %117 = load i32, ptr %106, align 8
  %118 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %117, i32 4) #13
  %119 = extractvalue { i32, i1 } %118, 1
  br i1 %119, label %120, label %122, !prof !9

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.panfrost_job, ptr %23, i32 0, i32 8
  store ptr null, ptr %121, align 8
  br label %154

122:                                              ; preds = %116
  %123 = extractvalue { i32, i1 } %118, 0
  %124 = call noalias ptr @kvmalloc_node(i32 noundef %123, i32 noundef 3520, i32 noundef -1) #16
  %125 = getelementptr inbounds %struct.panfrost_job, ptr %23, i32 0, i32 8
  store ptr %124, ptr %125, align 8
  %126 = icmp eq ptr %124, null
  br i1 %126, label %154, label %127

127:                                              ; preds = %122
  %128 = load i32, ptr %106, align 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %145, label %130

130:                                              ; preds = %137, %127
  %131 = phi i32 [ %142, %137 ], [ 0, %127 ]
  %132 = load ptr, ptr %113, align 4
  %133 = getelementptr ptr, ptr %132, i32 %131
  %134 = load ptr, ptr %133, align 4
  %135 = call ptr @panfrost_gem_mapping_get(ptr noundef %134, ptr noundef %103) #13
  %136 = icmp eq ptr %135, null
  br i1 %136, label %154, label %137

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.panfrost_gem_object, ptr %134, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %138) #13, !srcloc !16
  %139 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %138, ptr %138, i32 1, ptr elementtype(i32) %138) #13, !srcloc !17
  %140 = load ptr, ptr %125, align 8
  %141 = getelementptr ptr, ptr %140, i32 %131
  store ptr %135, ptr %141, align 4
  %142 = add nuw i32 %131, 1
  %143 = load i32, ptr %106, align 8
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %130, label %145

145:                                              ; preds = %137, %127, %102
  %146 = call i32 @panfrost_job_push(ptr noundef nonnull %23) #13
  %147 = icmp eq i32 %146, 0
  %148 = icmp ne ptr %21, null
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.panfrost_job, ptr %23, i32 0, i32 11
  %152 = load ptr, ptr %151, align 4
  call void @drm_syncobj_replace_fence(ptr noundef nonnull %21, ptr noundef %152) #13
  br label %156

153:                                              ; preds = %145
  br i1 %147, label %156, label %154

154:                                              ; preds = %153, %130, %122, %120, %108, %98
  %155 = phi i32 [ %146, %153 ], [ %100, %98 ], [ -12, %120 ], [ -12, %122 ], [ %114, %108 ], [ -22, %130 ]
  call void @drm_sched_job_cleanup(ptr noundef nonnull %23) #13
  br label %156

156:                                              ; preds = %154, %153, %150, %25
  %157 = phi i32 [ %40, %25 ], [ %155, %154 ], [ 0, %153 ], [ 0, %150 ]
  call void @panfrost_job_put(ptr noundef nonnull %23) #13
  br label %158

158:                                              ; preds = %156, %20
  %159 = phi i32 [ %157, %156 ], [ -12, %20 ]
  %160 = icmp eq ptr %21, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %158
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %21) #13, !srcloc !16
  %162 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 1, ptr nonnull elementtype(i32) %21) #13, !srcloc !19
  %163 = extractvalue { i32, i32, i32 } %162, 0
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = icmp sgt i32 %163, 0
  br i1 %166, label %169, label %167, !prof !11

167:                                              ; preds = %165
  call void @refcount_warn_saturate(ptr noundef nonnull %21, i32 noundef 3) #13
  br label %169

168:                                              ; preds = %161
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  call void @drm_syncobj_free(ptr noundef nonnull %21) #13, !callees !21
  br label %169

169:                                              ; preds = %168, %167, %165, %158, %17, %9, %3
  %170 = phi i32 [ -22, %3 ], [ -22, %9 ], [ -19, %17 ], [ %159, %158 ], [ %159, %165 ], [ %159, %167 ], [ %159, %168 ]
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_ioctl_wait_bo(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drm_panfrost_wait_bo, ptr %1, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = tail call i32 @drm_timeout_abs_to_jiffies(i64 noundef %5) #13
  %7 = getelementptr inbounds %struct.drm_panfrost_wait_bo, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = load i32, ptr %1, align 8
  %12 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %11) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_gem_object, ptr %12, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @dma_resv_wait_timeout(ptr noundef %16, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %6) #13
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i32 %6, 0
  %20 = select i1 %19, i32 -16, i32 -110
  %21 = select i1 %18, i32 %20, i32 %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %12) #13, !srcloc !16
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #13, !srcloc !19
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = icmp sgt i32 %23, 0
  br i1 %26, label %29, label %27, !prof !11

27:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef nonnull %12, i32 noundef 3) #13
  br label %29

28:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void @drm_gem_object_free(ptr noundef nonnull %12) #13, !callees !21
  br label %29

29:                                               ; preds = %28, %27, %25, %10, %3
  %30 = phi i32 [ -22, %3 ], [ -2, %10 ], [ %21, %25 ], [ %21, %27 ], [ %21, %28 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_ioctl_create_bo(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %1, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_panfrost_create_bo, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_panfrost_create_bo, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 3
  %16 = and i32 %14, 3
  %17 = icmp eq i32 %16, 2
  %18 = or i1 %15, %17
  br i1 %18, label %34, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.drm_panfrost_create_bo, ptr %1, i32 0, i32 2
  %21 = tail call ptr @panfrost_gem_create_with_handle(ptr noundef %2, ptr noundef %0, i32 noundef %6, i32 noundef %14, ptr noundef %20) #13
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %21 to i32
  br label %34

25:                                               ; preds = %19
  %26 = tail call ptr @panfrost_gem_mapping_get(ptr noundef %21, ptr noundef %5) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call fastcc void @drm_gem_object_put(ptr noundef %21)
  br label %34

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %26, i32 0, i32 3, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = shl i64 %31, 12
  %33 = getelementptr inbounds %struct.drm_panfrost_create_bo, ptr %1, i32 0, i32 4
  store i64 %32, ptr %33, align 8
  tail call void @panfrost_gem_mapping_put(ptr noundef nonnull %26) #13
  br label %34

34:                                               ; preds = %29, %28, %23, %12, %8, %3
  %35 = phi i32 [ %24, %23 ], [ 0, %29 ], [ -22, %28 ], [ -22, %12 ], [ -22, %8 ], [ -22, %3 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_ioctl_mmap_bo(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drm_panfrost_mmap_bo, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %5) #14
  br label %37

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 8
  %11 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %10) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, ptr %1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %14) #13
  br label %37

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.panfrost_gem_object, ptr %11, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = tail call i32 @drm_gem_create_mmap_offset(ptr noundef nonnull %11) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.drm_gem_object, ptr %11, i32 0, i32 4, i32 1, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = shl i64 %25, 12
  %27 = getelementptr inbounds %struct.drm_panfrost_mmap_bo, ptr %1, i32 0, i32 2
  store i64 %26, ptr %27, align 8
  br label %28

28:                                               ; preds = %23, %20, %15
  %29 = phi i32 [ 0, %23 ], [ %21, %20 ], [ -22, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #13, !srcloc !16
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #13, !srcloc !19
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %37, label %35, !prof !11

35:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef 3) #13
  br label %37

36:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void @drm_gem_object_free(ptr noundef nonnull %11) #13, !callees !21
  br label %37

37:                                               ; preds = %36, %35, %33, %13, %7
  %38 = phi i32 [ -22, %7 ], [ -2, %13 ], [ %29, %33 ], [ %29, %35 ], [ %29, %36 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @panfrost_ioctl_get_param(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #7 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_panfrost_get_param, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %104

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 8
  switch i32 %10, label %104 [
    i32 0, label %11
    i32 1, label %15
    i32 2, label %19
    i32 3, label %22
    i32 4, label %25
    i32 5, label %28
    i32 6, label %31
    i32 7, label %35
    i32 8, label %39
    i32 9, label %43
    i32 10, label %47
    i32 11, label %51
    i32 12, label %55
    i32 13, label %59
    i32 14, label %63
    i32 15, label %67
    i32 16, label %71
    i32 17, label %75
    i32 40, label %79
    i32 18, label %83
    i32 19, label %83
    i32 20, label %83
    i32 21, label %83
    i32 22, label %88
    i32 23, label %88
    i32 24, label %88
    i32 25, label %88
    i32 26, label %88
    i32 27, label %88
    i32 28, label %88
    i32 29, label %88
    i32 30, label %88
    i32 31, label %88
    i32 32, label %88
    i32 33, label %88
    i32 34, label %88
    i32 35, label %88
    i32 36, label %88
    i32 37, label %88
    i32 38, label %93
    i32 39, label %97
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11
  %13 = load i16, ptr %12, align 8
  %14 = zext i16 %13 to i64
  br label %101

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i64
  br label %101

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 2
  %21 = load i64, ptr %20, align 8
  br label %101

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 3
  %24 = load i64, ptr %23, align 8
  br label %101

25:                                               ; preds = %9
  %26 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 4
  %27 = load i64, ptr %26, align 8
  br label %101

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 5
  %30 = load i64, ptr %29, align 8
  br label %101

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = zext i32 %33 to i64
  br label %101

35:                                               ; preds = %9
  %36 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = zext i32 %37 to i64
  br label %101

39:                                               ; preds = %9
  %40 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 8
  %41 = load i32, ptr %40, align 8
  %42 = zext i32 %41 to i64
  br label %101

43:                                               ; preds = %9
  %44 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 9
  %45 = load i32, ptr %44, align 4
  %46 = zext i32 %45 to i64
  br label %101

47:                                               ; preds = %9
  %48 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 10
  %49 = load i32, ptr %48, align 8
  %50 = zext i32 %49 to i64
  br label %101

51:                                               ; preds = %9
  %52 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 11
  %53 = load i32, ptr %52, align 4
  %54 = zext i32 %53 to i64
  br label %101

55:                                               ; preds = %9
  %56 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 12
  %57 = load i32, ptr %56, align 8
  %58 = zext i32 %57 to i64
  br label %101

59:                                               ; preds = %9
  %60 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 13
  %61 = load i32, ptr %60, align 4
  %62 = zext i32 %61 to i64
  br label %101

63:                                               ; preds = %9
  %64 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 14
  %65 = load i32, ptr %64, align 8
  %66 = zext i32 %65 to i64
  br label %101

67:                                               ; preds = %9
  %68 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 15
  %69 = load i32, ptr %68, align 4
  %70 = zext i32 %69 to i64
  br label %101

71:                                               ; preds = %9
  %72 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 16
  %73 = load i32, ptr %72, align 8
  %74 = zext i32 %73 to i64
  br label %101

75:                                               ; preds = %9
  %76 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 17
  %77 = load i32, ptr %76, align 4
  %78 = zext i32 %77 to i64
  br label %101

79:                                               ; preds = %9
  %80 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 18
  %81 = load i32, ptr %80, align 8
  %82 = zext i32 %81 to i64
  br label %101

83:                                               ; preds = %9, %9, %9, %9
  %84 = add nsw i32 %10, -18
  %85 = getelementptr %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 19, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = zext i32 %86 to i64
  br label %101

88:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %89 = add nsw i32 %10, -22
  %90 = getelementptr %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 20, i32 %89
  %91 = load i32, ptr %90, align 4
  %92 = zext i32 %91 to i64
  br label %101

93:                                               ; preds = %9
  %94 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 21
  %95 = load i32, ptr %94, align 4
  %96 = zext i32 %95 to i64
  br label %101

97:                                               ; preds = %9
  %98 = getelementptr inbounds %struct.panfrost_device, ptr %5, i32 0, i32 11, i32 22
  %99 = load i32, ptr %98, align 8
  %100 = zext i32 %99 to i64
  br label %101

101:                                              ; preds = %97, %93, %88, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %28, %25, %22, %19, %15, %11
  %102 = phi i64 [ %14, %11 ], [ %18, %15 ], [ %21, %19 ], [ %24, %22 ], [ %27, %25 ], [ %30, %28 ], [ %34, %31 ], [ %38, %35 ], [ %42, %39 ], [ %46, %43 ], [ %50, %47 ], [ %54, %51 ], [ %58, %55 ], [ %62, %59 ], [ %66, %63 ], [ %70, %67 ], [ %74, %71 ], [ %78, %75 ], [ %82, %79 ], [ %87, %83 ], [ %92, %88 ], [ %96, %93 ], [ %100, %97 ]
  %103 = getelementptr inbounds %struct.drm_panfrost_get_param, ptr %1, i32 0, i32 2
  store i64 %102, ptr %103, align 8
  br label %104

104:                                              ; preds = %101, %9, %3
  %105 = phi i32 [ -22, %3 ], [ -22, %9 ], [ 0, %101 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_ioctl_get_bo_offset(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %1, align 8
  %7 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %6) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %10) #13
  br label %27

11:                                               ; preds = %3
  %12 = tail call ptr @panfrost_gem_mapping_get(ptr noundef nonnull %7, ptr noundef %5) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #13, !srcloc !16
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #13, !srcloc !19
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !11

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #13
  br label %20

19:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #13, !callees !21
  br label %20

20:                                               ; preds = %19, %18, %16
  %21 = icmp eq ptr %12, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %12, i32 0, i32 3, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = shl i64 %24, 12
  %26 = getelementptr inbounds %struct.drm_panfrost_get_bo_offset, ptr %1, i32 0, i32 2
  store i64 %25, ptr %26, align 8
  tail call void @panfrost_gem_mapping_put(ptr noundef nonnull %12) #13
  br label %27

27:                                               ; preds = %22, %20, %9
  %28 = phi i32 [ 0, %22 ], [ -2, %9 ], [ -22, %20 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_ioctl_perfcnt_enable(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_ioctl_perfcnt_dump(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_ioctl_madvise(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) #3 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %1, align 4
  %9 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %8) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %12) #13
  br label %69

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.panfrost_device, ptr %7, i32 0, i32 24
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.panfrost_gem_object, ptr %9, i32 0, i32 2, i32 1
  tail call void @mutex_lock(ptr noundef %15) #13
  %16 = getelementptr inbounds %struct.drm_panfrost_madvise, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.panfrost_gem_object, ptr %9, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = load volatile ptr, ptr %20, align 4
  %23 = icmp eq ptr %22, %20
  br i1 %23, label %60, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.panfrost_gem_object, ptr %9, i32 0, i32 2, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.panfrost_gem_mapping, ptr %21, i32 0, i32 4
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.panfrost_file_priv, ptr %5, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = icmp ne ptr %30, %32
  %34 = load i1, ptr @panfrost_ioctl_madvise.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !9

37:                                               ; preds = %28
  store i1 true, ptr @panfrost_ioctl_madvise.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 424, i32 noundef 9, ptr noundef null) #13
  br label %38

38:                                               ; preds = %37, %28
  br i1 %33, label %60, label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %16, align 4
  br label %41

41:                                               ; preds = %39, %13
  %42 = phi i32 [ %40, %39 ], [ %17, %13 ]
  %43 = tail call i32 @drm_gem_shmem_madvise(ptr noundef nonnull %9, i32 noundef %42) #13
  %44 = getelementptr inbounds %struct.drm_panfrost_madvise, ptr %1, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %41
  %47 = load i32, ptr %16, align 4
  switch i32 %47, label %60 [
    i32 1, label %48
    i32 0, label %54
  ]

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %9, i32 0, i32 5
  %50 = getelementptr inbounds %struct.panfrost_device, ptr %7, i32 0, i32 25
  %51 = getelementptr inbounds %struct.panfrost_device, ptr %7, i32 0, i32 25, i32 1
  %52 = load ptr, ptr %51, align 4
  store ptr %49, ptr %51, align 4
  store ptr %50, ptr %49, align 4
  %53 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %9, i32 0, i32 5, i32 1
  store ptr %52, ptr %53, align 4
  store volatile ptr %49, ptr %52, align 4
  br label %60

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %9, i32 0, i32 5
  %56 = getelementptr inbounds %struct.drm_gem_shmem_object, ptr %9, i32 0, i32 5, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %55, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  store volatile ptr %55, ptr %55, align 4
  store ptr %55, ptr %56, align 4
  br label %60

60:                                               ; preds = %54, %48, %46, %41, %38, %24, %19
  %61 = phi i32 [ 0, %48 ], [ 0, %54 ], [ 0, %41 ], [ 0, %46 ], [ -22, %24 ], [ -22, %19 ], [ -22, %38 ]
  tail call void @mutex_unlock(ptr noundef %15) #13
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #13, !srcloc !16
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #13, !srcloc !19
  %63 = extractvalue { i32, i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = icmp sgt i32 %63, 0
  br i1 %66, label %69, label %67, !prof !11

67:                                               ; preds = %65
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #13
  br label %69

68:                                               ; preds = %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void @drm_gem_object_free(ptr noundef nonnull %9) #13, !callees !21
  br label %69

69:                                               ; preds = %68, %67, %65, %11
  %70 = phi i32 [ -2, %11 ], [ %61, %65 ], [ %61, %67 ], [ %61, %68 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_syncobj_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_gpu_get_latest_flush_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_job_get_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_job_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_replace_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_job_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_job_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_find_fence(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_job_add_dependency(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_objects_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_gem_mapping_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_timeout_abs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_gem_object_put(ptr noundef %0) unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #13, !srcloc !16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #13, !srcloc !19
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %11, label %9, !prof !11

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #13
  br label %11

10:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  tail call void @drm_gem_object_free(ptr noundef nonnull %0) #13, !callees !21
  br label %11

11:                                               ; preds = %10, %9, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_gem_create_with_handle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_mapping_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_shmem_madvise(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

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
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_shrinker_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_device_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @panfrost_device_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152180818, i64 2152180843}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 4676930}
!13 = !{i64 4677127}
!14 = !{i64 2152162406}
!15 = !{!"auto-init"}
!16 = !{i64 558235, i64 2148048206, i64 2148048232, i64 2148048279, i64 2148048301, i64 2148048329, i64 2148048349}
!17 = !{i64 2148059621, i64 2148059647, i64 2148059676, i64 2148059710, i64 2148059741, i64 2148059764}
!18 = !{i64 2148161301}
!19 = !{i64 2148063436, i64 2148063468, i64 2148063497, i64 2148063531, i64 2148063562, i64 2148063585}
!20 = !{i64 2149010364}
!21 = !{ptr @drm_gem_object_free, ptr @drm_syncobj_free}
